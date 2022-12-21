# Module: `stdgo.strings`

[(view library index)](../stdgo.md)


# Overview


 


# Index


- [Variables](<#variables>)

- [`function _benchmarkBuilder(_b:stdgo.Ref<stdgo.testing.B>, _f:(_b:stdgo.Ref<stdgo.testing.B>, _numWrite:stdgo.GoInt, _grow:Bool):Void):Void`](<#function-_benchmarkbuilder>)

- [`function _benchmarkCountHard(_b:stdgo.Ref<stdgo.testing.B>, _sep:stdgo.GoString):Void`](<#function-_benchmarkcounthard>)

- [`function _benchmarkIndexHard(_b:stdgo.Ref<stdgo.testing.B>, _sep:stdgo.GoString):Void`](<#function-_benchmarkindexhard>)

- [`function _benchmarkLastIndexHard(_b:stdgo.Ref<stdgo.testing.B>, _sep:stdgo.GoString):Void`](<#function-_benchmarklastindexhard>)

- [`function _benchmarkSingleString(_b:stdgo.Ref<stdgo.testing.B>, _pattern:stdgo.GoString, _text:stdgo.GoString):Void`](<#function-_benchmarksinglestring>)

- [`function _check(_t:stdgo.Ref<stdgo.testing.T>, _b:stdgo.Ref<stdgo.strings.Builder>, _want:stdgo.GoString):Void`](<#function-_check>)

- [`function _eq(_a:stdgo.Slice<stdgo.GoString>, _b:stdgo.Slice<stdgo.GoString>):Bool`](<#function-_eq>)

- [`function _equal(_m:stdgo.GoString, _s1:stdgo.GoString, _s2:stdgo.GoString, _t:stdgo.Ref<stdgo.testing.T>):Bool`](<#function-_equal>)

- [`function _makeBenchInputHard():stdgo.GoString`](<#function-_makebenchinputhard>)

- [`function _not(_p:stdgo.strings_test._Strings_test.T_predicate):stdgo.strings_test._Strings_test.T_predicate`](<#function-_not>)

- [`function _oldHTMLEscape(_s:stdgo.GoString):stdgo.GoString`](<#function-_oldhtmlescape>)

- [`function _repeat(_s:stdgo.GoString, _count:stdgo.GoInt):stdgo.Error`](<#function-_repeat>)

- [`function _rot13(_r:stdgo.GoRune):stdgo.GoRune`](<#function-_rot13>)

- [`function _runIndexTests(_t:stdgo.Ref<stdgo.testing.T>, _f:(_s:stdgo.GoString, _sep:stdgo.GoString):stdgo.GoInt, _funcName:stdgo.GoString, _testCases:stdgo.Slice<stdgo.strings_test.IndexTest>):Void`](<#function-_runindextests>)

- [`function _runStringTests(_t:stdgo.Ref<stdgo.testing.T>, _f:(), _funcName:stdgo.GoString, _testCases:stdgo.Slice<stdgo.strings_test.StringTest>):Void`](<#function-_runstringtests>)

- [`function _runesEqual(_a:stdgo.Slice<stdgo.GoRune>, _b:stdgo.Slice<stdgo.GoRune>):Bool`](<#function-_runesequal>)

- [`function _simpleIndex(_s:stdgo.GoString, _sep:stdgo.GoString):stdgo.GoInt`](<#function-_simpleindex>)

- [`function _tenRunes(_ch:stdgo.GoRune):stdgo.GoString`](<#function-_tenrunes>)

- [`function benchmarkBuildString_Builder(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkbuildstring_builder>)

- [`function benchmarkBuildString_ByteBuffer(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkbuildstring_bytebuffer>)

- [`function benchmarkByteByteMap(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkbytebytemap>)

- [`function benchmarkByteByteMatch(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkbytebytematch>)

- [`function benchmarkByteByteNoMatch(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkbytebytenomatch>)

- [`function benchmarkByteByteReplaces(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkbytebytereplaces>)

- [`function benchmarkByteReplacerWriteString(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkbytereplacerwritestring>)

- [`function benchmarkByteStringMatch(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkbytestringmatch>)

- [`function benchmarkByteStringReplacerWriteString(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkbytestringreplacerwritestring>)

- [`function benchmarkClone(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkclone>)

- [`function benchmarkCountByte(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkcountbyte>)

- [`function benchmarkCountHard1(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkcounthard1>)

- [`function benchmarkCountHard2(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkcounthard2>)

- [`function benchmarkCountHard3(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkcounthard3>)

- [`function benchmarkCountTorture(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkcounttorture>)

- [`function benchmarkCountTortureOverlapping(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkcounttortureoverlapping>)

- [`function benchmarkEqualFold(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkequalfold>)

- [`function benchmarkFields(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkfields>)

- [`function benchmarkFieldsFunc(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkfieldsfunc>)

- [`function benchmarkGenericMatch1(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkgenericmatch1>)

- [`function benchmarkGenericMatch2(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkgenericmatch2>)

- [`function benchmarkGenericNoMatch(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkgenericnomatch>)

- [`function benchmarkHTMLEscapeNew(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkhtmlescapenew>)

- [`function benchmarkHTMLEscapeOld(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkhtmlescapeold>)

- [`function benchmarkIndex(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkindex>)

- [`function benchmarkIndexAnyASCII(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkindexanyascii>)

- [`function benchmarkIndexAnyUTF8(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkindexanyutf8>)

- [`function benchmarkIndexByte(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkindexbyte>)

- [`function benchmarkIndexHard1(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkindexhard1>)

- [`function benchmarkIndexHard2(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkindexhard2>)

- [`function benchmarkIndexHard3(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkindexhard3>)

- [`function benchmarkIndexHard4(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkindexhard4>)

- [`function benchmarkIndexPeriodic(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkindexperiodic>)

- [`function benchmarkIndexRune(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkindexrune>)

- [`function benchmarkIndexRuneFastPath(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkindexrunefastpath>)

- [`function benchmarkIndexRuneLongString(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkindexrunelongstring>)

- [`function benchmarkIndexTorture(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkindextorture>)

- [`function benchmarkJoin(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkjoin>)

- [`function benchmarkLastIndex(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarklastindex>)

- [`function benchmarkLastIndexAnyASCII(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarklastindexanyascii>)

- [`function benchmarkLastIndexAnyUTF8(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarklastindexanyutf8>)

- [`function benchmarkLastIndexHard1(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarklastindexhard1>)

- [`function benchmarkLastIndexHard2(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarklastindexhard2>)

- [`function benchmarkLastIndexHard3(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarklastindexhard3>)

- [`function benchmarkMap(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkmap>)

- [`function benchmarkMapNoChanges(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkmapnochanges>)

- [`function benchmarkRepeat(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkrepeat>)

- [`function benchmarkReplaceAll(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkreplaceall>)

- [`function benchmarkSingleLongSuffixFail(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksinglelongsuffixfail>)

- [`function benchmarkSingleMatch(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksinglematch>)

- [`function benchmarkSingleMaxSkipping(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksinglemaxskipping>)

- [`function benchmarkSplitEmptySeparator(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksplitemptyseparator>)

- [`function benchmarkSplitMultiByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksplitmultibyteseparator>)

- [`function benchmarkSplitNMultiByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksplitnmultibyteseparator>)

- [`function benchmarkSplitNSingleByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksplitnsinglebyteseparator>)

- [`function benchmarkSplitSingleByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksplitsinglebyteseparator>)

- [`function benchmarkToLower(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarktolower>)

- [`function benchmarkToUpper(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarktoupper>)

- [`function benchmarkToValidUTF8(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarktovalidutf8>)

- [`function benchmarkTrim(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarktrim>)

- [`function benchmarkTrimASCII(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarktrimascii>)

- [`function benchmarkTrimByte(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarktrimbyte>)

- [`function benchmarkTrimSpace(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarktrimspace>)

- [`function exampleBuilder():Void`](<#function-examplebuilder>)

- [`function exampleCompare():Void`](<#function-examplecompare>)

- [`function exampleContains():Void`](<#function-examplecontains>)

- [`function exampleContainsAny():Void`](<#function-examplecontainsany>)

- [`function exampleContainsRune():Void`](<#function-examplecontainsrune>)

- [`function exampleCount():Void`](<#function-examplecount>)

- [`function exampleCut():Void`](<#function-examplecut>)

- [`function exampleEqualFold():Void`](<#function-exampleequalfold>)

- [`function exampleFields():Void`](<#function-examplefields>)

- [`function exampleFieldsFunc():Void`](<#function-examplefieldsfunc>)

- [`function exampleHasPrefix():Void`](<#function-examplehasprefix>)

- [`function exampleHasSuffix():Void`](<#function-examplehassuffix>)

- [`function exampleIndex():Void`](<#function-exampleindex>)

- [`function exampleIndexAny():Void`](<#function-exampleindexany>)

- [`function exampleIndexByte():Void`](<#function-exampleindexbyte>)

- [`function exampleIndexFunc():Void`](<#function-exampleindexfunc>)

- [`function exampleIndexRune():Void`](<#function-exampleindexrune>)

- [`function exampleJoin():Void`](<#function-examplejoin>)

- [`function exampleLastIndex():Void`](<#function-examplelastindex>)

- [`function exampleLastIndexAny():Void`](<#function-examplelastindexany>)

- [`function exampleLastIndexByte():Void`](<#function-examplelastindexbyte>)

- [`function exampleLastIndexFunc():Void`](<#function-examplelastindexfunc>)

- [`function exampleMap():Void`](<#function-examplemap>)

- [`function exampleNewReplacer():Void`](<#function-examplenewreplacer>)

- [`function exampleRepeat():Void`](<#function-examplerepeat>)

- [`function exampleReplace():Void`](<#function-examplereplace>)

- [`function exampleReplaceAll():Void`](<#function-examplereplaceall>)

- [`function exampleSplit():Void`](<#function-examplesplit>)

- [`function exampleSplitAfter():Void`](<#function-examplesplitafter>)

- [`function exampleSplitAfterN():Void`](<#function-examplesplitaftern>)

- [`function exampleSplitN():Void`](<#function-examplesplitn>)

- [`function exampleTitle():Void`](<#function-exampletitle>)

- [`function exampleToLower():Void`](<#function-exampletolower>)

- [`function exampleToLowerSpecial():Void`](<#function-exampletolowerspecial>)

- [`function exampleToTitle():Void`](<#function-exampletotitle>)

- [`function exampleToTitleSpecial():Void`](<#function-exampletotitlespecial>)

- [`function exampleToUpper():Void`](<#function-exampletoupper>)

- [`function exampleToUpperSpecial():Void`](<#function-exampletoupperspecial>)

- [`function exampleTrim():Void`](<#function-exampletrim>)

- [`function exampleTrimFunc():Void`](<#function-exampletrimfunc>)

- [`function exampleTrimLeft():Void`](<#function-exampletrimleft>)

- [`function exampleTrimLeftFunc():Void`](<#function-exampletrimleftfunc>)

- [`function exampleTrimPrefix():Void`](<#function-exampletrimprefix>)

- [`function exampleTrimRight():Void`](<#function-exampletrimright>)

- [`function exampleTrimRightFunc():Void`](<#function-exampletrimrightfunc>)

- [`function exampleTrimSpace():Void`](<#function-exampletrimspace>)

- [`function exampleTrimSuffix():Void`](<#function-exampletrimsuffix>)

- [`function testBuilder(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testbuilder>)

- [`function testBuilderAllocs(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testbuilderallocs>)

- [`function testBuilderCopyPanic(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testbuildercopypanic>)

- [`function testBuilderGrow(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testbuildergrow>)

- [`function testBuilderReset(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testbuilderreset>)

- [`function testBuilderString(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testbuilderstring>)

- [`function testBuilderWrite2(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testbuilderwrite2>)

- [`function testBuilderWriteByte(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testbuilderwritebyte>)

- [`function testBuilderWriteInvalidRune(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testbuilderwriteinvalidrune>)

- [`function testCaseConsistency(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcaseconsistency>)

- [`function testClone(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testclone>)

- [`function testCompare(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcompare>)

- [`function testCompareIdenticalString(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcompareidenticalstring>)

- [`function testCompareStrings(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcomparestrings>)

- [`function testContains(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcontains>)

- [`function testContainsAny(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcontainsany>)

- [`function testContainsRune(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcontainsrune>)

- [`function testCount(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcount>)

- [`function testCut(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcut>)

- [`function testEmptyReaderConcurrent(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testemptyreaderconcurrent>)

- [`function testEqualFold(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testequalfold>)

- [`function testFields(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testfields>)

- [`function testFieldsFunc(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testfieldsfunc>)

- [`function testFinderCreation(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testfindercreation>)

- [`function testFinderNext(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testfindernext>)

- [`function testGenericTrieBuilding(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testgenerictriebuilding>)

- [`function testIndex(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testindex>)

- [`function testIndexAny(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testindexany>)

- [`function testIndexByte(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testindexbyte>)

- [`function testIndexFunc(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testindexfunc>)

- [`function testIndexRandom(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testindexrandom>)

- [`function testIndexRune(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testindexrune>)

- [`function testLastIndex(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testlastindex>)

- [`function testLastIndexAny(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testlastindexany>)

- [`function testLastIndexByte(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testlastindexbyte>)

- [`function testMap(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testmap>)

- [`function testPickAlgorithm(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testpickalgorithm>)

- [`function testReadAfterBigSeek(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreadafterbigseek>)

- [`function testReadByte(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreadbyte>)

- [`function testReadRune(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreadrune>)

- [`function testReader(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreader>)

- [`function testReaderAt(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreaderat>)

- [`function testReaderAtConcurrent(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreaderatconcurrent>)

- [`function testReaderLenSize(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreaderlensize>)

- [`function testReaderReset(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreaderreset>)

- [`function testReaderZero(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreaderzero>)

- [`function testRepeat(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testrepeat>)

- [`function testRepeatCatchesOverflow(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testrepeatcatchesoverflow>)

- [`function testReplace(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreplace>)

- [`function testReplacer(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreplacer>)

- [`function testRunes(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testrunes>)

- [`function testSpecialCase(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testspecialcase>)

- [`function testSplit(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testsplit>)

- [`function testSplitAfter(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testsplitafter>)

- [`function testTitle(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testtitle>)

- [`function testToLower(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testtolower>)

- [`function testToUpper(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testtoupper>)

- [`function testToValidUTF8(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testtovalidutf8>)

- [`function testTrim(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testtrim>)

- [`function testTrimFunc(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testtrimfunc>)

- [`function testTrimSpace(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testtrimspace>)

- [`function testUnreadRuneError(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testunreadruneerror>)

- [`function testWriteStringError(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testwritestringerror>)

- [`function testWriteTo(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testwriteto>)

- [`function main():Void`](<#function-main>)

- [class FieldsTest](<#class-fieldstest>)

  - [`function new(?_s:stdgo.GoString, ?_a:stdgo.Slice<stdgo.GoString>):Void`](<#fieldstest-function-new>)

- [class IndexTest](<#class-indextest>)

  - [`function new(?_s:stdgo.GoString, ?_sep:stdgo.GoString, ?_out:Null<stdgo.GoInt>):Void`](<#indextest-function-new>)

- [class SplitTest](<#class-splittest>)

  - [`function new(?_s:stdgo.GoString, ?_sep:stdgo.GoString, ?_n:Null<stdgo.GoInt>, ?_a:stdgo.Slice<stdgo.GoString>):Void`](<#splittest-function-new>)

- [class StringTest](<#class-stringtest>)

  - [`function new(?_in:stdgo.GoString, ?_out:stdgo.GoString):Void`](<#stringtest-function-new>)

- [class T\_errWriter\_static\_extension](<#class-t_errwriter_static_extension>)

  - [`function write(_:stdgo.strings_test._Strings_test.T_errWriter, _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_errwriter_static_extension-function-write>)

# Variables


```haxe
import stdgo.strings_test.Strings
```


```haxe
var containsAnyTests:stdgo.Slice<stdgo.strings_test._Strings_test.T__struct_22>
```


```haxe
var containsRuneTests:stdgo.Slice<stdgo.strings_test._Strings_test.T__struct_23>
```


```haxe
var containsTests:stdgo.Slice<stdgo.strings_test._Strings_test.T__struct_22>
```


```haxe
var countTests:stdgo.Slice<stdgo.strings_test._Strings_test.T__struct_25>
```


```haxe
var equalFoldTests:stdgo.Slice<stdgo.strings_test._Strings_test.T__struct_24>
```


```haxe
var fieldsFuncTests:stdgo.Slice<stdgo.strings_test.FieldsTest>
```


```haxe
var repeatTests:stdgo.Slice<stdgo.strings_test._Strings_test.T__struct_17>
```


```haxe
var replaceTests:stdgo.Slice<stdgo.strings_test._Strings_test.T__struct_21>
```


```haxe
var runesTests:stdgo.Slice<stdgo.strings_test._Strings_test.T__struct_19>
```


```haxe
var titleTests:stdgo.Slice<stdgo.strings_test.StringTest>
```


```haxe
var unreadRuneErrorTests:stdgo.Slice<stdgo.strings_test._Strings_test.T__struct_20>
```


```haxe
var _:Bool
```


# Functions


```haxe
import stdgo.strings_test.Strings
```


## function \_benchmarkBuilder


```haxe
function _benchmarkBuilder(_b:stdgo.Ref<stdgo.testing.B>, _f:(_b:stdgo.Ref<stdgo.testing.B>, _numWrite:stdgo.GoInt, _grow:Bool):Void):Void
```


 


[\(view code\)](<./Strings.hx#L2183>)


## function \_benchmarkCountHard


```haxe
function _benchmarkCountHard(_b:stdgo.Ref<stdgo.testing.B>, _sep:stdgo.GoString):Void
```


 


[\(view code\)](<./Strings.hx#L4883>)


## function \_benchmarkIndexHard


```haxe
function _benchmarkIndexHard(_b:stdgo.Ref<stdgo.testing.B>, _sep:stdgo.GoString):Void
```


 


[\(view code\)](<./Strings.hx#L4865>)


## function \_benchmarkLastIndexHard


```haxe
function _benchmarkLastIndexHard(_b:stdgo.Ref<stdgo.testing.B>, _sep:stdgo.GoString):Void
```


 


[\(view code\)](<./Strings.hx#L4874>)


## function \_benchmarkSingleString


```haxe
function _benchmarkSingleString(_b:stdgo.Ref<stdgo.testing.B>, _pattern:stdgo.GoString, _text:stdgo.GoString):Void
```


 


[\(view code\)](<./Strings.hx#L3464>)


## function \_check


```haxe
function _check(_t:stdgo.Ref<stdgo.testing.T>, _b:stdgo.Ref<stdgo.strings.Builder>, _want:stdgo.GoString):Void
```


 


[\(view code\)](<./Strings.hx#L1818>)


## function \_eq


```haxe
function _eq(_a:stdgo.Slice<stdgo.GoString>, _b:stdgo.Slice<stdgo.GoString>):Bool
```


 


[\(view code\)](<./Strings.hx#L3731>)


## function \_equal


```haxe
function _equal(_m:stdgo.GoString, _s1:stdgo.GoString, _s2:stdgo.GoString, _t:stdgo.Ref<stdgo.testing.T>):Bool
```


 


[\(view code\)](<./Strings.hx#L4436>)


## function \_makeBenchInputHard


```haxe
function _makeBenchInputHard():stdgo.GoString
```


 


[\(view code\)](<./Strings.hx#L4863>)


## function \_not


```haxe
function _not(_p:stdgo.strings_test._Strings_test.T_predicate):stdgo.strings_test._Strings_test.T_predicate
```


 


[\(view code\)](<./Strings.hx#L4400>)


## function \_oldHTMLEscape


```haxe
function _oldHTMLEscape(_s:stdgo.GoString):stdgo.GoString
```


The http package's old HTML escaping function. 


[\(view code\)](<./Strings.hx#L3102>)


## function \_repeat


```haxe
function _repeat(_s:stdgo.GoString, _count:stdgo.GoInt):stdgo.Error
```


 


[\(view code\)](<./Strings.hx#L4502>)


## function \_rot13


```haxe
function _rot13(_r:stdgo.GoRune):stdgo.GoRune
```


User\-defined self\-inverse mapping function 


[\(view code\)](<./Strings.hx#L4103>)


## function \_runIndexTests


```haxe
function _runIndexTests(_t:stdgo.Ref<stdgo.testing.T>, _f:(_s:stdgo.GoString, _sep:stdgo.GoString):stdgo.GoInt, _funcName:stdgo.GoString, _testCases:stdgo.Slice<stdgo.strings_test.IndexTest>):Void
```


Execute f on each test case.  funcName should be the name of f; it's used��// in failure reports. 


[\(view code\)](<./Strings.hx#L3750>)


## function \_runStringTests


```haxe
function _runStringTests(_t:stdgo.Ref<stdgo.testing.T>, _f:(), _funcName:stdgo.GoString, _testCases:stdgo.Slice<stdgo.strings_test.StringTest>):Void
```


Execute f on each test case.  funcName should be the name of f; it's used��// in failure reports. 


[\(view code\)](<./Strings.hx#L4083>)


## function \_runesEqual


```haxe
function _runesEqual(_a:stdgo.Slice<stdgo.GoRune>, _b:stdgo.Slice<stdgo.GoRune>):Bool
```


 


[\(view code\)](<./Strings.hx#L4597>)


## function \_simpleIndex


```haxe
function _simpleIndex(_s:stdgo.GoString, _sep:stdgo.GoString):stdgo.GoInt
```


 


[\(view code\)](<./Strings.hx#L3809>)


## function \_tenRunes


```haxe
function _tenRunes(_ch:stdgo.GoRune):stdgo.GoString
```


 


[\(view code\)](<./Strings.hx#L4092>)


## function benchmarkBuildString\_Builder


```haxe
function benchmarkBuildString_Builder(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L2198>)


## function benchmarkBuildString\_ByteBuffer


```haxe
function benchmarkBuildString_ByteBuffer(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L2219>)


## function benchmarkByteByteMap


```haxe
function benchmarkByteByteMap(_b:stdgo.Ref<stdgo.testing.B>):Void
```


BenchmarkByteByteMap compares byteByteImpl against Map. 


[\(view code\)](<./Strings.hx#L3578>)


## function benchmarkByteByteMatch


```haxe
function benchmarkByteByteMatch(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3498>)


## function benchmarkByteByteNoMatch


```haxe
function benchmarkByteByteNoMatch(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3488>)


## function benchmarkByteByteReplaces


```haxe
function benchmarkByteByteReplaces(_b:stdgo.Ref<stdgo.testing.B>):Void
```


BenchmarkByteByteReplaces compares byteByteImpl against multiple Replaces. 


[\(view code\)](<./Strings.hx#L3565>)


## function benchmarkByteReplacerWriteString


```haxe
function benchmarkByteReplacerWriteString(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3550>)


## function benchmarkByteStringMatch


```haxe
function benchmarkByteStringMatch(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3508>)


## function benchmarkByteStringReplacerWriteString


```haxe
function benchmarkByteStringReplacerWriteString(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3538>)


## function benchmarkClone


```haxe
function benchmarkClone(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L2314>)


## function benchmarkCountByte


```haxe
function benchmarkCountByte(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4961>)


## function benchmarkCountHard1


```haxe
function benchmarkCountHard1(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4920>)


## function benchmarkCountHard2


```haxe
function benchmarkCountHard2(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4924>)


## function benchmarkCountHard3


```haxe
function benchmarkCountHard3(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4928>)


## function benchmarkCountTorture


```haxe
function benchmarkCountTorture(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4941>)


## function benchmarkCountTortureOverlapping


```haxe
function benchmarkCountTortureOverlapping(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4950>)


## function benchmarkEqualFold


```haxe
function benchmarkEqualFold(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4819>)


## function benchmarkFields


```haxe
function benchmarkFields(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4981>)


## function benchmarkFieldsFunc


```haxe
function benchmarkFieldsFunc(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L5004>)


## function benchmarkGenericMatch1


```haxe
function benchmarkGenericMatch1(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3443>)


## function benchmarkGenericMatch2


```haxe
function benchmarkGenericMatch2(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3454>)


## function benchmarkGenericNoMatch


```haxe
function benchmarkGenericNoMatch(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3432>)


## function benchmarkHTMLEscapeNew


```haxe
function benchmarkHTMLEscapeNew(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3518>)


## function benchmarkHTMLEscapeOld


```haxe
function benchmarkHTMLEscapeOld(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3528>)


## function benchmarkIndex


```haxe
function benchmarkIndex(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3956>)


## function benchmarkIndexAnyASCII


```haxe
function benchmarkIndexAnyASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L5088>)


## function benchmarkIndexAnyUTF8


```haxe
function benchmarkIndexAnyUTF8(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L5111>)


## function benchmarkIndexByte


```haxe
function benchmarkIndexByte(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3986>)


## function benchmarkIndexHard1


```haxe
function benchmarkIndexHard1(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4892>)


## function benchmarkIndexHard2


```haxe
function benchmarkIndexHard2(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4896>)


## function benchmarkIndexHard3


```haxe
function benchmarkIndexHard3(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4900>)


## function benchmarkIndexHard4


```haxe
function benchmarkIndexHard4(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4904>)


## function benchmarkIndexPeriodic


```haxe
function benchmarkIndexPeriodic(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L5213>)


## function benchmarkIndexRune


```haxe
function benchmarkIndexRune(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3911>)


## function benchmarkIndexRuneFastPath


```haxe
function benchmarkIndexRuneFastPath(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3941>)


## function benchmarkIndexRuneLongString


```haxe
function benchmarkIndexRuneLongString(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3926>)


## function benchmarkIndexTorture


```haxe
function benchmarkIndexTorture(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4932>)


## function benchmarkJoin


```haxe
function benchmarkJoin(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L5228>)


## function benchmarkLastIndex


```haxe
function benchmarkLastIndex(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3971>)


## function benchmarkLastIndexAnyASCII


```haxe
function benchmarkLastIndexAnyASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L5134>)


## function benchmarkLastIndexAnyUTF8


```haxe
function benchmarkLastIndexAnyUTF8(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L5157>)


## function benchmarkLastIndexHard1


```haxe
function benchmarkLastIndexHard1(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4908>)


## function benchmarkLastIndexHard2


```haxe
function benchmarkLastIndexHard2(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4912>)


## function benchmarkLastIndexHard3


```haxe
function benchmarkLastIndexHard3(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4916>)


## function benchmarkMap


```haxe
function benchmarkMap(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3596>)


## function benchmarkMapNoChanges


```haxe
function benchmarkMapNoChanges(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4289>)


## function benchmarkRepeat


```haxe
function benchmarkRepeat(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L5072>)


## function benchmarkReplaceAll


```haxe
function benchmarkReplaceAll(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L5265>)


## function benchmarkSingleLongSuffixFail


```haxe
function benchmarkSingleLongSuffixFail(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3480>)


## function benchmarkSingleMatch


```haxe
function benchmarkSingleMatch(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3484>)


## function benchmarkSingleMaxSkipping


```haxe
function benchmarkSingleMaxSkipping(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3476>)


## function benchmarkSplitEmptySeparator


```haxe
function benchmarkSplitEmptySeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L5027>)


## function benchmarkSplitMultiByteSeparator


```haxe
function benchmarkSplitMultiByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L5045>)


## function benchmarkSplitNMultiByteSeparator


```haxe
function benchmarkSplitNMultiByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L5063>)


## function benchmarkSplitNSingleByteSeparator


```haxe
function benchmarkSplitNSingleByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L5054>)


## function benchmarkSplitSingleByteSeparator


```haxe
function benchmarkSplitSingleByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L5036>)


## function benchmarkToLower


```haxe
function benchmarkToLower(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4273>)


## function benchmarkToUpper


```haxe
function benchmarkToUpper(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4257>)


## function benchmarkToValidUTF8


```haxe
function benchmarkToValidUTF8(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4382>)


## function benchmarkTrim


```haxe
function benchmarkTrim(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4351>)


## function benchmarkTrimASCII


```haxe
function benchmarkTrimASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L5180>)


## function benchmarkTrimByte


```haxe
function benchmarkTrimByte(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L5203>)


## function benchmarkTrimSpace


```haxe
function benchmarkTrimSpace(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L5248>)


## function exampleBuilder


```haxe
function exampleBuilder():Void
```


 


[\(view code\)](<./Strings.hx#L2420>)


## function exampleCompare


```haxe
function exampleCompare():Void
```


 


[\(view code\)](<./Strings.hx#L2432>)


## function exampleContains


```haxe
function exampleContains():Void
```


 


[\(view code\)](<./Strings.hx#L2438>)


## function exampleContainsAny


```haxe
function exampleContainsAny():Void
```


 


[\(view code\)](<./Strings.hx#L2445>)


## function exampleContainsRune


```haxe
function exampleContainsRune():Void
```


 


[\(view code\)](<./Strings.hx#L2454>)


## function exampleCount


```haxe
function exampleCount():Void
```


 


[\(view code\)](<./Strings.hx#L2459>)


## function exampleCut


```haxe
function exampleCut():Void
```


 


[\(view code\)](<./Strings.hx#L2464>)


## function exampleEqualFold


```haxe
function exampleEqualFold():Void
```


 


[\(view code\)](<./Strings.hx#L2476>)


## function exampleFields


```haxe
function exampleFields():Void
```


 


[\(view code\)](<./Strings.hx#L2482>)


## function exampleFieldsFunc


```haxe
function exampleFieldsFunc():Void
```


 


[\(view code\)](<./Strings.hx#L2486>)


## function exampleHasPrefix


```haxe
function exampleHasPrefix():Void
```


 


[\(view code\)](<./Strings.hx#L2493>)


## function exampleHasSuffix


```haxe
function exampleHasSuffix():Void
```


 


[\(view code\)](<./Strings.hx#L2499>)


## function exampleIndex


```haxe
function exampleIndex():Void
```


 


[\(view code\)](<./Strings.hx#L2506>)


## function exampleIndexAny


```haxe
function exampleIndexAny():Void
```


 


[\(view code\)](<./Strings.hx#L2519>)


## function exampleIndexByte


```haxe
function exampleIndexByte():Void
```


 


[\(view code\)](<./Strings.hx#L2524>)


## function exampleIndexFunc


```haxe
function exampleIndexFunc():Void
```


 


[\(view code\)](<./Strings.hx#L2511>)


## function exampleIndexRune


```haxe
function exampleIndexRune():Void
```


 


[\(view code\)](<./Strings.hx#L2530>)


## function exampleJoin


```haxe
function exampleJoin():Void
```


 


[\(view code\)](<./Strings.hx#L2559>)


## function exampleLastIndex


```haxe
function exampleLastIndex():Void
```


 


[\(view code\)](<./Strings.hx#L2535>)


## function exampleLastIndexAny


```haxe
function exampleLastIndexAny():Void
```


 


[\(view code\)](<./Strings.hx#L2541>)


## function exampleLastIndexByte


```haxe
function exampleLastIndexByte():Void
```


 


[\(view code\)](<./Strings.hx#L2547>)


## function exampleLastIndexFunc


```haxe
function exampleLastIndexFunc():Void
```


 


[\(view code\)](<./Strings.hx#L2553>)


## function exampleMap


```haxe
function exampleMap():Void
```


 


[\(view code\)](<./Strings.hx#L2614>)


## function exampleNewReplacer


```haxe
function exampleNewReplacer():Void
```


 


[\(view code\)](<./Strings.hx#L2626>)


## function exampleRepeat


```haxe
function exampleRepeat():Void
```


 


[\(view code\)](<./Strings.hx#L2564>)


## function exampleReplace


```haxe
function exampleReplace():Void
```


 


[\(view code\)](<./Strings.hx#L2568>)


## function exampleReplaceAll


```haxe
function exampleReplaceAll():Void
```


 


[\(view code\)](<./Strings.hx#L2573>)


## function exampleSplit


```haxe
function exampleSplit():Void
```


 


[\(view code\)](<./Strings.hx#L2577>)


## function exampleSplitAfter


```haxe
function exampleSplitAfter():Void
```


 


[\(view code\)](<./Strings.hx#L2590>)


## function exampleSplitAfterN


```haxe
function exampleSplitAfterN():Void
```


 


[\(view code\)](<./Strings.hx#L2594>)


## function exampleSplitN


```haxe
function exampleSplitN():Void
```


 


[\(view code\)](<./Strings.hx#L2584>)


## function exampleTitle


```haxe
function exampleTitle():Void
```


 


[\(view code\)](<./Strings.hx#L2598>)


## function exampleToLower


```haxe
function exampleToLower():Void
```


 


[\(view code\)](<./Strings.hx#L2639>)


## function exampleToLowerSpecial


```haxe
function exampleToLowerSpecial():Void
```


 


[\(view code\)](<./Strings.hx#L2643>)


## function exampleToTitle


```haxe
function exampleToTitle():Void
```


 


[\(view code\)](<./Strings.hx#L2604>)


## function exampleToTitleSpecial


```haxe
function exampleToTitleSpecial():Void
```


 


[\(view code\)](<./Strings.hx#L2610>)


## function exampleToUpper


```haxe
function exampleToUpper():Void
```


 


[\(view code\)](<./Strings.hx#L2631>)


## function exampleToUpperSpecial


```haxe
function exampleToUpperSpecial():Void
```


 


[\(view code\)](<./Strings.hx#L2635>)


## function exampleTrim


```haxe
function exampleTrim():Void
```


 


[\(view code\)](<./Strings.hx#L2647>)


## function exampleTrimFunc


```haxe
function exampleTrimFunc():Void
```


 


[\(view code\)](<./Strings.hx#L2669>)


## function exampleTrimLeft


```haxe
function exampleTrimLeft():Void
```


 


[\(view code\)](<./Strings.hx#L2675>)


## function exampleTrimLeftFunc


```haxe
function exampleTrimLeftFunc():Void
```


 


[\(view code\)](<./Strings.hx#L2679>)


## function exampleTrimPrefix


```haxe
function exampleTrimPrefix():Void
```


 


[\(view code\)](<./Strings.hx#L2655>)


## function exampleTrimRight


```haxe
function exampleTrimRight():Void
```


 


[\(view code\)](<./Strings.hx#L2685>)


## function exampleTrimRightFunc


```haxe
function exampleTrimRightFunc():Void
```


 


[\(view code\)](<./Strings.hx#L2689>)


## function exampleTrimSpace


```haxe
function exampleTrimSpace():Void
```


 


[\(view code\)](<./Strings.hx#L2651>)


## function exampleTrimSuffix


```haxe
function exampleTrimSuffix():Void
```


 


[\(view code\)](<./Strings.hx#L2662>)


## function testBuilder


```haxe
function testBuilder(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L1839>)


## function testBuilderAllocs


```haxe
function testBuilderAllocs(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L2024>)


## function testBuilderCopyPanic


```haxe
function testBuilderCopyPanic(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L2038>)


## function testBuilderGrow


```haxe
function testBuilderGrow(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L1916>)


## function testBuilderReset


```haxe
function testBuilderReset(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L1898>)


## function testBuilderString


```haxe
function testBuilderString(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L1867>)


## function testBuilderWrite2


```haxe
function testBuilderWrite2(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L1948>)


## function testBuilderWriteByte


```haxe
function testBuilderWriteByte(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L2007>)


## function testBuilderWriteInvalidRune


```haxe
function testBuilderWriteInvalidRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L2175>)


## function testCaseConsistency


```haxe
function testCaseConsistency(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4459>)


## function testClone


```haxe
function testClone(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L2240>)


## function testCompare


```haxe
function testCompare(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L2325>)


## function testCompareIdenticalString


```haxe
function testCompareIdenticalString(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L2334>)


## function testCompareStrings


```haxe
function testCompareStrings(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L2344>)


## function testContains


```haxe
function testContains(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4773>)


## function testContainsAny


```haxe
function testContainsAny(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4782>)


## function testContainsRune


```haxe
function testContainsRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4791>)


## function testCount


```haxe
function testCount(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4835>)


## function testCut


```haxe
function testCut(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4847>)


## function testEmptyReaderConcurrent


```haxe
function testEmptyReaderConcurrent(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L2875>)


## function testEqualFold


```haxe
function testEqualFold(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4800>)


## function testFields


```haxe
function testFields(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4050>)


## function testFieldsFunc


```haxe
function testFieldsFunc(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4060>)


## function testFinderCreation


```haxe
function testFinderCreation(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L3661>)


## function testFinderNext


```haxe
function testFinderNext(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L3635>)


## function testGenericTrieBuilding


```haxe
function testGenericTrieBuilding(_t:stdgo.Ref<stdgo.testing.T>):Void
```


TestGenericTrieBuilding verifies the structure of the generated trie. There��// is one node per line, and the key ending with the current line is in the��// trie if it ends with a "\+". 


[\(view code\)](<./Strings.hx#L3399>)


## function testIndex


```haxe
function testIndex(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L3760>)


## function testIndexAny


```haxe
function testIndexAny(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L3768>)


## function testIndexByte


```haxe
function testIndexByte(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L3776>)


## function testIndexFunc


```haxe
function testIndexFunc(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4421>)


## function testIndexRandom


```haxe
function testIndexRandom(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L3822>)


## function testIndexRune


```haxe
function testIndexRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L3861>)


## function testLastIndex


```haxe
function testLastIndex(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L3764>)


## function testLastIndexAny


```haxe
function testLastIndexAny(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L3772>)


## function testLastIndexByte


```haxe
function testLastIndexByte(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L3789>)


## function testMap


```haxe
function testMap(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4114>)


## function testPickAlgorithm


```haxe
function testPickAlgorithm(_t:stdgo.Ref<stdgo.testing.T>):Void
```


TestPickAlgorithm tests that NewReplacer picks the correct algorithm. 


[\(view code\)](<./Strings.hx#L3367>)


## function testReadAfterBigSeek


```haxe
function testReadAfterBigSeek(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L2763>)


## function testReadByte


```haxe
function testReadByte(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4625>)


## function testReadRune


```haxe
function testReadRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4671>)


## function testReader


```haxe
function testReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L2695>)


## function testReaderAt


```haxe
function testReaderAt(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L2783>)


## function testReaderAtConcurrent


```haxe
function testReaderAtConcurrent(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L2831>)


## function testReaderLenSize


```haxe
function testReaderLenSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```


tests that Len is affected by reads, but Size is not. 


[\(view code\)](<./Strings.hx#L2983>)


## function testReaderReset


```haxe
function testReaderReset(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L2996>)


## function testReaderZero


```haxe
function testReaderZero(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L3029>)


## function testRepeat


```haxe
function testRepeat(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4491>)


## function testRepeatCatchesOverflow


```haxe
function testRepeatCatchesOverflow(_t:stdgo.Ref<stdgo.testing.T>):Void
```


See Issue golang.org/issue/16237 


[\(view code\)](<./Strings.hx#L4565>)


## function testReplace


```haxe
function testReplace(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4743>)


## function testReplacer


```haxe
function testReplacer(_t:stdgo.Ref<stdgo.testing.T>):Void
```


TestReplacer tests the replacer implementations. 


[\(view code\)](<./Strings.hx#L3133>)


## function testRunes


```haxe
function testRunes(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4609>)


## function testSpecialCase


```haxe
function testSpecialCase(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4301>)


## function testSplit


```haxe
function testSplit(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4001>)


## function testSplitAfter


```haxe
function testSplitAfter(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4027>)


## function testTitle


```haxe
function testTitle(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4762>)


## function testToLower


```haxe
function testToLower(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4243>)


## function testToUpper


```haxe
function testToUpper(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4239>)


## function testToValidUTF8


```haxe
function testToValidUTF8(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4247>)


## function testTrim


```haxe
function testTrim(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4326>)


## function testTrimFunc


```haxe
function testTrimFunc(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4406>)


## function testTrimSpace


```haxe
function testTrimSpace(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4322>)


## function testUnreadRuneError


```haxe
function testUnreadRuneError(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4723>)


## function testWriteStringError


```haxe
function testWriteStringError(_t:stdgo.Ref<stdgo.testing.T>):Void
```


TestWriteStringError tests that WriteString returns an error��// received from the underlying io.Writer. 


[\(view code\)](<./Strings.hx#L3382>)


## function testWriteTo


```haxe
function testWriteTo(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L2950>)


## function main


```haxe
function main():Void
```


 


[\(view code\)](<./Strings.hx#L332>)


# Classes


```haxe
import stdgo.strings_test.*
```


## class FieldsTest


 


```haxe
var _a:stdgo.Slice<stdgo.GoString>
```


```haxe
var _s:stdgo.GoString
```


### FieldsTest function new


```haxe
function new(?_s:stdgo.GoString, ?_a:stdgo.Slice<stdgo.GoString>):Void
```


 


[\(view code\)](<./Strings_test.hx#L1144>)


## class IndexTest


 


```haxe
var _out:stdgo.GoInt
```


```haxe
var _s:stdgo.GoString
```


```haxe
var _sep:stdgo.GoString
```


### IndexTest function new


```haxe
function new(?_s:stdgo.GoString, ?_sep:stdgo.GoString, ?_out:Null<stdgo.GoInt>):Void
```


 


[\(view code\)](<./Strings_test.hx#L1104>)


## class SplitTest


 


```haxe
var _a:stdgo.Slice<stdgo.GoString>
```


```haxe
var _n:stdgo.GoInt
```


```haxe
var _s:stdgo.GoString
```


```haxe
var _sep:stdgo.GoString
```


### SplitTest function new


```haxe
function new(?_s:stdgo.GoString, ?_sep:stdgo.GoString, ?_n:Null<stdgo.GoInt>, ?_a:stdgo.Slice<stdgo.GoString>):Void
```


 


[\(view code\)](<./Strings_test.hx#L1124>)


## class StringTest


Test case for any function which accepts and returns a single string. 


```haxe
var _in:stdgo.GoString
```


```haxe
var _out:stdgo.GoString
```


### StringTest function new


```haxe
function new(?_in:stdgo.GoString, ?_out:stdgo.GoString):Void
```


 


[\(view code\)](<./Strings_test.hx#L1163>)


## class T\_errWriter\_static\_extension


 


### T\_errWriter\_static\_extension function write


```haxe
function write(_:stdgo.strings_test._Strings_test.T_errWriter, _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Strings_test.hx#L5296>)


