#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int func(int n, int n_aux, int num);


int main(){
    setlocale(LC_ALL,"portuguese");
    int n, num;

    printf("Digite um número: ");
    scanf("%d", &n);

    num = n + 1;
    func(n, n, num);

    printf("\n\n");


system("pause");
return 0;
}

int func(int n, int n_aux, int num){
    int f;

    f = num - n;

    for(int i = 0; i < f; i++){
        printf("!");
    }

    if(f == n_aux){
        return 1;
    }
    printf("\n");

    return func(n - 1, n_aux, num);

}
