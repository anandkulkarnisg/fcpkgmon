#!/usr/bin/bash
# Author : Anand Kulkarni : 02/01/2020 : Adding all the functions as seperate libraries.These can then be debugged indepdently and imported reducing main execution file size.

function isUserRoot()
{
  userInfo=$(id|tr " " "\n" | head -1 | awk -F"(" '{print $2}'|sed "s/)//g")
  if [ "$userInfo" != "root" ]; then
    echo "no"
  else
    echo "yes"
  fi
}

function showUsage()
{
  echo -e "Usage : runPackageMon.sh [all(M)] [category(O)] [pipe seperated one/more package names.(O)]"
  echo -e "Valid category names currently supported: games/wine/multimedia/tools/products/langs/db."
}

function isValidCategory()
{
  validCategories=("games" "wine" "multimedia" "tools" "products" "langs" "db")
  for item in ${!validCategories[@]}
  do
    if [ "${validCategories[$item]}" = "$1" ]; then
      echo "yes"
      return
    fi
  done
  echo "no"
}

function runDnfInstall()
{
  autoSwitch=$(echo $2|tr '[:upper:]' '[:lower:]')
  baseCommand="dnf INSTALLTYPE -$autoSwitch $1"
  if [ "$3" = "s" ]; then
    INSTALLTYPE="install"
  else
    if [ "$3" = "g" ]; then
      INSTALLTYPE="group install"
    else
      if [ "$3" = "c" ]; then
				bash /opt/fcpkgmon/custom/${1}.sh
      else
        if [ "$3" = "d" ]; then
          INSTALLTYPE="debuginfo-install"
        fi
      fi
    fi
  fi

# Identify and print the command now.

	if [ "$3" != "c" ]; then
		baseCommand=$(echo $baseCommand | sed "s/INSTALLTYPE/${INSTALLTYPE}/g" | sed "s/-n//g")
		echo -e "Command is : " $baseCommand
	  eval $baseCommand
	fi
}
