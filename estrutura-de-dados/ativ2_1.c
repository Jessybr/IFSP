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
    aqv1 = fopen("arqbin.txt", "rb");

    if (aqv1 == NULL) {
        printf("Erro na abertura!\n");
        system("pause");
        exit(1);
    }

    FUNC vet[5];

    for (int i = 0; i < 5; i++) {
        fread(&vet[i], sizeof(FUNC), 1, aqv1);
        printf("\n\nFuncionário %d\n", i + 1);
        printf("Idade: %d\n", vet[i].idade);
    }

    fclose(aqv1);

    printf("\n\n");
    system("pause");
    return 0;
}
