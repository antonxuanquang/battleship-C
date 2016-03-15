Boolean upper_case(char character) {
	int range = (int)'Z' - (int)'A';
	return ((int)character >= (int)'A') && (((int)character - (int)'A') <= range);
}