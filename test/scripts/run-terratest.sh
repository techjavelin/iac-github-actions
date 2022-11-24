#!/bin/bash

TEST_TARGET_PATH?=$(mktemp -d)
./prepare_tests.sh
cp test/terratest/${TEST_NAME}/* ${TEST_TARGET_PATH}

