void bubbleSort(int *array, int size);
void selectionSort(int *array, int size);
void insertionSort(int *array, int size);
int* countingSort(int array[], int size);
void heapSort(int array[], int size);
void mergeSort(int *array, int start, int end);
void timSort(int array[], unsigned int size);
void quickSort(int array[], int low, int high);
int radixSortLSD(int *array, size_t size);
void shellSort(int *array, int size);


void choiceBubble(int* array,int size, struct timeval startTime, struct timeval endTime, double arrayExecutionTime[], int i, double* ascOrderTime, double* decOrderTime);
void choiceSelection(int* array, int size, struct timeval startTime, struct timeval endTime, double arrayExecutionTime[], int i, double* ascOrderTime, double* decOrderTime);
void choiceInsertion(int* array, int size, struct timeval startTime, struct timeval endTime, double arrayExecutionTime[], int i, double* ascOrderTime, double* decOrderTime);
void choiceCounting(int* array, int size, struct timeval startTime, struct timeval endTime, double arrayExecutionTime[], int i, double* ascOrderTime, double* decOrderTime);
void choiceHeap(int* array, int size, struct timeval startTime, struct timeval endTime, double arrayExecutionTime[], int i, double* ascOrderTime, double* decOrderTime);
void choiceMerge(int* array, int size, struct timeval startTime, struct timeval endTime, double arrayExecutionTime[], int i, double* ascOrderTime, double* decOrderTime);
void choiceTim(int* array, int size, struct timeval startTime, struct timeval endTime, double arrayExecutionTime[], int i, double* ascOrderTime, double* decOrderTime);
void choiceQuick(int* array, int size, struct timeval startTime, struct timeval endTime, double arrayExecutionTime[], int i, double* ascOrderTime, double* decOrderTime);
void choiceShell(int* array, int size, struct timeval startTime, struct timeval endTime, double arrayExecutionTime[], int i, double* ascOrderTime, double* decOrderTime);
void choiceRadix(int* array, int size, struct timeval startTime, struct timeval endTime, double arrayExecutionTime[], int i, double* ascOrderTime, double* decOrderTime);

void showSortingMethodMenu();
void showElementQuantityMenu();
int* allocateAndFillArray(int size, int min, int max);
void shuffleArray(int* array, int size);
double calculateAverageTime(double executionTimes[], int numberOfExecutions);
void sortArrayDescending(int array[], int size);
