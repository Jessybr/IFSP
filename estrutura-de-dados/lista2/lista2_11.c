#include <stdio.h>
#include <stdlib.h>
#include <locale.h>


int main()
{
    setlocale(LC_ALL, "portuguese");
    int a, *b, **c, ***d;

    printf("Digite um número: ");
    scanf(" %d", &a);
    b = &a;
    c = &b;
    d = &c;

    *b = *b * 2;
    printf("\n\nValor dobrado: %d", *b);
    **c = **c * 3;
    printf("\n\nValor triplicado: %d", **c);
    ***d = ***d * 4;
    printf("\n\nValor quadruplicado: %d\n", ***d);

    return 0;
}
