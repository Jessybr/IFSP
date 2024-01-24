#include <stdlib.h>
#include <stdio.h>
#include <locale.h>
#include <string.h>

int main(){
setlocale(LC_ALL, "portuguese");

    char str[20], str2[20];
    int i, cont;
    printf("Digite duas palavra, dando enter após o final de cada uma:");
    gets(str);
    gets(str2);

    strlwr(str);
    strlwr(str2);

    if(!strcmp(str, str2)){
        printf("As palavras são iguais.");
    }else{
        printf("As palavras são diferentes.");
    }

    printf("\n\n");
system("pause");
return 0;
}
