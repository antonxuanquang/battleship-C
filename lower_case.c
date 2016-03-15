Boolean lower_case(char character) {
	int range = (int)'z' - (int)'a';
	return ((int)character >= (int)'a') && (((int)character - (int)'a') <= range);
}