# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && . "$HOME/.fig/shell/zshrc.pre.zsh"

# source $HOME/.bash_profile
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
# export ZSH="/Users/oluwasetemi/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="powerlevel9k/powerlevel9k"

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

# # source $ZSH/oh-my-zsh.sh

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
# alias .='cd ..'
# alias ..='cd ../..'
alias ...='cd ../../..'
alias ....='cd ../../../..'
alias -- -='cd -'
alias ..l="cd ../ && ll"
alias cd..='cd ../'
# make sure lolcat is installed (brew install lolcat)
alias l="ls -lsaf | lolcat"
alias ll="ls -1a | lolcat"
alias la="ls -la | lolcat"

# List all, long form

alias pg="echo 'Pinging Google' && ping www.google.com";
alias cb="code ~/.bashrc";
alias cz="code ~/.zshrc";
alias chist="code ~/.zsh_history";
alias cg="code ~/.gitconfig";
alias clint="code ~/.eslintrc";
alias vsc="code .";
alias reload="source ~/.bashrc";
alias rld="source ~/.zshrc";

# Directory Aliases
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias wk="cd ~/Development/"
alias talent="cd ~/Development/projects/contractors/talentql"
alias pra="cd ~/Development/projects"
alias sp="cd ~/Development/projects/contractors"
# alias blog="cd ~/Development/projects/gatsbyjs/oluwasetemi.github.io && code ."
alias cv="cd ~/Development/projects/personal/cv && code ."
alias dev="cd ~/Development/projects/gatsbyjs/oluwasetemi.dev && code ."
alias espanso-config="cd ~/Library/Preferences/espanso && code ."


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


#------------------------
# COLOR STUFF
#------------------------

# ANSI
# Black        0;30     Dark Gray     1;30
# Red          0;31     Light Red     1;31
# Green        0;32     Light Green   1;32
# Brown/Orange 0;33     Yellow        1;33
# Blue         0;34     Light Blue    1;34
# Purple       0;35     Light Purple  1;35
# Cyan         0;36     Light Cyan    1;36
# Light Gray   0;37     White         1;37
# Color
NC='\033[0m' # No Color

# Regular Colors
BLACK='\033[0;30m'        # Black
RED='\033[0;31m'          # Red
GREEN='\033[0;32m'        # Green
YELLOW='\033[0;33m'       # Yellow
BLUE='\033[0;34m'         # Blue
PURPLE='\033[0;35m'       # Purple
CYAN='\033[0;36m'         # Cyan
WHITE='\033[0;37m'        # White

# Bold
BBLACK='\033[1;30m'       # Black
BRED='\033[1;31m'         # Red
BGREEN='\033[1;32m'       # Green
BYELLOW='\033[1;33m'      # Yellow
BBLUE='\033[1;34m'        # Blue
BPURPLE='\033[1;35m'      # Purple
BCYAN='\033[1;36m'        # Cyan
BWHITE='\033[1;37m'       # White

# Underline
UBLACK='\033[4;30m'       # Black
URED='\033[4;31m'         # Red
UGREEN='\033[4;32m'       # Green
UYELLOW='\033[4;33m'      # Yellow
UBLUE='\033[4;34m'        # Blue
UPURPLE='\033[4;35m'      # Purple
UCYAN='\033[4;36m'        # Cyan
UWHITE='\033[4;37m'       # White

# Background
ON_BLACK='\033[40m'       # Black
ON_RED='\033[41m'         # Red
ON_GREEN='\033[42m'       # Green
ON_YELLOW='\033[43m'      # Yellow
ON_BLUE='\033[44m'        # Blue
ON_PURPLE='\033[45m'      # Purple
ON_CYAN='\033[46m'        # Cyan
ON_WHITE='\033[47m'       # White

# High Intensity
IBLACK='\033[0;90m'       # Black
IRED='\033[0;91m'         # Red
IGREEN='\033[0;92m'       # Green
IYELLOW='\033[0;93m'      # Yellow
IBLUE='\033[0;94m'        # Blue
IPURPLE='\033[0;95m'      # Purple
ICYAN='\033[0;96m'        # Cyan
IWHITE='\033[0;97m'       # White

# Bold High Intensity
BIBLACK='\033[1;90m'      # Black
BIRED='\033[1;91m'        # Red
BIGREEN='\033[1;92m'      # Green
BIYELLOW='\033[1;93m'     # Yellow
BIBLUE='\033[1;94m'       # Blue
BIPURPLE='\033[1;95m'     # Purple
BICYAN='\033[1;96m'       # Cyan
BIWHITE='\033[1;97m'      # White

