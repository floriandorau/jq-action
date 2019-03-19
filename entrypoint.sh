#!/bin/sh -l

file=$JQ_FILE 
options=$JQ_OPTIONS

if [ -z "$JQ_FILTERS" ];
then filters=".";
else filters="$JQ_FILTERS";
fi 

echo "Running jq with options '$options' and filters '$filters' for file '$file'."
result=$(jq $options $filters $file)

export JQ_OUTPUT=$result;

echo "Result stored to env 'JQ_OUTPUT': $JQ_OUTPUT";