CHECK_BRANCH_NAME='master'
branch=`git rev-parse --abbrev-ref HEAD`||exit
# check branch name
if [ ${branch} = ${CHECK_BRANCH_NAME} ]; then
  echo "master"
  scriptId=`cat productionScriptId` 
  echo "{\"scriptId\":\"$scriptId\"}" > .clasp.json
  clasp push
  scriptId=`cat devScriptId`
  echo "{\"scriptId\":\"$scriptId\"}" > .clasp.json
  exit
else
  echo "not master"
fi
