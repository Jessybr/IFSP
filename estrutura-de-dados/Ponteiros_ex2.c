#include <stdio.h>
#include <stdlib.h>
#include <locale.h>


int main(){
setlocale(LC_ALL, "portuguese");
int n1, n2, *p1, *p2;

printf("Digite 2 números: ");
scanf("%d %d", &n1, &n2);

p1 = &n1;
p2 = &n2;


if(p1 > p2){
    printf("O endereço do primeiro número é maior\n\n");
}else{
    printf("O endereço do segundo número é maior\n\n");
}

printf("Endereço do primeiro número: %d\nSeu conteúdo: %d\n\n", p1, n1);
printf("Endereço do segundo número: %d\nSeu conteúdo: %d", p2, n2);

printf("\n\n");
system ("pause");
return 0;
}

