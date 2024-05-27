# Module: `stdgo._internal.regexp`

[(view library index)](../../stdgo.md)


# Overview


stdgo/_internal/internal/Macro.macro.hx:54: non hxb types:,362

# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _build(_n:stdgo.GoInt, _x:haxe.Rest<stdgo.GoInt>):stdgo.Slice<stdgo.Slice<stdgo.GoInt>>`](<#function-_build>)

- [`function _cleanupOnePass(_prog:stdgo.Ref<stdgo._internal.regexp.T_onePassProg>, _original:stdgo.Ref<stdgo._internal.regexp.syntax.Prog>):Void`](<#function-_cleanuponepass>)

- [`function _compile(_expr:stdgo.GoString, _mode:stdgo._internal.regexp.syntax.Flags, _longest:Bool):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.regexp.Regexp>;
}`](<#function-_compile>)

- [`function _compileOnePass(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Prog>):stdgo.Ref<stdgo._internal.regexp.T_onePassProg>`](<#function-_compileonepass>)

- [`function _compileTest(_t:stdgo.Ref<stdgo._internal.testing.T_>, _expr:stdgo.GoString, _error:stdgo.GoString):stdgo.Ref<stdgo._internal.regexp.Regexp>`](<#function-_compiletest>)

- [`function _copyMatchTest(_t:stdgo.Ref<stdgo._internal.testing.T_>, _test:stdgo.Ref<stdgo._internal.regexp.FindTest>):Void`](<#function-_copymatchtest>)

- [`function _extract(_str:stdgo.GoString):{
	_3:Bool;
	_2:stdgo.GoString;
	_1:stdgo.GoInt;
	_0:stdgo.GoString;
}`](<#function-_extract>)

- [`function _freeBitState(_b:stdgo.Ref<stdgo._internal.regexp.T_bitState>):Void`](<#function-_freebitstate>)

- [`function _freeOnePassMachine(_m:stdgo.Ref<stdgo._internal.regexp.T_onePassMachine>):Void`](<#function-_freeonepassmachine>)

- [`function _iop(_i:stdgo.Ref<stdgo._internal.regexp.syntax.Inst>):stdgo._internal.regexp.syntax.InstOp`](<#function-_iop>)

- [`function _isSingleBytes(_s:stdgo.GoString):Bool`](<#function-_issinglebytes>)

- [`function _makeOnePass(_p:stdgo.Ref<stdgo._internal.regexp.T_onePassProg>):stdgo.Ref<stdgo._internal.regexp.T_onePassProg>`](<#function-_makeonepass>)

- [`function _makeText(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>`](<#function-_maketext>)

- [`function _matchFull(_re:stdgo.Ref<stdgo._internal.regexp.Regexp>, _refull:stdgo.Ref<stdgo._internal.regexp.Regexp>, _text:stdgo.GoString):{
	_1:stdgo.GoString;
	_0:Bool;
}`](<#function-_matchfull>)

- [`function _matchFullLongest(_re:stdgo.Ref<stdgo._internal.regexp.Regexp>, _refull:stdgo.Ref<stdgo._internal.regexp.Regexp>, _text:stdgo.GoString):{
	_1:stdgo.GoString;
	_0:Bool;
}`](<#function-_matchfulllongest>)

- [`function _matchFunctionTest(_t:stdgo.Ref<stdgo._internal.testing.T_>, _test:stdgo.Ref<stdgo._internal.regexp.FindTest>):Void`](<#function-_matchfunctiontest>)

- [`function _matchPartial(_re:stdgo.Ref<stdgo._internal.regexp.Regexp>, _refull:stdgo.Ref<stdgo._internal.regexp.Regexp>, _text:stdgo.GoString):{
	_1:stdgo.GoString;
	_0:Bool;
}`](<#function-_matchpartial>)

- [`function _matchPartialLongest(_re:stdgo.Ref<stdgo._internal.regexp.Regexp>, _refull:stdgo.Ref<stdgo._internal.regexp.Regexp>, _text:stdgo.GoString):{
	_1:stdgo.GoString;
	_0:Bool;
}`](<#function-_matchpartiallongest>)

- [`function _matchTest(_t:stdgo.Ref<stdgo._internal.testing.T_>, _test:stdgo.Ref<stdgo._internal.regexp.FindTest>):Void`](<#function-_matchtest>)

- [`function _maxBitStateLen(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Prog>):stdgo.GoInt`](<#function-_maxbitstatelen>)

- [`function _mergeRuneSets(_leftRunes:stdgo.Ref<stdgo.Slice<stdgo.GoRune>>, _rightRunes:stdgo.Ref<stdgo.Slice<stdgo.GoRune>>, _leftPC:stdgo.GoUInt32, _rightPC:stdgo.GoUInt32):{
	_1:stdgo.Slice<stdgo.GoUInt32>;
	_0:stdgo.Slice<stdgo.GoRune>;
}`](<#function-_mergerunesets>)

- [`function _minInputLen(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>):stdgo.GoInt`](<#function-_mininputlen>)

- [`function _newBitState():stdgo.Ref<stdgo._internal.regexp.T_bitState>`](<#function-_newbitstate>)

- [`function _newLazyFlag(_r1:stdgo.GoRune, _r2:stdgo.GoRune):stdgo._internal.regexp.T_lazyFlag`](<#function-_newlazyflag>)

- [`function _newOnePassMachine():stdgo.Ref<stdgo._internal.regexp.T_onePassMachine>`](<#function-_newonepassmachine>)

- [`function _newQueue(_size:stdgo.GoInt):stdgo.Ref<stdgo._internal.regexp.T_queueOnePass>`](<#function-_newqueue>)

- [`function _onePassCopy(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Prog>):stdgo.Ref<stdgo._internal.regexp.T_onePassProg>`](<#function-_onepasscopy>)

- [`function _onePassNext(_i:stdgo.Ref<stdgo._internal.regexp.T_onePassInst>, _r:stdgo.GoRune):stdgo.GoUInt32`](<#function-_onepassnext>)

- [`function _onePassPrefix(_p:stdgo.Ref<stdgo._internal.regexp.syntax.Prog>):{
	_2:stdgo.GoUInt32;
	_1:Bool;
	_0:stdgo.GoString;
}`](<#function-_onepassprefix>)

- [`function _parseFowlerResult(_s:stdgo.GoString):{
	_3:stdgo.Slice<stdgo.GoInt>;
	_2:Bool;
	_1:Bool;
	_0:Bool;
}`](<#function-_parsefowlerresult>)

- [`function _parseResult(_t:stdgo.Ref<stdgo._internal.testing.T_>, _file:stdgo.GoString, _lineno:stdgo.GoInt, _res:stdgo.GoString):stdgo.Slice<stdgo.GoInt>`](<#function-_parseresult>)

- [`function _quote(_s:stdgo.GoString):stdgo.GoString`](<#function-_quote>)

- [`function _runFull(_re:stdgo.Ref<stdgo._internal.regexp.Regexp>, _refull:stdgo.Ref<stdgo._internal.regexp.Regexp>, _text:stdgo.GoString):{
	_1:stdgo.GoString;
	_0:stdgo.Slice<stdgo.GoInt>;
}`](<#function-_runfull>)

- [`function _runFullLongest(_re:stdgo.Ref<stdgo._internal.regexp.Regexp>, _refull:stdgo.Ref<stdgo._internal.regexp.Regexp>, _text:stdgo.GoString):{
	_1:stdgo.GoString;
	_0:stdgo.Slice<stdgo.GoInt>;
}`](<#function-_runfulllongest>)

- [`function _runPartial(_re:stdgo.Ref<stdgo._internal.regexp.Regexp>, _refull:stdgo.Ref<stdgo._internal.regexp.Regexp>, _text:stdgo.GoString):{
	_1:stdgo.GoString;
	_0:stdgo.Slice<stdgo.GoInt>;
}`](<#function-_runpartial>)

- [`function _runPartialLongest(_re:stdgo.Ref<stdgo._internal.regexp.Regexp>, _refull:stdgo.Ref<stdgo._internal.regexp.Regexp>, _text:stdgo.GoString):{
	_1:stdgo.GoString;
	_0:stdgo.Slice<stdgo.GoInt>;
}`](<#function-_runpartiallongest>)

- [`function _same(_x:stdgo.Slice<stdgo.GoInt>, _y:stdgo.Slice<stdgo.GoInt>):Bool`](<#function-_same>)

- [`function _shouldBacktrack(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Prog>):Bool`](<#function-_shouldbacktrack>)

- [`function _special(_b:stdgo.GoByte):Bool`](<#function-_special>)

- [`function _testFindAllIndex(_test:stdgo.Ref<stdgo._internal.regexp.FindTest>, _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>>, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-_testfindallindex>)

- [`function _testFindAllSubmatchIndex(_test:stdgo.Ref<stdgo._internal.regexp.FindTest>, _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>>, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-_testfindallsubmatchindex>)

- [`function _testFindIndex(_test:stdgo.Ref<stdgo._internal.regexp.FindTest>, _result:stdgo.Slice<stdgo.GoInt>, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-_testfindindex>)

- [`function _testFindSubmatchIndex(_test:stdgo.Ref<stdgo._internal.regexp.FindTest>, _result:stdgo.Slice<stdgo.GoInt>, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-_testfindsubmatchindex>)

- [`function _testFowler(_t:stdgo.Ref<stdgo._internal.testing.T_>, _file:stdgo.GoString):Void`](<#function-_testfowler>)

- [`function _testRE2(_t:stdgo.Ref<stdgo._internal.testing.T_>, _file:stdgo.GoString):Void`](<#function-_testre2>)

- [`function _testSubmatchBytes(_test:stdgo.Ref<stdgo._internal.regexp.FindTest>, _n:stdgo.GoInt, _submatches:stdgo.Slice<stdgo.GoInt>, _result:stdgo.Slice<stdgo.Slice<stdgo.GoByte>>, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-_testsubmatchbytes>)

- [`function _testSubmatchIndices(_test:stdgo.Ref<stdgo._internal.regexp.FindTest>, _n:stdgo.GoInt, _expect:stdgo.Slice<stdgo.GoInt>, _result:stdgo.Slice<stdgo.GoInt>, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-_testsubmatchindices>)

- [`function _testSubmatchString(_test:stdgo.Ref<stdgo._internal.regexp.FindTest>, _n:stdgo.GoInt, _submatches:stdgo.Slice<stdgo.GoInt>, _result:stdgo.Slice<stdgo.GoString>, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-_testsubmatchstring>)

- [`function _tryCompile(_s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.regexp.Regexp>;
}`](<#function-_trycompile>)

- [`function benchmarkAnchoredLiteralLongNonMatch(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkanchoredliterallongnonmatch>)

- [`function benchmarkAnchoredLiteralShortNonMatch(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkanchoredliteralshortnonmatch>)

- [`function benchmarkAnchoredLongMatch(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkanchoredlongmatch>)

- [`function benchmarkAnchoredShortMatch(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkanchoredshortmatch>)

- [`function benchmarkCompile(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkcompile>)

- [`function benchmarkFind(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkfind>)

- [`function benchmarkFindAllNoMatches(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkfindallnomatches>)

- [`function benchmarkFindString(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkfindstring>)

- [`function benchmarkFindStringSubmatch(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkfindstringsubmatch>)

- [`function benchmarkFindSubmatch(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkfindsubmatch>)

- [`function benchmarkLiteral(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkliteral>)

- [`function benchmarkMatch(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkmatch>)

- [`function benchmarkMatchClass(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkmatchclass>)

- [`function benchmarkMatchClass_InRange(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkmatchclass_inrange>)

- [`function benchmarkMatchParallelCopied(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkmatchparallelcopied>)

- [`function benchmarkMatchParallelShared(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkmatchparallelshared>)

- [`function benchmarkMatch_onepass_regex(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkmatch_onepass_regex>)

- [`function benchmarkNotLiteral(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarknotliteral>)

- [`function benchmarkNotOnePassShortA(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarknotonepassshorta>)

- [`function benchmarkNotOnePassShortB(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarknotonepassshortb>)

- [`function benchmarkOnePassLongNotPrefix(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkonepasslongnotprefix>)

- [`function benchmarkOnePassLongPrefix(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkonepasslongprefix>)

- [`function benchmarkOnePassShortA(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkonepassshorta>)

- [`function benchmarkOnePassShortB(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkonepassshortb>)

- [`function benchmarkQuoteMetaAll(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkquotemetaall>)

- [`function benchmarkQuoteMetaNone(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkquotemetanone>)

- [`function benchmarkReplaceAll(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkreplaceall>)

- [`function compile(_expr:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.regexp.Regexp>;
}`](<#function-compile>)

- [`function compilePOSIX(_expr:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.regexp.Regexp>;
}`](<#function-compileposix>)

- [`function match(_pattern:stdgo.GoString, _b:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:Bool;
}`](<#function-match>)

- [`function matchReader(_pattern:stdgo.GoString, _r:stdgo._internal.io.RuneReader):{
	_1:stdgo.Error;
	_0:Bool;
}`](<#function-matchreader>)

- [`function matchString(_pattern:stdgo.GoString, _s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:Bool;
}`](<#function-matchstring>)

- [`function mustCompile(_str:stdgo.GoString):stdgo.Ref<stdgo._internal.regexp.Regexp>`](<#function-mustcompile>)

- [`function mustCompilePOSIX(_str:stdgo.GoString):stdgo.Ref<stdgo._internal.regexp.Regexp>`](<#function-mustcompileposix>)

- [`function quoteMeta(_s:stdgo.GoString):stdgo.GoString`](<#function-quotemeta>)

- [`function testBadCompile(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testbadcompile>)

- [`function testCompileOnePass(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testcompileonepass>)

- [`function testCopyMatch(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testcopymatch>)

- [`function testDeepEqual(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdeepequal>)

- [`function testFind(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testfind>)

- [`function testFindAll(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testfindall>)

- [`function testFindAllIndex(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testfindallindex>)

- [`function testFindAllString(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testfindallstring>)

- [`function testFindAllStringIndex(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testfindallstringindex>)

- [`function testFindAllStringSubmatch(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testfindallstringsubmatch>)

- [`function testFindAllStringSubmatchIndex(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testfindallstringsubmatchindex>)

- [`function testFindAllSubmatch(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testfindallsubmatch>)

- [`function testFindAllSubmatchIndex(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testfindallsubmatchindex>)

- [`function testFindIndex(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testfindindex>)

- [`function testFindReaderIndex(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testfindreaderindex>)

- [`function testFindReaderSubmatchIndex(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testfindreadersubmatchindex>)

- [`function testFindString(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testfindstring>)

- [`function testFindStringIndex(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testfindstringindex>)

- [`function testFindStringSubmatch(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testfindstringsubmatch>)

- [`function testFindStringSubmatchIndex(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testfindstringsubmatchindex>)

- [`function testFindSubmatch(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testfindsubmatch>)

- [`function testFindSubmatchIndex(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testfindsubmatchindex>)

- [`function testFowler(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testfowler>)

- [`function testGoodCompile(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testgoodcompile>)

- [`function testLiteralPrefix(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testliteralprefix>)

- [`function testLongest(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testlongest>)

- [`function testMatch(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testmatch>)

- [`function testMatchFunction(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testmatchfunction>)

- [`function testMergeRuneSet(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testmergeruneset>)

- [`function testMinInputLen(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testmininputlen>)

- [`function testOnePassCutoff(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testonepasscutoff>)

- [`function testParseAndCompile(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testparseandcompile>)

- [`function testProgramTooLongForBacktrack(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testprogramtoolongforbacktrack>)

- [`function testQuoteMeta(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testquotemeta>)

- [`function testRE2Exhaustive(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testre2exhaustive>)

- [`function testRE2Search(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testre2search>)

- [`function testReplaceAll(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreplaceall>)

- [`function testReplaceAllFunc(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreplaceallfunc>)

- [`function testReplaceAllLiteral(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreplaceallliteral>)

- [`function testRunOnePass(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testrunonepass>)

- [`function testSplit(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testsplit>)

- [`function testSubexp(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testsubexp>)

- [`function testSwitchBacktrack(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testswitchbacktrack>)

- [`function testUnmarshalText(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testunmarshaltext>)

- [class FindTest](<#class-findtest>)

  - [`function new(?_pat:stdgo.GoString, ?_text:stdgo.GoString, ?_matches:stdgo.Slice<stdgo.Slice<stdgo.GoInt>>):Void`](<#findtest-function-new>)

  - [`function string():stdgo.GoString`](<#findtest-function-string>)

- [class MetaTest](<#class-metatest>)

  - [`function new(?_pattern:stdgo.GoString, ?_output:stdgo.GoString, ?_literal:stdgo.GoString, ?_isLiteral:Bool):Void`](<#metatest-function-new>)

- [class Regexp](<#class-regexp>)

  - [`function new(?_expr:stdgo.GoString, ?_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Prog>, ?_onepass:stdgo.Ref<stdgo._internal.regexp.T_onePassProg>, ?_numSubexp:stdgo.GoInt, ?_maxBitStateLen:stdgo.GoInt, ?_subexpNames:stdgo.Slice<stdgo.GoString>, ?_prefix:stdgo.GoString, ?_prefixBytes:stdgo.Slice<stdgo.GoUInt8>, ?_prefixRune:stdgo.GoInt32, ?_prefixEnd:stdgo.GoUInt32, ?_mpool:stdgo.GoInt, ?_matchcap:stdgo.GoInt, ?_prefixComplete:Bool, ?_cond:Null<stdgo._internal.regexp.syntax.EmptyOp>, ?_minInputLen:stdgo.GoInt, ?_longest:Bool):Void`](<#regexp-function-new>)

  - [`function _allMatches( _s:stdgo.GoString, _b:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt, _deliver:()):Void`](<#regexp-function-_allmatches>)

  - [`function _backtrack( _ib:stdgo.Slice<stdgo.GoByte>, _is:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt>`](<#regexp-function-_backtrack>)

  - [`function _doExecute( _r:stdgo._internal.io.RuneReader, _b:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt>`](<#regexp-function-_doexecute>)

  - [`function _doMatch( _r:stdgo._internal.io.RuneReader, _b:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):Bool`](<#regexp-function-_domatch>)

  - [`function _doOnePass( _ir:stdgo._internal.io.RuneReader, _ib:stdgo.Slice<stdgo.GoByte>, _is:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt>`](<#regexp-function-_doonepass>)

  - [`function _expand( _dst:stdgo.Slice<stdgo.GoByte>, _template:stdgo.GoString, _bsrc:stdgo.Slice<stdgo.GoByte>, _src:stdgo.GoString, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoByte>`](<#regexp-function-_expand>)

  - [`function _get():stdgo.Ref<stdgo._internal.regexp.T_machine>`](<#regexp-function-_get>)

  - [`function _pad( _a:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt>`](<#regexp-function-_pad>)

  - [`function _put( _m:stdgo.Ref<stdgo._internal.regexp.T_machine>):Void`](<#regexp-function-_put>)

  - [`function _replaceAll( _bsrc:stdgo.Slice<stdgo.GoByte>, _src:stdgo.GoString, _nmatch:stdgo.GoInt, _repl:(_dst:stdgo.Slice<stdgo.GoByte>, _m:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#regexp-function-_replaceall>)

  - [`function _tryBacktrack( _b:stdgo.Ref<stdgo._internal.regexp.T_bitState>, _i:stdgo._internal.regexp.T_input, _pc:stdgo.GoUInt32, _pos:stdgo.GoInt):Bool`](<#regexp-function-_trybacktrack>)

  - [`function copy():stdgo.Ref<stdgo._internal.regexp.Regexp>`](<#regexp-function-copy>)

  - [`function expand( _dst:stdgo.Slice<stdgo.GoByte>, _template:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoByte>`](<#regexp-function-expand>)

  - [`function expandString( _dst:stdgo.Slice<stdgo.GoByte>, _template:stdgo.GoString, _src:stdgo.GoString, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoByte>`](<#regexp-function-expandstring>)

  - [`function find( _b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#regexp-function-find>)

  - [`function findAll( _b:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>`](<#regexp-function-findall>)

  - [`function findAllIndex( _b:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>>`](<#regexp-function-findallindex>)

  - [`function findAllString( _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString>`](<#regexp-function-findallstring>)

  - [`function findAllStringIndex( _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>>`](<#regexp-function-findallstringindex>)

  - [`function findAllStringSubmatch( _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoString>>`](<#regexp-function-findallstringsubmatch>)

  - [`function findAllStringSubmatchIndex( _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>>`](<#regexp-function-findallstringsubmatchindex>)

  - [`function findAllSubmatch( _b:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoByte>>>`](<#regexp-function-findallsubmatch>)

  - [`function findAllSubmatchIndex( _b:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>>`](<#regexp-function-findallsubmatchindex>)

  - [`function findIndex( _b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoInt>`](<#regexp-function-findindex>)

  - [`function findReaderIndex( _r:stdgo._internal.io.RuneReader):stdgo.Slice<stdgo.GoInt>`](<#regexp-function-findreaderindex>)

  - [`function findReaderSubmatchIndex( _r:stdgo._internal.io.RuneReader):stdgo.Slice<stdgo.GoInt>`](<#regexp-function-findreadersubmatchindex>)

  - [`function findString( _s:stdgo.GoString):stdgo.GoString`](<#regexp-function-findstring>)

  - [`function findStringIndex( _s:stdgo.GoString):stdgo.Slice<stdgo.GoInt>`](<#regexp-function-findstringindex>)

  - [`function findStringSubmatch( _s:stdgo.GoString):stdgo.Slice<stdgo.GoString>`](<#regexp-function-findstringsubmatch>)

  - [`function findStringSubmatchIndex( _s:stdgo.GoString):stdgo.Slice<stdgo.GoInt>`](<#regexp-function-findstringsubmatchindex>)

  - [`function findSubmatch( _b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>`](<#regexp-function-findsubmatch>)

  - [`function findSubmatchIndex( _b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoInt>`](<#regexp-function-findsubmatchindex>)

  - [`function literalPrefix():{ _1:Bool; _0:stdgo.GoString;}`](<#regexp-function-literalprefix>)

  - [`function longest():Void`](<#regexp-function-longest>)

  - [`function marshalText():{ _1:stdgo.Error; _0:stdgo.Slice<stdgo.GoByte>;}`](<#regexp-function-marshaltext>)

  - [`function match( _b:stdgo.Slice<stdgo.GoByte>):Bool`](<#regexp-function-match>)

  - [`function matchReader( _r:stdgo._internal.io.RuneReader):Bool`](<#regexp-function-matchreader>)

  - [`function matchString( _s:stdgo.GoString):Bool`](<#regexp-function-matchstring>)

  - [`function numSubexp():stdgo.GoInt`](<#regexp-function-numsubexp>)

  - [`function replaceAll( _src:stdgo.Slice<stdgo.GoByte>, _repl:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#regexp-function-replaceall>)

  - [`function replaceAllFunc( _src:stdgo.Slice<stdgo.GoByte>, _repl:()):stdgo.Slice<stdgo.GoByte>`](<#regexp-function-replaceallfunc>)

  - [`function replaceAllLiteral( _src:stdgo.Slice<stdgo.GoByte>, _repl:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#regexp-function-replaceallliteral>)

  - [`function replaceAllLiteralString( _src:stdgo.GoString, _repl:stdgo.GoString):stdgo.GoString`](<#regexp-function-replaceallliteralstring>)

  - [`function replaceAllString( _src:stdgo.GoString, _repl:stdgo.GoString):stdgo.GoString`](<#regexp-function-replaceallstring>)

  - [`function replaceAllStringFunc( _src:stdgo.GoString, _repl:()):stdgo.GoString`](<#regexp-function-replaceallstringfunc>)

  - [`function split( _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString>`](<#regexp-function-split>)

  - [`function string():stdgo.GoString`](<#regexp-function-string>)

  - [`function subexpIndex( _name:stdgo.GoString):stdgo.GoInt`](<#regexp-function-subexpindex>)

  - [`function subexpNames():stdgo.Slice<stdgo.GoString>`](<#regexp-function-subexpnames>)

  - [`function unmarshalText( _text:stdgo.Slice<stdgo.GoByte>):stdgo.Error`](<#regexp-function-unmarshaltext>)

- [class ReplaceFuncTest](<#class-replacefunctest>)

  - [`function _replacement()`](<#replacefunctest-function-_replacement>)

  - [`function new(?_pattern:stdgo.GoString, ?_replacement:(), ?_input:stdgo.GoString, ?_output:stdgo.GoString):Void`](<#replacefunctest-function-new>)

- [class ReplaceTest](<#class-replacetest>)

  - [`function new(?_pattern:stdgo.GoString, ?_replacement:stdgo.GoString, ?_input:stdgo.GoString, ?_output:stdgo.GoString):Void`](<#replacetest-function-new>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

- [typedef T\_\_struct\_2](<#typedef-t__struct_2>)

- [typedef T\_\_struct\_3](<#typedef-t__struct_3>)

- [typedef T\_\_struct\_4](<#typedef-t__struct_4>)

- [typedef T\_\_struct\_5](<#typedef-t__struct_5>)

- [typedef T\_\_struct\_6](<#typedef-t__struct_6>)

- [typedef T\_\_struct\_7](<#typedef-t__struct_7>)

- [typedef T\_input](<#typedef-t_input>)

- [typedef T\_lazyFlag](<#typedef-t_lazyflag>)

- [typedef T\_runeSlice](<#typedef-t_runeslice>)

# Examples


- [`exampleMatch`](<#examplematch>)

- [`exampleMatchString`](<#examplematchstring>)

- [`exampleQuoteMeta`](<#examplequotemeta>)

# Constants


```haxe
import stdgo._internal.regexp.Regexp
```


```haxe
final _endOfText:stdgo.GoInt32 = ((-1 : stdgo.GoInt32))
```


```haxe
final _maxBacktrackProg:stdgo.GoUInt64 = ((500i64 : stdgo.GoUInt64))
```


```haxe
final _maxBacktrackVector:stdgo.GoUInt64 = ((262144i64 : stdgo.GoUInt64))
```


```haxe
final _mergeFailed:stdgo.GoUInt32 = ((-1u32 : stdgo.GoUInt32))
```


```haxe
final _startSize:stdgo.GoUInt64 = ((10i64 : stdgo.GoUInt64))
```


```haxe
final _visitedBits:stdgo.GoUInt64 = ((32i64 : stdgo.GoUInt64))
```


# Variables


```haxe
import stdgo._internal.regexp.Regexp
```


```haxe
var _:Bool
```


```haxe
var _anyRune:stdgo.Slice<stdgo.GoInt32>
```


```haxe
var _anyRuneNotNL:stdgo.Slice<stdgo.GoInt32>
```


```haxe
var _arrayNoInts:stdgo.GoArray<stdgo.GoInt>
```


```haxe
var _badRe:stdgo.Slice<stdgo._internal.regexp.T_stringError>
```


```haxe
var _benchData:stdgo.Slice<stdgo._internal.regexp.T__struct_2>
```


```haxe
var _benchSizes:stdgo.Slice<stdgo._internal.regexp.T__struct_4>
```


```haxe
var _bitStatePool:stdgo._internal.sync.Pool
```


```haxe
var _compileBenchData:stdgo.Slice<stdgo._internal.regexp.T__struct_2>
```


```haxe
var _emptySubexpIndices:stdgo.Slice<stdgo._internal.regexp.T_subexpIndex>
```


```haxe
var _findTests:stdgo.Slice<stdgo._internal.regexp.FindTest>
```


```haxe
var _goodRe:stdgo.Slice<stdgo.GoString>
```


```haxe
var _literalPrefixTests:stdgo.Slice<stdgo._internal.regexp.MetaTest>
```


```haxe
var _match:stdgo.Slice<(:stdgo.Ref<stdgo._internal.regexp.Regexp>, :stdgo.Ref<stdgo._internal.regexp.Regexp>, :stdgo.GoString):{
	_1:stdgo.GoString;
	_0:Bool;
}>
```


```haxe
var _matchPool:stdgo.GoArray<stdgo._internal.sync.Pool>
```


```haxe
var _matchSize:stdgo.GoArray<stdgo.GoInt>
```


```haxe
var _metaTests:stdgo.Slice<stdgo._internal.regexp.MetaTest>
```


```haxe
var _minInputLenTests:stdgo.Slice<stdgo._internal.regexp.T__struct_3>
```


```haxe
var _noNext:stdgo.Slice<stdgo.GoUInt32>
```


```haxe
var _noRune:stdgo.Slice<stdgo.GoInt32>
```


```haxe
var _notab:stdgo.Ref<stdgo._internal.regexp.Regexp>
```


```haxe
var _onePassPool:stdgo._internal.sync.Pool
```


```haxe
var _onePassTests:stdgo.Slice<stdgo._internal.regexp.T__struct_6>
```


```haxe
var _onePassTests1:stdgo.Slice<stdgo._internal.regexp.T__struct_7>
```


```haxe
var _replaceFuncTests:stdgo.Slice<stdgo._internal.regexp.ReplaceFuncTest>
```


```haxe
var _replaceLiteralTests:stdgo.Slice<stdgo._internal.regexp.ReplaceTest>
```


```haxe
var _replaceTests:stdgo.Slice<stdgo._internal.regexp.ReplaceTest>
```


```haxe
var _run:stdgo.Slice<(:stdgo.Ref<stdgo._internal.regexp.Regexp>, :stdgo.Ref<stdgo._internal.regexp.Regexp>, :stdgo.GoString):{
	_1:stdgo.GoString;
	_0:stdgo.Slice<stdgo.GoInt>;
}>
```


```haxe
var _runeMergeTests:stdgo.Slice<stdgo._internal.regexp.T__struct_5>
```


```haxe
var _sink:stdgo.GoString
```


```haxe
var _specialBytes:stdgo.GoArray<stdgo.GoByte>
```


```haxe
var _splitTests:stdgo.Slice<stdgo._internal.regexp.T__struct_0>
```


```haxe
var _subexpCases:stdgo.Slice<stdgo._internal.regexp.T_subexpCase>
```


```haxe
var _text:stdgo.Slice<stdgo.GoByte>
```


# Functions


```haxe
import stdgo._internal.regexp.Regexp
```


## function \_build


```haxe
function _build(_n:stdgo.GoInt, _x:haxe.Rest<stdgo.GoInt>):stdgo.Slice<stdgo.Slice<stdgo.GoInt>>
```


[\(view code\)](<./Regexp.hx#L2378>)


## function \_cleanupOnePass


```haxe
function _cleanupOnePass(_prog:stdgo.Ref<stdgo._internal.regexp.T_onePassProg>, _original:stdgo.Ref<stdgo._internal.regexp.syntax.Prog>):Void
```


[\(view code\)](<./Regexp.hx#L2831>)


## function \_compile


```haxe
function _compile(_expr:stdgo.GoString, _mode:stdgo._internal.regexp.syntax.Flags, _longest:Bool):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.regexp.Regexp>;
}
```


[\(view code\)](<./Regexp.hx#L3183>)


## function \_compileOnePass


```haxe
function _compileOnePass(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Prog>):stdgo.Ref<stdgo._internal.regexp.T_onePassProg>
```


[\(view code\)](<./Regexp.hx#L3081>)


## function \_compileTest


```haxe
function _compileTest(_t:stdgo.Ref<stdgo._internal.testing.T_>, _expr:stdgo.GoString, _error:stdgo.GoString):stdgo.Ref<stdgo._internal.regexp.Regexp>
```


[\(view code\)](<./Regexp.hx#L1000>)


## function \_copyMatchTest


```haxe
function _copyMatchTest(_t:stdgo.Ref<stdgo._internal.testing.T_>, _test:stdgo.Ref<stdgo._internal.regexp.FindTest>):Void
```


[\(view code\)](<./Regexp.hx#L1061>)


## function \_extract


```haxe
function _extract(_str:stdgo.GoString):{
	_3:Bool;
	_2:stdgo.GoString;
	_1:stdgo.GoInt;
	_0:stdgo.GoString;
}
```


[\(view code\)](<./Regexp.hx#L3343>)


## function \_freeBitState


```haxe
function _freeBitState(_b:stdgo.Ref<stdgo._internal.regexp.T_bitState>):Void
```


[\(view code\)](<./Regexp.hx#L1698>)


## function \_freeOnePassMachine


```haxe
function _freeOnePassMachine(_m:stdgo.Ref<stdgo._internal.regexp.T_onePassMachine>):Void
```


[\(view code\)](<./Regexp.hx#L1725>)


## function \_iop


```haxe
function _iop(_i:stdgo.Ref<stdgo._internal.regexp.syntax.Inst>):stdgo._internal.regexp.syntax.InstOp
```


[\(view code\)](<./Regexp.hx#L2735>)


## function \_isSingleBytes


```haxe
function _isSingleBytes(_s:stdgo.GoString):Bool
```


[\(view code\)](<./Regexp.hx#L1928>)


## function \_makeOnePass


```haxe
function _makeOnePass(_p:stdgo.Ref<stdgo._internal.regexp.T_onePassProg>):stdgo.Ref<stdgo._internal.regexp.T_onePassProg>
```


[\(view code\)](<./Regexp.hx#L2899>)


## function \_makeText


```haxe
function _makeText(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Regexp.hx#L2282>)


## function \_matchFull


```haxe
function _matchFull(_re:stdgo.Ref<stdgo._internal.regexp.Regexp>, _refull:stdgo.Ref<stdgo._internal.regexp.Regexp>, _text:stdgo.GoString):{
	_1:stdgo.GoString;
	_0:Bool;
}
```


[\(view code\)](<./Regexp.hx#L1912>)


## function \_matchFullLongest


```haxe
function _matchFullLongest(_re:stdgo.Ref<stdgo._internal.regexp.Regexp>, _refull:stdgo.Ref<stdgo._internal.regexp.Regexp>, _text:stdgo.GoString):{
	_1:stdgo.GoString;
	_0:Bool;
}
```


[\(view code\)](<./Regexp.hx#L1920>)


## function \_matchFunctionTest


```haxe
function _matchFunctionTest(_t:stdgo.Ref<stdgo._internal.testing.T_>, _test:stdgo.Ref<stdgo._internal.regexp.FindTest>):Void
```


[\(view code\)](<./Regexp.hx#L1047>)


## function \_matchPartial


```haxe
function _matchPartial(_re:stdgo.Ref<stdgo._internal.regexp.Regexp>, _refull:stdgo.Ref<stdgo._internal.regexp.Regexp>, _text:stdgo.GoString):{
	_1:stdgo.GoString;
	_0:Bool;
}
```


[\(view code\)](<./Regexp.hx#L1916>)


## function \_matchPartialLongest


```haxe
function _matchPartialLongest(_re:stdgo.Ref<stdgo._internal.regexp.Regexp>, _refull:stdgo.Ref<stdgo._internal.regexp.Regexp>, _text:stdgo.GoString):{
	_1:stdgo.GoString;
	_0:Bool;
}
```


[\(view code\)](<./Regexp.hx#L1924>)


## function \_matchTest


```haxe
function _matchTest(_t:stdgo.Ref<stdgo._internal.testing.T_>, _test:stdgo.Ref<stdgo._internal.regexp.FindTest>):Void
```


[\(view code\)](<./Regexp.hx#L1028>)


## function \_maxBitStateLen


```haxe
function _maxBitStateLen(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Prog>):stdgo.GoInt
```


[\(view code\)](<./Regexp.hx#L1702>)


## function \_mergeRuneSets


```haxe
function _mergeRuneSets(_leftRunes:stdgo.Ref<stdgo.Slice<stdgo.GoRune>>, _rightRunes:stdgo.Ref<stdgo.Slice<stdgo.GoRune>>, _leftPC:stdgo.GoUInt32, _rightPC:stdgo.GoUInt32):{
	_1:stdgo.Slice<stdgo.GoUInt32>;
	_0:stdgo.Slice<stdgo.GoRune>;
}
```


[\(view code\)](<./Regexp.hx#L2749>)


## function \_minInputLen


```haxe
function _minInputLen(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>):stdgo.GoInt
```


[\(view code\)](<./Regexp.hx#L3230>)


## function \_newBitState


```haxe
function _newBitState():stdgo.Ref<stdgo._internal.regexp.T_bitState>
```


[\(view code\)](<./Regexp.hx#L1687>)


## function \_newLazyFlag


```haxe
function _newLazyFlag(_r1:stdgo.GoRune, _r2:stdgo.GoRune):stdgo._internal.regexp.T_lazyFlag
```


[\(view code\)](<./Regexp.hx#L1711>)


## function \_newOnePassMachine


```haxe
function _newOnePassMachine():stdgo.Ref<stdgo._internal.regexp.T_onePassMachine>
```


[\(view code\)](<./Regexp.hx#L1714>)


## function \_newQueue


```haxe
function _newQueue(_size:stdgo.GoInt):stdgo.Ref<stdgo._internal.regexp.T_queueOnePass>
```


[\(view code\)](<./Regexp.hx#L2745>)


## function \_onePassCopy


```haxe
function _onePassCopy(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Prog>):stdgo.Ref<stdgo._internal.regexp.T_onePassProg>
```


[\(view code\)](<./Regexp.hx#L2844>)


## function \_onePassNext


```haxe
function _onePassNext(_i:stdgo.Ref<stdgo._internal.regexp.T_onePassInst>, _r:stdgo.GoRune):stdgo.GoUInt32
```


[\(view code\)](<./Regexp.hx#L2725>)


## function \_onePassPrefix


```haxe
function _onePassPrefix(_p:stdgo.Ref<stdgo._internal.regexp.syntax.Prog>):{
	_2:stdgo.GoUInt32;
	_1:Bool;
	_0:stdgo.GoString;
}
```


[\(view code\)](<./Regexp.hx#L2695>)


## function \_parseFowlerResult


```haxe
function _parseFowlerResult(_s:stdgo.GoString):{
	_3:stdgo.Slice<stdgo.GoInt>;
	_2:Bool;
	_1:Bool;
	_0:Bool;
}
```


[\(view code\)](<./Regexp.hx#L2220>)


## function \_parseResult


```haxe
function _parseResult(_t:stdgo.Ref<stdgo._internal.testing.T_>, _file:stdgo.GoString, _lineno:stdgo.GoInt, _res:stdgo.GoString):stdgo.Slice<stdgo.GoInt>
```


[\(view code\)](<./Regexp.hx#L1985>)


## function \_quote


```haxe
function _quote(_s:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Regexp.hx#L3284>)


## function \_runFull


```haxe
function _runFull(_re:stdgo.Ref<stdgo._internal.regexp.Regexp>, _refull:stdgo.Ref<stdgo._internal.regexp.Regexp>, _text:stdgo.GoString):{
	_1:stdgo.GoString;
	_0:stdgo.Slice<stdgo.GoInt>;
}
```


[\(view code\)](<./Regexp.hx#L1896>)


## function \_runFullLongest


```haxe
function _runFullLongest(_re:stdgo.Ref<stdgo._internal.regexp.Regexp>, _refull:stdgo.Ref<stdgo._internal.regexp.Regexp>, _text:stdgo.GoString):{
	_1:stdgo.GoString;
	_0:stdgo.Slice<stdgo.GoInt>;
}
```


[\(view code\)](<./Regexp.hx#L1904>)


## function \_runPartial


```haxe
function _runPartial(_re:stdgo.Ref<stdgo._internal.regexp.Regexp>, _refull:stdgo.Ref<stdgo._internal.regexp.Regexp>, _text:stdgo.GoString):{
	_1:stdgo.GoString;
	_0:stdgo.Slice<stdgo.GoInt>;
}
```


[\(view code\)](<./Regexp.hx#L1900>)


## function \_runPartialLongest


```haxe
function _runPartialLongest(_re:stdgo.Ref<stdgo._internal.regexp.Regexp>, _refull:stdgo.Ref<stdgo._internal.regexp.Regexp>, _text:stdgo.GoString):{
	_1:stdgo.GoString;
	_0:stdgo.Slice<stdgo.GoInt>;
}
```


[\(view code\)](<./Regexp.hx#L1908>)


## function \_same


```haxe
function _same(_x:stdgo.Slice<stdgo.GoInt>, _y:stdgo.Slice<stdgo.GoInt>):Bool
```


[\(view code\)](<./Regexp.hx#L2026>)


## function \_shouldBacktrack


```haxe
function _shouldBacktrack(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Prog>):Bool
```


[\(view code\)](<./Regexp.hx#L1708>)


## function \_special


```haxe
function _special(_b:stdgo.GoByte):Bool
```


[\(view code\)](<./Regexp.hx#L3314>)


## function \_testFindAllIndex


```haxe
function _testFindAllIndex(_test:stdgo.Ref<stdgo._internal.regexp.FindTest>, _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>>, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L2505>)


## function \_testFindAllSubmatchIndex


```haxe
function _testFindAllSubmatchIndex(_test:stdgo.Ref<stdgo._internal.regexp.FindTest>, _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>>, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L2672>)


## function \_testFindIndex


```haxe
function _testFindIndex(_test:stdgo.Ref<stdgo._internal.regexp.FindTest>, _result:stdgo.Slice<stdgo.GoInt>, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L2432>)


## function \_testFindSubmatchIndex


```haxe
function _testFindSubmatchIndex(_test:stdgo.Ref<stdgo._internal.regexp.FindTest>, _result:stdgo.Slice<stdgo.GoInt>, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L2616>)


## function \_testFowler


```haxe
function _testFowler(_t:stdgo.Ref<stdgo._internal.testing.T_>, _file:stdgo.GoString):Void
```


[\(view code\)](<./Regexp.hx#L2047>)


## function \_testRE2


```haxe
function _testRE2(_t:stdgo.Ref<stdgo._internal.testing.T_>, _file:stdgo.GoString):Void
```


[\(view code\)](<./Regexp.hx#L1738>)


## function \_testSubmatchBytes


```haxe
function _testSubmatchBytes(_test:stdgo.Ref<stdgo._internal.regexp.FindTest>, _n:stdgo.GoInt, _submatches:stdgo.Slice<stdgo.GoInt>, _result:stdgo.Slice<stdgo.Slice<stdgo.GoByte>>, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L2532>)


## function \_testSubmatchIndices


```haxe
function _testSubmatchIndices(_test:stdgo.Ref<stdgo._internal.regexp.FindTest>, _n:stdgo.GoInt, _expect:stdgo.Slice<stdgo.GoInt>, _result:stdgo.Slice<stdgo.GoInt>, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L2605>)


## function \_testSubmatchString


```haxe
function _testSubmatchString(_test:stdgo.Ref<stdgo._internal.regexp.FindTest>, _n:stdgo.GoInt, _submatches:stdgo.Slice<stdgo.GoInt>, _result:stdgo.Slice<stdgo.GoString>, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L2571>)


## function \_tryCompile


```haxe
function _tryCompile(_s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.regexp.Regexp>;
}
```


[\(view code\)](<./Regexp.hx#L1936>)


## function benchmarkAnchoredLiteralLongNonMatch


```haxe
function benchmarkAnchoredLiteralLongNonMatch(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1441>)


## function benchmarkAnchoredLiteralShortNonMatch


```haxe
function benchmarkAnchoredLiteralShortNonMatch(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1429>)


## function benchmarkAnchoredLongMatch


```haxe
function benchmarkAnchoredLongMatch(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1471>)


## function benchmarkAnchoredShortMatch


```haxe
function benchmarkAnchoredShortMatch(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1459>)


## function benchmarkCompile


```haxe
function benchmarkCompile(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1613>)


## function benchmarkFind


```haxe
function benchmarkFind(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1272>)


## function benchmarkFindAllNoMatches


```haxe
function benchmarkFindAllNoMatches(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1289>)


## function benchmarkFindString


```haxe
function benchmarkFindString(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1304>)


## function benchmarkFindStringSubmatch


```haxe
function benchmarkFindStringSubmatch(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1341>)


## function benchmarkFindSubmatch


```haxe
function benchmarkFindSubmatch(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1321>)


## function benchmarkLiteral


```haxe
function benchmarkLiteral(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1361>)


## function benchmarkMatch


```haxe
function benchmarkMatch(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L2302>)


## function benchmarkMatchClass


```haxe
function benchmarkMatchClass(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1389>)


## function benchmarkMatchClass\_InRange


```haxe
function benchmarkMatchClass_InRange(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1403>)


## function benchmarkMatchParallelCopied


```haxe
function benchmarkMatchParallelCopied(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1571>)


## function benchmarkMatchParallelShared


```haxe
function benchmarkMatchParallelShared(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1561>)


## function benchmarkMatch\_onepass\_regex


```haxe
function benchmarkMatch_onepass_regex(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L2325>)


## function benchmarkNotLiteral


```haxe
function benchmarkNotLiteral(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1375>)


## function benchmarkNotOnePassShortA


```haxe
function benchmarkNotOnePassShortA(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1501>)


## function benchmarkNotOnePassShortB


```haxe
function benchmarkNotOnePassShortB(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1525>)


## function benchmarkOnePassLongNotPrefix


```haxe
function benchmarkOnePassLongNotPrefix(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1549>)


## function benchmarkOnePassLongPrefix


```haxe
function benchmarkOnePassLongPrefix(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1537>)


## function benchmarkOnePassShortA


```haxe
function benchmarkOnePassShortA(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1489>)


## function benchmarkOnePassShortB


```haxe
function benchmarkOnePassShortB(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1513>)


## function benchmarkQuoteMetaAll


```haxe
function benchmarkQuoteMetaAll(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1582>)


## function benchmarkQuoteMetaNone


```haxe
function benchmarkQuoteMetaNone(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1602>)


## function benchmarkReplaceAll


```haxe
function benchmarkReplaceAll(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1417>)


## function compile


```haxe
function compile(_expr:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.regexp.Regexp>;
}
```


[\(view code\)](<./Regexp.hx#L3177>)


## function compilePOSIX


```haxe
function compilePOSIX(_expr:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo._internal.regexp.Regexp>;
}
```


[\(view code\)](<./Regexp.hx#L3180>)


## function match


```haxe
function match(_pattern:stdgo.GoString, _b:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:Bool;
}
```


### exampleMatch


<details><summary></summary>
<p>


```haxe
function exampleMatch():Void {
        var __tmp__ = stdgo._internal.regexp.Regexp.match(("foo.*" : stdgo.GoString), (("seafood" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _matched:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_matched), stdgo.Go.toInterface(_err));
        {
            var __tmp__ = stdgo._internal.regexp.Regexp.match(("bar.*" : stdgo.GoString), (("seafood" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
            _matched = __tmp__._0;
            _err = __tmp__._1;
        };
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_matched), stdgo.Go.toInterface(_err));
        {
            var __tmp__ = stdgo._internal.regexp.Regexp.match(("a(b" : stdgo.GoString), (("seafood" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
            _matched = __tmp__._0;
            _err = __tmp__._1;
        };
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_matched), stdgo.Go.toInterface(_err));
    }
```


</p>
</details>


[\(view code\)](<./Regexp.hx#L3306>)


## function matchReader


```haxe
function matchReader(_pattern:stdgo.GoString, _r:stdgo._internal.io.RuneReader):{
	_1:stdgo.Error;
	_0:Bool;
}
```


[\(view code\)](<./Regexp.hx#L3290>)


## function matchString


```haxe
function matchString(_pattern:stdgo.GoString, _s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:Bool;
}
```


### exampleMatchString


<details><summary></summary>
<p>


```haxe
function exampleMatchString():Void {
        var __tmp__ = stdgo._internal.regexp.Regexp.matchString(("foo.*" : stdgo.GoString), ("seafood" : stdgo.GoString)), _matched:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_matched), stdgo.Go.toInterface(_err));
        {
            var __tmp__ = stdgo._internal.regexp.Regexp.matchString(("bar.*" : stdgo.GoString), ("seafood" : stdgo.GoString));
            _matched = __tmp__._0;
            _err = __tmp__._1;
        };
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_matched), stdgo.Go.toInterface(_err));
        {
            var __tmp__ = stdgo._internal.regexp.Regexp.matchString(("a(b" : stdgo.GoString), ("seafood" : stdgo.GoString));
            _matched = __tmp__._0;
            _err = __tmp__._1;
        };
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_matched), stdgo.Go.toInterface(_err));
    }
```


</p>
</details>


[\(view code\)](<./Regexp.hx#L3298>)


## function mustCompile


```haxe
function mustCompile(_str:stdgo.GoString):stdgo.Ref<stdgo._internal.regexp.Regexp>
```


[\(view code\)](<./Regexp.hx#L3270>)


## function mustCompilePOSIX


```haxe
function mustCompilePOSIX(_str:stdgo.GoString):stdgo.Ref<stdgo._internal.regexp.Regexp>
```


[\(view code\)](<./Regexp.hx#L3277>)


## function quoteMeta


```haxe
function quoteMeta(_s:stdgo.GoString):stdgo.GoString
```


### exampleQuoteMeta


<details><summary></summary>
<p>


```haxe
function exampleQuoteMeta():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.regexp.Regexp.quoteMeta(("Escaping symbols like: .+*?()|[]{}^$" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Regexp.hx#L3317>)


## function testBadCompile


```haxe
function testBadCompile(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L1020>)


## function testCompileOnePass


```haxe
function testCompileOnePass(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L3129>)


## function testCopyMatch


```haxe
function testCopyMatch(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L1072>)


## function testDeepEqual


```haxe
function testDeepEqual(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L1631>)


## function testFind


```haxe
function testFind(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L2393>)


## function testFindAll


```haxe
function testFindAll(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L2459>)


## function testFindAllIndex


```haxe
function testFindAllIndex(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L2522>)


## function testFindAllString


```haxe
function testFindAllString(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L2484>)


## function testFindAllStringIndex


```haxe
function testFindAllStringIndex(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L2527>)


## function testFindAllStringSubmatch


```haxe
function testFindAllStringSubmatch(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L2656>)


## function testFindAllStringSubmatchIndex


```haxe
function testFindAllStringSubmatchIndex(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L2690>)


## function testFindAllSubmatch


```haxe
function testFindAllSubmatch(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L2640>)


## function testFindAllSubmatchIndex


```haxe
function testFindAllSubmatchIndex(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L2685>)


## function testFindIndex


```haxe
function testFindIndex(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L2444>)


## function testFindReaderIndex


```haxe
function testFindReaderIndex(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L2454>)


## function testFindReaderSubmatchIndex


```haxe
function testFindReaderSubmatchIndex(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L2635>)


## function testFindString


```haxe
function testFindString(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L2415>)


## function testFindStringIndex


```haxe
function testFindStringIndex(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L2449>)


## function testFindStringSubmatch


```haxe
function testFindStringSubmatch(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L2593>)


## function testFindStringSubmatchIndex


```haxe
function testFindStringSubmatchIndex(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L2630>)


## function testFindSubmatch


```haxe
function testFindSubmatch(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L2559>)


## function testFindSubmatchIndex


```haxe
function testFindSubmatchIndex(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L2625>)


## function testFowler


```haxe
function testFowler(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L2037>)


## function testGoodCompile


```haxe
function testGoodCompile(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L1012>)


## function testLiteralPrefix


```haxe
function testLiteralPrefix(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L1171>)


## function testLongest


```haxe
function testLongest(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L2350>)


## function testMatch


```haxe
function testMatch(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L1042>)


## function testMatchFunction


```haxe
function testMatchFunction(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L1056>)


## function testMergeRuneSet


```haxe
function testMergeRuneSet(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L3118>)


## function testMinInputLen


```haxe
function testMinInputLen(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L1650>)


## function testOnePassCutoff


```haxe
function testOnePassCutoff(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L1253>)


## function testParseAndCompile


```haxe
function testParseAndCompile(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L1233>)


## function testProgramTooLongForBacktrack


```haxe
function testProgramTooLongForBacktrack(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L2369>)


## function testQuoteMeta


```haxe
function testQuoteMeta(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L1148>)


## function testRE2Exhaustive


```haxe
function testRE2Exhaustive(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L1729>)


## function testRE2Search


```haxe
function testRE2Search(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L1735>)


## function testReplaceAll


```haxe
function testReplaceAll(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L1077>)


## function testReplaceAllFunc


```haxe
function testReplaceAllFunc(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L1129>)


## function testReplaceAllLiteral


```haxe
function testReplaceAllLiteral(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L1094>)


## function testRunOnePass


```haxe
function testRunOnePass(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L3161>)


## function testSplit


```haxe
function testSplit(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L1214>)


## function testSubexp


```haxe
function testSubexp(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L1183>)


## function testSwitchBacktrack


```haxe
function testSwitchBacktrack(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L1266>)


## function testUnmarshalText


```haxe
function testUnmarshalText(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L1659>)


# Classes


```haxe
import stdgo._internal.regexp.*
```


## class FindTest


```haxe
var _matches:stdgo.Slice<stdgo.Slice<stdgo.GoInt>>
```


```haxe
var _pat:stdgo.GoString
```


```haxe
var _text:stdgo.GoString
```


### FindTest function new


```haxe
function new(?_pat:stdgo.GoString, ?_text:stdgo.GoString, ?_matches:stdgo.Slice<stdgo.Slice<stdgo.GoInt>>):Void
```


[\(view code\)](<./Regexp.hx#L711>)


### FindTest function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Regexp.hx#L3815>)


## class MetaTest


```haxe
var _isLiteral:Bool
```


```haxe
var _literal:stdgo.GoString
```


```haxe
var _output:stdgo.GoString
```


```haxe
var _pattern:stdgo.GoString
```


### MetaTest function new


```haxe
function new(?_pattern:stdgo.GoString, ?_output:stdgo.GoString, ?_literal:stdgo.GoString, ?_isLiteral:Bool):Void
```


[\(view code\)](<./Regexp.hx#L548>)


## class Regexp


```haxe
var _cond:stdgo._internal.regexp.syntax.EmptyOp
```


```haxe
var _expr:stdgo.GoString
```


```haxe
var _longest:Bool
```


```haxe
var _matchcap:stdgo.GoInt
```


```haxe
var _maxBitStateLen:stdgo.GoInt
```


```haxe
var _minInputLen:stdgo.GoInt
```


```haxe
var _mpool:stdgo.GoInt
```


```haxe
var _numSubexp:stdgo.GoInt
```


```haxe
var _onepass:stdgo.Ref<stdgo._internal.regexp.T_onePassProg>
```


```haxe
var _prefix:stdgo.GoString
```


```haxe
var _prefixBytes:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _prefixComplete:Bool
```


```haxe
var _prefixEnd:stdgo.GoUInt32
```


```haxe
var _prefixRune:stdgo.GoInt32
```


```haxe
var _prog:stdgo.Ref<stdgo._internal.regexp.syntax.Prog>
```


```haxe
var _subexpNames:stdgo.Slice<stdgo.GoString>
```


### Regexp function new


```haxe
function new(?_expr:stdgo.GoString, ?_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Prog>, ?_onepass:stdgo.Ref<stdgo._internal.regexp.T_onePassProg>, ?_numSubexp:stdgo.GoInt, ?_maxBitStateLen:stdgo.GoInt, ?_subexpNames:stdgo.Slice<stdgo.GoString>, ?_prefix:stdgo.GoString, ?_prefixBytes:stdgo.Slice<stdgo.GoUInt8>, ?_prefixRune:stdgo.GoInt32, ?_prefixEnd:stdgo.GoUInt32, ?_mpool:stdgo.GoInt, ?_matchcap:stdgo.GoInt, ?_prefixComplete:Bool, ?_cond:Null<stdgo._internal.regexp.syntax.EmptyOp>, ?_minInputLen:stdgo.GoInt, ?_longest:Bool):Void
```


[\(view code\)](<./Regexp.hx#L791>)


### Regexp function \_allMatches


```haxe
function _allMatches( _s:stdgo.GoString, _b:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt, _deliver:()):Void
```


[\(view code\)](<./Regexp.hx#L4374>)


### Regexp function \_backtrack


```haxe
function _backtrack( _ib:stdgo.Slice<stdgo.GoByte>, _is:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt>
```


[\(view code\)](<./Regexp.hx#L4811>)


### Regexp function \_doExecute


```haxe
function _doExecute( _r:stdgo._internal.io.RuneReader, _b:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt>
```


[\(view code\)](<./Regexp.hx#L4647>)


### Regexp function \_doMatch


```haxe
function _doMatch( _r:stdgo._internal.io.RuneReader, _b:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):Bool
```


[\(view code\)](<./Regexp.hx#L4673>)


### Regexp function \_doOnePass


```haxe
function _doOnePass( _ir:stdgo._internal.io.RuneReader, _ib:stdgo.Slice<stdgo.GoByte>, _is:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt>
```


[\(view code\)](<./Regexp.hx#L4678>)


### Regexp function \_expand


```haxe
function _expand( _dst:stdgo.Slice<stdgo.GoByte>, _template:stdgo.GoString, _bsrc:stdgo.Slice<stdgo.GoByte>, _src:stdgo.GoString, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Regexp.hx#L4253>)


### Regexp function \_get


```haxe
function _get():stdgo.Ref<stdgo._internal.regexp.T_machine>
```


[\(view code\)](<./Regexp.hx#L4602>)


### Regexp function \_pad


```haxe
function _pad( _a:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt>
```


[\(view code\)](<./Regexp.hx#L4425>)


### Regexp function \_put


```haxe
function _put( _m:stdgo.Ref<stdgo._internal.regexp.T_machine>):Void
```


[\(view code\)](<./Regexp.hx#L4594>)


### Regexp function \_replaceAll


```haxe
function _replaceAll( _bsrc:stdgo.Slice<stdgo.GoByte>, _src:stdgo.GoString, _nmatch:stdgo.GoInt, _repl:(_dst:stdgo.Slice<stdgo.GoByte>, _m:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Regexp.hx#L4467>)


### Regexp function \_tryBacktrack


```haxe
function _tryBacktrack( _b:stdgo.Ref<stdgo._internal.regexp.T_bitState>, _i:stdgo._internal.regexp.T_input, _pc:stdgo.GoUInt32, _pos:stdgo.GoInt):Bool
```


[\(view code\)](<./Regexp.hx#L4864>)


### Regexp function copy


```haxe
function copy():stdgo.Ref<stdgo._internal.regexp.Regexp>
```


[\(view code\)](<./Regexp.hx#L4636>)


### Regexp function expand


```haxe
function expand( _dst:stdgo.Slice<stdgo.GoByte>, _template:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Regexp.hx#L4303>)


### Regexp function expandString


```haxe
function expandString( _dst:stdgo.Slice<stdgo.GoByte>, _template:stdgo.GoString, _src:stdgo.GoString, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Regexp.hx#L4298>)


### Regexp function find


```haxe
function find( _b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Regexp.hx#L4364>)


### Regexp function findAll


```haxe
function findAll( _b:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>
```


[\(view code\)](<./Regexp.hx#L4207>)


### Regexp function findAllIndex


```haxe
function findAllIndex( _b:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>>
```


[\(view code\)](<./Regexp.hx#L4192>)


### Regexp function findAllString


```haxe
function findAllString( _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString>
```


[\(view code\)](<./Regexp.hx#L4177>)


### Regexp function findAllStringIndex


```haxe
function findAllStringIndex( _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>>
```


[\(view code\)](<./Regexp.hx#L4162>)


### Regexp function findAllStringSubmatch


```haxe
function findAllStringSubmatch( _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoString>>
```


[\(view code\)](<./Regexp.hx#L4105>)


### Regexp function findAllStringSubmatchIndex


```haxe
function findAllStringSubmatchIndex( _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>>
```


[\(view code\)](<./Regexp.hx#L4090>)


### Regexp function findAllSubmatch


```haxe
function findAllSubmatch( _b:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoByte>>>
```


[\(view code\)](<./Regexp.hx#L4141>)


### Regexp function findAllSubmatchIndex


```haxe
function findAllSubmatchIndex( _b:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>>
```


[\(view code\)](<./Regexp.hx#L4126>)


### Regexp function findIndex


```haxe
function findIndex( _b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoInt>
```


[\(view code\)](<./Regexp.hx#L4354>)


### Regexp function findReaderIndex


```haxe
function findReaderIndex( _r:stdgo._internal.io.RuneReader):stdgo.Slice<stdgo.GoInt>
```


[\(view code\)](<./Regexp.hx#L4324>)


### Regexp function findReaderSubmatchIndex


```haxe
function findReaderSubmatchIndex( _r:stdgo._internal.io.RuneReader):stdgo.Slice<stdgo.GoInt>
```


[\(view code\)](<./Regexp.hx#L4222>)


### Regexp function findString


```haxe
function findString( _s:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Regexp.hx#L4344>)


### Regexp function findStringIndex


```haxe
function findStringIndex( _s:stdgo.GoString):stdgo.Slice<stdgo.GoInt>
```


[\(view code\)](<./Regexp.hx#L4334>)


### Regexp function findStringSubmatch


```haxe
function findStringSubmatch( _s:stdgo.GoString):stdgo.Slice<stdgo.GoString>
```


[\(view code\)](<./Regexp.hx#L4232>)


### Regexp function findStringSubmatchIndex


```haxe
function findStringSubmatchIndex( _s:stdgo.GoString):stdgo.Slice<stdgo.GoInt>
```


[\(view code\)](<./Regexp.hx#L4227>)


### Regexp function findSubmatch


```haxe
function findSubmatch( _b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>
```


[\(view code\)](<./Regexp.hx#L4308>)


### Regexp function findSubmatchIndex


```haxe
function findSubmatchIndex( _b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoInt>
```


[\(view code\)](<./Regexp.hx#L4248>)


### Regexp function literalPrefix


```haxe
function literalPrefix():{
	_1:Bool;
	_0:stdgo.GoString;
}
```


[\(view code\)](<./Regexp.hx#L4566>)


### Regexp function longest


```haxe
function longest():Void
```


[\(view code\)](<./Regexp.hx#L4631>)


### Regexp function marshalText


```haxe
function marshalText():{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoByte>;
}
```


[\(view code\)](<./Regexp.hx#L4057>)


### Regexp function match


```haxe
function match( _b:stdgo.Slice<stdgo.GoByte>):Bool
```


[\(view code\)](<./Regexp.hx#L4551>)


### Regexp function matchReader


```haxe
function matchReader( _r:stdgo._internal.io.RuneReader):Bool
```


[\(view code\)](<./Regexp.hx#L4561>)


### Regexp function matchString


```haxe
function matchString( _s:stdgo.GoString):Bool
```


[\(view code\)](<./Regexp.hx#L4556>)


### Regexp function numSubexp


```haxe
function numSubexp():stdgo.GoInt
```


[\(view code\)](<./Regexp.hx#L4589>)


### Regexp function replaceAll


```haxe
function replaceAll( _src:stdgo.Slice<stdgo.GoByte>, _repl:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Regexp.hx#L4451>)


### Regexp function replaceAllFunc


```haxe
function replaceAllFunc( _src:stdgo.Slice<stdgo.GoByte>, _repl:()):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Regexp.hx#L4437>)


### Regexp function replaceAllLiteral


```haxe
function replaceAllLiteral( _src:stdgo.Slice<stdgo.GoByte>, _repl:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Regexp.hx#L4444>)


### Regexp function replaceAllLiteralString


```haxe
function replaceAllLiteralString( _src:stdgo.GoString, _repl:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Regexp.hx#L4532>)


### Regexp function replaceAllString


```haxe
function replaceAllString( _src:stdgo.GoString, _repl:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Regexp.hx#L4539>)


### Regexp function replaceAllStringFunc


```haxe
function replaceAllStringFunc( _src:stdgo.GoString, _repl:()):stdgo.GoString
```


[\(view code\)](<./Regexp.hx#L4524>)


### Regexp function split


```haxe
function split( _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString>
```


[\(view code\)](<./Regexp.hx#L4062>)


### Regexp function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Regexp.hx#L4642>)


### Regexp function subexpIndex


```haxe
function subexpIndex( _name:stdgo.GoString):stdgo.GoInt
```


[\(view code\)](<./Regexp.hx#L4572>)


### Regexp function subexpNames


```haxe
function subexpNames():stdgo.Slice<stdgo.GoString>
```


[\(view code\)](<./Regexp.hx#L4584>)


### Regexp function unmarshalText


```haxe
function unmarshalText( _text:stdgo.Slice<stdgo.GoByte>):stdgo.Error
```


[\(view code\)](<./Regexp.hx#L4029>)


## class ReplaceFuncTest


```haxe
var _input:stdgo.GoString
```


```haxe
var _output:stdgo.GoString
```


```haxe
var _pattern:stdgo.GoString
```


### ReplaceFuncTest function \_replacement


```haxe
function _replacement()
```


### ReplaceFuncTest function new


```haxe
function new(?_pattern:stdgo.GoString, ?_replacement:(), ?_input:stdgo.GoString, ?_output:stdgo.GoString):Void
```


[\(view code\)](<./Regexp.hx#L532>)


## class ReplaceTest


```haxe
var _input:stdgo.GoString
```


```haxe
var _output:stdgo.GoString
```


```haxe
var _pattern:stdgo.GoString
```


```haxe
var _replacement:stdgo.GoString
```


### ReplaceTest function new


```haxe
function new(?_pattern:stdgo.GoString, ?_replacement:stdgo.GoString, ?_input:stdgo.GoString, ?_output:stdgo.GoString):Void
```


[\(view code\)](<./Regexp.hx#L516>)


# Typedefs


```haxe
import stdgo._internal.regexp.*
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = {
	_s:stdgo.GoString;
	_r:stdgo.GoString;
	_out:stdgo.Slice<stdgo.GoString>;
	_n:stdgo.GoInt;
};
```


## typedef T\_\_struct\_1


```haxe
typedef T__struct_1 = {
	_reFlags:stdgo._internal.regexp.syntax.Flags;
	_expMatch:Bool;
};
```


## typedef T\_\_struct\_2


```haxe
typedef T__struct_2 = {
	_re:stdgo.GoString;
	_name:stdgo.GoString;
};
```


## typedef T\_\_struct\_3


```haxe
typedef T__struct_3 = {
	regexp:stdgo.GoString;
	_min:stdgo.GoInt;
};
```


## typedef T\_\_struct\_4


```haxe
typedef T__struct_4 = {
	_name:stdgo.GoString;
	_n:stdgo.GoInt;
};
```


## typedef T\_\_struct\_5


```haxe
typedef T__struct_5 = {
	_rightPC:stdgo.GoUInt32;
	_right:stdgo.Slice<stdgo.GoInt32>;
	_next:stdgo.Slice<stdgo.GoUInt32>;
	_merged:stdgo.Slice<stdgo.GoInt32>;
	_leftPC:stdgo.GoUInt32;
	_left:stdgo.Slice<stdgo.GoInt32>;
};
```


## typedef T\_\_struct\_6


```haxe
typedef T__struct_6 = {
	_re:stdgo.GoString;
	_isOnePass:Bool;
};
```


## typedef T\_\_struct\_7


```haxe
typedef T__struct_7 = {
	_re:stdgo.GoString;
	_match:stdgo.GoString;
};
```


## typedef T\_input


```haxe
typedef T_input = {
	public function _step(_pos:stdgo.GoInt):{
		_1:stdgo.GoInt;
		_0:stdgo.GoRune;
	};	// advance one rune
	public function _index(_re:stdgo.Ref<stdgo._internal.regexp.Regexp>, _pos:stdgo.GoInt):stdgo.GoInt;
	public function _hasPrefix(_re:stdgo.Ref<stdgo._internal.regexp.Regexp>):Bool;
	public function _context(_pos:stdgo.GoInt):stdgo._internal.regexp.T_lazyFlag;
	public function _canCheckPrefix():Bool;	// can we look ahead without losing info?
};
```


## typedef T\_lazyFlag


```haxe
typedef T_lazyFlag = stdgo.GoUInt64;
```


## typedef T\_runeSlice


```haxe
typedef T_runeSlice = stdgo.Slice<stdgo.GoInt32>;
```


