#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int fatorial_recursivo(n1);
int fatorial_iterativo(n1);

int main(){
setlocale(LC_ALL, "portuguese");
int n;

printf("Digite um número: ");
scanf("%d", &n);

int escol;
printf("Qual método quer usar? (recursivo (1) - interativo (2)");
scanf(" %d", &escol);

if(escol == 1){
    fatorial_recursivo(n);
}else if(escol == 2){
    fatorial_iterativo(n);
}

printf("\n\n");
system ("pause");
return 0;
}

int fatorial_recursivo(n1){
    if(n1 < 0){
    return 1;
    }
    printf("%d\n", n1);
    return (n1 + fatorial_recursivo(n1 - 1));
}

int fatorial_iterativo(n1){
    int f, i, g;
    f = n1;
    for(i = 0; i <= n1; i++){
    printf("%d\n", f);
    f = (f + 1) - 2 ;
    }
}
