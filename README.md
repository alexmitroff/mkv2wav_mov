# MKV (H264+PCM) to MOV and WAV ffmpeg scripts

## Description
Two small scripts (Bash and PowerShell) to demultiplex **MKV** video into **MOV** and **WAV**

## Trivia
My wife is a motion design tutor. I help her to produce video courses for her university. We record screen via OBS and capture audio from studio mic. In order to be able tweak sound as we pleased we capture audio in PCM format. So OBS outputs a video H264 with PCM audio in MKV container.

My wife used to edit video with Adobe Premiere Pro. And Adobe Premiere Pro does not work with MKV containers by religious reasons. I'm sure there are exist various MKV plugins for Premiere and I think we tried some but they fail on us. So I wrote a simple script for bash, and then I ported it for PowerShell to make my wife fully autonomous.

## File structure

```bash
.
├── mkv2wav_mov.sh
├── ps_mkv2wav_mov.ps1
│
├── Files_ready_to_be_converted_to_MOV
│   ├── 2022-06-14_14-57-32.mkv
│   └── 2022-06-14_17-54-14.mkv
│
├── Files_converted_to_MOV
│   ├── 2022-06-14_14-57-32.mkv.mov
│   ├── 2022-06-14_14-57-32.mkv.wav
│   ├── 2022-06-14_17-54-14.mkv.mov
│   └── 2022-06-14_17-54-14.mkv.wav
│
└── ffmpeg
    └── bin
        ├── ffmpeg.exe
        ├── ffplay.exe
        └── ffprobe.exe
```

All files that you need to convert should be stored in `Files_ready_to_be_converted_to_MOV` folder.

Results will appear in `Files_converted_to_MOV` folder.

Also you should have FFMPEG installed if you are using linux or stored within you working directory if you use Windows.

## Allow PowerShell script to execute scripts
* Open PowerShell with `as administrator` option,
* type in `Get-ExecutionPolicy`,
* if you recieve a `RemoteSigned` response so you good to go with script,
* either way you need to set it `Set-ExecutionPolicy -ExecutionPolicy RemoteSigned`.

More about execution policies [here](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.security/set-executionpolicy?view=powershell-7.2).

Remember that you always can set it back as `Undefined` which will prevent PowerShell to run any scripts at all.

