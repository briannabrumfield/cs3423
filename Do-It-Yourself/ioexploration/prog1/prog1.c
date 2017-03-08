#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>

#define BUFFER 1024

int main(int argc, char *argv[]) {

	int n, fdin;
	char buf[BUFFER];
	if(argc!= 2){
		write(STDERR_FILENO, "Usage: ", 7);
		write(STDERR_FILENO, argv[0], strlen(argv[0]));
		write(STDERR_FILENO, " <file.in>\n", 11);
		exit(-1);
	}

	if((fdin = open(argv[1],O_RDONLY)) == -1) {
		perror(argv[1]);
		exit(-1);
	}
	while((n = read(fdin, buf, BUFFER)) > 0) {
		if (write(STDOUT_FILENO, buf, n) < n) {
			exit(-1);
		}
	}
	if (n==-1) {
		perror(argv[1]);
		exit(-1);
	}

	exit(0);
}
