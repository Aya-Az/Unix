README.md: guessinggame.sh
	@echo "# Guessing Game" > README.md
	@echo "Date and Time: $(shell date)" >> README.md
	@echo "Number of lines in guessinggame.sh: $(shell wc -l < guessinggame.sh)" >> README.md
	@echo "This is a guessing game where you guess how many files are in the current directory." >> README.md
	@echo "" >> README.md
	@echo "### Game Instructions" >> README.md
	@echo "Run the script by entering 'bash guessinggame.sh' in the console. Keep guessing until you get the correct number of files in the directory." >> README.md

run:
	bash guessinggame.sh
