#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main(){
    setlocale(LC_ALL, "portuguese");
    int m, n, i, j, **matriz1, **matriz2;

    printf("Número de linhas: ");
    scanf("%d", &m);

    printf("Número de colunas: ");
    scanf("%d", &n);

    matriz1 = (int**) malloc(m * sizeof(int));
    for(i = 0; i < n; i++){
        matriz1[i] = (int*) malloc(n * sizeof(int));
    }

    matriz2 = (int**) malloc(m * sizeof(int));
    for(i = 0; i < n; i++){
        matriz2[i] = (int*) malloc(n * sizeof(int));
    }

    if(matriz1 == NULL || matriz2 == NULL){
        printf("ERRO!");
        exit(1);
    }

    printf("Digite os números da primeira matriz.\n");
    for(i = 0; i < m; i++){
        for(j = 0; j < n; j++){
            printf("\nPosição \"%d\"\"%d\"\n", i, j);
            scanf("%d", &matriz1[i][j]);
        }
    }

    printf("\n\n");
    printf("Digite os números da segunda matriz.\n");
    for(i = 0; i < m; i++){
        for(j = 0; j < n; j++){
            printf("\nPosição \"%d\"\"%d\"\n", i, j);
            scanf("%d", &matriz2[i][j]);
        }
    }

    int **soma = (int**) malloc(m * sizeof(int));
    for(i = 0; i < n; i++){
        soma[i] = (int*) malloc(n * sizeof(int));
    }

    if(soma == NULL){
        printf("ERRO!");
        exit(1);
    }

    for(i = 0; i < m; i++){
        for(j = 0; j < n; j++){
            soma[i][j] = matriz1[i][j] + matriz2[i][j];
        }
    }

    printf("\n\n");
    printf("Soma das matrizes.\n");
    for(i = 0; i < m; i++){
        for(j = 0; j < n; j++){
            printf("|%d| ", soma[i][j]);
        }
        printf("\n");
    }

    for(i = 0; i < m; i++){
		free(matriz1[i]);
		free(matriz2[i]);
		free(soma[i]);
	}
    free(matriz1);
    free(matriz2);
    free(soma);


return 0;
}
