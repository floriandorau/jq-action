#!/bin/sh

result=$(sh -c "jq $*")

export JQ_OUTPUT=$result;

echo "Result stored to env 'JQ_OUTPUT': $JQ_OUTPUT";