touch .clasp.json
scriptId=`cat devScriptId`
echo "{\"scriptId\":\"$scriptId\"}" > .clasp.json
