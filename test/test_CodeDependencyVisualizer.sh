#!/bin/sh

CPP_SRC_DIR="dummyCppProject"
CUML_ARGS="-aiptP --verbose -d ${CPP_SRC_DIR} -I ./dummyCppProject/subfolder"
VIEWER="firefox"
OUTPUT_FORMAT="svg"

python2 ../src/CodeDependencyVisualizer.py ${CUML_ARGS} && dot -T ${OUTPUT_FORMAT} -o uml.${OUTPUT_FORMAT} uml.dot && ${VIEWER} uml.${OUTPUT_FORMAT}

