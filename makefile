# Define variables
README = README.md
SCRIPT = guessinggame.sh

# Default target
all: $(README)

# Rule to generate README.md
$(README): $(SCRIPT)
	echo "# Guessing Game Project" > $(README)
	echo "" >> $(README)
	echo "## Project Details" >> $(README)
	echo "- **Date and Time of Make Execution:** $$(date)" >> $(README)
	echo "- **Number of Lines in guessinggame.sh:** $$(wc -l < $(SCRIPT))" >> $(README)
	echo "" >> $(README)
	echo "## How to Run the Program" >> $(README)
	echo "Run the script using the command: \`bash guessinggame.sh\`" >> $(README)

# Clean up generated files
clean:
	rm -f $(README)

