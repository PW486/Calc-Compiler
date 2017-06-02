import java_cup.runtime.*;
%%
%class scanner
%unicode
%cup
%line
%column

%{
private Symbol symbol(int type) {
return new Symbol(type, yyline, yycolumn);
}
private Symbol symbol(int type, Object value) {
return new Symbol(type, yyline, yycolumn, value);
}
%}

WhiteSpace = [ \t\f\r\n]
Number = [0-9]+

%%
"+" { return symbol(sym.PLUS); }
"*" { return symbol(sym.TIMES); }
"(" { return symbol(sym.LPAREN); }
")" { return symbol(sym.RPAREN); }
{Number} { return symbol(sym.NUMBER, new Integer(yytext())); }
{WhiteSpace} { /* ignore */ }
. { return symbol(sym.ERROR, yytext()); }

<<EOF>>		{ return symbol( sym.EOF ); }