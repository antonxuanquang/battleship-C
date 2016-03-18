#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "defines.c"
#include "begin.c"
#include "create_board.c"
#include "create_ship.c"
#include "get_coordinate.c"
#include "shoot_a_board.c"
#include "show_board.c"
#include "clear_screen.c"
#include "upper_case.c"
#include "lower_case.c"


int main() {

	begin();

	char player_board[10][10];
	char computer_board[10][10];
	Boolean computer_turn = false;
	Boolean sink = false;
	char* shoot = malloc(2);

	printf("Let's create some ships\n\n\n");
	create_board(player_board);
	create_board(computer_board);
	create_ship(player_board, computer_turn);
	create_ship(computer_board, !computer_turn);

	printf("The battle begin\n\n\n");
	do {
		show_board(player_board, computer_board);
		if (computer_turn) 	printf("Computer shoot you at: ");
		else 				printf("You shoot at: ");
		get_coordinate(shoot, 2, computer_turn);
		
		if (computer_turn) 	printf("%s...\n\n%s", shoot, shoot);
		else 				printf("\n%s", shoot);
		
		if (computer_turn) {
			sink = shoot_a_board(shoot, player_board);
		} else {
			sink = shoot_a_board(shoot, computer_board);
		}

		computer_turn = !computer_turn;
		clear_screen();
	} while (!sink);
	

	if (computer_turn) 		printf("%s\n", "Congratulations!!!! You won");
	else 					printf("%s\n", "Computer won");

	printf("Your game board\n");
	show_board(player_board, computer_board);
	printf("Computer's game board\n");
	show_board(computer_board, player_board);

	free(shoot);

	return (EXIT_SUCCESS);
}