#include <stdio.h>
#include <stdlib.h>

int buscaLinear(int *vet, int n, int elem);
int buscaOrdenada(int *vet, int n, int elem);
int buscaBinaria(int *vet, int n, int elem);

int main(){
    int vet[11] = {120, 150, 110, 130, 100, 160, 140, 170, 180, 190};
    int vet2[11] = {100, 110, 120, 130, 140, 150, 160, 170, 180, 190};
    int n = 10, elem, resul3;

    printf("Vetor: 120 150 110 130 100 160 140 190 180 190");
    printf("\nElemento a ser procurado na busca linear: ");
    scanf("%d", &elem);

    buscaLinear(vet, n, elem);

    printf("\n\nVetor: 100 110 120 130 140 150 160 170 180 190");
    printf("\nElemento a ser procurado na busca ordenada: ");
    scanf("%d", &elem);

    buscaOrdenada(vet2, n, elem);

    printf("\n\nElemento a ser procurado na busca binaria: ");
    scanf("%d", &elem);

    resul3 = buscaBinaria(vet2, n, elem);
    printf("\nA posicao do elemento no vetor e: %d\n", resul3);


return 0;
}

int buscaLinear(int *vet, int n, int elem){
    int i;
    for(i = 0; i < n; i++){
        if(elem == vet[i]){
            printf("\nA posicao do elemento no vetor e: %d\n", i);
        }
    }
    return -1;
}

int buscaOrdenada(int *vet, int n, int elem){
    int i;
    for(i = 0; i < elem; i++){
        if(elem == vet[i]){
            printf("\nA posicao do elemento no vetor e: %d\n", i);
        } else {
            if(elem < vet[i]){
                return -1;
            }
        }
    }
    return -1;
}

int buscaBinaria(int *vet, int n, int elem){
    int i, inicio, meio, fim;
    inicio = 0;
    fim = n - 1;

    printf("\nInicio: %d   Fim: %d\n", inicio, fim);
    while(inicio <= fim){
        meio = (inicio + fim) / 2;
        if(elem < vet[meio]){
            fim = meio - 1;
        }else{
            if(elem > vet[meio]){
                inicio = meio + 1;
            }else{
                return meio;
            }
        }
        printf("\nInicio: %d   Fim: %d\n", inicio, fim);
    }
    return -1;
}
