void asm_fn() {
    return;
}

int asm_fn2() {
    return 42;
}

#include <stdio.h>

void printval(int v) {
   printf("passed a value = %d\n", v);
}

void asm_fn3(int v) {
    printval(v);
}
