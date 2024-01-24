//Arquivo principal - main()
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <locale.h>
#include "listaSequencial.h"
int main()
{
    setlocale(LC_ALL, "portuguese");
    int x, mat = 101, posicao = 1; //será usado para codigo de erro
    struct aluno al, al2, al3, dados_aluno, alu;
    Lista *li;
    li = cria_lista();

    x = tamanho_lista(li);
    printf("\nTamanho da lista é: %d", x);

    for(int i = 0; i < 10; i++){

    }

    x = lista_cheia(li);
    if(x){
        printf("\nLista cheia!");
    }else{
        printf("\nLista nao esta cheia!");
    }

    x = lista_vazia(li);
    if(x){
        printf("\nLista esta vazia!");
    }else{
        printf("\nLista nao esta vazia!");
    }

    x = insere_lista_final(li, al2);
    if(x){
        printf("\nAluno inserido com sucesso!");
    }else{
        printf("\nErro aluno nao inserido!");
    }

    al = insere_aluno();
    x = insere_lista_inicio(li, al);
    if(x){
        printf("\nAluno inserido com sucesso!");
    }else{
        printf("\nErro aluno nao inserido!");
    }

    al3 = insere_aluno();
    x = insere_lista_ordenada(li, al3);
    if(x){
        printf("\nAluno inserido com sucesso!");
    }else{
        printf("\nErro aluno nao inserido!");
    }

    x = remove_lista_final(li);
    if(x){
        printf("\nAluno removido no final com sucesso!");
    }else{
        printf("\nErro aluno não removido!");
    }

    x = remove_lista_inicio(li);
    if(x){
        printf("\nAluno removido no inicio com sucesso!");
    }else{
        printf("\nErro aluno não removido!");
    }

    x = remove_lista(li, mat);
    if(x){
        printf("\nAluno removido na posição especifica com sucesso!");
    }else{
        printf("\nErro aluno não removido na posição especifica!");
    }

    x = consulta_lista_pos(li, posicao, &dados_aluno);
    if(x){
        printf("\nConsulta por posição realizada com sucesso!");
        printf("\nMatricula: %d", dados_aluno.matricula);
        printf("\nNota 1: %d", dados_aluno.n1);
        printf("\nNota 2: %d", dados_aluno.n2);
        printf("\nNota 3: %d", dados_aluno.n3);
    }else{
        printf("\nNão foi possível consultar na posição especifica!");
    }

    x = consulta_lista_mat(li, mat, &dados_aluno);
    if(x){
        printf("\nConsulta por posicaorealizada com sucesso!");
        printf("\nMatricula: %d", dados_aluno.matricula);
        printf("\nNota 1: %d", dados_aluno.n1);
        printf("\nNota 2: %d", dados_aluno.n2);
        printf("\nNota 3: %d", dados_aluno.n3);
    }else{
        printf("\nNão foi possível consultar na posição especifica!");
    }


    libera_lista(li);
    return 0;
}
