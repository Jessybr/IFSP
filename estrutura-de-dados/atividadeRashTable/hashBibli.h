void imprime(struct aluno al){
    printf("\n\n");
    printf("Matricula: ... %d\n", al.matricula);
    printf("Nome: ........ %s\n", al.nome);
    printf("Nota 1: ...... %.2f\n", al.n1);
    printf("Nota 2: ...... %.2f\n", al.n2);
    printf("Nota 3: ...... %.2f\n", al.n3);
}

int menuDefine(){
    int continua;
    printf("\n\nDeseja usar o tratamento com ou sem colisa1o?\n\n");
    printf("(1) Sem tratamento de colisao \n");
    printf("(2) Com tratamento de colisao \n");
    printf("(0) Encerrar programa\n");
    printf("\nEscolha: ");
    scanf("%d", &continua);
    return continua;
}

int menuSemColisao(){
    int resp;
    printf("\n\nDeseja inserir ou buscar um aluno?\n\n");
    printf("(1) Inserir \n");
    printf("(0) Buscar \n");
    printf("Escolha: ");
    scanf("%d", &resp);
    return resp;
}

int menuComColisao(){
    int resp;
    printf("\n\nDeseja inserir ou buscar um aluno?\n\n");
    printf("(1) Inserir \n");
    printf("(0) Buscar \n");
    printf("Escolha: ");
    scanf("%d", &resp);
    return resp;
}

void coletaDados(struct aluno *al){
    printf("\n\n\n");
    printf("Matricula: ");
    scanf("%d", &al->matricula);
    getchar();
    printf("Nome: ");
    fgets(al->nome, 31, stdin);
    printf("\nNota 1: ");
    scanf("%f", &al->n1);
    printf("\nNota 2: ");
    scanf("%f", &al->n2);
    printf("\nNota 3: ");
    scanf("%f", &al->n2);
}
