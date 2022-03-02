# アセンブリを書く参考にするためasm_mock.cをアセンブルした結果を表示する
.PHONY: asm-mock
asm-mock:
	gcc -masm=intel -S asm_mock.c
	cat asm_mock.s
	rm asm_mock.s
