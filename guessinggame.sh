#!/bin/bash
###Nos of files and guess variable
nosfiles=$(ls | wc -l)
nosguess=0

###Intro
echo -e "This is Guess game for nos of files in current directory"


###function to check the guess
checkGuess() {
		read -p "Please enter your guess : " nosguess

		if [ $nosguess -gt $nosfiles ]; then
			echo "Sorry! This time higher than actual nos of files"
		elif [ $nosguess -lt $nosfiles ]; then
			echo "Sorry! This time less than actual nos of files"
		fi
}

### check while guess is not match with nos of files
while [ "$nosguess" != "$nosfiles" ]; do
	checkGuess
done

echo -e "Awesome! Thats the Correct Answer"
