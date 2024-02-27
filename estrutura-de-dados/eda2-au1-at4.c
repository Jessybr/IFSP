#include <stdio.h>
#include <stdlib.h>

void Ordena_bubbleSort(int *vet, int n);

int main(){
    int vet[10] = {120, 150, 110, 130, 100, 160, 140, 170, 180, 190};
    int n = 10;

    printf("Vetor desordenado: 120 150 110 130 100 160 140 170 190 180 190\n");

     printf("Ordenado por metodo bubbleSort: \n");
    Ordena_bubbleSort(vet, n);
        for(int i = 0; i < n; i++){
        printf("\n%d", vet[i]);
    }

return 0;
}

void Ordena_bubbleSort(int *vet, int n){
    int i, continua, aux, fim = n;
    int ascendente = 1;
    do{
        continua = 0;
        if(ascendente){
            for(i = 0; i < fim - 1; i++){
                if(vet[i] > vet[i+1]){
                    aux = vet[i];
                    vet[i] = vet[i+1];
                    vet[i+1] = aux;
                    continua = i;
                }
            }
        }else {
            for(i = fim - 1; i > 0; i--){
                if(vet[i] < vet[i-1]){
                    aux = vet[i];
                    vet[i] = vet[i-1];
                    vet[i-1] = aux;
                    continua = i;
                }
            }
        }
        fim--;
        ascendente = !ascendente;
    }while(continua != 0);
}
