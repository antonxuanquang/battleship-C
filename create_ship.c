#include "put_ship_on_board.c"
#include "generate_possible_positions.c"
#include "get_end_coordinate.c"


void put_ship_on_board(char[], char[], char, char[10][10]);
void generate_possible_positions(char *possible_positions, char *start_position, int length, char board[10][10]);
void get_end_coordinate(char *possible_positions, char *end_position, Boolean computer_turn);

void create_ship(char board[10][10], Boolean computer_turn) {
	char type[] = {'A', 'B', 'C', 'S', 'D'};
	int i;
	char *start_position = (char*)malloc(2);
	char *possible_positions = (char*)malloc(8);
	char *end_position = (char*)malloc(2);
	int length;
	char letter;

	for (i = 0; i < 5; i++) {

		if (!computer_turn) show_board(board, board);
		
		letter = type[i];
		switch (letter) {
			case 'A': length = 5; break;
			case 'B': length = 4; break;
			case 'C': length = 3; break;
			case 'S': length = 2; break;
			case 'D': length = 2; break;
		}
		do {
			memset(possible_positions,'\0', 8);
			memset(end_position, '\0', 2);
			get_coordinate(start_position, 2, computer_turn);
			generate_possible_positions(
				possible_positions, start_position, length - 1, board);
			get_end_coordinate(possible_positions, end_position, computer_turn);
		} while (end_position[0] == '\0');
		
		put_ship_on_board(start_position, end_position, letter, board);

		clear_screen();
	}

	free(start_position);
	free(possible_positions);
	free(end_position);
}