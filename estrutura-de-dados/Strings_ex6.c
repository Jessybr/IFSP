#include <stdlib.h>
#include <stdio.h>
#include <locale.h>
#include <string.h>
#include <ctype.h>

char *maiusculo(char *str);
char *minusculo(char *str);

int main(){
setlocale(LC_ALL, "portuguese");

    char palavra[20];
    printf("Digite uma palavra com todas as letras em maiúsculas ou minúsculas: ");
    fgets(palavra, 19, stdin);

    if(islower(palavra[0])){
        maiusculo(palavra);
    }else if(isupper(palavra[0])){
        minusculo(palavra);
    }

    printf("%s", palavra);

        printf("\n\n");
system("pause");
return 0;
}

    char *maiusculo(char *str){
        while(*str){
            *str = toupper(*str);
            str++;
        }
        return *str;
    }

    char *minusculo(char *str){
        while(*str){
            *str = tolower(*str);
            str++;
        }
        return *str;
    }

