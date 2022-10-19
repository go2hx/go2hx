# Module: `stdgo.regexp.syntax`

[(view library index)](../../stdgo.md)


# Overview


|\* Package syntax parses regular expressions into parse trees and compiles parse trees into programs. Most clients of regular expressions will use the facilities of package regexp \(such as Compile and Match\) instead of this package.  \# Syntax  The regular expression syntax understood by this package when parsing with the Perl flag is as follows. Parts of the syntax can be disabled by passing alternate flags to Parse.  Single characters:  .              any character, possibly including newline \(flag s=true\) \[xyz\]          character class \[^xyz\]         negated character class \\d             Perl character class \\D             negated Perl character class \[\[:alpha:\]\]    ASCII character class \[\[:^alpha:\]\]   negated ASCII character class \\pN            Unicode character class \(one\-letter name\) \\p\{Greek\}      Unicode character class \\PN            negated Unicode character class \(one\-letter name\) \\P\{Greek\}      negated Unicode character class  Composites:  xy             x followed by y x|y            x or y \(prefer x\)  Repetitions:  x\*             zero or more x, prefer more x\+             one or more x, prefer more x?             zero or one x, prefer one x\{n,m\}         n or n\+1 or ... or m x, prefer more x\{n,\}          n or more x, prefer more x\{n\}           exactly n x x\*?            zero or more x, prefer fewer x\+?            one or more x, prefer fewer x??            zero or one x, prefer zero x\{n,m\}?        n or n\+1 or ... or m x, prefer fewer x\{n,\}?         n or more x, prefer fewer x\{n\}?          exactly n x  Implementation restriction: The counting forms x\{n,m\}, x\{n,\}, and x\{n\} reject forms that create a minimum or maximum repetition count above 1000. Unlimited repetitions are not subject to this restriction.  Grouping:  \(re\)           numbered capturing group \(submatch\) \(?P\<name\>re\)   named & numbered capturing group \(submatch\) \(?:re\)         non\-capturing group \(?flags\)       set flags within current group; non\-capturing \(?flags:re\)    set flags during re; non\-capturing  Flag syntax is xyz \(set\) or \-xyz \(clear\) or xy\-z \(set xy, clear z\). The flags are:  i              case\-insensitive \(default false\) m              multi\-line mode: ^ and $ match begin/end line in addition to begin/end text \(default false\) s              let . match \\n \(default false\) U              ungreedy: swap meaning of x\* and x\*?, x\+ and x\+?, etc \(default false\)  Empty strings:  ^              at beginning of text or line \(flag m=true\) $              at end of text \(like \\z not \\Z\) or line \(flag m=true\) \\A             at beginning of text \\b             at ASCII word boundary \(\\w on one side and \\W, \\A, or \\z on the other\) \\B             not at ASCII word boundary \\z             at end of text  Escape sequences:  \\a             bell \(== \\007\) \\f             form feed \(== \\014\) \\t             horizontal tab \(== \\011\) \\n             newline \(== \\012\) \\r             carriage return \(== \\015\) \\v             vertical tab character \(== \\013\) \\\*             literal \*, for any punctuation character \* \\123           octal character code \(up to three digits\) \\x7F           hex character code \(exactly two digits\) \\x\{10FFFF\}     hex character code \\Q...\\E        literal text ... even if ... has punctuation  Character class elements:  x              single character A\-Z            character range \(inclusive\) \\d             Perl character class \[:foo:\]        ASCII character class foo \\p\{Foo\}        Unicode character class Foo \\pF            Unicode character class F \(one\-letter name\)  Named character classes as character class elements:  \[\\d\]           digits \(== \\d\) \[^\\d\]          not digits \(== \\D\) \[\\D\]           not digits \(== \\D\) \[^\\D\]          not not digits \(== \\d\) \[\[:name:\]\]     named ASCII class inside character class \(== \[:name:\]\) \[^\[:name:\]\]    named ASCII class inside negated character class \(== \[:^name:\]\) \[\\p\{Name\}\]     named Unicode property inside character class \(== \\p\{Name\}\) \[^\\p\{Name\}\]    named Unicode property inside negated character class \(== \\P\{Name\}\)  Perl character classes \(all ASCII\-only\):  \\d             digits \(== \[0\-9\]\) \\D             not digits \(== \[^0\-9\]\) \\s             whitespace \(== \[\\t\\n\\f\\r \]\) \\S             not whitespace \(== \[^\\t\\n\\f\\r \]\) \\w             word characters \(== \[0\-9A\-Za\-z\_\]\) \\W             not word characters \(== \[^0\-9A\-Za\-z\_\]\)  ASCII character classes:  \[\[:alnum:\]\]    alphanumeric \(== \[0\-9A\-Za\-z\]\) \[\[:alpha:\]\]    alphabetic \(== \[A\-Za\-z\]\) \[\[:ascii:\]\]    ASCII \(== \[\\x00\-\\x7F\]\) \[\[:blank:\]\]    blank \(== \[\\t \]\) \[\[:cntrl:\]\]    control \(== \[\\x00\-\\x1F\\x7F\]\) \[\[:digit:\]\]    digits \(== \[0\-9\]\) \[\[:graph:\]\]    graphical \(== \[\!\-\~\] == \[A\-Za\-z0\-9\!"\#$%&'\(\)\*\+,\\\-./:;\<=\>?@\[\\\\\\\]^\_\`\{|\}\~\]\) \[\[:lower:\]\]    lower case \(== \[a\-z\]\) \[\[:print:\]\]    printable \(== \[ \-\~\] == \[ \[:graph:\]\]\) \[\[:punct:\]\]    punctuation \(== \[\!\-/:\-@\[\-\`\{\-\~\]\) \[\[:space:\]\]    whitespace \(== \[\\t\\n\\v\\f\\r \]\) \[\[:upper:\]\]    upper case \(== \[A\-Z\]\) \[\[:word:\]\]     word characters \(== \[0\-9A\-Za\-z\_\]\) \[\[:xdigit:\]\]   hex digit \(== \[0\-9A\-Fa\-f\]\)  Unicode character classes are those in unicode.Categories and unicode.Scripts. \*|/ 


<details><summary>hl tests failed</summary>
<p>

```
Error: Command failed with error 1
Uncaught exception: Null access
Called from stdgo._Slice.$Slice_Impl_.__toArray__(stdgo/Slice.hx:147)
Called from stdgo.testing._Testing.$Testing_Fields_.mainStart(stdgo/testing/Testing.hx:482)
Called from stdgo.regexp.syntax_test._Syntax.$Syntax_Fields_.main(stdgo/regexp/syntax_test/Syntax.hx:19)
Called from .init(?:1)
```
</p>
</details>

<details><summary>interp tests failed</summary>
<p>

```
Uncaught exception Null Access
stdgo/Slice.hx:1: character 1 : Called from here
stdgo/Slice.hx:147: characters 10-24 : Called from here
stdgo/testing/Testing.hx:482: characters 14-33 : Called from here
stdgo/regexp/syntax_test/Syntax.hx:19: lines 19-21 : Called from here
```
</p>
</details>

<details><summary>jvm tests failed</summary>
<p>

```
IO.Overflow("write_ui16")
```
</p>
</details>


# Index


