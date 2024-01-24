#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include "projetoFinal.h"

//Struct possuindo os dados cliente e seu pr�ximo elemento
struct elemento{
    CLIENTE dados;
    struct elemento *prox;
};

typedef struct elemento ELEM; // nomea��o serve apenas para esse arquivo

// Cria a lista e aloca memoria
Lista *criaLista(){
    Lista *li;
    li = (Lista*) malloc(sizeof(Lista));
    if(li != NULL){ // Se a aloca��o tiver dado certo,
        *li = NULL; // atribui NULL ao conte�do de 'li'
    }

    return li;
}

// Libera a mem�ria de "li" e apaga a lista e os elementos criados
void apagaLista(Lista *li){
    if(li != NULL){  // Se a lista existir, � executado a condi��o
        ELEM *no;
        while((*li) != NULL){   // Enquanto a lista n�o estiver vazia
            no = *li;           //� executado o while, que apaga os elementos at�
            *li = (*li)->prox;  //que a lista esteja vazia
            free(no);
        }
        free(li);               // No final, � liberado o 'li'
    }
}

// Retorna o tamanho da lista
int tamLista(Lista *li){
    if(li == NULL){ // Verifica se a lista est� vazia,
        return 0;   // se estiver, sai da fun��o
    }
    int acum = 0;
    ELEM *no = *li;    // O 'no' recebe o primerio contato da lista
    while(no != NULL){ // Enquanto existir algo na lista, � acumulado um valor no 'acum'
        acum++;        //e depois o "n�" � atribuido com seu pr�ximo elemento
        no = no->prox; //e ent�o verificado consecutivamente
    }
    return acum;
}

// Avisa se a lista est� cheia
int listaCheia(Lista *li){
    return 0;
}

// Avisa se a lista est� vazia
int listaVazia(Lista *li){
    if(li == NULL){ // Se a lista n�o existir
        return 1;
    }
    if(*li == NULL){ // Se a lista estiver vazia sem nenhum elemento
        return 1;
    }
    return 0;
}

// Insere os elementos ordenadamente
int insere_lista_ordenada(Lista *li, CLIENTE al){
    if(li == NULL){ // Se a lista n�o existir retorna 0
        return 0;
    }

    ELEM *no = (ELEM*) malloc(sizeof(ELEM));
    if(no == NULL){ //Se o "no" n�o foi alocado, retorna 0
        return 0;
    }
    no->dados = al;
    if(listaVazia(li)){     // Verifica n�o tem nada na lista, se n�o tiver nada
        no->prox = (*li);   // o pr�ximo endere�o � atribuido ao "li",
        *li = no;           // e depois o "li" passa a ser o elemento atual, sendo o primeiro da lista
        return 1;
    } else {
        ELEM *ant, *atual = *li;
        while(atual != NULL && atual->dados.codigo < al.codigo){
        // Se existir um elemento na lista, � rodado o while
        //at� o c�digo do elemento atual ser menor que o c�digo inserido pelo o usu�rio
            ant = atual;
            atual = atual->prox;
        }
        if(atual == *li){       // Insere se o elemento estiver na primeira posi��o
            no->prox = (*li);
            *li = no;
        } else {                // Caso contr�rio, insere em qualquer posi��o
            no->prox = ant->prox;
            ant->prox = no;
        }

        return 1;
    }
}

// Remove elemento pelo codigo
int remove_lista(Lista *li, int mat){
    if(li == NULL){ // Verifica se a lista existe, caso n�o, retorna 0
        return 0;
    }
    ELEM *ant, *no = *li;
    while(no != NULL && no->dados.codigo != mat){
    // Enquanto existir um elemento na lista e este tiver o c�digo menor
    //do que o inserido pelo o usu�rio, � rodado o while
        ant = no;
        no = no->prox;
    }

    if(no == NULL){ // Se n�o existir nada, retorna 0
        return 0;
    }
    if(no == *li){      // Se o elemento estiver na primeira posi��o
        *li = no->prox; //o 'li' recebe o pr�ximo conte�do do 'no', que � nulo
    } else {                    // Caso contr�rio, o conte�do anterior vai apontar
        ant->prox = no->prox;   //para o elemento seguinte ao 'no', que � nulo
    }
    free(no);                   // Depois o 'no' � liberado
    return 1;
}

int consulta_lista_pos(Lista *li, int posicao, CLIENTE *al){
    if(li == NULL || posicao <= 0){
        return 0;
    }
    ELEM *no = *li;
    int i = 1;
    // percorre a lista com i a procura do elemento
    while(no != NULL && i < posicao){
        no = no->prox;
        i++;
    }

    // trata-se da lista vazia, ou n�o encontrou o elemento
    if(no == NULL){
        return 0;
    } else{
    // se no != de NULL, ent�o encontrou o elemento
        *al = no->dados;
        return 1;
    }
}

