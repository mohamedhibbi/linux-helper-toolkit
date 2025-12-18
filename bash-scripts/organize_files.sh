#!/bin/bash 

# Log file 
LOGFILE="organize.log"


# Organize files in the current directory by extension 

mkdir -p Texts PDFs Images Music Others 

for file in *; do 
	# Skip directories 
	[[ -d  "$file" ]] && continue


        # Skip shell scripts 
        [[ "$file" == *.sh ]] && continue 

		case "$file" in 
			*.txt) mv "$file" Texts/ && echo "moved $file to Texts/" >> "$LOGFILE"  ;; 
			*.Pdf) mv "$file" PDFs/ && echo "moved $file to PDFs/" >> "$LOGFILE"  ;;
			*.jpg|*.png|*.jpeg) mv "$file" Images/ && echo "moved $file to Images/" >> "$LOGFILE" ;;
			*.mp3|*.wav) mv "$file" Music/ && echo "moved $file to Music/" >> "$LOGFILE"  ;;
			*) mv "$file" Others/ && echo "moved $file to Others/" >> "$LOGFILE" ;;
		esac 
	 
done 

echo "Files organized!" 
