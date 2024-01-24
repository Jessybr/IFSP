#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int fatorial_recursivo(n1);

int main(){
setlocale(LC_ALL, "portuguese");
int i, f, n;

printf("Digite um número: ");
scanf("%d", &n);
f = n;
printf("Fatorial Iterativo.\n");
    for(i = 0; i <= n; i++){
            printf("%d\n", f);
        f--;
    }

printf("Fatorial Recursivo.\n");
fatorial_recursivo(n);

printf("\n\n");
system ("pause");
return 0;
}

int fatorial_recursivo(n1){
    if(n1 < 0){
        return 1;
    }
    printf("%d\n", n1);
    return fatorial_recursivo(n1 - 1);
}
