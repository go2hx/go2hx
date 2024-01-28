package stdgo.regexp;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var _noRune : Dynamic;
@:invalid var _noNext : Dynamic;
@:invalid var _anyRuneNotNL : Dynamic;
@:invalid var _anyRune : Dynamic;
@:invalid var _matchSize : Dynamic;
@:invalid var _goodRe : Dynamic;
@:invalid var _badRe : Dynamic;
@:invalid var _replaceTests : Dynamic;
@:invalid var _replaceLiteralTests : Dynamic;
@:invalid var _replaceFuncTests : Dynamic;
@:invalid var _metaTests : Dynamic;
@:invalid var _literalPrefixTests : Dynamic;
@:invalid var _emptySubexpIndices : Dynamic;
@:invalid var _subexpCases : Dynamic;
@:invalid var _splitTests : Dynamic;
@:invalid var _compileBenchData : Dynamic;
@:invalid var _minInputLenTests : Dynamic;
@:invalid var _run : Dynamic;
@:invalid var _match : Dynamic;
@:invalid var _notab : Dynamic;
@:invalid var _benchData : Dynamic;
@:invalid var _benchSizes : Dynamic;
@:invalid var _findTests : Dynamic;
@:invalid var _runeMergeTests : Dynamic;
@:invalid var _onePassTests : Dynamic;
@:invalid var _onePassTests1 : Dynamic;
@:invalid var _sink : Dynamic;
@:invalid var _visitedBits : Dynamic;
@:invalid var _maxBacktrackProg : Dynamic;
@:invalid var _maxBacktrackVector : Dynamic;
@:invalid var _bitStatePool : Dynamic;
@:invalid var _onePassPool : Dynamic;
@:invalid var _arrayNoInts : Dynamic;
@:invalid var _text : Dynamic;
@:invalid var _mergeFailed : Dynamic;
@:invalid var _matchPool : Dynamic;
@:invalid var _endOfText : Dynamic;
@:invalid var _specialBytes : Dynamic;
@:invalid var _startSize : Dynamic;
typedef T_input = stdgo._internal.regexp.Regexp.T_input;
@:invalid typedef T_stringError = Dynamic;
@:invalid typedef ReplaceTest = Dynamic;
@:invalid typedef ReplaceFuncTest = Dynamic;
@:invalid typedef MetaTest = Dynamic;
@:invalid typedef T_subexpIndex = Dynamic;
@:invalid typedef T_subexpCase = Dynamic;
@:invalid typedef T_job = Dynamic;
@:invalid typedef T_bitState = Dynamic;
@:invalid typedef T_queue = Dynamic;
@:invalid typedef T_entry = Dynamic;
@:invalid typedef T_thread = Dynamic;
@:invalid typedef T_machine = Dynamic;
@:invalid typedef T_inputs = Dynamic;
@:invalid typedef T_onePassMachine = Dynamic;
@:invalid typedef FindTest = Dynamic;
@:invalid typedef T_onePassProg = Dynamic;
@:invalid typedef T_onePassInst = Dynamic;
@:invalid typedef T_queueOnePass = Dynamic;
@:invalid typedef Regexp = Dynamic;
@:invalid typedef T_inputString = Dynamic;
@:invalid typedef T_inputBytes = Dynamic;
@:invalid typedef T_inputReader = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.regexp.Regexp.T__struct_0;
@:invalid typedef T__struct_1_asInterface = Dynamic;
@:invalid typedef T__struct_1_static_extension = Dynamic;
typedef T__struct_1 = stdgo._internal.regexp.Regexp.T__struct_1;
@:invalid typedef T__struct_2_asInterface = Dynamic;
@:invalid typedef T__struct_2_static_extension = Dynamic;
typedef T__struct_2 = stdgo._internal.regexp.Regexp.T__struct_2;
@:invalid typedef T__struct_3_asInterface = Dynamic;
@:invalid typedef T__struct_3_static_extension = Dynamic;
typedef T__struct_3 = stdgo._internal.regexp.Regexp.T__struct_3;
@:invalid typedef T__struct_4_asInterface = Dynamic;
@:invalid typedef T__struct_4_static_extension = Dynamic;
typedef T__struct_4 = stdgo._internal.regexp.Regexp.T__struct_4;
@:invalid typedef T__struct_5_asInterface = Dynamic;
@:invalid typedef T__struct_5_static_extension = Dynamic;
typedef T__struct_5 = stdgo._internal.regexp.Regexp.T__struct_5;
@:invalid typedef T__struct_6_asInterface = Dynamic;
@:invalid typedef T__struct_6_static_extension = Dynamic;
typedef T__struct_6 = stdgo._internal.regexp.Regexp.T__struct_6;
@:invalid typedef T__struct_7_asInterface = Dynamic;
@:invalid typedef T__struct_7_static_extension = Dynamic;
typedef T__struct_7 = stdgo._internal.regexp.Regexp.T__struct_7;
typedef T_lazyFlag = stdgo._internal.regexp.Regexp.T_lazyFlag;
typedef T_runeSlice = stdgo._internal.regexp.Regexp.T_runeSlice;
function _compileTest(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _expr:stdgo.GoString, _error:stdgo.GoString):Void {}
function testGoodCompile(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testBadCompile(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _matchTest(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _test:stdgo.Ref<FindTest>):Void {}
function testMatch(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _matchFunctionTest(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _test:stdgo.Ref<FindTest>):Void {}
function testMatchFunction(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _copyMatchTest(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _test:stdgo.Ref<FindTest>):Void {}
function testCopyMatch(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testReplaceAll(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testReplaceAllLiteral(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testReplaceAllFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testQuoteMeta(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testLiteralPrefix(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testSubexp(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testSplit(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testParseAndCompile(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testOnePassCutoff(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testSwitchBacktrack(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function benchmarkFind(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkFindAllNoMatches(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkFindString(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkFindSubmatch(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkFindStringSubmatch(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkLiteral(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkNotLiteral(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkMatchClass(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkMatchClass_InRange(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkReplaceAll(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkAnchoredLiteralShortNonMatch(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkAnchoredLiteralLongNonMatch(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkAnchoredShortMatch(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkAnchoredLongMatch(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkOnePassShortA(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkNotOnePassShortA(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkOnePassShortB(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkNotOnePassShortB(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkOnePassLongPrefix(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkOnePassLongNotPrefix(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkMatchParallelShared(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkMatchParallelCopied(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkQuoteMetaAll(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkQuoteMetaNone(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkCompile(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function testDeepEqual(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testMinInputLen(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testUnmarshalText(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _newBitState():Void {}
function _freeBitState(_b:stdgo.Ref<T_bitState>):Void {}
function _maxBitStateLen(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Prog>):Void {}
function _shouldBacktrack(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Prog>):Void {}
function _newLazyFlag(_r1:stdgo.GoRune, _r2:stdgo.GoRune):Void {}
function _newOnePassMachine():Void {}
function _freeOnePassMachine(_m:stdgo.Ref<T_onePassMachine>):Void {}
function testRE2Exhaustive(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testRE2Search(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _testRE2(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _file:stdgo.GoString):Void {}
function _runFull(_re:stdgo.Ref<Regexp>, _refull:stdgo.Ref<Regexp>, _text:stdgo.GoString):Void {}
function _runPartial(_re:stdgo.Ref<Regexp>, _refull:stdgo.Ref<Regexp>, _text:stdgo.GoString):Void {}
function _runFullLongest(_re:stdgo.Ref<Regexp>, _refull:stdgo.Ref<Regexp>, _text:stdgo.GoString):Void {}
function _runPartialLongest(_re:stdgo.Ref<Regexp>, _refull:stdgo.Ref<Regexp>, _text:stdgo.GoString):Void {}
function _matchFull(_re:stdgo.Ref<Regexp>, _refull:stdgo.Ref<Regexp>, _text:stdgo.GoString):Void {}
function _matchPartial(_re:stdgo.Ref<Regexp>, _refull:stdgo.Ref<Regexp>, _text:stdgo.GoString):Void {}
function _matchFullLongest(_re:stdgo.Ref<Regexp>, _refull:stdgo.Ref<Regexp>, _text:stdgo.GoString):Void {}
function _matchPartialLongest(_re:stdgo.Ref<Regexp>, _refull:stdgo.Ref<Regexp>, _text:stdgo.GoString):Void {}
function _isSingleBytes(_s:stdgo.GoString):Void {}
function _tryCompile(_s:stdgo.GoString):Void {}
function _parseResult(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _file:stdgo.GoString, _lineno:stdgo.GoInt, _res:stdgo.GoString):Void {}
function _same(_x:stdgo.Slice<stdgo.GoInt>, _y:stdgo.Slice<stdgo.GoInt>):Void {}
function testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _testFowler(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _file:stdgo.GoString):Void {}
function _parseFowlerResult(_s:stdgo.GoString):Void {}
function _makeText(_n:stdgo.GoInt):Void {}
function benchmarkMatch(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkMatch_onepass_regex(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function testLongest(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testProgramTooLongForBacktrack(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _build(_n:stdgo.GoInt, _x:haxe.Rest<stdgo.GoInt>):Void {}
function testFind(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testFindString(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _testFindIndex(_test:stdgo.Ref<FindTest>, _result:stdgo.Slice<stdgo.GoInt>, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testFindIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testFindStringIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testFindReaderIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testFindAll(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testFindAllString(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _testFindAllIndex(_test:stdgo.Ref<FindTest>, _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>>, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testFindAllIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testFindAllStringIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _testSubmatchBytes(_test:stdgo.Ref<FindTest>, _n:stdgo.GoInt, _submatches:stdgo.Slice<stdgo.GoInt>, _result:stdgo.Slice<stdgo.Slice<stdgo.GoByte>>, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testFindSubmatch(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _testSubmatchString(_test:stdgo.Ref<FindTest>, _n:stdgo.GoInt, _submatches:stdgo.Slice<stdgo.GoInt>, _result:stdgo.Slice<stdgo.GoString>, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testFindStringSubmatch(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _testSubmatchIndices(_test:stdgo.Ref<FindTest>, _n:stdgo.GoInt, _expect:stdgo.Slice<stdgo.GoInt>, _result:stdgo.Slice<stdgo.GoInt>, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _testFindSubmatchIndex(_test:stdgo.Ref<FindTest>, _result:stdgo.Slice<stdgo.GoInt>, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testFindSubmatchIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testFindStringSubmatchIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testFindReaderSubmatchIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testFindAllSubmatch(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testFindAllStringSubmatch(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _testFindAllSubmatchIndex(_test:stdgo.Ref<FindTest>, _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>>, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testFindAllSubmatchIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testFindAllStringSubmatchIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _onePassPrefix(_p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Prog>):Void {}
function _onePassNext(_i:stdgo.Ref<T_onePassInst>, _r:stdgo.GoRune):Void {}
function _iop(_i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Inst>):Void {}
function _newQueue(_size:stdgo.GoInt):Void {}
function _mergeRuneSets(_leftRunes:stdgo.Ref<stdgo.Slice<stdgo.GoRune>>, _rightRunes:stdgo.Ref<stdgo.Slice<stdgo.GoRune>>, _leftPC:stdgo.GoUInt32, _rightPC:stdgo.GoUInt32):Void {}
function _cleanupOnePass(_prog:stdgo.Ref<T_onePassProg>, _original:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Prog>):Void {}
function _onePassCopy(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Prog>):Void {}
function _makeOnePass(_p:stdgo.Ref<T_onePassProg>):Void {}
function _compileOnePass(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Prog>):Void {}
function testMergeRuneSet(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testCompileOnePass(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testRunOnePass(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function compile(_expr:stdgo.GoString):Void {}
function compilePOSIX(_expr:stdgo.GoString):Void {}
function _compile(_expr:stdgo.GoString, _mode:stdgo._internal.regexp.syntax.Syntax.Flags, _longest:Bool):Void {}
function _minInputLen(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax.Regexp>):Void {}
function mustCompile(_str:stdgo.GoString):Void {}
function mustCompilePOSIX(_str:stdgo.GoString):Void {}
function _quote(_s:stdgo.GoString):Void {}
function matchReader(_pattern:stdgo.GoString, _r:stdgo._internal.io.Io.RuneReader):Void {}
function matchString(_pattern:stdgo.GoString, _s:stdgo.GoString):Void {}
function match(_pattern:stdgo.GoString, _b:stdgo.Slice<stdgo.GoByte>):Void {}
function _special(_b:stdgo.GoByte):Void {}
function quoteMeta(_s:stdgo.GoString):Void {}
function _extract(_str:stdgo.GoString):Void {}
@:invalid var _ : Dynamic;
@:invalid typedef T_bitState_asInterface = Dynamic;
@:invalid typedef T_bitState_static_extension = Dynamic;
@:invalid typedef T_machine_asInterface = Dynamic;
@:invalid typedef T_machine_static_extension = Dynamic;
@:invalid typedef T_inputs_asInterface = Dynamic;
@:invalid typedef T_inputs_static_extension = Dynamic;
@:invalid typedef FindTest_asInterface = Dynamic;
@:invalid typedef FindTest_static_extension = Dynamic;
@:invalid typedef T_onePassInst_asInterface = Dynamic;
@:invalid typedef T_onePassInst_static_extension = Dynamic;
@:invalid typedef T_queueOnePass_asInterface = Dynamic;
@:invalid typedef T_queueOnePass_static_extension = Dynamic;
@:invalid typedef Regexp_asInterface = Dynamic;
@:invalid typedef Regexp_static_extension = Dynamic;
@:invalid typedef T_inputString_asInterface = Dynamic;
@:invalid typedef T_inputString_static_extension = Dynamic;
@:invalid typedef T_inputBytes_asInterface = Dynamic;
@:invalid typedef T_inputBytes_static_extension = Dynamic;
@:invalid typedef T_inputReader_asInterface = Dynamic;
@:invalid typedef T_inputReader_static_extension = Dynamic;
@:invalid typedef T_lazyFlag_asInterface = Dynamic;
@:invalid typedef T_lazyFlag_static_extension = Dynamic;
@:invalid typedef T_runeSlice_asInterface = Dynamic;
@:invalid typedef T_runeSlice_static_extension = Dynamic;
