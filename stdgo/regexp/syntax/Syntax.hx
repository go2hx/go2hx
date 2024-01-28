package stdgo.regexp.syntax;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var _anyRuneNotNL : Dynamic;
@:invalid var _anyRune : Dynamic;
@:invalid var __Op_index_0 : Dynamic;
@:invalid var _anyTable : Dynamic;
@:invalid var _code1 : Dynamic;
@:invalid var _code2 : Dynamic;
@:invalid var _code3 : Dynamic;
@:invalid var _perlGroup : Dynamic;
@:invalid var _code4 : Dynamic;
@:invalid var _code5 : Dynamic;
@:invalid var _code6 : Dynamic;
@:invalid var _code7 : Dynamic;
@:invalid var _code8 : Dynamic;
@:invalid var _code9 : Dynamic;
@:invalid var _code10 : Dynamic;
@:invalid var _code11 : Dynamic;
@:invalid var _code12 : Dynamic;
@:invalid var _code13 : Dynamic;
@:invalid var _code14 : Dynamic;
@:invalid var _code15 : Dynamic;
@:invalid var _code16 : Dynamic;
@:invalid var _code17 : Dynamic;
@:invalid var _posixGroup : Dynamic;
@:invalid var _instOpNames : Dynamic;
@:invalid var _foldcaseTests : Dynamic;
@:invalid var _literalTests : Dynamic;
@:invalid var _matchnlTests : Dynamic;
@:invalid var _nomatchnlTests : Dynamic;
@:invalid var _opNames : Dynamic;
@:invalid var _parseTests : Dynamic;
@:invalid var _invalidRegexps : Dynamic;
@:invalid var _onlyPerl : Dynamic;
@:invalid var _onlyPOSIX : Dynamic;
@:invalid var _compileTests : Dynamic;
@:invalid var _simplifyTests : Dynamic;
@:invalid var __Op_name_0 : Dynamic;
@:invalid var __Op_name_1 : Dynamic;
@:invalid var errInternalError : Dynamic;
@:invalid var errInvalidCharClass : Dynamic;
@:invalid var errInvalidCharRange : Dynamic;
@:invalid var errInvalidEscape : Dynamic;
@:invalid var errInvalidNamedCapture : Dynamic;
@:invalid var errInvalidPerlOp : Dynamic;
@:invalid var errInvalidRepeatOp : Dynamic;
@:invalid var errInvalidRepeatSize : Dynamic;
@:invalid var errInvalidUTF8 : Dynamic;
@:invalid var errMissingBracket : Dynamic;
@:invalid var errMissingParen : Dynamic;
@:invalid var errMissingRepeatArgument : Dynamic;
@:invalid var errTrailingBackslash : Dynamic;
@:invalid var errUnexpectedParen : Dynamic;
@:invalid var errNestingDepth : Dynamic;
@:invalid var errLarge : Dynamic;
@:invalid var foldCase : Dynamic;
@:invalid var literal : Dynamic;
@:invalid var classNL : Dynamic;
@:invalid var dotNL : Dynamic;
@:invalid var oneLine : Dynamic;
@:invalid var nonGreedy : Dynamic;
@:invalid var perlX : Dynamic;
@:invalid var unicodeGroups : Dynamic;
@:invalid var wasDollar : Dynamic;
@:invalid var simple : Dynamic;
@:invalid var matchNL : Dynamic;
@:invalid var perl : Dynamic;
@:invalid var posix : Dynamic;
@:invalid var _opLeftParen : Dynamic;
@:invalid var _opVerticalBar : Dynamic;
@:invalid var _maxHeight : Dynamic;
@:invalid var _maxSize : Dynamic;
@:invalid var _instSize : Dynamic;
@:invalid var _maxRunes : Dynamic;
@:invalid var _runeSize : Dynamic;
@:invalid var _minFold : Dynamic;
@:invalid var _maxFold : Dynamic;
@:invalid var _testFlags : Dynamic;
@:invalid var instAlt : Dynamic;
@:invalid var instAltMatch : Dynamic;
@:invalid var instCapture : Dynamic;
@:invalid var instEmptyWidth : Dynamic;
@:invalid var instMatch : Dynamic;
@:invalid var instFail : Dynamic;
@:invalid var instNop : Dynamic;
@:invalid var instRune : Dynamic;
@:invalid var instRune1 : Dynamic;
@:invalid var instRuneAny : Dynamic;
@:invalid var instRuneAnyNotNL : Dynamic;
@:invalid var emptyBeginLine : Dynamic;
@:invalid var emptyEndLine : Dynamic;
@:invalid var emptyBeginText : Dynamic;
@:invalid var emptyEndText : Dynamic;
@:invalid var emptyWordBoundary : Dynamic;
@:invalid var emptyNoWordBoundary : Dynamic;
@:invalid var _noMatch : Dynamic;
@:invalid var _sink : Dynamic;
@:invalid var opNoMatch : Dynamic;
@:invalid var opEmptyMatch : Dynamic;
@:invalid var opLiteral : Dynamic;
@:invalid var opCharClass : Dynamic;
@:invalid var opAnyCharNotNL : Dynamic;
@:invalid var opAnyChar : Dynamic;
@:invalid var opBeginLine : Dynamic;
@:invalid var opEndLine : Dynamic;
@:invalid var opBeginText : Dynamic;
@:invalid var opEndText : Dynamic;
@:invalid var opWordBoundary : Dynamic;
@:invalid var opNoWordBoundary : Dynamic;
@:invalid var opCapture : Dynamic;
@:invalid var opStar : Dynamic;
@:invalid var opPlus : Dynamic;
@:invalid var opQuest : Dynamic;
@:invalid var opRepeat : Dynamic;
@:invalid var opConcat : Dynamic;
@:invalid var opAlternate : Dynamic;
@:invalid var _opPseudo : Dynamic;
@:invalid var _meta : Dynamic;
@:invalid typedef T_patchList = Dynamic;
@:invalid typedef T_frag = Dynamic;
@:invalid typedef T_compiler = Dynamic;
@:invalid typedef Error = Dynamic;
@:invalid typedef T_parser = Dynamic;
@:invalid typedef T_charGroup = Dynamic;
@:invalid typedef T_ranges = Dynamic;
@:invalid typedef T_parseTest = Dynamic;
@:invalid typedef Prog = Dynamic;
@:invalid typedef Inst = Dynamic;
@:invalid typedef Regexp = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.regexp.syntax.Syntax.T__struct_0;
@:invalid typedef T__struct_1_asInterface = Dynamic;
@:invalid typedef T__struct_1_static_extension = Dynamic;
typedef T__struct_1 = stdgo._internal.regexp.syntax.Syntax.T__struct_1;
@:invalid typedef T__struct_2_asInterface = Dynamic;
@:invalid typedef T__struct_2_static_extension = Dynamic;
typedef T__struct_2 = stdgo._internal.regexp.syntax.Syntax.T__struct_2;
typedef ErrorCode = stdgo._internal.regexp.syntax.Syntax.ErrorCode;
typedef Flags = stdgo._internal.regexp.syntax.Syntax.Flags;
typedef InstOp = stdgo._internal.regexp.syntax.Syntax.InstOp;
typedef EmptyOp = stdgo._internal.regexp.syntax.Syntax.EmptyOp;
typedef Op = stdgo._internal.regexp.syntax.Syntax.Op;
function _makePatchList(_n:stdgo.GoUInt32):Void {}
function compile(_re:stdgo.Ref<Regexp>):Void {}
function _minFoldRune(_r:stdgo.GoRune):Void {}
function _repeatIsValid(_re:stdgo.Ref<Regexp>, _n:stdgo.GoInt):Void {}
function _cleanAlt(_re:stdgo.Ref<Regexp>):Void {}
function _literalRegexp(_s:stdgo.GoString, _flags:Flags):Void {}
function parse(_s:stdgo.GoString, _flags:Flags):Void {}
function _parse(_s:stdgo.GoString, _flags:Flags):Void {}
function _isValidCaptureName(_name:stdgo.GoString):Void {}
function _isCharClass(_re:stdgo.Ref<Regexp>):Void {}
function _matchRune(_re:stdgo.Ref<Regexp>, _r:stdgo.GoRune):Void {}
function _mergeCharClass(_dst:stdgo.Ref<Regexp>, _src:stdgo.Ref<Regexp>):Void {}
function _unicodeTable(_name:stdgo.GoString):Void {}
function _cleanClass(_rp:stdgo.Ref<stdgo.Slice<stdgo.GoRune>>):Void {}
function _appendLiteral(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.GoRune, _flags:Flags):Void {}
function _appendRange(_r:stdgo.Slice<stdgo.GoRune>, _lo:stdgo.GoRune, _hi:stdgo.GoRune):Void {}
function _appendFoldedRange(_r:stdgo.Slice<stdgo.GoRune>, _lo:stdgo.GoRune, _hi:stdgo.GoRune):Void {}
function _appendClass(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Slice<stdgo.GoRune>):Void {}
function _appendFoldedClass(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Slice<stdgo.GoRune>):Void {}
function _appendNegatedClass(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Slice<stdgo.GoRune>):Void {}
function _appendTable(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>):Void {}
function _appendNegatedTable(_r:stdgo.Slice<stdgo.GoRune>, _x:stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>):Void {}
function _negateClass(_r:stdgo.Slice<stdgo.GoRune>):Void {}
function _checkUTF8(_s:stdgo.GoString):Void {}
function _nextRune(_s:stdgo.GoString):Void {}
function _isalnum(_c:stdgo.GoRune):Void {}
function _unhex(_c:stdgo.GoRune):Void {}
function testParseSimple(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testParseFoldCase(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testParseLiteral(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testParseMatchNL(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testParseNoMatchNL(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _testParseDump(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _tests:stdgo.Slice<T_parseTest>, _flags:Flags):Void {}
function _dump(_re:stdgo.Ref<Regexp>):Void {}
function _dumpRegexp(_b:stdgo.Ref<stdgo._internal.strings.Strings.Builder>, _re:stdgo.Ref<Regexp>):Void {}
function _mkCharClass(_f:stdgo.GoRune -> Bool):Void {}
function _isUpperFold(_r:stdgo.GoRune):Void {}
function testFoldConstants(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testAppendRangeCollapse(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testParseInvalidRegexps(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testToStringEquivalentParse(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function emptyOpContext(_r1:stdgo.GoRune, _r2:stdgo.GoRune):Void {}
function isWordChar(_r:stdgo.GoRune):Void {}
function _bw(_b:stdgo.Ref<stdgo._internal.strings.Strings.Builder>, _args:haxe.Rest<stdgo.GoString>):Void {}
function _dumpProg(_b:stdgo.Ref<stdgo._internal.strings.Strings.Builder>, _p:stdgo.Ref<Prog>):Void {}
function _u32(_i:stdgo.GoUInt32):Void {}
function _dumpInst(_b:stdgo.Ref<stdgo._internal.strings.Strings.Builder>, _i:stdgo.Ref<Inst>):Void {}
function testCompile(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function benchmarkEmptyOpContext(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkIsWordChar(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function _writeRegexp(_b:stdgo.Ref<stdgo._internal.strings.Strings.Builder>, _re:stdgo.Ref<Regexp>):Void {}
function _escape(_b:stdgo.Ref<stdgo._internal.strings.Strings.Builder>, _r:stdgo.GoRune, _force:Bool):Void {}
function _simplify1(_op:Op, _flags:Flags, _sub:stdgo.Ref<Regexp>, _re:stdgo.Ref<Regexp>):Void {}
function testSimplify(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
@:invalid typedef T_patchList_asInterface = Dynamic;
@:invalid typedef T_patchList_static_extension = Dynamic;
@:invalid typedef T_compiler_asInterface = Dynamic;
@:invalid typedef T_compiler_static_extension = Dynamic;
@:invalid typedef Error_asInterface = Dynamic;
@:invalid typedef Error_static_extension = Dynamic;
@:invalid typedef T_parser_asInterface = Dynamic;
@:invalid typedef T_parser_static_extension = Dynamic;
@:invalid typedef T_ranges_asInterface = Dynamic;
@:invalid typedef T_ranges_static_extension = Dynamic;
@:invalid typedef Prog_asInterface = Dynamic;
@:invalid typedef Prog_static_extension = Dynamic;
@:invalid typedef Inst_asInterface = Dynamic;
@:invalid typedef Inst_static_extension = Dynamic;
@:invalid typedef Regexp_asInterface = Dynamic;
@:invalid typedef Regexp_static_extension = Dynamic;
@:invalid typedef ErrorCode_asInterface = Dynamic;
@:invalid typedef ErrorCode_static_extension = Dynamic;
@:invalid typedef InstOp_asInterface = Dynamic;
@:invalid typedef InstOp_static_extension = Dynamic;
@:invalid typedef Op_asInterface = Dynamic;
@:invalid typedef Op_static_extension = Dynamic;
