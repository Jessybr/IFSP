#include <stdlib.h>
#include <stdio.h>
#include <locale.h>
#include <string.h>

int main(){
setlocale(LC_ALL, "portuguese");

    char str[20], str_muda[20];
    int i, sub = 32;
    printf("Digite uma palavra: ");
    gets(str);

    for(i = 0; i < strlen(str); i++){
        str_muda[i] = str[i] - sub;
    }

    printf("%s", str_muda);

    printf("\n\n");
system("pause");
return 0;
}
