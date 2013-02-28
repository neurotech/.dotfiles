# Colour Variables
RED="\033[1;31m"
GREEN="\033[1;32m"
BLUE="\033[1;34m"
MAGENTA="\033[1;35m"
YELLOW="\033[1;33m"
RESET="\033[m"

# Brew Update/Upgrade/Cleanup
alias bu='brew update && brew upgrade && brew cleanup'

# SSH to HostGator
alias gator='ssh -p 2222 timd@184.173.236.33'

# Shortcut to working directory
alias ecd='cd ~/Dropbox/projects/timdouglas.co/'

# Build and sync to HostGator
function deploygator() {
  boomerang=$PWD

  echo "Switching to working directory and building with ${GREEN}middleman${RESET}..."
  cd ~/Dropbox/projects/timdouglas.co
  bundle exec middleman build --clean

  echo "${YELLOW}Deploying with rsync...${RESET}"
  rsync -avzr --exclude='.DS_Store' --progress --human-readable --delete --rsh="ssh -p 2222" ~/Dropbox/projects/timdouglas.co/build/ timd@184.173.236.33:/home/timd/public_html/timdouglas.co/

  cd ${boomerang}

  echo "${GREEN}Done.${RESET}"
}

# REAL Status
function rbcup() {
  realupdown=$(curl -sL -w "%{http_code}" "http://real.rosebank.nsw.edu.au/login/index.php" -o /dev/null)
  edumateupdown=$(curl -sL -w "%{http_code}" "https://edumate.rosebank.nsw.edu.au/rosebank/pages/main/login.php" -o /dev/null)

  if [ $realupdown = '200' ]
    then
      echo "${GREEN}REAL is up!${RESET}"
    else
      echo "${RED}Error: ${BLUE}${realupdown}${RESET}"
  fi

  if [ $edumateupdown = '200' ]
    then
      echo "${GREEN}Edumate is up!${RESET}"
    else
      echo "${RED}Error: ${BLUE}${edumateupdown}${RESET}"
  fi
}