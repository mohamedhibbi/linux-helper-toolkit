#!/bin/bash 

# Organize files in the current directory by extension 

mkdir -p Texts PDFs Images Music Others 

for file in *; do 
	# Skip directories 
	[[ -d  "$file" ]] && continue


        # Skip shell scripts 
        [[ "$file" == *.sh ]] && continue 

		case "$file" in 
			*.txt) mv "$file" Texts/ ;; 
			*.Pdf) mv "$file" PDFs/ ;;
			*.jpg|*.png|*.jpeg) mv "$file" Images/ ;;
			*.mp3|*.wav) mv "$file" Music/ ;;
			*) mv "$file" Others/ ;;
		esac 
	 
done 

echo "Files organized!" 
