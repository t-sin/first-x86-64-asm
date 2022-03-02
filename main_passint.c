#include <stdio.h>

extern void asm_fn(int v);

void printval(int v) {
    printf("passed a value = %d\n", v);
}

int main() {
    asm_fn(142);
}
