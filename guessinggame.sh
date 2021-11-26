#!/usr/bin/env bash
	

	echo "Hello. You are now playing my guessing game"
	

	function tell 
	{
		echo "Please enter the number of files that are possibly in the current directory:"
		read input
	    files=$(ls -1 | wc -l)
	}
	

	tell
	

	while [[ $input -ne $files ]]
	do
		if [[ $input -lt $files ]] 
		then
			echo "You have entered too low number"
		else
			echo "You have entered too high number"
		fi
		tell
	done
	

	echo "Correct answer. Below is the list of files:"
	echo "---" && ls -1

