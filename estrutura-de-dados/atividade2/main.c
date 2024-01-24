#include <stdio.h>
#include <stdlib.h>
#include "PTcart.h"

int main(){
    float d = 0, retornaX, retornaY;
    PTcart *p = NULL, *q = NULL;
    //PTcart r;
    p = criaPTcart(10, 21);
    q = criaPTcart(7, 25);
    d = distanciaPTcart(p, q);
    //p,zona = 3;
    //q.z = 2.34;
    printf("Distãncia entre os pontos cartesianos: %f\n", d);
    atribuiPTcart(q, 15, -2);
    d = distanciaPTcart(p, q);
    printf("Nova distância entre os pontos cartesianos: %f\n", d);
    acessaPTcart(p, &retornaX, &retornaY);
    printf("Valores armazenados em p: X = %.2f e Y = %.2f\n", retornaX, retornaY);
    acessaPTcart(q, &retornaX, &retornaY);
    printf("Valores armazenados em p: X = %.2f e Y = %.2f\n", retornaX, retornaY);
    liberaPTcart(p);
    liberaPTcart(q);

    system("PAUSE");
    return 0;
}
