void generate_possible_positions(
	char *possible_positions, char *start_position, int length, char board[10][10]) {
	
	char *new_coordinate = (char*)malloc(2);
	int column = (int) start_position[0] - (int)'A';
	int row = (int) start_position[1] - (int)'0';
	int counter;
	Boolean flag;

	show_board(board, board);

	//left case
	flag = true;
	if (column - length >= 0) {
		for (counter = column; counter > column - length; counter--) {
			printf("left %c\n", board[row][column]);
			if (!(board[row][counter] == '.')) {
				flag = false;
				break;
			}
		}
		new_coordinate[0] = (char) ((int) start_position[0] - length);
		new_coordinate[1] = start_position[1];
		if (flag) strcat(possible_positions, new_coordinate);
	}

	//right
	flag = true;
	if (column + length < 10) {
		for (counter = column; counter < column + length; counter++) {
			printf("right %c\n", board[row][column]);
			if (!(board[row][counter] == '.')) {
				flag = false;
				break;
			}
		}
		new_coordinate[0] = (char) ((int) start_position[0] + length);
		new_coordinate[1] = start_position[1];
		if (flag) strcat(possible_positions, new_coordinate);
	}

	//up case
	flag = true;
	if (row - length >= 0) {
		for (counter = row; counter > row - length; counter--) {
			printf("up %c\n", board[row][column]);
			if (!(board[counter][column] == '.')) {
				flag = false;
				break;
			}
		}
		new_coordinate[0] = start_position[0];
		new_coordinate[1] = (char) ((int) start_position[1] - length);		
		if (flag) strcat(possible_positions, new_coordinate);
	}

	//down
	flag = true;
	if (row + length < 10) {
		for (counter = row; counter < row + length; counter++) {
			printf("down %c\n", board[row][column]);
			if (!(board[counter][column] == '.')) {
				flag = false;
				break;
			}
		}
		new_coordinate[0] = start_position[0];
		new_coordinate[1] = (char) ((int) start_position[1] + length);
		if (flag) strcat(possible_positions, new_coordinate);
	}
}