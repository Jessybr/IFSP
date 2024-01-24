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
