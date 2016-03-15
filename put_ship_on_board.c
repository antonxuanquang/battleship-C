void put_ship_on_board(char start_position[], char end_position[], char letter, char board[10][10] ) {
	int charA = (int) 'A';
	int char0 = (int) '0';
	int col_start = (int) start_position[0] - charA;
	int row_start = (int) start_position[1] - char0;
	int col_end = (int) end_position[0] - charA;
	int row_end = (int) end_position[1] - char0;

	int i;
	if (col_start == col_end) {			// vertical case
		if (row_start > row_end) {		// up case
			for (i = row_end; i <= row_start; i++) {
				board[i][col_start] = letter;
			}
		} else {						// down case
			for (i = row_start; i <= row_end; i++) {
				board[i][col_start] = letter;
			}
		}
	} else {							// horizontal case
		if (col_start > col_end) {		// right case
			for (i = col_end; i <= col_start; i++) {
				board[row_start][i] = letter;
			}
		} else {						// left case
			for (i = col_start; i <= col_end; i++) {
				board[row_start][i] = letter;
			}
		}
	}
}