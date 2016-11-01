# Home directories
export JAVA_HOME="`/usr/libexec/java_home -v '1.8*'`"
export ANT_HOME=/usr/share/ant
export GIT_HOME=/usr/local/git
export MYSQL_HOME=/usr/local/mysql

# Path Modifiers
export PATH=$PATH:.:$HOME/bin:/usr/local/bin:/usr/local/sbin:/opt/local/bin:/opt/local/sbin:$JAVA_HOME/bin:$GRAILS_HOME/bin:$GIT_HOME/bin:$MYSQL_HOME/bin:$GROOVY_HOME/bin
export MANPATH=$MANPATH:$GIT_HOME/man:$MYSQL_HOME/man

# Bash console settings 
source $HOME/lib/.bash_settings

# Script aliases
source $HOME/lib/.alias

# Better history
source $HOME/lib/.history_rc

# Github setup
source $HOME/lib/.git_rc

# SDK settings java/grails/node/ruby/etc
source $HOME/lib/.sdk

# This is where i put organisation specific settings
source lib/.specifics

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Console print
java -version