################################################
#
# functions
#
################################################


function get_ip_details() { ifconfig $1 | grep inet | grep -v 'inet6'; }

function reload_profile() { clear; echo "[+] Reloading user profile."; source ~/.bash_profile; }

function better_rm() {
    # function to create better rm with automated directory structure checkings 
    # and safe file/dir removal
    exit 0
}


function set_proxy() {
    _url=$1
    export http_proxy=${_url}
    export https_proxy=${_url}
}


function genpasswd() {
    local l=$1
    [ "$l" == "" ] && l=16
    tr -dc A-Za-z0-9_ < /dev/urandom | head -c ${l} | xargs
}


function getip() {
    $ exec 3<> /dev/tcp/icanhazip.com/80 && # open connection
    echo 'GET /' >&3 &&                   # send http 0.9 request
    read -u 3 && echo $REPLY &&           # read response
    exec 3>&-                             # close fd
}

function get_path() { exit 0; }

################################################
#   
#   ALIASES
#
################################################

alias projects='cd ~/projects'

alias nse='cd $(which nmap)'

alias ifme='curl ifconfig.me'
alias getip='curl icanhazip.com'

# local for myself
alias ls='ls -G'
alias l='ls -l -G'
alias ll='l -l -G'
alias lll='l -la -G'
alias la='ls -a'
alias lla='ll -a'
alias le='l -e'
alias ..='cd ../'
alias ...='cd ../../'

alias exp='clear; export -p'

alias back='reload_profile'
alias resource='back'
alias src=resource

alias hosts='cat /etc/hosts'

alias rd='rm -rf'

# tmux stuff
alias tl='tmux ls'
alias ta='tmux a '

# python
alias ipy='ipython'

# network
alias ipconfig='ifconfig '
alias ip='get_ip_details '

alias connections='cat ~/.ssh/config'

# ssh connection aliases
# alias alias_name='ssh server_name'


##################################################
#
# 2014/08/25
# Vagrant shit stuff
#
##################################################

alias vgo='cd $HOME/vagrant'
alias vstat='vagrant status'
alias vs='vstat'

alias vall='vagrant global-status'
alias vgstat='vall'

alias vinit='vagrant init'
alias vup='vagrant up'
alias vhalt='vagrant halt'
alias vh='vhalt'

alias vssh='vagrant ssh' 
alias vbox='vagrant box '
alias vlist='vbox list'

# alias <any-other-project>='su - <any-other-project>'


# Python ipython notebook
alias pynb='ipython notebook'


##################################################
#
# apt/yum/pkg stuff
#
##################################################

alias aptu='apt-get update' # apt update
alias aptg='apt-get upgrade' # apt upgrade
alias aptd='apt-get dist-upgrade' # apt dist-upgrade
alias apts='apt-cache search ' # apt search
alias apti='apt-get install ' # apt install

alias yl='yum list installed'
alias ys='yum search '
alias yi='yum install'

alias pinfo='pkginfo '
alias padd='pkg-add -u '
alias pdel='pkgrm '

 
##################################################
#
# git stuff
#
##################################################

alias gp='git pull'
alias gh='git push '
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'

alias got='git '
alias get='git '
alias gut='git '

alias graph='git log --graph --oneline --all'

alias push='git push'
alias clone='git clone'
alias gcom='git commit -m'


export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH


