VERSION=0.0.0

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

alias lili='hs -i'
alias here='nautilus -w .'
alias op='open_project'
alias editcid='vim ~/.oh-my-zsh/plugins/cid/cid.plugin.zsh'
alias cid='history'
alias zshreload="source ~/.zshrc"
alias vsc='open_vs_code'
alias mngp='python manage.py'
alias npmr='npm run'
alias syncthis='git add . && git commit -m "just sync" && git push'