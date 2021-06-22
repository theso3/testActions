CHECK_BRANCH_NAME='master'
branch=`git rev-parse --abbrev-ref HEAD`||exit
# check branch name
if [ ${branch} = ${CHECK_BRANCH_NAME} ]; then
  echo "master"
  clasp push
  exit
else
  echo "not master"
fi
