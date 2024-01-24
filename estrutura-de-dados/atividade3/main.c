#include <stdio.h>
#include <stdlib.h>
#include "calculadora.h"
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "portuguese");
    int cont = 0;
    float num1, num2, resul, resulReserva;
    char esc, contin, esc2;
    Calc *nums = NULL;

    do{
        armazenaResul(&resulReserva, resul);

        printf("\n\nEscolha dois n�meros: ");
        scanf("%f %f", &num1, &num2);
        nums = Crianum(num1, num2);

        printf("\n\nQual opera��o deseja realizar? \n");
        printf("Adi��o = a\n");
        printf("Subtra��o = s\n");
        printf("Multiplica��o = m\n");
        printf("Divis�o = d \n");
        scanf(" %c", &esc);

        switch(esc){
            case 'a':
                Adcao(nums, &resul);
                break;
            case 's':
                Subtra(nums, &resul);
                break;
            case 'm':
                Multip(nums, &resul);
                break;
            case 'd':
                Divic(nums, &resul);
                break;
            default:
                printf("Opera��o Inv�lida!!");
                break;
        }

        printf("\nResultado: %.2f\n\n", resul);

        if(cont > 0){
            printf("Deseja ver o resultado anterior? (sim -s / n�o - n)");
            scanf(" %c", &esc2);
            if(esc2 == 's' || esc2 == 'S'){
                printf("\nResultado reservado: %.2f\n\n", resulReserva);
            }
        }
        cont++;
        libera(nums);
        printf("Desaja fazer outra opera��o? (sim -s / n�o - n)");
        scanf(" %c", &contin);
    }while(contin == 's' || contin == 'S');
    printf("\n\n");

    system("pause");
    return 0;
}
