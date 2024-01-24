#include <stdlib.h>
#include <stdio.h>
#include <locale.h>
#include <string.h>


int main(){
    setlocale(LC_ALL, "portuguese");

    char nome[50], nome_meio[15], nome_final[15], str[3] = " ";
    printf("Insira seu nome:");
    gets(nome);
    printf("Insira seu nome do meio:");
    gets(nome_meio);
    printf("Insira seu último nome:");
    gets(nome_final);

    strcat(nome, str);
    strcat(nome, nome_meio);
    strcat(nome, str);
    strcat(nome, nome_final);

    printf("\nSeu nome completo é: %s", nome);


    printf("\n\n");
system("pause");
return 0;
}
