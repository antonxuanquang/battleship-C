void show_board(char player_board[10][10], char computer_board[10][10]) {
	int row, column;

	printf("%s\n", "SHIP BOARDS");

	// print A B C D ...
	for (row = 'A'; row <= 'J'; row++) {
		printf("\t");
		printf("%c", row);
	}
	printf("\n");

	// print board
	for (row = 0; row < 10; row++) {
		printf("%d", row);
		for (column = 0; column < 10; column++) {
			printf("\t");
			printf("%c", player_board[row][column]);
		}
		printf("\n");
	}
	printf("\n");
	printf("\n");



	printf("%s\n", "SHOT BOARDS");

	// print A B C D ...
	for (row = 'A'; row <= 'J'; row++) {
		printf("\t");
		printf("%c", row);
	}
	printf("\n");

	// print board
	for (row = 0; row < 10; row++) {
		printf("%d", row);
		for (column = 0; column < 10; column++) {
			printf("\t");
			char character = computer_board[row][column];
			if 		(upper_case(character)) 						
				printf("%c", '.');
			else if (lower_case(character) && character != 'o') 	
				printf("%c", 'X');
			else 													
				printf("%c", character);
		}
		printf("\n");
	}
	printf("\n");
	printf("\n");
}