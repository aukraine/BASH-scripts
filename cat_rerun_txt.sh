#!/usr/bin/env bash
RERUN_FILE=~/.scripts/rerun.txt

#echo "Input all output from rerun.txt:"
#read INPUT_ROW

FEATURES_PATH=$(cat $RERUN_FILE | tr ' ' '\n')

OUTPUT_ROW=""
COUNT=1
for feature_path in $FEATURES_PATH
do
	clear_path=$(echo $feature_path | cut -d ':' -f 1) &&
	OUTPUT_ROW+=$clear_path &&
#  echo "$COUNT - $clear_path" &&
  ((COUNT++))
done

echo "\n -------------------------------------------- OUTPUT -------------------------------------------------- \n"
echo $OUTPUT_ROW | tr '\n' ' ' > $RERUN_FILE
echo $OUTPUT_ROW | tr '\n' ' '
