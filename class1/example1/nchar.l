%{
    int chars = 0;
    int words = 0;
    int lines = 0;
%}
%%
\n          {lines ++; chars++;}
[^\n\t]+    {words++; chars += yyleng;}
.           {chars++;}
%%
int yywrap(){return 1;}
int main (void){
    yylex();
    printf("Char = %d\t Words = %d\t Lines = %d\n", chars, words, lines);
    return 0;
    
}