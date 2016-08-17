
#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

/*Programma per la estrazione di 90 numeri di tombola.*/

int
main(int argc,char **argv) {

	int n, m, nread, a=1;
	int tab[91];
	char buffer[128];

    pid_t pid = getpid();   /* Get our process ID */

    srand((unsigned)pid);
    
	for (n=1; n<=90; n++ ) {
		tab[n] = 0;
	}
	
	for ( n=1; n<=10; n++ ) {
		printf("\n");
        fflush(stdout);
	}
	
	m = 0;

	printf("Premi <Invio> per un'estrazione o Ctrl-C per uscire.\n");

	while (a) {
			n = rand() % 90 + 1;    /* 1 to 90 */
/*			printf("%d\t%d.\n", n, tab[n]);*/
			printf("");
			if (tab[n]) {
				 }
			else {
				tab[n] = 1;
				m++;
				nread = read(0,buffer,128);
				printf("L'estrazione numero %d e' \t%d.\n", m, n);
			for ( n=1; n<=10; n++ ) {
				printf("\n");
				fflush(stdout);
				}
			};
			
			if (m > 89) {a = 0;}
		}


}
