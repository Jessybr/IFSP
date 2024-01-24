typedef struct aluno{
    int matricula;
    float n1, n2, n3;
}ALUNO;
typedef struct elemento* Lista;

Lista *criaLista();

ALUNO insere_aluno();

void apagaLista(Lista *li);

int tamLista(Lista *li);

int listaCheia(Lista *li);

int listaVazia(Lista *li);

int insere_inicio_lista(Lista *li, ALUNO al);

int insere_final_lista(Lista *li, ALUNO al);

int insere_lista_ordenada(Lista *li, ALUNO al);

int remove_inicio_lista(Lista *li);

int remove_final_lista(Lista *li);

int remove_lista(Lista *li, int mat);

int consulta_lista_pos(Lista *li, int posicao, ALUNO *al);

int consulta_lista_mat(Lista *li, int mat, ALUNO *al);
