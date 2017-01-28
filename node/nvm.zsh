# Initialise nvm
NVM_HOME="$HOME/.nvm"
if [[ ! -d $NVM_HOME ]]; then
  echo "Creating ${NVM_HOME}"
  mkdir $NVM_HOME
fi

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

