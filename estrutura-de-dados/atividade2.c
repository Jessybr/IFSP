#include <stdlib.h>
#include <stdio.h>
#include <locale.h>
#include <string.h>

typedef struct funcionario {
    int ID;
    char nome[30];
    int idade;
    float salario;
} FUNC;

int main() {
    setlocale(LC_ALL, "portuguese");
    FILE *aqv1;
    aqv1 = fopen("arqbin.txt", "wb");

    if (aqv1 == NULL) {
        printf("Erro na abertura!\n");
        system("pause");
        exit(1);
    }

    FUNC vet[5];

    for (int i = 0; i < 5; i++) {
        printf("\n\nFuncionário %d\n", i + 1);
        printf("Id: ");
        scanf("%d", &vet[i].ID);
        fflush(stdin);
        printf("\nNome: ");
        fgets(vet[i].nome, sizeof(vet[i].nome), stdin);
        printf("\nIdade: ");
        scanf(" %d", &vet[i].idade);
        fflush(stdin);
        printf("\nSalário: ");
        scanf(" %f", &vet[i].salario);
        fflush(stdin);
    }

    fwrite(vet, sizeof(FUNC), 5, aqv1);
    fclose(aqv1);

    printf("\n\n");
    system("pause");
    return 0;
}
