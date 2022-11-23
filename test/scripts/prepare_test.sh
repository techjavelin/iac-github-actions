#!/bin/bash

if [ -z $TEST_TARGET_PATH ]; then
    echo "TEST_TARGET_PATH must be set"
    exit 1
fi

if [ ! -f "$TEST_TARGET_PATH" ]; then
    mkdir -p $TEST_TARGET_PATH
fi

echo "Target Testing Path: ${TEST_TARGET_PATH}"
echo "Using Backend: ${BACKEND}"
echo "Test Name: ${TEST_NAME}"

cp test/terraform/backends/${BACKEND}/provider.tf $TEST_TARGET_PATH
cp -r test/terraform/${TEST_NAME}/* $TEST_TARGET_PATH/
