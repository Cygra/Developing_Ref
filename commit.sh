#!/bin/bash

# 使用一言 API （https://gushi.ci/）随机获取诗词作为 commit header。

commit=$1
msg=$( curl 'https://api.gushi.ci/all.json' | jq '.content' )
git add .
git commit -m "
${msg//\"/}

${commit}
"
