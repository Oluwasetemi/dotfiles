# source $HOME/.bash_profile
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

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
alias gblame='git blame -w -C -C -C'
alias gc='git commit'
alias gcm='git commit -S --message'
alias gcf='git commit --fixup'
alias gco='git checkout'
alias gcob='git checkout -b'
alias main='git checkout main'
alias gcos='git checkout staging'
alias gcod='git checkout dev'
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
alias gph='git push'
alias gpf='git push --force'
alias gr='git rebase'
alias grv='git remote -v'
alias gs='git status'
alias gss='git status --short'
alias gsb='git status -sb'
alias gst='git stash'
alias gsta='git stash apply'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gsts='git stash save'
alias grm='git rm'
alias gmv='git mv'
alias grh='git reset HEAD'
alias grh1='git reset HEAD~1'
alias gfrb='git fetch origin && git rebase origin/master'
alias gxn='git clean -dn'
alias gx='git clean -df'
alias gsha='git rev-parse HEAD | pbcopy'
alias ghci='gh run list -L 1'
# alias gbase='git rebase HEAD feature && git rebase HEAD @{-2}'

# Changed your .gitignore _after_ you have added / committed some files?
# run `gri` to untrack anything in your updated .gitignore
# Put this in your .zshrc file
alias gri="git ls-files --ignored -o --exclude-standard | xargs -0 git rm -r"

alias 🖕😏🖕="git push --force"

alias "git latest"="git for-each-ref --sort=-committerdate refs/heads/"

# the NODE_PATH env
# export NODE_PATH=`npm root -g`
export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

alias nodetypes="npm i -D @types/node$(node --version | cut -d'.' -f1 | sed 's/v/@^/')"

# Open all merge conflicts or currently changed files in VS Code
# Switch out `code` for `subl`, `vim`, `atom` or your editor's CLI
alias fix="git diff --name-only | uniq | xargs code --wait"

#  Uses tree - install first:
# brew install tree
function tre() {
  # Defaults to 3 levels deep, do more with `t 5` or `t 1`
  # pass additional args after
  tree -I '.git|node_modules|.DS_Store' --dirsfirst --filelimit 25 -L ${1:-3} -aC $2
}

function take() {
  mkdir -p "$1"
  cd "$1"
}

function touchh() {
  mkdir -p "$(dirname "$1")" && touch "$1"
}

function takee() {
  mkdir -p "$(dirname "$1")" && touch "$1" && cd "$(dirname "$1")"
}

function glp() {
  git --no-pager log -$1
}

function gdNew() {
  if [[ -z $1 ]]; then
    git diff --color | delta
  else
    git diff --color $1 | delta
  fi
}

