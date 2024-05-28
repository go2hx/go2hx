# Module: `stdgo.regexp.syntax`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [class Syntax](<#class-syntax>)

  - [`function benchmarkEmptyOpContext(_b:stdgo._internal.testing.B):Void`](<#syntax-function-benchmarkemptyopcontext>)

  - [`function benchmarkIsWordChar(_b:stdgo._internal.testing.B):Void`](<#syntax-function-benchmarkiswordchar>)

  - [`function compile(_re:stdgo.regexp.syntax.Regexp):stdgo.Tuple<stdgo.regexp.syntax.Prog, stdgo.Error>`](<#syntax-function-compile>)

  - [`function emptyOpContext(_r1:Int, _r2:Int):stdgo.regexp.syntax.EmptyOp`](<#syntax-function-emptyopcontext>)

  - [`function isWordChar(_r:Int):Bool`](<#syntax-function-iswordchar>)

  - [`function parse(_s:String, _flags:stdgo.regexp.syntax.Flags):stdgo.Tuple<stdgo.regexp.syntax.Regexp, stdgo.Error>`](<#syntax-function-parse>)

  - [`function testAppendRangeCollapse(_t:stdgo._internal.testing.T_):Void`](<#syntax-function-testappendrangecollapse>)

  - [`function testCompile(_t:stdgo._internal.testing.T_):Void`](<#syntax-function-testcompile>)

  - [`function testFoldConstants(_t:stdgo._internal.testing.T_):Void`](<#syntax-function-testfoldconstants>)

  - [`function testParseFoldCase(_t:stdgo._internal.testing.T_):Void`](<#syntax-function-testparsefoldcase>)

  - [`function testParseInvalidRegexps(_t:stdgo._internal.testing.T_):Void`](<#syntax-function-testparseinvalidregexps>)

  - [`function testParseLiteral(_t:stdgo._internal.testing.T_):Void`](<#syntax-function-testparseliteral>)

  - [`function testParseMatchNL(_t:stdgo._internal.testing.T_):Void`](<#syntax-function-testparsematchnl>)

  - [`function testParseNoMatchNL(_t:stdgo._internal.testing.T_):Void`](<#syntax-function-testparsenomatchnl>)

  - [`function testParseSimple(_t:stdgo._internal.testing.T_):Void`](<#syntax-function-testparsesimple>)

  - [`function testSimplify(_t:stdgo._internal.testing.T_):Void`](<#syntax-function-testsimplify>)

  - [`function testToStringEquivalentParse(_t:stdgo._internal.testing.T_):Void`](<#syntax-function-testtostringequivalentparse>)

- [typedef EmptyOp](<#typedef-emptyop>)

- [typedef ErrorCode](<#typedef-errorcode>)

- [typedef Flags](<#typedef-flags>)

- [typedef InstOp](<#typedef-instop>)

- [typedef Op](<#typedef-op>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

- [typedef T\_\_struct\_2](<#typedef-t__struct_2>)

- [abstract T\_patchList](<#abstract-t_patchlist>)

- [abstract T\_frag](<#abstract-t_frag>)

- [abstract T\_compiler](<#abstract-t_compiler>)

- [abstract Error](<#abstract-error>)

- [abstract T\_parser](<#abstract-t_parser>)

- [abstract T\_charGroup](<#abstract-t_chargroup>)

- [abstract T\_ranges](<#abstract-t_ranges>)

- [abstract T\_parseTest](<#abstract-t_parsetest>)

- [abstract Prog](<#abstract-prog>)

- [abstract Inst](<#abstract-inst>)

- [abstract Regexp](<#abstract-regexp>)

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
final emptyBeginLine:stdgo.regexp.syntax.EmptyOp = stdgo._internal.regexp.syntax.Syntax.emptyBeginLine
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
final errInternalError:stdgo.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errInternalError
```


```haxe
final errInvalidCharClass:stdgo.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errInvalidCharClass
```


```haxe
final errInvalidCharRange:stdgo.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errInvalidCharRange
```


```haxe
final errInvalidEscape:stdgo.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errInvalidEscape
```


```haxe
final errInvalidNamedCapture:stdgo.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errInvalidNamedCapture
```


```haxe
final errInvalidPerlOp:stdgo.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errInvalidPerlOp
```


```haxe
final errInvalidRepeatOp:stdgo.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errInvalidRepeatOp
```


```haxe
final errInvalidRepeatSize:stdgo.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errInvalidRepeatSize
```


```haxe
final errInvalidUTF8:stdgo.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errInvalidUTF8
```


```haxe
final errLarge:stdgo.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errLarge
```


```haxe
final errMissingBracket:stdgo.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errMissingBracket
```


```haxe
final errMissingParen:stdgo.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errMissingParen
```


```haxe
final errMissingRepeatArgument:stdgo.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errMissingRepeatArgument
```


```haxe
final errNestingDepth:stdgo.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errNestingDepth
```


```haxe
final errTrailingBackslash:stdgo.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errTrailingBackslash
```


```haxe
final errUnexpectedParen:stdgo.regexp.syntax.ErrorCode = stdgo._internal.regexp.syntax.Syntax.errUnexpectedParen
```


```haxe
final foldCase:stdgo.regexp.syntax.Flags = stdgo._internal.regexp.syntax.Syntax.foldCase
```


```haxe
final instAlt:stdgo.regexp.syntax.InstOp = stdgo._internal.regexp.syntax.Syntax.instAlt
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
final matchNL:stdgo.regexp.syntax.Flags = stdgo._internal.regexp.syntax.Syntax.matchNL
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
final opNoMatch:stdgo.regexp.syntax.Op = stdgo._internal.regexp.syntax.Syntax.opNoMatch
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
final perl:stdgo.regexp.syntax.Flags = stdgo._internal.regexp.syntax.Syntax.perl
```


```haxe
final perlX:stdgo._internal.regexp.syntax.Flags = stdgo._internal.regexp.syntax.Syntax.perlX
```


```haxe
final posix:stdgo.regexp.syntax.Flags = stdgo._internal.regexp.syntax.Syntax.posix
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


# Classes


```haxe
import stdgo.regexp.syntax.*
```


## class Syntax



Package syntax parses regular expressions into parse trees and compiles
parse trees into programs. Most clients of regular expressions will use the
facilities of package regexp \(such as Compile and Match\) instead of this package.  

### Syntax



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

### Syntax function benchmarkEmptyOpContext


```haxe
function benchmarkEmptyOpContext(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Syntax.hx#L882>)


### Syntax function benchmarkIsWordChar


```haxe
function benchmarkIsWordChar(_b:stdgo._internal.testing.B):Void
```


[\(view code\)](<./Syntax.hx#L885>)


### Syntax function compile


```haxe
function compile(_re:stdgo.regexp.syntax.Regexp):stdgo.Tuple<stdgo.regexp.syntax.Prog, stdgo.Error>
```


```
Compile compiles the regexp into a program to be executed.
        The regexp should have been simplified already (returned from re.Simplify).
```
[\(view code\)](<./Syntax.hx#L816>)


### Syntax function emptyOpContext


```haxe
function emptyOpContext(_r1:Int, _r2:Int):stdgo.regexp.syntax.EmptyOp
```


```
EmptyOpContext returns the zero-width assertions
        satisfied at the position between the runes r1 and r2.
        Passing r1 == -1 indicates that the position is
        at the beginning of the text.
        Passing r2 == -1 indicates that the position is
        at the end of the text.
```
[\(view code\)](<./Syntax.hx#L868>)


### Syntax function isWordChar


```haxe
function isWordChar(_r:Int):Bool
```


```
IsWordChar reports whether r is considered a “word character”
        during the evaluation of the \b and \B zero-width assertions.
        These assertions are ASCII-only: the word characters are [A-Za-z0-9_].
```
[\(view code\)](<./Syntax.hx#L876>)


### Syntax function parse


```haxe
function parse(_s:String, _flags:stdgo.regexp.syntax.Flags):stdgo.Tuple<stdgo.regexp.syntax.Regexp, stdgo.Error>
```


```
Parse parses a regular expression string s, controlled by the specified
        Flags, and returns a regular expression parse tree. The syntax is
        described in the top-level comment.
```
[\(view code\)](<./Syntax.hx#L827>)


### Syntax function testAppendRangeCollapse


```haxe
function testAppendRangeCollapse(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Syntax.hx#L851>)


### Syntax function testCompile


```haxe
function testCompile(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Syntax.hx#L879>)


### Syntax function testFoldConstants


```haxe
function testFoldConstants(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Syntax.hx#L848>)


### Syntax function testParseFoldCase


```haxe
function testParseFoldCase(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Syntax.hx#L836>)


### Syntax function testParseInvalidRegexps


```haxe
function testParseInvalidRegexps(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Syntax.hx#L854>)


### Syntax function testParseLiteral


```haxe
function testParseLiteral(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Syntax.hx#L839>)


### Syntax function testParseMatchNL


```haxe
function testParseMatchNL(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Syntax.hx#L842>)


### Syntax function testParseNoMatchNL


```haxe
function testParseNoMatchNL(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Syntax.hx#L845>)


### Syntax function testParseSimple


```haxe
function testParseSimple(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Syntax.hx#L833>)


### Syntax function testSimplify


```haxe
function testSimplify(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Syntax.hx#L888>)


### Syntax function testToStringEquivalentParse


```haxe
function testToStringEquivalentParse(_t:stdgo._internal.testing.T_):Void
```


[\(view code\)](<./Syntax.hx#L857>)


# Typedefs


```haxe
import stdgo.regexp.syntax.*
```


## typedef EmptyOp


```haxe
typedef EmptyOp = stdgo._internal.regexp.syntax.EmptyOp;
```


## typedef ErrorCode


```haxe
typedef ErrorCode = stdgo._internal.regexp.syntax.ErrorCode;
```


## typedef Flags


```haxe
typedef Flags = stdgo._internal.regexp.syntax.Flags;
```


## typedef InstOp


```haxe
typedef InstOp = stdgo._internal.regexp.syntax.InstOp;
```


## typedef Op


```haxe
typedef Op = stdgo._internal.regexp.syntax.Op;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.regexp.syntax.T__struct_0;
```


## typedef T\_\_struct\_1


```haxe
typedef T__struct_1 = stdgo._internal.regexp.syntax.T__struct_1;
```


## typedef T\_\_struct\_2


```haxe
typedef T__struct_2 = stdgo._internal.regexp.syntax.T__struct_2;
```


# Abstracts


## abstract T\_patchList


[\(view file containing code\)](<./Syntax.hx>)


## abstract T\_frag


[\(view file containing code\)](<./Syntax.hx>)


## abstract T\_compiler


[\(view file containing code\)](<./Syntax.hx>)


## abstract Error


[\(view file containing code\)](<./Syntax.hx>)


## abstract T\_parser


[\(view file containing code\)](<./Syntax.hx>)


## abstract T\_charGroup


[\(view file containing code\)](<./Syntax.hx>)


## abstract T\_ranges


[\(view file containing code\)](<./Syntax.hx>)


## abstract T\_parseTest


[\(view file containing code\)](<./Syntax.hx>)


## abstract Prog


[\(view file containing code\)](<./Syntax.hx>)


## abstract Inst


[\(view file containing code\)](<./Syntax.hx>)


## abstract Regexp


[\(view file containing code\)](<./Syntax.hx>)


