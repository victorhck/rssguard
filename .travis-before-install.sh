#!/bin/sh

if test "$TRAVIS_OS_NAME" = "osx"; then
  # Mac OS X.
  brew update
  brew install qt5
else
  # Linux.
  sudo apt-get update
  sudo apt-get -y install qt57tools qt57base qt57webengine
  source /opt/qt57/bin/qt57-env.sh
fi