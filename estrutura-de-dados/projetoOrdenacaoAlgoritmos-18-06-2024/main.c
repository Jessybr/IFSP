#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include "projeto.h"

void salvarTemposMediosEmArquivo(const char *algoritmo, double mediaTempos, double tempoAsc, double tempoDesc, double *temposExecucao, int numTempos) {
    FILE *arquivo = fopen("tempos_medios.txt", "a");
    if (arquivo == NULL) {
        printf("Erro ao abrir o arquivo!\n");
        return;
    }
    fprintf(arquivo, "%s:\n", algoritmo);
    fprintf(arquivo, "Tempo médio: %f, Tempo crescente: %f, Tempo decrescente: %f\n", mediaTempos, tempoAsc, tempoDesc);
    fprintf(arquivo, "Tempos de execução: ");
    for (int i = 0; i < numTempos; i++) {
        fprintf(arquivo, "%f", temposExecucao[i]);
        fprintf(arquivo, ",");
    }
    fprintf(arquivo, "\n");
    fclose(arquivo);
}

int main() {
    int* array;
    double arrayExecutionTime[10];
    double averageTimes, ascOrderTime, decOrderTime;
    int choiceElement, choiceSorting, size;
    int sizeMin = 1, sizeMax = 1000000;
    struct timeval startTime, endTime;
    const char *algorithmName;

    showSortingMethodMenu();
    scanf("%d", &choiceSorting);

    showElementQuantityMenu();
    scanf("%d", &choiceElement);

    switch (choiceElement) {
        case 1:
            size = 10000;
            break;
        case 2:
            size = 50000;
            break;
        case 3:
            size = 100000;
            break;
        case 4:
            size = 200000;
            break;
        case 5:
            size = 500000;
            break;
        case 6:
            size = 1000000;
            break;
        default:
            printf("Opcao invalida escolhida!\n");
            return 1;
    }

    switch (choiceSorting) {
        case 1:
            algorithmName = "Bubble Sort";
            for (int i = 0; i < 10; i++) {
                array = allocateAndFillArray(size, sizeMin, sizeMax);
                choiceBubble(array, size, startTime, endTime, arrayExecutionTime, i, &ascOrderTime, &decOrderTime);
            }
            break;

        case 2:
            algorithmName = "Selection Sort";
            for (int i = 0; i < 10; i++) {
                array = allocateAndFillArray(size, sizeMin, sizeMax);
                choiceSelection(array, size, startTime, endTime, arrayExecutionTime, i, &ascOrderTime, &decOrderTime);
            }
            break;

        case 3:
            algorithmName = "Insertion Sort";
            for (int i = 0; i < 10; i++) {
                array = allocateAndFillArray(size, sizeMin, sizeMax);
                choiceInsertion(array, size, startTime, endTime, arrayExecutionTime, i, &ascOrderTime, &decOrderTime);
            }
            break;

        case 4:
            algorithmName = "Counting Sort";
            for (int i = 0; i < 10; i++) {
                array = allocateAndFillArray(size, sizeMin, sizeMax);
                choiceCounting(array, size, startTime, endTime, arrayExecutionTime, i, &ascOrderTime, &decOrderTime);
            }
            break;

        case 5:
            algorithmName = "Heap Sort";
            for (int i = 0; i < 10; i++) {
                array = allocateAndFillArray(size, sizeMin, sizeMax);
                choiceHeap(array, size, startTime, endTime, arrayExecutionTime, i, &ascOrderTime, &decOrderTime);
            }
            break;

        case 6:
            algorithmName = "Merge Sort";
            for (int i = 0; i < 10; i++) {
                array = allocateAndFillArray(size, sizeMin, sizeMax);
                choiceMerge(array, size, startTime, endTime, arrayExecutionTime, i, &ascOrderTime, &decOrderTime);
            }
            break;

        case 7:
            algorithmName = "Tim Sort";
            for (int i = 0; i < 10; i++) {
                array = allocateAndFillArray(size, sizeMin, sizeMax);
                choiceTim(array, size, startTime, endTime, arrayExecutionTime, i, &ascOrderTime, &decOrderTime);

            }
            break;

        case 8:
            algorithmName = "Quick Sort";
            for (int i = 0; i < 10; i++) {
                array = allocateAndFillArray(size, sizeMin, sizeMax);
                choiceQuick(array, size, startTime, endTime, arrayExecutionTime, i, &ascOrderTime, &decOrderTime);
            }
            break;

        case 9:
            algorithmName = "Shell Sort";
            for (int i = 0; i < 10; i++) {
                array = allocateAndFillArray(size, sizeMin, sizeMax);
                choiceShell(array, size, startTime, endTime, arrayExecutionTime, i, &ascOrderTime, &decOrderTime);
            }
            break;

        case 10:
            algorithmName = "Radix Sort";
            for (int i = 0; i < 10; i++) {
                array = allocateAndFillArray(size, sizeMin, sizeMax);
                choiceRadix(array, size, startTime, endTime, arrayExecutionTime, i, &ascOrderTime, &decOrderTime);
            }
            break;

        default:
            printf("Opcao invalida escolhida!\n");
            free(array);
            return 1;
    }

    printf("\nTempos de execucao:\n");
    for (int i = 0; i < 10; i++) {
        printf("%f ", arrayExecutionTime[i]);
    }

    averageTimes = calculateAverageTime(arrayExecutionTime, 10);
    printf("\nTempo para ordenar array crescente: %f", ascOrderTime);
    printf("\nTempo para ordenar array decrescente: %f\n", decOrderTime);

    salvarTemposMediosEmArquivo(algorithmName, averageTimes, ascOrderTime, decOrderTime, arrayExecutionTime, 10);

    free(array);
    return 0;
}
