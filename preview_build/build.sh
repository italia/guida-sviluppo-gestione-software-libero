#!/bin/sh

rm -rf ./build && \
cp ./preview_configuration.py ./conf.py && \
sphinx-build .. build -c .