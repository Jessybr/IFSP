#include <stdio.h>
#include <stdlib.h>

int main(){
    int *p, i, j = 1;
    p = (int*) malloc(10 * sizeof(int));

    if(p == NULL){
        printf("ERRO!");
        exit(1);
    }

    for(i = 0; i < 10; i++){
        p[i] = j + i;
        j++;
    }

    for(i = 0; i < 10; i++){
        printf("%d ", p[i]);
    }

    free(p);


return 0;
}
