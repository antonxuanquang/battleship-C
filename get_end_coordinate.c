int prompt_for_end_possition();

void get_end_coordinate(char *possible_positions, char *end_position, Boolean computer_turn) {
	int num_choices = strlen(possible_positions) / 2;
	int option;
	int counter;
	char *choice = (char*) malloc(2);

	printf(">0: Retry\n");
	for (counter = 0; counter < num_choices; counter++) {
		memset(choice, '\0', 2);
		choice[0] = possible_positions[counter * 2];
		choice[1] = possible_positions[counter * 2 + 1];
		printf(">%d: %s\n", counter + 1, choice);
	}

	if (computer_turn) 	option = rand() % num_choices;
	else 				option = prompt_for_end_possition();
	
	if (option > 0 && option <= num_choices) {
		end_position[0] = possible_positions[(option - 1) * 2];
		end_position[1] = possible_positions[(option - 1) * 2 + 1];
	}
}

int prompt_for_end_possition() {
	int choice;
	printf("%s", "Please input end position:");
	scanf("%d", &choice);
	return choice;
}