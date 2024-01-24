// Struct criada com os números a serem trabalhados
typedef struct calcular Calc;

// Cria o ponteiro e atribui
Calc *Crianum(float num1, float num2);

// Faz a operação de adição
void Adcao(Calc *p, float *resul);

// Faz a operação de subtração
void Subtra(Calc *p, float *resul);

// Faz a operação de multiplicação
void Multip(Calc *p, float *resul);

// Faz a operação de divisão
void Divic(Calc *p, float *resul);

// Libera o ponteiro
void libera(Calc *p);

// Armazena o resultado
void armazenaResul(float *resul_reser, float resul);
