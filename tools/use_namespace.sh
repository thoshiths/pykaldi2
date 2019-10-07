#!/bin/bash

# This script is used for adding using directives to cc files generated by CLIF.

cc=$1
shift
for namespace in "$@"; do
  sed -i.bak -e 's/using namespace clif;$/using namespace clif;\'$'\n'"using namespace ${namespace};/g" $cc
  rm -f $cc.bak
done