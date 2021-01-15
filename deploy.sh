# alias ddd="~/deploy.sh"

now="$(date +'%Y%m%d%H%M')"
current_branch=$(git rev-parse --abbrev-ref HEAD)
env=""

case $current_branch in
develop) env="dev" ;;
rc) env="rc" ;;
master) env="prod" ;;
*) echo "\033[31m 不在 develop|rc|master 分支 \033[0m" && exit ;;
esac

tag="deploys/$env/$now"
git tag $tag
git push origin $tag
