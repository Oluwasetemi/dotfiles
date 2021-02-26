# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/oluwasetemi/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git node nvm osx npm brew vscode osx zsh-autosuggestions gitignore gatsby)

source $ZSH/oh-my-zsh.sh

# gi is exposed from the gitignore plugin some of its command are gi list, gi [template], gi [template] >> .gitignore

# include the z
# . ~/../../usr/local/etc/profile.d/z.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# bashrc
# ----------------------
# Git Aliases
# ----------------------
alias g='git'
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add --all'
alias gau='git add --update'
alias gb='git branch'
alias gbd='git branch --delete '
alias gc='git commit'
alias gcm='git commit --message'
alias gcf='git commit --fixup'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git checkout master'
alias gcos='git checkout staging'
alias gcod='git checkout develop'
alias gcl='git clone'
alias gd='git diff'
alias gda='git diff HEAD'
alias gin='git init'
alias glg='git log --graph --oneline --decorate --all'
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'
alias gm='git merge --no-ff'
alias gma='git merge --abort'
alias gmc='git merge --continue'
alias gp='git pull'
alias gpr='git pull --rebase'
alias gr='git rebase'
alias gs='git status'
alias gss='git status --short'
alias gst='git stash'
alias gsta='git stash apply'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gsts='git stash save'

# open all merge conflict orcurrently changed files in VScode
alias fix="git diff --name-only | uniq | xargs code"

# Changed your .gitignore _after_ you have added / committed some files?
# run `gri` to untrack anything in your updated .gitignore
# Put this in your .zshrc file
alias gri="git ls-files --ignored --exclude-standard | xargs -0 git rm -r"

# alias 🖕😏🖕="git push --force"

alias "git latest"="git for-each-ref --sort=-committerdate refs/heads/"

# I don't think I use this anymore https://github.com/pindexis/qfc
# [[ -s "$HOME/.qfc/bin/qfc.sh" ]] && source "$HOME/.qfc/bin/qfc.sh"

#  Uses tree - install first:
# brew install tree
function t() {
  # Defaults to 3 levels deep, do more with `t 5` or `t 1`
  # pass additional args after
  tree -I '.git|node_modules|bower_components|.DS_Store|public' --dirsfirst --filelimit 15 -L ${1:-3} -aC $2
}

#-------------------------
# File Directory Alias
#-------------------------

alias ~='cd ~'
alias .='cd ..'
alias ..='cd ../..'
alias ...='cd ../../..'
alias ....='cd ../../../..'
alias -- -='cd -'
alias ..l="cd ../ && ll"
alias cd..='cd ../'
alias ll="ls -1a"
alias la="ls -la"

# List all, long form

alias pg="echo 'Pinging Google' && ping www.google.com";
alias cb="code ~/.bashrc";
alias cz="code ~/.zshrc";
alias cg="code ~/.gitconfig";
# alias vsc="code .";
alias reload="source ~/.bashrc";
alias rld="source ~/.zshrc";

# Directory Aliases
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias wk="cd ~/Development/data-savvy"
alias pra="cd ~/Development/projects"
alias sp="cd ~/Development/projects/contractors"
alias blog="cd ~/Development/projects/gatsbyjs/oluwasetemi.github.io && code ."
alias cv="cd ~/Development/projects/personal/cv && code ."
alias dev="cd ~/Development/projects/gatsbyjs/oluwasetemi.dev && code ."
alias espanso-config="cd ~/Library/Preferences/espanso && code default.yml"


# Copy PWD to Clipboard
alias cpwd="pwd | tr -d '\n' | pbcopy && echo 'pwd copied to clipboard'"


#----------------------------
# Network Related
#----------------------------
alias ip='dig +short myip.opendns.com @resolver1.opendns.com'

#-----------------------
# Default Prompt
#-----------------------

#------------------------
# PROMPT STUFF
#------------------------

GREEN=$(tput setaf 2);
YELLOW=$(tput setaf 3);
RESET=$(tput sgr0);

function git_branch {

  # Shows the current branch if in a git repository
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \(\1\)/';
  # branch=$(git rev-parse --abbrev-ref HEAD)
  # echo " {$branch} "
}

