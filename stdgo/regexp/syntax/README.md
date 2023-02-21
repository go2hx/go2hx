# Module: `stdgo.regexp.syntax`

[(view library index)](../../stdgo.md)


# Overview





Package syntax parses regular expressions into parse trees and compiles  
parse trees into programs. Most clients of regular expressions will use the  
facilities of package regexp \(such as Compile and Match\) instead of this package.  



\# Syntax  



The regular expression syntax understood by this package when parsing with the Perl flag is as follows.  
Parts of the syntax can be disabled by passing alternate flags to Parse.  



Single characters:  






.              any character, possibly including newline \(flag s=true\)  



\[xyz\]          character class  



\[^xyz\]         negated character class  



\\d             Perl character class  



\\D             negated Perl character class  



\[\[:alpha:\]\]    ASCII character class  



\[\[:^alpha:\]\]   negated ASCII character class  



\\pN            Unicode character class \(one\-letter name\)  



\\p\{Greek\}      Unicode character class  



\\PN            negated Unicode character class \(one\-letter name\)  



\\P\{Greek\}      negated Unicode character class  



Composites:  






xy             x followed by y  



x|y            x or y \(prefer x\)  



Repetitions:  






x\*             zero or more x, prefer more  



x\+             one or more x, prefer more  



x?             zero or one x, prefer one  



x\{n,m\}         n or n\+1 or ... or m x, prefer more  



x\{n,\}          n or more x, prefer more  



x\{n\}           exactly n x  



x\*?            zero or more x, prefer fewer  



x\+?            one or more x, prefer fewer  



x??            zero or one x, prefer zero  



x\{n,m\}?        n or n\+1 or ... or m x, prefer fewer  



x\{n,\}?         n or more x, prefer fewer  



x\{n\}?          exactly n x  



Implementation restriction: The counting forms x\{n,m\}, x\{n,\}, and x\{n\}  
reject forms that create a minimum or maximum repetition count above 1000.  
Unlimited repetitions are not subject to this restriction.  



Grouping:  






\(re\)           numbered capturing group \(submatch\)  



\(?P\<name\>re\)   named & numbered capturing group \(submatch\)  



\(?:re\)         non\-capturing group  



\(?flags\)       set flags within current group; non\-capturing  



\(?flags:re\)    set flags during re; non\-capturing  






Flag syntax is xyz \(set\) or \-xyz \(clear\) or xy\-z \(set xy, clear z\). The flags are:  






i              case\-insensitive \(default false\)  



m              multi\-line mode: ^ and $ match begin/end line in addition to begin/end text \(default false\)  



s              let . match \\n \(default false\)  



U              ungreedy: swap meaning of x\* and x\*?, x\+ and x\+?, etc \(default false\)  



Empty strings:  






^              at beginning of text or line \(flag m=true\)  



$              at end of text \(like \\z not \\Z\) or line \(flag m=true\)  



\\A             at beginning of text  



\\b             at ASCII word boundary \(\\w on one side and \\W, \\A, or \\z on the other\)  



\\B             not at ASCII word boundary  



\\z             at end of text  



Escape sequences:  






\\a             bell \(== \\007\)  



\\f             form feed \(== \\014\)  



\\t             horizontal tab \(== \\011\)  



\\n             newline \(== \\012\)  



\\r             carriage return \(== \\015\)  



\\v             vertical tab character \(== \\013\)  



\\\*             literal \*, for any punctuation character  



\\123           octal character code \(up to three digits\)  



\\x7F           hex character code \(exactly two digits\)  



\\x\{10FFFF\}     hex character code  



\\Q...\\E        literal text ... even if ... has punctuation  



Character class elements:  






x              single character  



A\-Z            character range \(inclusive\)  



\\d             Perl character class  



\[:foo:\]        ASCII character class foo  



\\p\{Foo\}        Unicode character class Foo  



\\pF            Unicode character class F \(one\-letter name\)  



Named character classes as character class elements:  






\[\\d\]           digits \(== \\d\)  



\[^\\d\]          not digits \(== \\D\)  



\[\\D\]           not digits \(== \\D\)  



\[^\\D\]          not not digits \(== \\d\)  



\[\[:name:\]\]     named ASCII class inside character class \(== \[:name:\]\)  



