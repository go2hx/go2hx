# Module: `stdgo.regexp.syntax`

[(view library index)](../../stdgo.md)


# Overview



Package syntax parses regular expressions into parse trees and compiles
parse trees into programs. Most clients of regular expressions will use the
facilities of package regexp \(such as Compile and Match\) instead of this package.  

## Syntax



The regular expression syntax understood by this package when parsing with the Perl flag is as follows.
Parts of the syntax can be disabled by passing alternate flags to Parse.  


Single characters:  

```
    	.              any character, possibly including newline (flag s=true)
    	[xyz]          character class
    	[^xyz]         negated character class
    	\d             Perl character class
    	\D             negated Perl character class
    	[[:alpha:]]    ASCII character class
    	[[:^alpha:]]   negated ASCII character class
    	\pN            Unicode character class (one-letter name)
    	\p{Greek}      Unicode character class
    	\PN            negated Unicode character class (one-letter name)
    	\P{Greek}      negated Unicode character class
```

Composites:  

```
    	xy             x followed by y
    	x|y            x or y (prefer x)
```

Repetitions:  

```
    	x*             zero or more x, prefer more
    	x+             one or more x, prefer more
    	x?             zero or one x, prefer one
    	x{n,m}         n or n+1 or ... or m x, prefer more
    	x{n,}          n or more x, prefer more
    	x{n}           exactly n x
    	x*?            zero or more x, prefer fewer
    	x+?            one or more x, prefer fewer
    	x??            zero or one x, prefer zero
    	x{n,m}?        n or n+1 or ... or m x, prefer fewer
    	x{n,}?         n or more x, prefer fewer
    	x{n}?          exactly n x
```

Implementation restriction: The counting forms x\{n,m\}, x\{n,\}, and x\{n\}
reject forms that create a minimum or maximum repetition count above 1000.
Unlimited repetitions are not subject to this restriction.  


Grouping:  

```
    	(re)           numbered capturing group (submatch)
    	(?P<name>re)   named & numbered capturing group (submatch)
    	(?:re)         non-capturing group
    	(?flags)       set flags within current group; non-capturing
    	(?flags:re)    set flags during re; non-capturing
```
```
    	Flag syntax is xyz (set) or -xyz (clear) or xy-z (set xy, clear z). The flags are:
```
```
    	i              case-insensitive (default false)
    	m              multi-line mode: ^ and $ match begin/end line in addition to begin/end text (default false)
    	s              let . match \n (default false)
    	U              ungreedy: swap meaning of x* and x*?, x+ and x+?, etc (default false)
```

Empty strings:  

```
    	^              at beginning of text or line (flag m=true)
    	$              at end of text (like \z not \Z) or line (flag m=true)
    	\A             at beginning of text
    	\b             at ASCII word boundary (\w on one side and \W, \A, or \z on the other)
    	\B             not at ASCII word boundary
    	\z             at end of text
```

Escape sequences:  

```
    	\a             bell (== \007)
    	\f             form feed (== \014)
    	\t             horizontal tab (== \011)
    	\n             newline (== \012)
    	\r             carriage return (== \015)
    	\v             vertical tab character (== \013)
    	\*             literal *, for any punctuation character *
    	\123           octal character code (up to three digits)
    	\x7F           hex character code (exactly two digits)
    	\x{10FFFF}     hex character code
    	\Q...\E        literal text ... even if ... has punctuation
```

Character class elements:  

```
    	x              single character
    	A-Z            character range (inclusive)
    	\d             Perl character class
    	[:foo:]        ASCII character class foo
    	\p{Foo}        Unicode character class Foo
    	\pF            Unicode character class F (one-letter name)
```

Named character classes as character class elements:  

