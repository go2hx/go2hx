# Module: `stdgo.strings`

[(view library index)](../stdgo.md)


# Overview





# Index


- [Variables](<#variables>)

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

- [`function benchmarkRepeatLarge(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkrepeatlarge>)

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

- [`function testCutPrefix(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcutprefix>)

- [`function testCutSuffix(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcutsuffix>)

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

- [class FieldsTest](<#class-fieldstest>)

  - [`function new(?_s:stdgo.GoString, ?_a:stdgo.Slice<stdgo.GoString>):Void`](<#fieldstest-function-new>)

- [class IndexTest](<#class-indextest>)

  - [`function new(?_s:stdgo.GoString, ?_sep:stdgo.GoString, ?_out:Null<stdgo.GoInt>):Void`](<#indextest-function-new>)

- [class SplitTest](<#class-splittest>)

  - [`function new(?_s:stdgo.GoString, ?_sep:stdgo.GoString, ?_n:Null<stdgo.GoInt>, ?_a:stdgo.Slice<stdgo.GoString>):Void`](<#splittest-function-new>)

- [class StringTest](<#class-stringtest>)

  - [`function new(?_in:stdgo.GoString, ?_out:stdgo.GoString):Void`](<#stringtest-function-new>)

- [class T\_errWriter](<#class-t_errwriter>)

  - [`function new():Void`](<#t_errwriter-function-new>)

  - [`function write( _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_errwriter-function-write>)

- [class T\_predicate](<#class-t_predicate>)

  - [`function _f()`](<#t_predicate-function-_f>)

  - [`function new(?_f:(), ?_name:stdgo.GoString):Void`](<#t_predicate-function-new>)

- [class T\_testCase\_testReplacer\_0](<#class-t_testcase_testreplacer_0>)

  - [`function new(?_r:stdgo.Ref<stdgo.strings.Replacer>, ?_in:stdgo.GoString, ?_out:stdgo.GoString):Void`](<#t_testcase_testreplacer_0-function-new>)

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


## function benchmarkBuildString\_Builder


```haxe
function benchmarkBuildString_Builder(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L1817>)


## function benchmarkBuildString\_ByteBuffer


```haxe
function benchmarkBuildString_ByteBuffer(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L1837>)


## function benchmarkByteByteMap


```haxe
function benchmarkByteByteMap(_b:stdgo.Ref<stdgo.testing.B>):Void
```


BenchmarkByteByteMap compares byteByteImpl against Map.  



[\(view code\)](<./Strings.hx#L2846>)


## function benchmarkByteByteMatch


```haxe
function benchmarkByteByteMatch(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L2773>)


## function benchmarkByteByteNoMatch


```haxe
function benchmarkByteByteNoMatch(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L2764>)


## function benchmarkByteByteReplaces


```haxe
function benchmarkByteByteReplaces(_b:stdgo.Ref<stdgo.testing.B>):Void
```


BenchmarkByteByteReplaces compares byteByteImpl against multiple Replaces.  



[\(view code\)](<./Strings.hx#L2834>)


## function benchmarkByteReplacerWriteString


```haxe
function benchmarkByteReplacerWriteString(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L2820>)


## function benchmarkByteStringMatch


```haxe
function benchmarkByteStringMatch(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L2782>)


## function benchmarkByteStringReplacerWriteString


```haxe
function benchmarkByteStringReplacerWriteString(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L2809>)


## function benchmarkClone


```haxe
function benchmarkClone(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L1874>)


## function benchmarkCountByte


```haxe
function benchmarkCountByte(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L4095>)


## function benchmarkCountHard1


```haxe
function benchmarkCountHard1(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L4060>)


## function benchmarkCountHard2


```haxe
function benchmarkCountHard2(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L4063>)


## function benchmarkCountHard3


```haxe
function benchmarkCountHard3(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L4066>)


## function benchmarkCountTorture


```haxe
function benchmarkCountTorture(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L4077>)


## function benchmarkCountTortureOverlapping


```haxe
function benchmarkCountTortureOverlapping(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L4085>)


## function benchmarkEqualFold


```haxe
function benchmarkEqualFold(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L3931>)


## function benchmarkFields


```haxe
function benchmarkFields(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L4113>)


## function benchmarkFieldsFunc


```haxe
function benchmarkFieldsFunc(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L4135>)


## function benchmarkGenericMatch1


```haxe
function benchmarkGenericMatch1(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L2725>)


## function benchmarkGenericMatch2


```haxe
function benchmarkGenericMatch2(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L2735>)


## function benchmarkGenericNoMatch


```haxe
function benchmarkGenericNoMatch(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L2715>)


## function benchmarkHTMLEscapeNew


```haxe
function benchmarkHTMLEscapeNew(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L2791>)


## function benchmarkHTMLEscapeOld


```haxe
function benchmarkHTMLEscapeOld(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L2800>)


## function benchmarkIndex


```haxe
function benchmarkIndex(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L3194>)


## function benchmarkIndexAnyASCII


```haxe
function benchmarkIndexAnyASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L4236>)


## function benchmarkIndexAnyUTF8


```haxe
function benchmarkIndexAnyUTF8(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L4258>)


## function benchmarkIndexByte


```haxe
function benchmarkIndexByte(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L3222>)


## function benchmarkIndexHard1


```haxe
function benchmarkIndexHard1(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L4039>)


## function benchmarkIndexHard2


```haxe
function benchmarkIndexHard2(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L4042>)


## function benchmarkIndexHard3


```haxe
function benchmarkIndexHard3(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L4045>)


## function benchmarkIndexHard4


```haxe
function benchmarkIndexHard4(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L4048>)


## function benchmarkIndexPeriodic


```haxe
function benchmarkIndexPeriodic(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L4355>)


## function benchmarkIndexRune


```haxe
function benchmarkIndexRune(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L3152>)


## function benchmarkIndexRuneFastPath


```haxe
function benchmarkIndexRuneFastPath(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L3180>)


## function benchmarkIndexRuneLongString


```haxe
function benchmarkIndexRuneLongString(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L3166>)


## function benchmarkIndexTorture


```haxe
function benchmarkIndexTorture(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L4069>)


## function benchmarkJoin


```haxe
function benchmarkJoin(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L4369>)


## function benchmarkLastIndex


```haxe
function benchmarkLastIndex(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L3208>)


## function benchmarkLastIndexAnyASCII


```haxe
function benchmarkLastIndexAnyASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L4280>)


## function benchmarkLastIndexAnyUTF8


```haxe
function benchmarkLastIndexAnyUTF8(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L4302>)


## function benchmarkLastIndexHard1


```haxe
function benchmarkLastIndexHard1(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L4051>)


## function benchmarkLastIndexHard2


```haxe
function benchmarkLastIndexHard2(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L4054>)


## function benchmarkLastIndexHard3


```haxe
function benchmarkLastIndexHard3(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L4057>)


## function benchmarkMap


```haxe
function benchmarkMap(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L2863>)


## function benchmarkMapNoChanges


```haxe
function benchmarkMapNoChanges(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L3470>)


## function benchmarkRepeat


```haxe
function benchmarkRepeat(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L4197>)


## function benchmarkRepeatLarge


```haxe
function benchmarkRepeatLarge(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L4212>)


## function benchmarkReplaceAll


```haxe
function benchmarkReplaceAll(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L4400>)


## function benchmarkSingleLongSuffixFail


```haxe
function benchmarkSingleLongSuffixFail(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L2758>)


## function benchmarkSingleMatch


```haxe
function benchmarkSingleMatch(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L2761>)


## function benchmarkSingleMaxSkipping


```haxe
function benchmarkSingleMaxSkipping(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L2755>)


## function benchmarkSplitEmptySeparator


```haxe
function benchmarkSplitEmptySeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L4157>)


## function benchmarkSplitMultiByteSeparator


```haxe
function benchmarkSplitMultiByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L4173>)


## function benchmarkSplitNMultiByteSeparator


```haxe
function benchmarkSplitNMultiByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L4189>)


## function benchmarkSplitNSingleByteSeparator


```haxe
function benchmarkSplitNSingleByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L4181>)


## function benchmarkSplitSingleByteSeparator


```haxe
function benchmarkSplitSingleByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L4165>)


## function benchmarkToLower


```haxe
function benchmarkToLower(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L3455>)


## function benchmarkToUpper


```haxe
function benchmarkToUpper(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L3440>)


## function benchmarkToValidUTF8


```haxe
function benchmarkToValidUTF8(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L3556>)


## function benchmarkTrim


```haxe
function benchmarkTrim(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L3527>)


## function benchmarkTrimASCII


```haxe
function benchmarkTrimASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L4324>)


## function benchmarkTrimByte


```haxe
function benchmarkTrimByte(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L4346>)


## function benchmarkTrimSpace


```haxe
function benchmarkTrimSpace(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strings.hx#L4387>)


## function exampleBuilder


```haxe
function exampleBuilder():Void
```





[\(view code\)](<./Strings.hx#L1971>)


## function exampleCompare


```haxe
function exampleCompare():Void
```





[\(view code\)](<./Strings.hx#L1982>)


## function exampleContains


```haxe
function exampleContains():Void
```





[\(view code\)](<./Strings.hx#L1987>)


## function exampleContainsAny


```haxe
function exampleContainsAny():Void
```





[\(view code\)](<./Strings.hx#L1993>)


## function exampleContainsRune


```haxe
function exampleContainsRune():Void
```





[\(view code\)](<./Strings.hx#L2001>)


## function exampleCount


```haxe
function exampleCount():Void
```





[\(view code\)](<./Strings.hx#L2005>)


## function exampleCut


```haxe
function exampleCut():Void
```





[\(view code\)](<./Strings.hx#L2009>)


## function exampleEqualFold


```haxe
function exampleEqualFold():Void
```





[\(view code\)](<./Strings.hx#L2019>)


## function exampleFields


```haxe
function exampleFields():Void
```





[\(view code\)](<./Strings.hx#L2024>)


## function exampleFieldsFunc


```haxe
function exampleFieldsFunc():Void
```





[\(view code\)](<./Strings.hx#L2027>)


## function exampleHasPrefix


```haxe
function exampleHasPrefix():Void
```





[\(view code\)](<./Strings.hx#L2033>)


## function exampleHasSuffix


```haxe
function exampleHasSuffix():Void
```





[\(view code\)](<./Strings.hx#L2038>)


## function exampleIndex


```haxe
function exampleIndex():Void
```





[\(view code\)](<./Strings.hx#L2044>)


## function exampleIndexAny


```haxe
function exampleIndexAny():Void
```





[\(view code\)](<./Strings.hx#L2055>)


## function exampleIndexByte


```haxe
function exampleIndexByte():Void
```





[\(view code\)](<./Strings.hx#L2059>)


## function exampleIndexFunc


```haxe
function exampleIndexFunc():Void
```





[\(view code\)](<./Strings.hx#L2048>)


## function exampleIndexRune


```haxe
function exampleIndexRune():Void
```





[\(view code\)](<./Strings.hx#L2064>)


## function exampleJoin


```haxe
function exampleJoin():Void
```





[\(view code\)](<./Strings.hx#L2088>)


## function exampleLastIndex


```haxe
function exampleLastIndex():Void
```





[\(view code\)](<./Strings.hx#L2068>)


## function exampleLastIndexAny


```haxe
function exampleLastIndexAny():Void
```





[\(view code\)](<./Strings.hx#L2073>)


## function exampleLastIndexByte


```haxe
function exampleLastIndexByte():Void
```





[\(view code\)](<./Strings.hx#L2078>)


## function exampleLastIndexFunc


```haxe
function exampleLastIndexFunc():Void
```





[\(view code\)](<./Strings.hx#L2083>)


## function exampleMap


```haxe
function exampleMap():Void
```





[\(view code\)](<./Strings.hx#L2132>)


## function exampleNewReplacer


```haxe
function exampleNewReplacer():Void
```





[\(view code\)](<./Strings.hx#L2143>)


## function exampleRepeat


```haxe
function exampleRepeat():Void
```





[\(view code\)](<./Strings.hx#L2092>)


## function exampleReplace


```haxe
function exampleReplace():Void
```





[\(view code\)](<./Strings.hx#L2095>)


## function exampleReplaceAll


```haxe
function exampleReplaceAll():Void
```





[\(view code\)](<./Strings.hx#L2099>)


## function exampleSplit


```haxe
function exampleSplit():Void
```





[\(view code\)](<./Strings.hx#L2102>)


## function exampleSplitAfter


```haxe
function exampleSplitAfter():Void
```





[\(view code\)](<./Strings.hx#L2113>)


## function exampleSplitAfterN


```haxe
function exampleSplitAfterN():Void
```





[\(view code\)](<./Strings.hx#L2116>)


## function exampleSplitN


```haxe
function exampleSplitN():Void
```





[\(view code\)](<./Strings.hx#L2108>)


## function exampleTitle


```haxe
function exampleTitle():Void
```





[\(view code\)](<./Strings.hx#L2119>)


## function exampleToLower


```haxe
function exampleToLower():Void
```





[\(view code\)](<./Strings.hx#L2153>)


## function exampleToLowerSpecial


```haxe
function exampleToLowerSpecial():Void
```





[\(view code\)](<./Strings.hx#L2156>)


## function exampleToTitle


```haxe
function exampleToTitle():Void
```





[\(view code\)](<./Strings.hx#L2124>)


## function exampleToTitleSpecial


```haxe
function exampleToTitleSpecial():Void
```





[\(view code\)](<./Strings.hx#L2129>)


## function exampleToUpper


```haxe
function exampleToUpper():Void
```





[\(view code\)](<./Strings.hx#L2147>)


## function exampleToUpperSpecial


```haxe
function exampleToUpperSpecial():Void
```





[\(view code\)](<./Strings.hx#L2150>)


## function exampleTrim


```haxe
function exampleTrim():Void
```





[\(view code\)](<./Strings.hx#L2159>)


## function exampleTrimFunc


```haxe
function exampleTrimFunc():Void
```





[\(view code\)](<./Strings.hx#L2177>)


## function exampleTrimLeft


```haxe
function exampleTrimLeft():Void
```





[\(view code\)](<./Strings.hx#L2182>)


## function exampleTrimLeftFunc


```haxe
function exampleTrimLeftFunc():Void
```





[\(view code\)](<./Strings.hx#L2185>)


## function exampleTrimPrefix


```haxe
function exampleTrimPrefix():Void
```





[\(view code\)](<./Strings.hx#L2165>)


## function exampleTrimRight


```haxe
function exampleTrimRight():Void
```





[\(view code\)](<./Strings.hx#L2190>)


## function exampleTrimRightFunc


```haxe
function exampleTrimRightFunc():Void
```





[\(view code\)](<./Strings.hx#L2193>)


## function exampleTrimSpace


```haxe
function exampleTrimSpace():Void
```





[\(view code\)](<./Strings.hx#L2162>)


## function exampleTrimSuffix


```haxe
function exampleTrimSuffix():Void
```





[\(view code\)](<./Strings.hx#L2171>)


## function testBuilder


```haxe
function testBuilder(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L1484>)


## function testBuilderAllocs


```haxe
function testBuilderAllocs(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L1675>)


## function testBuilderCopyPanic


```haxe
function testBuilderCopyPanic(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L1688>)


## function testBuilderGrow


```haxe
function testBuilderGrow(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L1556>)


## function testBuilderReset


```haxe
function testBuilderReset(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L1539>)


## function testBuilderString


```haxe
function testBuilderString(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L1509>)


## function testBuilderWrite2


```haxe
function testBuilderWrite2(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L1623>)


## function testBuilderWriteByte


```haxe
function testBuilderWriteByte(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L1659>)


## function testBuilderWriteInvalidRune


```haxe
function testBuilderWriteInvalidRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L1796>)


## function testCaseConsistency


```haxe
function testCaseConsistency(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L3617>)


## function testClone


```haxe
function testClone(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L1857>)


## function testCompare


```haxe
function testCompare(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L1884>)


## function testCompareIdenticalString


```haxe
function testCompareIdenticalString(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L1892>)


## function testCompareStrings


```haxe
function testCompareStrings(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L1901>)


## function testContains


```haxe
function testContains(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L3894>)


## function testContainsAny


```haxe
function testContainsAny(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L3901>)


## function testContainsRune


```haxe
function testContainsRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L3908>)


## function testCount


```haxe
function testCount(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L3974>)


## function testCut


```haxe
function testCut(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L3984>)


## function testCutPrefix


```haxe
function testCutPrefix(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L3994>)


## function testCutSuffix


```haxe
function testCutSuffix(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L4004>)


## function testEmptyReaderConcurrent


```haxe
function testEmptyReaderConcurrent(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L2307>)


## function testEqualFold


```haxe
function testEqualFold(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L3915>)


## function testFields


```haxe
function testFields(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L3277>)


## function testFieldsFunc


```haxe
function testFieldsFunc(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L3286>)


## function testFinderCreation


```haxe
function testFinderCreation(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L2928>)


## function testFinderNext


```haxe
function testFinderNext(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L2901>)


## function testGenericTrieBuilding


```haxe
function testGenericTrieBuilding(_t:stdgo.Ref<stdgo.testing.T>):Void
```


TestGenericTrieBuilding verifies the structure of the generated trie. There  
is one node per line, and the key ending with the current line is in the  
trie if it ends with a "\+".  



[\(view code\)](<./Strings.hx#L2691>)


## function testIndex


```haxe
function testIndex(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L3023>)


## function testIndexAny


```haxe
function testIndexAny(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L3029>)


## function testIndexByte


```haxe
function testIndexByte(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L3035>)


## function testIndexFunc


```haxe
function testIndexFunc(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L3587>)


## function testIndexRandom


```haxe
function testIndexRandom(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L3067>)


## function testIndexRune


```haxe
function testIndexRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L3102>)


## function testLastIndex


```haxe
function testLastIndex(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L3026>)


## function testLastIndexAny


```haxe
function testLastIndexAny(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L3032>)


## function testLastIndexByte


```haxe
function testLastIndexByte(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L3046>)


## function testMap


```haxe
function testMap(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L3336>)


## function testPickAlgorithm


```haxe
function testPickAlgorithm(_t:stdgo.Ref<stdgo.testing.T>):Void
```


TestPickAlgorithm tests that NewReplacer picks the correct algorithm.  



[\(view code\)](<./Strings.hx#L2664>)


## function testReadAfterBigSeek


```haxe
function testReadAfterBigSeek(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L2237>)


## function testReadByte


```haxe
function testReadByte(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L3766>)


## function testReadRune


```haxe
function testReadRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L3807>)


## function testReader


```haxe
function testReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L2198>)


## function testReaderAt


```haxe
function testReaderAt(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L2252>)


## function testReaderAtConcurrent


```haxe
function testReaderAtConcurrent(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L2267>)


## function testReaderLenSize


```haxe
function testReaderLenSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```


tests that Len is affected by reads, but Size is not.  



[\(view code\)](<./Strings.hx#L2405>)


## function testReaderReset


```haxe
function testReaderReset(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L2417>)


## function testReaderZero


```haxe
function testReaderZero(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L2444>)


## function testRepeat


```haxe
function testRepeat(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L3648>)


## function testRepeatCatchesOverflow


```haxe
function testRepeatCatchesOverflow(_t:stdgo.Ref<stdgo.testing.T>):Void
```


See Issue golang.org/issue/16237  



[\(view code\)](<./Strings.hx#L3715>)


## function testReplace


```haxe
function testReplace(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L3868>)


## function testReplacer


```haxe
function testReplacer(_t:stdgo.Ref<stdgo.testing.T>):Void
```


TestReplacer tests the replacer implementations.  



[\(view code\)](<./Strings.hx#L2533>)


## function testRunes


```haxe
function testRunes(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L3751>)


## function testSpecialCase


```haxe
function testSpecialCase(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L3481>)


## function testSplit


```haxe
function testSplit(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L3236>)


## function testSplitAfter


```haxe
function testSplitAfter(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L3258>)


## function testTitle


```haxe
function testTitle(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L3884>)


## function testToLower


```haxe
function testToLower(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L3429>)


## function testToUpper


```haxe
function testToUpper(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L3426>)


## function testToValidUTF8


```haxe
function testToValidUTF8(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L3432>)


## function testTrim


```haxe
function testTrim(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L3504>)


## function testTrimFunc


```haxe
function testTrimFunc(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L3576>)


## function testTrimSpace


```haxe
function testTrimSpace(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L3501>)


## function testUnreadRuneError


```haxe
function testUnreadRuneError(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L3852>)


## function testWriteStringError


```haxe
function testWriteStringError(_t:stdgo.Ref<stdgo.testing.T>):Void
```


TestWriteStringError tests that WriteString returns an error  
received from the underlying io.Writer.  



[\(view code\)](<./Strings.hx#L2678>)


## function testWriteTo


```haxe
function testWriteTo(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strings.hx#L2375>)


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





[\(view code\)](<./Strings_test.hx#L935>)


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





[\(view code\)](<./Strings_test.hx#L896>)


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





[\(view code\)](<./Strings_test.hx#L916>)


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





[\(view code\)](<./Strings_test.hx#L952>)


## class T\_errWriter





### T\_errWriter function new


```haxe
function new():Void
```





[\(view code\)](<./Strings_test.hx#L881>)


### T\_errWriter function write


```haxe
function write( _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```





[\(view code\)](<./Strings_test.hx#L4422>)


## class T\_predicate





```haxe
var _name:stdgo.GoString
```


### T\_predicate function \_f


```haxe
function _f()
```





### T\_predicate function new


```haxe
function new(?_f:(), ?_name:stdgo.GoString):Void
```





[\(view code\)](<./Strings_test.hx#L969>)


## class T\_testCase\_testReplacer\_0





```haxe
var _in:stdgo.GoString
```


```haxe
var _out:stdgo.GoString
```


```haxe
var _r:stdgo.Ref<stdgo.strings.Replacer>
```


### T\_testCase\_testReplacer\_0 function new


```haxe
function new(?_r:stdgo.Ref<stdgo.strings.Replacer>, ?_in:stdgo.GoString, ?_out:stdgo.GoString):Void
```





[\(view code\)](<./Strings_test.hx#L2520>)


