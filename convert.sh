#!/bin/bash

# Directory contenente i file MP4
input_directory="/path/to/your/mp4/files"

# Cambia directory nella cartella con i file MP4
cd "$input_directory"

# Loop attraverso tutti i file MP4 nella directory
for file in *.mp4; do
    # Estrai il nome del file senza estensione
    filename="${file%.*}"
    # Usa ffmpeg per convertire MP4 in MP3
    ffmpeg -i "$file" -q:a 0 -map a "${filename}.mp3"
done
