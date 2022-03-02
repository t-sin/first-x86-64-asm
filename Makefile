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

# intを返す関数を書く
.PHONY: intret
intret:
	@gcc -c -masm=intel asm_intret.s
	@gcc -c main_intret.c
	@gcc asm_intret.o main_intret.o -o main_intret
	@./main_intret
	@rm main_intret main_intret.o asm_intret.o

# intを渡す関数を書く
.PHONY: passint
passint:
	@gcc -c -masm=intel asm_passint.s
	@gcc -c main_passint.c
	@gcc asm_passint.o main_passint.o -o main_passint
	@./main_passint
	@rm main_passint main_passint.o asm_passint.o
