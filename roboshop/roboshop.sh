USER_ID=$(id -u)
if [ ${USER_ID} -ne 0 ]; then
  echo -e "\e[1;31mYou must be a root user to perform this script\e[0m"
  exit
  fi
# If the input is missing
COMPONENT=$1
if [ -z ${COMPONENT} ]; then
  echo -e "\e[1;31mComponent Input is missing\e[0m"
  exit;
  fi
# If the component entered does not exists
  if [ ! -e components/${COMPONENT}.sh ]; then
    echo -e "\e[1;31mGiven Component script does not exists\e[0m"
    exit
    fi
# If the component exists
bash components/${COMPONENT}.sh
    
