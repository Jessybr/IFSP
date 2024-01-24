#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <string.h>

struct funcionario{
    int id;
    char nome[31];
    int idade;
    float salario;
};

int main(){
    setlocale(LC_ALL, "portuguese");
    struct funcionario f[5];
    int i;

    for(i = 0; i < 5; i++){
        printf("Funcionário %d:\n", i + 1);

        printf("ID ........: ");
        scanf(" %d", &f[i].id);

        fflush(stdin);

        printf("Nome ......: ");
        fgets(f[i].nome, 30, stdin);
        f[i].nome[strlen(f[i].nome) - 1] = '\0';

        printf("Idade .....: ");
        scanf(" %d", &f[i].idade);

        printf("Salário ...: ");
        scanf(" %f", &f[i].salario);

        printf("\n\n");
        system("cls");
    }

    for(i = 0; i < 5; i++){
        printf("Dados funcionário %d:\n", i + 1);
        printf("ID ........: %d\n", f[i].id);
        printf("Nome ......: %s\n", f[i].nome);
        printf("Idade .....: %d\n", f[i].idade);
        printf("Salário ...: %.2f\n", f[i].salario);

        printf("\n\n");
    }

    printf("\n\n\n");
    system("pause");
    return  0;
}
