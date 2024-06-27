# Variables
TITLE = Guessing Game
README = README.md
SCRIPT = guessinggame.sh

# Rule to generate README.md
all: $(README)

$(README): $(SCRIPT)
	echo "# $(TITLE)" > $(README)
	echo "" >> $(README)
	echo "Date and Time of build:" >> $(README)
	date >> $(README)
	echo "" >> $(README)
	echo "Number of lines in $(SCRIPT):" >> $(README)
	wc -l < $(SCRIPT) >> $(README)

# Phony targets
.PHONY: clean

# Clean target to remove README.md
clean:
	rm -f $(README)
