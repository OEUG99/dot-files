# MOTD & Alerts
cowsay Welcome Back
# Aliases 
alias 'tetris'='bastet'
alias 'discord'='/Users/oliviaeugenio/Documents/bash_scripts/discordo'
alias '?'='/Users/oliviaeugenio/Documents/bash_scripts/search.sh'
alias docker="/Applications/Docker.app/Contents/Resources/bin/docker"
alias 'llm'='ollama run llama3.2:latest'
alias 'hnews'='clx'
eval "$(zoxide init zsh)"
alias 'cd'='z'
eval 
            fuck () {
                TF_PYTHONIOENCODING=$PYTHONIOENCODING;
                export TF_SHELL=zsh;
                export TF_ALIAS=fuck;
                TF_SHELL_ALIASES=$(alias);
                export TF_SHELL_ALIASES;
                TF_HISTORY="$(fc -ln -10)";
                export TF_HISTORY;
                export PYTHONIOENCODING=utf-8;
                TF_CMD=$(
                    thefuck THEFUCK_ARGUMENT_PLACEHOLDER $@
                ) && eval $TF_CMD;
                unset TF_HISTORY;
                export PYTHONIOENCODING=$TF_PYTHONIOENCODING;
                test -n "$TF_CMD" && print -s $TF_CMD
            }
        

eval $(thefuck --alias)
alias 'news'='newsboat'
