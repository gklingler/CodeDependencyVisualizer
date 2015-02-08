#!/bin/sh

TMP_DIR="/tmp"
VIEWER="eog"
export PYTHONPATH=../src

python2 test_DotGenerator.py ${TMP_DIR}/uml2.dot && dot -T png -o ${TMP_DIR}/uml2.png ${TMP_DIR}/uml2.dot && ${VIEWER} ${TMP_DIR}/uml2.png