function random_element {
  declare -a array=("$@")
  r=$((RANDOM % ${#array[@]}))
  printf "%s\n" "${array[$r]}"
}

setEmoji () {
  EMOJI="$*"
  DISPLAY_DIR='$(dirs)'
  DISPLAY_BRANCH='$(git_branch)'
  PROMPT="${YELLOW}${DISPLAY_DIR}${GREEN}${DISPLAY_BRANCH}${RESET} ${EMOJI}"$'\n'"$ ";
}

newRandomEmoji () {
  setEmoji "$(random_element 😅 👽 🔥 🚀 👻 ⛄ 👾 🍔 😄 🍰 🐑 😎 🏎 🤖 😇 😼 💪 🦄 🥓 🌮 🎉 💯 ⚛️ 🐠 🐳 🐿 🥳 🤩 🤯 🤠 👨‍💻 🦸‍ 🧝‍ 🧞‍ 🧙‍ 👨‍🚀 👨‍🔬 🕺 🦁 🐶 🐵 🐻 🦊 🐙 🦎 🦖 🦕 🦍 🦈 🐊 🦂 🐍 🐢 🐘 🐉 🦚 ✨ ☄️ ⚡️ 💥 💫 🧬 🔮 ⚗️ 🎊 🔭 ⚪️ 🔱)"
}

newRandomEmoji

# kentcdodds
alias jestify="PS1=\"🃏\n$ \"";
alias testinglibify="PS1=\"🐙\n$ \"";
alias cypressify="PS1=\"🌀\n$ \"";
alias staticify="PS1=\"🚀\n$ \"";
alias nodeify="PS1=\"💥\n$ \"";
alias reactify="PS1=\"⚛\n$ \"";
alias harryify="PS1=\"🧙‍\n$ \"";

# allow substitution in PS1
setopt promptsubst

# history size
HISTSIZE=7000
HISTFILESIZE=14000

SAVEHIST=5000
setopt EXTENDED_HISTORY
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
# share history across multiple zsh sessions
setopt SHARE_HISTORY
# append to history
setopt APPEND_HISTORY
# adds commands as they are typed, not at shell exit
setopt INC_APPEND_HISTORY
# do not store duplications
setopt HIST_IGNORE_DUPS

# PATH ALTERATIONS
## Node
PATH="/usr/local/bin:$PATH:./node_modules/.bin";

## Yarn
PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Custom bins
PATH="$PATH:$HOME/.bin";
# dotfile bins
# PATH="$PATH:$HOME/.my_bin";

# CDPATH ALTERATIONS
# CDPATH=.:$HOME:$HOME/code:$HOME/Desktop
# CDPATH=($HOME $HOME/code $HOME/Desktop)

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias deleteDSFiles="find . -name '.DS_Store' -type f -delete"
# alias kcd-oss="npx -p yo -p generator-kcd-oss -c 'yo kcd-oss'";
# function crapp { cp -R ~/.crapp "$@"; }
# function mcrapp { cp -R ~/.mcrapp "$@"; }

alias npm-update="npx npm-check -u";
alias yarn-update="yarn upgrade-interactive --latest";
# alias lt="pushd ~/code/love-texts && serve || popd";
alias flushdns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder"
alias dont_index_node_modules='find . -type d -name "node_modules" -exec touch "{}/.metadata_never_index" \;';

## git aliases
# function gc { git commit -m "$@"; }

dif() { git diff --color --no-index "$1" "$2" | diff-so-fancy; }
cdiff() { code --diff "$1" "$2"; }

# npm aliases
# NPM Aliases
# alias nrb="npm run build"
# alias nrs="npm run start"
# alias nrt="npm run test"
# alias nrtw="npm run test:watch"
# alias nrd="npm run deploy"
alias ni="npm install";
alias nrs="npm run start -s --";
alias nrb="npm run build -s --";
alias nrd="npm run dev -s --";
alias nrt="npm run test -s --";
alias nrtw="npm run test:watch -s --";
alias nrv="npm run validate -s --";
alias rmn="rm -rf node_modules";
alias flush-npm="rm -rf node_modules && npm i && say NPM is done";
alias nicache="npm install --prefer-offline";
alias nioff="npm install --offline";

## yarn aliases
alias yar="yarn run";
alias yas="yarn run start";
alias yab="yarn run build";
alias yat="yarn run test";
alias yav="yarn run validate";
alias yoff="yarn add --offline";
alias ypm="echo \"Installing deps without lockfile and ignoring engines\" && yarn install --no-lockfile --ignore-engines"

## use hub for git
# alias git=hub
eval "$(hub alias -s)"

# ## use pip for pip3
# alias pip=pip3

# for using trash-cli
alias rm="trash"

#.# Better Git Logs.
### Using EMOJI-LOG (https://github.com/ahmadawais/Emoji-Log).

# Git Commit, Add all and Push — in one step.
function gcap() {
    git add . && git commit -m "$*" && git push
}

# Git commit, Add all
function gcaz() {
    git add . && git commit -m "$*"
}
# NEW.
function gnew() {
    gcaz "📦 NEW: $@"
}

# IMPROVE.
function gimp() {
    gcaz "👌 IMPROVE: $@"
}
# FIX
function gfix() {
    gcaz "🐛 FIX: $@"
}

# RELEASE.
function grlz() {
    gcaz "🚀 RELEASE: $@"
}

# DOC.
function gdoc() {
    gcaz "📖 DOC: $@"
}

# TEST.
function gtst() {
    gcaz "✅ TEST: $@"
}
# NEW with PUSH.
function gnewp() {
    gcap "📦 NEW: $@"
}

# IMPROVE with PUSH.
function gimpp() {
    gcap "👌 IMPROVE: $@"
}
# FIX with PUSH
function gfixp() {
    gcap "🐛 FIX: $@"
}

# RELEASE with PUSH.
function grlzp() {
    gcap "🚀 RELEASE: $@"
}

# DOC with PUSH.
function gdocp() {
    gcap "📖 DOC: $@"
}

# TEST with PUSH.
function gtstp() {
    gcap "✅ TEST: $@"
}

# TODO run mongod start with some default requirement
function hello_world() {
   printf "hello $@"
}

# TODO run code for teacting like(jLengstorf) start with some default requirement
# Launch VSCode in teaching mode
# alias teach="code --extensions-dir ~/code_profiles/egghead/exts --user-data-dir ~/code_profiles/egghead/data"

# Bash functions
# Get the current git branch
get_git_branch() {
  local branch=$(git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')
  # local branch=$(git rev-parse --abrev-ref HEAD)
  echo $branch
}

# Make a directory && cd into that directory
function mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }

# Custom functions
# mg () { mkdir "$@" && cd "$@" || exit; }
shorten() { node ~/Development/projects/shortner/node_modules/.bin/netlify-shortener "$1" "$2"; }
cdl() { cd "$@" && ll; }
npm-latest() { npm info "$1" | grep latest; }
killport() { lsof -i tcp:"$*" | awk 'NR!=1 {print $2}' | xargs kill -9 ;}

# Add Node to prompt
node_prompt () {
  echo " $c_node_version$(get_node_version)"
}

# Get Node Version
get_node_version () {
  echo $(node -v)
}

# Rename all directories to lowercase
# not working yet
function lowercaseAllDirs () {
  for f in *; do
    if [[ -d "$f" && ! -L "$f" ]]; then
      local LOWER   DIR="$( echo $f | tr '[:upper:]' '[:lower:]')"

      if [[ "$f" != "$LOWERDIR" ]]; then
        mv "$f" "$LOWERDIR" && echo "$f has been lowercased to $LOWERDIR"
      fi
    fi
  done
}

# kill a tcp port
function kill_port () {
    sudo lsof -i tcp:"$1" && echo "port $1 was killed successfully"
}

# open vsc and hyper
function openall() {
    for folder in */; do
        code $folder && hyper $folder;
    done
}

# the NODE_PATH env
export NODE_PATH=`npm root -g`
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# add ruby shim to $PATH.
export PATH=$HOME/.rbenv/shims:$PATH

# get the url of the current opened tab
getURL(){
  url=$(osascript -e 'tell application "Google Chrome" to return URL of active tab of front window')
  echo $url
}

# download mp3 audio using youtube-dl
downloadSong () {
    cd ~/Music/downloads
    youtube-dl --extract-audio --audio-format mp3 \
    $(osascript -e 'tell application "Google Chrome" to return URL of active tab of front window')
    open .
}

# setup fuck for the use of correcting mis-spelt terminal instructions by just typing fuck after a mis-spelt command
# eval $(thefuck --alias)

export PATH="/usr/local/opt/openjdk/bin:$PATH"

# allow me to carry over my global npm package after any change of version
nvm_use (){
    NODE_NEW=$1

    PREVIOUS_PACKAGES=$(npm ls -g --parseable --depth=0)

    nvm use ${NODE_NEW}

    ALL_PACKAGES=$(npm ls -g --depth=0)

    for PACKAGE in $(echo "$PREVIOUS_PACKAGES" | grep "/node_modules/[^npm]");
    do
            PACKAGE_NAME=${PACKAGE##*/}
            PACKAGE_IN_CURRENT_VERSION=$(echo "$ALL_PACKAGES" | grep $PACKAGE_NAME)
            if [ "$PACKAGE_IN_CURRENT_VERSION" = "" ]; then
                    npm i -g $PACKAGE_NAME
            fi
    done
}

# add python3.7 bin shim to $PATH.
export PATH=$HOME/Library/Python/3.7/bin:$PATH

# add python3.7 bin shim to $PATH.
export PATH=/usr/bin/python3:$PATH

# set up bfg
alias bfg='java -jar ~/bfg.jar'

# zsh hooks `precmd`
precmd() {
  if [ "$PWD" = "/Users/oluwasetemi/Development/projects" ] \
  && [[ $(nvm current) = ^v12* ]]
  then
    nvm use 12
  fi
}

export RW_PATH=”$HOME/Development/projects/redwoodjs/redwood”

# Take a screenshot every n seconds
# Fun for making timelapse gifs later
# run `creep 20` for every 20 seconds
function creep() {
    while :; do; echo "📸" $(date +%H:%M:%S); screencapture -x ~/Screenshots/oluwasetemi/$(date +%s).png; sleep $1; done
}

COMPLETION_WAITING_DOTS="true"

set-window-title() {
  window_title="\e]0;${${PWD/#"$HOME"/~}/Dropbox\//}\a"
  echo -ne "$window_title"
}

PR_TITLEBAR=''
set-window-title
add-zsh-hook precmd set-window-title

# List all vscode extensions
function list_vsc_extensions () { code --list-extensions; }

# List the 10 most frequently used command
function historyTop () { history | awk '{print $2}' | sort | uniq -c | sort -rn | head -10 }

# This is a bunch of shell scripts for Debian and derivatives containing aliases and useful functions aiming to deliver increased productivity.
# source $HOME/workspace/bash-scripts/bash-scripts/bashrc

function textLowerFirst() {
  local string="$1"
  local first=`echo $string|cut -c1|tr [A-Z] [a-z]`
  local second=`echo $string|cut -c2-`
  echo $first$second
}

##
## utilities for simple text transformations
##

function upper {
    tr [:lower:] [:upper:] $*
}

function lower {
    tr [:upper:] [:lower:] $*
}

function trim {
    tr -d [:blank:] $*
}

function capitalize {
    sed -E 's/[^ \t]*/\u&/g' $*
}

function camelCase {
    sed -E 's/[^ \t]*/\u&/g' | sed -E 's/[ \t]*//g' | sed -E 's/[^ \t]*/\l&/g' $*
}

function chopLeft {
    local -i n=${1}
    local -i n=${n:=0}
    while read line ;do
      echo ${line:${n}}
    done
}

function chopRight {
    local -i n=${1}
    local -i n=${n:=0}
    while read line ;do
      echo ${line::${#line}-${n}}
    done
}

function mkString {
    local sep=${1}
    local sep=${sep:=,}
    paste -sd${sep}
}

##
## utilities for JSON and YAML processing
##

function yaml_validate {
  python -c 'import sys, yaml, json; yaml.safe_load(sys.stdin.read())'
}

function yaml2json {
  python -c 'import sys, yaml, json; print(json.dumps(yaml.safe_load(sys.stdin.read())))'
}

function yaml2json_pretty {
  python -c 'import sys, yaml, json; print(json.dumps(yaml.safe_load(sys.stdin.read()), indent=2, sort_keys=False))'
}

function json_validate {
  python -c 'import sys, yaml, json; json.loads(sys.stdin.read())'
}

function json2yaml {
  python -c 'import sys, yaml, json; print(yaml.dump(json.loads(sys.stdin.read()), sort_keys=False))'
}

function yaml_split {
  for file in "$@" ;do
    local dir=$(dirname "${file}")
    local name=$(basename "${file}" .yaml)
    csplit --quiet --prefix="${dir}/${name}" --suffix-format='.%03d.yaml.part' --elide-empty-files "${file}" /---/ "{*}"
    for f in "${dir}/${name}".*.yaml.part ; do
        local kind=$(cat $f | yaml2json | jq .kind | sed 's/"//g')
        local count=$(basename "$f" | cut -d. -f 2)
        local fname=${name}.${count}.${kind}.yaml
        ## echo "${f} -> ${fname}"
        tail +2 $f > "${dir}/${fname}"
        rm $f
    done
  done
}


##
## viewing file differences
##

function cdiff {
    diff -Naur $*
}
function sdiff {
    diff -Npry $*
}
function kdiff {
    kdiff3 $*
}
function vdiff {
    diffuse $*
}


##
## finding files easily
##

function fffile {
    fd -I $*
}

function ffdir {
    fd -I -t d $*
}

function ffscala {
    fd -I -e scala $*
}

function ffdhall {
    fd -I -e dhall $*
}

function  ffjava {
    fd -I -e java $*
}

function   ffsbt {
    fd -I -e sbt $*
}

function   ffxml {
    fd -I -e xml $*
}

function   ffant {
    fd -I -e ant $*
}

function   ffpom {
    fd -I -e pom $*
}

function   fftxt {
    fd -I -e txt $*
}

function    ffel {
    fd -I -e el $*
}

function    ffrs {
    fd -I -e rs $*
}

function    ffpy {
    fd -I -e py $*
}

function    ffsh {
    fd -I -e sh $*
}

function    ffmd {
    fd -I -e md $*
}

function   ffrst {
    fd -I -e rst $*
}

function    ffts {
    fd -I -e ts $*
}

function    ffjs {
    fd -I -e js $*
}

function  ffjson {
    fd -I -e json $*
}

function   ffcss {
    fd -I -e css $*
}

function  ffform {
    fd -I -e form $*
}

function  ffconf {
    fd -I -e cfg -e conf -e config -e ini $*
}

function   ffyaml {
    fd -I -e yml -e yaml $*
}

function  fftoml {
    fd -I -e toml $*
}

function   ffcpp {
    fd -I -e c -e h -e cpp -e hpp $*
}

function   ffsql {
    fd -I -e sql $*
}


##
## finding contents in files easily
##

function  fgfile {
    rg --no-ignore -H -n $*
}

function fgscala {
    rg --no-ignore -t scala -H -n $*
}

function fgdhall {
    rg --no-ignore -t dhall -H -n $*
}

function  fgjava {
    rg --no-ignore -t java -H -n $*
}

function   fgsbt {
    rg --no-ignore -t sbt -H -n $*
}

function   fgxml {
    rg --no-ignore -t xml -H -n $*
}

function   fgant {
    rg --no-ignore --type-add 'ant:*.ant' -t ant -H -n $*
}

function   fgpom {
    rg --no-ignore --type-add 'pom:*.pom' -t pom -H -n $*
}

function   fgtxt {
    rg --no-ignore -t txt -H -n $*
}

function    fgel {
    rg --no-ignore -t el -H -n $*
}

function    fgrs {
    rg --no-ignore -t rs -H -n $*
}

function    fgpy {
    rg --no-ignore -t py -H -n $*
}

function    fgsh {
    rg --no-ignore -t sh -H -n $*
}

function    fgmd {
    rg --no-ignore -t md -H -n $*
}

function   fgrst {
    rg --no-ignore -t rst -H -n $*
}

function    fgts {
    rg --no-ignore -t ts -H -n $*
}

function    fgjs {
    rg --no-ignore -t js -H -n $*
}

function  fgjson {
    rg --no-ignore -t json -H -n $*
}

function   fgcss {
    rg --no-ignore -t css -H -n $*
}

function  fgconf {
    rg --no-ignore -t config -H -n $*
}

function  fgyaml {
    rg --no-ignore -t yaml -H -n $*
}

function  fgtoml {
    rg --no-ignore -t toml -H -n $*
}

function   fgcpp {
    rg --no-ignore -t cpp -H -n $*
}

function   fgsql {
    rg --no-ignore -t sql -H -n $*
}


##
## network utilities
##
function listening {
    netstat -an | fgrep LISTEN | fgrep -v LISTENING
}

function ips {
    ip -o addr show | fgrep "scope global" | sed -r "s/[ \t]+/ /g" | cut -d" " -f2,3,4
}


##
## copy/paste using the clipboard
##
function ctrlc {
    xclip -i -selection clipboard
}

function ctrlv {
    xclip -o -selection clipboard
}

# Created by `userpath` on 2020-11-11 08:12:40
export PATH="$PATH:/Users/oluwasetemi/.local/bin"

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

alias rename_video_to_gif='function rename_video_to_gif(){ ffmpeg -i $1 $2.gif && gifsicle -O3 $2.gif -o $2.gif && osascript -e "display notification \"$2.gif successfully converted and saved\" with title \"MOV2GIF SUCCESS!\""};rename_video_to_gif'

alias video_to_gif='function video_to_gif(){ ffmpeg -i "$1" "${1%.*}.gif" && gifsicle -O3 "${1%.*}.gif" -o "${1%.*}.gif" && osascript -e "display notification \"${1%.*}.gif successfully converted and saved\" with title \"MOV2GIF SUCCESS!\""};video_to_gif'

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

eval "$(starship init zsh)"

fpath=(~/.zsh/completions $fpath)
autoload -U compinit && compinit

# ls everytime you cd
function cd() {
    builtin cd $@
    ls
}