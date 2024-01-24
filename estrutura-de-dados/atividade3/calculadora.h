// Struct criada com os n�meros a serem trabalhados
typedef struct calcular Calc;

// Cria o ponteiro e atribui
Calc *Crianum(float num1, float num2);

// Faz a opera��o de adi��o
void Adcao(Calc *p, float *resul);

// Faz a opera��o de subtra��o
void Subtra(Calc *p, float *resul);

// Faz a opera��o de multiplica��o
void Multip(Calc *p, float *resul);

// Faz a opera��o de divis�o
void Divic(Calc *p, float *resul);

// Libera o ponteiro
void libera(Calc *p);

// Armazena o resultado
void armazenaResul(float *resul_reser, float resul);
