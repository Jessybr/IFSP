#include <stdio.h>
#include <stdlib.h>
#include <locale.h>



int main()
{
    setlocale(LC_ALL, "portuguese");
    int var1 = 1, var2 = 2;
    printf("Endereço de memória da variável 1: %d\n", &var1);
    printf("Endereço de memória da variável 2: %d\n\n", &var2);
    if(&var1 > &var2){
        printf("A primeira variável é maior\n");
    }else{
        printf("A segunda variável é maior\n");
    }

    return 0;
}

