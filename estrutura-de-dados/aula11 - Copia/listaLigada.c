#include <stdio.h>
#include <stdlib.h>
#include "listaLigada.h"

struct elemento{
    ALUNO dados;
    struct elemento *prox;
};
typedef struct elemento ELEM;

Lista *criaLista(){
    Lista *li;
    li = (Lista*) malloc(sizeof(Lista));
    if(li != NULL){
        *li = NULL;
    }
    return li;
}

ALUNO insere_aluno(){
    ALUNO novo_aluno;


    printf("\n\nDigite a matrícula do aluno: ");
    scanf("%d", &novo_aluno.matricula);
    printf("Digite a nota 1: ");
    scanf("%f", &novo_aluno.n1);
    printf("Digite a nota 2: ");
    scanf("%f", &novo_aluno.n2);
    printf("Digite a nota 3: ");
    scanf("%f", &novo_aluno.n3);

    return novo_aluno;
}

void apagaLista(Lista *li){
    if(li != NULL){
        ELEM *no;
        while((*li) != NULL){
            no = *li;
            *li = (*li)->prox;
            free(no);
        }
        free(li);
    }
}

int tamLista(Lista *li){
    if(li == NULL){
        return 0;
    }
    //acum retorna a quantidade de elementos no que existem na lista
    int acum = 0;
    //nó recebe 1º elemento da lista
    ELEM *no = *li;
    //Enquanto nó não for NULL, incrementa o acumulador e se desloca para o prómimo nó
    while(no != NULL){
        acum++;
        no = no->prox;
    }
    return acum;
}

int listaCheia(Lista *li){
    return 0;
}

int listaVazia(Lista *li){
    if(li == NULL){
        return 1;
    }
    if(*li == NULL){
        return 1;
    }
    return 0;
}

int insere_inicio_lista(Lista *li, ALUNO al){
    if(li == NULL){
        return 0;
    }
    ELEM *no = (ELEM*) malloc(sizeof(ELEM));
    if(no == NULL){
        return 0;
    }
    no->dados = al; //resolve inserção no início da lista e um uma lista vazia
    no->prox = (*li);
    *li = no;
    return 1;
}

int insere_final_lista(Lista *li, ALUNO al){
    if(li == NULL){
        return 0;
    }
    ELEM *no = (ELEM*) malloc(sizeof(ELEM));
    if(no == NULL){
        return 0;
    }
    no->dados = al;
    no->prox = NULL;
    if((*li) == NULL){ //lista vazia, insere no inicio
        *li = no;
    }else{
        ELEM *aux = *li;
        while(aux->prox != NULL){ //Percorre a lista com um nó auxiliar para presavar a cabeça da lista
            aux = aux->prox;
        }
        aux->prox = no;
    }
    return 0;
}

int insere_lista_ordenada(Lista *li, ALUNO al){
    if(li == NULL){
        return 0;
    }
    ELEM *no = (ELEM*) malloc(sizeof(ELEM));
    if(no == NULL){
        return 0;
    }
    no->dados = al;
    if(listaVazia(li)){ //insere no inicio
        no->prox = (*li);
        *li = no;
        return 1;
    }else{
        ELEM *ant, *atual = *li;
        while(atual != NULL && atual->dados.matricula < al.matricula){
            ant = atual; //posiciona entre os nós
            atual = atual->prox;
        }
        if(atual == *li){ //insere se estiver na primeira posição
            no->prox = (*li);
            *li = no;
        }else{ //insere em qualquer outra posição
            no->prox = ant->prox;
            ant->prox = no;
        }
        return 1;
    }
}

int remove_inicio_lista(Lista *li){
    if(li == NULL){ //verifca se a lista existe
        return 0;
    }
    if(*li == NULL){ //verifica se a lista está vazia
        return 0;
    }
    ELEM *no = *li;
    *li = no->prox;
    free(no);
    return 1;
}

int remove_final_lista(Lista *li){
    if(li == NULL){
        return 0;
    }
    if(*li == NULL){ //lista vazia
        return 0;
    }
    ELEM *ant, *no = *li;
    while(no->prox != NULL){
        ant = no;
        no = no->prox;
    }
    if(no == (*li)){ //remove o primeiro?
        *li = no->prox; //o proximo é NULL
    }else{
        ant->prox = no->prox;
    }
    free(no);
    return 1;
}

int remove_lista(Lista *li, int mat){
    if(li == NULL){
        return 0;
    }
    ELEM *ant, *no = *li;
    while(no != NULL && no->dados.matricula != mat){
        ant = no;
        no = no->prox;
    }
    //sai do while por 2 motivo: lista chegou ao fim/vazia
    //ou encontrou elemento a remover
    if(no == NULL){
        return 0;
    }
    //se no parado na 1º posição, remover o primeiro?
    if(no == *li){
        *li = no->prox;
    }else{
        //amt vai apontar para elemento seguinte ao nó
        ant->prox = no->prox;
    }
    free(no);
    return 1;
}

int consulta_lista_pos(Lista *li, int posicao, ALUNO *al){
    if(li == NULL || posicao <= 0){
        return 0;
    }
    ELEM *no = *li;
    int i = 1;
    //percorre a lista com i, a proura do elemento
    while(no != NULL && i < posicao){
        no = no->prox;
        i++;
    }
    //trata=se lista vazia, ou não encontrou elemento
    if(no == NULL){
        return 0;
    }else{
        //se nó != de NULL, então encontrou o elemento
        *al = no->dados;
        return 1;
    }
}

int consulta_lista_mat(Lista *li, int mat, ALUNO *al){
    if(li == NULL){
        return 0;
    }
    ELEM *no = *li;
    while(no != NULL && no->dados.matricula != mat){
        no = no->prox;
    }
    if(no == NULL){
        return 0;
    }else{
        *al = no->dados;
        return 1;
    }
}
