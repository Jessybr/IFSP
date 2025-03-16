typedef struct NO *arvAVL;

arvAVL *cria_arvAVL();

int alt_no(struct NO *no);

int maior(int x, int y);

int fatorBalanceamento_NO(struct NO *no);

void rotacaoLL(arvAVL *A);

void rotacaoRR(arvAVL *A);

void rotacaoLR(arvAVL *A);

void rotacaoRL(arvAVL *A);

void liberar_arvAVL(arvAVL *raiz);

int vazia_arvAVL(arvAVL *raiz);

int altura_arvAVL(arvAVL *raiz);

int totalNO_arvAVL(arvAVL * raiz);

void preOrdem_arvAVL(arvAVL *raiz);

void emOrdem_arvAVL(arvAVL *raiz);

void posOrdem_arvAVL(arvAVL *raiz);

int confirmaInsercao(int x);

int insere_arvAVL(arvAVL *raiz, int valor);

int remove_arvAVL(arvAVL *raiz, int valor);

int consulta_arvAVL(arvAVL *raiz, int valor);
