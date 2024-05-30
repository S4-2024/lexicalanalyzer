package br.com.johnidouglas.lexicalanalyzer.pascal;

import java_cup.runtime.*;

%%

%{

private PascalToken createToken(String name, String value) {
    return new PascalToken(name, value, yyline + 1, yycolumn + 1);
}

%}

%public
%class LexicalAnalyzer
%type PascalToken
%line
%column

// Regular expressions for tokens
inteiro = 0|[1-9][0-9]*
real = [0-9]+\.[0-9]+
identificador = [a-zA-Z_][a-zA-Z0-9_]*
brancos = [ \t\r\n]+
comentario = "{"[^}]*"}" | "//".*
string = \"([^\\\"]|\\.)*\"
operador = "+"|"-"|"*"|"/"|"<"|">"|"<="|">="|"="|"<>"|":="
pontuacao = ";"|","|"."|"(" |")"|":"

// Keywords
program = "program"
begin = "begin"
end = "end"
var = "var"
integer = "integer"
real_kw = "real"
boolean = "boolean"
true_kw = "true"
false_kw = "false"
if_kw = "if"
then = "then"
else_kw = "else"
while_kw = "while"
do_kw = "do"
write = "write"
writeln = "writeln"
read = "read"
readln = "readln"

%%

// Rules for tokens
{inteiro}       { return createToken("inteiro", yytext()); }
{real}          { return createToken("real", yytext()); }
{identificador} { return createToken("identificador", yytext()); }
{brancos} 		{ /**/ }
{comentario}    { /* Ignorar comentários */ }
{string}        { return createToken("string", yytext()); }
{operador}      { return createToken("operador", yytext()); }
{pontuacao}     { return createToken("pontuacao", yytext()); }

{program} 		{ return createToken(yytext(), "");} 
{begin}         { return createToken("begin", ""); }
{end}           { return createToken("end", ""); }
{var}           { return createToken("var", ""); }
{integer}       { return createToken("integer", ""); }
{real_kw}       { return createToken("real", ""); }
{boolean}       { return createToken("boolean", ""); }
{true_kw}       { return createToken("true", ""); }
{false_kw}      { return createToken("false", ""); }
{if_kw}         { return createToken("if", ""); }
{then}          { return createToken("then", ""); }
{else_kw}       { return createToken("else", ""); }
{while_kw}      { return createToken("while", ""); }
{do_kw}         { return createToken("do", ""); }
{write}         { return createToken("write", ""); }
{writeln}       { return createToken("writeln", ""); }
{read}          { return createToken("read", ""); }
{readln}        { return createToken("readln", ""); }


. { throw new RuntimeException("Caractere inválido " + yytext() + " na linha " + yyline + ", coluna " +yycolumn); }