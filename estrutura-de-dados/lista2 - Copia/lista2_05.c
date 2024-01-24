#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int fun_Recursiva(int vet[], int n);

int main()
{
    setlocale(LC_ALL, "portuguese");
    int vet[4], resul;
    printf("Digite os números do vetor: ");
    for(int i = 0; i < 4; i++){
        scanf("%d", &vet[i]);
    }
    resul = fun_Recursiva(vet, 4);
    printf("\n\nMenor Número: %d ", resul);

    return 0;
}

int fun_Recursiva(int vet[], int n) {
    if (n == 1) {
        return vet[0];
    }

    int menorNum = fun_Recursiva(vet, n - 1);

    if (vet[n - 1] < menorNum) {
        return vet[n - 1];
    } else {
        return menorNum;
    }

}
