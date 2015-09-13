# customize prompt
export PS1="\u \W\$ "

set completion-ignore-case On

# show or hide hidden files in finder view
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# add ~/Developer/Python to path
PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:~/Developer/Python

# aliases
alias la='ls -a'
alias p='python'
alias pd='~/Developer/Python'
alias c='clear'
alias ls='ls -G'  # colors on
alias l='ls -G'
alias m='make'
alias r='./a.out'
alias mc='make clean'
alias mt='make test'
alias so='source ~/.bash_profile'

# Clemson
alias cssh='ssh bmgeorg@joey8.cs.clemson.edu'
function connect {
	ftp .bmgeorg.b.students.clemsonu@ftp.netware.clemson.edu:
}
alias mysqllogin='mysql -u root -pmHi8q3pK'
alias metubelogin='mysql -h mysql1.cs.clemson.edu -u MeTubeSQL_dian -ppurpleboards12 MeTubeSQL_ii2t'

# git shortcuts
alias gs='git status'
alias gcom='git commit'
alias ga='git add -A'
alias gdiff='git diff'
alias gpush='git push origin'

# initialize fasd (z)
eval "$(fasd --init auto)"

# if running bash
if [ -n "$BASH_VERSION" ]; then
	# include .bashrc if it exists
	if [ -f "$HOME/.bashrc" ]; then
		. "$HOME/.bashrc"
	fi
fi

function up {
    ups=""
    for i in $(seq 1 ${1:-1})
    do
        ups=$ups"../"
    done
    cd $ups
}

function share {
    for var in "$@"
    do
        cp -rf "$var" ~/Documents/VM\ Shared
    done
}

function cshare {
    for var in "$@"
    do
        scp -r "$var" bmgeorg@access1.cs.clemson.edu:~/School/Shared
    done
}
