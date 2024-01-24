#include <stdio.h>
#include <stdlib.h>
#include <locale.h>


int main()
{
    setlocale(LC_ALL, "portuguese");
    float *vet;
    int n;

    printf("Digite o tamanho do vetor: ");
    scanf("%d", &n);

    vet = (float*) calloc(n, sizeof(float));
    if(vet == NULL){
    printf("erro");
    exit(1);
    }
    printf("\n\nDigite os valores do vetor: ");
    for(int i = 0; i < n; i++){
        printf("\nValor %d: ", i + 1);
        scanf("%d", &vet[i]);
    }

    return 0;
}
