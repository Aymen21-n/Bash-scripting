# makefile

README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "\n## Description" >> README.md
	echo "This project is a simple guessing game where the user tries to guess the number of files in the current directory." >> README.md
	echo "\n## Makefile Run Information" >> README.md
	echo "- Lines of code in guessinggame.sh: $$(wc -l < guessinggame.sh)" >> README.md

clean:
	rm -f README.md
