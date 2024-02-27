#include <stdio.h>
#include <stdlib.h>

void Ordena_selectionSort(int *vet, int n);

int main(){
    int vet[10] = {120, 150, 110, 130, 100, 160, 140, 170, 180, 190};
    int n = 10;

    printf("Vetor desordenado: 120 150 110 130 100 160 140 170 190 180 190\n");

    printf("Ordenado por metodo selectionSort: \n");
    Ordena_selectionSort(vet, n);
    printf("Vetor ja ordenado:\n");
    for(int i = 0; i < n; i++){
        printf("\n%d", vet[i]);
    }

return 0;
}

void Ordena_selectionSort(int *vet, int n){
    int i, j, menor, troca;
    for(i = 0; i < n - 1; i++){
        menor = i;
        for(j = i + 1; j < n; j++){
            if(vet[j] < vet[menor]){
            menor = j;
            }
        }

        if(i != menor){
            troca = vet[i];
            vet[i] = vet[menor];
            vet[menor] = troca;
        }
    }
}
