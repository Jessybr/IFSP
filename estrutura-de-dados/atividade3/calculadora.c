#include <stdio.h>
#include <stdlib.h>
#include "calculadora.h"

// Define os dados e números a serem trabalhados
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

// Faz a operação de adição
void Adcao(Calc *p, float *resul) {
    *resul = p->num1 + p->num2;
}

// Faz a operação de subtração
void Subtra(Calc *p, float *resul) {
    *resul = p->num1 - p->num2;
}

// Faz a operação de multiplicação
void Multip(Calc *p, float *resul) {
    *resul = p->num1 * p->num2;
}

// Faz a operação de divisão
void Divic(Calc *p, float *resul) {
    if (p->num2 != 0) {
        *resul = p->num1 / p->num2;
    } else {
        printf("Erro: Divisão por zero!\n");
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
