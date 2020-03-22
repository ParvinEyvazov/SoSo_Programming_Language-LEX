compile: lex.yy.c
	gcc lex.yy.c

lex.yy.c: soso.l
	lex soso.l

clear:
	rm compile
	rm lex.yy.c



