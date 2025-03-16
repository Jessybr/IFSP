#include <stdio.h>
#include <stdlib.h>

// Função para imprimir array
void printArr(int *arr  , int N){
    int i;
    for(i = 0; i < N; i++)
        printf("%2d ",arr[i]);
    printf("\n");
}

// Função para imprimir uma linha
void printfLinha(){
    printf("----------------------------------------------\n");
}

// Função para imprimir a árvore Heap
void printfHeap(int *arr){
    printf("\t\t%2d\n",arr[0]);
    printf("\t%2d\t\t%2d\n",arr[1],arr[2]);
    printf("%2d\t%2d\t\t%2d\t%2d\n",arr[3],arr[4],arr[5],arr[6]);
    printfLinha();
}

// Função para trocar valores de variáveis
void trocar(int *a, int *b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}

// Função para heapify um sub-árvore com raiz i
void heapify(int arr[], int n, int i) {
    int iMaior = i;
    int iEsq = 2 * i + 1;
    int iDir = 2 * i + 2;

    if (iEsq < n && arr[iEsq] > arr[iMaior])
        iMaior = iEsq;

    if (iDir < n && arr[iDir] > arr[iMaior])
        iMaior = iDir;

    printfHeap(arr);
    if (iMaior != i) {
        trocar(&arr[i], &arr[iMaior]);
        printfHeap(arr);
        heapify(arr, n, iMaior);
    }
}

// Função para ordenar um array usando HeapSort
void heapSort(int arr[], int n) {
    // Max heapify inicial
    for (int i = n / 2 - 1; i >= 0; i--) {
        heapify(arr, n, i);
    }

    // Extrair elementos um por um do heap
    for (int i = n - 1; i > 0; i--) {
        trocar(&arr[0], &arr[i]);
        heapify(arr, i, 0);
    }
}

int main(){
    // Array de teste para cobrir 100% do código HeapSort
    int arr[] = {5, 9, 3, 1, 7, 2, 8}; // Array desordenado

    printf("Array original: \n");
    printArr(arr, 7);
    printfLinha();

    heapSort(arr, 7);

    printf("Array ordenado pelo HeapSort: \n");
    printArr(arr, 7);

    system("pause");
    return 0;
}
