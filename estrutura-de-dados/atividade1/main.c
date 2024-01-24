#include <stdio.h>
#include <stdlib.h>
#include "my_lib.h"

int main(){
    int salarioBruto, salarioFamilia, vantagens, INSS, IPRF, deducoes;

    calculoVantagens(&salarioBruto, &salarioFamilia, &vantagens);
    calculoDeducoes(&salarioBruto, &INSS, &IPRF, &deducoes);

    printf("\nSalario bruto: %d", salarioBruto);
    printf("\nSalario Familia: %d", salarioFamilia);
    printf("\nVantagens: %d", vantagens);
    printf("\nINSS calculado: %d", INSS);
    printf("\nIRPF calculado: %d", IPRF);
    printf("\nDeducoes: %d", deducoes);

    printf("\n\n\n");

    system("pause");

    return 0;
}