# High Intensity backgrounds
ON_IBLACK='\033[0;100m'   # Black
ON_IRED='\033[0;101m'     # Red
ON_IGREEN='\033[0;102m'   # Green
ON_IYELLOW='\033[0;103m'  # Yellow
ON_IBLUE='\033[0;104m'    # Blue
ON_IPURPLE='\033[0;105m'  # Purple
ON_ICYAN='\033[0;106m'    # Cyan
ON_IWHITE='\033[0;107m'   # White

# BLACK=$(tput setaf 0);
# RED=$(tput setaf 1);
# GREEN=$(tput setaf 2);
# YELLOW=$(tput setaf 3);
# BLUE=$(tput setaf 4);
# MAGENTA=$(tput setaf 5);
# CYAN=$(tput setaf 6);
# WHITE=$(tput setaf 7);
# GREY=$(tput setaf 8);
# LIGHTRED=$(tput setaf 9);
# RESET=$(tput sgr0);

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

SAVEHIST=10000
setopt EXTENDED_HISTORY
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
HISTTIMEFORMAT="";
# share history across multiple zsh sessions
setopt SHARE_HISTORY
# append to history
setopt APPEND_HISTORY
# adds commands as they are typed, not at shell exit
setopt INC_APPEND_HISTORY
# do not store duplications
setopt HIST_IGNORE_DUPS

# allow me to auto change directory
# setopt AUTO_CD

# PATH ALTERATIONS
## Node
PATH="/usr/local/bin:$PATH:./node_modules/.bin";

## Yarn
PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Custom bins
PATH="$PATH:$HOME/.bin";
PATH="$PATH:$HOME/.my_bin";
# dotfile bins

# CDPATH ALTERATIONS
# CDPATH=.:$HOME:$HOME/code:$HOME/Desktop
# CDPATH=($HOME $HOME/code $HOME/Desktop)
# [[ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]] && . "$(brew --prefix)/etc/profile.d/bash_completion.sh"export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
# zsh-z
# source ~/zsh-z/zsh-z.plugin.zsh
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/mongodb-community@4.4/bin:$PATH"

# the NODE_PATH env
export NODE_PATH=`npm root -g`
export NVM_DIR="$HOME/.nvm"

# add ruby shim to $PATH.
export PATH=$HOME/.rbenv/shims:$PATH
# [[ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]] && . "$(brew --prefix)/etc/profile.d/bash_completion.sh"export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
# zsh-z
# source ~/zsh-z/zsh-z.plugin.zsh
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/mongodb-community@4.4/bin:$PATH"

# the NODE_PATH env
export NODE_PATH=`npm root -g`
export NVM_DIR="$HOME/.nvm"

# add ruby shim to $PATH.
export PATH=$HOME/.rbenv/shims:$PATH

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
alias rml="rm -rf node_modules package.lock.json yarn.lock";
alias rml="rm -rf node_modules package.lock.json yarn.lock";
alias flush-npm="rm -rf node_modules && npm i && say NPM is done";
alias nicache="npm install --prefer-offline";
alias nioff="npm install --offline";

## yarn aliases
alias yar="yarn run";
alias yas="yarn start";
alias yab="yarn build";
alias yat="yarn test";
alias yarnt="yarn test";
alias yav="yarn validate";
alias yoff="yarn add --offline";
alias ypm="echo \"Installing deps without lockfile and ignoring engines\" && yarn install --no-lockfile --ignore-engines"

## use hub for git
# alias git=hub
eval "$(hub alias -s)"

alias gr='grep --color -r'

# ## use pip for pip3
# alias pip=pip3

