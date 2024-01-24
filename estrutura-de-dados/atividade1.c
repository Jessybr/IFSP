#include <stdlib.h>
#include <stdio.h>
#include <locale.h>
#include <string.h>
#include <ctype.h>

int main(){
    setlocale(LC_ALL, "portuguese");
    FILE *aqv1, *aqv2;
    aqv1 = fopen ("arq1.txt", "w");
    aqv2 = fopen ("arq2.txt", "w");

    if(aqv1 == NULL || aqv2 == NULL){
        printf("Erro na abertura!\n");
        system("pause");
        exit(1);
    }

    char texto[101];
    printf("Escreva um texto pequeno de até 100 caracteres. \n");
    fgets(texto, 100, stdin);

    printf("\n\n");

    for(int i = 0; i < strlen(texto); i++){
        fputc(texto[i], aqv1);
        if(texto[i] != EOF){
        fputc(toupper(texto[i]), aqv2);
        }
    }

    fclose(aqv1);
    fclose(aqv2);

    aqv1 = fopen ("arq1.txt", "r");
    aqv2 = fopen ("arq2.txt", "r");

    if(aqv1 == NULL || aqv2 == NULL){
        printf("Erro na abertura!\n");
        system("pause");
        exit(1);
    }

    char ler1 = fgetc(aqv1), ler2 = fgetc(aqv2);

    while(ler1 != EOF){
        printf("%c", ler1);
        ler1 = fgetc(aqv1);
    }

    printf("\n");

    while(ler2 != EOF){
        printf("%c", ler2);
        ler2 = fgetc(aqv2);
    }

    fclose(aqv1);
    fclose(aqv2);

    printf("\n\n");
system("pause");
return 0;
}
