#!/bin/bash

set -e
set -x

rm -f middleware.exe
dune build
cp _build/default/middleware.exe .