- [Constants](<#constants>)

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

- [`function _makePatchList(_n:stdgo.GoUInt32):stdgo.regexp.syntax._Syntax.T_patchList`](<#function-_makepatchlist>)

- [`function _matchRune(_re:stdgo.Ref<stdgo.regexp.syntax.Regexp>, _r:stdgo.GoRune):Bool`](<#function-_matchrune>)

- [`function _mergeCharClass(_dst:stdgo.Ref<stdgo.regexp.syntax.Regexp>, _src:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Void`](<#function-_mergecharclass>)

- [`function _minFoldRune(_r:stdgo.GoRune):stdgo.GoRune`](<#function-_minfoldrune>)

- [`function _mkCharClass(_f:()):stdgo.GoString`](<#function-_mkcharclass>)

- [`function _negateClass(_r:stdgo.Slice<stdgo.GoRune>):stdgo.Slice<stdgo.GoRune>`](<#function-_negateclass>)

- [`function _nextRune(_s:stdgo.GoString):{_2:stdgo.Error, _1:stdgo.GoString, _0:stdgo.GoRune}`](<#function-_nextrune>)

- [`function _parse(_s:stdgo.GoString, _flags:stdgo.regexp.syntax.Flags):{_1:stdgo.Error, _0:stdgo.Ref<stdgo.regexp.syntax.Regexp>}`](<#function-_parse>)

- [`function _repeatIsValid(_re:stdgo.Ref<stdgo.regexp.syntax.Regexp>, _n:stdgo.GoInt):Bool`](<#function-_repeatisvalid>)

- [`function _simplify1(_op:stdgo.regexp.syntax.Op, _flags:stdgo.regexp.syntax.Flags, _sub:stdgo.Ref<stdgo.regexp.syntax.Regexp>, _re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):stdgo.Ref<stdgo.regexp.syntax.Regexp>`](<#function-_simplify1>)

- [`function _testParseDump(_t:stdgo.Ref<stdgo.testing.T>, _tests:stdgo.Slice<stdgo.regexp.syntax._Syntax.T_parseTest>, _flags:stdgo.regexp.syntax.Flags):Void`](<#function-_testparsedump>)

- [`function _u32(_i:stdgo.GoUInt32):stdgo.GoString`](<#function-_u32>)

- [`function _unhex(_c:stdgo.GoRune):stdgo.GoRune`](<#function-_unhex>)

- [`function _unicodeTable(_name:stdgo.GoString):{_1:stdgo.Ref<stdgo.unicode.RangeTable>, _0:stdgo.Ref<stdgo.unicode.RangeTable>}`](<#function-_unicodetable>)

- [`function _writeRegexp(_b:stdgo.Ref<stdgo.strings.Builder>, _re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Void`](<#function-_writeregexp>)

- [`function benchmarkEmptyOpContext(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkemptyopcontext>)

- [`function compile(_re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):{_1:stdgo.Error, _0:stdgo.Ref<stdgo.regexp.syntax.Prog>}`](<#function-compile>)

- [`function emptyOpContext(_r1:stdgo.GoRune, _r2:stdgo.GoRune):stdgo.regexp.syntax.EmptyOp`](<#function-emptyopcontext>)

- [`function isWordChar(_r:stdgo.GoRune):Bool`](<#function-iswordchar>)

- [`function parse(_s:stdgo.GoString, _flags:stdgo.regexp.syntax.Flags):{_1:stdgo.Error, _0:stdgo.Ref<stdgo.regexp.syntax.Regexp>}`](<#function-parse>)

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

- [class ErrorCode\_static\_extension](<#class-errorcode_static_extension>)

  - [`function string():stdgo.GoString`](<#errorcode_static_extension-function-string>)

- [class Inst](<#class-inst>)

  - [`function new(?op:Null<stdgo.regexp.syntax.InstOp>, ?out:stdgo.GoUInt32, ?arg:stdgo.GoUInt32, ?rune:stdgo.Slice<stdgo.GoInt32>):Void`](<#inst-function-new>)

  - [`function _op():stdgo.regexp.syntax.InstOp`](<#inst-function-_op>)

  - [`function matchEmptyWidth( _before:stdgo.GoRune, _after:stdgo.GoRune):Bool`](<#inst-function-matchemptywidth>)

  - [`function matchRune( _r:stdgo.GoRune):Bool`](<#inst-function-matchrune>)

  - [`function matchRunePos( _r:stdgo.GoRune):stdgo.GoInt`](<#inst-function-matchrunepos>)

  - [`function string():stdgo.GoString`](<#inst-function-string>)

- [class InstOp\_static\_extension](<#class-instop_static_extension>)

  - [`function string():stdgo.GoString`](<#instop_static_extension-function-string>)

- [class Inst\_static\_extension](<#class-inst_static_extension>)

  - [`function _op():stdgo.regexp.syntax.InstOp`](<#inst_static_extension-function-_op>)

  - [`function matchEmptyWidth( _before:stdgo.GoRune, _after:stdgo.GoRune):Bool`](<#inst_static_extension-function-matchemptywidth>)

  - [`function matchRune( _r:stdgo.GoRune):Bool`](<#inst_static_extension-function-matchrune>)

  - [`function matchRunePos( _r:stdgo.GoRune):stdgo.GoInt`](<#inst_static_extension-function-matchrunepos>)

  - [`function string():stdgo.GoString`](<#inst_static_extension-function-string>)

- [class Op\_static\_extension](<#class-op_static_extension>)

  - [`function string(_i:stdgo.regexp.syntax.Op):stdgo.GoString`](<#op_static_extension-function-string>)

- [class Prog](<#class-prog>)

  - [`function new(?inst:stdgo.Slice<stdgo.regexp.syntax.Inst>, ?start:Null<stdgo.GoInt>, ?numCap:Null<stdgo.GoInt>):Void`](<#prog-function-new>)

  - [`function _skipNop( _pc:stdgo.GoUInt32):stdgo.Ref<stdgo.regexp.syntax.Inst>`](<#prog-function-_skipnop>)

  - [`function prefix():{_1:Bool, _0:stdgo.GoString}`](<#prog-function-prefix>)

  - [`function startCond():stdgo.regexp.syntax.EmptyOp`](<#prog-function-startcond>)

  - [`function string():stdgo.GoString`](<#prog-function-string>)

- [class Prog\_static\_extension](<#class-prog_static_extension>)

  - [`function _skipNop( _pc:stdgo.GoUInt32):stdgo.Ref<stdgo.regexp.syntax.Inst>`](<#prog_static_extension-function-_skipnop>)

  - [`function prefix():{_1:Bool, _0:stdgo.GoString}`](<#prog_static_extension-function-prefix>)

  - [`function startCond():stdgo.regexp.syntax.EmptyOp`](<#prog_static_extension-function-startcond>)

  - [`function string():stdgo.GoString`](<#prog_static_extension-function-string>)

- [class Regexp](<#class-regexp>)

  - [`function new(?op:Null<stdgo.regexp.syntax.Op>, ?flags:Null<stdgo.regexp.syntax.Flags>, ?sub:stdgo.Slice<stdgo.Ref<stdgo.regexp.syntax.Regexp>>, ?sub0:stdgo.GoArray<stdgo.Ref<stdgo.regexp.syntax.Regexp>>, ?rune:stdgo.Slice<stdgo.GoInt32>, ?rune0:stdgo.GoArray<stdgo.GoInt32>, ?min:Null<stdgo.GoInt>, ?max:Null<stdgo.GoInt>, ?cap:Null<stdgo.GoInt>, ?name:stdgo.GoString):Void`](<#regexp-function-new>)

  - [`function _capNames( _names:stdgo.Slice<stdgo.GoString>):Void`](<#regexp-function-_capnames>)

  - [`function capNames():stdgo.Slice<stdgo.GoString>`](<#regexp-function-capnames>)

  - [`function equal( _y:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Bool`](<#regexp-function-equal>)

  - [`function maxCap():stdgo.GoInt`](<#regexp-function-maxcap>)

  - [`function simplify():stdgo.Ref<stdgo.regexp.syntax.Regexp>`](<#regexp-function-simplify>)

  - [`function string():stdgo.GoString`](<#regexp-function-string>)

- [class Regexp\_static\_extension](<#class-regexp_static_extension>)

  - [`function _capNames( _names:stdgo.Slice<stdgo.GoString>):Void`](<#regexp_static_extension-function-_capnames>)

  - [`function capNames():stdgo.Slice<stdgo.GoString>`](<#regexp_static_extension-function-capnames>)

  - [`function equal( _y:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Bool`](<#regexp_static_extension-function-equal>)

  - [`function maxCap():stdgo.GoInt`](<#regexp_static_extension-function-maxcap>)

  - [`function simplify():stdgo.Ref<stdgo.regexp.syntax.Regexp>`](<#regexp_static_extension-function-simplify>)

  - [`function string():stdgo.GoString`](<#regexp_static_extension-function-string>)

- [class T\_compiler\_static\_extension](<#class-t_compiler_static_extension>)

  - [`function _alt(_c:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_compiler>, _f1:stdgo.regexp.syntax._Syntax.T_frag, _f2:stdgo.regexp.syntax._Syntax.T_frag):stdgo.regexp.syntax._Syntax.T_frag`](<#t_compiler_static_extension-function-_alt>)

  - [`function _cap(_c:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_compiler>, _arg:stdgo.GoUInt32):stdgo.regexp.syntax._Syntax.T_frag`](<#t_compiler_static_extension-function-_cap>)

  - [`function _cat(_c:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_compiler>, _f1:stdgo.regexp.syntax._Syntax.T_frag, _f2:stdgo.regexp.syntax._Syntax.T_frag):stdgo.regexp.syntax._Syntax.T_frag`](<#t_compiler_static_extension-function-_cat>)

  - [`function _compile(_c:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_compiler>, _re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):stdgo.regexp.syntax._Syntax.T_frag`](<#t_compiler_static_extension-function-_compile>)

  - [`function _empty(_c:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_compiler>, _op:stdgo.regexp.syntax.EmptyOp):stdgo.regexp.syntax._Syntax.T_frag`](<#t_compiler_static_extension-function-_empty>)

  - [`function _fail(_c:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_compiler>):stdgo.regexp.syntax._Syntax.T_frag`](<#t_compiler_static_extension-function-_fail>)

  - [`function _init(_c:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_compiler>):Void`](<#t_compiler_static_extension-function-_init>)

  - [`function _inst(_c:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_compiler>, _op:stdgo.regexp.syntax.InstOp):stdgo.regexp.syntax._Syntax.T_frag`](<#t_compiler_static_extension-function-_inst>)

  - [`function _loop(_c:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_compiler>, _f1:stdgo.regexp.syntax._Syntax.T_frag, _nongreedy:Bool):stdgo.regexp.syntax._Syntax.T_frag`](<#t_compiler_static_extension-function-_loop>)

  - [`function _nop(_c:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_compiler>):stdgo.regexp.syntax._Syntax.T_frag`](<#t_compiler_static_extension-function-_nop>)

  - [`function _plus(_c:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_compiler>, _f1:stdgo.regexp.syntax._Syntax.T_frag, _nongreedy:Bool):stdgo.regexp.syntax._Syntax.T_frag`](<#t_compiler_static_extension-function-_plus>)

  - [`function _quest(_c:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_compiler>, _f1:stdgo.regexp.syntax._Syntax.T_frag, _nongreedy:Bool):stdgo.regexp.syntax._Syntax.T_frag`](<#t_compiler_static_extension-function-_quest>)

  - [`function _rune(_c:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_compiler>, _r:stdgo.Slice<stdgo.GoRune>, _flags:stdgo.regexp.syntax.Flags):stdgo.regexp.syntax._Syntax.T_frag`](<#t_compiler_static_extension-function-_rune>)

  - [`function _star(_c:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_compiler>, _f1:stdgo.regexp.syntax._Syntax.T_frag, _nongreedy:Bool):stdgo.regexp.syntax._Syntax.T_frag`](<#t_compiler_static_extension-function-_star>)

- [class T\_error](<#class-t_error>)

  - [`function new(?code:Null<stdgo.regexp.syntax.ErrorCode>, ?expr:stdgo.GoString):Void`](<#t_error-function-new>)

  - [`function error():stdgo.GoString`](<#t_error-function-error>)

- [class T\_error\_static\_extension](<#class-t_error_static_extension>)

  - [`function error():stdgo.GoString`](<#t_error_static_extension-function-error>)

- [class T\_parser\_static\_extension](<#class-t_parser_static_extension>)

  - [`function _alternate(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>):stdgo.Ref<stdgo.regexp.syntax.Regexp>`](<#t_parser_static_extension-function-_alternate>)

  - [`function _appendGroup(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _r:stdgo.Slice<stdgo.GoRune>, _g:stdgo.regexp.syntax._Syntax.T_charGroup):stdgo.Slice<stdgo.GoRune>`](<#t_parser_static_extension-function-_appendgroup>)

  - [`function _calcHeight(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _re:stdgo.Ref<stdgo.regexp.syntax.Regexp>, _force:Bool):stdgo.GoInt`](<#t_parser_static_extension-function-_calcheight>)

  - [`function _checkHeight(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Void`](<#t_parser_static_extension-function-_checkheight>)

  - [`function _collapse(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _subs:stdgo.Slice<stdgo.Ref<stdgo.regexp.syntax.Regexp>>, _op:stdgo.regexp.syntax.Op):stdgo.Ref<stdgo.regexp.syntax.Regexp>`](<#t_parser_static_extension-function-_collapse>)

  - [`function _concat(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>):stdgo.Ref<stdgo.regexp.syntax.Regexp>`](<#t_parser_static_extension-function-_concat>)

  - [`function _factor(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _sub:stdgo.Slice<stdgo.Ref<stdgo.regexp.syntax.Regexp>>):stdgo.Slice<stdgo.Ref<stdgo.regexp.syntax.Regexp>>`](<#t_parser_static_extension-function-_factor>)

  - [`function _leadingRegexp(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):stdgo.Ref<stdgo.regexp.syntax.Regexp>`](<#t_parser_static_extension-function-_leadingregexp>)

  - [`function _leadingString(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):{_1:stdgo.regexp.syntax.Flags, _0:stdgo.Slice<stdgo.GoRune>}`](<#t_parser_static_extension-function-_leadingstring>)

  - [`function _literal(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _r:stdgo.GoRune):Void`](<#t_parser_static_extension-function-_literal>)

  - [`function _maybeConcat(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _r:stdgo.GoRune, _flags:stdgo.regexp.syntax.Flags):Bool`](<#t_parser_static_extension-function-_maybeconcat>)

  - [`function _newRegexp(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _op:stdgo.regexp.syntax.Op):stdgo.Ref<stdgo.regexp.syntax.Regexp>`](<#t_parser_static_extension-function-_newregexp>)

  - [`function _op(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _op:stdgo.regexp.syntax.Op):stdgo.Ref<stdgo.regexp.syntax.Regexp>`](<#t_parser_static_extension-function-_op>)

  - [`function _parseClass(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _s:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.GoString}`](<#t_parser_static_extension-function-_parseclass>)

  - [`function _parseClassChar(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _s:stdgo.GoString, _wholeClass:stdgo.GoString):{_2:stdgo.Error, _1:stdgo.GoString, _0:stdgo.GoRune}`](<#t_parser_static_extension-function-_parseclasschar>)

  - [`function _parseEscape(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _s:stdgo.GoString):{_2:stdgo.Error, _1:stdgo.GoString, _0:stdgo.GoRune}`](<#t_parser_static_extension-function-_parseescape>)

  - [`function _parseInt(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _s:stdgo.GoString):{_2:Bool, _1:stdgo.GoString, _0:stdgo.GoInt}`](<#t_parser_static_extension-function-_parseint>)

  - [`function _parseNamedClass(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _s:stdgo.GoString, _r:stdgo.Slice<stdgo.GoRune>):{_2:stdgo.Error, _1:stdgo.GoString, _0:stdgo.Slice<stdgo.GoRune>}`](<#t_parser_static_extension-function-_parsenamedclass>)

  - [`function _parsePerlClassEscape(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _s:stdgo.GoString, _r:stdgo.Slice<stdgo.GoRune>):{_1:stdgo.GoString, _0:stdgo.Slice<stdgo.GoRune>}`](<#t_parser_static_extension-function-_parseperlclassescape>)

  - [`function _parsePerlFlags(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _s:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.GoString}`](<#t_parser_static_extension-function-_parseperlflags>)

  - [`function _parseRepeat(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _s:stdgo.GoString):{_3:Bool, _2:stdgo.GoString, _1:stdgo.GoInt, _0:stdgo.GoInt}`](<#t_parser_static_extension-function-_parserepeat>)

  - [`function _parseRightParen(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>):stdgo.Error`](<#t_parser_static_extension-function-_parserightparen>)

  - [`function _parseUnicodeClass(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _s:stdgo.GoString, _r:stdgo.Slice<stdgo.GoRune>):{_2:stdgo.Error, _1:stdgo.GoString, _0:stdgo.Slice<stdgo.GoRune>}`](<#t_parser_static_extension-function-_parseunicodeclass>)

  - [`function _parseVerticalBar(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>):stdgo.Error`](<#t_parser_static_extension-function-_parseverticalbar>)

  - [`function _push(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):stdgo.Ref<stdgo.regexp.syntax.Regexp>`](<#t_parser_static_extension-function-_push>)

  - [`function _removeLeadingRegexp(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _re:stdgo.Ref<stdgo.regexp.syntax.Regexp>, _reuse:Bool):stdgo.Ref<stdgo.regexp.syntax.Regexp>`](<#t_parser_static_extension-function-_removeleadingregexp>)

  - [`function _removeLeadingString(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _re:stdgo.Ref<stdgo.regexp.syntax.Regexp>, _n:stdgo.GoInt):stdgo.Ref<stdgo.regexp.syntax.Regexp>`](<#t_parser_static_extension-function-_removeleadingstring>)

  - [`function _repeat(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _op:stdgo.regexp.syntax.Op, _min:stdgo.GoInt, _max:stdgo.GoInt, _before:stdgo.GoString, _after:stdgo.GoString, _lastRepeat:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.GoString}`](<#t_parser_static_extension-function-_repeat>)

  - [`function _reuse(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Void`](<#t_parser_static_extension-function-_reuse>)

  - [`function _swapVerticalBar(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>):Bool`](<#t_parser_static_extension-function-_swapverticalbar>)

- [class T\_patchList\_static\_extension](<#class-t_patchlist_static_extension>)

  - [`function _append(_l1:stdgo.regexp.syntax._Syntax.T_patchList, _p:stdgo.Ref<stdgo.regexp.syntax.Prog>, _l2:stdgo.regexp.syntax._Syntax.T_patchList):stdgo.regexp.syntax._Syntax.T_patchList`](<#t_patchlist_static_extension-function-_append>)

  - [`function _patch(_l:stdgo.regexp.syntax._Syntax.T_patchList, _p:stdgo.Ref<stdgo.regexp.syntax.Prog>, _val:stdgo.GoUInt32):Void`](<#t_patchlist_static_extension-function-_patch>)

- [class T\_ranges\_static\_extension](<#class-t_ranges_static_extension>)

  - [`function len(_ra:stdgo.regexp.syntax._Syntax.T_ranges):stdgo.GoInt`](<#t_ranges_static_extension-function-len>)

  - [`function less(_ra:stdgo.regexp.syntax._Syntax.T_ranges, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool`](<#t_ranges_static_extension-function-less>)

  - [`function swap(_ra:stdgo.regexp.syntax._Syntax.T_ranges, _i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#t_ranges_static_extension-function-swap>)

- [typedef EmptyOp](<#typedef-emptyop>)

- [typedef ErrorCode](<#typedef-errorcode>)

  - [`function string():stdgo.GoString`](<#errorcode-function-string>)

- [typedef Flags](<#typedef-flags>)

- [typedef InstOp](<#typedef-instop>)

  - [`function string():stdgo.GoString`](<#instop-function-string>)

- [typedef Op](<#typedef-op>)

  - [`function string():stdgo.GoString`](<#op-function-string>)

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


## function \_appendClass


```haxe
function _appendClass(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Slice<stdgo.GoRune>):stdgo.Slice<stdgo.GoRune>
```


appendClass returns the result of appending the class x to the class r. It assume x is clean. 


[\(view code\)](<./Syntax.hx#L963>)


## function \_appendFoldedClass


```haxe
function _appendFoldedClass(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Slice<stdgo.GoRune>):stdgo.Slice<stdgo.GoRune>
```


appendFolded returns the result of appending the case folding of the class x to the class r. 


[\(view code\)](<./Syntax.hx#L969>)


## function \_appendFoldedRange


```haxe
function _appendFoldedRange(_r:stdgo.Slice<stdgo.GoRune>, _lo:stdgo.GoRune, _hi:stdgo.GoRune):stdgo.Slice<stdgo.GoRune>
```


appendFoldedRange returns the result of appending the range lo\-hi and its case folding\-equivalent runes to the class r. 


[\(view code\)](<./Syntax.hx#L956>)


## function \_appendLiteral


```haxe
function _appendLiteral(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.GoRune, _flags:stdgo.regexp.syntax.Flags):stdgo.Slice<stdgo.GoRune>
```


appendLiteral returns the result of appending the literal x to the class r. 


[\(view code\)](<./Syntax.hx#L943>)


## function \_appendNegatedClass


```haxe
function _appendNegatedClass(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Slice<stdgo.GoRune>):stdgo.Slice<stdgo.GoRune>
```


appendNegatedClass returns the result of appending the negation of the class x to the class r. It assumes x is clean. 


[\(view code\)](<./Syntax.hx#L976>)


## function \_appendNegatedTable


```haxe
function _appendNegatedTable(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Ref<stdgo.unicode.RangeTable>):stdgo.Slice<stdgo.GoRune>
```


appendNegatedTable returns the result of appending the negation of x to the class r. 


[\(view code\)](<./Syntax.hx#L988>)


## function \_appendRange


```haxe
function _appendRange(_r:stdgo.Slice<stdgo.GoRune>, _lo:stdgo.GoRune, _hi:stdgo.GoRune):stdgo.Slice<stdgo.GoRune>
```


appendRange returns the result of appending the range lo\-hi to the class r. 


[\(view code\)](<./Syntax.hx#L949>)


## function \_appendTable


```haxe
function _appendTable(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Ref<stdgo.unicode.RangeTable>):stdgo.Slice<stdgo.GoRune>
```


appendTable returns the result of appending x to the class r. 


[\(view code\)](<./Syntax.hx#L982>)


## function \_bw


```haxe
function _bw(_b:stdgo.Ref<stdgo.strings.Builder>, _args:haxe.Rest<stdgo.GoString>):Void
```


 


[\(view code\)](<./Syntax.hx#L1083>)


## function \_checkUTF8


```haxe
function _checkUTF8(_s:stdgo.GoString):stdgo.Error
```


 


[\(view code\)](<./Syntax.hx#L998>)


## function \_cleanAlt


```haxe
function _cleanAlt(_re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Void
```


cleanAlt cleans re for eventual inclusion in an alternation. 


[\(view code\)](<./Syntax.hx#L878>)


## function \_cleanClass


```haxe
function _cleanClass(_rp:stdgo.Ref<stdgo.Slice<stdgo.GoRune>>):stdgo.Slice<stdgo.GoRune>
```


cleanClass sorts the ranges \(pairs of elements of r\), merges them, and eliminates duplicates. 


[\(view code\)](<./Syntax.hx#L937>)


## function \_dump


```haxe
function _dump(_re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):stdgo.GoString
```


dump prints a string representation of the regexp showing the structure explicitly. 


[\(view code\)](<./Syntax.hx#L1035>)


## function \_dumpInst


```haxe
function _dumpInst(_b:stdgo.Ref<stdgo.strings.Builder>, _i:stdgo.Ref<stdgo.regexp.syntax.Inst>):Void
```


 


[\(view code\)](<./Syntax.hx#L1092>)


## function \_dumpProg


```haxe
function _dumpProg(_b:stdgo.Ref<stdgo.strings.Builder>, _p:stdgo.Ref<stdgo.regexp.syntax.Prog>):Void
```


 


[\(view code\)](<./Syntax.hx#L1086>)


## function \_dumpRegexp


```haxe
function _dumpRegexp(_b:stdgo.Ref<stdgo.strings.Builder>, _re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Void
```


dumpRegexp writes an encoding of the syntax tree for the regexp re to b. It is used during testing to distinguish between parses that might print the same using re's String method. 


[\(view code\)](<./Syntax.hx#L1043>)


## function \_escape


```haxe
function _escape(_b:stdgo.Ref<stdgo.strings.Builder>, _r:stdgo.GoRune, _force:Bool):Void
```


 


[\(view code\)](<./Syntax.hx#L1107>)


## function \_isCharClass


```haxe
function _isCharClass(_re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Bool
```


can this be represented as a character class? single\-rune literal string, char class, ., and .|\\n. 


[\(view code\)](<./Syntax.hx#L909>)


## function \_isUpperFold


```haxe
function _isUpperFold(_r:stdgo.GoRune):Bool
```


 


[\(view code\)](<./Syntax.hx#L1049>)


## function \_isValidCaptureName


```haxe
function _isValidCaptureName(_name:stdgo.GoString):Bool
```


isValidCaptureName reports whether name is a valid capture name: \[A\-Za\-z0\-9\_\]\+. PCRE limits names to 32 bytes. Python rejects names starting with digits. We don't enforce either of those. 


[\(view code\)](<./Syntax.hx#L902>)


## function \_isalnum


```haxe
function _isalnum(_c:stdgo.GoRune):Bool
```


 


[\(view code\)](<./Syntax.hx#L1004>)


## function \_literalRegexp


```haxe
function _literalRegexp(_s:stdgo.GoString, _flags:stdgo.regexp.syntax.Flags):stdgo.Ref<stdgo.regexp.syntax.Regexp>
```


 


[\(view code\)](<./Syntax.hx#L881>)


## function \_makePatchList


```haxe
function _makePatchList(_n:stdgo.GoUInt32):stdgo.regexp.syntax._Syntax.T_patchList
```


 


[\(view code\)](<./Syntax.hx#L845>)


## function \_matchRune


```haxe
function _matchRune(_re:stdgo.Ref<stdgo.regexp.syntax.Regexp>, _r:stdgo.GoRune):Bool
```


does re match r? 


[\(view code\)](<./Syntax.hx#L915>)


## function \_mergeCharClass


```haxe
function _mergeCharClass(_dst:stdgo.Ref<stdgo.regexp.syntax.Regexp>, _src:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Void
```


mergeCharClass makes dst = dst|src. The caller must ensure that dst.Op \>= src.Op, to reduce the amount of copying. 


[\(view code\)](<./Syntax.hx#L923>)


## function \_minFoldRune


```haxe
function _minFoldRune(_r:stdgo.GoRune):stdgo.GoRune
```


minFoldRune returns the minimum rune fold\-equivalent to r. 


[\(view code\)](<./Syntax.hx#L858>)


## function \_mkCharClass


```haxe
function _mkCharClass(_f:()):stdgo.GoString
```


 


[\(view code\)](<./Syntax.hx#L1046>)


## function \_negateClass


```haxe
function _negateClass(_r:stdgo.Slice<stdgo.GoRune>):stdgo.Slice<stdgo.GoRune>
```


negateClass overwrites r and returns r's negation. It assumes the class r is already clean. 


[\(view code\)](<./Syntax.hx#L995>)


## function \_nextRune


```haxe
function _nextRune(_s:stdgo.GoString):{_2:stdgo.Error, _1:stdgo.GoString, _0:stdgo.GoRune}
```


 


[\(view code\)](<./Syntax.hx#L1001>)


## function \_parse


```haxe
function _parse(_s:stdgo.GoString, _flags:stdgo.regexp.syntax.Flags):{_1:stdgo.Error, _0:stdgo.Ref<stdgo.regexp.syntax.Regexp>}
```


 


[\(view code\)](<./Syntax.hx#L892>)


## function \_repeatIsValid


```haxe
function _repeatIsValid(_re:stdgo.Ref<stdgo.regexp.syntax.Regexp>, _n:stdgo.GoInt):Bool
```


repeatIsValid reports whether the repetition re is valid. Valid means that the combination of the top\-level repetition and any inner repetitions does not exceed n copies of the innermost thing. This function rewalks the regexp tree and is called for every repetition, so we have to worry about inducing quadratic behavior in the parser. We avoid this by only calling repeatIsValid when min or max \>= 2. In that case the depth of any \>= 2 nesting can only get to 9 without triggering a parse error, so each subtree can only be rewalked 9 times. 


[\(view code\)](<./Syntax.hx#L872>)


## function \_simplify1


```haxe
function _simplify1(_op:stdgo.regexp.syntax.Op, _flags:stdgo.regexp.syntax.Flags, _sub:stdgo.Ref<stdgo.regexp.syntax.Regexp>, _re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):stdgo.Ref<stdgo.regexp.syntax.Regexp>
```


simplify1 implements Simplify for the unary OpStar, OpPlus, and OpQuest operators. It returns the simple regexp equivalent to  Regexp\{Op: op, Flags: flags, Sub: \{sub\}\}  under the assumption that sub is already simple, and without first allocating that structure. If the regexp to be returned turns out to be equivalent to re, simplify1 returns re instead.  simplify1 is factored out of Simplify because the implementation for other operators generates these unary expressions. Letting them call simplify1 makes sure the expressions they generate are simple. 


[\(view code\)](<./Syntax.hx#L1127>)


## function \_testParseDump


```haxe
function _testParseDump(_t:stdgo.Ref<stdgo.testing.T>, _tests:stdgo.Slice<stdgo.regexp.syntax._Syntax.T_parseTest>, _flags:stdgo.regexp.syntax.Flags):Void
```


Test Parse \-\> Dump. 


[\(view code\)](<./Syntax.hx#L1028>)


## function \_u32


```haxe
function _u32(_i:stdgo.GoUInt32):stdgo.GoString
```


 


[\(view code\)](<./Syntax.hx#L1089>)


## function \_unhex


```haxe
function _unhex(_c:stdgo.GoRune):stdgo.GoRune
```


 


[\(view code\)](<./Syntax.hx#L1007>)


## function \_unicodeTable


```haxe
function _unicodeTable(_name:stdgo.GoString):{_1:stdgo.Ref<stdgo.unicode.RangeTable>, _0:stdgo.Ref<stdgo.unicode.RangeTable>}
```


unicodeTable returns the unicode.RangeTable identified by name and the table of additional fold\-equivalent code points. 


[\(view code\)](<./Syntax.hx#L930>)


## function \_writeRegexp


```haxe
function _writeRegexp(_b:stdgo.Ref<stdgo.strings.Builder>, _re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Void
```


writeRegexp writes the Perl syntax for the regular expression re to b. 


[\(view code\)](<./Syntax.hx#L1104>)


## function benchmarkEmptyOpContext


```haxe
function benchmarkEmptyOpContext(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Syntax.hx#L1098>)


## function compile


```haxe
function compile(_re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):{_1:stdgo.Error, _0:stdgo.Ref<stdgo.regexp.syntax.Prog>}
```


Compile compiles the regexp into a program to be executed. The regexp should have been simplified already \(returned from re.Simplify\). 


[\(view code\)](<./Syntax.hx#L852>)


## function emptyOpContext


```haxe
function emptyOpContext(_r1:stdgo.GoRune, _r2:stdgo.GoRune):stdgo.regexp.syntax.EmptyOp
```


EmptyOpContext returns the zero\-width assertions satisfied at the position between the runes r1 and r2. Passing r1 == \-1 indicates that the position is at the beginning of the text. Passing r2 == \-1 indicates that the position is at the end of the text. 


[\(view code\)](<./Syntax.hx#L1072>)


## function isWordChar


```haxe
function isWordChar(_r:stdgo.GoRune):Bool
```


IsWordChar reports whether r is considered a “word character” during the evaluation of the \\b and \\B zero\-width assertions. These assertions are ASCII\-only: the word characters are \[A\-Za\-z0\-9\_\]. 


[\(view code\)](<./Syntax.hx#L1080>)


## function parse


```haxe
function parse(_s:stdgo.GoString, _flags:stdgo.regexp.syntax.Flags):{_1:stdgo.Error, _0:stdgo.Ref<stdgo.regexp.syntax.Regexp>}
```


Parse parses a regular expression string s, controlled by the specified Flags, and returns a regular expression parse tree. The syntax is described in the top\-level comment. 


[\(view code\)](<./Syntax.hx#L889>)


## function testAppendRangeCollapse


```haxe
function testAppendRangeCollapse(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Syntax.hx#L1055>)


## function testCompile


```haxe
function testCompile(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Syntax.hx#L1095>)


## function testFoldConstants


```haxe
function testFoldConstants(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Syntax.hx#L1052>)


## function testParseFoldCase


```haxe
function testParseFoldCase(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Syntax.hx#L1013>)


## function testParseInvalidRegexps


```haxe
function testParseInvalidRegexps(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Syntax.hx#L1058>)


## function testParseLiteral


```haxe
function testParseLiteral(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Syntax.hx#L1016>)


## function testParseMatchNL


```haxe
function testParseMatchNL(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Syntax.hx#L1019>)


## function testParseNoMatchNL


```haxe
function testParseNoMatchNL(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Syntax.hx#L1022>)


## function testParseSimple


```haxe
function testParseSimple(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Syntax.hx#L1010>)


## function testSimplify


```haxe
function testSimplify(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Syntax.hx#L1130>)


## function testToStringEquivalentParse


```haxe
function testToStringEquivalentParse(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Syntax.hx#L1061>)


# Classes


```haxe
import stdgo.regexp.syntax.*
```


## class ErrorCode\_static\_extension


 


### ErrorCode\_static\_extension function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Syntax.hx#L2172>)


## class Inst


An Inst is a single instruction in a regular expression program. 


```haxe
var arg:stdgo.GoUInt32
```


InstAlt, InstAltMatch, InstCapture, InstEmptyWidth 


```haxe
var op:stdgo.regexp.syntax.InstOp
```


```haxe
var out:stdgo.GoUInt32
```


all but InstMatch, InstFail 


```haxe
var rune:stdgo.Slice<stdgo.GoInt32>
```


### Inst function new


```haxe
function new(?op:Null<stdgo.regexp.syntax.InstOp>, ?out:stdgo.GoUInt32, ?arg:stdgo.GoUInt32, ?rune:stdgo.Slice<stdgo.GoInt32>):Void
```


 


[\(view code\)](<./Syntax.hx#L710>)


### Inst function \_op


```haxe
function _op():stdgo.regexp.syntax.InstOp
```


op returns i.Op but merges all the Rune special cases into InstRune 


[\(view code\)](<./Syntax.hx#L2048>)


### Inst function matchEmptyWidth


```haxe
function matchEmptyWidth( _before:stdgo.GoRune, _after:stdgo.GoRune):Bool
```


MatchEmptyWidth reports whether the instruction matches an empty string between the runes before and after. It should only be called when i.Op == InstEmptyWidth. 


[\(view code\)](<./Syntax.hx#L2022>)


### Inst function matchRune


```haxe
function matchRune( _r:stdgo.GoRune):Bool
```


MatchRune reports whether the instruction matches \(and consumes\) r. It should only be called when i.Op == InstRune. 


[\(view code\)](<./Syntax.hx#L2041>)


### Inst function matchRunePos


```haxe
function matchRunePos( _r:stdgo.GoRune):stdgo.GoInt
```


MatchRunePos checks whether the instruction matches \(and consumes\) r. If so, MatchRunePos returns the index of the matching rune pair \(or, when len\(i.Rune\) == 1, rune singleton\). If not, MatchRunePos returns \-1. MatchRunePos should only be called when i.Op == InstRune. 


[\(view code\)](<./Syntax.hx#L2033>)


### Inst function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Syntax.hx#L2013>)


## class InstOp\_static\_extension


 


### InstOp\_static\_extension function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Syntax.hx#L2196>)


## class Inst\_static\_extension


 


### Inst\_static\_extension function \_op


```haxe
function _op():stdgo.regexp.syntax.InstOp
```


op returns i.Op but merges all the Rune special cases into InstRune 


[\(view code\)](<./Syntax.hx#L2048>)


### Inst\_static\_extension function matchEmptyWidth


```haxe
function matchEmptyWidth( _before:stdgo.GoRune, _after:stdgo.GoRune):Bool
```


MatchEmptyWidth reports whether the instruction matches an empty string between the runes before and after. It should only be called when i.Op == InstEmptyWidth. 


[\(view code\)](<./Syntax.hx#L2022>)


### Inst\_static\_extension function matchRune


```haxe
function matchRune( _r:stdgo.GoRune):Bool
```


MatchRune reports whether the instruction matches \(and consumes\) r. It should only be called when i.Op == InstRune. 


[\(view code\)](<./Syntax.hx#L2041>)


### Inst\_static\_extension function matchRunePos


```haxe
function matchRunePos( _r:stdgo.GoRune):stdgo.GoInt
```


MatchRunePos checks whether the instruction matches \(and consumes\) r. If so, MatchRunePos returns the index of the matching rune pair \(or, when len\(i.Rune\) == 1, rune singleton\). If not, MatchRunePos returns \-1. MatchRunePos should only be called when i.Op == InstRune. 


[\(view code\)](<./Syntax.hx#L2033>)


### Inst\_static\_extension function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Syntax.hx#L2013>)


## class Op\_static\_extension


 


### Op\_static\_extension function string


```haxe
function string(_i:stdgo.regexp.syntax.Op):stdgo.GoString
```


 


[\(view code\)](<./Syntax.hx#L2220>)


## class Prog


A Prog is a compiled regular expression program. 


```haxe
var inst:stdgo.Slice<stdgo.regexp.syntax.Inst>
```


```haxe
var numCap:stdgo.GoInt
```


number of InstCapture insts in re 


```haxe
var start:stdgo.GoInt
```


index of start instruction 


### Prog function new


```haxe
function new(?inst:stdgo.Slice<stdgo.regexp.syntax.Inst>, ?start:Null<stdgo.GoInt>, ?numCap:Null<stdgo.GoInt>):Void
```


 


[\(view code\)](<./Syntax.hx#L675>)


### Prog function \_skipNop


```haxe
function _skipNop( _pc:stdgo.GoUInt32):stdgo.Ref<stdgo.regexp.syntax.Inst>
```


skipNop follows any no\-op or capturing instructions. 


[\(view code\)](<./Syntax.hx#L1950>)


### Prog function prefix


```haxe
function prefix():{_1:Bool, _0:stdgo.GoString}
```


Prefix returns a literal string that all matches for the regexp must start with. Complete is true if the prefix is the entire match. 


[\(view code\)](<./Syntax.hx#L1943>)


### Prog function startCond


```haxe
function startCond():stdgo.regexp.syntax.EmptyOp
```


StartCond returns the leading empty\-width conditions that must be true in any match. It returns ^EmptyOp\(0\) if no matches are possible. 


[\(view code\)](<./Syntax.hx#L1934>)


### Prog function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Syntax.hx#L1954>)


## class Prog\_static\_extension


 


### Prog\_static\_extension function \_skipNop


```haxe
function _skipNop( _pc:stdgo.GoUInt32):stdgo.Ref<stdgo.regexp.syntax.Inst>
```


skipNop follows any no\-op or capturing instructions. 


[\(view code\)](<./Syntax.hx#L1950>)


### Prog\_static\_extension function prefix


```haxe
function prefix():{_1:Bool, _0:stdgo.GoString}
```


Prefix returns a literal string that all matches for the regexp must start with. Complete is true if the prefix is the entire match. 


[\(view code\)](<./Syntax.hx#L1943>)


### Prog\_static\_extension function startCond


```haxe
function startCond():stdgo.regexp.syntax.EmptyOp
```


StartCond returns the leading empty\-width conditions that must be true in any match. It returns ^EmptyOp\(0\) if no matches are possible. 


[\(view code\)](<./Syntax.hx#L1934>)


### Prog\_static\_extension function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Syntax.hx#L1954>)


## class Regexp


A Regexp is a node in a regular expression syntax tree. 


```haxe
var cap:stdgo.GoInt
```


capturing name, for OpCapture 


```haxe
var flags:stdgo.regexp.syntax.Flags
```


```haxe
var max:stdgo.GoInt
```


capturing index, for OpCapture 


```haxe
var min:stdgo.GoInt
```


min, max for OpRepeat 


```haxe
var name:stdgo.GoString
```


```haxe
var op:stdgo.regexp.syntax.Op
```


operator 


```haxe
var rune:stdgo.Slice<stdgo.GoInt32>
```


matched runes, for OpLiteral, OpCharClass 


```haxe
var rune0:stdgo.GoArray<stdgo.GoInt32>
```


storage for short Rune 


```haxe
var sub:stdgo.Slice<stdgo.Ref<stdgo.regexp.syntax.Regexp>>
```


subexpressions, if any 


```haxe
var sub0:stdgo.GoArray<stdgo.Ref<stdgo.regexp.syntax.Regexp>>
```


storage for short Sub 


### Regexp function new


```haxe
function new(?op:Null<stdgo.regexp.syntax.Op>, ?flags:Null<stdgo.regexp.syntax.Flags>, ?sub:stdgo.Slice<stdgo.Ref<stdgo.regexp.syntax.Regexp>>, ?sub0:stdgo.GoArray<stdgo.Ref<stdgo.regexp.syntax.Regexp>>, ?rune:stdgo.Slice<stdgo.GoInt32>, ?rune0:stdgo.GoArray<stdgo.GoInt32>, ?min:Null<stdgo.GoInt>, ?max:Null<stdgo.GoInt>, ?cap:Null<stdgo.GoInt>, ?name:stdgo.GoString):Void
```


 


[\(view code\)](<./Syntax.hx#L777>)


### Regexp function \_capNames


```haxe
function _capNames( _names:stdgo.Slice<stdgo.GoString>):Void
```


 


[\(view code\)](<./Syntax.hx#L2123>)


### Regexp function capNames


```haxe
function capNames():stdgo.Slice<stdgo.GoString>
```


CapNames walks the regexp to find the names of capturing groups. 


[\(view code\)](<./Syntax.hx#L2130>)


### Regexp function equal


```haxe
function equal( _y:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Bool
```


Equal reports whether x and y have identical structure. 


[\(view code\)](<./Syntax.hx#L2148>)


### Regexp function maxCap


```haxe
function maxCap():stdgo.GoInt
```


MaxCap walks the regexp to find the maximum capture index. 


[\(view code\)](<./Syntax.hx#L2137>)


### Regexp function simplify


```haxe
function simplify():stdgo.Ref<stdgo.regexp.syntax.Regexp>
```


Simplify returns a regexp equivalent to re but without counted repetitions and with various other simplifications, such as rewriting /\(?:a\+\)\+/ to /a\+/. The resulting regexp will execute correctly but its string representation will not produce the same parse tree, because capturing parentheses may have been duplicated or removed. For example, the simplified form for /\(x\)\{1,2\}/ is /\(x\)\(x\)?/ but both parentheses capture as $1. The returned regexp may share structure with or be the original. 


[\(view code\)](<./Syntax.hx#L2119>)


### Regexp function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Syntax.hx#L2141>)


## class Regexp\_static\_extension


 


### Regexp\_static\_extension function \_capNames


```haxe
function _capNames( _names:stdgo.Slice<stdgo.GoString>):Void
```


 


[\(view code\)](<./Syntax.hx#L2123>)


### Regexp\_static\_extension function capNames


```haxe
function capNames():stdgo.Slice<stdgo.GoString>
```


CapNames walks the regexp to find the names of capturing groups. 


[\(view code\)](<./Syntax.hx#L2130>)


### Regexp\_static\_extension function equal


```haxe
function equal( _y:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Bool
```


Equal reports whether x and y have identical structure. 


[\(view code\)](<./Syntax.hx#L2148>)


### Regexp\_static\_extension function maxCap


```haxe
function maxCap():stdgo.GoInt
```


MaxCap walks the regexp to find the maximum capture index. 


[\(view code\)](<./Syntax.hx#L2137>)


### Regexp\_static\_extension function simplify


```haxe
function simplify():stdgo.Ref<stdgo.regexp.syntax.Regexp>
```


Simplify returns a regexp equivalent to re but without counted repetitions and with various other simplifications, such as rewriting /\(?:a\+\)\+/ to /a\+/. The resulting regexp will execute correctly but its string representation will not produce the same parse tree, because capturing parentheses may have been duplicated or removed. For example, the simplified form for /\(x\)\{1,2\}/ is /\(x\)\(x\)?/ but both parentheses capture as $1. The returned regexp may share structure with or be the original. 


[\(view code\)](<./Syntax.hx#L2119>)


### Regexp\_static\_extension function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Syntax.hx#L2141>)


## class T\_compiler\_static\_extension


 


### T\_compiler\_static\_extension function \_alt


```haxe
function _alt(_c:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_compiler>, _f1:stdgo.regexp.syntax._Syntax.T_frag, _f2:stdgo.regexp.syntax._Syntax.T_frag):stdgo.regexp.syntax._Syntax.T_frag
```


 


[\(view code\)](<./Syntax.hx#L1275>)


### T\_compiler\_static\_extension function \_cap


```haxe
function _cap(_c:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_compiler>, _arg:stdgo.GoUInt32):stdgo.regexp.syntax._Syntax.T_frag
```


 


[\(view code\)](<./Syntax.hx#L1283>)


### T\_compiler\_static\_extension function \_cat


```haxe
function _cat(_c:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_compiler>, _f1:stdgo.regexp.syntax._Syntax.T_frag, _f2:stdgo.regexp.syntax._Syntax.T_frag):stdgo.regexp.syntax._Syntax.T_frag
```


 


[\(view code\)](<./Syntax.hx#L1279>)


### T\_compiler\_static\_extension function \_compile


```haxe
function _compile(_c:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_compiler>, _re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):stdgo.regexp.syntax._Syntax.T_frag
```


 


[\(view code\)](<./Syntax.hx#L1299>)


### T\_compiler\_static\_extension function \_empty


```haxe
function _empty(_c:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_compiler>, _op:stdgo.regexp.syntax.EmptyOp):stdgo.regexp.syntax._Syntax.T_frag
```


 


[\(view code\)](<./Syntax.hx#L1248>)


### T\_compiler\_static\_extension function \_fail


```haxe
function _fail(_c:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_compiler>):stdgo.regexp.syntax._Syntax.T_frag
```


 


[\(view code\)](<./Syntax.hx#L1287>)


### T\_compiler\_static\_extension function \_init


```haxe
function _init(_c:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_compiler>):Void
```


 


[\(view code\)](<./Syntax.hx#L1303>)


### T\_compiler\_static\_extension function \_inst


```haxe
function _inst(_c:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_compiler>, _op:stdgo.regexp.syntax.InstOp):stdgo.regexp.syntax._Syntax.T_frag
```


 


[\(view code\)](<./Syntax.hx#L1295>)


### T\_compiler\_static\_extension function \_loop


```haxe
function _loop(_c:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_compiler>, _f1:stdgo.regexp.syntax._Syntax.T_frag, _nongreedy:Bool):stdgo.regexp.syntax._Syntax.T_frag
```


loop returns the fragment for the main loop of a plus or star. For plus, it can be used after changing the entry to f1.i. For star, it can be used directly when f1 can't match an empty string. \(When f1 can match an empty string, f1\* must be implemented as \(f1\+\)? to get the priority match order correct.\) 


[\(view code\)](<./Syntax.hx#L1267>)


### T\_compiler\_static\_extension function \_nop


```haxe
function _nop(_c:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_compiler>):stdgo.regexp.syntax._Syntax.T_frag
```


 


[\(view code\)](<./Syntax.hx#L1291>)


### T\_compiler\_static\_extension function \_plus


```haxe
function _plus(_c:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_compiler>, _f1:stdgo.regexp.syntax._Syntax.T_frag, _nongreedy:Bool):stdgo.regexp.syntax._Syntax.T_frag
```


 


[\(view code\)](<./Syntax.hx#L1252>)


### T\_compiler\_static\_extension function \_quest


```haxe
function _quest(_c:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_compiler>, _f1:stdgo.regexp.syntax._Syntax.T_frag, _nongreedy:Bool):stdgo.regexp.syntax._Syntax.T_frag
```


 


[\(view code\)](<./Syntax.hx#L1271>)


### T\_compiler\_static\_extension function \_rune


```haxe
function _rune(_c:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_compiler>, _r:stdgo.Slice<stdgo.GoRune>, _flags:stdgo.regexp.syntax.Flags):stdgo.regexp.syntax._Syntax.T_frag
```


 


[\(view code\)](<./Syntax.hx#L1244>)


### T\_compiler\_static\_extension function \_star


```haxe
function _star(_c:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_compiler>, _f1:stdgo.regexp.syntax._Syntax.T_frag, _nongreedy:Bool):stdgo.regexp.syntax._Syntax.T_frag
```


 


[\(view code\)](<./Syntax.hx#L1256>)


## class T\_error


An Error describes a failure to parse a regular expression and gives the offending expression. 


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


 


[\(view code\)](<./Syntax.hx#L521>)


### T\_error function error


```haxe
function error():stdgo.GoString
```


 


[\(view code\)](<./Syntax.hx#L1327>)


## class T\_error\_static\_extension


 


### T\_error\_static\_extension function error


```haxe
function error():stdgo.GoString
```


 


[\(view code\)](<./Syntax.hx#L1327>)


## class T\_parser\_static\_extension


 


### T\_parser\_static\_extension function \_alternate


```haxe
function _alternate(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>):stdgo.Ref<stdgo.regexp.syntax.Regexp>
```


alternate replaces the top of the stack \(above the topmost '\('\) with its alternation. 


[\(view code\)](<./Syntax.hx#L1771>)


### T\_parser\_static\_extension function \_appendGroup


```haxe
function _appendGroup(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _r:stdgo.Slice<stdgo.GoRune>, _g:stdgo.regexp.syntax._Syntax.T_charGroup):stdgo.Slice<stdgo.GoRune>
```


 


[\(view code\)](<./Syntax.hx#L1613>)


### T\_parser\_static\_extension function \_calcHeight


```haxe
function _calcHeight(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _re:stdgo.Ref<stdgo.regexp.syntax.Regexp>, _force:Bool):stdgo.GoInt
```


 


[\(view code\)](<./Syntax.hx#L1830>)


### T\_parser\_static\_extension function \_checkHeight


```haxe
function _checkHeight(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Void
```


 


[\(view code\)](<./Syntax.hx#L1834>)


### T\_parser\_static\_extension function \_collapse


```haxe
function _collapse(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _subs:stdgo.Slice<stdgo.Ref<stdgo.regexp.syntax.Regexp>>, _op:stdgo.regexp.syntax.Op):stdgo.Ref<stdgo.regexp.syntax.Regexp>
```


collapse returns the result of applying op to sub. If sub contains op nodes, they all get hoisted up so that there is never a concat of a concat or an alternate of an alternate. 


[\(view code\)](<./Syntax.hx#L1764>)


### T\_parser\_static\_extension function \_concat


```haxe
function _concat(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>):stdgo.Ref<stdgo.regexp.syntax.Regexp>
```


concat replaces the top of the stack \(above the topmost '|' or '\('\) with its concatenation. 


[\(view code\)](<./Syntax.hx#L1778>)


### T\_parser\_static\_extension function \_factor


```haxe
function _factor(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _sub:stdgo.Slice<stdgo.Ref<stdgo.regexp.syntax.Regexp>>):stdgo.Slice<stdgo.Ref<stdgo.regexp.syntax.Regexp>>
```


factor factors common prefixes from the alternation list sub. It returns a replacement list that reuses the same storage and frees \(passes to p.reuse\) any removed \*Regexps.  For example,  ABC|ABD|AEF|BCX|BCY  simplifies by literal prefix extraction to  A\(B\(C|D\)|EF\)|BC\(X|Y\)  which simplifies by character class introduction to  A\(B\[CD\]|EF\)|BC\[XY\] 


[\(view code\)](<./Syntax.hx#L1754>)


### T\_parser\_static\_extension function \_leadingRegexp


```haxe
function _leadingRegexp(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):stdgo.Ref<stdgo.regexp.syntax.Regexp>
```


leadingRegexp returns the leading regexp that re begins with. The regexp refers to storage in re or its children. 


[\(view code\)](<./Syntax.hx#L1717>)


### T\_parser\_static\_extension function \_leadingString


```haxe
function _leadingString(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):{_1:stdgo.regexp.syntax.Flags, _0:stdgo.Slice<stdgo.GoRune>}
```


leadingString returns the leading literal string that re begins with. The string refers to storage in re or its children. 


[\(view code\)](<./Syntax.hx#L1733>)


### T\_parser\_static\_extension function \_literal


```haxe
function _literal(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _r:stdgo.GoRune):Void
```


literal pushes a literal regexp for the rune r on the stack. 


[\(view code\)](<./Syntax.hx#L1804>)


### T\_parser\_static\_extension function \_maybeConcat


```haxe
function _maybeConcat(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _r:stdgo.GoRune, _flags:stdgo.regexp.syntax.Flags):Bool
```


maybeConcat implements incremental concatenation of literal runes into string nodes. The parser calls this before each push, so only the top fragment of the stack might need processing. Since this is called before a push, the topmost literal is no longer subject to operators like \* \(Otherwise ab\* would turn into \(ab\)\*.\) If r \>= 0 and there's a node left over, maybeConcat uses it to push r with the given flags. maybeConcat reports whether r was pushed. 


[\(view code\)](<./Syntax.hx#L1819>)


### T\_parser\_static\_extension function \_newRegexp


```haxe
function _newRegexp(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _op:stdgo.regexp.syntax.Op):stdgo.Ref<stdgo.regexp.syntax.Regexp>
```


 


[\(view code\)](<./Syntax.hx#L1842>)


### T\_parser\_static\_extension function \_op


```haxe
function _op(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _op:stdgo.regexp.syntax.Op):stdgo.Ref<stdgo.regexp.syntax.Regexp>
```


op pushes a regexp with the given op onto the stack and returns that regexp. 


[\(view code\)](<./Syntax.hx#L1797>)


### T\_parser\_static\_extension function \_parseClass


```haxe
function _parseClass(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _s:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.GoString}
```


parseClass parses a character class at the beginning of s and pushes it onto the parse stack. 


[\(view code\)](<./Syntax.hx#L1600>)


### T\_parser\_static\_extension function \_parseClassChar


```haxe
function _parseClassChar(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _s:stdgo.GoString, _wholeClass:stdgo.GoString):{_2:stdgo.Error, _1:stdgo.GoString, _0:stdgo.GoRune}
```


parseClassChar parses a character class character at the beginning of s and returns it. 


[\(view code\)](<./Syntax.hx#L1639>)


### T\_parser\_static\_extension function \_parseEscape


```haxe
function _parseEscape(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _s:stdgo.GoString):{_2:stdgo.Error, _1:stdgo.GoString, _0:stdgo.GoRune}
```


parseEscape parses an escape sequence at the beginning of s and returns the rune. 


[\(view code\)](<./Syntax.hx#L1647>)


### T\_parser\_static\_extension function \_parseInt


```haxe
function _parseInt(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _s:stdgo.GoString):{_2:Bool, _1:stdgo.GoString, _0:stdgo.GoInt}
```


parseInt parses a decimal integer. 


[\(view code\)](<./Syntax.hx#L1677>)


### T\_parser\_static\_extension function \_parseNamedClass


```haxe
function _parseNamedClass(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _s:stdgo.GoString, _r:stdgo.Slice<stdgo.GoRune>):{_2:stdgo.Error, _1:stdgo.GoString, _0:stdgo.Slice<stdgo.GoRune>}
```


parseNamedClass parses a leading POSIX named character class like \[:alnum:\] from the beginning of s. If one is present, it appends the characters to r and returns the new slice r and the remainder of the string. 


[\(view code\)](<./Syntax.hx#L1622>)


### T\_parser\_static\_extension function \_parsePerlClassEscape


```haxe
function _parsePerlClassEscape(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _s:stdgo.GoString, _r:stdgo.Slice<stdgo.GoRune>):{_1:stdgo.GoString, _0:stdgo.Slice<stdgo.GoRune>}
```


parsePerlClassEscape parses a leading Perl character class escape like \\d from the beginning of s. If one is present, it appends the characters to r and returns the new slice r and the remainder of the string. 


[\(view code\)](<./Syntax.hx#L1631>)


### T\_parser\_static\_extension function \_parsePerlFlags


```haxe
function _parsePerlFlags(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _s:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.GoString}
```


parsePerlFlags parses a Perl flag setting or non\-capturing group or both, like \(?i\) or \(?: or \(?i:.  It removes the prefix from s and updates the parse state. The caller must have ensured that s begins with "\(?". 


[\(view code\)](<./Syntax.hx#L1686>)


### T\_parser\_static\_extension function \_parseRepeat


```haxe
function _parseRepeat(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _s:stdgo.GoString):{_3:Bool, _2:stdgo.GoString, _1:stdgo.GoInt, _0:stdgo.GoInt}
```


parseRepeat parses \{min\} \(max=min\) or \{min,\} \(max=\-1\) or \{min,max\}. If s is not of that form, it returns ok == false. If s has the right form but the values are too big, it returns min == \-1, ok == true. 


[\(view code\)](<./Syntax.hx#L1700>)


### T\_parser\_static\_extension function \_parseRightParen


```haxe
function _parseRightParen(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>):stdgo.Error
```


parseRightParen handles a \) in the input. 


[\(view code\)](<./Syntax.hx#L1654>)


### T\_parser\_static\_extension function \_parseUnicodeClass


```haxe
function _parseUnicodeClass(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _s:stdgo.GoString, _r:stdgo.Slice<stdgo.GoRune>):{_2:stdgo.Error, _1:stdgo.GoString, _0:stdgo.Slice<stdgo.GoRune>}
```


parseUnicodeClass parses a leading Unicode character class like \\p\{Han\} from the beginning of s. If one is present, it appends the characters to r and returns the new slice r and the remainder of the string. 


[\(view code\)](<./Syntax.hx#L1609>)


### T\_parser\_static\_extension function \_parseVerticalBar


```haxe
function _parseVerticalBar(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>):stdgo.Error
```


parseVerticalBar handles a | in the input. 


[\(view code\)](<./Syntax.hx#L1670>)


### T\_parser\_static\_extension function \_push


```haxe
function _push(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):stdgo.Ref<stdgo.regexp.syntax.Regexp>
```


push pushes the regexp re onto the parse stack and returns the regexp. 


[\(view code\)](<./Syntax.hx#L1826>)


### T\_parser\_static\_extension function \_removeLeadingRegexp


```haxe
function _removeLeadingRegexp(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _re:stdgo.Ref<stdgo.regexp.syntax.Regexp>, _reuse:Bool):stdgo.Ref<stdgo.regexp.syntax.Regexp>
```


removeLeadingRegexp removes the leading regexp in re. It returns the replacement for re. If reuse is true, it passes the removed regexp \(if no longer needed\) to p.reuse. 


[\(view code\)](<./Syntax.hx#L1709>)


### T\_parser\_static\_extension function \_removeLeadingString


```haxe
function _removeLeadingString(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _re:stdgo.Ref<stdgo.regexp.syntax.Regexp>, _n:stdgo.GoInt):stdgo.Ref<stdgo.regexp.syntax.Regexp>
```


removeLeadingString removes the first n leading runes from the beginning of re. It returns the replacement for re. 


[\(view code\)](<./Syntax.hx#L1725>)


### T\_parser\_static\_extension function \_repeat


```haxe
function _repeat(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _op:stdgo.regexp.syntax.Op, _min:stdgo.GoInt, _max:stdgo.GoInt, _before:stdgo.GoString, _after:stdgo.GoString, _lastRepeat:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.GoString}
```


repeat replaces the top stack element with itself repeated according to op, min, max. before is the regexp suffix starting at the repetition operator. after is the regexp suffix following after the repetition operator. repeat returns an updated 'after' and an error, if any. 


[\(view code\)](<./Syntax.hx#L1789>)


### T\_parser\_static\_extension function \_reuse


```haxe
function _reuse(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>, _re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):Void
```


 


[\(view code\)](<./Syntax.hx#L1838>)


### T\_parser\_static\_extension function \_swapVerticalBar


```haxe
function _swapVerticalBar(_p:stdgo.Ref<stdgo.regexp.syntax._Syntax.T_parser>):Bool
```


If the top of the stack is an element followed by an opVerticalBar swapVerticalBar swaps the two and returns true. Otherwise it returns false. 


[\(view code\)](<./Syntax.hx#L1663>)


## class T\_patchList\_static\_extension


 


### T\_patchList\_static\_extension function \_append


```haxe
function _append(_l1:stdgo.regexp.syntax._Syntax.T_patchList, _p:stdgo.Ref<stdgo.regexp.syntax.Prog>, _l2:stdgo.regexp.syntax._Syntax.T_patchList):stdgo.regexp.syntax._Syntax.T_patchList
```


 


[\(view code\)](<./Syntax.hx#L1157>)


### T\_patchList\_static\_extension function \_patch


```haxe
function _patch(_l:stdgo.regexp.syntax._Syntax.T_patchList, _p:stdgo.Ref<stdgo.regexp.syntax.Prog>, _val:stdgo.GoUInt32):Void
```


 


[\(view code\)](<./Syntax.hx#L1161>)


## class T\_ranges\_static\_extension


 


### T\_ranges\_static\_extension function len


```haxe
function len(_ra:stdgo.regexp.syntax._Syntax.T_ranges):stdgo.GoInt
```


 


[\(view code\)](<./Syntax.hx#L1878>)


### T\_ranges\_static\_extension function less


```haxe
function less(_ra:stdgo.regexp.syntax._Syntax.T_ranges, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


 


[\(view code\)](<./Syntax.hx#L1882>)


### T\_ranges\_static\_extension function swap


```haxe
function swap(_ra:stdgo.regexp.syntax._Syntax.T_ranges, _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Syntax.hx#L1874>)


# Typedefs


```haxe
import stdgo.regexp.syntax.*
```


## typedef EmptyOp


```haxe
typedef EmptyOp = var x:{<>}
```


An EmptyOp specifies a kind or mixture of zero\-width assertions. 


## typedef ErrorCode


```haxe
typedef ErrorCode = var x:{<>}
```


An ErrorCode describes a failure to parse a regular expression. 


### ErrorCode function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Syntax.hx#L2172>)


## typedef Flags


```haxe
typedef Flags = var x:{<>}
```


Flags control the behavior of the parser and record information about regexp context. 


## typedef InstOp


```haxe
typedef InstOp = var x:{<>}
```


An InstOp is an instruction opcode. 


### InstOp function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Syntax.hx#L2196>)


## typedef Op


```haxe
typedef Op = var x:{<>}
```


An Op is a single regular expression operator. 


### Op function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Syntax.hx#L2196>)


