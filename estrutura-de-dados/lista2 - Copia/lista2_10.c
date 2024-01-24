#include <stdio.h>
#include <stdlib.h>
#include <locale.h>


int main()
{
    setlocale(LC_ALL, "portuguese");
    int vet[5];

    printf("Digite os números do vetor: \n");
    for(int i = 0; i < 5; i++){
        scanf(" %d", vet + i);
        *(vet + i) = *(vet + i) * 2;
    }

    printf("\n\nVelores dobrados:\n");
    for(int i = 0; i < 5; i++){
        printf("Índice %d: %d\n", i + 1, *(vet + i));
    }

    return 0;
}
