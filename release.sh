#!/bin/bash

version="$1"

if [ -z "$version" ]; then
  echo "No version provided"
  exit 1
fi

yq eval ".version = $version" charts/${matrix.container}/Chart.yaml

