#include <stdio.h>
#include <stdlib.h>

void calculoVantagens(int numeroHoras, int salarioHora, int numeroFilhos, int valorPorFilho);
void calculoDeducoes(int taxaIR);
int salarioBruto;
int salarioFamilia;
int vantagens;
int INSS;
int IPRF;
int deducoes;

int main(){
    int numHoras, salHora, numFilhos, valPorFilho, taxaIR;
    printf("Digite o numero de horas trabalhadas: ");
    scanf("%d", &numHoras);
    printf("\nDigite o salario por hora trabalhada: ");
    scanf("%d", &salHora);
    printf("\nDigite o numero de filhos: ");
    scanf("%d", &numFilhos);
    printf("\nDigite o valor por filho: ");
    scanf("%d", &valPorFilho);
    printf("\nDigite o valor da taxa IR: ");
    scanf("%d", &taxaIR);

    calculoVantagens(numHoras, salHora, numFilhos, valPorFilho);
    calculoDeducoes(taxaIR);

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

void calculoVantagens(int numeroHoras, int salarioHora, int numeroFilhos, int valorPorFilho){
    salarioBruto = numeroHoras * salarioHora;
    salarioFamilia = numeroFilhos * valorPorFilho;
    vantagens = salarioBruto + salarioFamilia;
}


void calculoDeducoes(int taxaIR){
    INSS = salarioBruto * 0.08;
    IPRF = salarioBruto * taxaIR;
    deducoes = INSS + IPRF;
}


