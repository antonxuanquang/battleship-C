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
		board[row][column] = 'd';
		printf("%s\n", "HIT");
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
	for (row = 0; row < 10; row++) {
		for (column = 0; column < 10; column++) {
			char point = board[row][column];
			if (point != '.' && point != 'X' && point != 'o') {
				int length = strlen(sum_string);
				sum_string[length++] = point;
				sum_string[length] = '\0';
			}
		}
	}
	return check_sink_rec(sum_string);
}

Boolean check_sink_rec(char *sum_string) {
	if 		(sum_string[0] == '\0') 	return true;
	else if (upper_case(sum_string[0])) return false;
	else 								return check_sink_rec(sum_string + 1);
}

