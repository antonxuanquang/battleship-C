#include "put_ship_on_board.c"

void put_ship_on_board(char[], char[], char, char[10][10]);

void create_ship(char board[10][10], Boolean computer_turn) {
	char type[] = {'A', 'B', 'C', 'S', 'D'};
	int i;
	char start_position[2];
	char possible_positions[8];
	char end_position[2];
	int length;
	char letter;

	//debug
	char start[] = "A2";
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
		// 	start_position = get_coordinate(computer_turn);
		// 	possible_positions = generate_possible_positions(start_position, 
		// 											length, board);
		// 	end_position = get_end_coordinate(possible_positions, computer_turn);
		// } while (end_position != '\0');

		put_ship_on_board(start, end, letter, board);

		if (!computer_turn) {
			show_board(board, board);
			clear_screen();
		}
	}
}