#!/bin/sh

TMP_DIR="/tmp"
CPP_SRC_DIR="dummyCppProject"
CUML_ARGS="-aiptP --verbose -d ${CPP_SRC_DIR} -I ./dummyCppProject/subfolder -o ${TMP_DIR}/uml.dot"
VIEWER="firefox"
OUTPUT_FORMAT="svg"

python2 ../src/CodeDependencyVisualizer.py ${CUML_ARGS} && dot -T ${OUTPUT_FORMAT} -o ${TMP_DIR}/uml.${OUTPUT_FORMAT} ${TMP_DIR}/uml.dot && ${VIEWER} ${TMP_DIR}/uml.${OUTPUT_FORMAT}
