#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int fun_Recursiva(int num, int resul);

int main()
{
    setlocale(LC_ALL, "portuguese");
    int num, resul;
    printf("Digite um número: ");
    scanf("%d", &num);
    resul = fun_Recursiva(num, 0);
    printf("%d ", resul);

    return 0;
}

int fun_Recursiva(int num, int resul){
    if(num == 0){
        return resul;
    }
    int dig = num % 10;

    resul = resul * 10 + dig;
    return fun_Recursiva(num / 10, resul);
}
