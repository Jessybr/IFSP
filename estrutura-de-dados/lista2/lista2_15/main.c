#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "my_lib.h"
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "portuguese");
    int num = 0;
    char loop, op, opc;;
    struct Lista_contatos *p = NULL;
    do{
        char nome[31], email[51];
        int telefone;
        if(num > 0){
            getchar();
        }
        printf("\nNome: ");
        fgets(nome, 30, stdin);
        printf("\nTelefone: ");
        scanf("%d", &telefone);
        getchar();
        printf("\nEmail: ");
        fgets(email, 50, stdin);

        p = criar_Cont(nome, telefone, email);

        printf("\n\nContato inserido.");
        printf("\nNome: %s", nome);
        printf("Telefone: %d", telefone);
        printf("\nEmail: %s", email);

        printf("Deseja apagar um contato? (s (sim) - n (não)) ");
        scanf("%c", &opc);
        if(opc == 's' || opc == 'S'){
            getchar();
            printf("Digite o nome do contato que deseja remover: ");
            fgets(nome, 30, stdin);
            remove_Cont(p, nome);
        }

        printf("Deseja encotrar um contato? (s (sim) - n (não)) ");
        scanf(" %c", &op);
        if(op == 's' || op == 'S'){
            getchar();
            printf("Digite o nome do contato que deseja encontrar: ");
            fgets(nome, 30, stdin);
            encontra_Cont(p, nome);
        }

        num++;
        printf("Deseja adicionar mais um contato? (s (sim) - n (não)) ");
        scanf(" %c", &loop);
    }while(loop == 'S' || loop == 's');

    libera(p);

    return 0;
}
