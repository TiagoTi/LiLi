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

function teresa_util
{
    COMMAND=$1
    APP_NAME=$2

    case $COMMAND in
        application_information)
            teresa app info $APP_NAME
            ;;
        configuration_cluster_to_use)
            teresa config use-cluster $APP_NAME
            ;;
        config_view)
            teresa config view $APP_NAME
            ;;
        *)
            echo "não foi possivel identificar o comando"
            ;;
    esac        
}

#commons
alias cls="clear"

alias lili='hs -i'
alias here='nautilus -w .'
alias op='open_project'
alias zshreload="source ~/.zshrc"
alias vsc='open_vs_code'
alias mngp='python manage.py'
alias npmr='npm run'
alias syncthis='git add . && git commit -m "just sync" && git push'

# Teresa
alias trsa="teresa"
alias trsi="teresa_util application_information"
alias trscuc="teresa_util configuration_cluster_to_use"
alias trsal="trsa app logs -f "
alias trscv="teresa_util config_view"

