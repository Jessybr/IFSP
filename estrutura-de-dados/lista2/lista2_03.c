#include <stdio.h>

void SomaMatrix(int matriz[][6], int n);

int main() {
    int n = 6;
    int matr_A[6][6];

    printf("Digite os números da matriz: ");
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            scanf("%d", &matr_A[i][j]);
        }
    }

    SomaMatrix(matr_A, n);

    return 0;
}

void SomaMatrix(int matriz[][6], int n) {
    int diagPr = 0;
    int diagSg = 0;

    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            if (i == j) {
                diagPr += matriz[i][j];
            } else if ((i == 0 && j == 5) || (i == 1 && j == 4) || (i == 2 && j == 3) || (i == 3 && j == 2) || (i == 4 && j == 1) || (i == 5 && j == 0)) {
                diagSg += matriz[i][j];
            }
        }
    }

    printf("\nSoma diagonal principal: %d", diagPr);
    printf("\nSoma diagonal secundária: %d\n", diagSg);
}
