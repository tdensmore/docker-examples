# 
GREEN="\033[0;32m"
CLEAR="\033[0;0m"
##
# printf "${GREEN}Running todd:copy${CLEAR}"
echo "${GREEN}Size of todd:before${CLEAR}"
docker image ls todd:before
echo "${GREEN}Size of todd:merged${CLEAR}"
docker image ls todd:merged