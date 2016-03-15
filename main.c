#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "defines.c"
#include "create_board.c"
#include "create_ship.c"
#include "get_coordinate.c"
#include "shoot_a_board.c"
#include "generate_possible_positions.c"
#include "show_board.c"
#include "clear_screen.c"
#include "upper_case.c"
#include "lower_case.c"

int main() {

	system("clear");
	printf("%s\n", "Welcome to battle ship game.");

	char player_board[10][10];
	char computer_board[10][10];
	Boolean computer_turn = false;
	Boolean sink = false;
	char* shoot = malloc(2);

	create_board(player_board);
	create_board(computer_board);
	create_ship(player_board, computer_turn);
	create_ship(computer_board, !computer_turn);

	do {
		get_coordinate(shoot, 2, computer_turn);
		if (computer_turn) {
			sink = shoot_a_board(shoot, player_board);
		} else {
			sink = shoot_a_board(shoot, computer_board);
		}

		computer_turn = !computer_turn;
		if (!computer_turn) show_board(player_board, computer_board);
		// clear_screen();
	} while (!sink);
	

	if (computer_turn) 		printf("%s\n", "User won");
	else 					printf("%s\n", "Computer won");

	show_board(player_board, computer_board);
	show_board(computer_board, player_board);

	free(shoot);

	return (EXIT_SUCCESS);
}