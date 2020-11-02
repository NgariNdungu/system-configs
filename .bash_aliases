# compose commands
alias up="docker-compose up"
alias dcexec="docker-compose exec"
alias dcrun="docker-compose run --rm"
alias down="docker-compose down"

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
if ! pbpaste | pbcopy; then
  alias pbcopy="xclip -selection clip"
  alias pbpaste="xclip -selection clip -out"
fi

# git
# delete local pushed branches
alias prune="git branch | grep -v 'master\|release\|main' | xargs git branch -d"

# TODO: skip adding on mac
alias b64d="pbpaste | base64 -d"
alias b64e="pbpaste | base64 --wrap=0"
