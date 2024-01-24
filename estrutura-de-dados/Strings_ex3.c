#include <stdlib.h>
#include <stdio.h>
#include <locale.h>
#include <string.h>

int main(){
setlocale(LC_ALL, "portuguese");

    char cons, str[20], str_muda[20];
    int i, cont = 0;
    printf("Digite uma palavra: ");
    gets(str);
    printf("\nDigite uma consoante: ");
    scanf(" %c", &cons);
    strcpy(str_muda, str);

    for(i = 0; i < strlen(str_muda); i++){
        if(str_muda[i] == 'a' || str_muda[i] == 'e' || str_muda[i] == 'i' || str_muda[i] == 'o' || str_muda[i] == 'u'){
            cont++;
            str_muda[i] = cons;
        }
    }
    printf("A palavra \"%s\" tem %d vogais", str, cont);
    printf("\nA palavra mudou para: %s", str_muda);

    printf("\n\n");
system("pause");
return 0;
}
