# 
GREEN="\033[0;32m"
CLEAR="\033[0;0m"
##
# printf "${GREEN}Running todd:copy${CLEAR}"
echo "${GREEN}Running todd:copy${CLEAR}"
docker run todd:copy
echo "${GREEN}Running todd:add${CLEAR}"
docker run todd:add