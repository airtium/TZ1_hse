#!/bin/bash
input_dir=$1
output_dir=$2

find "$input_dir" -type f -exec bash -c '
    old_name=$2
    path="${old_name#$0/}"   
    new_name="${path//\//_}"
    cp "$old_name" "$1/$new_name"
' $input_dir $output_dir {} \;   
