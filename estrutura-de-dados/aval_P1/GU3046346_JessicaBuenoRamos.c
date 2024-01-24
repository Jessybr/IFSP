//nome: Jéssica Bueno Ramos - prontuário: GU3046346 - data: 21/10/2023

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <locale.h>

typedef struct Carro{
    int id;
    char modelo[21];
    char placa[11];
    float valor;
}CARRO;

CARRO ColetaDados();
void ExibirDados(CARRO *vet, int n);
void LiberarDados(CARRO *vet);

int main(){
    setlocale(LC_ALL, "portuguese");
    int n;
    printf("Digite a quantidade de automóveis que deseja estocar: ");
    scanf("%d", &n);
    CARRO *car = (CARRO*) calloc(n, sizeof(CARRO*));

    for(int i = 0; i < n; i++){
        printf("\n\nDados Carro %d:\n", i + 1);
        car[i] = ColetaDados();
    }

    ExibirDados(car, n);

    FILE *f;
    f = fopen("ArquivoDadosCarro.txt", "wb");
    fwrite(car, sizeof(CARRO), n, f);
    fclose(f);

    LiberarDados(car);

    system("pause");
    return 0;
}

CARRO ColetaDados(){
    CARRO dados;
    printf("Digite a identificação (id): ");
    scanf(" %f", &dados.id);
    getchar();
    printf("Digite o modelo: ");
    fgets(dados.modelo, 20, stdin);
    printf("Digite a placa: ");
    fgets(dados.placa, 10, stdin);
    printf("Digite o valor: ");
    scanf(" %f", &dados.valor);

    return dados;
}

void ExibirDados(CARRO *vet, int n){
    for(int i = 0; i < n; i++){
        printf("\n\nCarro %d: \n", i + 1);
        printf("Id: %d\n", vet->id);
        printf("Modelo: %s\n", vet->modelo);
        printf("Placa: %s\n", vet->placa);
        printf("Valor: %.2f\n", vet->valor);
    }
}

void LiberarDados(CARRO *vet){
    free(vet);
}
