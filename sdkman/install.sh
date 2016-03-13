#!/bin/sh
#
# SDKMAN
#
# Installs SDKMAN if it isn't already installed

INIT_FILE="$HOME/.sdkman/bin/sdkman-init.sh"

if [ ! -s $INIT_FILE ];
then
  echo "  Installing sdkman"
  curl -s get.sdkman.io | bash
else
  echo "  SDKMAN is already installed"
  source $INIT_FILE
  sdk selfupdate
fi

exit 0
