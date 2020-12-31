# alias ddd="~/deploysDev.sh"

now="$(date +'%Y%m%d%H%M')"
tag="deploys/dev/$now"
git tag $tag
git push origin $tag
