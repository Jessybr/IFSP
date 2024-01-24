#include <stdio.h>
#include <stdlib.h>

void trianguloLateral(int n);

int main() {
    int n;
    printf("Digite um valor inteiro para n: ");
    scanf("%d", &n);

    trianguloLateral(n);

    return 0;
}

void trianguloLateral(int n) {
    for (int i = 1; i <= n; i++) {
        for (int j = 1; j <= i; j++) {
            printf("*");
        }
        printf("\n");
    }

    for (int i = n - 1; i >= 1; i--) {
        for (int j = 1; j <= i; j++) {
            printf("*");
        }
        printf("\n");
    }
}
