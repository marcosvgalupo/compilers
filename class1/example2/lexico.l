identifier [a-zA-Z]([a-zA-Z0-9])*
number [0-9]+
space [ \t\r]+
newline [\n]

%%

programa            printf("%11s: reserved word \n", yytext);
inicio              printf("%11s: reserved word \n", yytext);
fimprograma         printf("%11s: reserved word \n", yytext);

leia                printf("%11s: reserved word \n", yytext);
escreva             printf("%11s: reserved word \n", yytext);

se                  printf("%11s: reserved word \n", yytext);
entao               printf("%11s: reserved word \n", yytext);
senao               printf("%11s: reserved word \n", yytext);
fimse               printf("%11s: reserved word \n", yytext);

enquanto            printf("%11s: reserved word \n", yytext);
faca                printf("%11s: reserved word \n", yytext);
fimenquanto         printf("%11s: reserved word \n", yytext);

"+"                 printf("%11s: sum arithmetic operator \n", yytext);
"-"                 printf("%11s: subtractino arithmetic operator \n", yytext);
"*"                 printf("%11s: multiplication arithmetic operator \n", yytext);
div                 printf("%11s: division arithmetic operator \n", yytext);

">"                 printf("%11s: relacional operator\n", yytext);
"<"                 printf("%11s: relacional operator\n", yytext);
"="                 printf("%11s: relacional operator\n", yytext);

e                   printf("%11s: logical operator \n", yytext);
ou                  printf("%11s: logical operator \n", yytext);
nao                 printf("%11s: logical operator \n", yytext);

"<-"                printf("%11s: assignment operator \n", yytext);
"("                 printf("%11s: open parentheses symbol \n", yytext);
")"                 printf("%11s: close parentheses symbol \n", yytext);

inteiro             printf("%11s: reserved word \n", yytext);
logico              printf("%11s: reserved word \n", yytext);
V                   printf("%11s: true \n", yytext);
F                   printf("%11s: false \n", yytext);

{identifier}     printf("%11s: identifier \n", yytext);
{number}            printf("%11s: number\n", yytext);
{space}            /* nothing */
{newline}         /* nothing*/
.                   printf("%11s: ERROr = SYMBOL NOT RECOGNIZED!! \n", yytext);
%%

int yywrap (void) {
    return 1;
}

int main (void) {
    yylex();
    return 0;
}