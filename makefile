README.md:
	touch README.md
	echo "#This is a Guessing Game Assignemnt" >> README.md
	echo "**Last run** ('README.md' file modification) was on:" >> README.md
	stat  README.md | grep -Po "Modify:\s\K.*"  >> README.md
	echo "Guessing Game script contains following **number of lines**:" >> README.md
	cat guessinggame.sh | wc -l >> README.md
