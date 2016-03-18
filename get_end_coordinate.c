int prompt_for_end_possition(char *possible_positions, int num_choices);

void get_end_coordinate(char *possible_positions, char *end_position, Boolean computer_turn) {
	int num_choices = strlen(possible_positions) / 2;
	int option;

	if (num_choices == 0) {
		printf("Can't put this ship on board, please try again!\n");
		return;
	}

	if (computer_turn) 	option = rand() % num_choices;
	else 				option = prompt_for_end_possition(possible_positions, num_choices);
	
	end_position[0] = possible_positions[(option - 1) * 2];
	end_position[1] = possible_positions[(option - 1) * 2 + 1];
}

int prompt_for_end_possition(char *possible_positions, int num_choices) {
	char *choice = (char*) malloc(2);
	int counter;

	printf(">0: Retry\n");
	for (counter = 0; counter < num_choices; counter++) {
		memset(choice, '\0', 2);
		choice[0] = possible_positions[counter * 2];
		choice[1] = possible_positions[counter * 2 + 1];
		printf(">%d: %s\n", counter + 1, choice);
	}

	free(choice);
	int choice_int;
	do {
		printf("%s", "Please input end position: ");
		scanf("%d", &choice_int);
	} while(choice_int < 0 || choice_int > num_choices);
	
	return choice_int;
}