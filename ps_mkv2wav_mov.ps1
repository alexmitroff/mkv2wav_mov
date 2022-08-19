Write-Output "MKV to MOV and WAV converter script"

Get-ChildItem ".\Files_ready_to_be_converted_to_MOV" -Filter *.mkv | 
Foreach-Object {
    $file_path = $_.FullName
    $file_name = $_.Name

    $destination_mov = ".\Files_converted_to_MOV\"+$file_name+".mov"
    $destination_wav = ".\Files_converted_to_MOV\"+$file_name+".wav"

    if (Test-Path -Path $destination_mov -PathType Leaf) {
        Write-Output $file_name" already converted"
        return
    }

    .\ffmpeg\bin\ffmpeg.exe -i $file_path -map 0:v:0 -c:v copy $destination_mov -map 0:a:0 -c:a copy $destination_wav
}
