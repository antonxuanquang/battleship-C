#include "put_ship_on_board.c"

void put_ship_on_board(char[], char[], char, char[10][10]);

void create_ship(char board[10][10], Boolean computer_turn) {
	char type[] = {'A', 'B', 'C', 'S', 'D'};
	int i;
	char *start_position = (char*)malloc(2);
	char *possible_positions = (char*)malloc(8);
	char * end_position = (char*)malloc(2);
	int length;
	char letter;

	//debug
	char end[] = "B2";

	for (i = 0; i < 5; i++) {
		letter = type[i];
		switch (letter) {
			case 'A': length = 5; break;
			case 'B': length = 4; break;
			case 'C': length = 3; break;
			case 'S': length = 2; break;
			case 'D': length = 2; break;
		}
		// do {
			memset(possible_positions,'\0', 8);
			get_coordinate(start_position, 2, computer_turn);
			generate_possible_positions(
				possible_positions, start_position, length - 1, board);
		// 	end_position = get_end_coordinate(possible_positions, computer_turn);
		// } while (end_position != '\0');

		// put_ship_on_board(start_position, end, letter, board);

		if (!computer_turn) {
			show_board(board, board);
			// clear_screen();
		}
	}
}