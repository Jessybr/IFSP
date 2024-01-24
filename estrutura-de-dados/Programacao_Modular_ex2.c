#include <stdio.h>
#include <stdlib.h>

void calculoVantagens(int *salarioBruto, int *salarioFamilia, int *vantagens);
void calculoDeducoes(int *salarioBruto, int *INSS, int *IPRF, int *deducoes);


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

void calculoVantagens(int *salarioBruto, int *salarioFamilia, int *vantagens){
    int numeroHoras, salarioHora, numeroFilhos, valorPorFilho;

    printf("Digite o numero de horas trabalhadas: ");
    scanf("%d", &numeroHoras);
    printf("\nDigite o salario por hora trabalhada: ");
    scanf("%d", &salarioHora);
    printf("\nDigite o numero de filhos: ");
    scanf("%d", &numeroFilhos);
    printf("\nDigite o valor por filho: ");
    scanf("%d", &valorPorFilho);

    *salarioBruto = numeroHoras * salarioHora;
    *salarioFamilia = numeroFilhos * valorPorFilho;
    *vantagens = *salarioBruto + *salarioFamilia;
}


void calculoDeducoes(int *salarioBruto, int *INSS, int *IPRF, int *deducoes){
    int taxaIR;

    printf("\nDigite o valor da taxa IR: ");
    scanf("%d", &taxaIR);

    *INSS = *salarioBruto * 0.08;
    *IPRF = *salarioBruto * taxaIR;
    *deducoes = *INSS + *IPRF;
}

