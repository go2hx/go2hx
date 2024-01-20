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

stdgo/internal/Macro.macro.hx:38: TypeInfoData_go2hx_hx

# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _appendClass(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Slice<stdgo.GoRune>):stdgo.Slice<stdgo.GoRune>`](<#function-_appendclass>)

- [`function _appendFoldedClass(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Slice<stdgo.GoRune>):stdgo.Slice<stdgo.GoRune>`](<#function-_appendfoldedclass>)

- [`function _appendFoldedRange(_r:stdgo.Slice<stdgo.GoRune>, _lo:stdgo.GoRune, _hi:stdgo.GoRune):stdgo.Slice<stdgo.GoRune>`](<#function-_appendfoldedrange>)

- [`function _appendLiteral(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.GoRune, _flags:stdgo.regexp.syntax.Flags):stdgo.Slice<stdgo.GoRune>`](<#function-_appendliteral>)

- [`function _appendNegatedClass(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Slice<stdgo.GoRune>):stdgo.Slice<stdgo.GoRune>`](<#function-_appendnegatedclass>)

- [`function _appendNegatedTable(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Ref<stdgo.unicode.RangeTable>):stdgo.Slice<stdgo.GoRune>`](<#function-_appendnegatedtable>)

- [`function _appendRange(_r:stdgo.Slice<stdgo.GoRune>, _lo:stdgo.GoRune, _hi:stdgo.GoRune):stdgo.Slice<stdgo.GoRune>`](<#function-_appendrange>)

- [`function _appendTable(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Ref<stdgo.unicode.RangeTable>):stdgo.Slice<stdgo.GoRune>`](<#function-_appendtable>)

- [`function _bw(_b:stdgo.Ref<stdgo.strings.Builder>, _args:haxe.Rest<stdgo.GoString>):Void`](<#function-_bw>)

- [`function _checkUTF8(_s:stdgo.GoString):stdgo.Error`](<#function-_checkutf8>)

- [`function _cleanAlt(_re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Void`](<#function-_cleanalt>)

- [`function _cleanClass(_rp:stdgo.Ref<stdgo.Slice<stdgo.GoRune>>):stdgo.Slice<stdgo.GoRune>`](<#function-_cleanclass>)

- [`function _dump(_re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):stdgo.GoString`](<#function-_dump>)

- [`function _dumpInst(_b:stdgo.Ref<stdgo.strings.Builder>, _i:stdgo.Ref<stdgo.regexp.syntax.Inst>):Void`](<#function-_dumpinst>)

- [`function _dumpProg(_b:stdgo.Ref<stdgo.strings.Builder>, _p:stdgo.Ref<stdgo.regexp.syntax.Prog>):Void`](<#function-_dumpprog>)

- [`function _dumpRegexp(_b:stdgo.Ref<stdgo.strings.Builder>, _re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Void`](<#function-_dumpregexp>)

- [`function _escape(_b:stdgo.Ref<stdgo.strings.Builder>, _r:stdgo.GoRune, _force:Bool):Void`](<#function-_escape>)

- [`function _isCharClass(_re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Bool`](<#function-_ischarclass>)

- [`function _isUpperFold(_r:stdgo.GoRune):Bool`](<#function-_isupperfold>)

- [`function _isValidCaptureName(_name:stdgo.GoString):Bool`](<#function-_isvalidcapturename>)

- [`function _isalnum(_c:stdgo.GoRune):Bool`](<#function-_isalnum>)

- [`function _literalRegexp(_s:stdgo.GoString, _flags:stdgo.regexp.syntax.Flags):stdgo.Ref<stdgo.regexp.syntax.Regexp>`](<#function-_literalregexp>)

- [`function _makePatchList(_n:stdgo.GoUInt32):stdgo.regexp.syntax.T_patchList`](<#function-_makepatchlist>)

- [`function _matchRune(_re:stdgo.Ref<stdgo.regexp.syntax.Regexp>, _r:stdgo.GoRune):Bool`](<#function-_matchrune>)

- [`function _mergeCharClass(_dst:stdgo.Ref<stdgo.regexp.syntax.Regexp>, _src:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Void`](<#function-_mergecharclass>)

- [`function _minFoldRune(_r:stdgo.GoRune):stdgo.GoRune`](<#function-_minfoldrune>)

- [`function _mkCharClass(_f:()):stdgo.GoString`](<#function-_mkcharclass>)

- [`function _negateClass(_r:stdgo.Slice<stdgo.GoRune>):stdgo.Slice<stdgo.GoRune>`](<#function-_negateclass>)

- [`function _nextRune(_s:stdgo.GoString):{
	_2:stdgo.Error;
	_1:stdgo.GoString;
	_0:stdgo.GoRune;
}`](<#function-_nextrune>)

- [`function _parse(_s:stdgo.GoString, _flags:stdgo.regexp.syntax.Flags):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo.regexp.syntax.Regexp>;
}`](<#function-_parse>)

- [`function _repeatIsValid(_re:stdgo.Ref<stdgo.regexp.syntax.Regexp>, _n:stdgo.GoInt):Bool`](<#function-_repeatisvalid>)

- [`function _simplify1(_op:stdgo.regexp.syntax.Op, _flags:stdgo.regexp.syntax.Flags, _sub:stdgo.Ref<stdgo.regexp.syntax.Regexp>, _re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):stdgo.Ref<stdgo.regexp.syntax.Regexp>`](<#function-_simplify1>)

- [`function _testParseDump(_t:stdgo.Ref<stdgo.testing.T_>, _tests:stdgo.Slice<stdgo.regexp.syntax.T_parseTest>, _flags:stdgo.regexp.syntax.Flags):Void`](<#function-_testparsedump>)

- [`function _u32(_i:stdgo.GoUInt32):stdgo.GoString`](<#function-_u32>)

- [`function _unhex(_c:stdgo.GoRune):stdgo.GoRune`](<#function-_unhex>)

- [`function _unicodeTable(_name:stdgo.GoString):{
	_1:stdgo.Ref<stdgo.unicode.RangeTable>;
	_0:stdgo.Ref<stdgo.unicode.RangeTable>;
}`](<#function-_unicodetable>)

- [`function _writeRegexp(_b:stdgo.Ref<stdgo.strings.Builder>, _re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Void`](<#function-_writeregexp>)

- [`function benchmarkEmptyOpContext(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkemptyopcontext>)

- [`function benchmarkIsWordChar(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkiswordchar>)

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

- [`function testAppendRangeCollapse(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testappendrangecollapse>)

- [`function testCompile(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcompile>)

- [`function testFoldConstants(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testfoldconstants>)

- [`function testParseFoldCase(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testparsefoldcase>)

- [`function testParseInvalidRegexps(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testparseinvalidregexps>)

- [`function testParseLiteral(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testparseliteral>)

- [`function testParseMatchNL(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testparsematchnl>)

- [`function testParseNoMatchNL(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testparsenomatchnl>)

- [`function testParseSimple(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testparsesimple>)

- [`function testSimplify(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testsimplify>)

- [`function testToStringEquivalentParse(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testtostringequivalentparse>)

- [class Error](<#class-error>)

  - [`function new(?code:Null<stdgo.regexp.syntax.ErrorCode>, ?expr:stdgo.GoString):Void`](<#error-function-new>)

  - [`function error():stdgo.GoString`](<#error-function-error>)

- [class Inst](<#class-inst>)

  - [`function new(?op:Null<stdgo.regexp.syntax.InstOp>, ?out:stdgo.GoUInt32, ?arg:stdgo.GoUInt32, ?rune:stdgo.Slice<stdgo.GoInt32>):Void`](<#inst-function-new>)

  - [`function _op():stdgo.regexp.syntax.InstOp`](<#inst-function-_op>)

  - [`function matchEmptyWidth( _before:stdgo.GoRune, _after:stdgo.GoRune):Bool`](<#inst-function-matchemptywidth>)

  - [`function matchRune( _r:stdgo.GoRune):Bool`](<#inst-function-matchrune>)

  - [`function matchRunePos( _r:stdgo.GoRune):stdgo.GoInt`](<#inst-function-matchrunepos>)

  - [`function string():stdgo.GoString`](<#inst-function-string>)

- [class Prog](<#class-prog>)

  - [`function new(?inst:stdgo.Slice<stdgo.regexp.syntax.Inst>, ?start:stdgo.GoInt, ?numCap:stdgo.GoInt):Void`](<#prog-function-new>)

  - [`function _skipNop( _pc:stdgo.GoUInt32):stdgo.Ref<stdgo.regexp.syntax.Inst>`](<#prog-function-_skipnop>)

  - [`function prefix():{ _1:Bool; _0:stdgo.GoString;}`](<#prog-function-prefix>)

  - [`function startCond():stdgo.regexp.syntax.EmptyOp`](<#prog-function-startcond>)

  - [`function string():stdgo.GoString`](<#prog-function-string>)

- [class Regexp](<#class-regexp>)

  - [`function new(?op:Null<stdgo.regexp.syntax.Op>, ?flags:Null<stdgo.regexp.syntax.Flags>, ?sub:stdgo.Slice<stdgo.Ref<stdgo.regexp.syntax.Regexp>>, ?sub0:stdgo.GoArray<stdgo.Ref<stdgo.regexp.syntax.Regexp>>, ?rune:stdgo.Slice<stdgo.GoInt32>, ?rune0:stdgo.GoArray<stdgo.GoInt32>, ?min:stdgo.GoInt, ?max:stdgo.GoInt, ?cap:stdgo.GoInt, ?name:stdgo.GoString):Void`](<#regexp-function-new>)

  - [`function _capNames( _names:stdgo.Slice<stdgo.GoString>):Void`](<#regexp-function-_capnames>)

  - [`function capNames():stdgo.Slice<stdgo.GoString>`](<#regexp-function-capnames>)

  - [`function equal( _y:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Bool`](<#regexp-function-equal>)

  - [`function maxCap():stdgo.GoInt`](<#regexp-function-maxcap>)

  - [`function simplify():stdgo.Ref<stdgo.regexp.syntax.Regexp>`](<#regexp-function-simplify>)

  - [`function string():stdgo.GoString`](<#regexp-function-string>)

- [typedef EmptyOp](<#typedef-emptyop>)

- [typedef ErrorCode](<#typedef-errorcode>)

- [typedef Flags](<#typedef-flags>)

- [typedef InstOp](<#typedef-instop>)

- [typedef Op](<#typedef-op>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

- [typedef T\_\_struct\_2](<#typedef-t__struct_2>)

# Constants


```haxe
import stdgo.regexp.syntax.Syntax
```


```haxe
final __Op_name_0:stdgo.GoString = (("NoMatchEmptyMatchLiteralCharClassAnyCharNotNLAnyCharBeginLineEndLineBeginTextEndTextWordBoundaryNoWordBoundaryCaptureStarPlusQuestRepeatConcatAlternate" : stdgo.GoString))
```


```haxe
final __Op_name_1:stdgo.GoString = (("opPseudo" : stdgo.GoString))
```


```haxe
final _instSize:stdgo.GoUInt64 = ((40i64 : stdgo.GoUInt64))
```



maxSize is the maximum size of a compiled regexp in Insts.
It too is somewhat arbitrarily chosen, but the idea is to be large enough
to allow significant regexps while at the same time small enough that
the compiled form will not take up too much memory.
128 MB is enough for a 3.3 million Inst structures, which roughly
corresponds to a 3.3 MB regexp.  


byte, 2 uint32, slice is 5 64\-bit words  

```haxe
final _maxFold:stdgo.GoUInt64 = ((125251i64 : stdgo.GoUInt64))
```


```haxe
final _maxHeight:stdgo.GoUInt64 = ((1000i64 : stdgo.GoUInt64))
```



maxHeight is the maximum height of a regexp parse tree.
It is somewhat arbitrarily chosen, but the idea is to be large enough
that no one will actually hit in real use but at the same time small enough
that recursion on the Regexp tree will not hit the 1GB Go stack limit.
The maximum amount of stack for a single recursive frame is probably
closer to 1kB, so this could potentially be raised, but it seems unlikely
that people have regexps nested even this deeply.
We ran a test on Google's C\+\+ code base and turned up only
a single use case with depth \> 100; it had depth 128.
Using depth 1000 should be plenty of margin.
As an optimization, we don't even bother calculating heights
until we've allocated at least maxHeight Regexp structures.  

```haxe
final _maxRunes:stdgo.GoUInt64 = ((33554432i64 : stdgo.GoUInt64))
```



maxRunes is the maximum number of runes allowed in a regexp tree
counting the runes in all the nodes.
Ignoring character classes p.numRunes is always less than the length of the regexp.
Character classes can make it much larger: each \\pL adds 1292 runes.
128 MB is enough for 32M runes, which is over 26k \\pL instances.
Note that repetitions do not make copies of the rune slices,
so \\pL\{1000\} is only one rune slice, not 1000.
We could keep a cache of character classes we've seen,
so that all the \\pL we see use the same rune list,
but that doesn't remove the problem entirely:
consider something like \[\\pL01234\]\[\\pL01235\]\[\\pL01236\]...\[\\pL^&\*\(\)\].
And because the Rune slice is exposed directly in the Regexp,
there is not an opportunity to change the representation to allow
partial sharing between different character classes.
So the limit is the best we can do.  

```haxe
final _maxSize:stdgo.GoUInt64 = ((3355443i64 : stdgo.GoUInt64))
```



maxSize is the maximum size of a compiled regexp in Insts.
It too is somewhat arbitrarily chosen, but the idea is to be large enough
to allow significant regexps while at the same time small enough that
the compiled form will not take up too much memory.
128 MB is enough for a 3.3 million Inst structures, which roughly
corresponds to a 3.3 MB regexp.  

```haxe
final _meta:stdgo.GoString = (("\\.+*?()|[]{}^$" : stdgo.GoString))
```


```haxe
final _minFold:stdgo.GoUInt64 = ((65i64 : stdgo.GoUInt64))
```



minimum and maximum runes involved in folding.
checked during test.  

```haxe
final _noMatch:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final _opLeftParen:stdgo.regexp.syntax.Op = ((129 : stdgo.regexp.syntax.Syntax.Op))
```



Pseudo\-ops for parsing stack.  

```haxe
final _opPseudo:stdgo.regexp.syntax.Op = ((128 : stdgo.regexp.syntax.Syntax.Op))
```



where pseudo\-ops start  

```haxe
final _opVerticalBar:stdgo.regexp.syntax.Op = ((129 : stdgo.regexp.syntax.Syntax.Op))
```



Pseudo\-ops for parsing stack.  

```haxe
final _runeSize:stdgo.GoUInt64 = ((4i64 : stdgo.GoUInt64))
```



maxRunes is the maximum number of runes allowed in a regexp tree
counting the runes in all the nodes.
Ignoring character classes p.numRunes is always less than the length of the regexp.
Character classes can make it much larger: each \\pL adds 1292 runes.
128 MB is enough for 32M runes, which is over 26k \\pL instances.
Note that repetitions do not make copies of the rune slices,
so \\pL\{1000\} is only one rune slice, not 1000.
We could keep a cache of character classes we've seen,
so that all the \\pL we see use the same rune list,
but that doesn't remove the problem entirely:
consider something like \[\\pL01234\]\[\\pL01235\]\[\\pL01236\]...\[\\pL^&\*\(\)\].
And because the Rune slice is exposed directly in the Regexp,
there is not an opportunity to change the representation to allow
partial sharing between different character classes.
So the limit is the best we can do.  


rune is int32  

```haxe
final _testFlags:stdgo.regexp.syntax.Flags = ((204 : stdgo.regexp.syntax.Syntax.Flags))
```


```haxe
final classNL:stdgo.regexp.syntax.Flags = ((512 : stdgo.regexp.syntax.Syntax.Flags))
```



allow character classes like \[^a\-z\] and \[\[:space:\]\] to match newline  

```haxe
final dotNL:stdgo.regexp.syntax.Flags = ((512 : stdgo.regexp.syntax.Syntax.Flags))
```



allow . to match newline  

```haxe
final emptyBeginLine:stdgo.regexp.syntax.EmptyOp = ((32 : stdgo.regexp.syntax.Syntax.EmptyOp))
```


```haxe
final emptyBeginText:stdgo.regexp.syntax.EmptyOp = ((32 : stdgo.regexp.syntax.Syntax.EmptyOp))
```


```haxe
final emptyEndLine:stdgo.regexp.syntax.EmptyOp = ((32 : stdgo.regexp.syntax.Syntax.EmptyOp))
```


```haxe
final emptyEndText:stdgo.regexp.syntax.EmptyOp = ((32 : stdgo.regexp.syntax.Syntax.EmptyOp))
```


```haxe
final emptyNoWordBoundary:stdgo.regexp.syntax.EmptyOp = ((32 : stdgo.regexp.syntax.Syntax.EmptyOp))
```


```haxe
final emptyWordBoundary:stdgo.regexp.syntax.EmptyOp = ((32 : stdgo.regexp.syntax.Syntax.EmptyOp))
```


```haxe
final errInternalError:stdgo.regexp.syntax.ErrorCode = (((("regexp/syntax: internal error" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.ErrorCode))
```



Unexpected error  

```haxe
final errInvalidCharClass:stdgo.regexp.syntax.ErrorCode = (((("invalid character class" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.ErrorCode))
```



Parse errors  

```haxe
final errInvalidCharRange:stdgo.regexp.syntax.ErrorCode = (((("invalid character class range" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.ErrorCode))
```


```haxe
final errInvalidEscape:stdgo.regexp.syntax.ErrorCode = (((("invalid escape sequence" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.ErrorCode))
```


```haxe
final errInvalidNamedCapture:stdgo.regexp.syntax.ErrorCode = (((("invalid named capture" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.ErrorCode))
```


```haxe
final errInvalidPerlOp:stdgo.regexp.syntax.ErrorCode = (((("invalid or unsupported Perl syntax" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.ErrorCode))
```


```haxe
final errInvalidRepeatOp:stdgo.regexp.syntax.ErrorCode = (((("invalid nested repetition operator" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.ErrorCode))
```


```haxe
final errInvalidRepeatSize:stdgo.regexp.syntax.ErrorCode = (((("invalid repeat count" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.ErrorCode))
```


```haxe
final errInvalidUTF8:stdgo.regexp.syntax.ErrorCode = (((("invalid UTF-8" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.ErrorCode))
```


```haxe
final errLarge:stdgo.regexp.syntax.ErrorCode = (((("expression too large" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.ErrorCode))
```


```haxe
final errMissingBracket:stdgo.regexp.syntax.ErrorCode = (((("missing closing ]" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.ErrorCode))
```


```haxe
final errMissingParen:stdgo.regexp.syntax.ErrorCode = (((("missing closing )" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.ErrorCode))
```


```haxe
final errMissingRepeatArgument:stdgo.regexp.syntax.ErrorCode = (((("missing argument to repetition operator" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.ErrorCode))
```


```haxe
final errNestingDepth:stdgo.regexp.syntax.ErrorCode = (((("expression nests too deeply" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.ErrorCode))
```


```haxe
final errTrailingBackslash:stdgo.regexp.syntax.ErrorCode = (((("trailing backslash at end of expression" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.ErrorCode))
```


```haxe
final errUnexpectedParen:stdgo.regexp.syntax.ErrorCode = (((("unexpected )" : stdgo.GoString)) : stdgo.regexp.syntax.Syntax.ErrorCode))
```


```haxe
final foldCase:stdgo.regexp.syntax.Flags = ((512 : stdgo.regexp.syntax.Syntax.Flags))
```



case\-insensitive match  

```haxe
final instAlt:stdgo.regexp.syntax.InstOp = ((10 : stdgo.regexp.syntax.Syntax.InstOp))
```


```haxe
final instAltMatch:stdgo.regexp.syntax.InstOp = ((10 : stdgo.regexp.syntax.Syntax.InstOp))
```


```haxe
final instCapture:stdgo.regexp.syntax.InstOp = ((10 : stdgo.regexp.syntax.Syntax.InstOp))
```


```haxe
final instEmptyWidth:stdgo.regexp.syntax.InstOp = ((10 : stdgo.regexp.syntax.Syntax.InstOp))
```


```haxe
final instFail:stdgo.regexp.syntax.InstOp = ((10 : stdgo.regexp.syntax.Syntax.InstOp))
```


```haxe
final instMatch:stdgo.regexp.syntax.InstOp = ((10 : stdgo.regexp.syntax.Syntax.InstOp))
```


```haxe
final instNop:stdgo.regexp.syntax.InstOp = ((10 : stdgo.regexp.syntax.Syntax.InstOp))
```


```haxe
final instRune:stdgo.regexp.syntax.InstOp = ((10 : stdgo.regexp.syntax.Syntax.InstOp))
```


```haxe
final instRune1:stdgo.regexp.syntax.InstOp = ((10 : stdgo.regexp.syntax.Syntax.InstOp))
```


```haxe
final instRuneAny:stdgo.regexp.syntax.InstOp = ((10 : stdgo.regexp.syntax.Syntax.InstOp))
```


```haxe
final instRuneAnyNotNL:stdgo.regexp.syntax.InstOp = ((10 : stdgo.regexp.syntax.Syntax.InstOp))
```


```haxe
final literal:stdgo.regexp.syntax.Flags = ((512 : stdgo.regexp.syntax.Syntax.Flags))
```



treat pattern as literal string  

```haxe
final matchNL:stdgo.regexp.syntax.Flags = ((12 : stdgo.regexp.syntax.Syntax.Flags))
```


```haxe
final nonGreedy:stdgo.regexp.syntax.Flags = ((512 : stdgo.regexp.syntax.Syntax.Flags))
```



make repetition operators default to non\-greedy  

```haxe
final oneLine:stdgo.regexp.syntax.Flags = ((512 : stdgo.regexp.syntax.Syntax.Flags))
```



treat ^ and $ as only matching at beginning and end of text  

```haxe
final opAlternate:stdgo.regexp.syntax.Op = ((19 : stdgo.regexp.syntax.Syntax.Op))
```



matches alternation of Subs  

```haxe
final opAnyChar:stdgo.regexp.syntax.Op = ((19 : stdgo.regexp.syntax.Syntax.Op))
```



matches any character  

```haxe
final opAnyCharNotNL:stdgo.regexp.syntax.Op = ((19 : stdgo.regexp.syntax.Syntax.Op))
```



matches any character except newline  

```haxe
final opBeginLine:stdgo.regexp.syntax.Op = ((19 : stdgo.regexp.syntax.Syntax.Op))
```



matches empty string at beginning of line  

```haxe
final opBeginText:stdgo.regexp.syntax.Op = ((19 : stdgo.regexp.syntax.Syntax.Op))
```



matches empty string at beginning of text  

```haxe
final opCapture:stdgo.regexp.syntax.Op = ((19 : stdgo.regexp.syntax.Syntax.Op))
```



capturing subexpression with index Cap, optional name Name  

```haxe
final opCharClass:stdgo.regexp.syntax.Op = ((19 : stdgo.regexp.syntax.Syntax.Op))
```



matches Runes interpreted as range pair list  

```haxe
final opConcat:stdgo.regexp.syntax.Op = ((19 : stdgo.regexp.syntax.Syntax.Op))
```



matches concatenation of Subs  

```haxe
final opEmptyMatch:stdgo.regexp.syntax.Op = ((19 : stdgo.regexp.syntax.Syntax.Op))
```



matches empty string  

```haxe
final opEndLine:stdgo.regexp.syntax.Op = ((19 : stdgo.regexp.syntax.Syntax.Op))
```



matches empty string at end of line  

```haxe
final opEndText:stdgo.regexp.syntax.Op = ((19 : stdgo.regexp.syntax.Syntax.Op))
```



matches empty string at end of text  

```haxe
final opLiteral:stdgo.regexp.syntax.Op = ((19 : stdgo.regexp.syntax.Syntax.Op))
```



matches Runes sequence  

```haxe
final opNoMatch:stdgo.regexp.syntax.Op = ((19 : stdgo.regexp.syntax.Syntax.Op))
```



matches no strings  

```haxe
final opNoWordBoundary:stdgo.regexp.syntax.Op = ((19 : stdgo.regexp.syntax.Syntax.Op))
```



matches word non\-boundary \`\\B\`  

```haxe
final opPlus:stdgo.regexp.syntax.Op = ((19 : stdgo.regexp.syntax.Syntax.Op))
```



matches Sub\[0\] one or more times  

```haxe
final opQuest:stdgo.regexp.syntax.Op = ((19 : stdgo.regexp.syntax.Syntax.Op))
```



matches Sub\[0\] zero or one times  

```haxe
final opRepeat:stdgo.regexp.syntax.Op = ((19 : stdgo.regexp.syntax.Syntax.Op))
```



matches Sub\[0\] at least Min times, at most Max \(Max == \-1 is no limit\)  

```haxe
final opStar:stdgo.regexp.syntax.Op = ((19 : stdgo.regexp.syntax.Syntax.Op))
```



matches Sub\[0\] zero or more times  

```haxe
final opWordBoundary:stdgo.regexp.syntax.Op = ((19 : stdgo.regexp.syntax.Syntax.Op))
```



matches word boundary \`\\b\`  

```haxe
final perl:stdgo.regexp.syntax.Flags = ((212 : stdgo.regexp.syntax.Syntax.Flags))
```



as close to Perl as possible  

```haxe
final perlX:stdgo.regexp.syntax.Flags = ((512 : stdgo.regexp.syntax.Syntax.Flags))
```



allow Perl extensions  

```haxe
final posix:stdgo.regexp.syntax.Flags = ((0 : stdgo.regexp.syntax.Syntax.Flags))
```



POSIX syntax  

```haxe
final simple:stdgo.regexp.syntax.Flags = ((512 : stdgo.regexp.syntax.Syntax.Flags))
```



regexp contains no counted repetition  

```haxe
final unicodeGroups:stdgo.regexp.syntax.Flags = ((512 : stdgo.regexp.syntax.Syntax.Flags))
```



allow \\p\{Han\}, \\P\{Han\} for Unicode group and negation  

```haxe
final wasDollar:stdgo.regexp.syntax.Flags = ((512 : stdgo.regexp.syntax.Syntax.Flags))
```



regexp OpEndText was $, not \\z  

# Variables


```haxe
import stdgo.regexp.syntax.Syntax
```


```haxe
var __Op_index_0:stdgo.GoArray<stdgo.GoUInt8>
```


```haxe
var _anyRune:stdgo.Slice<stdgo.GoInt32>
```


```haxe
var _anyRuneNotNL:stdgo.Slice<stdgo.GoInt32>
```


```haxe
var _anyTable:stdgo.Ref<stdgo.unicode.RangeTable>
```


```haxe
var _code1:stdgo.Slice<stdgo.GoInt32>
```


```haxe
var _code10:stdgo.Slice<stdgo.GoInt32>
```


```haxe
var _code11:stdgo.Slice<stdgo.GoInt32>
```


```haxe
var _code12:stdgo.Slice<stdgo.GoInt32>
```


```haxe
var _code13:stdgo.Slice<stdgo.GoInt32>
```


```haxe
var _code14:stdgo.Slice<stdgo.GoInt32>
```


```haxe
var _code15:stdgo.Slice<stdgo.GoInt32>
```


```haxe
var _code16:stdgo.Slice<stdgo.GoInt32>
```


```haxe
var _code17:stdgo.Slice<stdgo.GoInt32>
```


```haxe
var _code2:stdgo.Slice<stdgo.GoInt32>
```


```haxe
var _code3:stdgo.Slice<stdgo.GoInt32>
```


```haxe
var _code4:stdgo.Slice<stdgo.GoInt32>
```


```haxe
var _code5:stdgo.Slice<stdgo.GoInt32>
```


```haxe
var _code6:stdgo.Slice<stdgo.GoInt32>
```


```haxe
var _code7:stdgo.Slice<stdgo.GoInt32>
```


```haxe
var _code8:stdgo.Slice<stdgo.GoInt32>
```


```haxe
var _code9:stdgo.Slice<stdgo.GoInt32>
```


```haxe
var _compileTests:stdgo.Slice<stdgo.regexp.syntax.T__struct_1>
```


```haxe
var _foldcaseTests:stdgo.Slice<stdgo.regexp.syntax.T_parseTest>
```


```haxe
var _instOpNames:stdgo.Slice<stdgo.GoString>
```


```haxe
var _invalidRegexps:stdgo.Slice<stdgo.GoString>
```


```haxe
var _literalTests:stdgo.Slice<stdgo.regexp.syntax.T_parseTest>
```


```haxe
var _matchnlTests:stdgo.Slice<stdgo.regexp.syntax.T_parseTest>
```


```haxe
var _nomatchnlTests:stdgo.Slice<stdgo.regexp.syntax.T_parseTest>
```


```haxe
var _onlyPOSIX:stdgo.Slice<stdgo.GoString>
```


```haxe
var _onlyPerl:stdgo.Slice<stdgo.GoString>
```


```haxe
var _opNames:stdgo.Slice<stdgo.GoString>
```


```haxe
var _parseTests:stdgo.Slice<stdgo.regexp.syntax.T_parseTest>
```


```haxe
var _perlGroup:stdgo.GoMap<stdgo.GoString, stdgo.regexp.syntax.T_charGroup>
```


```haxe
var _posixGroup:stdgo.GoMap<stdgo.GoString, stdgo.regexp.syntax.T_charGroup>
```


```haxe
var _simplifyTests:stdgo.Slice<stdgo.regexp.syntax.T__struct_2>
```


```haxe
var _sink:stdgo.AnyInterface
```


# Functions


```haxe
import stdgo.regexp.syntax.Syntax
```


## function \_appendClass


```haxe
function _appendClass(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Slice<stdgo.GoRune>):stdgo.Slice<stdgo.GoRune>
```



appendClass returns the result of appending the class x to the class r.
It assume x is clean.  

[\(view code\)](<./Syntax.hx#L2347>)


## function \_appendFoldedClass


```haxe
function _appendFoldedClass(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Slice<stdgo.GoRune>):stdgo.Slice<stdgo.GoRune>
```



appendFoldedClass returns the result of appending the case folding of the class x to the class r.  

[\(view code\)](<./Syntax.hx#L2359>)


## function \_appendFoldedRange


```haxe
function _appendFoldedRange(_r:stdgo.Slice<stdgo.GoRune>, _lo:stdgo.GoRune, _hi:stdgo.GoRune):stdgo.Slice<stdgo.GoRune>
```



appendFoldedRange returns the result of appending the range lo\-hi
and its case folding\-equivalent runes to the class r.  

[\(view code\)](<./Syntax.hx#L2315>)


## function \_appendLiteral


```haxe
function _appendLiteral(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.GoRune, _flags:stdgo.regexp.syntax.Flags):stdgo.Slice<stdgo.GoRune>
```



appendLiteral returns the result of appending the literal x to the class r.  

[\(view code\)](<./Syntax.hx#L2281>)


## function \_appendNegatedClass


```haxe
function _appendNegatedClass(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Slice<stdgo.GoRune>):stdgo.Slice<stdgo.GoRune>
```



appendNegatedClass returns the result of appending the negation of the class x to the class r.
It assumes x is clean.  

[\(view code\)](<./Syntax.hx#L2372>)


## function \_appendNegatedTable


```haxe
function _appendNegatedTable(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Ref<stdgo.unicode.RangeTable>):stdgo.Slice<stdgo.GoRune>
```



appendNegatedTable returns the result of appending the negation of x to the class r.  

[\(view code\)](<./Syntax.hx#L2424>)


## function \_appendRange


```haxe
function _appendRange(_r:stdgo.Slice<stdgo.GoRune>, _lo:stdgo.GoRune, _hi:stdgo.GoRune):stdgo.Slice<stdgo.GoRune>
```



appendRange returns the result of appending the range lo\-hi to the class r.  

[\(view code\)](<./Syntax.hx#L2290>)


## function \_appendTable


```haxe
function _appendTable(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Ref<stdgo.unicode.RangeTable>):stdgo.Slice<stdgo.GoRune>
```



appendTable returns the result of appending x to the class r.  

[\(view code\)](<./Syntax.hx#L2392>)


## function \_bw


```haxe
function _bw(_b:stdgo.Ref<stdgo.strings.Builder>, _args:haxe.Rest<stdgo.GoString>):Void
```


[\(view code\)](<./Syntax.hx#L2842>)


## function \_checkUTF8


```haxe
function _checkUTF8(_s:stdgo.GoString):stdgo.Error
```


[\(view code\)](<./Syntax.hx#L2494>)


## function \_cleanAlt


```haxe
function _cleanAlt(_re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Void
```



cleanAlt cleans re for eventual inclusion in an alternation.  

[\(view code\)](<./Syntax.hx#L1697>)


## function \_cleanClass


```haxe
function _cleanClass(_rp:stdgo.Ref<stdgo.Slice<stdgo.GoRune>>):stdgo.Slice<stdgo.GoRune>
```



cleanClass sorts the ranges \(pairs of elements of r\),
merges them, and eliminates duplicates.  

[\(view code\)](<./Syntax.hx#L2254>)


## function \_dump


```haxe
function _dump(_re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):stdgo.GoString
```



dump prints a string representation of the regexp showing
the structure explicitly.  

[\(view code\)](<./Syntax.hx#L2565>)


## function \_dumpInst


```haxe
function _dumpInst(_b:stdgo.Ref<stdgo.strings.Builder>, _i:stdgo.Ref<stdgo.regexp.syntax.Inst>):Void
```


[\(view code\)](<./Syntax.hx#L2866>)


## function \_dumpProg


```haxe
function _dumpProg(_b:stdgo.Ref<stdgo.strings.Builder>, _p:stdgo.Ref<stdgo.regexp.syntax.Prog>):Void
```


[\(view code\)](<./Syntax.hx#L2848>)


## function \_dumpRegexp


```haxe
function _dumpRegexp(_b:stdgo.Ref<stdgo.strings.Builder>, _re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Void
```



dumpRegexp writes an encoding of the syntax tree for the regexp re to b.
It is used during testing to distinguish between parses that might print
the same using re's String method.  

[\(view code\)](<./Syntax.hx#L2575>)


## function \_escape


```haxe
function _escape(_b:stdgo.Ref<stdgo.strings.Builder>, _r:stdgo.GoRune, _force:Bool):Void
```


[\(view code\)](<./Syntax.hx#L3106>)


## function \_isCharClass


```haxe
function _isCharClass(_re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Bool
```



can this be represented as a character class?
single\-rune literal string, char class, ., and .|\\n.  

[\(view code\)](<./Syntax.hx#L2158>)


## function \_isUpperFold


```haxe
function _isUpperFold(_r:stdgo.GoRune):Bool
```


[\(view code\)](<./Syntax.hx#L2683>)


## function \_isValidCaptureName


```haxe
function _isValidCaptureName(_name:stdgo.GoString):Bool
```



isValidCaptureName reports whether name
is a valid capture name: \[A\-Za\-z0\-9\_\]\+.
PCRE limits names to 32 bytes.
Python rejects names starting with digits.
We don't enforce either of those.  

[\(view code\)](<./Syntax.hx#L2143>)


## function \_isalnum


```haxe
function _isalnum(_c:stdgo.GoRune):Bool
```


[\(view code\)](<./Syntax.hx#L2512>)


## function \_literalRegexp


```haxe
function _literalRegexp(_s:stdgo.GoString, _flags:stdgo.regexp.syntax.Flags):stdgo.Ref<stdgo.regexp.syntax.Regexp>
```


[\(view code\)](<./Syntax.hx#L1718>)


## function \_makePatchList


```haxe
function _makePatchList(_n:stdgo.GoUInt32):stdgo.regexp.syntax.T_patchList
```


[\(view code\)](<./Syntax.hx#L1626>)


## function \_matchRune


```haxe
function _matchRune(_re:stdgo.Ref<stdgo.regexp.syntax.Regexp>, _r:stdgo.GoRune):Bool
```



does re match r?  

[\(view code\)](<./Syntax.hx#L2164>)


## function \_mergeCharClass


```haxe
function _mergeCharClass(_dst:stdgo.Ref<stdgo.regexp.syntax.Regexp>, _src:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Void
```



mergeCharClass makes dst = dst|src.
The caller must ensure that dst.Op \>= src.Op,
to reduce the amount of copying.  

[\(view code\)](<./Syntax.hx#L2192>)


## function \_minFoldRune


```haxe
function _minFoldRune(_r:stdgo.GoRune):stdgo.GoRune
```



minFoldRune returns the minimum rune fold\-equivalent to r.  

[\(view code\)](<./Syntax.hx#L1644>)


## function \_mkCharClass


```haxe
function _mkCharClass(_f:()):stdgo.GoString
```


[\(view code\)](<./Syntax.hx#L2660>)


## function \_negateClass


```haxe
function _negateClass(_r:stdgo.Slice<stdgo.GoRune>):stdgo.Slice<stdgo.GoRune>
```



negateClass overwrites r and returns r's negation.
It assumes the class r is already clean.  

[\(view code\)](<./Syntax.hx#L2473>)


## function \_nextRune


```haxe
function _nextRune(_s:stdgo.GoString):{
	_2:stdgo.Error;
	_1:stdgo.GoString;
	_0:stdgo.GoRune;
}
```


[\(view code\)](<./Syntax.hx#L2504>)


## function \_parse


```haxe
function _parse(_s:stdgo.GoString, _flags:stdgo.regexp.syntax.Flags):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo.regexp.syntax.Regexp>;
}
```


[\(view code\)](<./Syntax.hx#L1739>)


## function \_repeatIsValid


```haxe
function _repeatIsValid(_re:stdgo.Ref<stdgo.regexp.syntax.Regexp>, _n:stdgo.GoInt):Bool
```



repeatIsValid reports whether the repetition re is valid.
Valid means that the combination of the top\-level repetition
and any inner repetitions does not exceed n copies of the
innermost thing.
This function rewalks the regexp tree and is called for every repetition,
so we have to worry about inducing quadratic behavior in the parser.
We avoid this by only calling repeatIsValid when min or max \>= 2.
In that case the depth of any \>= 2 nesting can only get to 9 without
triggering a parse error, so each subtree can only be rewalked 9 times.  

[\(view code\)](<./Syntax.hx#L1671>)


## function \_simplify1


```haxe
function _simplify1(_op:stdgo.regexp.syntax.Op, _flags:stdgo.regexp.syntax.Flags, _sub:stdgo.Ref<stdgo.regexp.syntax.Regexp>, _re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):stdgo.Ref<stdgo.regexp.syntax.Regexp>
```



simplify1 implements Simplify for the unary OpStar,
OpPlus, and OpQuest operators. It returns the simple regexp
equivalent to  

```
	Regexp{Op: op, Flags: flags, Sub: {sub}}
```

under the assumption that sub is already simple, and
without first allocating that structure. If the regexp
to be returned turns out to be equivalent to re, simplify1
returns re instead.  


simplify1 is factored out of Simplify because the implementation
for other operators generates these unary expressions.
Letting them call simplify1 makes sure the expressions they
generate are simple.  

[\(view code\)](<./Syntax.hx#L3175>)


## function \_testParseDump


```haxe
function _testParseDump(_t:stdgo.Ref<stdgo.testing.T_>, _tests:stdgo.Slice<stdgo.regexp.syntax.T_parseTest>, _flags:stdgo.regexp.syntax.Flags):Void
```



Test Parse \-\> Dump.  

[\(view code\)](<./Syntax.hx#L2545>)


## function \_u32


```haxe
function _u32(_i:stdgo.GoUInt32):stdgo.GoString
```


[\(view code\)](<./Syntax.hx#L2863>)


## function \_unhex


```haxe
function _unhex(_c:stdgo.GoRune):stdgo.GoRune
```


[\(view code\)](<./Syntax.hx#L2515>)


## function \_unicodeTable


```haxe
function _unicodeTable(_name:stdgo.GoString):{
	_1:stdgo.Ref<stdgo.unicode.RangeTable>;
	_0:stdgo.Ref<stdgo.unicode.RangeTable>;
}
```



unicodeTable returns the unicode.RangeTable identified by name
and the table of additional fold\-equivalent code points.  

[\(view code\)](<./Syntax.hx#L2232>)


## function \_writeRegexp


```haxe
function _writeRegexp(_b:stdgo.Ref<stdgo.strings.Builder>, _re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Void
```



writeRegexp writes the Perl syntax for the regular expression re to b.  

[\(view code\)](<./Syntax.hx#L2942>)


## function benchmarkEmptyOpContext


```haxe
function benchmarkEmptyOpContext(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Syntax.hx#L2911>)


## function benchmarkIsWordChar


```haxe
function benchmarkIsWordChar(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Syntax.hx#L2924>)


## function compile


```haxe
function compile(_re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo.regexp.syntax.Prog>;
}
```



Compile compiles the regexp into a program to be executed.
The regexp should have been simplified already \(returned from re.Simplify\).  

[\(view code\)](<./Syntax.hx#L1633>)


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

[\(view code\)](<./Syntax.hx#L2812>)


## function isWordChar


```haxe
function isWordChar(_r:stdgo.GoRune):Bool
```



IsWordChar reports whether r is considered a “word character”
during the evaluation of the \\b and \\B zero\-width assertions.
These assertions are ASCII\-only: the word characters are \[A\-Za\-z0\-9\_\].  

[\(view code\)](<./Syntax.hx#L2839>)


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

[\(view code\)](<./Syntax.hx#L1736>)


## function testAppendRangeCollapse


```haxe
function testAppendRangeCollapse(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Syntax.hx#L2714>)


## function testCompile


```haxe
function testCompile(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Syntax.hx#L2901>)


## function testFoldConstants


```haxe
function testFoldConstants(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Syntax.hx#L2696>)


## function testParseFoldCase


```haxe
function testParseFoldCase(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Syntax.hx#L2530>)


## function testParseInvalidRegexps


```haxe
function testParseInvalidRegexps(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Syntax.hx#L2727>)


## function testParseLiteral


```haxe
function testParseLiteral(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Syntax.hx#L2533>)


## function testParseMatchNL


```haxe
function testParseMatchNL(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Syntax.hx#L2536>)


## function testParseNoMatchNL


```haxe
function testParseNoMatchNL(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Syntax.hx#L2539>)


## function testParseSimple


```haxe
function testParseSimple(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Syntax.hx#L2527>)


## function testSimplify


```haxe
function testSimplify(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Syntax.hx#L3189>)


## function testToStringEquivalentParse


```haxe
function testToStringEquivalentParse(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Syntax.hx#L2771>)


# Classes


```haxe
import stdgo.regexp.syntax.*
```


## class Error



An Error describes a failure to parse a regular expression
and gives the offending expression.  

```haxe
var code:stdgo.regexp.syntax.ErrorCode
```


```haxe
var expr:stdgo.GoString
```


### Error function new


```haxe
function new(?code:Null<stdgo.regexp.syntax.ErrorCode>, ?expr:stdgo.GoString):Void
```


[\(view code\)](<./Syntax.hx#L1381>)


### Error function error


```haxe
function error():stdgo.GoString
```


[\(view code\)](<./Syntax.hx#L3526>)


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


[\(view code\)](<./Syntax.hx#L1517>)


### Inst function \_op


```haxe
function _op():stdgo.regexp.syntax.InstOp
```



op returns i.Op but merges all the Rune special cases into InstRune  

[\(view code\)](<./Syntax.hx#L5410>)


### Inst function matchEmptyWidth


```haxe
function matchEmptyWidth( _before:stdgo.GoRune, _after:stdgo.GoRune):Bool
```



MatchEmptyWidth reports whether the instruction matches
an empty string between the runes before and after.
It should only be called when i.Op == InstEmptyWidth.  

[\(view code\)](<./Syntax.hx#L5308>)


### Inst function matchRune


```haxe
function matchRune( _r:stdgo.GoRune):Bool
```



MatchRune reports whether the instruction matches \(and consumes\) r.
It should only be called when i.Op == InstRune.  

[\(view code\)](<./Syntax.hx#L5402>)


### Inst function matchRunePos


```haxe
function matchRunePos( _r:stdgo.GoRune):stdgo.GoInt
```



MatchRunePos checks whether the instruction matches \(and consumes\) r.
If so, MatchRunePos returns the index of the matching rune pair
\(or, when len\(i.Rune\) == 1, rune singleton\).
If not, MatchRunePos returns \-1.
MatchRunePos should only be called when i.Op == InstRune.  

[\(view code\)](<./Syntax.hx#L5336>)


### Inst function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Syntax.hx#L5296>)


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
function new(?inst:stdgo.Slice<stdgo.regexp.syntax.Inst>, ?start:stdgo.GoInt, ?numCap:stdgo.GoInt):Void
```


[\(view code\)](<./Syntax.hx#L1497>)


### Prog function \_skipNop


```haxe
function _skipNop( _pc:stdgo.GoUInt32):stdgo.Ref<stdgo.regexp.syntax.Inst>
```



skipNop follows any no\-op or capturing instructions.  

[\(view code\)](<./Syntax.hx#L5240>)


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

[\(view code\)](<./Syntax.hx#L5222>)


### Prog function startCond


```haxe
function startCond():stdgo.regexp.syntax.EmptyOp
```



StartCond returns the leading empty\-width conditions that must
be true in any match. It returns ^EmptyOp\(0\) if no matches are possible.  

[\(view code\)](<./Syntax.hx#L5180>)


### Prog function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Syntax.hx#L5249>)


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
function new(?op:Null<stdgo.regexp.syntax.Op>, ?flags:Null<stdgo.regexp.syntax.Flags>, ?sub:stdgo.Slice<stdgo.Ref<stdgo.regexp.syntax.Regexp>>, ?sub0:stdgo.GoArray<stdgo.Ref<stdgo.regexp.syntax.Regexp>>, ?rune:stdgo.Slice<stdgo.GoInt32>, ?rune0:stdgo.GoArray<stdgo.GoInt32>, ?min:stdgo.GoInt, ?max:stdgo.GoInt, ?cap:stdgo.GoInt, ?name:stdgo.GoString):Void
```


[\(view code\)](<./Syntax.hx#L1544>)


### Regexp function \_capNames


```haxe
function _capNames( _names:stdgo.Slice<stdgo.GoString>):Void
```


[\(view code\)](<./Syntax.hx#L5570>)


### Regexp function capNames


```haxe
function capNames():stdgo.Slice<stdgo.GoString>
```



CapNames walks the regexp to find the names of capturing groups.  

[\(view code\)](<./Syntax.hx#L5583>)


### Regexp function equal


```haxe
function equal( _y:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Bool
```



Equal reports whether x and y have identical structure.  

[\(view code\)](<./Syntax.hx#L5620>)


### Regexp function maxCap


```haxe
function maxCap():stdgo.GoInt
```



MaxCap walks the regexp to find the maximum capture index.  

[\(view code\)](<./Syntax.hx#L5593>)


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

[\(view code\)](<./Syntax.hx#L5472>)


### Regexp function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Syntax.hx#L5610>)


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

## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = {
};
```


## typedef T\_\_struct\_1


```haxe
typedef T__struct_1 = {
	regexp:stdgo.GoString;
	prog:stdgo.GoString;
};
```


## typedef T\_\_struct\_2


```haxe
typedef T__struct_2 = {
	simple:stdgo.GoString;
	regexp:stdgo.GoString;
};
```


