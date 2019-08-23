VERSION=0.0.0
LILI_PATH=$HOME/.oh-my-zsh/plugins/lili
. $LILI_PATH/functions.sh
. $LILI_PATH/alias-teresa.zsh

function version
{
    echo "This version is $VERSION"
}

function hs
{
    history | grep $*
}

function open_project
{
	cd ~/projects/$1
}

function open_vs_code
{
	code -n ~/projects/$1
}

alias lilip="testepath"
alias cls="clear"
alias lili='hs -i'
alias here='nautilus -w .'
alias op='open_project'
alias zshreload="source ~/.zshrc"
alias vsc='open_vs_code'
alias mngp='python manage.py'
alias npmr='npm run'
alias syncthis='git add . && git commit -m "just sync" && git push'
alias road-runner="gitlab-runner exec docker"
