#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "my_lib.h"
#include <locale.h>

struct Lista_contatos {
    char nome[31];
    int telefone;
    char email[51];
};

struct Lista_contatos *criar_Cont(char *nome, int telefone, char *email) {
    struct Lista_contatos *pes = (struct Lista_contatos*)malloc(10 * sizeof(struct Lista_contatos));
    if (pes != NULL) {
        strcpy(pes->nome, nome);
        strcpy(pes->email, email);
        pes->telefone = telefone;
    }
    return pes;
}


void encontra_Cont(struct Lista_contatos *pes, char *nome) {
    setlocale(LC_ALL, "portuguese");
    int enc = 0;
    for (int i = 0; i < 10; i++) {
        if (strcmp(nome, pes[i].nome) == 0) {
            printf("\n\nContato encontrado.");
            printf("\nNome: %s", pes[i].nome);
            printf("\nTelefone: %d", pes[i].telefone);
            printf("\nEmail: %s", pes[i].email);
            enc = 1;
            break;
        }
    }
    if (enc == 0) {
        printf("\nNome na lista de contatos não encontrado!\n\n");
    }
}

void remove_Cont(struct Lista_contatos *pes, char *nome) {
    setlocale(LC_ALL, "portuguese");
    int enc = 0;
    for (int i = 0; i < 10; i++) {
        if (strcmp(nome, pes[i].nome) == 0 && pes[i].nome[0] != '\0') {
            printf("\nContato apagado!\n");
            pes[i].nome[0] = '\0';
            enc = 1;
            break;
        }
    }
    if (enc == 0) {
        printf("\nContato não encontrado!\n");
    }
}

void libera(struct Lista_contatos *pes){
    free(pes);
}