// Consulta um elemento pelo seu ID
int consulta_lista_id(Lista *li, int id, CLIENTE *al){
    if(li == NULL){ // Verifica se a lista existe
        return 0;
    }
    ELEM *no = *li;
    while(no != NULL && no->dados.codigo != id){
    // � rodado o while se o 'no' n�o estiver vazio e se o c�digo do elemento
    //for menor do que o inserido pelo o usu�rio
        no = no->prox;
    }
    if(no == NULL){
    // Se o 'no' estiver vazio, retorna 0
        return 0;
    } else {
    // Se estiver com elemento, os dados do elemento s�o passados para o 'al'
        *al = no->dados;
        return 1;
    }
}

// Inserir dados
struct cliente insereDados() {
    struct cliente al;

    printf("\n\n\tNovo cliente...\n\n");

    printf("Digite o codigo: ");
    scanf("%d", &al.codigo);

    // Limpa o buffer de entrada
    while (getchar() != '\n');

    printf("Digite o nome: ");
    fgets(al.nome, sizeof(al.nome), stdin);
    al.nome[strcspn(al.nome, "\n")] = '\0';
    for (int i = 0; al.nome[i]; i++) {
        al.nome[i] = tolower(al.nome[i]); //deixa o nome em min�sculo
    }

    printf("Digite o nome da empresa: ");
    fgets(al.empresa, sizeof(al.empresa), stdin);
    al.empresa[strcspn(al.empresa, "\n")] = '\0';

    printf("Digite o departamento: ");
    fgets(al.departamento, sizeof(al.departamento), stdin);
    al.departamento[strcspn(al.departamento, "\n")] = '\0';

    printf("Digite o telefone: ");
    fgets(al.telefone, sizeof(al.telefone), stdin);
    al.telefone[strcspn(al.telefone, "\n")] = '\0';

    printf("Digite o celular: ");
    fgets(al.celular, sizeof(al.celular), stdin);
    al.celular[strcspn(al.celular, "\n")] = '\0';

    printf("Digite o email: ");
    fgets(al.email, sizeof(al.email), stdin);
    al.email[strcspn(al.email, "\n")] = '\0';

    return al;
}

// Edita os dados de um elemento
struct cliente editaDados(CLIENTE al){

    printf("Digite o codigo: ");
    scanf("%d", &al.codigo);

    // Limpa o buffer de entrada
    while (getchar() != '\n');

    printf("Digite o nome: ");
    fgets(al.nome, sizeof(al.nome), stdin);
    al.nome[strcspn(al.nome, "\n")] = '\0';
    for (int i = 0; al.nome[i]; i++) {
        al.nome[i] = tolower(al.nome[i]); //deixa o nome em min�sculo
    }

    printf("Digite o nome da empresa: ");
    fgets(al.empresa, sizeof(al.empresa), stdin);
    al.empresa[strcspn(al.empresa, "\n")] = '\0';

    printf("Digite o departamento: ");
    fgets(al.departamento, sizeof(al.departamento), stdin);
    al.departamento[strcspn(al.departamento, "\n")] = '\0';

    printf("Digite o telefone: ");
    fgets(al.telefone, sizeof(al.telefone), stdin);
    al.telefone[strcspn(al.telefone, "\n")] = '\0';

    printf("Digite o celular: ");
    fgets(al.celular, sizeof(al.celular), stdin);
    al.celular[strcspn(al.celular, "\n")] = '\0';

    printf("Digite o email: ");
    fgets(al.email, sizeof(al.email), stdin);
    al.email[strcspn(al.email, "\n")] = '\0';

    return al;

}

// Gera um relat�rio da lista toda
void geraRelatorio(Lista *li) {
    if(listaVazia(li)){ //Se a lista estiver vazia, exibe a mensagem abaixo
        printf("\nErro: Lista vazia!\n");
    } else {
        ELEM *no = *li;
        int i = 1;

        while (no != NULL) {
            CLIENTE cl = no->dados;
            //Enquanto tiver elementos, � chamada a fun��o imprimeDados para imprimir os elementos
            printf("\n\n\t\tCliente %d\n\n", i);
            imprimeDados(cl);
            no = no->prox;
            i++;
        }
    }

}

// Gera um relat�rio de apenas um elemento pelo nome digitado
void relatorioIndividualNome(Lista *li) {
    if (li == NULL || *li == NULL) {
        // Se a lista n�o existir ou estiver vazia exibe
        //a mensagem abaixo
        printf("Erro: Lista vazia\n");
        return;
    }

    char nome[50];
    printf("\nDigite o nome: ");
    scanf(" %s", nome);

    int i;

    // Deixa o nome digitado pelo usu�rio em letra min�scula
    for (i = 0; nome[i]; i++) {
        nome[i] = tolower(nome[i]);
    }

    CLIENTE cl;
    ELEM *no = *li;
    int acum = 0;

    i = 1;
    while (no != NULL) {
    // Enquanto o 'no' n�o for nulo, o nome que est� no 'no' vai ser comparado com o
    //nome digitado pelo usu�rio, se estes forem iguais, os dados do 'no' s�o passados
    //para 'cl' que depois vira par�metro para chamar a fun��o imprimeDados
        if (strcmp(no->dados.nome, nome) == 0) {
            cl = no->dados;
            printf("\n\n\t\tCliente encontrado %d\n\n", i);
            imprimeDados(cl);
            i++;
        } else {
        // Se os nomes n�o forem iguais 'acum' � acumulado.
            acum++;
        }

        no = no->prox;
    }

    // Se 'acum' for igual ao tamanho da lista � exibido a mensagem abaixo
    if(acum == tamLista(li)){
        printf("Nome nao encontrado\n");
    }

}

