#include <stdio.h>
#include <stdlib.h>
#include "arvoreAVL.h"

int main()
{

    int x, valor;
    arvAVL *raiz;

    confirmaInsercao(insere_arvAVL(raiz, 160));
    confirmaInsercao(insere_arvAVL(raiz, 150));
    confirmaInsercao(insere_arvAVL(raiz, 100));
    confirmaInsercao(insere_arvAVL(raiz, 110));
    confirmaInsercao(insere_arvAVL(raiz, 130));
    confirmaInsercao(insere_arvAVL(raiz, 140));
    confirmaInsercao(insere_arvAVL(raiz, 120));
    confirmaInsercao(insere_arvAVL(raiz, 170));
    confirmaInsercao(insere_arvAVL(raiz, 180));
    confirmaInsercao(insere_arvAVL(raiz, 190));
    confirmaInsercao(insere_arvAVL(raiz, 200));

    printf("Digite um número para deletar: \n");
    scanf("%d", &valor);
    x = remove_arvAVL(raiz, valor);
    if(x){
        printf("Elemento removido com sucesso!");
    }else{
        printf("Erro, não foi possível remover o elemento");
    }

    return 0;
}
