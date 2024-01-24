#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main(){
    setlocale(LC_ALL, "portuguese");
    int *alu, qtd, i, media = 0;

    printf("Quantidade de alunos: ");
    scanf("%d", &qtd);

    alu = (int*) malloc(qtd * sizeof(int));

    if(alu == NULL){
        printf("ERRO!");
        exit(1);
    }

    for(i = 0; i < qtd; i++){
        printf("\nAluno %d.\n", i + 1);
        printf("Nota: ");
        scanf(" %d", &alu[i]);
    }

    fflush(stdin);

    for(i = 0; i < qtd; i++){
        printf("\nAluno %d.\n", i + 1);
        printf("Nota: %d", alu[i]);
        media = media + alu[i];
    }

    media = media / qtd;

    printf("\nMédia aritmética: %d\n", media);

    free(alu);


return 0;
}
