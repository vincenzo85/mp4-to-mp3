Per convertire tutti i file MP4 in una directory in file MP3, puoi utilizzare un semplice script bash. Ecco come fare:

1. **Crea uno script bash**:

   Apri un editor di testo e incolla il seguente script:

   ```bash
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
   ```

   Sostituisci `/path/to/your/mp4/files` con il percorso della directory contenente i file MP4.

2. **Salva lo script**:

   Salva il file come `convert_mp4_to_mp3.sh`.

3. **Rendi eseguibile lo script**:

   Apri un terminale e rendi eseguibile lo script con il comando:

   ```bash
   chmod +x convert_mp4_to_mp3.sh
   ```

4. **Esegui lo script**:

   Ora puoi eseguire lo script:

   ```bash
   ./convert_mp4_to_mp3.sh
   ```

Questo script navigherà nella directory specificata, individuerà tutti i file con estensione `.mp4` e li convertirà in file `.mp3` usando `ffmpeg`. I file MP3 verranno salvati nella stessa directory dei file MP4 originali.
