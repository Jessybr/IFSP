#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <string.h>

struct cadastro{
    char nome[30];
    int idade;
    char endereco[40];
};

struct cadastro *dados(int n) {
    struct cadastro *pessoa = (struct cadastro *) malloc(n * sizeof(struct cadastro));
    if (pessoa == NULL) {
        printf("Erro na alocação de memória.\n");
        exit(1);
    }
    for(int i = 0; i < n; i++){
        getchar();
        printf("\n\nPessoa %d", i + 1);
        printf("\nNome: ");
        fgets(pessoa[i].nome, 29, stdin);
        printf("\nIdade: ");
        scanf("%d", &pessoa[i].idade);
        getchar();
        printf("\nEndereço: ");
        fgets(pessoa[i].endereco, 39, stdin);
    }

    return pessoa;
}

void imprimirDados(struct cadastro *pessoa, int n){
    for(int i = 0; i < n; i++){
        printf("\n\nDado %d:\n", i + 1);
        printf("Nome: %s\n", pessoa[i].nome);
        printf("Idade: %d\n", pessoa[i].idade);
        printf("Endereço: %s\n\n", pessoa[i].endereco);
    }
}

int main() {
    setlocale(LC_ALL, "portuguese");
    int n;

    printf("Digite o número de pessoas: ");
    scanf("%d", &n);

    struct cadastro *pessoas = dados(n);
    imprimirDados(pessoas, n);

    free(pessoas);

    return 0;
}
