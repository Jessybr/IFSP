#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <string.h>

typedef struct funcionario{
    int id;
    char nome[31];
    int idade;
    float salario;
}FUNC;

FUNC coletarDados();
void exibir(FUNC dados[], int tam);
void nvSalario(FUNC *dado);
void rel_salario_corrigido();

int main(){
    setlocale(LC_ALL, "portuguese");
    FUNC f[5];
    int i;

    for(i = 0; i < 5; i++){
        printf("Funcionário %d:\n", i + 1);
        f[i] = coletarDados();
    }

    exibir(f, 5);

    for(i = 0; i < 5; i++){
        nvSalario(&f[i]);
    }

    rel_salario_corrigido(f, 5);

    printf("\n\n\n");
    system("pause");
    return  0;
}

FUNC coletarDados(){
    FUNC dados;

    printf("ID ........: ");
    scanf(" %d", &dados.id);

    fflush(stdin);

    printf("Nome ......: ");
    fgets(dados.nome, 30, stdin);
    dados.nome[strlen(dados.nome) - 1] = '\0';

    printf("Idade .....: ");
    scanf(" %d", &dados.idade);

    printf("Salário ...: ");
    scanf(" %f", &dados.salario);

    printf("\n\n");
    system("cls");

    return dados;
}

void exibir(FUNC dados[], int tam){
    for(int i = 0; i < tam; i++){
        printf("Dados funcionário %d:\n", i + 1);
        printf("ID ........: %d\n", dados[i].id);
        printf("Nome ......: %s\n", dados[i].nome);
        printf("Idade .....: %d\n", dados[i].idade);
        printf("Salário ...: R$%.2f\n", dados[i].salario);

        printf("\n\n");
    }
}

void nvSalario(FUNC *dado){
    dado->salario = dado->salario * 1.10;
}

void rel_salario_corrigido(FUNC dado[], int tam){
    for(int i = 0; i < tam; i++){
        printf("Reajuste de salário - Funcionario %d\n", i + 1);
        printf("Nome ......: %s\n", dado[i].nome);
        printf("Salário ...: R$%.2f\n", dado[i].salario);

        printf("\n\n");
    }
}
