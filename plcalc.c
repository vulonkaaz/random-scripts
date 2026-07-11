#include <stdio.h>

int main() {
	puts("This is a length calculator for playlists");
	puts("input values in min:sec format and this program will add them");
	puts("input values over an hour long as 68:49");
	puts("use ctrl-c or input 0 to end the program");
	int total = 0;
	int loop = 1;

	while (loop) {
		printf("%02d:%02d\n",total/60,total%60);
		int min, sec = 0;
		scanf("%d:%d", &min, &sec);
		total+=min*60;
		total+=sec;
		if (min+sec==0) {
			loop = 0;
		}
	}
}
