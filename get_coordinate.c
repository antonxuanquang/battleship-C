void prompt_for_coordinate(char *result, int size);
void generate_random_input(char *result, int size);

void get_coordinate(char *result, int size, Boolean computer_turn) {
	if (computer_turn) 	generate_random_input(result, size);
	else 				prompt_for_coordinate(result, size);
}

void prompt_for_coordinate(char *result, int size) {
	char input[20];
	printf("%s", "Please input a coordinate: ");
	scanf("%s", input);
	strncpy(result, input, size);
}

void generate_random_input(char *result, int size) {
	char input[2];
	input[0] = (char) ((int)'A' + rand()%10);
	input[1] = (char) ((int)'0' + rand()%10);
	strncpy(result, input, size);
}

