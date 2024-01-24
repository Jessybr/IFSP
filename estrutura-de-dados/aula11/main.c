#include <stdio.h>
#include <stdlib.h>
#include "listaLigada.h"
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "portuguese");
    Lista *li;
    li = criaLista();
    //código de errod
    int x = 0;
    // para as buscar
    int matricula = 130, posicao = 2;
    int matricula1;
    //para popular a lista a al para consulta
    ALUNO al1, al2, al3, al, alu;
    char opc;

    al1.matricula = 110;
    al1.n1 = 5.6;
    al1.n2 = 6.3;
    al1.n3 = 7.9;
    al2.matricula = 130;
    al2.n1 = 9.2;
    al2.n2 = 3.5;
    al2.n3 = 8.1;
    al3.matricula = 120;
    al3.n1 = 6.6;
    al3.n2 = 2.1;
    al3.n3 = 9.2;

    do{
        getchar();
        char esc;
        printf("\n\nEscolha uma opção abaixo: ");
        printf("\ni = incluir um aluno de forma ordenada");
        printf("\nb = buscar um aluno por matrícula");
        printf("\ne = excluir um aluno de forma ordenada\n");
        scanf("%c", &esc);

        switch(esc){
            case 'i':
                alu = insere_aluno();
                insere_lista_ordenada(li, alu);
                if(alu.matricula){
                    printf("\nAluno inserido com sucesso!");
                }else{
                    printf("\nNão foi possivel inserir o aluno.");
                }
                break;
            case 'b':
                printf("\nDigite a matrícula a ser encontrada:");
                scanf("%d", &matricula1);
                x = consulta_lista_mat(li, matricula1, &al);
                if(x){
                    printf("\n\nAluno %d: ", matricula1);
                    printf("\nMatrícula: %d", al.matricula);
                    printf("\nNota 1: %.2f", al.n1);
                    printf("\nNota 2: %.2f", al.n2);
                    printf("\nNota 3: %.2f", al.n3);
                }else{
                    printf("\nMatricula %d não encontrada.", matricula1);
                }
                break;
            case 'e':
                printf("\nDigite a matrícula a ser removida:");
                scanf("%d", &matricula1);
                x = remove_lista(li, matricula1);
                if(x){
                    printf("\nMatrícula removida com sucesso!");
                }else{
                    printf("\nNão foi possivel remover a matrícula.");
                }
                break;
            default:
                printf("\nERRO - Opção não encontrada.");
        }


        printf("\n\nDeseja continuar o programa? (s - sim \ n - não)");
        scanf(" %c", &opc);
    }while(opc == 's' || opc == 'S');

    x = tamLista(li);
    if(x){
        printf("\nO tamanho da lista e: %d", x);
    }else{
        printf("\nLista Vazia.");
    }

    if(listaCheia(li)){
        printf("\nLista esta cheia!");
    }else{
        printf("\nLista esta vazia.");
    }

    x = insere_inicio_lista(li, al1);
    if(x){
        printf("\nInserido no inicio com sucesso!");
    }else{
        printf("\nNão foi possivel inserir no inicio.");
    }

    if(listaVazia(li)){
        printf("\nLista esta vazia!");
    }else{
        printf("\nLista nao esta vazia.");
    }

    x = insere_final_lista(li, al2);
    if(x){
        printf("\nInserido no final com sucesso!");
    }else{
        printf("\nNão foi possivel inserir no final.");
    }

    x = insere_lista_ordenada(li, al2);
    if(x){
        printf("\nInserido ordenadamente com sucesso!");
    }else{
        printf("\nNão foi possivel inserir ordenadamente.");
    }

    x = tamLista(li);
    if(x){
        printf("\nO tamanho da lista e: %d", x);
    }else{
        printf("\nLista Vazia.");
    }

    x = consulta_lista_pos(li, posicao, &al);
    if(x){
        printf("\n\nConteudo na posicao %d: ", posicao);
        printf("\n%d", al.matricula);
        printf("\n%.2f", al.n1);
        printf("\n%.2f", al.n2);
        printf("\n%.2f", al.n3);
    }else{
        printf("\nElemento %d não encontrado.", posicao);
    }

    x = consulta_lista_mat(li, matricula, &al);
    if(x){
        printf("\n\nConteudo na posicao %d: ", matricula);
        printf("\n%d", al.matricula);
        printf("\n%.2f", al.n1);
        printf("\n%.2f", al.n2);
        printf("\n%.2f", al.n3);
    }else{
        printf("\nMatricula %d não encontrada.", matricula);
    }

    x = remove_inicio_lista(li);
    if(x){
        printf("\nRemovido do início com sucesso!");
    }else{
        printf("\nNão foi possivel remover do início.");
    }

    x = remove_final_lista(li);
    if(x){
        printf("\nRemovido do final com sucesso!");
    }else{
        printf("\nNão foi possivel remover do final.");
    }

    x = remove_lista(li, matricula);
    if(x){
        printf("\nMatrícula removida com sucesso!");
    }else{
        printf("\nNão foi possivel remover a matrícula.");
    }

    apagaLista(li);
    return 0;
}
