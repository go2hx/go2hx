# Module: `stdgo.regexp`

[(view library index)](../stdgo.md)


# Overview



Package regexp implements regular expression search.  


The syntax of the regular expressions accepted is the same
general syntax used by Perl, Python, and other languages.
More precisely, it is the syntax accepted by RE2 and described at
https://golang.org/s/re2syntax, except for \\C.
For an overview of the syntax, run  

```
	go doc regexp/syntax
```

The regexp implementation provided by this package is
guaranteed to run in time linear in the size of the input.
\(This is a property not guaranteed by most open source
implementations of regular expressions.\) For more information
about this property, see  

```
	https://swtch.com/~rsc/regexp/regexp1.html
```

or any book about automata theory.  


All characters are UTF\-8\-encoded code points.
Following utf8.DecodeRune, each byte of an invalid UTF\-8 sequence
is treated as if it encoded utf8.RuneError \(U\+FFFD\).  


There are 16 methods of Regexp that match a regular expression and identify
the matched text. Their names are matched by this regular expression:  

```
	Find(All)?(String)?(Submatch)?(Index)?
```

If 'All' is present, the routine matches successive non\-overlapping
matches of the entire expression. Empty matches abutting a preceding
match are ignored. The return value is a slice containing the successive
return values of the corresponding non\-'All' routine. These routines take
an extra integer argument, n. If n \>= 0, the function returns at most n
matches/submatches; otherwise, it returns all of them.  


If 'String' is present, the argument is a string; otherwise it is a slice
of bytes; return values are adjusted as appropriate.  


If 'Submatch' is present, the return value is a slice identifying the
successive submatches of the expression. Submatches are matches of
parenthesized subexpressions \(also known as capturing groups\) within the
regular expression, numbered from left to right in order of opening
parenthesis. Submatch 0 is the match of the entire expression, submatch 1 is
the match of the first parenthesized subexpression, and so on.  


If 'Index' is present, matches and submatches are identified by byte index
pairs within the input string: result\[2\*n:2\*n\+2\] identifies the indexes of
the nth submatch. The pair for n==0 identifies the match of the entire
expression. If 'Index' is not present, the match is identified by the text
of the match/submatch. If an index is negative or text is nil, it means that
subexpression did not match any string in the input. For 'String' versions
an empty string means either no match or an empty match.  


There is also a subset of the methods that can be applied to text read
from a RuneReader:  

```
	MatchReader, FindReaderIndex, FindReaderSubmatchIndex
```

This set may grow. Note that regular expression matches may need to
examine text beyond the text returned by a match, so the methods that
match text from a RuneReader may read arbitrarily far into the input
before returning.  


