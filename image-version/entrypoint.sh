#!/bin/bash

readonly ARG="$1"

if [[ $ARG == "version" ]]; then
  version
  exit 1
fi

exec "$@"
