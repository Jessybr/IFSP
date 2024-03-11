#include <stdio.h>
#include <stdlib.h>
#include "hashTable.h"
#include "hashBibli.h"

int main()
{
    struct aluno dados;
    int i, matricula, continua;
    int tam = 1024, quant = 1;
    Hash *tabScol = criaHash(tam);
    Hash *tabCcol = criaHash(tam);

    while(1){
        continua = menuDefine();
        switch (continua){
        case 0:
            printf("Encerrando programa..... \n\n");
            liberaHash(tabScol);
            liberaHash(tabScol);
            return 0;
        case 1:
            while(continua){
                system("cls");
                //Sem tratamento para colisão
                //int resp = menuSemColisao();
                if(menuSemColisao()){
                    printf("Inserindo sem tratamento de colisao\n\n");
                    coletaDados(&dados);
                    insereHash_semColisao(tabScol, dados);
                }else{
                    printf("Informe a matricula do aluno: ");
                    printf("Buscando aluno... \n\n");
                    scanf("%d", &matricula);
                    fflush(stdin);
                    if(buscaHash_semColisao(tabScol, matricula, &dados)){
                        imprime(dados);
                    }else{
                        printf("Elemento nao encontrado!\n\n");
                    }
                }
                fflush(stdin);
                printf("\n\nDeseja continuar? ");
                printf("(1) - sim \n");
                printf("(0) - nao \n");
                scanf("%d", &continua);
                system("cls");
            }
        break;
        case 2:
            while(continua){
                system("cls");
                if(menuComColisao()){
                    //Com tratamento para colisão
                    coletaDados(&dados);
                    printf("Inserindo aluno... \n\n");
                    insereHash_enderecoAberto(tabCcol, dados);
                }else{
                    printf("Informe a matricula do aluno: ");
                    scanf("%d", &matricula);
                    printf("Buscando aluno... \n\n");
                    fflush(stdin);
                    if(buscaHash_enderecoAberto(tabCcol, matricula, &dados)){
                        imprime(dados);
                    }else{
                        printf("Elemento nao encontrado!\n\n");
                    }
                }
                printf("\n\nDeseja continuar? ");
                printf("(1) - sim \n");
                printf("(0) - nao \n");
                scanf("%d", &continua);
                system("cls");
            }
        break;
        default:
            printf("Opcao invalida!!\n\n");
        break;
        }
    }

    liberaHash(tabScol);
    liberaHash(tabCcol);
    return 0;
}
