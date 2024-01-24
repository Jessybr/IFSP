//Arquivo PTcart.h
//Atribui novo nome para struct pontoCartesiano: PTcart
typedef struct pontoCartesiano PTcart;

//Cria um novo PTcart - somente ponteiro!!
PTcart *criaPTcart(float x, float y);

//Libera um PTcart
void liberaPTcart(PTcart *p);

//Acessa valores "x" e "y" de um PTcart
void acessaPTcart(PTcart *p, float *x, float *y);

//Atribui os valores "x" e "y" a um PTcart
void atribuiPTcart(PTcart *p, float x, float y);

//Calcula a distÂncia entre dois pontos no plano cartesiano
float distanciaPTcart(PTcart *p1, PTcart *p2);

