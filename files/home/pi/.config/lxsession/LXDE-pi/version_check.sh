#!/usr/bin/env bash

export TEXTDOMAIN=pprompt

HAMPI_LATEST_VERSION=`curl --silent "https://sourceforge.net/projects/hampi/files/latest/download" | egrep -o "HamPi_v[0-9]+\.[0-9]+" | uniq | egrep -o "[0-9]+\.[0-9]+"`

HAMPI_INSTALLED_VERSION=`grep -Po "VERSION_ID=\".*\"" /etc/hampi-release | grep -Po "[0-9]+,[0-9]+" | sed "s/,/./"`

echo "HAMPI_LATEST_VERSION = $HAMPI_LATEST_VERSION"
echo "HAMPI_INSTALLED_VERSION = $HAMPI_INSTALLED_VERSION"

# If curl doesn't return version (network is down), then quit
if [[ "$HAMPI_LATEST_VERSION" == "" ]]
then
  echo "Could not retrieve version of HamPi from Internet."
  exit 1
fi

# If filesystem doesn't return version (someone mucked with version file), then quit
if [[ "$HAMPI_INSTALLED_VERSION" == "" ]]
then
  echo "Could not retrieve version of HamPi from filesystem."
  exit 1
fi

#
# BASH Version compare used under Creative Commons License
#

vercomp () {
    if [[ $1 == $2 ]]
    then
        return 0
    fi
    local IFS=.
    local i ver1=($1) ver2=($2)
    # fill empty fields in ver1 with zeros
    for ((i=${#ver1[@]}; i<${#ver2[@]}; i++))
    do
        ver1[i]=0
    done
    for ((i=0; i<${#ver1[@]}; i++))
    do
        if [[ -z ${ver2[i]} ]]
        then
            # fill empty fields in ver2 with zeros
            ver2[i]=0
        fi
        if ((10#${ver1[i]} > 10#${ver2[i]}))
        then
            return 1
        fi
        if ((10#${ver1[i]} < 10#${ver2[i]}))
        then
            return 2
        fi
    done
    return 0
}

testvercomp () {
    vercomp $1 $2
    case $? in
        0) op='=';;
        1) op='>';;
        2) op='<';;
    esac
    if [[ $op == $3 ]]
    then
        echo "This version of HamPi is current."
    else
        echo "This version of HamPi is out of date."
        zenity --info --width=400 --title "HamPi Version Check" --timeout=59 --text "This version of HamPi ($HAMPI_INSTALLED_VERSION) is out of date. The latest version of HamPi is $HAMPI_LATEST_VERSION and may be downloaded from <a href=\"http://hampi.sourceforge.net/\">hampi.sourceforge.net</a>."
    fi
}

testvercomp $HAMPI_LATEST_VERSION $HAMPI_INSTALLED_VERSION '='
