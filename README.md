# SoSo_Programming_Language
## How It works?
Firstly run the Makefile
```bash
first@computer$ ls
Makefile myfile.so soso.l
first@computer$ make
lex soso.l
gcc lex.yy.c
```

Then a.out file has been created
We have "myfile.so" file that contains my language codes.

##How to do Lexical Analysis?
Start Analysing with using this "a.out" and "myfile.so".

```bash
first@computer$  ./a.out <<myfile.so
```

