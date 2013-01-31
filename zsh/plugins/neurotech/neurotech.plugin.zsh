# Colours
RED="\033[1;31m"
MAGENTA="\033[1;35m"
GREEN="\033[1;32m"
YELLOW="\033[1;33m"
RESET="\033[m"

alias ec='ssh -p 2222 timd@184.173.236.33'
alias gator='ssh -p 2222 timd@184.173.236.33'

alias deploygator='middleman build ~/Dropbox/projects/electric-clouds/middleman/ | rsync -avzr --progress --rsh="ssh -p 2222" ~/Dropbox/projects/electric-clouds/middleman/build/ timd@184.173.236.33:/home/timd/public_html/mm/'

alias deploybonsai='rsync -avzr --progress --rsh="ssh -p 2222" ~/Dropbox/projects/electric-clouds/bonsai/output/ timd@184.173.236.33:/home/timd/public_html/bonsai/'

function deploygatorr() {
  echo "${RED}Switching to working directory and building with ${GREEN}middleman...${RESET}"
  cd ~/Dropbox/projects/electric-clouds/middleman/
  middleman build

  echo "${YELLOW}Deploying with rsync...${RESET}"
  rsync -avzr --progress --rsh="ssh -p 2222" ~/Dropbox/projects/electric-clouds/middleman/build/ timd@184.173.236.33:/home/timd/public_html/mm/

  echo "${GREEN}Done.${RESET}"
}