function gdc() {
  if [[ -z $1 ]]; then
    git diff --color --cached | delta
  else
    git diff --color --cached $1 | delta
  fi
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

alias pg="echo 'Pinging Google' && ping www.google.com"
alias cb="code ~/.bashrc"
alias cz="code ~/.zshrc"
alias zz="zed ~/.zshrc"
alias chist="code ~/.zsh_history"
alias zhist="zed ~/.zsh_history"
alias cg="code ~/.gitconfig"
alias zg="zed ~/.gitconfig"
alias clint="code ~/.eslintrc"
alias zlint="code ~/.eslintrc"
alias c="code ."
alias z="zed ."
alias reload="source ~/.bashrc"
alias zs="source ~/.zshrc"

# -------------------------------- #
# Directories
#
# I put
# `~/i` for my projects
# `~/f` for forks
# `~/r` for reproductions
# -------------------------------- #
function i() {
  cd ~/i/$1
}

function repros() {
  cd ~/r/$1
}

function forks() {
  cd ~/f/$1
}

function pr() {
  if [ $1 = "ls" ]; then
    gh pr list
  else
    gh pr checkout $1
  fi
}

function iss() {
  if [ $1 = "ls" ]; then
    gh issue list
  else
    gh issue view $1
  fi
}

function web() {
  if [ -z $1 ]; then
    gh repo view -w
  else
    gh repo view $1 -w
  fi
}

function repo() {
  if [ -z $1 ]; then
    gh repo view -w
  else
    gh repo view $1 -w
  fi
}

function dir() {
  mkdir $1 && cd $1
}

function clone() {
  if [[ -z $2 ]]; then
    hub clone "$@" && cd "$(basename "$1" .git)"
  else
    hub clone "$@" && cd "$2"
  fi
}

# Clone to ~/i and cd to it
function clonei() {
  i && clone "$@" && zed . && cd ~2
}

function cloner() {
  repros && clone "$@" && zed . && cd ~2
}

function clonef() {
  forks && clone "$@" && zed . && cd ~2
}

function codei() {
  i && zed "$@" && cd -
}

function serve() {
  if [[ -z $1 ]]; then
    live-server dist --ignore='*.scss,*.sass,*.less,*.map,.git/**' --entry-file='index.html'
  else
    live-server $1 --ignore='*.scss,*.sass,*.less,*.map,.git/**' --entry-file='index.html'
  fi
}

# Directory Aliases
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias wkf="cd ~/Development/fluna"
alias wkt="cd ~/Development/tripleten"
alias atlas="cd ~/Development/fluna/fluna-atlas && c"
alias fluna="cd ~/Development/fluna/fluna-web-app && c"
alias core="cd ~/Development/fluna/fluna-core && c"
alias alt="cd ~/Development/altschool-main"
alias talent="cd ~/Development/projects/contractors/talentql"
alias pra="cd ~/Development/projects"
alias sp="cd ~/Development/projects/contractors"
alias cv="cd ~/Development/projects/personal/cv && code ."
alias me="cd ~/Development/projects/personal/oluwasetemi && code ."
alias devO="cd ~/Development/projects/gatsbyjs/oluwasetemi.dev && code . && d"
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
# NC='\033[0m' # No Color

# Regular Colors
BLACK='\033[0;30m'  # Black
RED='\033[0;31m'    # Red
GREEN='\033[0;32m'  # Green
YELLOW='\033[0;33m' # Yellow
BLUE='\033[0;34m'   # Blue
PURPLE='\033[0;35m' # Purple
CYAN='\033[0;36m'   # Cyan
WHITE='\033[0;37m'  # White

# BLACK=$(tput setaf 0)
# RED=$(tput setaf 1)
# GREEN=$(tput setaf 2)
# YELLOW=$(tput setaf 3)
# BLUE=$(tput setaf 4)
# MAGENTA=$(tput setaf 5)
# CYAN=$(tput setaf 6)
# WHITE=$(tput setaf 7)
GREY=$(tput setaf 8)
LIGHTRED=$(tput setaf 9)
RESET=$(tput sgr0)

# Bold
BBLACK='\033[1;30m'  # Black
BRED='\033[1;31m'    # Red
BGREEN='\033[1;32m'  # Green
BYELLOW='\033[1;33m' # Yellow
BBLUE='\033[1;34m'   # Blue
BPURPLE='\033[1;35m' # Purple
BCYAN='\033[1;36m'   # Cyan
BWHITE='\033[1;37m'  # White

# Underline
UBLACK='\033[4;30m'  # Black
URED='\033[4;31m'    # Red
UGREEN='\033[4;32m'  # Green
UYELLOW='\033[4;33m' # Yellow
UBLUE='\033[4;34m'   # Blue
UPURPLE='\033[4;35m' # Purple
UCYAN='\033[4;36m'   # Cyan
UWHITE='\033[4;37m'  # White

# Background
ON_BLACK='\033[40m'  # Black
ON_RED='\033[41m'    # Red
ON_GREEN='\033[42m'  # Green
ON_YELLOW='\033[43m' # Yellow
ON_BLUE='\033[44m'   # Blue
ON_PURPLE='\033[45m' # Purple
ON_CYAN='\033[46m'   # Cyan
ON_WHITE='\033[47m'  # White

# High Intensity
IBLACK='\033[0;90m'  # Black
IRED='\033[0;91m'    # Red
IGREEN='\033[0;92m'  # Green
IYELLOW='\033[0;93m' # Yellow
IBLUE='\033[0;94m'   # Blue
IPURPLE='\033[0;95m' # Purple
ICYAN='\033[0;96m'   # Cyan
IWHITE='\033[0;97m'  # White

# Bold High Intensity
BIBLACK='\033[1;90m'  # Black
BIRED='\033[1;91m'    # Red
BIGREEN='\033[1;92m'  # Green
BIYELLOW='\033[1;93m' # Yellow
BIBLUE='\033[1;94m'   # Blue
BIPURPLE='\033[1;95m' # Purple
BICYAN='\033[1;96m'   # Cyan
BIWHITE='\033[1;97m'  # White

# High Intensity backgrounds
ON_IBLACK='\033[0;100m'  # Black
ON_IRED='\033[0;101m'    # Red
ON_IGREEN='\033[0;102m'  # Green
ON_IYELLOW='\033[0;103m' # Yellow
ON_IBLUE='\033[0;104m'   # Blue
ON_IPURPLE='\033[0;105m' # Purple
ON_ICYAN='\033[0;106m'   # Cyan
ON_IWHITE='\033[0;107m'  # White

function git_branch {

  # Shows the current branch if in a git repository
  git branch --no-color 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \(\1\)/'
  # branch=$(git rev-parse --abbrev-ref HEAD)
  # echo " {$branch} "
}

function random_element {
  declare -a array=("$@")
  r=$((RANDOM % ${#array[@]}))
  printf "%s\n" "${array[$r]}"
}

setEmoji() {
  EMOJI="$*"
  DISPLAY_DIR='$(dirs)'
  DISPLAY_BRANCH='$(git_branch)'
  PROMPT="${YELLOW}${DISPLAY_DIR}${GREEN}${DISPLAY_BRANCH}${RESET} ${EMOJI}"$'\n'"$ "
}

newRandomEmoji() {
  setEmoji "$(random_element 😅 👽 🔥 🚀 👻 ⛄ 👾 🍔 😄 🍰 🐑 😎 🏎 🤖 😇 😼 💪 🦄 🥓 🌮 🎉 💯 ⚛️ 🐠 🐳 🐿 🥳 🤩 🤯 🤠 👨‍💻 🦸‍ 🧝‍ 🧞‍ 🧙‍ 👨‍🚀 👨‍🔬 🕺 🦁 🐶 🐵 🐻 🦊 🐙 🦎 🦖 🦕 🦍 🦈 🐊 🦂 🐍 🐢 🐘 🐉 🦚 ✨ ☄️ ⚡️ 💥 💫 🧬 🔮 ⚗️ 🎊 🔭 ⚪️ 🔱)"
}

newRandomEmoji

# kentcdodds
alias jestify="PS1=\"🃏\n$ \""
alias testinglibify="PS1=\"🐙\n$ \""
alias cypressify="PS1=\"🌀\n$ \""
alias staticify="PS1=\"🚀\n$ \""
alias nodeify="PS1=\"💥\n$ \""
alias reactify="PS1=\"⚛\n$ \""
alias harryify="PS1=\"🧙‍\n$ \""

# allow substitution in PS1
setopt promptsubst

# history size
HISTSIZE=7000
HISTFILESIZE=14000

SAVEHIST=10000
setopt EXTENDED_HISTORY
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
HISTTIMEFORMAT=""
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
PATH="/usr/local/bin:$PATH:./node_modules/.bin"

## Yarn
export PATH=~/.yarn/bin:$PATH

# Custom bins
PATH="$PATH:$HOME/.bin"
PATH="$PATH:$HOME/.my_bin"
PATH="$PATH:$HOME/Development/projects/bash/hub-api-utils/bin"
# dotfile bins

export PATH="/usr/local/opt/icu4c/sbin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
# zsh-z
# source ~/zsh-z/zsh-z.plugin.zsh
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/mongodb-community@4.4/bin:$PATH"

# add ruby shim to $PATH.
export PATH=$HOME/.rbenv/shims:$PATH

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias deleteDSFiles="find . -name '.DS_Store' -type f -delete"
# alias kcd-oss="npx -p yo -p generator-kcd-oss -c 'yo kcd-oss'";
# function crapp { cp -R ~/.crapp "$@"; }
# function mcrapp { cp -R ~/.mcrapp "$@"; }

alias npm-update="npx npm-check -u"
alias yarn-update="yarn upgrade-interactive --latest"
# alias lt="pushd ~/code/love-texts && serve || popd";
alias flushdns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder"
alias dont_index_node_modules='find . -type d -name "node_modules" -exec touch "{}/.metadata_never_index" \;'

## git aliases
# function gc { git commit -m "$@"; }

dif() { git diff --color --no-index "$1" "$2" | diff-so-fancy; }
cdiff() { code --diff "$1" "$2"; }

# -------------------------------- #
# Node Package Manager
# -------------------------------- #
# https://github.com/antfu/ni

alias nio="ni --prefer-offline"
alias s="nr start"
alias d="nr dev"
alias b="nr build"
alias bw="nr build --watch"
alias t="nr test"
alias tu="nr test -u"
alias tw="nr test --watch"
alias w="nr watch"
alias p="nr play"
alias ct="nr typecheck"
alias lint="nr lint"
alias lintf="nr lint --fix"
alias release="nr release"
alias re="nr release"

# npm aliases
# NPM Aliases
# alias nrb="npm run build"
# alias nrs="npm run start"
# alias nrt="npm run test"
# alias nrtw="npm run test:watch"
# alias nrd="npm run deploy"
alias ni="npm install"
alias nrs="npm run start -s --"
alias nrb="npm run build -s --"
alias dev="npm run dev -s --"
alias nrt="npm run test -s --"
alias nrtw="npm run test:watch -s --"
alias nrv="npm run validate -s --"
alias rmn="rm -rf node_modules"
alias rml="rm -rf node_modules package.lock.json yarn.lock"
alias f-npm="rm -rf node_modules && npm i && say NPM is done"
alias nicache="npm install --prefer-offline"
alias nioff="npm install --offline"

## yarn aliases
alias yar="yarn run"
alias yas="yarn start"
alias yab="yarn build"
alias ydev="yarn dev"
alias yat="yarn test"
alias yarnt="yarn test"
alias yav="yarn validate"
alias yoff="yarn add --offline"
alias ypm="echo \"Installing deps without lockfile and ignoring engines\" && yarn install --no-lockfile --ignore-engines"

## use hub for git
# alias git=hub
eval "$(hub alias -s)"

alias gr='grep --color -r'

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

# TODO run code for teaching like(jLengstorf) start with some default requirement
# Launch VSCode in teaching mode
# alias teach="code --extensions-dir ~/code_profiles/egghead/exts --user-data-dir ~/code_profiles/egghead/data"

# For screencasting, use stripped down settings with large text.
alias teach="code --user-data-dir ~/.code_profiles/screencast/data"

# Bash functions
# Get the current git branch
get_git_branch() {
  local branch=$(git branch 2>/dev/null | sed -n '/^\*/s/^\* //p')
  # local branch=$(git rev-parse --abrev-ref HEAD)
  echo $YELLOW$branch
}

# Make a directory && cd into that directory
function mkdircd() { mkdir -p "$@" && eval cd "\"\$$#\""; }

# Custom functions
mg() { mkdir "$@" && cd "$@" || exit; }
shorten() { node ~/Development/projects/shortner/node_modules/.bin/netlify-shortener "$1" "$2"; }
cdl() { cd "$@" && ll; }
npm-latest() { npm info "$1" | grep latest; }
killport() { lsof -i tcp:"$*" | awk 'NR!=1 {print $2}' | xargs kill -9; }

# kill a tcp port
function kill_port() {
  sudo lsof -i tcp:"$1" && echo "port $1 was killed successfully"
}

# Add Node to prompt
nov() {
  echo " $c_node_version$(get_node_version)"
  echo " $c_node_version$(get_bun_version)"
  echo " $c_node_version$(get_deno_version)"
}

# Get Node Version
get_node_version() {
  echo ${BIGREEN}node $(node -v)
}

get_bun_version() {
  echo ${BIGREEN}bun $(bun -v)
}

get_deno_version() {
  echo ${BIGREEN}$(deno -v)
}

# open vsc and hyper
function openall() {
  for folder in */; do
    code $folder
  done
}

# get the url of the current opened tab
getURL() {
  url=$(osascript -e 'tell application "Google Chrome" to return URL of active tab of front window')
  echo $url
}

# download mp3 audio using youtube-dl
downloadSong() {
  cd ~/Music/downloads
  youtube-dl --extract-audio --audio-format mp3 \
    $(osascript -e 'tell application "Google Chrome" to return URL of active tab of front window')
  open .
}

export PATH="/usr/local/opt/openjdk/bin:$PATH"

# allow me to carry over my global npm package after any change of version
nvm_use() {
  NODE_NEW=$1

  PREVIOUS_PACKAGES=$(npm ls --location=global --parseable --depth=0)

  nvm use ${NODE_NEW}

  ALL_PACKAGES=$(npm ls --location=global --depth=0)

  for PACKAGE in $(echo "$PREVIOUS_PACKAGES" | grep "/node_modules/[^npm]"); do
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

# Take a screenshot every n seconds
# Fun for making timelapse gifs later
# run `creep 20` for every 20 seconds
function creep() {
  mkdir -p ~/Screenshots/oluwasetemi
  while :; do
    echo "📸 $(date +%H:%M:%S)"
    screencapture -x ~/Screenshots/oluwasetemi/$(date +%s).png
    sleep $1
  done
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
function list_vsc_extensions() { code --list-extensions; }

# List the 10 most frequently used command
function historyTop() {
  history | awk '{print $2}' | sort | uniq -c | sort -rn | head -10
}

# Created by `userpath` on 2020-11-11 08:12:40
export PATH="$PATH:/Users/oluwasetemi/.local/bin"

alias rename_video_to_gif='function rename_video_to_gif(){ ffmpeg -i $1 $2.gif && gifsicle -O3 $2.gif -o $2.gif && osascript -e "display notification \"$2.gif successfully converted and saved\" with title \"MOV2GIF SUCCESS!\""};rename_video_to_gif'

alias video_to_gif='function video_to_gif(){ ffmpeg -i "$1" "${1%.*}.gif" && gifsicle -O3 "${1%.*}.gif" -o "${1%.*}.gif" && osascript -e "display notification \"${1%.*}.gif successfully converted and saved\" with title \"MOV2GIF SUCCESS!\""};video_to_gif'

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

eval "$(starship init zsh --print-full-init)"

fpath=(~/.zsh/completions $fpath)
autoload -U compinit && compinit -i

eval "$(pyenv init --path)"

eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

# chrome alias
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --disable-gpu --crash-dumps-dir=./tmp"
alias chrome-canary="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary"
alias chromium="/Applications/Chromium.app/Contents/MacOS/Chromium"

# hg - History grepping function
hg() {
  grep "$1" ~/.zsh_history
}
alias h='HISTTIMEFORMAT= history 10 | cut -c8-'
# Added by Amplify CLI binary installer
export PATH="$HOME/.amplify/bin:$PATH"
# aws cli
alias caws="code ~/.aws"
alias zaws="zed ~/.aws"

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

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true

export PATH="/Users/oluwasetemi/Library/Python/3.9/bin:$PATH"

export CLOUDINARY_URL=cloudinary://579691362961956:WDjNnymc0rg35Nym5Gb5IItZrsk@drnqdd87d

alias copilot="gh copilot"
alias gcs="gh copilot suggest"
alias gce="gh copilot explain"
###-begin-npm-completion-###
#
# npm command completion script
#
# Installation: npm completion >> ~/.bashrc  (or ~/.zshrc)
# Or, maybe: npm completion > /usr/local/etc/bash_completion.d/npm
#

if type complete &>/dev/null; then
  _npm_completion() {
    local words cword
    if type _get_comp_words_by_ref &>/dev/null; then
      _get_comp_words_by_ref -n = -n @ -n : -w words -i cword
    else
      cword="$COMP_CWORD"
      words=("${COMP_WORDS[@]}")
    fi

    local si="$IFS"
    if ! IFS=$'\n' COMPREPLY=($(COMP_CWORD="$cword" \
      COMP_LINE="$COMP_LINE" \
      COMP_POINT="$COMP_POINT" \
      npm completion -- "${words[@]}" \
      2>/dev/null)); then
      local ret=$?
      IFS="$si"
      return $ret
    fi
    IFS="$si"
    if type __ltrim_colon_completions &>/dev/null; then
      __ltrim_colon_completions "${words[cword]}"
    fi
  }
  complete -o default -F _npm_completion npm
elif type compdef &>/dev/null; then
  _npm_completion() {
    local si=$IFS
    compadd -- $(COMP_CWORD=$((CURRENT - 1)) \
      COMP_LINE=$BUFFER \
      COMP_POINT=0 \
      npm completion -- "${words[@]}" \
      2>/dev/null)
    IFS=$si
  }
  compdef _npm_completion npm
elif type compctl &>/dev/null; then
  _npm_completion() {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    if ! IFS=$'\n' reply=($(COMP_CWORD="$cword" \
      COMP_LINE="$line" \
      COMP_POINT="$point" \
      npm completion -- "${words[@]}" \
      2>/dev/null)); then

      local ret=$?
      IFS="$si"
      return $ret
    fi
    IFS="$si"
  }
  compctl -K _npm_completion npm
fi
###-end-npm-completion-###

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# list global npm packages
alias npmls="npm list --location=global"
alias cat='bat --paging=never'
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
alias bathelp='bat --plain --language=help'
help() {
  "$@" --help 2>&1 | bathelp
}
alias -g -- -h='-h 2>&1 | bat --language=help --style=plain'
alias -g -- --help='--help 2>&1 | bat --language=help --style=plain'
