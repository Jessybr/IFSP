#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main(){
setlocale(LC_ALL, "portuguese");
float *ptr;
float vet[10]={1.0, 1.1, 1.2, 1.3, 1.4, 1.5, 1.6, 1.7, 1.8, 1.9};
double vet_db[10]={2.0, 2.1, 2.2, 2.3, 2.4, 2.5, 2.6, 2.7, 2.8, 2.9};
double *ptr_db;
ptr = vet;
ptr_db = vet_db;

for(int i = 0; i <= 10; i++){
    printf("Posição: %p  --  Valor: %.2f\n", (ptr + i), *(ptr + i));
}

printf("\n\n");

for(int i = 0; i <= 10; i++){
    printf("posição: %p  --  Valor: %.2f\n", (ptr_db + i), *(ptr_db + i));
}

printf("\n\n");
system ("pause");
return 0;
}

