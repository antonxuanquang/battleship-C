void prompt_for_coordinate(char *result, int size);
void generate_random_input(char *result, int size);
Boolean is_valid(char *input);

void get_coordinate(char *result, int size, Boolean computer_turn) {
	if (computer_turn) 	generate_random_input(result, size);
	else 				prompt_for_coordinate(result, size);
}

void prompt_for_coordinate(char *result, int size) {
	char input[20];
	do {
		scanf("%s", input);
	} while (!is_valid(input));
	strncpy(result, input, size);
}

void generate_random_input(char *result, int size) {
	char input[2];
	input[0] = (char) ((int)'A' + rand()%10);
	input[1] = (char) ((int)'0' + rand()%10);
	strncpy(result, input, size);
}

Boolean is_valid(char *input) {
	if (strlen(input) == 2) {
		int first = (int)input[0] - (int)'A';
		int second = (int)input[1] - (int)'0';
		if (first >= 0 && first < 10 && second >= 0 && second < 10) {
			return true;
		}
	}
	printf("Invalid input!!!!\n");
	printf("A valid cordinate consists of a capital character from A to J\n");
	printf("and a number from 0 to 9\n");
	printf("Example: B2, J3, G7\n");
	return false;
}
