#!/bin/bash
set -e

echo "Running functional tests $GO_JOB_RUN_INDEX of $GO_JOB_RUN_COUNT"

npm install; gauge install; gauge run specs
mkdir -p testoutput
echo "This is the output from $GO_JOB_RUN_INDEX of $GO_JOB_RUN_COUNT" >> testoutput/output.txt