\[^\[:name:\]\]    named ASCII class inside negated character class \(== \[:^name:\]\)  



\[\\p\{Name\}\]     named Unicode property inside character class \(== \\p\{Name\}\)  



\[^\\p\{Name\}\]    named Unicode property inside negated character class \(== \\P\{Name\}\)  



Perl character classes \(all ASCII\-only\):  






\\d             digits \(== \[0\-9\]\)  



\\D             not digits \(== \[^0\-9\]\)  



\\s             whitespace \(== \[\\t\\n\\f\\r \]\)  



\\S             not whitespace \(== \[^\\t\\n\\f\\r \]\)  



\\w             word characters \(== \[0\-9A\-Za\-z\_\]\)  



\\W             not word characters \(== \[^0\-9A\-Za\-z\_\]\)  



ASCII character classes:  






\[\[:alnum:\]\]    alphanumeric \(== \[0\-9A\-Za\-z\]\)  



\[\[:alpha:\]\]    alphabetic \(== \[A\-Za\-z\]\)  



\[\[:ascii:\]\]    ASCII \(== \[\\x00\-\\x7F\]\)  



\[\[:blank:\]\]    blank \(== \[\\t \]\)  



\[\[:cntrl:\]\]    control \(== \[\\x00\-\\x1F\\x7F\]\)  



\[\[:digit:\]\]    digits \(== \[0\-9\]\)  



