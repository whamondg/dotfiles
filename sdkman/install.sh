#!/bin/sh
#
# SDKMAN
#
# This installs SDKMAN if it isn't already installed

INIT_FILE="$HOME/.sdkman/bin/sdkman-init.sh"
echo $INIT_FILE

if [ ! -f $INIT_FILE ];
then
  echo "  Installing sdkman"
  curl -s get.sdkman.io | bash
  
  echo "  Sourcing the sdkman init file"
  source "$HOME/.sdkman/bin/sdkman-init.sh"
fi

exit 0
