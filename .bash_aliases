# compose commands
alias up="docker-compose up"
alias dcexec="docker-compose exec"
alias dcrun="docker-compose run --service-ports --rm"
alias down="docker-compose down"

# docker-sync
alias dsc="docker-sync-stack clean"
alias dss="docker-sync-stack start"

# docker commands
alias drun="docker run -it --rm"
alias dexec="docker exec -it"
alias nuke="yes | docker image prune"

# silver searcher
# find file
alias ff="ag --hidden -g"
# find docker-compose services TODO: find all services
alias svc="ag --context=1 services"

# mocked pbcopy and pbpaste with xclip
# https://stackoverflow.com/a/677212
if ! command -v pbcopy &> /dev/null; then
  alias pbcopy="xclip -selection clip"
  alias pbpaste="xclip -selection clip -out"
fi

# git
# delete local pushed branches
alias prune="git branch | grep -v 'master\|release\|main' | xargs git branch -d"

# TODO: skip adding on mac
alias b64d="pbpaste | base64 -d"
alias b64e="pbpaste | base64 --wrap=0"
