#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

void somar(n1, n2, n3);

int main(){
setlocale(LC_ALL, "portuguese");
int *a, *b, *c;
int n1, n2, n3;

printf("Digite 3 números: ");
scanf("%d %d %d", &n1, &n2, &n3);

a = &n1;
b = &n2;
c = &n3;

somar(a, b, c);


printf("\nValor do primeiro numero: %d", n1);
printf("\nValor do primeiro numero: %d", n2);
printf("\nValor do primeiro numero: %d", n3);

printf("\n\n");
system ("pause");
return 0;
}

void somar(int *n1, int *n2, int *n3){
    *n1 += 100;
    *n2 += 100;
    *n3 += 100;
}
