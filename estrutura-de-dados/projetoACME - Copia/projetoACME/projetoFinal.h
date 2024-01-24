// Cria��o da estrutura cliente com os campos pedidos
typedef struct cliente {
    int codigo;
    char nome[50];
    char empresa[30];
    char departamento[30];
    char telefone[12];
    char celular[12];
    char email[40];
} CLIENTE;

typedef struct elemento* Lista;


Lista *criaLista();
void apagaLista(Lista *li);
int tamLista(Lista *li);
int listaCheia(Lista *li);
int listaVazia(Lista *li);

/* A ordena��o dos elementos na lista dever� ser crescente
e baseada no atributo (campo) c�digo, portanto, s� h� a
necessidade de contar com as fun��es de inser��o e
remo��o ordenadas.*/

int insere_lista_ordenada(Lista *li, CLIENTE al);
int remove_lista(Lista *li, int mat);
int consulta_lista_pos(Lista *li, int posicao, CLIENTE *al);
int consulta_lista_id(Lista *li, int id, CLIENTE *al);
struct cliente insereDados();
void exibirMenu();
void imprimeDados(CLIENTE cl);
void menu(int codigo, Lista *li);
int gravaArquivo(Lista *li, FILE *f);
void relatorioIndividualId(Lista *li);
void geraRelatorio(Lista *li);
void editaCli(Lista *li);
struct cliente editaDados(CLIENTE cliente);
