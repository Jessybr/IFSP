#include <stdio.h>
#include <stdlib.h>

void Ordena_insertionSort(int *vet, int n);

int main(){
    int vet[10] = {120, 150, 110, 130, 100, 160, 140, 170, 180, 190};
    int n = 10;

    printf("Vetor desordenado: 120 150 110 130 100 160 140 170 190 180 190\n");

    printf("Ordenado por metodo insertionSort: \n");
    Ordena_insertionSort(vet, n);
    printf("Vetor ja ordenado:\n");
    for(int i = 0; i < n; i++){
        printf("\n%d", vet[i]);
    }

return 0;
}

void Ordena_insertionSort(int *vet, int n){
    int i, j, aux;
    for(i = 1; i < n; i++){
        aux = vet[i];
        for(j = i; (j > 0) && (aux < vet[j-1]); j--){
            vet[j] = vet[j-1];
        }
        vet[j] = aux;
    }
}
