
# branch_name will be "dev" or "demo" or other
branch_name=$GITHUB_REF_NAME

if [[ "$branch_name" == "dev" ]]; then
  echo "branch = dev"
elif [[ "$branch_name" == "demo" ]]; then
  echo "branch = demo"
else
  branch_name="dev"
fi

BRANCH_NAME=${branch_name^^}

echo "SECRET_TOKEN_NAME=${BRANCH_NAME}_SECRET_TOKEN" >> $GITHUB_ENV
