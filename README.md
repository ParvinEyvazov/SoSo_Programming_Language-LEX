# SoSo_Programming_Language
## How It works?
Firstly run the Makefile
```bash
first@computer$  ls
Makefile   myfile.so   soso.l
first@computer$  make
lex soso.l
gcc lex.yy.c
```

Then a.out file has been created
We have "myfile.so" file that contains my language codes.

## How to do Lexical Analysis?
Start Analysing with using this "a.out" and "myfile.so".

```bash
first@computer$  ./a.out <myfile.so
```

## Example Result
Let`s take some example code that written in this language.

```java
while(done = true ){
if(newCrypto == 30) {
 done = false;
}
newCrypto ++;
}
```

This is the result of lexical analysis : 

```bash
WHILE_CASE PARANTHESES_LEFT Variable : done SIGN_EQUAL BOOLEAN_TRUE PARANTHESES_RIGHT CURLY_BRACKET_LEFT
IF_CASE PARANTHESES_LEFT Variable : newCrypto SIGN_IS_EQUAL INTEGER PARANTHESES_RIGHT CURLY_BRACKET_LEFT
Variable : done SIGN_EQUAL BOOLEAN_FALSE SEMICOLON
CURLY_BRACKET_RIGHT
Variable : newCrypto INCREASE_ONE SEMICOLON
CURLY_BRACKET_RIGHT
```



