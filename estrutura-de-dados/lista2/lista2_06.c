#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int fun_Recursiva(int vet[], int n);

int main()
{
    setlocale(LC_ALL, "portuguese");
    int vet[4], resul = 0;
    printf("Digite os números do vetor: ");
    for (int i = 0; i < 4; i++) {
        scanf("%d", &vet[i]);
    }
    resul = fun_Recursiva(vet, 4);
    printf("\n\nSoma dos números: %d \n", resul);

    return 0;
}

int fun_Recursiva(int vet[], int n) {
    if (n == 0) {
        return 0;
    }

    return vet[n - 1] + fun_Recursiva(vet, n - 1);
}
