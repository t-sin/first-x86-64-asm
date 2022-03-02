# アセンブリを書く参考にするためasm_mock.cをアセンブルした結果を表示する
.PHONY: asm-mock
asm-mock:
	gcc -masm=intel -S asm_mock.c
	cat asm_mock.s
	rm asm_mock.s

# なにもしない関数を書く
.PHONY: nop
nop:
	@gcc -c -masm=intel asm_nop.s
	@gcc -c main_nop.c
	@gcc asm_nop.o main_nop.o -o main_nop
	@./main_nop
	@rm main_nop main_nop.o asm_nop.o
