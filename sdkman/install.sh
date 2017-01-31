#!/bin/sh
#
# SDKMAN
#
# Installs SDKMAN if it isn't already installed

INIT_FILE="$HOME/.sdkman/bin/sdkman-init.sh"

if [ ! -s $INIT_FILE ]; then
  echo "  Installing sdkman"
  curl -s get.sdkman.io | bash
else
  echo "  SDKMAN is already installed"
  source $INIT_FILE
  sdk selfupdate
fi

if test ! $(which groovy); then
  sdk install groovy
fi

if test ! $(which gradle); then
  sdk install gradle
fi

if test ! $(which springboot); then
  sdk install springboot
fi

exit 0
