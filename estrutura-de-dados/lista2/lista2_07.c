#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

struct Alunos {
    int matricula;
    char nome[30];
    int nt1;
    int nt2;
    int nt3;
};

struct Alunos coleta(int n);

int main() {
    setlocale(LC_ALL, "portuguese");
    int n;
    printf("Digite o número de alunos: ");
    scanf("%d", &n);
    struct Alunos resultado;
    resultado = coleta(n);

    printf("\nAluno com a maior média:\n");
    printf("Matrícula: %d\n", resultado.matricula);
    printf("Nome: %s", resultado.nome);
    printf("Nota 1: %d\n", resultado.nt1);
    printf("Nota 2: %d\n", resultado.nt2);
    printf("Nota 3: %d\n", resultado.nt3);

    return 0;
}

struct Alunos coleta(int n) {
    struct Alunos vet[n];
    int media[n], escolha = 0;

    for (int i = 0; i < n; i++) {
        printf("\n\nAluno %d:\n ", i + 1);
        printf("Matricula: ");
        scanf("%d", &vet[i].matricula);
        getchar();
        printf("Nome: ");
        fgets(vet[i].nome, 29, stdin);
        printf("Nota 1: ");
        scanf("%d", &vet[i].nt1);
        printf("Nota 2: ");
        scanf("%d", &vet[i].nt2);
        printf("Nota 3: ");
        scanf("%d", &vet[i].nt3);
    }

    for (int i = 0; i < n; i++) {
        media[i] = (vet[i].nt1 + vet[i].nt2 + vet[i].nt3) / 3;
    }

    int maiorMedia = media[0];
    int indice = 0;

    for (int i = 1; i < n; i++) {
        if (media[i] > maiorMedia) {
            maiorMedia = media[i];
            indice = i;
        }
    }

    return vet[indice];
}

