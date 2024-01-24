#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main(){
setlocale(LC_ALL, "portuguese");
char nome[12];
int idade;
float salario;

printf("Digite seu nome: ");
gets(nome);
printf("Digite sua idade: ");
scanf("%d", &idade);
printf("Digite seu salário: ");
scanf("%f", &salario);

printf("\nNome: %s", nome);
printf("\nIdade: %d", idade);
printf("\nSalário: R$%.2f", salario);

printf("\n\n");

system("pause");
return 0;
}
