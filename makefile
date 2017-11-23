README.md: guessinggame.sh
	touch README.md
	echo > README.md
	echo "##Guessing Game - Coursera Project##" >> README.md
	echo >> README.md
	echo " - Makefile run date: " $(shell date) >> README.md
	echo " - guessinggame.sh contains $(shell cat guessinggame.sh | wc -l) lines" >> README.md
	echo >> README.md
clean:
	rm README.md

