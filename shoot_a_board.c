Boolean shoot_it(char *shoot, char board[10][10]);
Boolean check_sink(char board[10][10]);
Boolean check_sink_rec(char *sum_string);


Boolean shoot_a_board(char *shoot, char board[10][10]) {
	Boolean hit, sink;
	hit = shoot_it(shoot, board);
	if (hit) sink = check_sink(board);
	return sink;
}

Boolean shoot_it(char *shoot, char board[10][10]) {
	int column = (int) shoot[0] - (int)'A';
	int row = (int) shoot[1] - (int)'0';
	char point = board[row][column];

	if (upper_case(point)) {
		char character = board[row][column];
		board[row][column] = (char)(character + 32);
		printf("%s\n", "HIT??????");
		return true;
	} else if (lower_case(point)) {
		printf("%s\n", "Already HIT");
	} else {
		board[row][column] = 'o';
		printf("%s\n", "MISS");
	}
	return false;
}

Boolean check_sink(char board[10][10]) {
	int row, column;
	char sum_string[20];
	memset(sum_string, '\0', 20);
	for (row = 0; row < 10; row++) {
		for (column = 0; column < 10; column++) {
			char point = board[row][column];
			printf("%s\n", sum_string);
			if (point != '.' && point != 'X' && point != 'o'
				&& !strchr(sum_string, point)
				&& upper_case(point)) {
				int length = strlen(sum_string);
				sum_string[length++] = point;
				sum_string[length] = '\0';
			}
		}
	}
	
	return strlen(sum_string) < 5;
}