\(There are a few other methods that do not match this pattern.\)  


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _build(_n:stdgo.GoInt, _x:haxe.Rest<stdgo.GoInt>):stdgo.Slice<stdgo.Slice<stdgo.GoInt>>`](<#function-_build>)

- [`function _cleanupOnePass(_prog:stdgo.Ref<stdgo.regexp.T_onePassProg>, _original:stdgo.Ref<stdgo.regexp.syntax.Prog>):Void`](<#function-_cleanuponepass>)

- [`function _compile(_expr:stdgo.GoString, _mode:stdgo.regexp.syntax.Flags, _longest:Bool):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo.regexp.Regexp>;
}`](<#function-_compile>)

- [`function _compileOnePass(_prog:stdgo.Ref<stdgo.regexp.syntax.Prog>):stdgo.Ref<stdgo.regexp.T_onePassProg>`](<#function-_compileonepass>)

- [`function _compileTest(_t:stdgo.Ref<stdgo.testing.T_>, _expr:stdgo.GoString, _error:stdgo.GoString):stdgo.Ref<stdgo.regexp.Regexp>`](<#function-_compiletest>)

- [`function _copyMatchTest(_t:stdgo.Ref<stdgo.testing.T_>, _test:stdgo.Ref<stdgo.regexp.FindTest>):Void`](<#function-_copymatchtest>)

- [`function _extract(_str:stdgo.GoString):{
	_3:Bool;
	_2:stdgo.GoString;
	_1:stdgo.GoInt;
	_0:stdgo.GoString;
}`](<#function-_extract>)

- [`function _freeBitState(_b:stdgo.Ref<stdgo.regexp.T_bitState>):Void`](<#function-_freebitstate>)

- [`function _freeOnePassMachine(_m:stdgo.Ref<stdgo.regexp.T_onePassMachine>):Void`](<#function-_freeonepassmachine>)

- [`function _iop(_i:stdgo.Ref<stdgo.regexp.syntax.Inst>):stdgo.regexp.syntax.InstOp`](<#function-_iop>)

- [`function _isSingleBytes(_s:stdgo.GoString):Bool`](<#function-_issinglebytes>)

- [`function _makeOnePass(_p:stdgo.Ref<stdgo.regexp.T_onePassProg>):stdgo.Ref<stdgo.regexp.T_onePassProg>`](<#function-_makeonepass>)

- [`function _makeText(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>`](<#function-_maketext>)

- [`function _matchFull(_re:stdgo.Ref<stdgo.regexp.Regexp>, _refull:stdgo.Ref<stdgo.regexp.Regexp>, _text:stdgo.GoString):{
	_1:stdgo.GoString;
	_0:Bool;
}`](<#function-_matchfull>)

- [`function _matchFullLongest(_re:stdgo.Ref<stdgo.regexp.Regexp>, _refull:stdgo.Ref<stdgo.regexp.Regexp>, _text:stdgo.GoString):{
	_1:stdgo.GoString;
	_0:Bool;
}`](<#function-_matchfulllongest>)

- [`function _matchFunctionTest(_t:stdgo.Ref<stdgo.testing.T_>, _test:stdgo.Ref<stdgo.regexp.FindTest>):Void`](<#function-_matchfunctiontest>)

- [`function _matchPartial(_re:stdgo.Ref<stdgo.regexp.Regexp>, _refull:stdgo.Ref<stdgo.regexp.Regexp>, _text:stdgo.GoString):{
	_1:stdgo.GoString;
	_0:Bool;
}`](<#function-_matchpartial>)

- [`function _matchPartialLongest(_re:stdgo.Ref<stdgo.regexp.Regexp>, _refull:stdgo.Ref<stdgo.regexp.Regexp>, _text:stdgo.GoString):{
	_1:stdgo.GoString;
	_0:Bool;
}`](<#function-_matchpartiallongest>)

- [`function _matchTest(_t:stdgo.Ref<stdgo.testing.T_>, _test:stdgo.Ref<stdgo.regexp.FindTest>):Void`](<#function-_matchtest>)

- [`function _maxBitStateLen(_prog:stdgo.Ref<stdgo.regexp.syntax.Prog>):stdgo.GoInt`](<#function-_maxbitstatelen>)

- [`function _mergeRuneSets(_leftRunes:stdgo.Ref<stdgo.Slice<stdgo.GoRune>>, _rightRunes:stdgo.Ref<stdgo.Slice<stdgo.GoRune>>, _leftPC:stdgo.GoUInt32, _rightPC:stdgo.GoUInt32):{
	_1:stdgo.Slice<stdgo.GoUInt32>;
	_0:stdgo.Slice<stdgo.GoRune>;
}`](<#function-_mergerunesets>)

- [`function _minInputLen(_re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):stdgo.GoInt`](<#function-_mininputlen>)

- [`function _newBitState():stdgo.Ref<stdgo.regexp.T_bitState>`](<#function-_newbitstate>)

- [`function _newLazyFlag(_r1:stdgo.GoRune, _r2:stdgo.GoRune):stdgo.regexp.T_lazyFlag`](<#function-_newlazyflag>)

- [`function _newOnePassMachine():stdgo.Ref<stdgo.regexp.T_onePassMachine>`](<#function-_newonepassmachine>)

- [`function _newQueue(_size:stdgo.GoInt):stdgo.Ref<stdgo.regexp.T_queueOnePass>`](<#function-_newqueue>)

- [`function _onePassCopy(_prog:stdgo.Ref<stdgo.regexp.syntax.Prog>):stdgo.Ref<stdgo.regexp.T_onePassProg>`](<#function-_onepasscopy>)

- [`function _onePassNext(_i:stdgo.Ref<stdgo.regexp.T_onePassInst>, _r:stdgo.GoRune):stdgo.GoUInt32`](<#function-_onepassnext>)

- [`function _onePassPrefix(_p:stdgo.Ref<stdgo.regexp.syntax.Prog>):{
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

- [`function _parseResult(_t:stdgo.Ref<stdgo.testing.T_>, _file:stdgo.GoString, _lineno:stdgo.GoInt, _res:stdgo.GoString):stdgo.Slice<stdgo.GoInt>`](<#function-_parseresult>)

- [`function _quote(_s:stdgo.GoString):stdgo.GoString`](<#function-_quote>)

- [`function _runFull(_re:stdgo.Ref<stdgo.regexp.Regexp>, _refull:stdgo.Ref<stdgo.regexp.Regexp>, _text:stdgo.GoString):{
	_1:stdgo.GoString;
	_0:stdgo.Slice<stdgo.GoInt>;
}`](<#function-_runfull>)

- [`function _runFullLongest(_re:stdgo.Ref<stdgo.regexp.Regexp>, _refull:stdgo.Ref<stdgo.regexp.Regexp>, _text:stdgo.GoString):{
	_1:stdgo.GoString;
	_0:stdgo.Slice<stdgo.GoInt>;
}`](<#function-_runfulllongest>)

- [`function _runPartial(_re:stdgo.Ref<stdgo.regexp.Regexp>, _refull:stdgo.Ref<stdgo.regexp.Regexp>, _text:stdgo.GoString):{
	_1:stdgo.GoString;
	_0:stdgo.Slice<stdgo.GoInt>;
}`](<#function-_runpartial>)

- [`function _runPartialLongest(_re:stdgo.Ref<stdgo.regexp.Regexp>, _refull:stdgo.Ref<stdgo.regexp.Regexp>, _text:stdgo.GoString):{
	_1:stdgo.GoString;
	_0:stdgo.Slice<stdgo.GoInt>;
}`](<#function-_runpartiallongest>)

- [`function _same(_x:stdgo.Slice<stdgo.GoInt>, _y:stdgo.Slice<stdgo.GoInt>):Bool`](<#function-_same>)

- [`function _shouldBacktrack(_prog:stdgo.Ref<stdgo.regexp.syntax.Prog>):Bool`](<#function-_shouldbacktrack>)

- [`function _special(_b:stdgo.GoByte):Bool`](<#function-_special>)

- [`function _testFindAllIndex(_test:stdgo.Ref<stdgo.regexp.FindTest>, _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>>, _t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-_testfindallindex>)

- [`function _testFindAllSubmatchIndex(_test:stdgo.Ref<stdgo.regexp.FindTest>, _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>>, _t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-_testfindallsubmatchindex>)

- [`function _testFindIndex(_test:stdgo.Ref<stdgo.regexp.FindTest>, _result:stdgo.Slice<stdgo.GoInt>, _t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-_testfindindex>)

- [`function _testFindSubmatchIndex(_test:stdgo.Ref<stdgo.regexp.FindTest>, _result:stdgo.Slice<stdgo.GoInt>, _t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-_testfindsubmatchindex>)

- [`function _testFowler(_t:stdgo.Ref<stdgo.testing.T_>, _file:stdgo.GoString):Void`](<#function-_testfowler>)

- [`function _testRE2(_t:stdgo.Ref<stdgo.testing.T_>, _file:stdgo.GoString):Void`](<#function-_testre2>)

- [`function _testSubmatchBytes(_test:stdgo.Ref<stdgo.regexp.FindTest>, _n:stdgo.GoInt, _submatches:stdgo.Slice<stdgo.GoInt>, _result:stdgo.Slice<stdgo.Slice<stdgo.GoByte>>, _t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-_testsubmatchbytes>)

- [`function _testSubmatchIndices(_test:stdgo.Ref<stdgo.regexp.FindTest>, _n:stdgo.GoInt, _expect:stdgo.Slice<stdgo.GoInt>, _result:stdgo.Slice<stdgo.GoInt>, _t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-_testsubmatchindices>)

- [`function _testSubmatchString(_test:stdgo.Ref<stdgo.regexp.FindTest>, _n:stdgo.GoInt, _submatches:stdgo.Slice<stdgo.GoInt>, _result:stdgo.Slice<stdgo.GoString>, _t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-_testsubmatchstring>)

- [`function _tryCompile(_s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo.regexp.Regexp>;
}`](<#function-_trycompile>)

- [`function benchmarkAnchoredLiteralLongNonMatch(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkanchoredliterallongnonmatch>)

- [`function benchmarkAnchoredLiteralShortNonMatch(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkanchoredliteralshortnonmatch>)

- [`function benchmarkAnchoredLongMatch(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkanchoredlongmatch>)

- [`function benchmarkAnchoredShortMatch(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkanchoredshortmatch>)

- [`function benchmarkCompile(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkcompile>)

- [`function benchmarkFind(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkfind>)

- [`function benchmarkFindAllNoMatches(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkfindallnomatches>)

- [`function benchmarkFindString(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkfindstring>)

- [`function benchmarkFindStringSubmatch(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkfindstringsubmatch>)

- [`function benchmarkFindSubmatch(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkfindsubmatch>)

- [`function benchmarkLiteral(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkliteral>)

- [`function benchmarkMatch(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkmatch>)

- [`function benchmarkMatchClass(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkmatchclass>)

- [`function benchmarkMatchClass_InRange(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkmatchclass_inrange>)

- [`function benchmarkMatchParallelCopied(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkmatchparallelcopied>)

- [`function benchmarkMatchParallelShared(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkmatchparallelshared>)

- [`function benchmarkMatch_onepass_regex(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkmatch_onepass_regex>)

- [`function benchmarkNotLiteral(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarknotliteral>)

- [`function benchmarkNotOnePassShortA(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarknotonepassshorta>)

- [`function benchmarkNotOnePassShortB(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarknotonepassshortb>)

- [`function benchmarkOnePassLongNotPrefix(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkonepasslongnotprefix>)

- [`function benchmarkOnePassLongPrefix(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkonepasslongprefix>)

- [`function benchmarkOnePassShortA(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkonepassshorta>)

- [`function benchmarkOnePassShortB(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkonepassshortb>)

- [`function benchmarkQuoteMetaAll(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkquotemetaall>)

- [`function benchmarkQuoteMetaNone(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkquotemetanone>)

- [`function benchmarkReplaceAll(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkreplaceall>)

- [`function compile(_expr:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo.regexp.Regexp>;
}`](<#function-compile>)

- [`function compilePOSIX(_expr:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo.regexp.Regexp>;
}`](<#function-compileposix>)

- [`function match(_pattern:stdgo.GoString, _b:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:Bool;
}`](<#function-match>)

- [`function matchReader(_pattern:stdgo.GoString, _r:stdgo.io.RuneReader):{
	_1:stdgo.Error;
	_0:Bool;
}`](<#function-matchreader>)

- [`function matchString(_pattern:stdgo.GoString, _s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:Bool;
}`](<#function-matchstring>)

- [`function mustCompile(_str:stdgo.GoString):stdgo.Ref<stdgo.regexp.Regexp>`](<#function-mustcompile>)

- [`function mustCompilePOSIX(_str:stdgo.GoString):stdgo.Ref<stdgo.regexp.Regexp>`](<#function-mustcompileposix>)

- [`function quoteMeta(_s:stdgo.GoString):stdgo.GoString`](<#function-quotemeta>)

- [`function testBadCompile(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testbadcompile>)

- [`function testCompileOnePass(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcompileonepass>)

- [`function testCopyMatch(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcopymatch>)

- [`function testDeepEqual(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testdeepequal>)

- [`function testFind(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testfind>)

- [`function testFindAll(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testfindall>)

- [`function testFindAllIndex(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testfindallindex>)

- [`function testFindAllString(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testfindallstring>)

- [`function testFindAllStringIndex(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testfindallstringindex>)

- [`function testFindAllStringSubmatch(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testfindallstringsubmatch>)

- [`function testFindAllStringSubmatchIndex(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testfindallstringsubmatchindex>)

- [`function testFindAllSubmatch(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testfindallsubmatch>)

- [`function testFindAllSubmatchIndex(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testfindallsubmatchindex>)

- [`function testFindIndex(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testfindindex>)

- [`function testFindReaderIndex(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testfindreaderindex>)

- [`function testFindReaderSubmatchIndex(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testfindreadersubmatchindex>)

- [`function testFindString(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testfindstring>)

- [`function testFindStringIndex(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testfindstringindex>)

- [`function testFindStringSubmatch(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testfindstringsubmatch>)

- [`function testFindStringSubmatchIndex(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testfindstringsubmatchindex>)

- [`function testFindSubmatch(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testfindsubmatch>)

- [`function testFindSubmatchIndex(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testfindsubmatchindex>)

- [`function testFowler(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testfowler>)

- [`function testGoodCompile(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testgoodcompile>)

- [`function testLiteralPrefix(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testliteralprefix>)

- [`function testLongest(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testlongest>)

- [`function testMatch(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testmatch>)

- [`function testMatchFunction(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testmatchfunction>)

- [`function testMergeRuneSet(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testmergeruneset>)

- [`function testMinInputLen(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testmininputlen>)

- [`function testOnePassCutoff(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testonepasscutoff>)

- [`function testParseAndCompile(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testparseandcompile>)

- [`function testProgramTooLongForBacktrack(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testprogramtoolongforbacktrack>)

- [`function testQuoteMeta(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testquotemeta>)

- [`function testRE2Exhaustive(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testre2exhaustive>)

- [`function testRE2Search(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testre2search>)

- [`function testReplaceAll(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreplaceall>)

- [`function testReplaceAllFunc(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreplaceallfunc>)

- [`function testReplaceAllLiteral(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreplaceallliteral>)

- [`function testRunOnePass(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testrunonepass>)

- [`function testSplit(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testsplit>)

- [`function testSubexp(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testsubexp>)

- [`function testSwitchBacktrack(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testswitchbacktrack>)

- [`function testUnmarshalText(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testunmarshaltext>)

- [class FindTest](<#class-findtest>)

  - [`function new(?_pat:stdgo.GoString, ?_text:stdgo.GoString, ?_matches:stdgo.Slice<stdgo.Slice<stdgo.GoInt>>):Void`](<#findtest-function-new>)

  - [`function string():stdgo.GoString`](<#findtest-function-string>)

- [class MetaTest](<#class-metatest>)

  - [`function new(?_pattern:stdgo.GoString, ?_output:stdgo.GoString, ?_literal:stdgo.GoString, ?_isLiteral:Bool):Void`](<#metatest-function-new>)

- [class Regexp](<#class-regexp>)

  - [`function new(?_expr:stdgo.GoString, ?_prog:stdgo.Ref<stdgo.regexp.syntax.Prog>, ?_onepass:stdgo.Ref<stdgo.regexp.T_onePassProg>, ?_numSubexp:Null<stdgo.GoInt>, ?_maxBitStateLen:Null<stdgo.GoInt>, ?_subexpNames:stdgo.Slice<stdgo.GoString>, ?_prefix:stdgo.GoString, ?_prefixBytes:stdgo.Slice<stdgo.GoUInt8>, ?_prefixRune:stdgo.GoInt32, ?_prefixEnd:stdgo.GoUInt32, ?_mpool:Null<stdgo.GoInt>, ?_matchcap:Null<stdgo.GoInt>, ?_prefixComplete:Bool, ?_cond:Null<stdgo.regexp.syntax.EmptyOp>, ?_minInputLen:Null<stdgo.GoInt>, ?_longest:Bool):Void`](<#regexp-function-new>)

  - [`function _allMatches( _s:stdgo.GoString, _b:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt, _deliver:()):Void`](<#regexp-function-_allmatches>)

  - [`function _backtrack( _ib:stdgo.Slice<stdgo.GoByte>, _is:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt>`](<#regexp-function-_backtrack>)

  - [`function _doExecute( _r:stdgo.io.RuneReader, _b:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt>`](<#regexp-function-_doexecute>)

  - [`function _doMatch( _r:stdgo.io.RuneReader, _b:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):Bool`](<#regexp-function-_domatch>)

  - [`function _doOnePass( _ir:stdgo.io.RuneReader, _ib:stdgo.Slice<stdgo.GoByte>, _is:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt>`](<#regexp-function-_doonepass>)

  - [`function _expand( _dst:stdgo.Slice<stdgo.GoByte>, _template:stdgo.GoString, _bsrc:stdgo.Slice<stdgo.GoByte>, _src:stdgo.GoString, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoByte>`](<#regexp-function-_expand>)

  - [`function _get():stdgo.Ref<stdgo.regexp.T_machine>`](<#regexp-function-_get>)

  - [`function _pad( _a:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt>`](<#regexp-function-_pad>)

  - [`function _put( _m:stdgo.Ref<stdgo.regexp.T_machine>):Void`](<#regexp-function-_put>)

  - [`function _replaceAll( _bsrc:stdgo.Slice<stdgo.GoByte>, _src:stdgo.GoString, _nmatch:stdgo.GoInt, _repl:(_dst:stdgo.Slice<stdgo.GoByte>, _m:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#regexp-function-_replaceall>)

  - [`function _tryBacktrack( _b:stdgo.Ref<stdgo.regexp.T_bitState>, _i:stdgo.regexp.T_input, _pc:stdgo.GoUInt32, _pos:stdgo.GoInt):Bool`](<#regexp-function-_trybacktrack>)

  - [`function copy():stdgo.Ref<stdgo.regexp.Regexp>`](<#regexp-function-copy>)

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

  - [`function findReaderIndex( _r:stdgo.io.RuneReader):stdgo.Slice<stdgo.GoInt>`](<#regexp-function-findreaderindex>)

  - [`function findReaderSubmatchIndex( _r:stdgo.io.RuneReader):stdgo.Slice<stdgo.GoInt>`](<#regexp-function-findreadersubmatchindex>)

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

  - [`function matchReader( _r:stdgo.io.RuneReader):Bool`](<#regexp-function-matchreader>)

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
import stdgo.regexp.Regexp
```


```haxe
final _endOfText:stdgo.GoInt32 = ((-1 : stdgo.StdGoTypes.GoInt32))
```


```haxe
final _maxBacktrackProg:stdgo.GoUInt64 = ((500i64 : stdgo.StdGoTypes.GoUInt64))
```



len\(prog.Inst\) \<= max  

```haxe
final _maxBacktrackVector:stdgo.GoUInt64 = ((262144i64 : stdgo.StdGoTypes.GoUInt64))
```



bit vector size \<= max \(bits\)  

```haxe
final _mergeFailed:stdgo.GoUInt32 = ((-1u32 : stdgo.StdGoTypes.GoUInt32))
```



mergeRuneSets merges two non\-intersecting runesets, and returns the merged result,
and a NextIp array. The idea is that if a rune matches the OnePassRunes at index
i, NextIp\[i/2\] is the target. If the input sets intersect, an empty runeset and a
NextIp array with the single element mergeFailed is returned.
The code assumes that both inputs contain ordered and non\-intersecting rune pairs.  

```haxe
final _startSize:stdgo.GoUInt64 = ((10i64 : stdgo.StdGoTypes.GoUInt64))
```



The size at which to start a slice in the 'All' routines.  

```haxe
final _visitedBits:stdgo.GoUInt64 = ((32i64 : stdgo.StdGoTypes.GoUInt64))
```


# Variables


```haxe
import stdgo.regexp.Regexp
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



arrayNoInts is returned by doExecute match if nil dstCap is passed
to it with ncap=0.  

```haxe
var _badRe:stdgo.Slice<stdgo.regexp.T_stringError>
```


```haxe
var _benchData:stdgo.Slice<stdgo.regexp.T__struct_2>
```


```haxe
var _benchSizes:stdgo.Slice<stdgo.regexp.T__struct_4>
```


```haxe
var _bitStatePool:stdgo.sync.Pool
```


```haxe
var _compileBenchData:stdgo.Slice<stdgo.regexp.T__struct_2>
```


```haxe
var _emptySubexpIndices:stdgo.Slice<stdgo.regexp.T_subexpIndex>
```


```haxe
var _findTests:stdgo.Slice<stdgo.regexp.FindTest>
```


```haxe
var _goodRe:stdgo.Slice<stdgo.GoString>
```


```haxe
var _literalPrefixTests:stdgo.Slice<stdgo.regexp.MetaTest>
```


```haxe
var _match:stdgo.Slice<(:stdgo.Ref<stdgo.regexp.Regexp>, :stdgo.Ref<stdgo.regexp.Regexp>, :stdgo.GoString):{
	_1:stdgo.GoString;
	_0:Bool;
}>
```


```haxe
var _matchPool:stdgo.GoArray<stdgo.sync.Pool>
```



Pools of \*machine for use during \(\*Regexp\).doExecute,
split up by the size of the execution queues.
matchPool\[i\] machines have queue size matchSize\[i\].
On a 64\-bit system each queue entry is 16 bytes,
so matchPool\[0\] has 16\*2\*128 = 4kB queues, etc.
The final matchPool is a catch\-all for very large queues.  

```haxe
var _matchSize:stdgo.GoArray<stdgo.GoInt>
```



Pools of \*machine for use during \(\*Regexp\).doExecute,
split up by the size of the execution queues.
matchPool\[i\] machines have queue size matchSize\[i\].
On a 64\-bit system each queue entry is 16 bytes,
so matchPool\[0\] has 16\*2\*128 = 4kB queues, etc.
The final matchPool is a catch\-all for very large queues.  

```haxe
var _metaTests:stdgo.Slice<stdgo.regexp.MetaTest>
```


```haxe
var _minInputLenTests:stdgo.Slice<stdgo.regexp.T__struct_3>
```


```haxe
var _noNext:stdgo.Slice<stdgo.GoUInt32>
```


```haxe
var _noRune:stdgo.Slice<stdgo.GoInt32>
```


```haxe
var _notab:stdgo.Ref<stdgo.regexp.Regexp>
```


```haxe
var _onePassPool:stdgo.sync.Pool
```


```haxe
var _onePassTests:stdgo.Slice<stdgo.regexp.T__struct_6>
```


```haxe
var _onePassTests1:stdgo.Slice<stdgo.regexp.T__struct_7>
```



TODO\(cespare\): Unify with onePassTests and rationalize one\-pass test cases.  

```haxe
var _replaceFuncTests:stdgo.Slice<stdgo.regexp.ReplaceFuncTest>
```


```haxe
var _replaceLiteralTests:stdgo.Slice<stdgo.regexp.ReplaceTest>
```


```haxe
var _replaceTests:stdgo.Slice<stdgo.regexp.ReplaceTest>
```


```haxe
var _run:stdgo.Slice<(:stdgo.Ref<stdgo.regexp.Regexp>, :stdgo.Ref<stdgo.regexp.Regexp>, :stdgo.GoString):{
	_1:stdgo.GoString;
	_0:stdgo.Slice<stdgo.GoInt>;
}>
```


```haxe
var _runeMergeTests:stdgo.Slice<stdgo.regexp.T__struct_5>
```


```haxe
var _sink:stdgo.GoString
```


```haxe
var _specialBytes:stdgo.GoArray<stdgo.GoByte>
```



Bitmap used by func special to check whether a character needs to be escaped.  

```haxe
var _splitTests:stdgo.Slice<stdgo.regexp.T__struct_0>
```


```haxe
var _subexpCases:stdgo.Slice<stdgo.regexp.T_subexpCase>
```


```haxe
var _text:stdgo.Slice<stdgo.GoByte>
```


# Functions


```haxe
import stdgo.regexp.Regexp
```


## function \_build


```haxe
function _build(_n:stdgo.GoInt, _x:haxe.Rest<stdgo.GoInt>):stdgo.Slice<stdgo.Slice<stdgo.GoInt>>
```



build is a helper to construct a \[\]\[\]int by extracting n sequences from x.
This represents n matches with len\(x\)/n submatches each.  

[\(view code\)](<./Regexp.hx#L2919>)


## function \_cleanupOnePass


```haxe
function _cleanupOnePass(_prog:stdgo.Ref<stdgo.regexp.T_onePassProg>, _original:stdgo.Ref<stdgo.regexp.syntax.Prog>):Void
```



cleanupOnePass drops working memory, and restores certain shortcut instructions.  

[\(view code\)](<./Regexp.hx#L3384>)


## function \_compile


```haxe
function _compile(_expr:stdgo.GoString, _mode:stdgo.regexp.syntax.Flags, _longest:Bool):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo.regexp.Regexp>;
}
```


[\(view code\)](<./Regexp.hx#L3785>)


## function \_compileOnePass


```haxe
function _compileOnePass(_prog:stdgo.Ref<stdgo.regexp.syntax.Prog>):stdgo.Ref<stdgo.regexp.T_onePassProg>
```



compileOnePass returns a new \*syntax.Prog suitable for onePass execution if the original Prog
can be recharacterized as a one\-pass regexp program, or syntax.nil if the
Prog cannot be converted. For a one pass prog, the fundamental condition that must
be true is: at any InstAlt, there must be no ambiguity about what branch to  take.  

[\(view code\)](<./Regexp.hx#L3650>)


## function \_compileTest


```haxe
function _compileTest(_t:stdgo.Ref<stdgo.testing.T_>, _expr:stdgo.GoString, _error:stdgo.GoString):stdgo.Ref<stdgo.regexp.Regexp>
```


[\(view code\)](<./Regexp.hx#L1464>)


## function \_copyMatchTest


```haxe
function _copyMatchTest(_t:stdgo.Ref<stdgo.testing.T_>, _test:stdgo.Ref<stdgo.regexp.FindTest>):Void
```


[\(view code\)](<./Regexp.hx#L1525>)


## function \_extract


```haxe
function _extract(_str:stdgo.GoString):{
	_3:Bool;
	_2:stdgo.GoString;
	_1:stdgo.GoInt;
	_0:stdgo.GoString;
}
```



extract returns the name from a leading "name" or "\{name\}" in str.
\(The $ has already been removed by the caller.\)
If it is a number, extract returns num set to that number; otherwise num = \-1.  

[\(view code\)](<./Regexp.hx#L3986>)


## function \_freeBitState


```haxe
function _freeBitState(_b:stdgo.Ref<stdgo.regexp.T_bitState>):Void
```


[\(view code\)](<./Regexp.hx#L2172>)


## function \_freeOnePassMachine


```haxe
function _freeOnePassMachine(_m:stdgo.Ref<stdgo.regexp.T_onePassMachine>):Void
```


[\(view code\)](<./Regexp.hx#L2207>)


## function \_iop


```haxe
function _iop(_i:stdgo.Ref<stdgo.regexp.syntax.Inst>):stdgo.regexp.syntax.InstOp
```


[\(view code\)](<./Regexp.hx#L3289>)


## function \_isSingleBytes


```haxe
function _isSingleBytes(_s:stdgo.GoString):Bool
```


[\(view code\)](<./Regexp.hx#L2459>)


## function \_makeOnePass


```haxe
function _makeOnePass(_p:stdgo.Ref<stdgo.regexp.T_onePassProg>):stdgo.Ref<stdgo.regexp.T_onePassProg>
```



makeOnePass creates a onepass Prog, if possible. It is possible if at any alt,
the match engine can always tell which branch to take. The routine may modify
p if it is turned into a onepass Prog. If it isn't possible for this to be a
onepass Prog, the Prog nil is returned. makeOnePass is recursive
to the size of the Prog.  

[\(view code\)](<./Regexp.hx#L3462>)


## function \_makeText


```haxe
function _makeText(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Regexp.hx#L2815>)


## function \_matchFull


```haxe
function _matchFull(_re:stdgo.Ref<stdgo.regexp.Regexp>, _refull:stdgo.Ref<stdgo.regexp.Regexp>, _text:stdgo.GoString):{
	_1:stdgo.GoString;
	_0:Bool;
}
```


[\(view code\)](<./Regexp.hx#L2443>)


## function \_matchFullLongest


```haxe
function _matchFullLongest(_re:stdgo.Ref<stdgo.regexp.Regexp>, _refull:stdgo.Ref<stdgo.regexp.Regexp>, _text:stdgo.GoString):{
	_1:stdgo.GoString;
	_0:Bool;
}
```


[\(view code\)](<./Regexp.hx#L2451>)


## function \_matchFunctionTest


```haxe
function _matchFunctionTest(_t:stdgo.Ref<stdgo.testing.T_>, _test:stdgo.Ref<stdgo.regexp.FindTest>):Void
```


[\(view code\)](<./Regexp.hx#L1511>)


## function \_matchPartial


```haxe
function _matchPartial(_re:stdgo.Ref<stdgo.regexp.Regexp>, _refull:stdgo.Ref<stdgo.regexp.Regexp>, _text:stdgo.GoString):{
	_1:stdgo.GoString;
	_0:Bool;
}
```


[\(view code\)](<./Regexp.hx#L2447>)


## function \_matchPartialLongest


```haxe
function _matchPartialLongest(_re:stdgo.Ref<stdgo.regexp.Regexp>, _refull:stdgo.Ref<stdgo.regexp.Regexp>, _text:stdgo.GoString):{
	_1:stdgo.GoString;
	_0:Bool;
}
```


[\(view code\)](<./Regexp.hx#L2455>)


## function \_matchTest


```haxe
function _matchTest(_t:stdgo.Ref<stdgo.testing.T_>, _test:stdgo.Ref<stdgo.regexp.FindTest>):Void
```


[\(view code\)](<./Regexp.hx#L1492>)


## function \_maxBitStateLen


```haxe
function _maxBitStateLen(_prog:stdgo.Ref<stdgo.regexp.syntax.Prog>):stdgo.GoInt
```



maxBitStateLen returns the maximum length of a string to search with
the backtracker using prog.  

[\(view code\)](<./Regexp.hx#L2180>)


## function \_mergeRuneSets


```haxe
function _mergeRuneSets(_leftRunes:stdgo.Ref<stdgo.Slice<stdgo.GoRune>>, _rightRunes:stdgo.Ref<stdgo.Slice<stdgo.GoRune>>, _leftPC:stdgo.GoUInt32, _rightPC:stdgo.GoUInt32):{
	_1:stdgo.Slice<stdgo.GoUInt32>;
	_0:stdgo.Slice<stdgo.GoRune>;
}
```


[\(view code\)](<./Regexp.hx#L3303>)


## function \_minInputLen


```haxe
function _minInputLen(_re:stdgo.Ref<stdgo.regexp.syntax.Regexp>):stdgo.GoInt
```



minInputLen walks the regexp to find the minimum length of any matchable input.  

[\(view code\)](<./Regexp.hx#L3835>)


## function \_newBitState


```haxe
function _newBitState():stdgo.Ref<stdgo.regexp.T_bitState>
```


[\(view code\)](<./Regexp.hx#L2161>)


## function \_newLazyFlag


```haxe
function _newLazyFlag(_r1:stdgo.GoRune, _r2:stdgo.GoRune):stdgo.regexp.T_lazyFlag
```


[\(view code\)](<./Regexp.hx#L2193>)


## function \_newOnePassMachine


```haxe
function _newOnePassMachine():stdgo.Ref<stdgo.regexp.T_onePassMachine>
```


[\(view code\)](<./Regexp.hx#L2196>)


## function \_newQueue


```haxe
function _newQueue(_size:stdgo.GoInt):stdgo.Ref<stdgo.regexp.T_queueOnePass>
```


[\(view code\)](<./Regexp.hx#L3299>)


## function \_onePassCopy


```haxe
function _onePassCopy(_prog:stdgo.Ref<stdgo.regexp.syntax.Prog>):stdgo.Ref<stdgo.regexp.T_onePassProg>
```



onePassCopy creates a copy of the original Prog, as we'll be modifying it.  

[\(view code\)](<./Regexp.hx#L3400>)


## function \_onePassNext


```haxe
function _onePassNext(_i:stdgo.Ref<stdgo.regexp.T_onePassInst>, _r:stdgo.GoRune):stdgo.GoUInt32
```



onePassNext selects the next actionable state of the prog, based on the input character.
It should only be called when i.Op == InstAlt or InstAltMatch, and from the one\-pass machine.
One of the alternates may ultimately lead without input to end of line. If the instruction
is InstAltMatch the path to the InstMatch is in i.Out, the normal node in i.Next.  

[\(view code\)](<./Regexp.hx#L3279>)


## function \_onePassPrefix


```haxe
function _onePassPrefix(_p:stdgo.Ref<stdgo.regexp.syntax.Prog>):{
	_2:stdgo.GoUInt32;
	_1:Bool;
	_0:stdgo.GoString;
}
```



onePassPrefix returns a literal string that all matches for the
regexp must start with. Complete is true if the prefix
is the entire match. Pc is the index of the last rune instruction
in the string. The onePassPrefix skips over the mandatory
EmptyBeginText.  

[\(view code\)](<./Regexp.hx#L3243>)


## function \_parseFowlerResult


```haxe
function _parseFowlerResult(_s:stdgo.GoString):{
	_3:stdgo.Slice<stdgo.GoInt>;
	_2:Bool;
	_1:Bool;
	_0:Bool;
}
```


[\(view code\)](<./Regexp.hx#L2753>)


## function \_parseResult


```haxe
function _parseResult(_t:stdgo.Ref<stdgo.testing.T_>, _file:stdgo.GoString, _lineno:stdgo.GoInt, _res:stdgo.GoString):stdgo.Slice<stdgo.GoInt>
```


[\(view code\)](<./Regexp.hx#L2513>)


## function \_quote


```haxe
function _quote(_s:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Regexp.hx#L3899>)


## function \_runFull


```haxe
function _runFull(_re:stdgo.Ref<stdgo.regexp.Regexp>, _refull:stdgo.Ref<stdgo.regexp.Regexp>, _text:stdgo.GoString):{
	_1:stdgo.GoString;
	_0:stdgo.Slice<stdgo.GoInt>;
}
```


[\(view code\)](<./Regexp.hx#L2427>)


## function \_runFullLongest


```haxe
function _runFullLongest(_re:stdgo.Ref<stdgo.regexp.Regexp>, _refull:stdgo.Ref<stdgo.regexp.Regexp>, _text:stdgo.GoString):{
	_1:stdgo.GoString;
	_0:stdgo.Slice<stdgo.GoInt>;
}
```


[\(view code\)](<./Regexp.hx#L2435>)


## function \_runPartial


```haxe
function _runPartial(_re:stdgo.Ref<stdgo.regexp.Regexp>, _refull:stdgo.Ref<stdgo.regexp.Regexp>, _text:stdgo.GoString):{
	_1:stdgo.GoString;
	_0:stdgo.Slice<stdgo.GoInt>;
}
```


[\(view code\)](<./Regexp.hx#L2431>)


## function \_runPartialLongest


```haxe
function _runPartialLongest(_re:stdgo.Ref<stdgo.regexp.Regexp>, _refull:stdgo.Ref<stdgo.regexp.Regexp>, _text:stdgo.GoString):{
	_1:stdgo.GoString;
	_0:stdgo.Slice<stdgo.GoInt>;
}
```


[\(view code\)](<./Regexp.hx#L2439>)


## function \_same


```haxe
function _same(_x:stdgo.Slice<stdgo.GoInt>, _y:stdgo.Slice<stdgo.GoInt>):Bool
```


[\(view code\)](<./Regexp.hx#L2554>)


## function \_shouldBacktrack


```haxe
function _shouldBacktrack(_prog:stdgo.Ref<stdgo.regexp.syntax.Prog>):Bool
```



shouldBacktrack reports whether the program is too
long for the backtracker to run.  

[\(view code\)](<./Regexp.hx#L2190>)


## function \_special


```haxe
function _special(_b:stdgo.GoByte):Bool
```



special reports whether byte b needs to be escaped by QuoteMeta.  

[\(view code\)](<./Regexp.hx#L3947>)


## function \_testFindAllIndex


```haxe
function _testFindAllIndex(_test:stdgo.Ref<stdgo.regexp.FindTest>, _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>>, _t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L3046>)


## function \_testFindAllSubmatchIndex


```haxe
function _testFindAllSubmatchIndex(_test:stdgo.Ref<stdgo.regexp.FindTest>, _result:stdgo.Slice<stdgo.Slice<stdgo.GoInt>>, _t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L3213>)


## function \_testFindIndex


```haxe
function _testFindIndex(_test:stdgo.Ref<stdgo.regexp.FindTest>, _result:stdgo.Slice<stdgo.GoInt>, _t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L2973>)


## function \_testFindSubmatchIndex


```haxe
function _testFindSubmatchIndex(_test:stdgo.Ref<stdgo.regexp.FindTest>, _result:stdgo.Slice<stdgo.GoInt>, _t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L3157>)


## function \_testFowler


```haxe
function _testFowler(_t:stdgo.Ref<stdgo.testing.T_>, _file:stdgo.GoString):Void
```


[\(view code\)](<./Regexp.hx#L2580>)


## function \_testRE2


```haxe
function _testRE2(_t:stdgo.Ref<stdgo.testing.T_>, _file:stdgo.GoString):Void
```


[\(view code\)](<./Regexp.hx#L2269>)


## function \_testSubmatchBytes


```haxe
function _testSubmatchBytes(_test:stdgo.Ref<stdgo.regexp.FindTest>, _n:stdgo.GoInt, _submatches:stdgo.Slice<stdgo.GoInt>, _result:stdgo.Slice<stdgo.Slice<stdgo.GoByte>>, _t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L3073>)


## function \_testSubmatchIndices


```haxe
function _testSubmatchIndices(_test:stdgo.Ref<stdgo.regexp.FindTest>, _n:stdgo.GoInt, _expect:stdgo.Slice<stdgo.GoInt>, _result:stdgo.Slice<stdgo.GoInt>, _t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L3146>)


## function \_testSubmatchString


```haxe
function _testSubmatchString(_test:stdgo.Ref<stdgo.regexp.FindTest>, _n:stdgo.GoInt, _submatches:stdgo.Slice<stdgo.GoInt>, _result:stdgo.Slice<stdgo.GoString>, _t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L3112>)


## function \_tryCompile


```haxe
function _tryCompile(_s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo.regexp.Regexp>;
}
```


[\(view code\)](<./Regexp.hx#L2467>)


## function benchmarkAnchoredLiteralLongNonMatch


```haxe
function benchmarkAnchoredLiteralLongNonMatch(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1915>)


## function benchmarkAnchoredLiteralShortNonMatch


```haxe
function benchmarkAnchoredLiteralShortNonMatch(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1903>)


## function benchmarkAnchoredLongMatch


```haxe
function benchmarkAnchoredLongMatch(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1945>)


## function benchmarkAnchoredShortMatch


```haxe
function benchmarkAnchoredShortMatch(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1933>)


## function benchmarkCompile


```haxe
function benchmarkCompile(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L2087>)


## function benchmarkFind


```haxe
function benchmarkFind(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1746>)


## function benchmarkFindAllNoMatches


```haxe
function benchmarkFindAllNoMatches(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1763>)


## function benchmarkFindString


```haxe
function benchmarkFindString(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1778>)


## function benchmarkFindStringSubmatch


```haxe
function benchmarkFindStringSubmatch(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1815>)


## function benchmarkFindSubmatch


```haxe
function benchmarkFindSubmatch(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1795>)


## function benchmarkLiteral


```haxe
function benchmarkLiteral(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1835>)


## function benchmarkMatch


```haxe
function benchmarkMatch(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L2835>)


## function benchmarkMatchClass


```haxe
function benchmarkMatchClass(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1863>)


## function benchmarkMatchClass\_InRange


```haxe
function benchmarkMatchClass_InRange(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1877>)


## function benchmarkMatchParallelCopied


```haxe
function benchmarkMatchParallelCopied(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L2045>)


## function benchmarkMatchParallelShared


```haxe
function benchmarkMatchParallelShared(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L2035>)


## function benchmarkMatch\_onepass\_regex


```haxe
function benchmarkMatch_onepass_regex(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L2858>)


## function benchmarkNotLiteral


```haxe
function benchmarkNotLiteral(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1849>)


## function benchmarkNotOnePassShortA


```haxe
function benchmarkNotOnePassShortA(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1975>)


## function benchmarkNotOnePassShortB


```haxe
function benchmarkNotOnePassShortB(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1999>)


## function benchmarkOnePassLongNotPrefix


```haxe
function benchmarkOnePassLongNotPrefix(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L2023>)


## function benchmarkOnePassLongPrefix


```haxe
function benchmarkOnePassLongPrefix(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L2011>)


## function benchmarkOnePassShortA


```haxe
function benchmarkOnePassShortA(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1963>)


## function benchmarkOnePassShortB


```haxe
function benchmarkOnePassShortB(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1987>)


## function benchmarkQuoteMetaAll


```haxe
function benchmarkQuoteMetaAll(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L2056>)


## function benchmarkQuoteMetaNone


```haxe
function benchmarkQuoteMetaNone(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L2076>)


## function benchmarkReplaceAll


```haxe
function benchmarkReplaceAll(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Regexp.hx#L1891>)


## function compile


```haxe
function compile(_expr:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo.regexp.Regexp>;
}
```



Compile parses a regular expression and returns, if successful,
a Regexp object that can be used to match against text.  


When matching against text, the regexp returns a match that
begins as early as possible in the input \(leftmost\), and among those
it chooses the one that a backtracking search would have found first.
This so\-called leftmost\-first matching is the same semantics
that Perl, Python, and other implementations use, although this
package implements it without the expense of backtracking.
For POSIX leftmost\-longest matching, see CompilePOSIX.  

[\(view code\)](<./Regexp.hx#L3758>)


## function compilePOSIX


```haxe
function compilePOSIX(_expr:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Ref<stdgo.regexp.Regexp>;
}
```



CompilePOSIX is like Compile but restricts the regular expression
to POSIX ERE \(egrep\) syntax and changes the match semantics to
leftmost\-longest.  


That is, when matching against text, the regexp returns a match that
begins as early as possible in the input \(leftmost\), and among those
it chooses a match that is as long as possible.
This so\-called leftmost\-longest matching is the same semantics
that early regular expression implementations used and that POSIX
specifies.  


However, there can be multiple leftmost\-longest matches, with different
submatch choices, and here this package diverges from POSIX.
Among the possible leftmost\-longest matches, this package chooses
the one that a backtracking search would have found first, while POSIX
specifies that the match be chosen to maximize the length of the first
subexpression, then the second, and so on from left to right.
The POSIX rule is computationally prohibitive and not even well\-defined.
See https://swtch.com/~rsc/regexp/regexp2.html#posix for details.  

[\(view code\)](<./Regexp.hx#L3782>)


## function match


```haxe
function match(_pattern:stdgo.GoString, _b:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:Bool;
}
```



Match reports whether the byte slice b
contains any match of the regular expression pattern.
More complicated queries need to use Compile and the full Regexp interface.  

### exampleMatch


<details><summary></summary>
<p>


```haxe
function exampleMatch():Void {
        var __tmp__ = stdgo.regexp.Regexp.match(("foo.*" : stdgo.GoString), (("seafood" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)), _matched:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_matched), stdgo.Go.toInterface(_err));
        {
            var __tmp__ = stdgo.regexp.Regexp.match(("bar.*" : stdgo.GoString), (("seafood" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
            _matched = __tmp__._0;
            _err = __tmp__._1;
        };
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_matched), stdgo.Go.toInterface(_err));
        {
            var __tmp__ = stdgo.regexp.Regexp.match(("a(b" : stdgo.GoString), (("seafood" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
            _matched = __tmp__._0;
            _err = __tmp__._1;
        };
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_matched), stdgo.Go.toInterface(_err));
    }
```


</p>
</details>


[\(view code\)](<./Regexp.hx#L3936>)


## function matchReader


```haxe
function matchReader(_pattern:stdgo.GoString, _r:stdgo.io.RuneReader):{
	_1:stdgo.Error;
	_0:Bool;
}
```



MatchReader reports whether the text returned by the RuneReader
contains any match of the regular expression pattern.
More complicated queries need to use Compile and the full Regexp interface.  

[\(view code\)](<./Regexp.hx#L3910>)


## function matchString


```haxe
function matchString(_pattern:stdgo.GoString, _s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:Bool;
}
```



MatchString reports whether the string s
contains any match of the regular expression pattern.
More complicated queries need to use Compile and the full Regexp interface.  

### exampleMatchString


<details><summary></summary>
<p>


```haxe
function exampleMatchString():Void {
        var __tmp__ = stdgo.regexp.Regexp.matchString(("foo.*" : stdgo.GoString), ("seafood" : stdgo.GoString)), _matched:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_matched), stdgo.Go.toInterface(_err));
        {
            var __tmp__ = stdgo.regexp.Regexp.matchString(("bar.*" : stdgo.GoString), ("seafood" : stdgo.GoString));
            _matched = __tmp__._0;
            _err = __tmp__._1;
        };
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_matched), stdgo.Go.toInterface(_err));
        {
            var __tmp__ = stdgo.regexp.Regexp.matchString(("a(b" : stdgo.GoString), ("seafood" : stdgo.GoString));
            _matched = __tmp__._0;
            _err = __tmp__._1;
        };
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_matched), stdgo.Go.toInterface(_err));
    }
```


</p>
</details>


[\(view code\)](<./Regexp.hx#L3923>)


## function mustCompile


```haxe
function mustCompile(_str:stdgo.GoString):stdgo.Ref<stdgo.regexp.Regexp>
```



MustCompile is like Compile but panics if the expression cannot be parsed.
It simplifies safe initialization of global variables holding compiled regular
expressions.  

[\(view code\)](<./Regexp.hx#L3880>)


## function mustCompilePOSIX


```haxe
function mustCompilePOSIX(_str:stdgo.GoString):stdgo.Ref<stdgo.regexp.Regexp>
```



MustCompilePOSIX is like CompilePOSIX but panics if the expression cannot be parsed.
It simplifies safe initialization of global variables holding compiled regular
expressions.  

[\(view code\)](<./Regexp.hx#L3892>)


## function quoteMeta


```haxe
function quoteMeta(_s:stdgo.GoString):stdgo.GoString
```



QuoteMeta returns a string that escapes all regular expression metacharacters
inside the argument text; the returned string is a regular expression matching
the literal text.  

### exampleQuoteMeta


<details><summary></summary>
<p>


```haxe
function exampleQuoteMeta():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.regexp.Regexp.quoteMeta(("Escaping symbols like: .+*?()|[]{}^$" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Regexp.hx#L3955>)


## function testBadCompile


```haxe
function testBadCompile(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L1484>)


## function testCompileOnePass


```haxe
function testCompileOnePass(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L3698>)


## function testCopyMatch


```haxe
function testCopyMatch(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L1536>)


## function testDeepEqual


```haxe
function testDeepEqual(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L2105>)


## function testFind


```haxe
function testFind(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L2934>)


## function testFindAll


```haxe
function testFindAll(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L3000>)


## function testFindAllIndex


```haxe
function testFindAllIndex(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L3063>)


## function testFindAllString


```haxe
function testFindAllString(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L3025>)


## function testFindAllStringIndex


```haxe
function testFindAllStringIndex(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L3068>)


## function testFindAllStringSubmatch


```haxe
function testFindAllStringSubmatch(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L3197>)


## function testFindAllStringSubmatchIndex


```haxe
function testFindAllStringSubmatchIndex(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L3231>)


## function testFindAllSubmatch


```haxe
function testFindAllSubmatch(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L3181>)


## function testFindAllSubmatchIndex


```haxe
function testFindAllSubmatchIndex(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L3226>)


## function testFindIndex


```haxe
function testFindIndex(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L2985>)


## function testFindReaderIndex


```haxe
function testFindReaderIndex(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L2995>)


## function testFindReaderSubmatchIndex


```haxe
function testFindReaderSubmatchIndex(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L3176>)


## function testFindString


```haxe
function testFindString(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L2956>)


## function testFindStringIndex


```haxe
function testFindStringIndex(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L2990>)


## function testFindStringSubmatch


```haxe
function testFindStringSubmatch(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L3134>)


## function testFindStringSubmatchIndex


```haxe
function testFindStringSubmatchIndex(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L3171>)


## function testFindSubmatch


```haxe
function testFindSubmatch(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L3100>)


## function testFindSubmatchIndex


```haxe
function testFindSubmatchIndex(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L3166>)


## function testFowler


```haxe
function testFowler(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



TestFowler runs this package's regexp API against the
POSIX regular expression tests collected by Glenn Fowler
at http://www2.research.att.com/~astopen/testregex/testregex.html.  

[\(view code\)](<./Regexp.hx#L2570>)


## function testGoodCompile


```haxe
function testGoodCompile(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L1476>)


## function testLiteralPrefix


```haxe
function testLiteralPrefix(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L1635>)


## function testLongest


```haxe
function testLongest(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L2883>)


## function testMatch


```haxe
function testMatch(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L1506>)


## function testMatchFunction


```haxe
function testMatchFunction(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L1520>)


## function testMergeRuneSet


```haxe
function testMergeRuneSet(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L3687>)


## function testMinInputLen


```haxe
function testMinInputLen(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L2124>)


## function testOnePassCutoff


```haxe
function testOnePassCutoff(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



Check that one\-pass cutoff does trigger.  

[\(view code\)](<./Regexp.hx#L1723>)


## function testParseAndCompile


```haxe
function testParseAndCompile(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



The following sequence of Match calls used to panic. See issue \#12980.  

[\(view code\)](<./Regexp.hx#L1700>)


## function testProgramTooLongForBacktrack


```haxe
function testProgramTooLongForBacktrack(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



TestProgramTooLongForBacktrack tests that a regex which is too long
for the backtracker still executes properly.  

[\(view code\)](<./Regexp.hx#L2906>)


## function testQuoteMeta


```haxe
function testQuoteMeta(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L1612>)


## function testRE2Exhaustive


```haxe
function testRE2Exhaustive(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



This test is excluded when running under the race detector because
it is a very expensive test and takes too long.  

[\(view code\)](<./Regexp.hx#L2215>)


## function testRE2Search


```haxe
function testRE2Search(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



TestRE2 tests this package's regexp API against test cases
considered during RE2's exhaustive tests, which run all possible
regexps over a given set of atoms and operators, up to a given
complexity, over all possible strings over a given alphabet,
up to a given size. Rather than try to link with RE2, we read a
log file containing the test cases and the expected matches.
The log file, re2\-exhaustive.txt, is generated by running 'make log'
in the open source RE2 distribution https://github.com/google/re2/.  


The test file format is a sequence of stanzas like:  

```
	strings
	"abc"
	"123x"
	regexps
	"[a-z]+"
	0-3;0-3
	-;-
	"([0-9])([0-9])([0-9])"
	-;-
	-;0-3 0-1 1-2 2-3
```

The stanza begins by defining a set of strings, quoted
using Go double\-quote syntax, one per line. Then the
regexps section gives a sequence of regexps to run on
the strings. In the block that follows a regexp, each line
gives the semicolon\-separated match results of running
the regexp on the corresponding string.
Each match result is either a single \-, meaning no match, or a
space\-separated sequence of pairs giving the match and
submatch indices. An unmatched subexpression formats
its pair as a single \- \(not illustrated above\).  For now
each regexp run produces two match results, one for a
“full match” that restricts the regexp to matching the entire
string or nothing, and one for a “partial match” that gives
the leftmost first match found in the string.  


Lines beginning with \# are comments. Lines beginning with
a capital letter are test names printed during RE2's test suite
and are echoed into t but otherwise ignored.  


At time of writing, re2\-exhaustive.txt is 59 MB but compresses to 385 kB,
so we store re2\-exhaustive.txt.bz2 in the repository and decompress it on the fly.  

[\(view code\)](<./Regexp.hx#L2266>)


## function testReplaceAll


```haxe
function testReplaceAll(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L1541>)


## function testReplaceAllFunc


```haxe
function testReplaceAllFunc(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L1593>)


## function testReplaceAllLiteral


```haxe
function testReplaceAllLiteral(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L1558>)


## function testRunOnePass


```haxe
function testRunOnePass(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L3730>)


## function testSplit


```haxe
function testSplit(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L1678>)


## function testSubexp


```haxe
function testSubexp(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L1647>)


## function testSwitchBacktrack


```haxe
function testSwitchBacktrack(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



Check that the same machine can be used with the standard matcher
and then the backtracker when there are no captures.  

[\(view code\)](<./Regexp.hx#L1740>)


## function testUnmarshalText


```haxe
function testUnmarshalText(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Regexp.hx#L2133>)


# Classes


```haxe
import stdgo.regexp.*
```


## class FindTest



For each pattern/text pair, what is the expected output of each function?
We can derive the textual results from the indexed results, the non\-submatch
results from the submatched results, the single results from the 'all' results,
and the byte results from the string results. Therefore the table includes
only the FindAllStringSubmatchIndex result.  

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


[\(view code\)](<./Regexp.hx#L1122>)


### FindTest function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Regexp.hx#L4534>)


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


[\(view code\)](<./Regexp.hx#L890>)


## class Regexp



Regexp is the representation of a compiled regular expression.
A Regexp is safe for concurrent use by multiple goroutines,
except for configuration methods, such as Longest.  

```haxe
var _cond:stdgo.regexp.syntax.EmptyOp
```


```haxe
var _expr:stdgo.GoString
```


```haxe
var _longest:Bool
```



This field can be modified by the Longest method,
but it is otherwise read\-only.  

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
var _onepass:stdgo.Ref<stdgo.regexp.T_onePassProg>
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
var _prog:stdgo.Ref<stdgo.regexp.syntax.Prog>
```


```haxe
var _subexpNames:stdgo.Slice<stdgo.GoString>
```


### Regexp function new


```haxe
function new(?_expr:stdgo.GoString, ?_prog:stdgo.Ref<stdgo.regexp.syntax.Prog>, ?_onepass:stdgo.Ref<stdgo.regexp.T_onePassProg>, ?_numSubexp:Null<stdgo.GoInt>, ?_maxBitStateLen:Null<stdgo.GoInt>, ?_subexpNames:stdgo.Slice<stdgo.GoString>, ?_prefix:stdgo.GoString, ?_prefixBytes:stdgo.Slice<stdgo.GoUInt8>, ?_prefixRune:stdgo.GoInt32, ?_prefixEnd:stdgo.GoUInt32, ?_mpool:Null<stdgo.GoInt>, ?_matchcap:Null<stdgo.GoInt>, ?_prefixComplete:Bool, ?_cond:Null<stdgo.regexp.syntax.EmptyOp>, ?_minInputLen:Null<stdgo.GoInt>, ?_longest:Bool):Void
```


[\(view code\)](<./Regexp.hx#L1230>)


### Regexp function \_allMatches


```haxe
function _allMatches( _s:stdgo.GoString, _b:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt, _deliver:()):Void
```



allMatches calls deliver at most n times
with the location of successive matches in the input text.
The input text is b if non\-nil, otherwise s.  

[\(view code\)](<./Regexp.hx#L5563>)


### Regexp function \_backtrack


```haxe
function _backtrack( _ib:stdgo.Slice<stdgo.GoByte>, _is:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt>
```



backtrack runs a backtracking search of prog on the input starting at pos.  

[\(view code\)](<./Regexp.hx#L6119>)


### Regexp function \_doExecute


```haxe
function _doExecute( _r:stdgo.io.RuneReader, _b:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt>
```



doExecute finds the leftmost match in the input, appends the position
of its subexpressions to dstCap and returns dstCap.  


nil is returned if no matches are found and non\-nil if matches are found.  

[\(view code\)](<./Regexp.hx#L5946>)


### Regexp function \_doMatch


```haxe
function _doMatch( _r:stdgo.io.RuneReader, _b:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):Bool
```



doMatch reports whether either r, b or s match the regexp.  

[\(view code\)](<./Regexp.hx#L5975>)


### Regexp function \_doOnePass


```haxe
function _doOnePass( _ir:stdgo.io.RuneReader, _ib:stdgo.Slice<stdgo.GoByte>, _is:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt>
```



doOnePass implements r.doExecute using the one\-pass execution engine.  

[\(view code\)](<./Regexp.hx#L5983>)


### Regexp function \_expand


```haxe
function _expand( _dst:stdgo.Slice<stdgo.GoByte>, _template:stdgo.GoString, _bsrc:stdgo.Slice<stdgo.GoByte>, _src:stdgo.GoString, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Regexp.hx#L5376>)


### Regexp function \_get


```haxe
function _get():stdgo.Ref<stdgo.regexp.T_machine>
```



get returns a machine to use for matching re.
It uses the re's machine cache if possible, to avoid
unnecessary allocation.  

[\(view code\)](<./Regexp.hx#L5874>)


### Regexp function \_pad


```haxe
function _pad( _a:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt>
```



The number of capture values in the program may correspond
to fewer capturing expressions than are in the regexp.
For example, "\(a\)\{0\}" turns into an empty program, so the
maximum capture in the program is 0 but we need to return
an expression for \\1.  Pad appends \-1s to the slice a as needed.  

[\(view code\)](<./Regexp.hx#L5621>)


### Regexp function \_put


```haxe
function _put( _m:stdgo.Ref<stdgo.regexp.T_machine>):Void
```



put returns a machine to the correct machine pool.  

[\(view code\)](<./Regexp.hx#L5861>)


### Regexp function \_replaceAll


```haxe
function _replaceAll( _bsrc:stdgo.Slice<stdgo.GoByte>, _src:stdgo.GoString, _nmatch:stdgo.GoInt, _repl:(_dst:stdgo.Slice<stdgo.GoByte>, _m:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Regexp.hx#L5679>)


### Regexp function \_tryBacktrack


```haxe
function _tryBacktrack( _b:stdgo.Ref<stdgo.regexp.T_bitState>, _i:stdgo.regexp.T_input, _pc:stdgo.GoUInt32, _pos:stdgo.GoInt):Bool
```



tryBacktrack runs a backtracking search starting at pos.  

[\(view code\)](<./Regexp.hx#L6175>)


### Regexp function copy


```haxe
function copy():stdgo.Ref<stdgo.regexp.Regexp>
```



Copy returns a new Regexp object copied from re.
Calling Longest on one copy does not affect another.  


Deprecated: In earlier releases, when using a Regexp in multiple goroutines,
giving each goroutine its own copy helped to avoid lock contention.
As of Go 1.12, using Copy is no longer necessary to avoid lock contention.
Copy may still be appropriate if the reason for its use is to make
two copies with different Longest settings.  

[\(view code\)](<./Regexp.hx#L5926>)


### Regexp function expand


```haxe
function expand( _dst:stdgo.Slice<stdgo.GoByte>, _template:stdgo.Slice<stdgo.GoByte>, _src:stdgo.Slice<stdgo.GoByte>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoByte>
```



Expand appends template to dst and returns the result; during the
append, Expand replaces variables in the template with corresponding
matches drawn from src. The match slice should have been returned by
FindSubmatchIndex.  


In the template, a variable is denoted by a substring of the form
$name or $\{name\}, where name is a non\-empty sequence of letters,
digits, and underscores. A purely numeric name like $1 refers to
the submatch with the corresponding index; other names refer to
capturing parentheses named with the \(?P\<name\>...\) syntax. A
reference to an out of range or unmatched index or a name that is not
present in the regular expression is replaced with an empty slice.  


In the $name form, name is taken to be as long as possible: $1x is
equivalent to $\{1x\}, not $\{1\}x, and, $10 is equivalent to $\{10\}, not $\{1\}0.  


To insert a literal $ in the output, use $$ in the template.  

[\(view code\)](<./Regexp.hx#L5450>)


### Regexp function expandString


```haxe
function expandString( _dst:stdgo.Slice<stdgo.GoByte>, _template:stdgo.GoString, _src:stdgo.GoString, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoByte>
```



ExpandString is like Expand but the template and source are strings.
It appends to and returns a byte slice in order to give the calling
code control over allocation.  

[\(view code\)](<./Regexp.hx#L5426>)


### Regexp function find


```haxe
function find( _b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```



Find returns a slice holding the text of the leftmost match in b of the regular expression.
A return value of nil indicates no match.  

[\(view code\)](<./Regexp.hx#L5548>)


### Regexp function findAll


```haxe
function findAll( _b:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>
```



FindAll is the 'All' version of Find; it returns a slice of all successive
matches of the expression, as defined by the 'All' description in the
package comment.
A return value of nil indicates no match.  

[\(view code\)](<./Regexp.hx#L5302>)


### Regexp function findAllIndex


```haxe
function findAllIndex( _b:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>>
```



FindAllIndex is the 'All' version of FindIndex; it returns a slice of all
successive matches of the expression, as defined by the 'All' description
in the package comment.
A return value of nil indicates no match.  

[\(view code\)](<./Regexp.hx#L5281>)


### Regexp function findAllString


```haxe
function findAllString( _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString>
```



FindAllString is the 'All' version of FindString; it returns a slice of all
successive matches of the expression, as defined by the 'All' description
in the package comment.
A return value of nil indicates no match.  

[\(view code\)](<./Regexp.hx#L5260>)


### Regexp function findAllStringIndex


```haxe
function findAllStringIndex( _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>>
```



FindAllStringIndex is the 'All' version of FindStringIndex; it returns a
slice of all successive matches of the expression, as defined by the 'All'
description in the package comment.
A return value of nil indicates no match.  

[\(view code\)](<./Regexp.hx#L5239>)


### Regexp function findAllStringSubmatch


```haxe
function findAllStringSubmatch( _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoString>>
```



FindAllStringSubmatch is the 'All' version of FindStringSubmatch; it
returns a slice of all successive matches of the expression, as defined by
the 'All' description in the package comment.
A return value of nil indicates no match.  

[\(view code\)](<./Regexp.hx#L5164>)


### Regexp function findAllStringSubmatchIndex


```haxe
function findAllStringSubmatchIndex( _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>>
```



FindAllStringSubmatchIndex is the 'All' version of
FindStringSubmatchIndex; it returns a slice of all successive matches of
the expression, as defined by the 'All' description in the package
comment.
A return value of nil indicates no match.  

[\(view code\)](<./Regexp.hx#L5143>)


### Regexp function findAllSubmatch


```haxe
function findAllSubmatch( _b:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoByte>>>
```



FindAllSubmatch is the 'All' version of FindSubmatch; it returns a slice
of all successive matches of the expression, as defined by the 'All'
description in the package comment.
A return value of nil indicates no match.  

[\(view code\)](<./Regexp.hx#L5212>)


### Regexp function findAllSubmatchIndex


```haxe
function findAllSubmatchIndex( _b:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>>
```



FindAllSubmatchIndex is the 'All' version of FindSubmatchIndex; it returns
a slice of all successive matches of the expression, as defined by the
'All' description in the package comment.
A return value of nil indicates no match.  

[\(view code\)](<./Regexp.hx#L5191>)


### Regexp function findIndex


```haxe
function findIndex( _b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoInt>
```



FindIndex returns a two\-element slice of integers defining the location of
the leftmost match in b of the regular expression. The match itself is at
b\[loc\[0\]:loc\[1\]\].
A return value of nil indicates no match.  

[\(view code\)](<./Regexp.hx#L5534>)


### Regexp function findReaderIndex


```haxe
function findReaderIndex( _r:stdgo.io.RuneReader):stdgo.Slice<stdgo.GoInt>
```



FindReaderIndex returns a two\-element slice of integers defining the
location of the leftmost match of the regular expression in text read from
the RuneReader. The match text was found in the input stream at
byte offset loc\[0\] through loc\[1\]\-1.
A return value of nil indicates no match.  

[\(view code\)](<./Regexp.hx#L5485>)


### Regexp function findReaderSubmatchIndex


```haxe
function findReaderSubmatchIndex( _r:stdgo.io.RuneReader):stdgo.Slice<stdgo.GoInt>
```



FindReaderSubmatchIndex returns a slice holding the index pairs
identifying the leftmost match of the regular expression of text read by
the RuneReader, and the matches, if any, of its subexpressions, as defined
by the 'Submatch' and 'Index' descriptions in the package comment. A
return value of nil indicates no match.  

[\(view code\)](<./Regexp.hx#L5324>)


### Regexp function findString


```haxe
function findString( _s:stdgo.GoString):stdgo.GoString
```



FindString returns a string holding the text of the leftmost match in s of the regular
expression. If there is no match, the return value is an empty string,
but it will also be empty if the regular expression successfully matches
an empty string. Use FindStringIndex or FindStringSubmatch if it is
necessary to distinguish these cases.  

[\(view code\)](<./Regexp.hx#L5518>)


### Regexp function findStringIndex


```haxe
function findStringIndex( _s:stdgo.GoString):stdgo.Slice<stdgo.GoInt>
```



FindStringIndex returns a two\-element slice of integers defining the
location of the leftmost match in s of the regular expression. The match
itself is at s\[loc\[0\]:loc\[1\]\].
A return value of nil indicates no match.  

[\(view code\)](<./Regexp.hx#L5501>)


### Regexp function findStringSubmatch


```haxe
function findStringSubmatch( _s:stdgo.GoString):stdgo.Slice<stdgo.GoString>
```



FindStringSubmatch returns a slice of strings holding the text of the
leftmost match of the regular expression in s and the matches, if any, of
its subexpressions, as defined by the 'Submatch' description in the
package comment.
A return value of nil indicates no match.  

[\(view code\)](<./Regexp.hx#L5348>)


### Regexp function findStringSubmatchIndex


```haxe
function findStringSubmatchIndex( _s:stdgo.GoString):stdgo.Slice<stdgo.GoInt>
```



FindStringSubmatchIndex returns a slice holding the index pairs
identifying the leftmost match of the regular expression in s and the
matches, if any, of its subexpressions, as defined by the 'Submatch' and
'Index' descriptions in the package comment.
A return value of nil indicates no match.  

[\(view code\)](<./Regexp.hx#L5336>)


### Regexp function findSubmatch


```haxe
function findSubmatch( _b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>
```



FindSubmatch returns a slice of slices holding the text of the leftmost
match of the regular expression in b and the matches, if any, of its
subexpressions, as defined by the 'Submatch' descriptions in the package
comment.
A return value of nil indicates no match.  

[\(view code\)](<./Regexp.hx#L5462>)


### Regexp function findSubmatchIndex


```haxe
function findSubmatchIndex( _b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoInt>
```



FindSubmatchIndex returns a slice holding the index pairs identifying the
leftmost match of the regular expression in b and the matches, if any, of
its subexpressions, as defined by the 'Submatch' and 'Index' descriptions
in the package comment.
A return value of nil indicates no match.  

[\(view code\)](<./Regexp.hx#L5371>)


### Regexp function literalPrefix


```haxe
function literalPrefix():{
	_1:Bool;
	_0:stdgo.GoString;
}
```



LiteralPrefix returns a literal string that must begin any match
of the regular expression re. It returns the boolean true if the
literal string comprises the entire regular expression.  

[\(view code\)](<./Regexp.hx#L5811>)


### Regexp function longest


```haxe
function longest():Void
```



Longest makes future searches prefer the leftmost\-longest match.
That is, when matching against text, the regexp returns a match that
begins as early as possible in the input \(leftmost\), and among those
it chooses a match that is as long as possible.
This method modifies the Regexp and may not be called concurrently
with any other methods.  

[\(view code\)](<./Regexp.hx#L5911>)


### Regexp function marshalText


```haxe
function marshalText():{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoByte>;
}
```



MarshalText implements \[encoding.TextMarshaler\]. The output
matches that of calling the \[Regexp.String\] method.  


Note that the output is lossy in some cases: This method does not indicate
POSIX regular expressions \(i.e. those compiled by calling \[CompilePOSIX\]\), or
those for which the \[Regexp.Longest\] method has been called.  

[\(view code\)](<./Regexp.hx#L5084>)


### Regexp function match


```haxe
function match( _b:stdgo.Slice<stdgo.GoByte>):Bool
```



Match reports whether the byte slice b
contains any match of the regular expression re.  

[\(view code\)](<./Regexp.hx#L5783>)


### Regexp function matchReader


```haxe
function matchReader( _r:stdgo.io.RuneReader):Bool
```



MatchReader reports whether the text returned by the RuneReader
contains any match of the regular expression re.  

[\(view code\)](<./Regexp.hx#L5801>)


### Regexp function matchString


```haxe
function matchString( _s:stdgo.GoString):Bool
```



MatchString reports whether the string s
contains any match of the regular expression re.  

[\(view code\)](<./Regexp.hx#L5792>)


### Regexp function numSubexp


```haxe
function numSubexp():stdgo.GoInt
```



NumSubexp returns the number of parenthesized subexpressions in this Regexp.  

[\(view code\)](<./Regexp.hx#L5853>)


### Regexp function replaceAll


```haxe
function replaceAll( _src:stdgo.Slice<stdgo.GoByte>, _repl:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```



ReplaceAll returns a copy of src, replacing matches of the Regexp
with the replacement text repl. Inside repl, $ signs are interpreted as
in Expand, so for instance $1 represents the text of the first submatch.  

[\(view code\)](<./Regexp.hx#L5663>)


### Regexp function replaceAllFunc


```haxe
function replaceAllFunc( _src:stdgo.Slice<stdgo.GoByte>, _repl:()):stdgo.Slice<stdgo.GoByte>
```



ReplaceAllFunc returns a copy of src in which all matches of the
Regexp have been replaced by the return value of function repl applied
to the matched byte slice. The replacement returned by repl is substituted
directly, without using Expand.  

[\(view code\)](<./Regexp.hx#L5639>)


### Regexp function replaceAllLiteral


```haxe
function replaceAllLiteral( _src:stdgo.Slice<stdgo.GoByte>, _repl:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```



ReplaceAllLiteral returns a copy of src, replacing matches of the Regexp
with the replacement bytes repl. The replacement repl is substituted directly,
without using Expand.  

[\(view code\)](<./Regexp.hx#L5651>)


### Regexp function replaceAllLiteralString


```haxe
function replaceAllLiteralString( _src:stdgo.GoString, _repl:stdgo.GoString):stdgo.GoString
```



ReplaceAllLiteralString returns a copy of src, replacing matches of the Regexp
with the replacement string repl. The replacement repl is substituted directly,
without using Expand.  

[\(view code\)](<./Regexp.hx#L5755>)


### Regexp function replaceAllString


```haxe
function replaceAllString( _src:stdgo.GoString, _repl:stdgo.GoString):stdgo.GoString
```



ReplaceAllString returns a copy of src, replacing matches of the Regexp
with the replacement string repl. Inside repl, $ signs are interpreted as
in Expand, so for instance $1 represents the text of the first submatch.  

[\(view code\)](<./Regexp.hx#L5767>)


### Regexp function replaceAllStringFunc


```haxe
function replaceAllStringFunc( _src:stdgo.GoString, _repl:()):stdgo.GoString
```



ReplaceAllStringFunc returns a copy of src in which all matches of the
Regexp have been replaced by the return value of function repl applied
to the matched substring. The replacement returned by repl is substituted
directly, without using Expand.  

[\(view code\)](<./Regexp.hx#L5742>)


### Regexp function split


```haxe
function split( _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString>
```



Split slices s into substrings separated by the expression and returns a slice of
the substrings between those expression matches.  


The slice returned by this method consists of all the substrings of s
not contained in the slice returned by FindAllString. When called on an expression
that contains no metacharacters, it is equivalent to strings.SplitN.  


Example:  

```
	s := regexp.MustCompile("a*").Split("abaabaccadaaae", 5)
	// s: ["", "b", "b", "c", "cadaaae"]
```

The count determines the number of substrings to return:  

```
	n > 0: at most n substrings; the last substring will be the unsplit remainder.
	n == 0: the result is nil (zero substrings)
	n < 0: all substrings
```
[\(view code\)](<./Regexp.hx#L5108>)


### Regexp function string


```haxe
function string():stdgo.GoString
```



String returns the source text used to compile the regular expression.  

[\(view code\)](<./Regexp.hx#L5935>)


### Regexp function subexpIndex


```haxe
function subexpIndex( _name:stdgo.GoString):stdgo.GoInt
```



SubexpIndex returns the index of the first subexpression with the given name,
or \-1 if there is no subexpression with that name.  


Note that multiple subexpressions can be written using the same name, as in
\(?P\<bob\>a\+\)\(?P\<bob\>b\+\), which declares two subexpressions named "bob".
In this case, SubexpIndex returns the index of the leftmost such subexpression
in the regular expression.  

[\(view code\)](<./Regexp.hx#L5826>)


### Regexp function subexpNames


```haxe
function subexpNames():stdgo.Slice<stdgo.GoString>
```



SubexpNames returns the names of the parenthesized subexpressions
in this Regexp. The name for the first sub\-expression is names\[1\],
so that if m is a match slice, the name for m\[i\] is SubexpNames\(\)\[i\].
Since the Regexp as a whole cannot be named, names\[0\] is always
the empty string. The slice should not be modified.  

[\(view code\)](<./Regexp.hx#L5845>)


### Regexp function unmarshalText


```haxe
function unmarshalText( _text:stdgo.Slice<stdgo.GoByte>):stdgo.Error
```



UnmarshalText implements \[encoding.TextUnmarshaler\] by calling
\[Compile\] on the encoded value.  

[\(view code\)](<./Regexp.hx#L5048>)


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


[\(view code\)](<./Regexp.hx#L869>)


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


[\(view code\)](<./Regexp.hx#L848>)


# Typedefs


```haxe
import stdgo.regexp.*
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
	_reFlags:stdgo.regexp.syntax.Flags;
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
	};	//  advance one rune
	public function _index(_re:stdgo.Ref<stdgo.regexp.Regexp>, _pos:stdgo.GoInt):stdgo.GoInt;
	public function _hasPrefix(_re:stdgo.Ref<stdgo.regexp.Regexp>):Bool;
	public function _context(_pos:stdgo.GoInt):stdgo.regexp.T_lazyFlag;
	public function _canCheckPrefix():Bool;	//  can we look ahead without losing info?
};
```



input abstracts different representations of the input text. It provides
one\-character lookahead.  

## typedef T\_lazyFlag


```haxe
typedef T_lazyFlag = stdgo.GoUInt64;
```



A lazyFlag is a lazily\-evaluated syntax.EmptyOp,
for checking zero\-width flags like ^ $ \\A \\z \\B \\b.
It records the pair of relevant runes and does not
determine the implied flags until absolutely necessary
\(most of the time, that means never\).  

## typedef T\_runeSlice


```haxe
typedef T_runeSlice = stdgo.Slice<stdgo.GoInt32>;
```



runeSlice exists to permit sorting the case\-folded rune sets.  

