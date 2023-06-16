#!/bin/sh

input_1=$1
input_2=$2

echo "Input 1: $input_1"
echo "Input 2: $input_2"
#  This file contains example bash scripts to accomplish various FFMPEG tasks

# watermark in bottom left corner
# ffmpeg ...

# watermark in bottom right corner

# watermark in top left corner

# watermark in top right corner

# attach preroll to beginning of video

# attach endroll to end of video

file_name="text"
echo "new file beings:" > $input_1
touch $input_1
echo $file_name
for i in {1..10}
do
  echo "Welcome $i times\n" >> $input_1
done
