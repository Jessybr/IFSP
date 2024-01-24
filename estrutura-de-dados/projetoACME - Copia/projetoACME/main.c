// Caroliny Rocha Sampaio

#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include "projetoFinal.h"

int main()
{
    Lista *li; // ponteiro para ponteiro que está no arquivo listaLigada.h
    li = criaLista();
    /*const char* nomeArquivo = "arquivoteste.txt";

    li = lerArquivoEInserirLista(nomeArquivo, li);*/

    FILE *f;
    f = fopen("arquivoteste.txt", "w");

    if(f == NULL){ // Garante que o arquivo foi aberto corretamente
        printf("\t\tErro ao abrir o arquivo!\n\n");
        system("pause");
        exit(1);
    }

    //int x = 0;
    printf("\t\tBem-vindo(a) a empresa ACME S.A\n\n");

    // Variáveis a seguir criadas para a busca:
    int codigo = 0;
    //char nome[30];

    menu(codigo, li);
    gravaArquivo(li, f);

    fclose(f);
    return 0;
}