# for using trash-cli
# alias rm="trash"

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
# BREAKING.
function gbrk() {
    gcaz "!! BREAKING: $@"
}
# BREAKING.
function gbrk() {
    gcaz "!! BREAKING: $@"
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

# BREAKING with PUSH.
function gbrkp() {
    gcap "!! BREAKING: $@"
}

# BREAKING with PUSH.
function gbrkp() {
    gcap "!! BREAKING: $@"
}

# TODO run mongod start with some default requirement
function hello_world() {
   printf "hello $@"
}

# TODO run code for teacting like(jLengstorf) start with some default requirement
# Launch VSCode in teaching mode
# alias teach="code --extensions-dir ~/code_profiles/egghead/exts --user-data-dir ~/code_profiles/egghead/data"

# For screencasting, use stripped down settings with large text.
alias teach="code --user-data-dir ~/.code_profiles/screencast/data"

# Bash functions
# Get the current git branch
get_git_branch() {
  local branch=$(git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')
  # local branch=$(git rev-parse --abrev-ref HEAD)
  echo $YELLOW$YELLOW$branch
}

# Make a directory && cd into that directory
function mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }

# Custom functions
mg () { mkdir "$@" && cd "$@" || exit; }
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
  echo ${RED}${RED}$(node -v)
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

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


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

  PREVIOUS_PACKAGES=$(npm ls --location=global --parseable --depth=0)

  nvm use ${NODE_NEW}

  ALL_PACKAGES=$(npm ls --location=global --depth=0)

  for PACKAGE in $(echo "$PREVIOUS_PACKAGES" | grep "/node_modules/[^npm]");
  do
    PACKAGE_NAME=${PACKAGE##*/}
    PACKAGE_IN_CURRENT_VERSION=$(echo "$ALL_PACKAGES" | grep $PACKAGE_NAME)
    if [ "$PACKAGE_IN_CURRENT_VERSION" = "" ]; then
      npm i --location=global $PACKAGE_NAME
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
# precmd() {
#   if [ "$PWD" = "/Users/oluwasetemi/Development/projects" ] \
#   && [[ $(nvm current) = ^v16* ]]
#   then
#     nvm use 16.16.0
#   fi
# }

export RW_PATH=”$HOME/Development/projects/redwoodjs/redwood”

# Take a screenshot every n seconds
# Fun for making timelapse gifs later
# run `creep 20` for every 20 seconds
function creep() {
    while :; do; echo "📸" $(date +%H:%M:%S); screencapture -x ~/Screenshots/oluwasetemi/$(date +%s).png; sleep $1; done
}

COMPLETION_WAITING_DOTS="true"

# set-window-title() {
#   window_title="\e]0;${${PWD/#"$HOME"/~}/Dropbox\//}\a"
#   echo -ne "$window_title"
# }

PR_TITLEBAR=''
# set-window-title
# add-zsh-hook precmd set-window-title

# List all vscode extensions
function list_vsc_extensions () { code --list-extensions; }

# List the 10 most frequently used command
function historyTop () { history | awk '{print $2}' | sort | uniq -c | sort -rn | head -10 }


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

eval "$(starship init zsh --print-full-init)"

fpath=(~/.zsh/completions $fpath)
autoload -U compinit && compinit -i

# ls everytime you cd
# function cd() {
#   builtin cd $@
#   ls
# }

eval "$(pyenv init --path)"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# chrome alias
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --disable-gpu --crash-dumps-dir=./tmp"
alias chrome-canary="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary"
alias chromium="/Applications/Chromium.app/Contents/MacOS/Chromium"

#ZSH autosuggestion
# source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
#ZSH autocomplete
# source ~/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# hg - History grepping function
hg () {
  grep "$1" ~/.zsh_history
}
alias h='HISTTIMEFORMAT= history 10 | cut -c8-'
# Added by Amplify CLI binary installer
export PATH="$HOME/.amplify/bin:$PATH"
# aws cli
alias caws="code ~/.aws"
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/aws-sso aws-sso

complete -o nospace -C /usr/local/bin/terraform terraform
export PATH="/usr/local/opt/postgresql@13/bin:$PATH"

# bun completions
[ -s "/Users/oluwasetemi/.bun/_bun" ] && source "/Users/oluwasetemi/.bun/_bun"

# Bun
export BUN_INSTALL="/Users/oluwasetemi/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PNPM_HOME="/Users/oluwasetemi/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

alias -s {html,css,js}="bat"

fpath=(~/.stripe $fpath)
autoload -Uz compinit && compinit -i

# bindkey "${key[Up]}" up-line-or-local-history
# bindkey "${key[Down]}" down-line-or-local-history

# up-line-or-local-history() {
#   zle set-local-history 1
#   zle up-line-or-history
#   zle set-local-history 0
# }
# zle -N up-line-or-local-history
# down-line-or-local-history() {
#   zle set-local-history 1
#   zle down-line-or-history
#   zle set-local-history 0
# }
# zle -N down-line-or-local-history

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && . "$HOME/.fig/shell/zshrc.post.zsh"
