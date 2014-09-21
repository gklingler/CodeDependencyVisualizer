#!/bin/sh

export PYTHONPATH=../src
python2 test_DotGenerator.py && dot -T png -o uml2.png uml2.dot
