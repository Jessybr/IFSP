#include <stdio.h>
#include <stdlib.h>
#include <locale.h>


int main(){
setlocale(LC_ALL, "portuguese");
int n1, n2, *p1, *p2;

printf("Digite 2 n�meros: ");
scanf("%d %d", &n1, &n2);

p1 = &n1;
p2 = &n2;


if(p1 > p2){
    printf("O endere�o do primeiro n�mero � maior\n\n");
}else{
    printf("O endere�o do segundo n�mero � maior\n\n");
}

printf("Endere�o do primeiro n�mero: %d\nSeu conte�do: %d\n\n", p1, n1);
printf("Endere�o do segundo n�mero: %d\nSeu conte�do: %d", p2, n2);

printf("\n\n");
system ("pause");
return 0;
}

