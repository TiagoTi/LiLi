echo "importing functions teresa"
echo "loading teresa commands teresa"


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
        env_set)
            teresa app env-set $3 --app $APP_NAME
            ;;
        env_unset)
            teresa app env-unset $3 --app $APP_NAME
            ;;
        *)
            echo "não foi possivel identificar o comando"
            ;;
    esac        
}

# Lista os app no teresa
alias trsl='teresa app list'
alias trses='teresa_util env_set'
alias trseu='teresa_util env_unset'
# Teresa
alias trsa="teresa"
alias trsi="teresa_util application_information"
alias trscuc="teresa_util configuration_cluster_to_use"
alias trsl="trsa app logs -f "
alias trscv="teresa_util config_view"
. $LILI_PATH/.teresa-sensive.env