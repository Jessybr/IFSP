#include <stdio.h>
#include <stdlib.h>
#include <locale.h>


int main()
{
    setlocale(LC_ALL, "portuguese");
    int var1, var2;
    printf("Digite o primeiro número: ");
    scanf("%d", &var1);
    printf("\nDigite o segundo número: ");
    scanf("%d", &var2);

    if(&var1 > &var2){
        printf("\n\nO endereço de memória do primeiro número é maior\n");
        printf("Seu conteúdo: %d\n\n", var1);
    }else{
        printf("\n\nO endereço de memória do segunda número é maior\n");
        printf("Seu conteúdo: %d\n\n", var2);
    }

    return 0;
}
