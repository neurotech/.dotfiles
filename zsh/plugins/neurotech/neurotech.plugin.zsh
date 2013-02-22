# Colour Variables
RED="\033[1;31m"
MAGENTA="\033[1;35m"
GREEN="\033[1;32m"
YELLOW="\033[1;33m"
RESET="\033[m"

# Brew Update/Upgrade/Cleanup
alias bu='brew update && brew upgrade && brew cleanup'

# SSH to HostGator
alias gator='ssh -p 2222 timd@184.173.236.33'

# Shortcut to working directory
alias ecd='cd ~/Dropbox/projects/electric-clouds/middleman/'

# Build and sync to HostGator
function deploygator() {
  boomerang=$PWD

  echo "Switching to working directory and building with ${GREEN}middleman${RESET}..."
  cd ~/Dropbox/projects/electric-clouds/middleman/
  bundle exec middleman build --clean

  echo "${YELLOW}Deploying with rsync...${RESET}"
  rsync -avzr --exclude='.DS_Store' --progress --human-readable --delete --rsh="ssh -p 2222" ~/Dropbox/projects/electric-clouds/middleman/build/ timd@184.173.236.33:/home/timd/public_html/timdouglas.co/

  cd ${boomerang}

  echo "${GREEN}Done.${RESET}"
}