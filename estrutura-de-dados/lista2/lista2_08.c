#include <stdio.h>
#include <stdlib.h>
#include <locale.h>



int main()
{
    setlocale(LC_ALL, "portuguese");
    int var1 = 1, var2 = 2;
    printf("Endere�o de mem�ria da vari�vel 1: %d\n", &var1);
    printf("Endere�o de mem�ria da vari�vel 2: %d\n\n", &var2);
    if(&var1 > &var2){
        printf("A primeira vari�vel � maior\n");
    }else{
        printf("A segunda vari�vel � maior\n");
    }

    return 0;
}

