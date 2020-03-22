# SoSo_Programming_Language
## What is SoSo for?
This language is for Cryptography. 
There are 3 main Variable in the language:
```java
int crypto_initial_value;
int crypto_last_value;
int crypto_key;
```
"crypto_initial_value" is used for initial real value. Program assign a value to "crypto_last_value" with using "crypto_key".
To create "crypto_last_value" program uses "cryptography()" function. This is a default function. (It called "FUNCTION_CRYPTO" in lexical analyasis.)

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



