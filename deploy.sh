# alias ddd="~/deploy.sh"

now="$(date +'%Y%m%d%H%M')"
current_branch=$(git rev-parse --abbrev-ref HEAD)
ENV=""

case $current_branch in
develop) ENV="dev" ;;
rc) ENV="rc" ;;
master) ENV="prod" ;;
*) echo "\033[31m 不在 develop|rc|master 分支 \033[0m" && exit ;;
esac

tag="deploys/$ENV/$now"
git tag $tag
git push origin $tag