// Gera um relat�rio de apenas um elemento pelo ID digitado
void relatorioIndividualId(Lista *li) {
    int i, x;
    printf("\nDigite o codigo de identificacao: ");
    scanf("%d", &i);
    CLIENTE cl;

    // A fun��o consulta lista � chamada para pegar os dados e depois esses s�o
    //armazenados em 'cl'
    x = consulta_lista_id(li, i, &cl);
    if (x) {
    // Caso a consulta d� certo � exbido os dados pela fun��o imprimeDados
        imprimeDados(cl);
    } else {
        printf("\nNao foi possivel consultar a posicao desejada\nMotivos: O codigo fornecido nao e valido, o cliente pode ter sido excluido anteriormente, a lista pode estar vazia, etc\n");
    }
}

// Imprime os dados de um elemento
void imprimeDados(CLIENTE cl){
        printf("Codigo......: %d\n", cl.codigo);
        printf("Nome........: %s\n", cl.nome);
        printf("Empresa.....: %s\n", cl.empresa);
        printf("Departamento: %s\n", cl.departamento);
        printf("Telefone....: %s\n", cl.telefone);
        printf("Celular.....: %s\n", cl.celular);
        printf("E-mail......: %s\n", cl.email);
}

// Edita os dados de um elemento
void editaCli(Lista *li) {
   ELEM* edita = *li;
    int codigo;
    char resposta;
    printf("\nDigite o codigo de identificacao: ");
    scanf("%d", &codigo);

    while (edita != NULL) {
        if (edita->dados.codigo == codigo) {
                edita->dados = editaDados(edita->dados);
                printf("\nModificacoes salvas!\n");
                return;
        }
        edita = edita->prox;
    }
        printf("\nCliente com o codigo %d n�o encontrado na lista.\n", codigo);
}


void exibirMenu() { // Fun��o criada somente para a exibi��o do menu
    printf("\nDigite a opcao desejada conforme as seguintes:\n");
    printf("0 - Sair do programa;\n");
    printf("1 - Insercao de novo contato;\n");
    printf("2 - Gerar e exibir relatorio de contatos;\n");
    printf("3 - Gerar e exibir relatorio individual com busca por identificador;\n");
    printf("4 - Gerar e exibir relatorio com busca por nome;\n");
    printf("5 - Edicao de dados do contato, escolhido por identificador;\n");
    printf("6 - Remover contato, escolhido por identificador;\n");
    printf("\nOpcao desejada: ");
}


void menu(int codigo, Lista *li) {
    /* Fun��o criada para dar o poder de escolha de uma das op��es
    do menu, a partir da escolha, s�o chamadas as fun��es espec�ficas
    para cada caso */
    char opcao;
    struct cliente al, novoCliente; // Assumindo que al � uma vari�vel do tipo struct cliente
    int x;

    do {
        exibirMenu();
        scanf(" %c", &opcao);
        int cod;

        switch (opcao) {
            case '0':
                printf("\n\t\tPrograma encerrando...\n");
                break;

            case '1':
                system("cls");
                novoCliente = insereDados();
                insere_lista_ordenada(li, novoCliente);
                break;

            case '2':
               // printf("\n\t\tGerando relatorio de contatos...\n");
                system("cls");
                geraRelatorio(li);
                break;

            case '3':
                system("cls");
                printf("\n\t\tGerando relatorio individual - Busca por Codigo\n");
                relatorioIndividualId(li);
                break;

            case '4':
                system("cls");
                printf("\n\t\tGerando relatorio individual - Busca por Nome\n");
                relatorioIndividualNome(li);
                break;

            case '5':
                system("cls");
                printf("\n\t\tEdicao de Contatos\n");
                editaCli(li);
                break;

            case '6':
                printf("Digite o codigo de identificacao do cliente que deseja excluir: ");
                scanf("%d", &cod);
                x = remove_lista(li, cod);
                if(x){
                    printf("Removido o elemento com sucesso!\n");
                } else {
                    printf("Nao foi possivel remover o elemento!\n");
                }
                break;

            default:
                printf("Selecione uma opcao valida\n");
        }

    } while (opcao != '0');
}

int gravaArquivo(Lista *li, FILE *f) {
    if (li == NULL) {
        return 0; // Lista vazia ou nula
    }

    ELEM *no = (ELEM*) malloc(sizeof(ELEM));
    if(no == NULL){
        return 0;
    }
    no = *li;
    while(no != NULL) {
        fwrite(no, sizeof(ELEM), 1, f);
        no = no->prox; // Corrigido para mover para o pr�ximo elemento ap�s a grava��o
        printf("Gravando");
    }

    return 1; // Sucesso
}
