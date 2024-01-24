#include <stdio.h>
#include <stdlib.h>
#include "calculadora.h"

// Define os dados e n�meros a serem trabalhados
struct calcular {
    float num1;
    float num2;
};

// Cria o ponteiro e atribui
Calc *Crianum(float num1, float num2) {
    Calc *p = (Calc*) malloc(sizeof(Calc));
    if (p != NULL) {
        p->num1 = num1;
        p->num2 = num2;
    }
    return p;
}

// Faz a opera��o de adi��o
void Adcao(Calc *p, float *resul) {
    *resul = p->num1 + p->num2;
}

// Faz a opera��o de subtra��o
void Subtra(Calc *p, float *resul) {
    *resul = p->num1 - p->num2;
}

// Faz a opera��o de multiplica��o
void Multip(Calc *p, float *resul) {
    *resul = p->num1 * p->num2;
}

// Faz a opera��o de divis�o
void Divic(Calc *p, float *resul) {
    if (p->num2 != 0) {
        *resul = p->num1 / p->num2;
    } else {
        printf("Erro: Divis�o por zero!\n");
        *resul = 0;
    }
}

// Libera o ponteiro
void libera(Calc *p) {
    free(p);
}

// Armazena o resultado
void armazenaResul(float *resul_reser, float resul) {
    *resul_reser = resul;
}