```
    	[\d]           digits (== \d)
    	[^\d]          not digits (== \D)
    	[\D]           not digits (== \D)
    	[^\D]          not not digits (== \d)
    	[[:name:]]     named ASCII class inside character class (== [:name:])
    	[^[:name:]]    named ASCII class inside negated character class (== [:^name:])
    	[\p{Name}]     named Unicode property inside character class (== \p{Name})
    	[^\p{Name}]    named Unicode property inside negated character class (== \P{Name})
```

Perl character classes \(all ASCII\-only\):  

```
    	\d             digits (== [0-9])
    	\D             not digits (== [^0-9])
    	\s             whitespace (== [\t\n\f\r ])
    	\S             not whitespace (== [^\t\n\f\r ])
    	\w             word characters (== [0-9A-Za-z_])
    	\W             not word characters (== [^0-9A-Za-z_])
```

ASCII character classes:  

```
    	[[:alnum:]]    alphanumeric (== [0-9A-Za-z])
    	[[:alpha:]]    alphabetic (== [A-Za-z])
    	[[:ascii:]]    ASCII (== [\x00-\x7F])
    	[[:blank:]]    blank (== [\t ])
    	[[:cntrl:]]    control (== [\x00-\x1F\x7F])
    	[[:digit:]]    digits (== [0-9])
    	[[:graph:]]    graphical (== [!-~] == [A-Za-z0-9!"#$%&'()*+,\-./:;<=>?@[\\\]^_`{|}~])
    	[[:lower:]]    lower case (== [a-z])
    	[[:print:]]    printable (== [ -~] == [ [:graph:]])
    	[[:punct:]]    punctuation (== [!-/:-@[-`{-~])
    	[[:space:]]    whitespace (== [\t\n\v\f\r ])
    	[[:upper:]]    upper case (== [A-Z])
    	[[:word:]]     word characters (== [0-9A-Za-z_])
    	[[:xdigit:]]   hex digit (== [0-9A-Fa-f])
```

Unicode character classes are those in unicode.Categories and unicode.Scripts.  

# Index


- [Constants](<#constants>)

- [`function benchmarkEmptyOpContext(b:stdgo._internal.testing.B):Void`](<#function-benchmarkemptyopcontext>)

- [`function benchmarkIsWordChar(b:stdgo._internal.testing.B):Void`](<#function-benchmarkiswordchar>)

- [`function compile(re:stdgo.regexp.syntax.Regexp):stdgo.Tuple<stdgo.regexp.syntax.Prog, stdgo.Error>`](<#function-compile>)

- [`function emptyOpContext(r1:Int, r2:Int):stdgo.regexp.syntax.EmptyOp`](<#function-emptyopcontext>)

- [`function isWordChar(r:Int):Bool`](<#function-iswordchar>)

- [`function parse(s:String, flags:stdgo.regexp.syntax.Flags):stdgo.Tuple<stdgo.regexp.syntax.Regexp, stdgo.Error>`](<#function-parse>)

- [`function testAppendRangeCollapse(t:stdgo._internal.testing.T_):Void`](<#function-testappendrangecollapse>)

- [`function testCompile(t:stdgo._internal.testing.T_):Void`](<#function-testcompile>)

- [`function testFoldConstants(t:stdgo._internal.testing.T_):Void`](<#function-testfoldconstants>)

- [`function testParseFoldCase(t:stdgo._internal.testing.T_):Void`](<#function-testparsefoldcase>)

- [`function testParseInvalidRegexps(t:stdgo._internal.testing.T_):Void`](<#function-testparseinvalidregexps>)

- [`function testParseLiteral(t:stdgo._internal.testing.T_):Void`](<#function-testparseliteral>)

- [`function testParseMatchNL(t:stdgo._internal.testing.T_):Void`](<#function-testparsematchnl>)

- [`function testParseNoMatchNL(t:stdgo._internal.testing.T_):Void`](<#function-testparsenomatchnl>)

- [`function testParseSimple(t:stdgo._internal.testing.T_):Void`](<#function-testparsesimple>)

- [`function testSimplify(t:stdgo._internal.testing.T_):Void`](<#function-testsimplify>)

- [`function testToStringEquivalentParse(t:stdgo._internal.testing.T_):Void`](<#function-testtostringequivalentparse>)

- [typedef EmptyOp](<#typedef-emptyop>)

- [typedef Error](<#typedef-error>)

- [typedef ErrorCode](<#typedef-errorcode>)

- [typedef ErrorCode\_asInterface](<#typedef-errorcode_asinterface>)

- [typedef ErrorCode\_static\_extension](<#typedef-errorcode_static_extension>)

- [typedef Error\_asInterface](<#typedef-error_asinterface>)

- [typedef Error\_static\_extension](<#typedef-error_static_extension>)

- [typedef Flags](<#typedef-flags>)

- [typedef Inst](<#typedef-inst>)

- [typedef InstOp](<#typedef-instop>)

- [typedef InstOp\_asInterface](<#typedef-instop_asinterface>)

- [typedef InstOp\_static\_extension](<#typedef-instop_static_extension>)

- [typedef Inst\_asInterface](<#typedef-inst_asinterface>)

- [typedef Inst\_static\_extension](<#typedef-inst_static_extension>)

- [typedef Op](<#typedef-op>)

- [typedef Op\_asInterface](<#typedef-op_asinterface>)

- [typedef Op\_static\_extension](<#typedef-op_static_extension>)

- [typedef Prog](<#typedef-prog>)

- [typedef Prog\_asInterface](<#typedef-prog_asinterface>)

- [typedef Prog\_static\_extension](<#typedef-prog_static_extension>)

- [typedef Regexp](<#typedef-regexp>)

- [typedef Regexp\_asInterface](<#typedef-regexp_asinterface>)

- [typedef Regexp\_static\_extension](<#typedef-regexp_static_extension>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_0\_asInterface](<#typedef-t__struct_0_asinterface>)

- [typedef T\_\_struct\_0\_static\_extension](<#typedef-t__struct_0_static_extension>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

- [typedef T\_\_struct\_1\_asInterface](<#typedef-t__struct_1_asinterface>)

- [typedef T\_\_struct\_1\_static\_extension](<#typedef-t__struct_1_static_extension>)

- [typedef T\_\_struct\_2](<#typedef-t__struct_2>)

- [typedef T\_\_struct\_2\_asInterface](<#typedef-t__struct_2_asinterface>)

- [typedef T\_\_struct\_2\_static\_extension](<#typedef-t__struct_2_static_extension>)

- [typedef T\_charGroup](<#typedef-t_chargroup>)

- [typedef T\_compiler](<#typedef-t_compiler>)

- [typedef T\_compiler\_asInterface](<#typedef-t_compiler_asinterface>)

- [typedef T\_compiler\_static\_extension](<#typedef-t_compiler_static_extension>)

- [typedef T\_frag](<#typedef-t_frag>)

- [typedef T\_parseTest](<#typedef-t_parsetest>)

- [typedef T\_parser](<#typedef-t_parser>)

- [typedef T\_parser\_asInterface](<#typedef-t_parser_asinterface>)

- [typedef T\_parser\_static\_extension](<#typedef-t_parser_static_extension>)

- [typedef T\_patchList](<#typedef-t_patchlist>)

- [typedef T\_patchList\_asInterface](<#typedef-t_patchlist_asinterface>)

- [typedef T\_patchList\_static\_extension](<#typedef-t_patchlist_static_extension>)

- [typedef T\_ranges](<#typedef-t_ranges>)

- [typedef T\_ranges\_asInterface](<#typedef-t_ranges_asinterface>)

- [typedef T\_ranges\_static\_extension](<#typedef-t_ranges_static_extension>)

# Constants


```haxe
import stdgo.regexp.syntax.Syntax
```


```haxe
final classNL:stdgo._internal.regexp.syntax.Flags = stdgo._internal.regexp.syntax.Syntax.classNL
```


```haxe
final dotNL:stdgo._internal.regexp.syntax.Flags = stdgo._internal.regexp.syntax.Syntax.dotNL
```


```haxe
final emptyBeginLine:stdgo._internal.regexp.syntax.EmptyOp = stdgo._internal.regexp.syntax.Syntax.emptyBeginLine
```


```haxe
final emptyBeginText:stdgo._internal.regexp.syntax.EmptyOp = stdgo._internal.regexp.syntax.Syntax.emptyBeginText
```


```haxe
final emptyEndLine:stdgo._internal.regexp.syntax.EmptyOp = stdgo._internal.regexp.syntax.Syntax.emptyEndLine
```


```haxe
final emptyEndText:stdgo._internal.regexp.syntax.EmptyOp = stdgo._internal.regexp.syntax.Syntax.emptyEndText
```


```haxe
final emptyNoWordBoundary:stdgo._internal.regexp.syntax.EmptyOp = stdgo._internal.regexp.syntax.Syntax.emptyNoWordBoundary
```


```haxe
final emptyWordBoundary:stdgo._internal.regexp.syntax.EmptyOp = stdgo._internal.regexp.syntax.Syntax.emptyWordBoundary
```


```haxe
final errInternalError:stdgo._internal.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errInternalError
```


```haxe
final errInvalidCharClass:stdgo._internal.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errInvalidCharClass
```


```haxe
final errInvalidCharRange:stdgo._internal.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errInvalidCharRange
```


```haxe
final errInvalidEscape:stdgo._internal.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errInvalidEscape
```


```haxe
final errInvalidNamedCapture:stdgo._internal.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errInvalidNamedCapture
```


```haxe
final errInvalidPerlOp:stdgo._internal.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errInvalidPerlOp
```


```haxe
final errInvalidRepeatOp:stdgo._internal.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errInvalidRepeatOp
```


```haxe
final errInvalidRepeatSize:stdgo._internal.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errInvalidRepeatSize
```


```haxe
final errInvalidUTF8:stdgo._internal.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errInvalidUTF8
```


```haxe
final errLarge:stdgo._internal.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errLarge
```


```haxe
final errMissingBracket:stdgo._internal.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errMissingBracket
```


```haxe
final errMissingParen:stdgo._internal.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errMissingParen
```


```haxe
final errMissingRepeatArgument:stdgo._internal.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errMissingRepeatArgument
```


```haxe
final errNestingDepth:stdgo._internal.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errNestingDepth
```


```haxe
final errTrailingBackslash:stdgo._internal.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errTrailingBackslash
```


```haxe
final errUnexpectedParen:stdgo._internal.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errUnexpectedParen
```


```haxe
final foldCase:stdgo._internal.regexp.syntax.Flags = stdgo._internal.regexp.syntax.Syntax.foldCase
```


```haxe
final instAlt:stdgo._internal.regexp.syntax.InstOp = stdgo._internal.regexp.syntax.Syntax.instAlt
```


```haxe
final instAltMatch:stdgo._internal.regexp.syntax.InstOp = stdgo._internal.regexp.syntax.Syntax.instAltMatch
```


```haxe
final instCapture:stdgo._internal.regexp.syntax.InstOp = stdgo._internal.regexp.syntax.Syntax.instCapture
```


```haxe
final instEmptyWidth:stdgo._internal.regexp.syntax.InstOp = stdgo._internal.regexp.syntax.Syntax.instEmptyWidth
```


```haxe
final instFail:stdgo._internal.regexp.syntax.InstOp = stdgo._internal.regexp.syntax.Syntax.instFail
```


```haxe
final instMatch:stdgo._internal.regexp.syntax.InstOp = stdgo._internal.regexp.syntax.Syntax.instMatch
```


```haxe
final instNop:stdgo._internal.regexp.syntax.InstOp = stdgo._internal.regexp.syntax.Syntax.instNop
```


```haxe
final instRune:stdgo._internal.regexp.syntax.InstOp = stdgo._internal.regexp.syntax.Syntax.instRune
```


```haxe
final instRune1:stdgo._internal.regexp.syntax.InstOp = stdgo._internal.regexp.syntax.Syntax.instRune1
```


```haxe
final instRuneAny:stdgo._internal.regexp.syntax.InstOp = stdgo._internal.regexp.syntax.Syntax.instRuneAny
```


```haxe
final instRuneAnyNotNL:stdgo._internal.regexp.syntax.InstOp = stdgo._internal.regexp.syntax.Syntax.instRuneAnyNotNL
```


```haxe
final literal:stdgo._internal.regexp.syntax.Flags = stdgo._internal.regexp.syntax.Syntax.literal
```


```haxe
final matchNL:stdgo._internal.regexp.syntax.Flags = stdgo._internal.regexp.syntax.Syntax.matchNL
```


```haxe
final nonGreedy:stdgo._internal.regexp.syntax.Flags = stdgo._internal.regexp.syntax.Syntax.nonGreedy
```


```haxe
final oneLine:stdgo._internal.regexp.syntax.Flags = stdgo._internal.regexp.syntax.Syntax.oneLine
```


```haxe
final opAlternate:stdgo._internal.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax.opAlternate
```


```haxe
final opAnyChar:stdgo._internal.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax.opAnyChar
```


```haxe
final opAnyCharNotNL:stdgo._internal.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax.opAnyCharNotNL
```


```haxe
final opBeginLine:stdgo._internal.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax.opBeginLine
```


```haxe
final opBeginText:stdgo._internal.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax.opBeginText
```


```haxe
final opCapture:stdgo._internal.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax.opCapture
```


```haxe
final opCharClass:stdgo._internal.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax.opCharClass
```


```haxe
final opConcat:stdgo._internal.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax.opConcat
```


```haxe
final opEmptyMatch:stdgo._internal.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax.opEmptyMatch
```


```haxe
final opEndLine:stdgo._internal.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax.opEndLine
```


```haxe
final opEndText:stdgo._internal.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax.opEndText
```


```haxe
final opLiteral:stdgo._internal.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax.opLiteral
```


```haxe
final opNoMatch:stdgo._internal.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax.opNoMatch
```


```haxe
final opNoWordBoundary:stdgo._internal.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax.opNoWordBoundary
```


```haxe
final opPlus:stdgo._internal.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax.opPlus
```


```haxe
final opQuest:stdgo._internal.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax.opQuest
```


```haxe
final opRepeat:stdgo._internal.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax.opRepeat
```


```haxe
final opStar:stdgo._internal.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax.opStar
```


```haxe
final opWordBoundary:stdgo._internal.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax.opWordBoundary
```


```haxe
final perl:stdgo._internal.regexp.syntax.Flags = stdgo._internal.regexp.syntax.Syntax.perl
```


```haxe
final perlX:stdgo._internal.regexp.syntax.Flags = stdgo._internal.regexp.syntax.Syntax.perlX
```


```haxe
final posix:stdgo._internal.regexp.syntax.Flags = stdgo._internal.regexp.syntax.Syntax.posix
```


```haxe
final simple:stdgo._internal.regexp.syntax.Flags = stdgo._internal.regexp.syntax.Syntax.simple
```


```haxe
final unicodeGroups:stdgo._internal.regexp.syntax.Flags = stdgo._internal.regexp.syntax.Syntax.unicodeGroups
```


```haxe
final wasDollar:stdgo._internal.regexp.syntax.Flags = stdgo._internal.regexp.syntax.Syntax.wasDollar
```


# Functions


```haxe
import stdgo.regexp.syntax.Syntax
```


## function benchmarkEmptyOpContext


```haxe
function benchmarkEmptyOpContext(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Syntax.hx#L265>)


## function benchmarkIsWordChar


```haxe
function benchmarkIsWordChar(b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Syntax.hx#L266>)


## function compile


```haxe
function compile(re:stdgo.regexp.syntax.Regexp):stdgo.Tuple<stdgo.regexp.syntax.Prog, stdgo.Error>
```



Compile compiles the regexp into a program to be executed.
The regexp should have been simplified already \(returned from re.Simplify\).  

[\(view code\)](<./Syntax.hx#L233>)


## function emptyOpContext


```haxe
function emptyOpContext(r1:Int, r2:Int):stdgo.regexp.syntax.EmptyOp
```



EmptyOpContext returns the zero\-width assertions
satisfied at the position between the runes r1 and r2.
Passing r1 == \-1 indicates that the position is
at the beginning of the text.
Passing r2 == \-1 indicates that the position is
at the end of the text.  

[\(view code\)](<./Syntax.hx#L257>)


## function isWordChar


```haxe
function isWordChar(r:Int):Bool
```



IsWordChar reports whether r is considered a “word character”
during the evaluation of the \\b and \\B zero\-width assertions.
These assertions are ASCII\-only: the word characters are \[A\-Za\-z0\-9\_\].  

[\(view code\)](<./Syntax.hx#L263>)


## function parse


```haxe
function parse(s:String, flags:stdgo.regexp.syntax.Flags):stdgo.Tuple<stdgo.regexp.syntax.Regexp, stdgo.Error>
```



Parse parses a regular expression string s, controlled by the specified
Flags, and returns a regular expression parse tree. The syntax is
described in the top\-level comment.  

[\(view code\)](<./Syntax.hx#L239>)


## function testAppendRangeCollapse


```haxe
function testAppendRangeCollapse(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Syntax.hx#L246>)


## function testCompile


```haxe
function testCompile(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Syntax.hx#L264>)


## function testFoldConstants


```haxe
function testFoldConstants(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Syntax.hx#L245>)


## function testParseFoldCase


```haxe
function testParseFoldCase(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Syntax.hx#L241>)


## function testParseInvalidRegexps


```haxe
function testParseInvalidRegexps(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Syntax.hx#L247>)


## function testParseLiteral


```haxe
function testParseLiteral(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Syntax.hx#L242>)


## function testParseMatchNL


```haxe
function testParseMatchNL(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Syntax.hx#L243>)


## function testParseNoMatchNL


```haxe
function testParseNoMatchNL(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Syntax.hx#L244>)


## function testParseSimple


```haxe
function testParseSimple(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Syntax.hx#L240>)


## function testSimplify


```haxe
function testSimplify(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Syntax.hx#L267>)


## function testToStringEquivalentParse


```haxe
function testToStringEquivalentParse(t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Syntax.hx#L248>)


# Typedefs


```haxe
import stdgo.regexp.syntax.*
```


## typedef EmptyOp


```haxe
typedef EmptyOp = stdgo._internal.regexp.syntax.EmptyOp;
```


## typedef Error


```haxe
typedef Error = Dynamic;
```


## typedef ErrorCode


```haxe
typedef ErrorCode = stdgo._internal.regexp.syntax.ErrorCode;
```


## typedef ErrorCode\_asInterface


```haxe
typedef ErrorCode_asInterface = Dynamic;
```


## typedef ErrorCode\_static\_extension


```haxe
typedef ErrorCode_static_extension = Dynamic;
```


## typedef Error\_asInterface


```haxe
typedef Error_asInterface = Dynamic;
```


## typedef Error\_static\_extension


```haxe
typedef Error_static_extension = Dynamic;
```


## typedef Flags


```haxe
typedef Flags = stdgo._internal.regexp.syntax.Flags;
```


## typedef Inst


```haxe
typedef Inst = Dynamic;
```


## typedef InstOp


```haxe
typedef InstOp = stdgo._internal.regexp.syntax.InstOp;
```


## typedef InstOp\_asInterface


```haxe
typedef InstOp_asInterface = Dynamic;
```


## typedef InstOp\_static\_extension


```haxe
typedef InstOp_static_extension = Dynamic;
```


## typedef Inst\_asInterface


```haxe
typedef Inst_asInterface = Dynamic;
```


## typedef Inst\_static\_extension


```haxe
typedef Inst_static_extension = Dynamic;
```


## typedef Op


```haxe
typedef Op = stdgo._internal.regexp.syntax.Op;
```


## typedef Op\_asInterface


```haxe
typedef Op_asInterface = Dynamic;
```


## typedef Op\_static\_extension


```haxe
typedef Op_static_extension = Dynamic;
```


## typedef Prog


```haxe
typedef Prog = Dynamic;
```


## typedef Prog\_asInterface


```haxe
typedef Prog_asInterface = Dynamic;
```


## typedef Prog\_static\_extension


```haxe
typedef Prog_static_extension = Dynamic;
```


## typedef Regexp


```haxe
typedef Regexp = Dynamic;
```


## typedef Regexp\_asInterface


```haxe
typedef Regexp_asInterface = Dynamic;
```


## typedef Regexp\_static\_extension


```haxe
typedef Regexp_static_extension = Dynamic;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.regexp.syntax.T__struct_0;
```


## typedef T\_\_struct\_0\_asInterface


```haxe
typedef T__struct_0_asInterface = Dynamic;
```


## typedef T\_\_struct\_0\_static\_extension


```haxe
typedef T__struct_0_static_extension = Dynamic;
```


## typedef T\_\_struct\_1


```haxe
typedef T__struct_1 = stdgo._internal.regexp.syntax.T__struct_1;
```


## typedef T\_\_struct\_1\_asInterface


```haxe
typedef T__struct_1_asInterface = Dynamic;
```


## typedef T\_\_struct\_1\_static\_extension


```haxe
typedef T__struct_1_static_extension = Dynamic;
```


## typedef T\_\_struct\_2


```haxe
typedef T__struct_2 = stdgo._internal.regexp.syntax.T__struct_2;
```


## typedef T\_\_struct\_2\_asInterface


```haxe
typedef T__struct_2_asInterface = Dynamic;
```


## typedef T\_\_struct\_2\_static\_extension


```haxe
typedef T__struct_2_static_extension = Dynamic;
```


## typedef T\_charGroup


```haxe
typedef T_charGroup = Dynamic;
```


## typedef T\_compiler


```haxe
typedef T_compiler = Dynamic;
```


## typedef T\_compiler\_asInterface


```haxe
typedef T_compiler_asInterface = Dynamic;
```


## typedef T\_compiler\_static\_extension


```haxe
typedef T_compiler_static_extension = Dynamic;
```


## typedef T\_frag


```haxe
typedef T_frag = Dynamic;
```


## typedef T\_parseTest


```haxe
typedef T_parseTest = Dynamic;
```


## typedef T\_parser


```haxe
typedef T_parser = Dynamic;
```


## typedef T\_parser\_asInterface


```haxe
typedef T_parser_asInterface = Dynamic;
```


## typedef T\_parser\_static\_extension


```haxe
typedef T_parser_static_extension = Dynamic;
```


## typedef T\_patchList


```haxe
typedef T_patchList = Dynamic;
```


## typedef T\_patchList\_asInterface


```haxe
typedef T_patchList_asInterface = Dynamic;
```


## typedef T\_patchList\_static\_extension


```haxe
typedef T_patchList_static_extension = Dynamic;
```


## typedef T\_ranges


```haxe
typedef T_ranges = Dynamic;
```


## typedef T\_ranges\_asInterface


```haxe
typedef T_ranges_asInterface = Dynamic;
```


## typedef T\_ranges\_static\_extension


```haxe
typedef T_ranges_static_extension = Dynamic;
```


