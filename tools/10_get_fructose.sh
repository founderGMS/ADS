#!/bin/bash

SCRIPT_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
NAME=fructose-1.4.0
FILENAME=${NAME}.tar.gz

pushd ${SCRIPT_PATH}

if ! sha512sum -c ${NAME}.sha512; then
	wget https://downloads.sourceforge.net/project/fructose/fructose/${NAME}/${FILENAME}
fi

tar xf ${FILENAME}
mv ${NAME}/fructose/include/fructose/ ${SCRIPT_PATH}/
rm -rf ${NAME}/
