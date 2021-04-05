#!/usr/bin/env bash
filenum=$(ls | wc -l)

function guess_filenum {
	read guess
	if [[ $guess -eq $filenum ]]
	then
		echo "Wow Great!!! You have guessed it right"
		echo "Fantastic"
		echo "  We have the number..."
		for f in $(ls)
		do
			echo "  - $f and "
		done
		echo "    .And thats it!!."
	else
		if [[ $guess -gt $filenum ]]
		then
			echo "That guess is low...Please try again:"
			guess_filenum
		else
			echo "That guess is high....please low your guess little bit :"
			guess_filenum
		fi
	fi
}
echo "Welcome all to the wonderful guessing game!!!"
echo "Guess how many files are in the current directory (pretending you don't know) and press Enter :"
guess_filenum
