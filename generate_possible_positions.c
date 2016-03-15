void generate_possible_positions(
	char *possible_positions, char *start_position, int length, char board[10][10]) {
	
	char *new_coordinate = (char*)malloc(2);
	printf("%s %s\n", "The input is: ", start_position);
	printf("%s %s\n", "New possible possible_positions is: ", possible_positions);
	int column = (int) start_position[0] - (int)'A';
	int row = (int) start_position[1] - (int)'0';
	int counter;
	Boolean flag;

	//left case
	flag = false;
	if (column - length >= 0) {
		for (counter = column - length; counter >= 0; counter--) {
			if (!(board[row][column] == '.')) {
				flag = true;
			}
		}
		new_coordinate[0] = (char) ((int) start_position[0] - length);
		new_coordinate[1] = start_position[1];
		if (!flag) strcat(possible_positions, new_coordinate);
		printf("%s %s\n", "New possible possible_positions is: ", possible_positions);
	}

	//right
	flag = false;
	if (column + length < 10) {
		for (counter = column; counter < column + length; counter++) {
			if (!(board[row][column] == '.')) {
				flag = true;
			}
		}
		new_coordinate[0] = (char) ((int) start_position[0] + length);
		new_coordinate[1] = start_position[1];
		if (!flag) strcat(possible_positions, new_coordinate);
		printf("%s %s\n", "New possible possible_positions is: ", possible_positions);
	}

	//up case
	flag = false;
	if (row - length >= 0) {
		for (counter = row - length; counter >= 0; counter--) {
			if (!(board[row][column] == '.')) {
				flag = true;
			}
		}
		new_coordinate[0] = start_position[0];
		new_coordinate[1] = (char) ((int) start_position[1] - length);		
		if (!flag) strcat(possible_positions, new_coordinate);
		printf("%s %s\n", "New possible possible_positions is: ", possible_positions);
	}

	//right
	flag = false;
	if (row + length < 10) {
		for (counter = row; counter < row + length; counter++) {
			if (!(board[row][column] == '.')) {
				flag = true;
			}
		}
		new_coordinate[0] = start_position[0];
		new_coordinate[1] = (char) ((int) start_position[1] + length);
		if (!flag) strcat(possible_positions, new_coordinate);
		printf("%s %s\n", "New possible possible_positions is: ", possible_positions);
	}

}