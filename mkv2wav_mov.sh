# /bin/sh

for file_path in ./Files_ready_to_be_converted_to_MOV/*.mkv; do
    IFS=/ read -a fields <<< "$file_path"
    destination_mov="./Files_converted_to_MOV/${fields[2]}.mov"
    destination_wav="./Files_converted_to_MOV/${fields[2]}.wav"
    if [ -f $destination_mov ]
    then
        continue
    fi
    ffmpeg -i "$file_path" -map 0:v:0 -c:v copy $destination_mov -map 0:a:0 -c:a copy $destination_wav
done
