#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int* vetores(int* vetA, int n1, int* vetB, int n2);

int main(){
    setlocale(LC_ALL,"portuguese");
    int n1, n2;
    printf("Digite o tamanho do primeiro e do segundo vetor: ");
    scanf("%d %d", &n1, &n2);
    int* veta = (int*) malloc(n1 * sizeof(int));
    int* vetb = (int*) malloc(n2 * sizeof(int));

    printf("\n\nVetor A");
    for(int i = 0; i < n1; i++){
        printf("\nÍndice %d: ", i + 1);
        scanf("%d", &veta[i]);
    }
    printf("\n\nVetor B");
    for(int i = 0; i < n2; i++){
        printf("\nÍndice %d: ", i + 1);
        scanf("%d", &vetb[i]);
    }

    int* vetc = vetores(veta, n1, vetb, n2);

    printf("\n\nVetor C");
    for(int i = 0; i < n2; i++){
        printf("\nÍndice %d: %d", i + 1, vetc[i]);
    }
    printf("\n\n");

    free(veta);
    free(vetb);
    free(vetc);

    system("pause");
    return 0;
}

int* vetores(int* vetA, int n1, int* vetB, int n2){
    int* vetC = (int*)malloc((n1 + n2) * sizeof(int));
    int soma = n1 + n2;
    for(int i = 0; i < soma; i++){
        vetC[i] = vetA[i] + vetB[i];
    }
    return vetC;
}
