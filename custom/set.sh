#!/usr/bin/bash

if [ "${pkgMonCache}" = "" ]; then
	echo -e "pkgMonCache is not set.This script should invoked via fcpkgmon.Exiting with failure.."
	exit 1
fi

