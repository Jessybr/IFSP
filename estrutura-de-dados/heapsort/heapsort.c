#include <stdio.h>
#include <stdlib.h>

void ordenaArray(int array[], int tamanho);
void estruturarEmHeapMaximo(int array[], int tamanho, int i);
void trocarValores(int *a, int *b);
void imprimirArvoreHeap(int *array);
void imprimirArray(int *array, int tamanho);
void imprimirLinha();

int main(){
    int array[] = {5, 9, 3, 1, 7, 2, 8};

    printf("Array original: \n");
    imprimirArray(array, 7);
    imprimirLinha();
    ordenaArray(array, 7);
    printf("Array ordenado pelo HeapSort: \n");
    imprimirArray(array, 7);

    system("pause");
    return 0;
}

void ordenaArray(int array[], int tamanho){
    for (int i = tamanho / 2 - 1; i >= 0; i--){
        estruturarEmHeapMaximo(array, tamanho, i);
    }

    for (int i = tamanho - 1; i > 0; i--){
        trocarValores(&array[0], &array[i]);
        estruturarEmHeapMaximo(array, i, 0);
    }
}

void estruturarEmHeapMaximo(int array[], int tamanho, int i){
    int filhoMaior = i;
    int filhoEsquerdo = 2 * i + 1;
    int filhoDireito = 2 * i + 2;

    if (filhoEsquerdo < tamanho && array[filhoEsquerdo] > array[filhoMaior])
        filhoMaior = filhoEsquerdo;

    if (filhoDireito < tamanho && array[filhoDireito] > array[filhoMaior])
        filhoMaior = filhoDireito;

    imprimirArvoreHeap(array);

    if (filhoMaior != i) {
        trocarValores(&array[i], &array[filhoMaior]);
        imprimirArvoreHeap(array);
        estruturarEmHeapMaximo(array, tamanho, filhoMaior);
    }
}

void trocarValores(int *a, int *b){
    int aux = *a;
    *a = *b;
    *b = aux;
}

void imprimirArvoreHeap(int *array){
    printf("\t\t%2d\n",array[0]);
    printf("\t%2d\t\t%2d\n",array[1],array[2]);
    printf("%2d\t%2d\t\t%2d\t%2d\n",array[3],array[4],array[5],array[6]);
    imprimirLinha();
}

void imprimirArray(int *array, int tamanho){
    int i;

    for(i = 0; i < tamanho; i++){
        printf("%2d ",array[i]);
        printf("\n");
    }
}

void imprimirLinha(){
    printf("----------------------------------------------\n");
}
