#!/bin/bash

echo Using exec...

set -x

exec "$@"
