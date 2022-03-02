#include <stdio.h>

int asm_fn();

int main() {
    int ret = asm_fn();
    printf("asm_fn() is called, returns %d.\n", ret);
}
