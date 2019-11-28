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
alias gi='git init'
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

#-------------------------
# File Directory Alias
#-------------------------

alias ~='cd ~'
alias .='cd ..'
alias ..='cd ../..'
alias ...='cd ../../..'
alias ....='cd ../../../..'
alias -- -='cd -'
alias ..l="cd ../ && ll";
# alias cd..='cd ..'

# NPM Aliases
alias nrb="npm run build"
alias nrs="npm run start"
alias nrt="npm run test"
alias nrtw="npm run test:watch"
alias nrd="npm run deploy"

# Directory Aliases
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias wk="cd ~/Desktop/natterbase"
alias pra="cd ~/Desktop/projects"
# alias sp="cd ~/SideProjects"
alias blog="cd ~/Desktop/projects/Oluwasetemi.github.io"

# List all, long form
alias la="ls -la"

# Copy PWD to Clipboard
alias cpwd="pwd | tr -d '\n' | clip && echo 'pwd copied to clipboard'"


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
}

# function random_element {
#   declare -a array=("$@")
#   r=$((RANDOM % ${#array[@]}))
#   printf "%s\n" "${array[$r]}"
# }

# setEmoji () {
#   EMOJI="$*"
#   PS1="${YELLOW}\w${GREEN}\$(git_branch)${RESET} ${EMOJI}\n$ ";
# }

# newRandomEmoji () {
#   setEmoji "$(random_element 😅 👽 🔥 🚀 👻 ⛄ 👾 🍔 😄 🍰 🐑 😎 🏎 🤖 😇 😼 💪 🦄 🥓 🌮 🎉 💯 ⚛️ 🐠 🐳 🐿 🥳 🤩 🤯 🤠 👨‍💻 🦸‍ 🧝‍ 🧞‍ 🧙‍ 👨‍🚀 👨‍🔬 🕺 🦁 🐶 🐵 🐻 🦊 🐙 🦎 🦖 🦕 🦍 🦈 🐊 🦂 🐍 🐢 🐘 🐉 🦚 ✨ ☄️ ⚡️ 💥 💫 🧬 🔮 ⚗️ 🎊 🔭 ⚪️ 🔱)"
# }

# newRandomEmoji


alias pg="echo 'Pinging Google' && ping www.google.com";
alias cb="code ~/.bashrc";
alias reload="source ~/.bashrc";
alias cg="code ~/.gitconfig";
alias vsc="code .";

#.# Better Git Logs.
### Using EMOJI-LOG (https://github.com/ahmadawais/Emoji-Log).

# Git Commit, Add all and Push — in one step.
function gcap() {
    git add . && git commit -m "$*" && git push
}
# Git commit, Add all
function gca() {
    git add . && git commit -m "$*"
}

# NEW.
function gnew() {
    gca "📦 NEW: $@"
}

# IMPROVE.
function gimp() {
    gca "👌 IMPROVE: $@"
}
# FIX
function gfix() {
    gca "🐛 FIX: $@"
}

# RELEASE.
function grlz() {
    gca "🚀 RELEASE: $@"
}

# DOC.
function gdoc() {
    gca "📖 DOC: $@"
}

# TEST.
function gtst() {
    gca "✅ TEST: $@"
}

# TODO run mongod start with some default requirement
function mongodb() {
   printf "hello $@"
}

# TODO run code for teacting like(jLengstorf) start with some default requirement
# Launch VSCode in teaching mode
alias teach="code --extensions-dir ~/code_profiles/egghead/exts --user-data-dir ~/code_profiles/egghead/data"

# Bash functions
# Get the current git branch
get_git_branch() {
  local branch=$(git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')
  echo $branch
}

# Git command aliases that need to run from bash, not gitconfig
alias pl="git copl $(get_git_branch)"

# Make a directory && cd into that directory
function mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }

# Add Node to prompt
node_prompt () {
  echo " $c_node_version$(get_node_version)"
}

# Get Node Version
get_node_version () {
  echo $(node -v)
}

# Rename all directories to lowercase
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