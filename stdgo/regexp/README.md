# Module: `stdgo.regexp`

[(view library index)](../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _build(_n:stdgo.GoInt, _x:haxe.Rest<stdgo.GoInt>):Void`](<#function-_build>)

- [`function _cleanupOnePass(_prog:stdgo.Ref<stdgo.regexp.T_onePassProg>, _original:stdgo.Ref<stdgo._internal.regexp.syntax.Prog>):Void`](<#function-_cleanuponepass>)

- [`function _compile(_expr:stdgo.GoString, _mode:stdgo._internal.regexp.syntax.Flags, _longest:Bool):Void`](<#function-_compile>)

- [`function _compileOnePass(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Prog>):Void`](<#function-_compileonepass>)

- [`function _compileTest(_t:stdgo.Ref<stdgo._internal.testing.T_>, _expr:stdgo.GoString, _error:stdgo.GoString):Void`](<#function-_compiletest>)

- [`function _copyMatchTest(_t:stdgo.Ref<stdgo._internal.testing.T_>, _test:stdgo.Ref<stdgo.regexp.FindTest>):Void`](<#function-_copymatchtest>)

- [`function _extract(_str:stdgo.GoString):Void`](<#function-_extract>)

- [`function _freeBitState(_b:stdgo.Ref<stdgo.regexp.T_bitState>):Void`](<#function-_freebitstate>)

- [`function _freeOnePassMachine(_m:stdgo.Ref<stdgo.regexp.T_onePassMachine>):Void`](<#function-_freeonepassmachine>)

- [`function _iop(_i:stdgo.Ref<stdgo._internal.regexp.syntax.Inst>):Void`](<#function-_iop>)

- [`function _isSingleBytes(_s:stdgo.GoString):Void`](<#function-_issinglebytes>)

- [`function _makeOnePass(_p:stdgo.Ref<stdgo.regexp.T_onePassProg>):Void`](<#function-_makeonepass>)

- [`function _makeText(_n:stdgo.GoInt):Void`](<#function-_maketext>)

- [`function _matchFull(_re:stdgo.Ref<stdgo.regexp.Regexp>, _refull:stdgo.Ref<stdgo.regexp.Regexp>, _text:stdgo.GoString):Void`](<#function-_matchfull>)

- [`function _matchFullLongest(_re:stdgo.Ref<stdgo.regexp.Regexp>, _refull:stdgo.Ref<stdgo.regexp.Regexp>, _text:stdgo.GoString):Void`](<#function-_matchfulllongest>)

- [`function _matchFunctionTest(_t:stdgo.Ref<stdgo._internal.testing.T_>, _test:stdgo.Ref<stdgo.regexp.FindTest>):Void`](<#function-_matchfunctiontest>)

- [`function _matchPartial(_re:stdgo.Ref<stdgo.regexp.Regexp>, _refull:stdgo.Ref<stdgo.regexp.Regexp>, _text:stdgo.GoString):Void`](<#function-_matchpartial>)

- [`function _matchPartialLongest(_re:stdgo.Ref<stdgo.regexp.Regexp>, _refull:stdgo.Ref<stdgo.regexp.Regexp>, _text:stdgo.GoString):Void`](<#function-_matchpartiallongest>)

- [`function _matchTest(_t:stdgo.Ref<stdgo._internal.testing.T_>, _test:stdgo.Ref<stdgo.regexp.FindTest>):Void`](<#function-_matchtest>)

- [`function _maxBitStateLen(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Prog>):Void`](<#function-_maxbitstatelen>)

- [`function _mergeRuneSets(_leftRunes:stdgo.Ref<stdgo.Slice<stdgo.GoRune>>, _rightRunes:stdgo.Ref<stdgo.Slice<stdgo.GoRune>>, _leftPC:stdgo.GoUInt32, _rightPC:stdgo.GoUInt32):Void`](<#function-_mergerunesets>)

- [`function _minInputLen(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>):Void`](<#function-_mininputlen>)

- [`function _newBitState():Void`](<#function-_newbitstate>)

- [`function _newLazyFlag(_r1:stdgo.GoRune, _r2:stdgo.GoRune):Void`](<#function-_newlazyflag>)

- [`function _newOnePassMachine():Void`](<#function-_newonepassmachine>)

- [`function _newQueue(_size:stdgo.GoInt):Void`](<#function-_newqueue>)

- [`function _onePassCopy(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Prog>):Void`](<#function-_onepasscopy>)

- [`function _onePassNext(_i:stdgo.Ref<stdgo.regexp.T_onePassInst>, _r:stdgo.GoRune):Void`](<#function-_onepassnext>)

- [`function _onePassPrefix(_p:stdgo.Ref<stdgo._internal.regexp.syntax.Prog>):Void`](<#function-_onepassprefix>)

- [`function _parseFowlerResult(_s:stdgo.GoString):Void`](<#function-_parsefowlerresult>)

- [`function _parseResult(_t:stdgo.Ref<stdgo._internal.testing.T_>, _file:stdgo.GoString, _lineno:stdgo.GoInt, _res:stdgo.GoString):Void`](<#function-_parseresult>)

- [`function _quote(_s:stdgo.GoString):Void`](<#function-_quote>)

- [`function _runFull(_re:stdgo.Ref<stdgo.regexp.Regexp>, _refull:stdgo.Ref<stdgo.regexp.Regexp>, _text:stdgo.GoString):Void`](<#function-_runfull>)

- [`function _runFullLongest(_re:stdgo.Ref<stdgo.regexp.Regexp>, _refull:stdgo.Ref<stdgo.regexp.Regexp>, _text:stdgo.GoString):Void`](<#function-_runfulllongest>)

- [`function _runPartial(_re:stdgo.Ref<stdgo.regexp.Regexp>, _refull:stdgo.Ref<stdgo.regexp.Regexp>, _text:stdgo.GoString):Void`](<#function-_runpartial>)

- [`function _runPartialLongest(_re:stdgo.Ref<stdgo.regexp.Regexp>, _refull:stdgo.Ref<stdgo.regexp.Regexp>, _text:stdgo.GoString):Void`](<#function-_runpartiallongest>)

- [`function _same(_x:stdgo.Slice<stdgo.GoInt>, _y:stdgo.Slice<stdgo.GoInt>):Void`](<#function-_same>)

- [`function _shouldBacktrack(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Prog>):Void`](<#function-_shouldbacktrack>)

- [`function _special(_b:stdgo.GoByte):Void`](<#function-_special>)

- [`function _testFindAllIndex(_test:stdgo.Ref<stdgo.regexp.FindTest>, _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>>, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-_testfindallindex>)

- [`function _testFindAllSubmatchIndex(_test:stdgo.Ref<stdgo.regexp.FindTest>, _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>>, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-_testfindallsubmatchindex>)

- [`function _testFindIndex(_test:stdgo.Ref<stdgo.regexp.FindTest>, _result:stdgo.Slice<stdgo.GoInt>, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-_testfindindex>)

- [`function _testFindSubmatchIndex(_test:stdgo.Ref<stdgo.regexp.FindTest>, _result:stdgo.Slice<stdgo.GoInt>, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-_testfindsubmatchindex>)

- [`function _testFowler(_t:stdgo.Ref<stdgo._internal.testing.T_>, _file:stdgo.GoString):Void`](<#function-_testfowler>)

- [`function _testRE2(_t:stdgo.Ref<stdgo._internal.testing.T_>, _file:stdgo.GoString):Void`](<#function-_testre2>)

- [`function _testSubmatchBytes(_test:stdgo.Ref<stdgo.regexp.FindTest>, _n:stdgo.GoInt, _submatches:stdgo.Slice<stdgo.GoInt>, _result:stdgo.Slice<stdgo.Slice<stdgo.GoByte>>, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-_testsubmatchbytes>)

- [`function _testSubmatchIndices(_test:stdgo.Ref<stdgo.regexp.FindTest>, _n:stdgo.GoInt, _expect:stdgo.Slice<stdgo.GoInt>, _result:stdgo.Slice<stdgo.GoInt>, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-_testsubmatchindices>)

- [`function _testSubmatchString(_test:stdgo.Ref<stdgo.regexp.FindTest>, _n:stdgo.GoInt, _submatches:stdgo.Slice<stdgo.GoInt>, _result:stdgo.Slice<stdgo.GoString>, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-_testsubmatchstring>)

- [`function _tryCompile(_s:stdgo.GoString):Void`](<#function-_trycompile>)

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

- [`function compile(_expr:stdgo.GoString):Void`](<#function-compile>)

- [`function compilePOSIX(_expr:stdgo.GoString):Void`](<#function-compileposix>)

- [`function match(_pattern:stdgo.GoString, _b:stdgo.Slice<stdgo.GoByte>):Void`](<#function-match>)

- [`function matchReader(_pattern:stdgo.GoString, _r:stdgo._internal.io.RuneReader):Void`](<#function-matchreader>)

- [`function matchString(_pattern:stdgo.GoString, _s:stdgo.GoString):Void`](<#function-matchstring>)

- [`function mustCompile(_str:stdgo.GoString):Void`](<#function-mustcompile>)

- [`function mustCompilePOSIX(_str:stdgo.GoString):Void`](<#function-mustcompileposix>)

- [`function quoteMeta(_s:stdgo.GoString):Void`](<#function-quotemeta>)

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

- [typedef FindTest](<#typedef-findtest>)

- [typedef FindTest\_asInterface](<#typedef-findtest_asinterface>)

- [typedef FindTest\_static\_extension](<#typedef-findtest_static_extension>)

- [typedef MetaTest](<#typedef-metatest>)

- [typedef Regexp](<#typedef-regexp>)

- [typedef Regexp\_asInterface](<#typedef-regexp_asinterface>)

- [typedef Regexp\_static\_extension](<#typedef-regexp_static_extension>)

- [typedef ReplaceFuncTest](<#typedef-replacefunctest>)

- [typedef ReplaceTest](<#typedef-replacetest>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_0\_asInterface](<#typedef-t__struct_0_asinterface>)

- [typedef T\_\_struct\_0\_static\_extension](<#typedef-t__struct_0_static_extension>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

- [typedef T\_\_struct\_1\_asInterface](<#typedef-t__struct_1_asinterface>)

- [typedef T\_\_struct\_1\_static\_extension](<#typedef-t__struct_1_static_extension>)

- [typedef T\_\_struct\_2](<#typedef-t__struct_2>)

- [typedef T\_\_struct\_2\_asInterface](<#typedef-t__struct_2_asinterface>)

- [typedef T\_\_struct\_2\_static\_extension](<#typedef-t__struct_2_static_extension>)

- [typedef T\_\_struct\_3](<#typedef-t__struct_3>)

- [typedef T\_\_struct\_3\_asInterface](<#typedef-t__struct_3_asinterface>)

- [typedef T\_\_struct\_3\_static\_extension](<#typedef-t__struct_3_static_extension>)

- [typedef T\_\_struct\_4](<#typedef-t__struct_4>)

- [typedef T\_\_struct\_4\_asInterface](<#typedef-t__struct_4_asinterface>)

- [typedef T\_\_struct\_4\_static\_extension](<#typedef-t__struct_4_static_extension>)

- [typedef T\_\_struct\_5](<#typedef-t__struct_5>)

- [typedef T\_\_struct\_5\_asInterface](<#typedef-t__struct_5_asinterface>)

- [typedef T\_\_struct\_5\_static\_extension](<#typedef-t__struct_5_static_extension>)

- [typedef T\_\_struct\_6](<#typedef-t__struct_6>)

- [typedef T\_\_struct\_6\_asInterface](<#typedef-t__struct_6_asinterface>)

- [typedef T\_\_struct\_6\_static\_extension](<#typedef-t__struct_6_static_extension>)

- [typedef T\_\_struct\_7](<#typedef-t__struct_7>)

- [typedef T\_\_struct\_7\_asInterface](<#typedef-t__struct_7_asinterface>)

- [typedef T\_\_struct\_7\_static\_extension](<#typedef-t__struct_7_static_extension>)

- [typedef T\_bitState](<#typedef-t_bitstate>)

- [typedef T\_bitState\_asInterface](<#typedef-t_bitstate_asinterface>)

- [typedef T\_bitState\_static\_extension](<#typedef-t_bitstate_static_extension>)

- [typedef T\_entry](<#typedef-t_entry>)

- [typedef T\_input](<#typedef-t_input>)

- [typedef T\_inputBytes](<#typedef-t_inputbytes>)

- [typedef T\_inputBytes\_asInterface](<#typedef-t_inputbytes_asinterface>)

- [typedef T\_inputBytes\_static\_extension](<#typedef-t_inputbytes_static_extension>)

- [typedef T\_inputReader](<#typedef-t_inputreader>)

- [typedef T\_inputReader\_asInterface](<#typedef-t_inputreader_asinterface>)

- [typedef T\_inputReader\_static\_extension](<#typedef-t_inputreader_static_extension>)

- [typedef T\_inputString](<#typedef-t_inputstring>)

- [typedef T\_inputString\_asInterface](<#typedef-t_inputstring_asinterface>)

- [typedef T\_inputString\_static\_extension](<#typedef-t_inputstring_static_extension>)

- [typedef T\_inputs](<#typedef-t_inputs>)

- [typedef T\_inputs\_asInterface](<#typedef-t_inputs_asinterface>)

- [typedef T\_inputs\_static\_extension](<#typedef-t_inputs_static_extension>)

- [typedef T\_job](<#typedef-t_job>)

- [typedef T\_lazyFlag](<#typedef-t_lazyflag>)

- [typedef T\_lazyFlag\_asInterface](<#typedef-t_lazyflag_asinterface>)

- [typedef T\_lazyFlag\_static\_extension](<#typedef-t_lazyflag_static_extension>)

- [typedef T\_machine](<#typedef-t_machine>)

- [typedef T\_machine\_asInterface](<#typedef-t_machine_asinterface>)

- [typedef T\_machine\_static\_extension](<#typedef-t_machine_static_extension>)

- [typedef T\_onePassInst](<#typedef-t_onepassinst>)

- [typedef T\_onePassInst\_asInterface](<#typedef-t_onepassinst_asinterface>)

- [typedef T\_onePassInst\_static\_extension](<#typedef-t_onepassinst_static_extension>)

- [typedef T\_onePassMachine](<#typedef-t_onepassmachine>)

- [typedef T\_onePassProg](<#typedef-t_onepassprog>)

- [typedef T\_queue](<#typedef-t_queue>)

- [typedef T\_queueOnePass](<#typedef-t_queueonepass>)

- [typedef T\_queueOnePass\_asInterface](<#typedef-t_queueonepass_asinterface>)

- [typedef T\_queueOnePass\_static\_extension](<#typedef-t_queueonepass_static_extension>)

- [typedef T\_runeSlice](<#typedef-t_runeslice>)

- [typedef T\_runeSlice\_asInterface](<#typedef-t_runeslice_asinterface>)

- [typedef T\_runeSlice\_static\_extension](<#typedef-t_runeslice_static_extension>)

- [typedef T\_stringError](<#typedef-t_stringerror>)

- [typedef T\_subexpCase](<#typedef-t_subexpcase>)

- [typedef T\_subexpIndex](<#typedef-t_subexpindex>)

- [typedef T\_thread](<#typedef-t_thread>)

# Variables


```haxe
import stdgo.regexp.Regexp
```


```haxe
var _:Dynamic
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
var _arrayNoInts:Dynamic
```


```haxe
var _badRe:Dynamic
```


```haxe
var _benchData:Dynamic
```


```haxe
var _benchSizes:Dynamic
```


```haxe
var _bitStatePool:Dynamic
```


```haxe
var _compileBenchData:Dynamic
```


```haxe
var _emptySubexpIndices:Dynamic
```


```haxe
var _endOfText:Dynamic
```


```haxe
var _findTests:Dynamic
```


```haxe
var _goodRe:Dynamic
```


```haxe
var _literalPrefixTests:Dynamic
```


```haxe
var _match:Dynamic
```


```haxe
var _matchPool:Dynamic
```


```haxe
var _matchSize:Dynamic
```


```haxe
var _maxBacktrackProg:Dynamic
```


```haxe
var _maxBacktrackVector:Dynamic
```


```haxe
var _mergeFailed:Dynamic
```


```haxe
var _metaTests:Dynamic
```


```haxe
var _minInputLenTests:Dynamic
```


```haxe
var _noNext:Dynamic
```


```haxe
var _noRune:Dynamic
```


```haxe
var _notab:Dynamic
```


```haxe
var _onePassPool:Dynamic
```


```haxe
var _onePassTests:Dynamic
```


```haxe
var _onePassTests1:Dynamic
```


```haxe
var _replaceFuncTests:Dynamic
```


```haxe
var _replaceLiteralTests:Dynamic
```


```haxe
var _replaceTests:Dynamic
```


```haxe
var _run:Dynamic
```


```haxe
var _runeMergeTests:Dynamic
```


```haxe
var _sink:Dynamic
```


```haxe
var _specialBytes:Dynamic
```


```haxe
var _splitTests:Dynamic
```


```haxe
var _startSize:Dynamic
```


```haxe
var _subexpCases:Dynamic
```


```haxe
var _text:Dynamic
```


```haxe
var _visitedBits:Dynamic
```


# Functions


```haxe
import stdgo.regexp.Regexp
```


## function \_build


```haxe
function _build(_n:stdgo.GoInt, _x:haxe.Rest<stdgo.GoInt>):Void
```


[\(view code\)](<./Regexp.hx#L168>)


## function \_cleanupOnePass


```haxe
function _cleanupOnePass(_prog:stdgo.Ref<stdgo.regexp.T_onePassProg>, _original:stdgo.Ref<stdgo._internal.regexp.syntax.Prog>):Void
```


[\(view code\)](<./Regexp.hx#L199>)


## function \_compile


```haxe
function _compile(_expr:stdgo.GoString, _mode:stdgo._internal.regexp.syntax.Flags, _longest:Bool):Void
```


[\(view code\)](<./Regexp.hx#L208>)


## function \_compileOnePass


```haxe
function _compileOnePass(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Prog>):Void
```


[\(view code\)](<./Regexp.hx#L202>)


## function \_compileTest


```haxe
function _compileTest(_t:stdgo.Ref<stdgo._internal.testing.T_>, _expr:stdgo.GoString, _error:stdgo.GoString):Void
```


[\(view code\)](<./Regexp.hx#L91>)


## function \_copyMatchTest


```haxe
function _copyMatchTest(_t:stdgo.Ref<stdgo._internal.testing.T_>, _test:stdgo.Ref<stdgo.regexp.FindTest>):Void
```


[\(view code\)](<./Regexp.hx#L98>)


## function \_extract


```haxe
function _extract(_str:stdgo.GoString):Void
```


[\(view code\)](<./Regexp.hx#L218>)


## function \_freeBitState


```haxe
function _freeBitState(_b:stdgo.Ref<stdgo.regexp.T_bitState>):Void
```


[\(view code\)](<./Regexp.hx#L139>)


## function \_freeOnePassMachine


```haxe
function _freeOnePassMachine(_m:stdgo.Ref<stdgo.regexp.T_onePassMachine>):Void
```


[\(view code\)](<./Regexp.hx#L144>)


## function \_iop


```haxe
function _iop(_i:stdgo.Ref<stdgo._internal.regexp.syntax.Inst>):Void
```


[\(view code\)](<./Regexp.hx#L196>)


## function \_isSingleBytes


```haxe
function _isSingleBytes(_s:stdgo.GoString):Void
```


[\(view code\)](<./Regexp.hx#L156>)


## function \_makeOnePass


```haxe
function _makeOnePass(_p:stdgo.Ref<stdgo.regexp.T_onePassProg>):Void
```


[\(view code\)](<./Regexp.hx#L201>)


## function \_makeText


```haxe
function _makeText(_n:stdgo.GoInt):Void
```


[\(view code\)](<./Regexp.hx#L163>)


## function \_matchFull


```haxe
function _matchFull(_re:stdgo.Ref<stdgo.regexp.Regexp>, _refull:stdgo.Ref<stdgo.regexp.Regexp>, _text:stdgo.GoString):Void
```


[\(view code\)](<./Regexp.hx#L152>)


## function \_matchFullLongest


```haxe
function _matchFullLongest(_re:stdgo.Ref<stdgo.regexp.Regexp>, _refull:stdgo.Ref<stdgo.regexp.Regexp>, _text:stdgo.GoString):Void
```


[\(view code\)](<./Regexp.hx#L154>)


## function \_matchFunctionTest


```haxe
function _matchFunctionTest(_t:stdgo.Ref<stdgo._internal.testing.T_>, _test:stdgo.Ref<stdgo.regexp.FindTest>):Void
```


[\(view code\)](<./Regexp.hx#L96>)


## function \_matchPartial


```haxe
function _matchPartial(_re:stdgo.Ref<stdgo.regexp.Regexp>, _refull:stdgo.Ref<stdgo.regexp.Regexp>, _text:stdgo.GoString):Void
```


[\(view code\)](<./Regexp.hx#L153>)


## function \_matchPartialLongest


```haxe
function _matchPartialLongest(_re:stdgo.Ref<stdgo.regexp.Regexp>, _refull:stdgo.Ref<stdgo.regexp.Regexp>, _text:stdgo.GoString):Void
```


[\(view code\)](<./Regexp.hx#L155>)


## function \_matchTest


```haxe
function _matchTest(_t:stdgo.Ref<stdgo._internal.testing.T_>, _test:stdgo.Ref<stdgo.regexp.FindTest>):Void
```


[\(view code\)](<./Regexp.hx#L94>)


## function \_maxBitStateLen


```haxe
function _maxBitStateLen(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Prog>):Void
```


[\(view code\)](<./Regexp.hx#L140>)


## function \_mergeRuneSets


```haxe
function _mergeRuneSets(_leftRunes:stdgo.Ref<stdgo.Slice<stdgo.GoRune>>, _rightRunes:stdgo.Ref<stdgo.Slice<stdgo.GoRune>>, _leftPC:stdgo.GoUInt32, _rightPC:stdgo.GoUInt32):Void
```


[\(view code\)](<./Regexp.hx#L198>)


## function \_minInputLen


```haxe
function _minInputLen(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Regexp>):Void
```


[\(view code\)](<./Regexp.hx#L209>)


## function \_newBitState


```haxe
function _newBitState():Void
```


[\(view code\)](<./Regexp.hx#L138>)


## function \_newLazyFlag


```haxe
function _newLazyFlag(_r1:stdgo.GoRune, _r2:stdgo.GoRune):Void
```


[\(view code\)](<./Regexp.hx#L142>)


## function \_newOnePassMachine


```haxe
function _newOnePassMachine():Void
```


[\(view code\)](<./Regexp.hx#L143>)


## function \_newQueue


```haxe
function _newQueue(_size:stdgo.GoInt):Void
```


[\(view code\)](<./Regexp.hx#L197>)


## function \_onePassCopy


```haxe
function _onePassCopy(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Prog>):Void
```


[\(view code\)](<./Regexp.hx#L200>)


## function \_onePassNext


```haxe
function _onePassNext(_i:stdgo.Ref<stdgo.regexp.T_onePassInst>, _r:stdgo.GoRune):Void
```


[\(view code\)](<./Regexp.hx#L195>)


## function \_onePassPrefix


```haxe
function _onePassPrefix(_p:stdgo.Ref<stdgo._internal.regexp.syntax.Prog>):Void
```


[\(view code\)](<./Regexp.hx#L194>)


## function \_parseFowlerResult


```haxe
function _parseFowlerResult(_s:stdgo.GoString):Void
```


[\(view code\)](<./Regexp.hx#L162>)


## function \_parseResult


```haxe
function _parseResult(_t:stdgo.Ref<stdgo._internal.testing.T_>, _file:stdgo.GoString, _lineno:stdgo.GoInt, _res:stdgo.GoString):Void
```


[\(view code\)](<./Regexp.hx#L158>)


## function \_quote


```haxe
function _quote(_s:stdgo.GoString):Void
```


[\(view code\)](<./Regexp.hx#L212>)


## function \_runFull


```haxe
function _runFull(_re:stdgo.Ref<stdgo.regexp.Regexp>, _refull:stdgo.Ref<stdgo.regexp.Regexp>, _text:stdgo.GoString):Void
```


[\(view code\)](<./Regexp.hx#L148>)


## function \_runFullLongest


```haxe
function _runFullLongest(_re:stdgo.Ref<stdgo.regexp.Regexp>, _refull:stdgo.Ref<stdgo.regexp.Regexp>, _text:stdgo.GoString):Void
```


[\(view code\)](<./Regexp.hx#L150>)


## function \_runPartial


```haxe
function _runPartial(_re:stdgo.Ref<stdgo.regexp.Regexp>, _refull:stdgo.Ref<stdgo.regexp.Regexp>, _text:stdgo.GoString):Void
```


[\(view code\)](<./Regexp.hx#L149>)


## function \_runPartialLongest


```haxe
function _runPartialLongest(_re:stdgo.Ref<stdgo.regexp.Regexp>, _refull:stdgo.Ref<stdgo.regexp.Regexp>, _text:stdgo.GoString):Void
```


[\(view code\)](<./Regexp.hx#L151>)


## function \_same


```haxe
function _same(_x:stdgo.Slice<stdgo.GoInt>, _y:stdgo.Slice<stdgo.GoInt>):Void
```


[\(view code\)](<./Regexp.hx#L159>)


## function \_shouldBacktrack


```haxe
function _shouldBacktrack(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Prog>):Void
```


[\(view code\)](<./Regexp.hx#L141>)


## function \_special


```haxe
function _special(_b:stdgo.GoByte):Void
```


[\(view code\)](<./Regexp.hx#L216>)


## function \_testFindAllIndex


```haxe
function _testFindAllIndex(_test:stdgo.Ref<stdgo.regexp.FindTest>, _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>>, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L177>)


## function \_testFindAllSubmatchIndex


```haxe
function _testFindAllSubmatchIndex(_test:stdgo.Ref<stdgo.regexp.FindTest>, _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>>, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L191>)


## function \_testFindIndex


```haxe
function _testFindIndex(_test:stdgo.Ref<stdgo.regexp.FindTest>, _result:stdgo.Slice<stdgo.GoInt>, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L171>)


## function \_testFindSubmatchIndex


```haxe
function _testFindSubmatchIndex(_test:stdgo.Ref<stdgo.regexp.FindTest>, _result:stdgo.Slice<stdgo.GoInt>, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L185>)


## function \_testFowler


```haxe
function _testFowler(_t:stdgo.Ref<stdgo._internal.testing.T_>, _file:stdgo.GoString):Void
```


[\(view code\)](<./Regexp.hx#L161>)


## function \_testRE2


```haxe
function _testRE2(_t:stdgo.Ref<stdgo._internal.testing.T_>, _file:stdgo.GoString):Void
```


[\(view code\)](<./Regexp.hx#L147>)


## function \_testSubmatchBytes


```haxe
function _testSubmatchBytes(_test:stdgo.Ref<stdgo.regexp.FindTest>, _n:stdgo.GoInt, _submatches:stdgo.Slice<stdgo.GoInt>, _result:stdgo.Slice<stdgo.Slice<stdgo.GoByte>>, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L180>)


## function \_testSubmatchIndices


```haxe
function _testSubmatchIndices(_test:stdgo.Ref<stdgo.regexp.FindTest>, _n:stdgo.GoInt, _expect:stdgo.Slice<stdgo.GoInt>, _result:stdgo.Slice<stdgo.GoInt>, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L184>)


## function \_testSubmatchString


```haxe
function _testSubmatchString(_test:stdgo.Ref<stdgo.regexp.FindTest>, _n:stdgo.GoInt, _submatches:stdgo.Slice<stdgo.GoInt>, _result:stdgo.Slice<stdgo.GoString>, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L182>)


## function \_tryCompile


```haxe
function _tryCompile(_s:stdgo.GoString):Void
```


[\(view code\)](<./Regexp.hx#L157>)


## function benchmarkAnchoredLiteralLongNonMatch


```haxe
function benchmarkAnchoredLiteralLongNonMatch(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L121>)


## function benchmarkAnchoredLiteralShortNonMatch


```haxe
function benchmarkAnchoredLiteralShortNonMatch(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L120>)


## function benchmarkAnchoredLongMatch


```haxe
function benchmarkAnchoredLongMatch(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L123>)


## function benchmarkAnchoredShortMatch


```haxe
function benchmarkAnchoredShortMatch(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L122>)


## function benchmarkCompile


```haxe
function benchmarkCompile(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L134>)


## function benchmarkFind


```haxe
function benchmarkFind(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L110>)


## function benchmarkFindAllNoMatches


```haxe
function benchmarkFindAllNoMatches(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L111>)


## function benchmarkFindString


```haxe
function benchmarkFindString(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L112>)


## function benchmarkFindStringSubmatch


```haxe
function benchmarkFindStringSubmatch(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L114>)


## function benchmarkFindSubmatch


```haxe
function benchmarkFindSubmatch(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L113>)


## function benchmarkLiteral


```haxe
function benchmarkLiteral(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L115>)


## function benchmarkMatch


```haxe
function benchmarkMatch(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L164>)


## function benchmarkMatchClass


```haxe
function benchmarkMatchClass(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L117>)


## function benchmarkMatchClass\_InRange


```haxe
function benchmarkMatchClass_InRange(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L118>)


## function benchmarkMatchParallelCopied


```haxe
function benchmarkMatchParallelCopied(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L131>)


## function benchmarkMatchParallelShared


```haxe
function benchmarkMatchParallelShared(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L130>)


## function benchmarkMatch\_onepass\_regex


```haxe
function benchmarkMatch_onepass_regex(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L165>)


## function benchmarkNotLiteral


```haxe
function benchmarkNotLiteral(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L116>)


## function benchmarkNotOnePassShortA


```haxe
function benchmarkNotOnePassShortA(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L125>)


## function benchmarkNotOnePassShortB


```haxe
function benchmarkNotOnePassShortB(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L127>)


## function benchmarkOnePassLongNotPrefix


```haxe
function benchmarkOnePassLongNotPrefix(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L129>)


## function benchmarkOnePassLongPrefix


```haxe
function benchmarkOnePassLongPrefix(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L128>)


## function benchmarkOnePassShortA


```haxe
function benchmarkOnePassShortA(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L124>)


## function benchmarkOnePassShortB


```haxe
function benchmarkOnePassShortB(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L126>)


## function benchmarkQuoteMetaAll


```haxe
function benchmarkQuoteMetaAll(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L132>)


## function benchmarkQuoteMetaNone


```haxe
function benchmarkQuoteMetaNone(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L133>)


## function benchmarkReplaceAll


```haxe
function benchmarkReplaceAll(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L119>)


## function compile


```haxe
function compile(_expr:stdgo.GoString):Void
```


[\(view code\)](<./Regexp.hx#L206>)


## function compilePOSIX


```haxe
function compilePOSIX(_expr:stdgo.GoString):Void
```


[\(view code\)](<./Regexp.hx#L207>)


## function match


```haxe
function match(_pattern:stdgo.GoString, _b:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Regexp.hx#L215>)


## function matchReader


```haxe
function matchReader(_pattern:stdgo.GoString, _r:stdgo._internal.io.RuneReader):Void
```


[\(view code\)](<./Regexp.hx#L213>)


## function matchString


```haxe
function matchString(_pattern:stdgo.GoString, _s:stdgo.GoString):Void
```


[\(view code\)](<./Regexp.hx#L214>)


## function mustCompile


```haxe
function mustCompile(_str:stdgo.GoString):Void
```


[\(view code\)](<./Regexp.hx#L210>)


## function mustCompilePOSIX


```haxe
function mustCompilePOSIX(_str:stdgo.GoString):Void
```


[\(view code\)](<./Regexp.hx#L211>)


## function quoteMeta


```haxe
function quoteMeta(_s:stdgo.GoString):Void
```


[\(view code\)](<./Regexp.hx#L217>)


## function testBadCompile


```haxe
function testBadCompile(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L93>)


## function testCompileOnePass


```haxe
function testCompileOnePass(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L204>)


## function testCopyMatch


```haxe
function testCopyMatch(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L99>)


## function testDeepEqual


```haxe
function testDeepEqual(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L135>)


## function testFind


```haxe
function testFind(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L169>)


## function testFindAll


```haxe
function testFindAll(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L175>)


## function testFindAllIndex


```haxe
function testFindAllIndex(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L178>)


## function testFindAllString


```haxe
function testFindAllString(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L176>)


## function testFindAllStringIndex


```haxe
function testFindAllStringIndex(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L179>)


## function testFindAllStringSubmatch


```haxe
function testFindAllStringSubmatch(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L190>)


## function testFindAllStringSubmatchIndex


```haxe
function testFindAllStringSubmatchIndex(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L193>)


## function testFindAllSubmatch


```haxe
function testFindAllSubmatch(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L189>)


## function testFindAllSubmatchIndex


```haxe
function testFindAllSubmatchIndex(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L192>)


## function testFindIndex


```haxe
function testFindIndex(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L172>)


## function testFindReaderIndex


```haxe
function testFindReaderIndex(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L174>)


## function testFindReaderSubmatchIndex


```haxe
function testFindReaderSubmatchIndex(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L188>)


## function testFindString


```haxe
function testFindString(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L170>)


## function testFindStringIndex


```haxe
function testFindStringIndex(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L173>)


## function testFindStringSubmatch


```haxe
function testFindStringSubmatch(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L183>)


## function testFindStringSubmatchIndex


```haxe
function testFindStringSubmatchIndex(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L187>)


## function testFindSubmatch


```haxe
function testFindSubmatch(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L181>)


## function testFindSubmatchIndex


```haxe
function testFindSubmatchIndex(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L186>)


## function testFowler


```haxe
function testFowler(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L160>)


## function testGoodCompile


```haxe
function testGoodCompile(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L92>)


## function testLiteralPrefix


```haxe
function testLiteralPrefix(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L104>)


## function testLongest


```haxe
function testLongest(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L166>)


## function testMatch


```haxe
function testMatch(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L95>)


## function testMatchFunction


```haxe
function testMatchFunction(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L97>)


## function testMergeRuneSet


```haxe
function testMergeRuneSet(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L203>)


## function testMinInputLen


```haxe
function testMinInputLen(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L136>)


## function testOnePassCutoff


```haxe
function testOnePassCutoff(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L108>)


## function testParseAndCompile


```haxe
function testParseAndCompile(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L107>)


## function testProgramTooLongForBacktrack


```haxe
function testProgramTooLongForBacktrack(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L167>)


## function testQuoteMeta


```haxe
function testQuoteMeta(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L103>)


## function testRE2Exhaustive


```haxe
function testRE2Exhaustive(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L145>)


## function testRE2Search


```haxe
function testRE2Search(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L146>)


## function testReplaceAll


```haxe
function testReplaceAll(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L100>)


## function testReplaceAllFunc


```haxe
function testReplaceAllFunc(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L102>)


## function testReplaceAllLiteral


```haxe
function testReplaceAllLiteral(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L101>)


## function testRunOnePass


```haxe
function testRunOnePass(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L205>)


## function testSplit


```haxe
function testSplit(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L106>)


## function testSubexp


```haxe
function testSubexp(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L105>)


## function testSwitchBacktrack


```haxe
function testSwitchBacktrack(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L109>)


## function testUnmarshalText


```haxe
function testUnmarshalText(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L137>)


# Typedefs


```haxe
import stdgo.regexp.*
```


## typedef FindTest


```haxe
typedef FindTest = Dynamic;
```


## typedef FindTest\_asInterface


```haxe
typedef FindTest_asInterface = Dynamic;
```


## typedef FindTest\_static\_extension


```haxe
typedef FindTest_static_extension = Dynamic;
```


## typedef MetaTest


```haxe
typedef MetaTest = Dynamic;
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


## typedef ReplaceFuncTest


```haxe
typedef ReplaceFuncTest = Dynamic;
```


## typedef ReplaceTest


```haxe
typedef ReplaceTest = Dynamic;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = stdgo._internal.regexp.T__struct_0;
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
typedef T__struct_1 = stdgo._internal.regexp.T__struct_1;
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
typedef T__struct_2 = stdgo._internal.regexp.T__struct_2;
```


## typedef T\_\_struct\_2\_asInterface


```haxe
typedef T__struct_2_asInterface = Dynamic;
```


## typedef T\_\_struct\_2\_static\_extension


```haxe
typedef T__struct_2_static_extension = Dynamic;
```


## typedef T\_\_struct\_3


```haxe
typedef T__struct_3 = stdgo._internal.regexp.T__struct_3;
```


## typedef T\_\_struct\_3\_asInterface


```haxe
typedef T__struct_3_asInterface = Dynamic;
```


## typedef T\_\_struct\_3\_static\_extension


```haxe
typedef T__struct_3_static_extension = Dynamic;
```


## typedef T\_\_struct\_4


```haxe
typedef T__struct_4 = stdgo._internal.regexp.T__struct_4;
```


## typedef T\_\_struct\_4\_asInterface


```haxe
typedef T__struct_4_asInterface = Dynamic;
```


## typedef T\_\_struct\_4\_static\_extension


```haxe
typedef T__struct_4_static_extension = Dynamic;
```


## typedef T\_\_struct\_5


```haxe
typedef T__struct_5 = stdgo._internal.regexp.T__struct_5;
```


## typedef T\_\_struct\_5\_asInterface


```haxe
typedef T__struct_5_asInterface = Dynamic;
```


## typedef T\_\_struct\_5\_static\_extension


```haxe
typedef T__struct_5_static_extension = Dynamic;
```


## typedef T\_\_struct\_6


```haxe
typedef T__struct_6 = stdgo._internal.regexp.T__struct_6;
```


## typedef T\_\_struct\_6\_asInterface


```haxe
typedef T__struct_6_asInterface = Dynamic;
```


## typedef T\_\_struct\_6\_static\_extension


```haxe
typedef T__struct_6_static_extension = Dynamic;
```


## typedef T\_\_struct\_7


```haxe
typedef T__struct_7 = stdgo._internal.regexp.T__struct_7;
```


## typedef T\_\_struct\_7\_asInterface


```haxe
typedef T__struct_7_asInterface = Dynamic;
```


## typedef T\_\_struct\_7\_static\_extension


```haxe
typedef T__struct_7_static_extension = Dynamic;
```


## typedef T\_bitState


```haxe
typedef T_bitState = Dynamic;
```


## typedef T\_bitState\_asInterface


```haxe
typedef T_bitState_asInterface = Dynamic;
```


## typedef T\_bitState\_static\_extension


```haxe
typedef T_bitState_static_extension = Dynamic;
```


## typedef T\_entry


```haxe
typedef T_entry = Dynamic;
```


## typedef T\_input


```haxe
typedef T_input = stdgo._internal.regexp.T_input;
```


## typedef T\_inputBytes


```haxe
typedef T_inputBytes = Dynamic;
```


## typedef T\_inputBytes\_asInterface


```haxe
typedef T_inputBytes_asInterface = Dynamic;
```


## typedef T\_inputBytes\_static\_extension


```haxe
typedef T_inputBytes_static_extension = Dynamic;
```


## typedef T\_inputReader


```haxe
typedef T_inputReader = Dynamic;
```


## typedef T\_inputReader\_asInterface


```haxe
typedef T_inputReader_asInterface = Dynamic;
```


## typedef T\_inputReader\_static\_extension


```haxe
typedef T_inputReader_static_extension = Dynamic;
```


## typedef T\_inputString


```haxe
typedef T_inputString = Dynamic;
```


## typedef T\_inputString\_asInterface


```haxe
typedef T_inputString_asInterface = Dynamic;
```


## typedef T\_inputString\_static\_extension


```haxe
typedef T_inputString_static_extension = Dynamic;
```


## typedef T\_inputs


```haxe
typedef T_inputs = Dynamic;
```


## typedef T\_inputs\_asInterface


```haxe
typedef T_inputs_asInterface = Dynamic;
```


## typedef T\_inputs\_static\_extension


```haxe
typedef T_inputs_static_extension = Dynamic;
```


## typedef T\_job


```haxe
typedef T_job = Dynamic;
```


## typedef T\_lazyFlag


```haxe
typedef T_lazyFlag = stdgo._internal.regexp.T_lazyFlag;
```


## typedef T\_lazyFlag\_asInterface


```haxe
typedef T_lazyFlag_asInterface = Dynamic;
```


## typedef T\_lazyFlag\_static\_extension


```haxe
typedef T_lazyFlag_static_extension = Dynamic;
```


## typedef T\_machine


```haxe
typedef T_machine = Dynamic;
```


## typedef T\_machine\_asInterface


```haxe
typedef T_machine_asInterface = Dynamic;
```


## typedef T\_machine\_static\_extension


```haxe
typedef T_machine_static_extension = Dynamic;
```


## typedef T\_onePassInst


```haxe
typedef T_onePassInst = Dynamic;
```


## typedef T\_onePassInst\_asInterface


```haxe
typedef T_onePassInst_asInterface = Dynamic;
```


## typedef T\_onePassInst\_static\_extension


```haxe
typedef T_onePassInst_static_extension = Dynamic;
```


## typedef T\_onePassMachine


```haxe
typedef T_onePassMachine = Dynamic;
```


## typedef T\_onePassProg


```haxe
typedef T_onePassProg = Dynamic;
```


## typedef T\_queue


```haxe
typedef T_queue = Dynamic;
```


## typedef T\_queueOnePass


```haxe
typedef T_queueOnePass = Dynamic;
```


## typedef T\_queueOnePass\_asInterface


```haxe
typedef T_queueOnePass_asInterface = Dynamic;
```


## typedef T\_queueOnePass\_static\_extension


```haxe
typedef T_queueOnePass_static_extension = Dynamic;
```


## typedef T\_runeSlice


```haxe
typedef T_runeSlice = stdgo._internal.regexp.T_runeSlice;
```


## typedef T\_runeSlice\_asInterface


```haxe
typedef T_runeSlice_asInterface = Dynamic;
```


## typedef T\_runeSlice\_static\_extension


```haxe
typedef T_runeSlice_static_extension = Dynamic;
```


## typedef T\_stringError


```haxe
typedef T_stringError = Dynamic;
```


## typedef T\_subexpCase


```haxe
typedef T_subexpCase = Dynamic;
```


## typedef T\_subexpIndex


```haxe
typedef T_subexpIndex = Dynamic;
```


## typedef T\_thread


```haxe
typedef T_thread = Dynamic;
```


