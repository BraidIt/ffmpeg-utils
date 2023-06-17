#!/bin/sh

input_1=$1
input_2=$2

echo "Input 1: $input_1"
echo "Input 2: $input_2"
#  This file contains example bash scripts to accomplish various FFMPEG tasks

# (1) watermark in bottom left corner
#ffmpeg -i sample.mp4 -i logo.png -filter_complex '[1]colorchannelmixer=aa=0.5[logo2], [0][logo2]overlay=15:H-h-15' output.mp4

# (2) watermark in bottom right corner
#ffmpeg -i sample.mp4 -i logo.png -filter_complex '[1]colorchannelmixer=aa=0.5[logo2], [0][logo2]overlay=W-w-15:H-h-15' output.mp4

# (3) watermark in top left corner
#ffmpeg -i sample.mp4 -i logo.png -filter_complex '[1]colorchannelmixer=aa=0.5[logo2], [0][logo2]overlay=15:15' output.mp4

# (4) watermark in top right corner
#ffmpeg -i sample.mp4 -i logo.png -filter_complex '[1]colorchannelmixer=aa=0.5[logo2], [0][logo2]overlay=W-w-15:15' output.mp4

# (5) watermark in center
#ffmpeg -i sample.mp4 -i logo.png -filter_complex '[1]colorchannelmixer=aa=0.5[logo2], [0][logo2]overlay=(W-w)/2:(H-h)/2' output.mp4

# (6) attach preroll to beginning of video
# intro must have an audio stream
#ffmpeg -i intro.mp4 -i sample.mp4  -filter_complex "[0:v][0:a][1:v][1:a]concat=n=2:v=1:a=1[v][a]" -map "[v]" -map "[a]" output.mp4

# (7) attach endroll to end of video
# outro must have an audio stream
# ffmpeg -i sample.mp4 -i outro.mp4 -filter_complex "[0:v][0:a][1:v][1:a]concat=n=2:v=1:a=1[v][a]" -map "[v]" -map "[a]" output.mp4

file_name="text"
echo "new file beings:" > $input_1
touch $input_1
echo $file_name
for i in {1..10}
do
  echo "Welcome $i times\n" >> $input_1
done
