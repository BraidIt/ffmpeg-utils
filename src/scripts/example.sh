#!/bin/sh

input_1=$1
input_2=$2

echo "Input 1: $input_1"
echo "Input 2: $input_2"
#  This file contains example bash scripts to accomplish various FFMPEG tasks

# watermark in bottom left corner
#ffmpeg -i sample.mp4 -i logo.png -filter_complex '[1]colorchannelmixer=aa=0.5[logo2], [0][logo2]overlay=15:H-h-15' output.mp4

# watermark in bottom right corner
#ffmpeg -i sample.mp4 -i logo.png -filter_complex '[1]colorchannelmixer=aa=0.5[logo2], [0][logo2]overlay=W-w-15:H-h-15' output.mp4

# watermark in top left corner
#ffmpeg -i sample.mp4 -i logo.png -filter_complex '[1]colorchannelmixer=aa=0.5[logo2], [0][logo2]overlay=15:15' output.mp4

# watermark in top right corner
#ffmpeg -i sample.mp4 -i logo.png -filter_complex '[1]colorchannelmixer=aa=0.5[logo2], [0][logo2]overlay=W-w-15:15' output.mp4

# watermark in center
#ffmpeg -i sample.mp4 -i logo.png -filter_complex '[1]colorchannelmixer=aa=0.5[logo2], [0][logo2]overlay=(W-w)/2:(H-h)/2' output.mp4

# attach preroll to beginning of video
#ffmpeg -i intro.mp4 -i sample.mp4  -filter_complex "[0:v][0:a][1:v][1:a]concat=n=2:v=1:a=1[v][a]" -map "[v]" -map "[a]" output.mp4
#*intro.mp4 must have an audio stream

# attach endroll to end of video
#ffmpeg -i sample.mp4 -i outro.mp4 -filter_complex "[0:v][0:a][1:v][1:a]concat=n=2:v=1:a=1[v][a]" -map "[v]" -map "[a]" output.mp4
#*outro.mp4 must have an audio stream


# text in bottom fifth (?) corner
#ffmpeg -i sample.mp4 -vf "drawtext=text='Sample Text':font=ariel:fontsize=50:fontcolor=white:x=144:y=h-th-50:shadowx=0:shadowy=0:box=0:boxcolor=black@0.5:boxborderw=12" -c:a copy output.mp4
#Examples:
#   ffmpeg -i sample.mp4 -vf "drawtext=text='Sample Text':fontsize=50:fontcolor=white:x=144:y=h-th-50" -c:a copy output.mp4
#     - Adds basic text
#   ffmpeg -i sample.mp4 -vf "drawtext=text='Sample Text':font=ariel:fontsize=50:fontcolor=white:x=144:y=h-th-50:shadowx=3:shadowy=3:box=0:boxcolor=black@0.5:boxborderw=12" -c:a copy output.mp4
#     - Adds a dropshadow to the text
#
#   ffmpeg -i sample.mp4 -vf "drawtext=text='Sample Text':font=ariel:fontsize=50:fontcolor=white:x=144:y=h-th-50:shadowx=0:shadowy=0:box=1:boxcolor=black@0.5:boxborderw=12" -c:a copy output.mp4
#     - Adds a transparent box around the text
#
#   echo >> temp.txt "line one\nline two"
#   ffmpeg -i sample.mp4 -vf "drawtext=textfile=temp.txt:font=ariel:fontsize=50:fontcolor=white:x=144:y=h-th-50:line_spacing=8:shadowx=0:shadowy=0:box=1:boxcolor=black@0.5:boxborderw=12" -c:a copy output.mp4
#   rm temp.txt
#     - Adds multiple lines of text
#
#   ffmpeg -i sample.mp4 -vf "drawtext=text='Sample Text':fontfile=SResistMedium.otf:fontsize=50:fontcolor=white:x=144:y=h-th-50:shadowx=3:shadowy=3:box=0:boxcolor=black@0.5:boxborderw=12" -c:a copy output.mp4
#     - Uses a font file to change the font of the text

# Text with chyron
#ffmpeg -i sample.mp4 -vf "drawbox=45:ih-h-51:305:81:color=red@1:t=fill, drawbox=50:ih-h-50:iw-100:50:color=white@1:t=fill, drawtext=text='TEXT LINE ONE':fontfile=SResistMedium.otf:fontsize=30:fontcolor=white:x=55:y=h-th-105, drawtext=text='TEXT LINE TWO':fontfile=SResistMedium.otf:fontsize=50:fontcolor=black:x=55:y=h-th-55" -c:a copy output.mp4



file_name="text"
echo "new file beings:" > $input_1
touch $input_1
echo $file_name
for i in {1..10}
do
  echo "Welcome $i times\n" >> $input_1
done
