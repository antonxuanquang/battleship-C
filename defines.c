typedef enum {false, true} Boolean;

void create_board(char board[10][10]);
void create_ship(char board[10][10], Boolean computer_turn);
void get_coordinate(char *result, int size, Boolean computer_turn);
Boolean shoot_a_board(char *shot, char board[10][10]);
void show_board(char player_board[10][10], char computer_board[10][10]);
void clear_screen();
Boolean upper_case(char);
Boolean lower_case(char);