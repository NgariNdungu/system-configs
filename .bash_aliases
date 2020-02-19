# compose commands
alias up="docker-compose up"
alias dcexec="docker-compose exec"
alias dcrun="docker-compose run"
alias down="docker-compose down"
# docker commands
alias drun="docker run -it --rm"
alias dexec="docker exec -it"
alias nuke="yes | docker image prune"
# silver searcher
# find file
alias ff="ag --hidden -g"
# find docker-compose services
alias svc="ag --context=1 services"
