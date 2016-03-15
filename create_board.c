void create_board(char board[10][10]) {
	int row, column;

	for (row = 0; row < 10; row++) {
		for (column = 0; column < 10; column++) {
			board[row][column] = '.';
		}
	}
}