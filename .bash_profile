export PS1="\[\033[1;32m\]\w/ \[\033[1;34m\]$ \[\033[0m\]" # custom terminal prompt
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagaced

bind '"\t":menu-complete'
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

FIGNORE=.class

alias fucking='sudo'

alias gs='git status '
alias ga='git add '
alias gacm='git add . commit -m '
alias gb='git branch '
alias gc='git commit -m '
alias gca='git commit --amend --no-edit'
alias gd='git diff '
alias gh='git hist '
alias go='git checkout '
alias gp='git pull '
alias gph='git push heroku '
alias gphm='git push heroku master'
alias gpo='git push origin '
# alias gpom='git push origin master' # DANGER
alias gk='gitk --all&' # I don't know what this does :-[
alias gx='gitx --all' # This either

# for typos
alias got='git '
alias get='git '

alias lj='ls *.java'
alias reset='rake db:reset'
alias rn='railsnew'
alias rdbcm='rake db:create db:migrate'
alias rdbm='rake db:migrate'

alias xd='echo -n $(pwd) | pbcopy' # copies working directory path to clipboard

railsnew()
{
  rails new $1 -T -m ~/template.rb --force -d postgresql
  git init $1
  cd $1
  git add .
  git commit -m 'first commit'
  atom .
}

# Ruby things
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Python things
# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"

# Maven/Java things
export JAVA_HOME=$(/usr/libexec/java_home)
export JAVA=$JAVA_HOME
export PATH=$JAVA:$PATH

export M2_HOME=/usr/local/apache-maven/apache-maven-3.2.5
export M2=$M2_HOME/bin
export PATH=$M2:$PATH

export PATH
export PATH=/usr/local/bin:$PATH
