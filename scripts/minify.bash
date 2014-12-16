#!/bin/bash


# go to the meshes folder
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
MESHES="$DIR/../meshes"
MATERIALS="$MESHES/materials"
cd $MESHES

# remove old minified files
rm *.min.dae

# re-minify
for f in *.dae ; do xmllint --noblanks $f > "${f/.dae/.min.dae}" ; done
jpegoptim $MATERIALS
