# Module: `stdgo.regexp.syntax`

[(view library index)](../../stdgo.md)


# Overview


stdgo/_internal/internal/Macro.macro.hx:43: non hxb types:,362

# Index


- [Variables](<#variables>)

- [`function _appendClass(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Slice<stdgo.GoRune>):Void`](<#function-_appendclass>)

- [`function _appendFoldedClass(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Slice<stdgo.GoRune>):Void`](<#function-_appendfoldedclass>)

- [`function _appendFoldedRange(_r:stdgo.Slice<stdgo.GoRune>, _lo:stdgo.GoRune, _hi:stdgo.GoRune):Void`](<#function-_appendfoldedrange>)

- [`function _appendLiteral(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.GoRune, _flags:stdgo.regexp.syntax.Flags):Void`](<#function-_appendliteral>)

- [`function _appendNegatedClass(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Slice<stdgo.GoRune>):Void`](<#function-_appendnegatedclass>)

- [`function _appendNegatedTable(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Ref<stdgo._internal.unicode.RangeTable>):Void`](<#function-_appendnegatedtable>)

- [`function _appendRange(_r:stdgo.Slice<stdgo.GoRune>, _lo:stdgo.GoRune, _hi:stdgo.GoRune):Void`](<#function-_appendrange>)

- [`function _appendTable(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Ref<stdgo._internal.unicode.RangeTable>):Void`](<#function-_appendtable>)

- [`function _bw(_b:stdgo.Ref<stdgo._internal.strings.Builder>, _args:haxe.Rest<stdgo.GoString>):Void`](<#function-_bw>)

- [`function _checkUTF8(_s:stdgo.GoString):Void`](<#function-_checkutf8>)

- [`function _cleanAlt(_re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Void`](<#function-_cleanalt>)

- [`function _cleanClass(_rp:stdgo.Ref<stdgo.Slice<stdgo.GoRune>>):Void`](<#function-_cleanclass>)

- [`function _dump(_re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Void`](<#function-_dump>)

- [`function _dumpInst(_b:stdgo.Ref<stdgo._internal.strings.Builder>, _i:stdgo.Ref<stdgo.regexp.syntax.Inst>):Void`](<#function-_dumpinst>)

- [`function _dumpProg(_b:stdgo.Ref<stdgo._internal.strings.Builder>, _p:stdgo.Ref<stdgo.regexp.syntax.Prog>):Void`](<#function-_dumpprog>)

- [`function _dumpRegexp(_b:stdgo.Ref<stdgo._internal.strings.Builder>, _re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Void`](<#function-_dumpregexp>)

- [`function _escape(_b:stdgo.Ref<stdgo._internal.strings.Builder>, _r:stdgo.GoRune, _force:Bool):Void`](<#function-_escape>)

- [`function _isCharClass(_re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Void`](<#function-_ischarclass>)

- [`function _isUpperFold(_r:stdgo.GoRune):Void`](<#function-_isupperfold>)

- [`function _isValidCaptureName(_name:stdgo.GoString):Void`](<#function-_isvalidcapturename>)

- [`function _isalnum(_c:stdgo.GoRune):Void`](<#function-_isalnum>)

- [`function _literalRegexp(_s:stdgo.GoString, _flags:stdgo.regexp.syntax.Flags):Void`](<#function-_literalregexp>)

- [`function _makePatchList(_n:stdgo.GoUInt32):Void`](<#function-_makepatchlist>)

- [`function _matchRune(_re:stdgo.Ref<stdgo.regexp.syntax.Regexp>, _r:stdgo.GoRune):Void`](<#function-_matchrune>)

- [`function _mergeCharClass(_dst:stdgo.Ref<stdgo.regexp.syntax.Regexp>, _src:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Void`](<#function-_mergecharclass>)

- [`function _minFoldRune(_r:stdgo.GoRune):Void`](<#function-_minfoldrune>)

- [`function _mkCharClass(_f:()):Void`](<#function-_mkcharclass>)

- [`function _negateClass(_r:stdgo.Slice<stdgo.GoRune>):Void`](<#function-_negateclass>)

- [`function _nextRune(_s:stdgo.GoString):Void`](<#function-_nextrune>)

- [`function _parse(_s:stdgo.GoString, _flags:stdgo.regexp.syntax.Flags):Void`](<#function-_parse>)

- [`function _repeatIsValid(_re:stdgo.Ref<stdgo.regexp.syntax.Regexp>, _n:stdgo.GoInt):Void`](<#function-_repeatisvalid>)

- [`function _simplify1(_op:stdgo.regexp.syntax.Op, _flags:stdgo.regexp.syntax.Flags, _sub:stdgo.Ref<stdgo.regexp.syntax.Regexp>, _re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Void`](<#function-_simplify1>)

- [`function _testParseDump(_t:stdgo.Ref<stdgo._internal.testing.T_>, _tests:stdgo.Slice<stdgo.regexp.syntax.T_parseTest>, _flags:stdgo.regexp.syntax.Flags):Void`](<#function-_testparsedump>)

- [`function _u32(_i:stdgo.GoUInt32):Void`](<#function-_u32>)

- [`function _unhex(_c:stdgo.GoRune):Void`](<#function-_unhex>)

- [`function _unicodeTable(_name:stdgo.GoString):Void`](<#function-_unicodetable>)

- [`function _writeRegexp(_b:stdgo.Ref<stdgo._internal.strings.Builder>, _re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Void`](<#function-_writeregexp>)

- [`function benchmarkEmptyOpContext(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkemptyopcontext>)

- [`function benchmarkIsWordChar(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkiswordchar>)

- [`function compile(_re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Void`](<#function-compile>)

- [`function emptyOpContext(_r1:stdgo.GoRune, _r2:stdgo.GoRune):Void`](<#function-emptyopcontext>)

- [`function isWordChar(_r:stdgo.GoRune):Void`](<#function-iswordchar>)

- [`function parse(_s:stdgo.GoString, _flags:stdgo.regexp.syntax.Flags):Void`](<#function-parse>)

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

# Variables


```haxe
import stdgo.regexp.syntax.Syntax
```


```haxe
var __Op_index_0:Dynamic
```


```haxe
var __Op_name_0:Dynamic
```


```haxe
var __Op_name_1:Dynamic
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var _anyRune:Dynamic
```


```haxe
var _anyRuneNotNL:Dynamic
```


```haxe
var _anyTable:Dynamic
```


```haxe
var _code1:Dynamic
```


```haxe
var _code10:Dynamic
```


```haxe
var _code11:Dynamic
```


```haxe
var _code12:Dynamic
```


```haxe
var _code13:Dynamic
```


```haxe
var _code14:Dynamic
```


```haxe
var _code15:Dynamic
```


```haxe
var _code16:Dynamic
```


```haxe
var _code17:Dynamic
```


```haxe
var _code2:Dynamic
```


```haxe
var _code3:Dynamic
```


```haxe
var _code4:Dynamic
```


```haxe
var _code5:Dynamic
```


```haxe
var _code6:Dynamic
```


```haxe
var _code7:Dynamic
```


```haxe
var _code8:Dynamic
```


```haxe
var _code9:Dynamic
```


```haxe
var _compileTests:Dynamic
```


```haxe
var _foldcaseTests:Dynamic
```


```haxe
var _instOpNames:Dynamic
```


```haxe
var _instSize:Dynamic
```


```haxe
var _invalidRegexps:Dynamic
```


```haxe
var _literalTests:Dynamic
```


```haxe
var _matchnlTests:Dynamic
```


```haxe
var _maxFold:Dynamic
```


```haxe
var _maxHeight:Dynamic
```


```haxe
var _maxRunes:Dynamic
```


```haxe
var _maxSize:Dynamic
```


```haxe
var _meta:Dynamic
```


```haxe
var _minFold:Dynamic
```


```haxe
var _noMatch:Dynamic
```


```haxe
var _nomatchnlTests:Dynamic
```


```haxe
var _onlyPOSIX:Dynamic
```


```haxe
var _onlyPerl:Dynamic
```


```haxe
var _opLeftParen:Dynamic
```


```haxe
var _opNames:Dynamic
```


```haxe
var _opPseudo:Dynamic
```


```haxe
var _opVerticalBar:Dynamic
```


```haxe
var _parseTests:Dynamic
```


```haxe
var _perlGroup:Dynamic
```


```haxe
var _posixGroup:Dynamic
```


```haxe
var _runeSize:Dynamic
```


```haxe
var _simplifyTests:Dynamic
```


```haxe
var _sink:Dynamic
```


```haxe
var _testFlags:Dynamic
```


```haxe
var classNL:Dynamic
```


```haxe
var dotNL:Dynamic
```


```haxe
var emptyBeginLine:Dynamic
```


```haxe
var emptyBeginText:Dynamic
```


```haxe
var emptyEndLine:Dynamic
```


```haxe
var emptyEndText:Dynamic
```


```haxe
var emptyNoWordBoundary:Dynamic
```


```haxe
var emptyWordBoundary:Dynamic
```


```haxe
var errInternalError:Dynamic
```


```haxe
var errInvalidCharClass:Dynamic
```


```haxe
var errInvalidCharRange:Dynamic
```


```haxe
var errInvalidEscape:Dynamic
```


```haxe
var errInvalidNamedCapture:Dynamic
```


```haxe
var errInvalidPerlOp:Dynamic
```


```haxe
var errInvalidRepeatOp:Dynamic
```


```haxe
var errInvalidRepeatSize:Dynamic
```


```haxe
var errInvalidUTF8:Dynamic
```


```haxe
var errLarge:Dynamic
```


```haxe
var errMissingBracket:Dynamic
```


```haxe
var errMissingParen:Dynamic
```


```haxe
var errMissingRepeatArgument:Dynamic
```


```haxe
var errNestingDepth:Dynamic
```


```haxe
var errTrailingBackslash:Dynamic
```


```haxe
var errUnexpectedParen:Dynamic
```


```haxe
var foldCase:Dynamic
```


```haxe
var instAlt:Dynamic
```


```haxe
var instAltMatch:Dynamic
```


```haxe
var instCapture:Dynamic
```


```haxe
var instEmptyWidth:Dynamic
```


```haxe
var instFail:Dynamic
```


```haxe
var instMatch:Dynamic
```


```haxe
var instNop:Dynamic
```


```haxe
var instRune:Dynamic
```


```haxe
var instRune1:Dynamic
```


```haxe
var instRuneAny:Dynamic
```


```haxe
var instRuneAnyNotNL:Dynamic
```


```haxe
var literal:Dynamic
```


```haxe
var matchNL:Dynamic
```


```haxe
var nonGreedy:Dynamic
```


```haxe
var oneLine:Dynamic
```


```haxe
var opAlternate:Dynamic
```


```haxe
var opAnyChar:Dynamic
```


```haxe
var opAnyCharNotNL:Dynamic
```


```haxe
var opBeginLine:Dynamic
```


```haxe
var opBeginText:Dynamic
```


```haxe
var opCapture:Dynamic
```


```haxe
var opCharClass:Dynamic
```


```haxe
var opConcat:Dynamic
```


```haxe
var opEmptyMatch:Dynamic
```


```haxe
var opEndLine:Dynamic
```


```haxe
var opEndText:Dynamic
```


```haxe
var opLiteral:Dynamic
```


```haxe
var opNoMatch:Dynamic
```


```haxe
var opNoWordBoundary:Dynamic
```


```haxe
var opPlus:Dynamic
```


```haxe
var opQuest:Dynamic
```


```haxe
var opRepeat:Dynamic
```


```haxe
var opStar:Dynamic
```


```haxe
var opWordBoundary:Dynamic
```


```haxe
var perl:Dynamic
```


```haxe
var perlX:Dynamic
```


```haxe
var posix:Dynamic
```


```haxe
var simple:Dynamic
```


```haxe
var unicodeGroups:Dynamic
```


```haxe
var wasDollar:Dynamic
```


# Functions


```haxe
import stdgo.regexp.syntax.Syntax
```


## function \_appendClass


```haxe
function _appendClass(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Slice<stdgo.GoRune>):Void
```


[\(view code\)](<./Syntax.hx#L161>)


## function \_appendFoldedClass


```haxe
function _appendFoldedClass(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Slice<stdgo.GoRune>):Void
```


[\(view code\)](<./Syntax.hx#L162>)


## function \_appendFoldedRange


```haxe
function _appendFoldedRange(_r:stdgo.Slice<stdgo.GoRune>, _lo:stdgo.GoRune, _hi:stdgo.GoRune):Void
```


[\(view code\)](<./Syntax.hx#L160>)


## function \_appendLiteral


```haxe
function _appendLiteral(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.GoRune, _flags:stdgo.regexp.syntax.Flags):Void
```


[\(view code\)](<./Syntax.hx#L158>)


## function \_appendNegatedClass


```haxe
function _appendNegatedClass(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Slice<stdgo.GoRune>):Void
```


[\(view code\)](<./Syntax.hx#L163>)


## function \_appendNegatedTable


```haxe
function _appendNegatedTable(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Ref<stdgo._internal.unicode.RangeTable>):Void
```


[\(view code\)](<./Syntax.hx#L165>)


## function \_appendRange


```haxe
function _appendRange(_r:stdgo.Slice<stdgo.GoRune>, _lo:stdgo.GoRune, _hi:stdgo.GoRune):Void
```


[\(view code\)](<./Syntax.hx#L159>)


## function \_appendTable


```haxe
function _appendTable(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Ref<stdgo._internal.unicode.RangeTable>):Void
```


[\(view code\)](<./Syntax.hx#L164>)


## function \_bw


```haxe
function _bw(_b:stdgo.Ref<stdgo._internal.strings.Builder>, _args:haxe.Rest<stdgo.GoString>):Void
```


[\(view code\)](<./Syntax.hx#L187>)


## function \_checkUTF8


```haxe
function _checkUTF8(_s:stdgo.GoString):Void
```


[\(view code\)](<./Syntax.hx#L167>)


## function \_cleanAlt


```haxe
function _cleanAlt(_re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Void
```


[\(view code\)](<./Syntax.hx#L148>)


## function \_cleanClass


```haxe
function _cleanClass(_rp:stdgo.Ref<stdgo.Slice<stdgo.GoRune>>):Void
```


[\(view code\)](<./Syntax.hx#L157>)


## function \_dump


```haxe
function _dump(_re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Void
```


[\(view code\)](<./Syntax.hx#L177>)


## function \_dumpInst


```haxe
function _dumpInst(_b:stdgo.Ref<stdgo._internal.strings.Builder>, _i:stdgo.Ref<stdgo.regexp.syntax.Inst>):Void
```


[\(view code\)](<./Syntax.hx#L190>)


## function \_dumpProg


```haxe
function _dumpProg(_b:stdgo.Ref<stdgo._internal.strings.Builder>, _p:stdgo.Ref<stdgo.regexp.syntax.Prog>):Void
```


[\(view code\)](<./Syntax.hx#L188>)


## function \_dumpRegexp


```haxe
function _dumpRegexp(_b:stdgo.Ref<stdgo._internal.strings.Builder>, _re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Void
```


[\(view code\)](<./Syntax.hx#L178>)


## function \_escape


```haxe
function _escape(_b:stdgo.Ref<stdgo._internal.strings.Builder>, _r:stdgo.GoRune, _force:Bool):Void
```


[\(view code\)](<./Syntax.hx#L195>)


## function \_isCharClass


```haxe
function _isCharClass(_re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Void
```


[\(view code\)](<./Syntax.hx#L153>)


## function \_isUpperFold


```haxe
function _isUpperFold(_r:stdgo.GoRune):Void
```


[\(view code\)](<./Syntax.hx#L180>)


## function \_isValidCaptureName


```haxe
function _isValidCaptureName(_name:stdgo.GoString):Void
```


[\(view code\)](<./Syntax.hx#L152>)


## function \_isalnum


```haxe
function _isalnum(_c:stdgo.GoRune):Void
```


[\(view code\)](<./Syntax.hx#L169>)


## function \_literalRegexp


```haxe
function _literalRegexp(_s:stdgo.GoString, _flags:stdgo.regexp.syntax.Flags):Void
```


[\(view code\)](<./Syntax.hx#L149>)


## function \_makePatchList


```haxe
function _makePatchList(_n:stdgo.GoUInt32):Void
```


[\(view code\)](<./Syntax.hx#L144>)


## function \_matchRune


```haxe
function _matchRune(_re:stdgo.Ref<stdgo.regexp.syntax.Regexp>, _r:stdgo.GoRune):Void
```


[\(view code\)](<./Syntax.hx#L154>)


## function \_mergeCharClass


```haxe
function _mergeCharClass(_dst:stdgo.Ref<stdgo.regexp.syntax.Regexp>, _src:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Void
```


[\(view code\)](<./Syntax.hx#L155>)


## function \_minFoldRune


```haxe
function _minFoldRune(_r:stdgo.GoRune):Void
```


[\(view code\)](<./Syntax.hx#L146>)


## function \_mkCharClass


```haxe
function _mkCharClass(_f:()):Void
```


[\(view code\)](<./Syntax.hx#L179>)


## function \_negateClass


```haxe
function _negateClass(_r:stdgo.Slice<stdgo.GoRune>):Void
```


[\(view code\)](<./Syntax.hx#L166>)


## function \_nextRune


```haxe
function _nextRune(_s:stdgo.GoString):Void
```


[\(view code\)](<./Syntax.hx#L168>)


## function \_parse


```haxe
function _parse(_s:stdgo.GoString, _flags:stdgo.regexp.syntax.Flags):Void
```


[\(view code\)](<./Syntax.hx#L151>)


## function \_repeatIsValid


```haxe
function _repeatIsValid(_re:stdgo.Ref<stdgo.regexp.syntax.Regexp>, _n:stdgo.GoInt):Void
```


[\(view code\)](<./Syntax.hx#L147>)


## function \_simplify1


```haxe
function _simplify1(_op:stdgo.regexp.syntax.Op, _flags:stdgo.regexp.syntax.Flags, _sub:stdgo.Ref<stdgo.regexp.syntax.Regexp>, _re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Void
```


[\(view code\)](<./Syntax.hx#L196>)


## function \_testParseDump


```haxe
function _testParseDump(_t:stdgo.Ref<stdgo._internal.testing.T_>, _tests:stdgo.Slice<stdgo.regexp.syntax.T_parseTest>, _flags:stdgo.regexp.syntax.Flags):Void
```


[\(view code\)](<./Syntax.hx#L176>)


## function \_u32


```haxe
function _u32(_i:stdgo.GoUInt32):Void
```


[\(view code\)](<./Syntax.hx#L189>)


## function \_unhex


```haxe
function _unhex(_c:stdgo.GoRune):Void
```


[\(view code\)](<./Syntax.hx#L170>)


## function \_unicodeTable


```haxe
function _unicodeTable(_name:stdgo.GoString):Void
```


[\(view code\)](<./Syntax.hx#L156>)


## function \_writeRegexp


```haxe
function _writeRegexp(_b:stdgo.Ref<stdgo._internal.strings.Builder>, _re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Void
```


[\(view code\)](<./Syntax.hx#L194>)


## function benchmarkEmptyOpContext


```haxe
function benchmarkEmptyOpContext(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Syntax.hx#L192>)


## function benchmarkIsWordChar


```haxe
function benchmarkIsWordChar(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Syntax.hx#L193>)


## function compile


```haxe
function compile(_re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Void
```


[\(view code\)](<./Syntax.hx#L145>)


## function emptyOpContext


```haxe
function emptyOpContext(_r1:stdgo.GoRune, _r2:stdgo.GoRune):Void
```


[\(view code\)](<./Syntax.hx#L185>)


## function isWordChar


```haxe
function isWordChar(_r:stdgo.GoRune):Void
```


[\(view code\)](<./Syntax.hx#L186>)


## function parse


```haxe
function parse(_s:stdgo.GoString, _flags:stdgo.regexp.syntax.Flags):Void
```


[\(view code\)](<./Syntax.hx#L150>)


## function testAppendRangeCollapse


```haxe
function testAppendRangeCollapse(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Syntax.hx#L182>)


## function testCompile


```haxe
function testCompile(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Syntax.hx#L191>)


## function testFoldConstants


```haxe
function testFoldConstants(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Syntax.hx#L181>)


## function testParseFoldCase


```haxe
function testParseFoldCase(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Syntax.hx#L172>)


## function testParseInvalidRegexps


```haxe
function testParseInvalidRegexps(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Syntax.hx#L183>)


## function testParseLiteral


```haxe
function testParseLiteral(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Syntax.hx#L173>)


## function testParseMatchNL


```haxe
function testParseMatchNL(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Syntax.hx#L174>)


## function testParseNoMatchNL


```haxe
function testParseNoMatchNL(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Syntax.hx#L175>)


## function testParseSimple


```haxe
function testParseSimple(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Syntax.hx#L171>)


## function testSimplify


```haxe
function testSimplify(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Syntax.hx#L197>)


## function testToStringEquivalentParse


```haxe
function testToStringEquivalentParse(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Syntax.hx#L184>)


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


