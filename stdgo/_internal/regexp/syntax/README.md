# Module: `stdgo._internal.regexp.syntax`

[(view library index)](../../../stdgo.md)


# Overview


stdgo/_internal/internal/Macro.macro.hx:54: non hxb types:,362

# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _appendClass(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Slice<stdgo.GoRune>):stdgo.Slice<stdgo.GoRune>`](<#function-_appendclass>)

- [`function _appendFoldedClass(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Slice<stdgo.GoRune>):stdgo.Slice<stdgo.GoRune>`](<#function-_appendfoldedclass>)

- [`function _appendFoldedRange(_r:stdgo.Slice<stdgo.GoRune>, _lo:stdgo.GoRune, _hi:stdgo.GoRune):stdgo.Slice<stdgo.GoRune>`](<#function-_appendfoldedrange>)

- [`function _appendLiteral(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.GoRune, _flags:stdgo._internal.regexp.syntax.Flags):stdgo.Slice<stdgo.GoRune>`](<#function-_appendliteral>)

- [`function _appendNegatedClass(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Slice<stdgo.GoRune>):stdgo.Slice<stdgo.GoRune>`](<#function-_appendnegatedclass>)

- [`function _appendNegatedTable(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Ref<stdgo._internal.unicode.RangeTable>):stdgo.Slice<stdgo.GoRune>`](<#function-_appendnegatedtable>)

- [`function _appendRange(_r:stdgo.Slice<stdgo.GoRune>, _lo:stdgo.GoRune, _hi:stdgo.GoRune):stdgo.Slice<stdgo.GoRune>`](<#function-_appendrange>)

- [`function _appendTable(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Ref<stdgo._internal.unicode.RangeTable>):stdgo.Slice<stdgo.GoRune>`](<#function-_appendtable>)

- [`function _bw(_b:stdgo.Ref<stdgo._internal.strings.Builder>, _args:haxe.Rest<stdgo.GoString>):Void`](<#function-_bw>)

- [`function _checkUTF8(_s:stdgo.GoString):stdgo.Error`](<#function-_checkutf8>)

- [`function _cleanAlt(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>):Void`](<#function-_cleanalt>)

- [`function _cleanClass(_rp:stdgo.Ref<stdgo.Slice<stdgo.GoRune>>):stdgo.Slice<stdgo.GoRune>`](<#function-_cleanclass>)

- [`function _dump(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>):stdgo.GoString`](<#function-_dump>)

- [`function _dumpInst(_b:stdgo.Ref<stdgo._internal.strings.Builder>, _i:stdgo.Ref<stdgo._internal.regexp.syntax.Inst>):Void`](<#function-_dumpinst>)

- [`function _dumpProg(_b:stdgo.Ref<stdgo._internal.strings.Builder>, _p:stdgo.Ref<stdgo._internal.regexp.syntax.Prog>):Void`](<#function-_dumpprog>)

- [`function _dumpRegexp(_b:stdgo.Ref<stdgo._internal.strings.Builder>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>):Void`](<#function-_dumpregexp>)

- [`function _escape(_b:stdgo.Ref<stdgo._internal.strings.Builder>, _r:stdgo.GoRune, _force:Bool):Void`](<#function-_escape>)

- [`function _isCharClass(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>):Bool`](<#function-_ischarclass>)

- [`function _isUpperFold(_r:stdgo.GoRune):Bool`](<#function-_isupperfold>)

- [`function _isValidCaptureName(_name:stdgo.GoString):Bool`](<#function-_isvalidcapturename>)

- [`function _isalnum(_c:stdgo.GoRune):Bool`](<#function-_isalnum>)

- [`function _literalRegexp(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Flags):stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>`](<#function-_literalregexp>)

- [`function _makePatchList(_n:stdgo.GoUInt32):stdgo._internal.regexp.syntax.T_patchList`](<#function-_makepatchlist>)

- [`function _matchRune(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>, _r:stdgo.GoRune):Bool`](<#function-_matchrune>)

- [`function _mergeCharClass(_dst:stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>, _src:stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>):Void`](<#function-_mergecharclass>)

- [`function _minFoldRune(_r:stdgo.GoRune):stdgo.GoRune`](<#function-_minfoldrune>)

- [`function _mkCharClass(_f:()):stdgo.GoString`](<#function-_mkcharclass>)

- [`function _negateClass(_r:stdgo.Slice<stdgo.GoRune>):stdgo.Slice<stdgo.GoRune>`](<#function-_negateclass>)

- [`function _nextRune(_s:stdgo.GoString):{
	_2:stdgo.Error;
	_1:stdgo.GoString;
	_0:stdgo.GoRune;
}`](<#function-_nextrune>)

- [`function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Flags):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>;
}`](<#function-_parse>)

- [`function _repeatIsValid(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>, _n:stdgo.GoInt):Bool`](<#function-_repeatisvalid>)

- [`function _simplify1(_op:stdgo._internal.regexp.syntax.Op, _flags:stdgo._internal.regexp.syntax.Flags, _sub:stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>):stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>`](<#function-_simplify1>)

- [`function _testParseDump(_t:stdgo.Ref<stdgo._internal.testing.T_>, _tests:stdgo.Slice<stdgo._internal.regexp.syntax.T_parseTest>, _flags:stdgo._internal.regexp.syntax.Flags):Void`](<#function-_testparsedump>)

- [`function _u32(_i:stdgo.GoUInt32):stdgo.GoString`](<#function-_u32>)

- [`function _unhex(_c:stdgo.GoRune):stdgo.GoRune`](<#function-_unhex>)

- [`function _unicodeTable(_name:stdgo.GoString):{
	_1:stdgo.Ref<stdgo._internal.unicode.RangeTable>;
	_0:stdgo.Ref<stdgo._internal.unicode.RangeTable>;
}`](<#function-_unicodetable>)

- [`function _writeRegexp(_b:stdgo.Ref<stdgo._internal.strings.Builder>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>):Void`](<#function-_writeregexp>)

- [`function benchmarkEmptyOpContext(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkemptyopcontext>)

- [`function benchmarkIsWordChar(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkiswordchar>)

- [`function compile(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.regexp.syntax.Prog>;
}`](<#function-compile>)

- [`function emptyOpContext(_r1:stdgo.GoRune, _r2:stdgo.GoRune):stdgo._internal.regexp.syntax.EmptyOp`](<#function-emptyopcontext>)

- [`function isWordChar(_r:stdgo.GoRune):Bool`](<#function-iswordchar>)

- [`function parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Flags):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>;
}`](<#function-parse>)

- [`function testAppendRangeCollapse(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testappendrangecollapse>)

- [`function testCompile(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testcompile>)

- [`function testFoldConstants(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testfoldconstants>)

- [`function testParseFoldCase(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testparsefoldcase>)

- [`function testParseInvalidRegexps(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testparseinvalidregexps>)

- [`function testParseLiteral(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testparseliteral>)

- [`function testParseMatchNL(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testparsematchnl>)

- [`function testParseNoMatchNL(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testparsenomatchnl>)

- [`function testParseSimple(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testparsesimple>)

- [`function testSimplify(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testsimplify>)

- [`function testToStringEquivalentParse(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testtostringequivalentparse>)

- [class Error](<#class-error>)

  - [`function new(?code:Null<stdgo._internal.regexp.syntax.ErrorCode>, ?expr:stdgo.GoString):Void`](<#error-function-new>)

  - [`function error():stdgo.GoString`](<#error-function-error>)

- [class Inst](<#class-inst>)

  - [`function new(?op:Null<stdgo._internal.regexp.syntax.InstOp>, ?out:stdgo.GoUInt32, ?arg:stdgo.GoUInt32, ?rune:stdgo.Slice<stdgo.GoInt32>):Void`](<#inst-function-new>)

  - [`function _op():stdgo._internal.regexp.syntax.InstOp`](<#inst-function-_op>)

  - [`function matchEmptyWidth( _before:stdgo.GoRune, _after:stdgo.GoRune):Bool`](<#inst-function-matchemptywidth>)

  - [`function matchRune( _r:stdgo.GoRune):Bool`](<#inst-function-matchrune>)

  - [`function matchRunePos( _r:stdgo.GoRune):stdgo.GoInt`](<#inst-function-matchrunepos>)

  - [`function string():stdgo.GoString`](<#inst-function-string>)

- [class Prog](<#class-prog>)

  - [`function new(?inst:stdgo.Slice<stdgo._internal.regexp.syntax.Inst>, ?start:stdgo.GoInt, ?numCap:stdgo.GoInt):Void`](<#prog-function-new>)

  - [`function _skipNop( _pc:stdgo.GoUInt32):stdgo.Ref<stdgo._internal.regexp.syntax.Inst>`](<#prog-function-_skipnop>)

  - [`function prefix():{ _1:Bool; _0:stdgo.GoString;}`](<#prog-function-prefix>)

  - [`function startCond():stdgo._internal.regexp.syntax.EmptyOp`](<#prog-function-startcond>)

  - [`function string():stdgo.GoString`](<#prog-function-string>)

- [class Regexp](<#class-regexp>)

  - [`function new(?op:Null<stdgo._internal.regexp.syntax.Op>, ?flags:Null<stdgo._internal.regexp.syntax.Flags>, ?sub:stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>>, ?sub0:stdgo.GoArray<stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>>, ?rune:stdgo.Slice<stdgo.GoInt32>, ?rune0:stdgo.GoArray<stdgo.GoInt32>, ?min:stdgo.GoInt, ?max:stdgo.GoInt, ?cap:stdgo.GoInt, ?name:stdgo.GoString):Void`](<#regexp-function-new>)

  - [`function _capNames( _names:stdgo.Slice<stdgo.GoString>):Void`](<#regexp-function-_capnames>)

  - [`function capNames():stdgo.Slice<stdgo.GoString>`](<#regexp-function-capnames>)

  - [`function equal( _y:stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>):Bool`](<#regexp-function-equal>)

  - [`function maxCap():stdgo.GoInt`](<#regexp-function-maxcap>)

  - [`function simplify():stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>`](<#regexp-function-simplify>)

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
import stdgo._internal.regexp.syntax.Syntax
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


```haxe
final _maxFold:stdgo.GoUInt64 = ((125251i64 : stdgo.GoUInt64))
```


```haxe
final _maxHeight:stdgo.GoUInt64 = ((1000i64 : stdgo.GoUInt64))
```


```haxe
final _maxRunes:stdgo.GoUInt64 = ((33554432i64 : stdgo.GoUInt64))
```


```haxe
final _maxSize:stdgo.GoUInt64 = ((3355443i64 : stdgo.GoUInt64))
```


```haxe
final _meta:stdgo.GoString = (("\\.+*?()|[]{}^$" : stdgo.GoString))
```


```haxe
final _minFold:stdgo.GoUInt64 = ((65i64 : stdgo.GoUInt64))
```


```haxe
final _noMatch:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final _opLeftParen:stdgo._internal.regexp.syntax.Op = ((129 : stdgo._internal.regexp.syntax.Syntax.Op))
```


```haxe
final _opPseudo:stdgo._internal.regexp.syntax.Op = ((128 : stdgo._internal.regexp.syntax.Syntax.Op))
```


```haxe
final _opVerticalBar:stdgo._internal.regexp.syntax.Op = ((129 : stdgo._internal.regexp.syntax.Syntax.Op))
```


```haxe
final _runeSize:stdgo.GoUInt64 = ((4i64 : stdgo.GoUInt64))
```


```haxe
final _testFlags:stdgo._internal.regexp.syntax.Flags = ((204 : stdgo._internal.regexp.syntax.Syntax.Flags))
```


```haxe
final classNL:stdgo._internal.regexp.syntax.Flags = ((512 : stdgo._internal.regexp.syntax.Syntax.Flags))
```


```haxe
final dotNL:stdgo._internal.regexp.syntax.Flags = ((512 : stdgo._internal.regexp.syntax.Syntax.Flags))
```


```haxe
final emptyBeginLine:stdgo._internal.regexp.syntax.EmptyOp = ((32 : stdgo._internal.regexp.syntax.Syntax.EmptyOp))
```


```haxe
final emptyBeginText:stdgo._internal.regexp.syntax.EmptyOp = ((32 : stdgo._internal.regexp.syntax.Syntax.EmptyOp))
```


```haxe
final emptyEndLine:stdgo._internal.regexp.syntax.EmptyOp = ((32 : stdgo._internal.regexp.syntax.Syntax.EmptyOp))
```


```haxe
final emptyEndText:stdgo._internal.regexp.syntax.EmptyOp = ((32 : stdgo._internal.regexp.syntax.Syntax.EmptyOp))
```


```haxe
final emptyNoWordBoundary:stdgo._internal.regexp.syntax.EmptyOp = ((32 : stdgo._internal.regexp.syntax.Syntax.EmptyOp))
```


```haxe
final emptyWordBoundary:stdgo._internal.regexp.syntax.EmptyOp = ((32 : stdgo._internal.regexp.syntax.Syntax.EmptyOp))
```


```haxe
final errInternalError:stdgo._internal.regexp.syntax.ErrorCode = (((("regexp/syntax: internal error" : stdgo.GoString)) : stdgo._internal.regexp.syntax.Syntax.ErrorCode))
```


```haxe
final errInvalidCharClass:stdgo._internal.regexp.syntax.ErrorCode = (((("invalid character class" : stdgo.GoString)) : stdgo._internal.regexp.syntax.Syntax.ErrorCode))
```


```haxe
final errInvalidCharRange:stdgo._internal.regexp.syntax.ErrorCode = (((("invalid character class range" : stdgo.GoString)) : stdgo._internal.regexp.syntax.Syntax.ErrorCode))
```


```haxe
final errInvalidEscape:stdgo._internal.regexp.syntax.ErrorCode = (((("invalid escape sequence" : stdgo.GoString)) : stdgo._internal.regexp.syntax.Syntax.ErrorCode))
```


```haxe
final errInvalidNamedCapture:stdgo._internal.regexp.syntax.ErrorCode = (((("invalid named capture" : stdgo.GoString)) : stdgo._internal.regexp.syntax.Syntax.ErrorCode))
```


```haxe
final errInvalidPerlOp:stdgo._internal.regexp.syntax.ErrorCode = (((("invalid or unsupported Perl syntax" : stdgo.GoString)) : stdgo._internal.regexp.syntax.Syntax.ErrorCode))
```


```haxe
final errInvalidRepeatOp:stdgo._internal.regexp.syntax.ErrorCode = (((("invalid nested repetition operator" : stdgo.GoString)) : stdgo._internal.regexp.syntax.Syntax.ErrorCode))
```


```haxe
final errInvalidRepeatSize:stdgo._internal.regexp.syntax.ErrorCode = (((("invalid repeat count" : stdgo.GoString)) : stdgo._internal.regexp.syntax.Syntax.ErrorCode))
```


```haxe
final errInvalidUTF8:stdgo._internal.regexp.syntax.ErrorCode = (((("invalid UTF-8" : stdgo.GoString)) : stdgo._internal.regexp.syntax.Syntax.ErrorCode))
```


```haxe
final errLarge:stdgo._internal.regexp.syntax.ErrorCode = (((("expression too large" : stdgo.GoString)) : stdgo._internal.regexp.syntax.Syntax.ErrorCode))
```


```haxe
final errMissingBracket:stdgo._internal.regexp.syntax.ErrorCode = (((("missing closing ]" : stdgo.GoString)) : stdgo._internal.regexp.syntax.Syntax.ErrorCode))
```


```haxe
final errMissingParen:stdgo._internal.regexp.syntax.ErrorCode = (((("missing closing )" : stdgo.GoString)) : stdgo._internal.regexp.syntax.Syntax.ErrorCode))
```


```haxe
final errMissingRepeatArgument:stdgo._internal.regexp.syntax.ErrorCode = (((("missing argument to repetition operator" : stdgo.GoString)) : stdgo._internal.regexp.syntax.Syntax.ErrorCode))
```


```haxe
final errNestingDepth:stdgo._internal.regexp.syntax.ErrorCode = (((("expression nests too deeply" : stdgo.GoString)) : stdgo._internal.regexp.syntax.Syntax.ErrorCode))
```


```haxe
final errTrailingBackslash:stdgo._internal.regexp.syntax.ErrorCode = (((("trailing backslash at end of expression" : stdgo.GoString)) : stdgo._internal.regexp.syntax.Syntax.ErrorCode))
```


```haxe
final errUnexpectedParen:stdgo._internal.regexp.syntax.ErrorCode = (((("unexpected )" : stdgo.GoString)) : stdgo._internal.regexp.syntax.Syntax.ErrorCode))
```


```haxe
final foldCase:stdgo._internal.regexp.syntax.Flags = ((512 : stdgo._internal.regexp.syntax.Syntax.Flags))
```


```haxe
final instAlt:stdgo._internal.regexp.syntax.InstOp = ((10 : stdgo._internal.regexp.syntax.Syntax.InstOp))
```


```haxe
final instAltMatch:stdgo._internal.regexp.syntax.InstOp = ((10 : stdgo._internal.regexp.syntax.Syntax.InstOp))
```


```haxe
final instCapture:stdgo._internal.regexp.syntax.InstOp = ((10 : stdgo._internal.regexp.syntax.Syntax.InstOp))
```


```haxe
final instEmptyWidth:stdgo._internal.regexp.syntax.InstOp = ((10 : stdgo._internal.regexp.syntax.Syntax.InstOp))
```


```haxe
final instFail:stdgo._internal.regexp.syntax.InstOp = ((10 : stdgo._internal.regexp.syntax.Syntax.InstOp))
```


```haxe
final instMatch:stdgo._internal.regexp.syntax.InstOp = ((10 : stdgo._internal.regexp.syntax.Syntax.InstOp))
```


```haxe
final instNop:stdgo._internal.regexp.syntax.InstOp = ((10 : stdgo._internal.regexp.syntax.Syntax.InstOp))
```


```haxe
final instRune:stdgo._internal.regexp.syntax.InstOp = ((10 : stdgo._internal.regexp.syntax.Syntax.InstOp))
```


```haxe
final instRune1:stdgo._internal.regexp.syntax.InstOp = ((10 : stdgo._internal.regexp.syntax.Syntax.InstOp))
```


```haxe
final instRuneAny:stdgo._internal.regexp.syntax.InstOp = ((10 : stdgo._internal.regexp.syntax.Syntax.InstOp))
```


```haxe
final instRuneAnyNotNL:stdgo._internal.regexp.syntax.InstOp = ((10 : stdgo._internal.regexp.syntax.Syntax.InstOp))
```


```haxe
final literal:stdgo._internal.regexp.syntax.Flags = ((512 : stdgo._internal.regexp.syntax.Syntax.Flags))
```


```haxe
final matchNL:stdgo._internal.regexp.syntax.Flags = ((12 : stdgo._internal.regexp.syntax.Syntax.Flags))
```


```haxe
final nonGreedy:stdgo._internal.regexp.syntax.Flags = ((512 : stdgo._internal.regexp.syntax.Syntax.Flags))
```


```haxe
final oneLine:stdgo._internal.regexp.syntax.Flags = ((512 : stdgo._internal.regexp.syntax.Syntax.Flags))
```


```haxe
final opAlternate:stdgo._internal.regexp.syntax.Op = ((19 : stdgo._internal.regexp.syntax.Syntax.Op))
```


```haxe
final opAnyChar:stdgo._internal.regexp.syntax.Op = ((19 : stdgo._internal.regexp.syntax.Syntax.Op))
```


```haxe
final opAnyCharNotNL:stdgo._internal.regexp.syntax.Op = ((19 : stdgo._internal.regexp.syntax.Syntax.Op))
```


```haxe
final opBeginLine:stdgo._internal.regexp.syntax.Op = ((19 : stdgo._internal.regexp.syntax.Syntax.Op))
```


```haxe
final opBeginText:stdgo._internal.regexp.syntax.Op = ((19 : stdgo._internal.regexp.syntax.Syntax.Op))
```


```haxe
final opCapture:stdgo._internal.regexp.syntax.Op = ((19 : stdgo._internal.regexp.syntax.Syntax.Op))
```


```haxe
final opCharClass:stdgo._internal.regexp.syntax.Op = ((19 : stdgo._internal.regexp.syntax.Syntax.Op))
```


```haxe
final opConcat:stdgo._internal.regexp.syntax.Op = ((19 : stdgo._internal.regexp.syntax.Syntax.Op))
```


```haxe
final opEmptyMatch:stdgo._internal.regexp.syntax.Op = ((19 : stdgo._internal.regexp.syntax.Syntax.Op))
```


```haxe
final opEndLine:stdgo._internal.regexp.syntax.Op = ((19 : stdgo._internal.regexp.syntax.Syntax.Op))
```


```haxe
final opEndText:stdgo._internal.regexp.syntax.Op = ((19 : stdgo._internal.regexp.syntax.Syntax.Op))
```


```haxe
final opLiteral:stdgo._internal.regexp.syntax.Op = ((19 : stdgo._internal.regexp.syntax.Syntax.Op))
```


```haxe
final opNoMatch:stdgo._internal.regexp.syntax.Op = ((19 : stdgo._internal.regexp.syntax.Syntax.Op))
```


```haxe
final opNoWordBoundary:stdgo._internal.regexp.syntax.Op = ((19 : stdgo._internal.regexp.syntax.Syntax.Op))
```


```haxe
final opPlus:stdgo._internal.regexp.syntax.Op = ((19 : stdgo._internal.regexp.syntax.Syntax.Op))
```


```haxe
final opQuest:stdgo._internal.regexp.syntax.Op = ((19 : stdgo._internal.regexp.syntax.Syntax.Op))
```


```haxe
final opRepeat:stdgo._internal.regexp.syntax.Op = ((19 : stdgo._internal.regexp.syntax.Syntax.Op))
```


```haxe
final opStar:stdgo._internal.regexp.syntax.Op = ((19 : stdgo._internal.regexp.syntax.Syntax.Op))
```


```haxe
final opWordBoundary:stdgo._internal.regexp.syntax.Op = ((19 : stdgo._internal.regexp.syntax.Syntax.Op))
```


```haxe
final perl:stdgo._internal.regexp.syntax.Flags = ((212 : stdgo._internal.regexp.syntax.Syntax.Flags))
```


```haxe
final perlX:stdgo._internal.regexp.syntax.Flags = ((512 : stdgo._internal.regexp.syntax.Syntax.Flags))
```


```haxe
final posix:stdgo._internal.regexp.syntax.Flags = ((0 : stdgo._internal.regexp.syntax.Syntax.Flags))
```


```haxe
final simple:stdgo._internal.regexp.syntax.Flags = ((512 : stdgo._internal.regexp.syntax.Syntax.Flags))
```


```haxe
final unicodeGroups:stdgo._internal.regexp.syntax.Flags = ((512 : stdgo._internal.regexp.syntax.Syntax.Flags))
```


```haxe
final wasDollar:stdgo._internal.regexp.syntax.Flags = ((512 : stdgo._internal.regexp.syntax.Syntax.Flags))
```


# Variables


```haxe
import stdgo._internal.regexp.syntax.Syntax
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
var _anyTable:stdgo.Ref<stdgo._internal.unicode.RangeTable>
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
var _compileTests:stdgo.Slice<stdgo._internal.regexp.syntax.T__struct_1>
```


```haxe
var _foldcaseTests:stdgo.Slice<stdgo._internal.regexp.syntax.T_parseTest>
```


```haxe
var _instOpNames:stdgo.Slice<stdgo.GoString>
```


```haxe
var _invalidRegexps:stdgo.Slice<stdgo.GoString>
```


```haxe
var _literalTests:stdgo.Slice<stdgo._internal.regexp.syntax.T_parseTest>
```


```haxe
var _matchnlTests:stdgo.Slice<stdgo._internal.regexp.syntax.T_parseTest>
```


```haxe
var _nomatchnlTests:stdgo.Slice<stdgo._internal.regexp.syntax.T_parseTest>
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
var _parseTests:stdgo.Slice<stdgo._internal.regexp.syntax.T_parseTest>
```


```haxe
var _perlGroup:stdgo.GoMap<stdgo.GoString, stdgo._internal.regexp.syntax.T_charGroup>
```


```haxe
var _posixGroup:stdgo.GoMap<stdgo.GoString, stdgo._internal.regexp.syntax.T_charGroup>
```


```haxe
var _simplifyTests:stdgo.Slice<stdgo._internal.regexp.syntax.T__struct_2>
```


```haxe
var _sink:stdgo.AnyInterface
```


# Functions


```haxe
import stdgo._internal.regexp.syntax.Syntax
```


## function \_appendClass


```haxe
function _appendClass(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Slice<stdgo.GoRune>):stdgo.Slice<stdgo.GoRune>
```


[\(view code\)](<./Syntax.hx#L1234>)


## function \_appendFoldedClass


```haxe
function _appendFoldedClass(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Slice<stdgo.GoRune>):stdgo.Slice<stdgo.GoRune>
```


[\(view code\)](<./Syntax.hx#L1243>)


## function \_appendFoldedRange


```haxe
function _appendFoldedRange(_r:stdgo.Slice<stdgo.GoRune>, _lo:stdgo.GoRune, _hi:stdgo.GoRune):stdgo.Slice<stdgo.GoRune>
```


[\(view code\)](<./Syntax.hx#L1206>)


## function \_appendLiteral


```haxe
function _appendLiteral(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.GoRune, _flags:stdgo._internal.regexp.syntax.Flags):stdgo.Slice<stdgo.GoRune>
```


[\(view code\)](<./Syntax.hx#L1179>)


## function \_appendNegatedClass


```haxe
function _appendNegatedClass(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Slice<stdgo.GoRune>):stdgo.Slice<stdgo.GoRune>
```


[\(view code\)](<./Syntax.hx#L1252>)


## function \_appendNegatedTable


```haxe
function _appendNegatedTable(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Ref<stdgo._internal.unicode.RangeTable>):stdgo.Slice<stdgo.GoRune>
```


[\(view code\)](<./Syntax.hx#L1298>)


## function \_appendRange


```haxe
function _appendRange(_r:stdgo.Slice<stdgo.GoRune>, _lo:stdgo.GoRune, _hi:stdgo.GoRune):stdgo.Slice<stdgo.GoRune>
```


[\(view code\)](<./Syntax.hx#L1185>)


## function \_appendTable


```haxe
function _appendTable(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Ref<stdgo._internal.unicode.RangeTable>):stdgo.Slice<stdgo.GoRune>
```


[\(view code\)](<./Syntax.hx#L1269>)


## function \_bw


```haxe
function _bw(_b:stdgo.Ref<stdgo._internal.strings.Builder>, _args:haxe.Rest<stdgo.GoString>):Void
```


[\(view code\)](<./Syntax.hx#L1687>)


## function \_checkUTF8


```haxe
function _checkUTF8(_s:stdgo.GoString):stdgo.Error
```


[\(view code\)](<./Syntax.hx#L1364>)


## function \_cleanAlt


```haxe
function _cleanAlt(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>):Void
```


[\(view code\)](<./Syntax.hx#L612>)


## function \_cleanClass


```haxe
function _cleanClass(_rp:stdgo.Ref<stdgo.Slice<stdgo.GoRune>>):stdgo.Slice<stdgo.GoRune>
```


[\(view code\)](<./Syntax.hx#L1155>)


## function \_dump


```haxe
function _dump(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>):stdgo.GoString
```


[\(view code\)](<./Syntax.hx#L1428>)


## function \_dumpInst


```haxe
function _dumpInst(_b:stdgo.Ref<stdgo._internal.strings.Builder>, _i:stdgo.Ref<stdgo._internal.regexp.syntax.Inst>):Void
```


[\(view code\)](<./Syntax.hx#L1711>)


## function \_dumpProg


```haxe
function _dumpProg(_b:stdgo.Ref<stdgo._internal.strings.Builder>, _p:stdgo.Ref<stdgo._internal.regexp.syntax.Prog>):Void
```


[\(view code\)](<./Syntax.hx#L1693>)


## function \_dumpRegexp


```haxe
function _dumpRegexp(_b:stdgo.Ref<stdgo._internal.strings.Builder>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>):Void
```


[\(view code\)](<./Syntax.hx#L1433>)


## function \_escape


```haxe
function _escape(_b:stdgo.Ref<stdgo._internal.strings.Builder>, _r:stdgo.GoRune, _force:Bool):Void
```


[\(view code\)](<./Syntax.hx#L1948>)


## function \_isCharClass


```haxe
function _isCharClass(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>):Bool
```


[\(view code\)](<./Syntax.hx#L1075>)


## function \_isUpperFold


```haxe
function _isUpperFold(_r:stdgo.GoRune):Bool
```


[\(view code\)](<./Syntax.hx#L1541>)


## function \_isValidCaptureName


```haxe
function _isValidCaptureName(_name:stdgo.GoString):Bool
```


[\(view code\)](<./Syntax.hx#L1064>)


## function \_isalnum


```haxe
function _isalnum(_c:stdgo.GoRune):Bool
```


[\(view code\)](<./Syntax.hx#L1382>)


## function \_literalRegexp


```haxe
function _literalRegexp(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Flags):stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>
```


[\(view code\)](<./Syntax.hx#L633>)


## function \_makePatchList


```haxe
function _makePatchList(_n:stdgo.GoUInt32):stdgo._internal.regexp.syntax.T_patchList
```


[\(view code\)](<./Syntax.hx#L562>)


## function \_matchRune


```haxe
function _matchRune(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>, _r:stdgo.GoRune):Bool
```


[\(view code\)](<./Syntax.hx#L1078>)


## function \_mergeCharClass


```haxe
function _mergeCharClass(_dst:stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>, _src:stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>):Void
```


[\(view code\)](<./Syntax.hx#L1101>)


## function \_minFoldRune


```haxe
function _minFoldRune(_r:stdgo.GoRune):stdgo.GoRune
```


[\(view code\)](<./Syntax.hx#L573>)


## function \_mkCharClass


```haxe
function _mkCharClass(_f:()):stdgo.GoString
```


[\(view code\)](<./Syntax.hx#L1518>)


## function \_negateClass


```haxe
function _negateClass(_r:stdgo.Slice<stdgo.GoRune>):stdgo.Slice<stdgo.GoRune>
```


[\(view code\)](<./Syntax.hx#L1343>)


## function \_nextRune


```haxe
function _nextRune(_s:stdgo.GoString):{
	_2:stdgo.Error;
	_1:stdgo.GoString;
	_0:stdgo.GoRune;
}
```


[\(view code\)](<./Syntax.hx#L1374>)


## function \_parse


```haxe
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Flags):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>;
}
```


[\(view code\)](<./Syntax.hx#L649>)


## function \_repeatIsValid


```haxe
function _repeatIsValid(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>, _n:stdgo.GoInt):Bool
```


[\(view code\)](<./Syntax.hx#L589>)


## function \_simplify1


```haxe
function _simplify1(_op:stdgo._internal.regexp.syntax.Op, _flags:stdgo._internal.regexp.syntax.Flags, _sub:stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>):stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>
```


[\(view code\)](<./Syntax.hx#L2000>)


## function \_testParseDump


```haxe
function _testParseDump(_t:stdgo.Ref<stdgo._internal.testing.T_>, _tests:stdgo.Slice<stdgo._internal.regexp.syntax.T_parseTest>, _flags:stdgo._internal.regexp.syntax.Flags):Void
```


[\(view code\)](<./Syntax.hx#L1412>)


## function \_u32


```haxe
function _u32(_i:stdgo.GoUInt32):stdgo.GoString
```


[\(view code\)](<./Syntax.hx#L1708>)


## function \_unhex


```haxe
function _unhex(_c:stdgo.GoRune):stdgo.GoRune
```


[\(view code\)](<./Syntax.hx#L1385>)


## function \_unicodeTable


```haxe
function _unicodeTable(_name:stdgo.GoString):{
	_1:stdgo.Ref<stdgo._internal.unicode.RangeTable>;
	_0:stdgo.Ref<stdgo._internal.unicode.RangeTable>;
}
```


[\(view code\)](<./Syntax.hx#L1137>)


## function \_writeRegexp


```haxe
function _writeRegexp(_b:stdgo.Ref<stdgo._internal.strings.Builder>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>):Void
```


[\(view code\)](<./Syntax.hx#L1784>)


## function benchmarkEmptyOpContext


```haxe
function benchmarkEmptyOpContext(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Syntax.hx#L1756>)


## function benchmarkIsWordChar


```haxe
function benchmarkIsWordChar(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Syntax.hx#L1769>)


## function compile


```haxe
function compile(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.regexp.syntax.Prog>;
}
```


[\(view code\)](<./Syntax.hx#L565>)


## function emptyOpContext


```haxe
function emptyOpContext(_r1:stdgo.GoRune, _r2:stdgo.GoRune):stdgo._internal.regexp.syntax.EmptyOp
```


[\(view code\)](<./Syntax.hx#L1662>)


## function isWordChar


```haxe
function isWordChar(_r:stdgo.GoRune):Bool
```


[\(view code\)](<./Syntax.hx#L1684>)


## function parse


```haxe
function parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Flags):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>;
}
```


[\(view code\)](<./Syntax.hx#L646>)


## function testAppendRangeCollapse


```haxe
function testAppendRangeCollapse(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Syntax.hx#L1572>)


## function testCompile


```haxe
function testCompile(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Syntax.hx#L1746>)


## function testFoldConstants


```haxe
function testFoldConstants(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Syntax.hx#L1554>)


## function testParseFoldCase


```haxe
function testParseFoldCase(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Syntax.hx#L1400>)


## function testParseInvalidRegexps


```haxe
function testParseInvalidRegexps(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Syntax.hx#L1585>)


## function testParseLiteral


```haxe
function testParseLiteral(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Syntax.hx#L1403>)


## function testParseMatchNL


```haxe
function testParseMatchNL(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Syntax.hx#L1406>)


## function testParseNoMatchNL


```haxe
function testParseNoMatchNL(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Syntax.hx#L1409>)


## function testParseSimple


```haxe
function testParseSimple(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Syntax.hx#L1397>)


## function testSimplify


```haxe
function testSimplify(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Syntax.hx#L2014>)


## function testToStringEquivalentParse


```haxe
function testToStringEquivalentParse(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Syntax.hx#L1629>)


# Classes


```haxe
import stdgo._internal.regexp.syntax.*
```


## class Error


```haxe
var code:stdgo._internal.regexp.syntax.ErrorCode
```


```haxe
var expr:stdgo.GoString
```


### Error function new


```haxe
function new(?code:Null<stdgo._internal.regexp.syntax.ErrorCode>, ?expr:stdgo.GoString):Void
```


[\(view code\)](<./Syntax.hx#L370>)


### Error function error


```haxe
function error():stdgo.GoString
```


[\(view code\)](<./Syntax.hx#L2337>)


## class Inst


```haxe
var arg:stdgo.GoUInt32
```


```haxe
var op:stdgo._internal.regexp.syntax.InstOp
```


```haxe
var out:stdgo.GoUInt32
```


```haxe
var rune:stdgo.Slice<stdgo.GoInt32>
```


### Inst function new


```haxe
function new(?op:Null<stdgo._internal.regexp.syntax.InstOp>, ?out:stdgo.GoUInt32, ?arg:stdgo.GoUInt32, ?rune:stdgo.Slice<stdgo.GoInt32>):Void
```


[\(view code\)](<./Syntax.hx#L473>)


### Inst function \_op


```haxe
function _op():stdgo._internal.regexp.syntax.InstOp
```


[\(view code\)](<./Syntax.hx#L3923>)


### Inst function matchEmptyWidth


```haxe
function matchEmptyWidth( _before:stdgo.GoRune, _after:stdgo.GoRune):Bool
```


[\(view code\)](<./Syntax.hx#L3835>)


### Inst function matchRune


```haxe
function matchRune( _r:stdgo.GoRune):Bool
```


[\(view code\)](<./Syntax.hx#L3918>)


### Inst function matchRunePos


```haxe
function matchRunePos( _r:stdgo.GoRune):stdgo.GoInt
```


[\(view code\)](<./Syntax.hx#L3856>)


### Inst function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Syntax.hx#L3828>)


## class Prog


```haxe
var inst:stdgo.Slice<stdgo._internal.regexp.syntax.Inst>
```


```haxe
var numCap:stdgo.GoInt
```


```haxe
var start:stdgo.GoInt
```


### Prog function new


```haxe
function new(?inst:stdgo.Slice<stdgo._internal.regexp.syntax.Inst>, ?start:stdgo.GoInt, ?numCap:stdgo.GoInt):Void
```


[\(view code\)](<./Syntax.hx#L458>)


### Prog function \_skipNop


```haxe
function _skipNop( _pc:stdgo.GoUInt32):stdgo.Ref<stdgo._internal.regexp.syntax.Inst>
```


[\(view code\)](<./Syntax.hx#L3791>)


### Prog function prefix


```haxe
function prefix():{
	_1:Bool;
	_0:stdgo.GoString;
}
```


[\(view code\)](<./Syntax.hx#L3776>)


### Prog function startCond


```haxe
function startCond():stdgo._internal.regexp.syntax.EmptyOp
```


[\(view code\)](<./Syntax.hx#L3739>)


### Prog function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Syntax.hx#L3800>)


## class Regexp


```haxe
var cap:stdgo.GoInt
```


```haxe
var flags:stdgo._internal.regexp.syntax.Flags
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
var op:stdgo._internal.regexp.syntax.Op
```


```haxe
var rune:stdgo.Slice<stdgo.GoInt32>
```


```haxe
var rune0:stdgo.GoArray<stdgo.GoInt32>
```


```haxe
var sub:stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>>
```


```haxe
var sub0:stdgo.GoArray<stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>>
```


### Regexp function new


```haxe
function new(?op:Null<stdgo._internal.regexp.syntax.Op>, ?flags:Null<stdgo._internal.regexp.syntax.Flags>, ?sub:stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>>, ?sub0:stdgo.GoArray<stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>>, ?rune:stdgo.Slice<stdgo.GoInt32>, ?rune0:stdgo.GoArray<stdgo.GoInt32>, ?min:stdgo.GoInt, ?max:stdgo.GoInt, ?cap:stdgo.GoInt, ?name:stdgo.GoString):Void
```


[\(view code\)](<./Syntax.hx#L495>)


### Regexp function \_capNames


```haxe
function _capNames( _names:stdgo.Slice<stdgo.GoString>):Void
```


[\(view code\)](<./Syntax.hx#L4056>)


### Regexp function capNames


```haxe
function capNames():stdgo.Slice<stdgo.GoString>
```


[\(view code\)](<./Syntax.hx#L4066>)


### Regexp function equal


```haxe
function equal( _y:stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>):Bool
```


[\(view code\)](<./Syntax.hx#L4097>)


### Regexp function maxCap


```haxe
function maxCap():stdgo.GoInt
```


[\(view code\)](<./Syntax.hx#L4073>)


### Regexp function simplify


```haxe
function simplify():stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>
```


[\(view code\)](<./Syntax.hx#L3958>)


### Regexp function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Syntax.hx#L4090>)


# Typedefs


```haxe
import stdgo._internal.regexp.syntax.*
```


## typedef EmptyOp


```haxe
typedef EmptyOp = stdgo.GoUInt8;
```


## typedef ErrorCode


```haxe
typedef ErrorCode = stdgo.GoString;
```


## typedef Flags


```haxe
typedef Flags = stdgo.GoUInt16;
```


## typedef InstOp


```haxe
typedef InstOp = stdgo.GoUInt8;
```


## typedef Op


```haxe
typedef Op = stdgo.GoUInt8;
```


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