\[\[:graph:\]\]    graphical \(== \[\!\-\~\] == \[A\-Za\-z0\-9\!"\#$%&'\(\)\*\+,\\\-./:;\<=\>?@\[\\\\\\\]^\_\`\{|\}\~\]\)  



\[\[:lower:\]\]    lower case \(== \[a\-z\]\)  



\[\[:print:\]\]    printable \(== \[ \-\~\] == \[ \[:graph:\]\]\)  



\[\[:punct:\]\]    punctuation \(== \[\!\-/:\-@\[\-\`\{\-\~\]\)  



\[\[:space:\]\]    whitespace \(== \[\\t\\n\\v\\f\\r \]\)  



\[\[:upper:\]\]    upper case \(== \[A\-Z\]\)  



\[\[:word:\]\]     word characters \(== \[0\-9A\-Za\-z\_\]\)  



\[\[:xdigit:\]\]   hex digit \(== \[0\-9A\-Fa\-f\]\)  



Unicode character classes are those in unicode.Categories and unicode.Scripts.  






<details><summary>hl tests failed</summary>
<p>

```
Error: Command failed with error 1
stdgo/internal/Macro.macro.hx:35: define
=== RUN  TestParseSimple
Exception: regexp.syntax.testParseSimple is not yet implemented
Called from stdgo.testing.M.run (stdgo/testing/Testing.hx line 355)
Called from stdgo.regexp.syntax_test._Syntax.$Syntax_Fields_.main (stdgo/regexp/syntax_test/Syntax.hx line 50)
```
</p>
</details>

<details><summary>interp tests failed</summary>
<p>

```
stdgo/internal/Macro.macro.hx:35: define
=== RUN  TestParseSimple
Exception: regexp.syntax.testParseSimple is not yet implemented
Called from stdgo.regexp.syntax._Syntax.Syntax_Fields_.testParseSimple (stdgo/regexp/syntax/Syntax.hx line 1300 column 64)
```
</p>
</details>

<details><summary>jvm tests failed</summary>
<p>

```
IO.Overflow("write_ui16")
stdgo/internal/Macro.macro.hx:35: define
```
</p>
</details>


# Index


- [Constants](<#constants>)

- [`function benchmarkEmptyOpContext(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkemptyopcontext>)

- [`function compile(_re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo.regexp.syntax.Prog>;
}`](<#function-compile>)

- [`function emptyOpContext(_r1:stdgo.GoRune, _r2:stdgo.GoRune):stdgo.regexp.syntax.EmptyOp`](<#function-emptyopcontext>)

- [`function isWordChar(_r:stdgo.GoRune):Bool`](<#function-iswordchar>)

- [`function parse(_s:stdgo.GoString, _flags:stdgo.regexp.syntax.Flags):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo.regexp.syntax.Regexp>;
}`](<#function-parse>)

- [`function testAppendRangeCollapse(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testappendrangecollapse>)

- [`function testCompile(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcompile>)

- [`function testFoldConstants(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testfoldconstants>)

- [`function testParseFoldCase(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testparsefoldcase>)

- [`function testParseInvalidRegexps(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testparseinvalidregexps>)

- [`function testParseLiteral(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testparseliteral>)

- [`function testParseMatchNL(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testparsematchnl>)

- [`function testParseNoMatchNL(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testparsenomatchnl>)

- [`function testParseSimple(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testparsesimple>)

- [`function testSimplify(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testsimplify>)

- [`function testToStringEquivalentParse(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testtostringequivalentparse>)

- [class Inst](<#class-inst>)

  - [`function new(?op:Null<stdgo.regexp.syntax.InstOp>, ?out:stdgo.GoUInt32, ?arg:stdgo.GoUInt32, ?rune:stdgo.Slice<stdgo.GoInt32>):Void`](<#inst-function-new>)

  - [`function _op():stdgo.regexp.syntax.InstOp`](<#inst-function-_op>)

  - [`function matchEmptyWidth( _before:stdgo.GoRune, _after:stdgo.GoRune):Bool`](<#inst-function-matchemptywidth>)

  - [`function matchRune( _r:stdgo.GoRune):Bool`](<#inst-function-matchrune>)

  - [`function matchRunePos( _r:stdgo.GoRune):stdgo.GoInt`](<#inst-function-matchrunepos>)

  - [`function string():stdgo.GoString`](<#inst-function-string>)

- [class Prog](<#class-prog>)

  - [`function new(?inst:stdgo.Slice<stdgo.regexp.syntax.Inst>, ?start:Null<stdgo.GoInt>, ?numCap:Null<stdgo.GoInt>):Void`](<#prog-function-new>)

  - [`function _skipNop( _pc:stdgo.GoUInt32):stdgo.Ref<stdgo.regexp.syntax.Inst>`](<#prog-function-_skipnop>)

  - [`function prefix():{ _1:Bool; _0:stdgo.GoString;}`](<#prog-function-prefix>)

  - [`function startCond():stdgo.regexp.syntax.EmptyOp`](<#prog-function-startcond>)

  - [`function string():stdgo.GoString`](<#prog-function-string>)

- [class Regexp](<#class-regexp>)

  - [`function new(?op:Null<stdgo.regexp.syntax.Op>, ?flags:Null<stdgo.regexp.syntax.Flags>, ?sub:stdgo.Slice<stdgo.Ref<stdgo.regexp.syntax.Regexp>>, ?sub0:stdgo.GoArray<stdgo.Ref<stdgo.regexp.syntax.Regexp>>, ?rune:stdgo.Slice<stdgo.GoInt32>, ?rune0:stdgo.GoArray<stdgo.GoInt32>, ?min:Null<stdgo.GoInt>, ?max:Null<stdgo.GoInt>, ?cap:Null<stdgo.GoInt>, ?name:stdgo.GoString):Void`](<#regexp-function-new>)

  - [`function _capNames( _names:stdgo.Slice<stdgo.GoString>):Void`](<#regexp-function-_capnames>)

  - [`function capNames():stdgo.Slice<stdgo.GoString>`](<#regexp-function-capnames>)

  - [`function equal( _y:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Bool`](<#regexp-function-equal>)

  - [`function maxCap():stdgo.GoInt`](<#regexp-function-maxcap>)

  - [`function simplify():stdgo.Ref<stdgo.regexp.syntax.Regexp>`](<#regexp-function-simplify>)

  - [`function string():stdgo.GoString`](<#regexp-function-string>)

- [class T\_error](<#class-t_error>)

  - [`function new(?code:Null<stdgo.regexp.syntax.ErrorCode>, ?expr:stdgo.GoString):Void`](<#t_error-function-new>)

  - [`function error():stdgo.GoString`](<#t_error-function-error>)

- [typedef EmptyOp](<#typedef-emptyop>)

- [typedef ErrorCode](<#typedef-errorcode>)

- [typedef Flags](<#typedef-flags>)

- [typedef InstOp](<#typedef-instop>)

- [typedef Op](<#typedef-op>)

# Constants


```haxe
import stdgo.regexp.syntax.Syntax
```


```haxe
final classNL:stdgo.regexp.syntax.Flags = ((((0 : GoUInt16)) : Flags))
```


allow character classes like \[^a\-z\] and \[\[:space:\]\] to match newline  



```haxe
final dotNL:stdgo.regexp.syntax.Flags = ((((0 : GoUInt16)) : Flags))
```


allow . to match newline  



```haxe
final emptyBeginLine:stdgo.regexp.syntax.EmptyOp = ((((0 : GoUInt8)) : EmptyOp))
```


```haxe
final emptyBeginText:stdgo.regexp.syntax.EmptyOp = ((((0 : GoUInt8)) : EmptyOp))
```


```haxe
final emptyEndLine:stdgo.regexp.syntax.EmptyOp = ((((0 : GoUInt8)) : EmptyOp))
```


```haxe
final emptyEndText:stdgo.regexp.syntax.EmptyOp = ((((0 : GoUInt8)) : EmptyOp))
```


```haxe
final emptyNoWordBoundary:stdgo.regexp.syntax.EmptyOp = ((((0 : GoUInt8)) : EmptyOp))
```


```haxe
final emptyWordBoundary:stdgo.regexp.syntax.EmptyOp = ((((0 : GoUInt8)) : EmptyOp))
```


```haxe
final errInternalError:stdgo.regexp.syntax.ErrorCode = (((("" : GoString)) : ErrorCode))
```


Unexpected error  



```haxe
final errInvalidCharClass:stdgo.regexp.syntax.ErrorCode = (((("" : GoString)) : ErrorCode))
```


Parse errors  



```haxe
final errInvalidCharRange:stdgo.regexp.syntax.ErrorCode = (((("" : GoString)) : ErrorCode))
```


```haxe
final errInvalidEscape:stdgo.regexp.syntax.ErrorCode = (((("" : GoString)) : ErrorCode))
```


```haxe
final errInvalidNamedCapture:stdgo.regexp.syntax.ErrorCode = (((("" : GoString)) : ErrorCode))
```


```haxe
final errInvalidPerlOp:stdgo.regexp.syntax.ErrorCode = (((("" : GoString)) : ErrorCode))
```


```haxe
final errInvalidRepeatOp:stdgo.regexp.syntax.ErrorCode = (((("" : GoString)) : ErrorCode))
```


```haxe
final errInvalidRepeatSize:stdgo.regexp.syntax.ErrorCode = (((("" : GoString)) : ErrorCode))
```


```haxe
final errInvalidUTF8:stdgo.regexp.syntax.ErrorCode = (((("" : GoString)) : ErrorCode))
```


```haxe
final errLarge:stdgo.regexp.syntax.ErrorCode = (((("" : GoString)) : ErrorCode))
```


```haxe
final errMissingBracket:stdgo.regexp.syntax.ErrorCode = (((("" : GoString)) : ErrorCode))
```


```haxe
final errMissingParen:stdgo.regexp.syntax.ErrorCode = (((("" : GoString)) : ErrorCode))
```


```haxe
final errMissingRepeatArgument:stdgo.regexp.syntax.ErrorCode = (((("" : GoString)) : ErrorCode))
```


```haxe
final errNestingDepth:stdgo.regexp.syntax.ErrorCode = (((("" : GoString)) : ErrorCode))
```


```haxe
final errTrailingBackslash:stdgo.regexp.syntax.ErrorCode = (((("" : GoString)) : ErrorCode))
```


```haxe
final errUnexpectedParen:stdgo.regexp.syntax.ErrorCode = (((("" : GoString)) : ErrorCode))
```


```haxe
final foldCase:stdgo.regexp.syntax.Flags = ((((0 : GoUInt16)) : Flags))
```


case\-insensitive match  



```haxe
final instAlt:stdgo.regexp.syntax.InstOp = ((((0 : GoUInt8)) : InstOp))
```


```haxe
final instAltMatch:stdgo.regexp.syntax.InstOp = ((((0 : GoUInt8)) : InstOp))
```


```haxe
final instCapture:stdgo.regexp.syntax.InstOp = ((((0 : GoUInt8)) : InstOp))
```


```haxe
final instEmptyWidth:stdgo.regexp.syntax.InstOp = ((((0 : GoUInt8)) : InstOp))
```


```haxe
final instFail:stdgo.regexp.syntax.InstOp = ((((0 : GoUInt8)) : InstOp))
```


```haxe
final instMatch:stdgo.regexp.syntax.InstOp = ((((0 : GoUInt8)) : InstOp))
```


```haxe
final instNop:stdgo.regexp.syntax.InstOp = ((((0 : GoUInt8)) : InstOp))
```


```haxe
final instRune:stdgo.regexp.syntax.InstOp = ((((0 : GoUInt8)) : InstOp))
```


```haxe
final instRune1:stdgo.regexp.syntax.InstOp = ((((0 : GoUInt8)) : InstOp))
```


```haxe
final instRuneAny:stdgo.regexp.syntax.InstOp = ((((0 : GoUInt8)) : InstOp))
```


```haxe
final instRuneAnyNotNL:stdgo.regexp.syntax.InstOp = ((((0 : GoUInt8)) : InstOp))
```


```haxe
final literal:stdgo.regexp.syntax.Flags = ((((0 : GoUInt16)) : Flags))
```


treat pattern as literal string  



```haxe
final matchNL:stdgo.regexp.syntax.Flags = ((((0 : GoUInt16)) : Flags))
```


```haxe
final nonGreedy:stdgo.regexp.syntax.Flags = ((((0 : GoUInt16)) : Flags))
```


make repetition operators default to non\-greedy  



```haxe
final oneLine:stdgo.regexp.syntax.Flags = ((((0 : GoUInt16)) : Flags))
```


treat ^ and $ as only matching at beginning and end of text  



```haxe
final opAlternate:stdgo.regexp.syntax.Op = ((((0 : GoUInt8)) : Op))
```


matches alternation of Subs  



```haxe
final opAnyChar:stdgo.regexp.syntax.Op = ((((0 : GoUInt8)) : Op))
```


matches any character  



```haxe
final opAnyCharNotNL:stdgo.regexp.syntax.Op = ((((0 : GoUInt8)) : Op))
```


matches any character except newline  



```haxe
final opBeginLine:stdgo.regexp.syntax.Op = ((((0 : GoUInt8)) : Op))
```


matches empty string at beginning of line  



```haxe
final opBeginText:stdgo.regexp.syntax.Op = ((((0 : GoUInt8)) : Op))
```


matches empty string at beginning of text  



```haxe
final opCapture:stdgo.regexp.syntax.Op = ((((0 : GoUInt8)) : Op))
```


capturing subexpression with index Cap, optional name Name  



```haxe
final opCharClass:stdgo.regexp.syntax.Op = ((((0 : GoUInt8)) : Op))
```


matches Runes interpreted as range pair list  



```haxe
final opConcat:stdgo.regexp.syntax.Op = ((((0 : GoUInt8)) : Op))
```


matches concatenation of Subs  



```haxe
final opEmptyMatch:stdgo.regexp.syntax.Op = ((((0 : GoUInt8)) : Op))
```


matches empty string  



```haxe
final opEndLine:stdgo.regexp.syntax.Op = ((((0 : GoUInt8)) : Op))
```


matches empty string at end of line  



```haxe
final opEndText:stdgo.regexp.syntax.Op = ((((0 : GoUInt8)) : Op))
```


matches empty string at end of text  



```haxe
final opLiteral:stdgo.regexp.syntax.Op = ((((0 : GoUInt8)) : Op))
```


matches Runes sequence  



```haxe
final opNoMatch:stdgo.regexp.syntax.Op = ((((0 : GoUInt8)) : Op))
```


matches no strings  



```haxe
final opNoWordBoundary:stdgo.regexp.syntax.Op = ((((0 : GoUInt8)) : Op))
```


matches word non\-boundary \`\\B\`  



```haxe
final opPlus:stdgo.regexp.syntax.Op = ((((0 : GoUInt8)) : Op))
```


matches Sub\[0\] one or more times  



```haxe
final opQuest:stdgo.regexp.syntax.Op = ((((0 : GoUInt8)) : Op))
```


matches Sub\[0\] zero or one times  



```haxe
final opRepeat:stdgo.regexp.syntax.Op = ((((0 : GoUInt8)) : Op))
```


matches Sub\[0\] at least Min times, at most Max \(Max == \-1 is no limit\)  



```haxe
final opStar:stdgo.regexp.syntax.Op = ((((0 : GoUInt8)) : Op))
```


matches Sub\[0\] zero or more times  



```haxe
final opWordBoundary:stdgo.regexp.syntax.Op = ((((0 : GoUInt8)) : Op))
```


matches word boundary \`\\b\`  



```haxe
final perl:stdgo.regexp.syntax.Flags = ((((0 : GoUInt16)) : Flags))
```


as close to Perl as possible  



```haxe
final perlX:stdgo.regexp.syntax.Flags = ((((0 : GoUInt16)) : Flags))
```


allow Perl extensions  



```haxe
final posix:stdgo.regexp.syntax.Flags = ((((0 : GoUInt16)) : Flags))
```


POSIX syntax  



```haxe
final simple:stdgo.regexp.syntax.Flags = ((((0 : GoUInt16)) : Flags))
```


regexp contains no counted repetition  



```haxe
final unicodeGroups:stdgo.regexp.syntax.Flags = ((((0 : GoUInt16)) : Flags))
```


allow \\p\{Han\}, \\P\{Han\} for Unicode group and negation  



```haxe
final wasDollar:stdgo.regexp.syntax.Flags = ((((0 : GoUInt16)) : Flags))
```


regexp OpEndText was $, not \\z  



# Functions


```haxe
import stdgo.regexp.syntax.Syntax
```


## function benchmarkEmptyOpContext


```haxe
function benchmarkEmptyOpContext(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Syntax.hx#L1346>)


## function compile


```haxe
function compile(_re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo.regexp.syntax.Prog>;
}
```


Compile compiles the regexp into a program to be executed.  
The regexp should have been simplified already \(returned from re.Simplify\).  



[\(view code\)](<./Syntax.hx#L1194>)


## function emptyOpContext


```haxe
function emptyOpContext(_r1:stdgo.GoRune, _r2:stdgo.GoRune):stdgo.regexp.syntax.EmptyOp
```


EmptyOpContext returns the zero\-width assertions  
satisfied at the position between the runes r1 and r2.  
Passing r1 == \-1 indicates that the position is  
at the beginning of the text.  
Passing r2 == \-1 indicates that the position is  
at the end of the text.  



[\(view code\)](<./Syntax.hx#L1334>)


## function isWordChar


```haxe
function isWordChar(_r:stdgo.GoRune):Bool
```


IsWordChar reports whether r is considered a “word character”  
during the evaluation of the \\b and \\B zero\-width assertions.  
These assertions are ASCII\-only: the word characters are \[A\-Za\-z0\-9\_\].  



[\(view code\)](<./Syntax.hx#L1340>)


## function parse


```haxe
function parse(_s:stdgo.GoString, _flags:stdgo.regexp.syntax.Flags):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo.regexp.syntax.Regexp>;
}
```


Parse parses a regular expression string s, controlled by the specified  
Flags, and returns a regular expression parse tree. The syntax is  
described in the top\-level comment.  



[\(view code\)](<./Syntax.hx#L1221>)


## function testAppendRangeCollapse


```haxe
function testAppendRangeCollapse(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Syntax.hx#L1323>)


## function testCompile


```haxe
function testCompile(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Syntax.hx#L1345>)


## function testFoldConstants


```haxe
function testFoldConstants(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Syntax.hx#L1322>)


## function testParseFoldCase


```haxe
function testParseFoldCase(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Syntax.hx#L1301>)


## function testParseInvalidRegexps


```haxe
function testParseInvalidRegexps(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Syntax.hx#L1324>)


## function testParseLiteral


```haxe
function testParseLiteral(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Syntax.hx#L1302>)


## function testParseMatchNL


```haxe
function testParseMatchNL(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Syntax.hx#L1303>)


## function testParseNoMatchNL


```haxe
function testParseNoMatchNL(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Syntax.hx#L1304>)


## function testParseSimple


```haxe
function testParseSimple(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Syntax.hx#L1300>)


## function testSimplify


```haxe
function testSimplify(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Syntax.hx#L1370>)


## function testToStringEquivalentParse


```haxe
function testToStringEquivalentParse(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Syntax.hx#L1325>)


# Classes


```haxe
import stdgo.regexp.syntax.*
```


## class Inst


An Inst is a single instruction in a regular expression program.  



```haxe
var arg:stdgo.GoUInt32
```


```haxe
var op:stdgo.regexp.syntax.InstOp
```


```haxe
var out:stdgo.GoUInt32
```


```haxe
var rune:stdgo.Slice<stdgo.GoInt32>
```


### Inst function new


```haxe
function new(?op:Null<stdgo.regexp.syntax.InstOp>, ?out:stdgo.GoUInt32, ?arg:stdgo.GoUInt32, ?rune:stdgo.Slice<stdgo.GoInt32>):Void
```





[\(view code\)](<./Syntax.hx#L1093>)


### Inst function \_op


```haxe
function _op():stdgo.regexp.syntax.InstOp
```


op returns i.Op but merges all the Rune special cases into InstRune  



[\(view code\)](<./Syntax.hx#L2018>)


### Inst function matchEmptyWidth


```haxe
function matchEmptyWidth( _before:stdgo.GoRune, _after:stdgo.GoRune):Bool
```


MatchEmptyWidth reports whether the instruction matches  
an empty string between the runes before and after.  
It should only be called when i.Op == InstEmptyWidth.  



[\(view code\)](<./Syntax.hx#L1998>)


### Inst function matchRune


```haxe
function matchRune( _r:stdgo.GoRune):Bool
```


MatchRune reports whether the instruction matches \(and consumes\) r.  
It should only be called when i.Op == InstRune.  



[\(view code\)](<./Syntax.hx#L2013>)


### Inst function matchRunePos


```haxe
function matchRunePos( _r:stdgo.GoRune):stdgo.GoInt
```


MatchRunePos checks whether the instruction matches \(and consumes\) r.  
If so, MatchRunePos returns the index of the matching rune pair  
\(or, when len\(i.Rune\) == 1, rune singleton\).  
If not, MatchRunePos returns \-1.  
MatchRunePos should only be called when i.Op == InstRune.  



[\(view code\)](<./Syntax.hx#L2007>)


### Inst function string


```haxe
function string():stdgo.GoString
```





[\(view code\)](<./Syntax.hx#L1991>)


## class Prog


A Prog is a compiled regular expression program.  



```haxe
var inst:stdgo.Slice<stdgo.regexp.syntax.Inst>
```


```haxe
var numCap:stdgo.GoInt
```


```haxe
var start:stdgo.GoInt
```


### Prog function new


```haxe
function new(?inst:stdgo.Slice<stdgo.regexp.syntax.Inst>, ?start:Null<stdgo.GoInt>, ?numCap:Null<stdgo.GoInt>):Void
```





[\(view code\)](<./Syntax.hx#L1073>)


### Prog function \_skipNop


```haxe
function _skipNop( _pc:stdgo.GoUInt32):stdgo.Ref<stdgo.regexp.syntax.Inst>
```


skipNop follows any no\-op or capturing instructions.  



[\(view code\)](<./Syntax.hx#L1947>)


### Prog function prefix


```haxe
function prefix():{
	_1:Bool;
	_0:stdgo.GoString;
}
```


Prefix returns a literal string that all matches for the  
regexp must start with. Complete is true if the prefix  
is the entire match.  



[\(view code\)](<./Syntax.hx#L1942>)


### Prog function startCond


```haxe
function startCond():stdgo.regexp.syntax.EmptyOp
```


StartCond returns the leading empty\-width conditions that must  
be true in any match. It returns ^EmptyOp\(0\) if no matches are possible.  



[\(view code\)](<./Syntax.hx#L1935>)


### Prog function string


```haxe
function string():stdgo.GoString
```





[\(view code\)](<./Syntax.hx#L1949>)


## class Regexp


A Regexp is a node in a regular expression syntax tree.  



```haxe
var cap:stdgo.GoInt
```


```haxe
var flags:stdgo.regexp.syntax.Flags
```


```haxe
var max:stdgo.GoInt
```


```haxe
var min:stdgo.GoInt
```


```haxe
var name:stdgo.GoString
```


```haxe
var op:stdgo.regexp.syntax.Op
```


```haxe
var rune:stdgo.Slice<stdgo.GoInt32>
```


```haxe
var rune0:stdgo.GoArray<stdgo.GoInt32>
```


```haxe
var sub:stdgo.Slice<stdgo.Ref<stdgo.regexp.syntax.Regexp>>
```


```haxe
var sub0:stdgo.GoArray<stdgo.Ref<stdgo.regexp.syntax.Regexp>>
```


### Regexp function new


```haxe
function new(?op:Null<stdgo.regexp.syntax.Op>, ?flags:Null<stdgo.regexp.syntax.Flags>, ?sub:stdgo.Slice<stdgo.Ref<stdgo.regexp.syntax.Regexp>>, ?sub0:stdgo.GoArray<stdgo.Ref<stdgo.regexp.syntax.Regexp>>, ?rune:stdgo.Slice<stdgo.GoInt32>, ?rune0:stdgo.GoArray<stdgo.GoInt32>, ?min:Null<stdgo.GoInt>, ?max:Null<stdgo.GoInt>, ?cap:Null<stdgo.GoInt>, ?name:stdgo.GoString):Void
```





[\(view code\)](<./Syntax.hx#L1120>)


### Regexp function \_capNames


```haxe
function _capNames( _names:stdgo.Slice<stdgo.GoString>):Void
```





[\(view code\)](<./Syntax.hx#L2072>)


### Regexp function capNames


```haxe
function capNames():stdgo.Slice<stdgo.GoString>
```


CapNames walks the regexp to find the names of capturing groups.  



[\(view code\)](<./Syntax.hx#L2077>)


### Regexp function equal


```haxe
function equal( _y:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Bool
```


Equal reports whether x and y have identical structure.  



[\(view code\)](<./Syntax.hx#L2089>)


### Regexp function maxCap


```haxe
function maxCap():stdgo.GoInt
```


MaxCap walks the regexp to find the maximum capture index.  



[\(view code\)](<./Syntax.hx#L2082>)


### Regexp function simplify


```haxe
function simplify():stdgo.Ref<stdgo.regexp.syntax.Regexp>
```


Simplify returns a regexp equivalent to re but without counted repetitions  
and with various other simplifications, such as rewriting /\(?:a\+\)\+/ to /a\+/.  
The resulting regexp will execute correctly but its string representation  
will not produce the same parse tree, because capturing parentheses  
may have been duplicated or removed. For example, the simplified form  
for /\(x\)\{1,2\}/ is /\(x\)\(x\)?/ but both parentheses capture as $1.  
The returned regexp may share structure with or be the original.  



[\(view code\)](<./Syntax.hx#L2070>)


### Regexp function string


```haxe
function string():stdgo.GoString
```





[\(view code\)](<./Syntax.hx#L2084>)


## class T\_error


An Error describes a failure to parse a regular expression  
and gives the offending expression.  



```haxe
var code:stdgo.regexp.syntax.ErrorCode
```


```haxe
var expr:stdgo.GoString
```


### T\_error function new


```haxe
function new(?code:Null<stdgo.regexp.syntax.ErrorCode>, ?expr:stdgo.GoString):Void
```





[\(view code\)](<./Syntax.hx#L957>)


### T\_error function error


```haxe
function error():stdgo.GoString
```





[\(view code\)](<./Syntax.hx#L1484>)


# Typedefs


```haxe
import stdgo.regexp.syntax.*
```


## typedef EmptyOp


```haxe
typedef EmptyOp = stdgo.GoUInt8;
```


An EmptyOp specifies a kind or mixture of zero\-width assertions.  



## typedef ErrorCode


```haxe
typedef ErrorCode = stdgo.GoString;
```


An ErrorCode describes a failure to parse a regular expression.  



## typedef Flags


```haxe
typedef Flags = stdgo.GoUInt16;
```


Flags control the behavior of the parser and record information about regexp context.  



## typedef InstOp


```haxe
typedef InstOp = stdgo.GoUInt8;
```


An InstOp is an instruction opcode.  



## typedef Op


```haxe
typedef Op = stdgo.GoUInt8;
```


An Op is a single regular expression operator.  



