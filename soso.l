%{
#include<stdio.h>
#include<stdlib.h>
static void randomUret(void);
int crypto_initial_value;
int crypto_last_value;
int crypto_key;
static void cryptography();
%}

%%
"//".*			{/* consume //-comment */}

"cryptography()" 	{printf("FUNCTION_CRYPTO ");}

"crypto_key"		{printf("IMTEGER_CRYPTO_KEY ");}

"crypto_initial_value" 	{printf("INTEGER_CRYPTO_INITIAL_VALUE ");}

"crypto_last_value" 	{printf("INTEGER_CRPTO_LAST_VALUE ");}

"createRandomNumber" 	{randomUret();}

"true" 		{printf("BOOLEAN_TRUE ");}

"false" 	{printf("BOOLEAN_FALSE ");}

[0-9]* 		{printf("INTEGER ");}

[0-9]*\.[0-9]*  {printf("DOUBLE ");}

"++"	  {printf("INCREASE_ONE ");}
"--"	  {printf("DECREASE_ONE ");}
"+" 	  {printf("SIGN_PLUS ");}
"-" 	  {printf("SIGN_MINUS ");}
"/" 	  {printf("SIGN_DIVIDE ");}
"*" 	  {printf("SIGN_MULTIPLY ");}
"<=" 	  {printf("SIGN_SMALLER_AND_EQUAL ");}
">="	  {printf("SIGN_GREATER_AND_EQUAL ");}
">"	  {printf("SIGN_GREATER ");}
"<"	  {printf("SIGN_SMALLER ");}
"||"	  {printf("OPERATOR_OR ");}
"&&"	  {printf("OPERATOR_AND ");}
","	  {printf("COMMA ");}
":"	  {printf("COLON ");}
"==" 	  {printf("SIGN_IS_EQUAL ");}
"=" 	  {printf("SIGN_EQUAL ");}
";" 	  {printf("SEMICOLON ");}
"(" 	  {printf("PARANTHESES_LEFT ");}
")" 	  {printf("PARANTHESES_RIGHT ");}
"if" 	  {printf("IF_CASE ");}
"else"	  {printf("ELSE_CASE ");}
"switch"  {printf("SWITCH_CASE ");}
"case"	  {printf("CASE ");}
"while"   {printf("WHILE_CASE ");}
"for" 	  {printf("FOR_LOOP ");}
"{" 	  {printf("CURLY_BRACKET_LEFT ");}
"}" 	  {printf("CURLY_BRACKET_RIGHT ");}




[a-zA-Z][_a-zA-Z0-9]* {printf("Variable : %s ",yytext);}
[\n]+	{printf("\n");}
[\t]	;
.	{}


%%

int yywrap(void){
	return 1;
}

static void randomUret(void){
	int i = rand() % 100;
	printf("Uretilen random deger : %d",i);
}

int main(){
	yylex();
	return 1;
	
}
