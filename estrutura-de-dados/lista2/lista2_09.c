#include <stdio.h>
#include <stdlib.h>
#include <locale.h>


int main()
{
    setlocale(LC_ALL, "portuguese");
    int var1, var2;
    printf("Digite o primeiro n�mero: ");
    scanf("%d", &var1);
    printf("\nDigite o segundo n�mero: ");
    scanf("%d", &var2);

    if(&var1 > &var2){
        printf("\n\nO endere�o de mem�ria do primeiro n�mero � maior\n");
        printf("Seu conte�do: %d\n\n", var1);
    }else{
        printf("\n\nO endere�o de mem�ria do segunda n�mero � maior\n");
        printf("Seu conte�do: %d\n\n", var2);
    }

    return 0;
}
