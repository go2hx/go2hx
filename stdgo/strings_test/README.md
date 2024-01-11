# Module: `stdgo.strings`

[(view library index)](../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _benchmarkBuilder(_b:stdgo.Ref<stdgo.testing.B>, _f:(_b:stdgo.Ref<stdgo.testing.B>, _numWrite:stdgo.GoInt, _grow:Bool):Void):Void`](<#function-_benchmarkbuilder>)

- [`function _benchmarkCountHard(_b:stdgo.Ref<stdgo.testing.B>, _sep:stdgo.GoString):Void`](<#function-_benchmarkcounthard>)

- [`function _benchmarkIndexHard(_b:stdgo.Ref<stdgo.testing.B>, _sep:stdgo.GoString):Void`](<#function-_benchmarkindexhard>)

- [`function _benchmarkLastIndexHard(_b:stdgo.Ref<stdgo.testing.B>, _sep:stdgo.GoString):Void`](<#function-_benchmarklastindexhard>)

- [`function _benchmarkSingleString(_b:stdgo.Ref<stdgo.testing.B>, _pattern:stdgo.GoString, _text:stdgo.GoString):Void`](<#function-_benchmarksinglestring>)

- [`function _check(_t:stdgo.Ref<stdgo.testing.T_>, _b:stdgo.Ref<stdgo.strings.Builder>, _want:stdgo.GoString):Void`](<#function-_check>)

- [`function _eq(_a:stdgo.Slice<stdgo.GoString>, _b:stdgo.Slice<stdgo.GoString>):Bool`](<#function-_eq>)

- [`function _equal(_m:stdgo.GoString, _s1:stdgo.GoString, _s2:stdgo.GoString, _t:stdgo.Ref<stdgo.testing.T_>):Bool`](<#function-_equal>)

- [`function _makeBenchInputHard():stdgo.GoString`](<#function-_makebenchinputhard>)

- [`function _makeFieldsInput():stdgo.GoString`](<#function-_makefieldsinput>)

- [`function _makeFieldsInputASCII():stdgo.GoString`](<#function-_makefieldsinputascii>)

- [`function _not(_p:stdgo.strings_test.T_predicate):stdgo.strings_test.T_predicate`](<#function-_not>)

- [`function _oldHTMLEscape(_s:stdgo.GoString):stdgo.GoString`](<#function-_oldhtmlescape>)

- [`function _repeat(_s:stdgo.GoString, _count:stdgo.GoInt):stdgo.Error`](<#function-_repeat>)

- [`function _rot13(_r:stdgo.GoRune):stdgo.GoRune`](<#function-_rot13>)

- [`function _runIndexTests(_t:stdgo.Ref<stdgo.testing.T_>, _f:(_s:stdgo.GoString, _sep:stdgo.GoString):stdgo.GoInt, _funcName:stdgo.GoString, _testCases:stdgo.Slice<stdgo.strings_test.IndexTest>):Void`](<#function-_runindextests>)

- [`function _runStringTests(_t:stdgo.Ref<stdgo.testing.T_>, _f:(), _funcName:stdgo.GoString, _testCases:stdgo.Slice<stdgo.strings_test.StringTest>):Void`](<#function-_runstringtests>)

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

- [`function exampleClone():Void`](<#function-exampleclone>)

- [`function exampleCompare():Void`](<#function-examplecompare>)

- [`function exampleContains():Void`](<#function-examplecontains>)

- [`function exampleContainsAny():Void`](<#function-examplecontainsany>)

- [`function exampleContainsRune():Void`](<#function-examplecontainsrune>)

- [`function exampleCount():Void`](<#function-examplecount>)

- [`function exampleCut():Void`](<#function-examplecut>)

- [`function exampleCutPrefix():Void`](<#function-examplecutprefix>)

- [`function exampleCutSuffix():Void`](<#function-examplecutsuffix>)

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

- [`function exampleToValidUTF8():Void`](<#function-exampletovalidutf8>)

- [`function exampleTrim():Void`](<#function-exampletrim>)

- [`function exampleTrimFunc():Void`](<#function-exampletrimfunc>)

- [`function exampleTrimLeft():Void`](<#function-exampletrimleft>)

- [`function exampleTrimLeftFunc():Void`](<#function-exampletrimleftfunc>)

- [`function exampleTrimPrefix():Void`](<#function-exampletrimprefix>)

- [`function exampleTrimRight():Void`](<#function-exampletrimright>)

- [`function exampleTrimRightFunc():Void`](<#function-exampletrimrightfunc>)

- [`function exampleTrimSpace():Void`](<#function-exampletrimspace>)

- [`function exampleTrimSuffix():Void`](<#function-exampletrimsuffix>)

- [`function testBuilder(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testbuilder>)

- [`function testBuilderAllocs(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testbuilderallocs>)

- [`function testBuilderCopyPanic(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testbuildercopypanic>)

- [`function testBuilderGrow(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testbuildergrow>)

- [`function testBuilderReset(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testbuilderreset>)

- [`function testBuilderString(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testbuilderstring>)

- [`function testBuilderWrite2(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testbuilderwrite2>)

- [`function testBuilderWriteByte(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testbuilderwritebyte>)

- [`function testBuilderWriteInvalidRune(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testbuilderwriteinvalidrune>)

- [`function testCaseConsistency(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcaseconsistency>)

- [`function testClone(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testclone>)

- [`function testCompare(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcompare>)

- [`function testCompareIdenticalString(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcompareidenticalstring>)

- [`function testCompareStrings(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcomparestrings>)

- [`function testContains(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcontains>)

- [`function testContainsAny(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcontainsany>)

- [`function testContainsFunc(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcontainsfunc>)

- [`function testContainsRune(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcontainsrune>)

- [`function testCount(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcount>)

- [`function testCut(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcut>)

- [`function testCutPrefix(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcutprefix>)

- [`function testCutSuffix(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcutsuffix>)

- [`function testEmptyReaderConcurrent(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testemptyreaderconcurrent>)

- [`function testEqualFold(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testequalfold>)

- [`function testFields(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testfields>)

- [`function testFieldsFunc(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testfieldsfunc>)

- [`function testFinderCreation(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testfindercreation>)

- [`function testFinderNext(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testfindernext>)

- [`function testGenericTrieBuilding(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testgenerictriebuilding>)

- [`function testIndex(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testindex>)

- [`function testIndexAny(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testindexany>)

- [`function testIndexByte(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testindexbyte>)

- [`function testIndexFunc(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testindexfunc>)

- [`function testIndexRandom(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testindexrandom>)

- [`function testIndexRune(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testindexrune>)

- [`function testLastIndex(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testlastindex>)

- [`function testLastIndexAny(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testlastindexany>)

- [`function testLastIndexByte(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testlastindexbyte>)

- [`function testMap(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testmap>)

- [`function testPickAlgorithm(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testpickalgorithm>)

- [`function testReadAfterBigSeek(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreadafterbigseek>)

- [`function testReadByte(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreadbyte>)

- [`function testReadRune(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreadrune>)

- [`function testReader(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreader>)

- [`function testReaderAt(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreaderat>)

- [`function testReaderAtConcurrent(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreaderatconcurrent>)

- [`function testReaderLenSize(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreaderlensize>)

- [`function testReaderReset(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreaderreset>)

- [`function testReaderZero(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreaderzero>)

- [`function testRepeat(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testrepeat>)

- [`function testRepeatCatchesOverflow(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testrepeatcatchesoverflow>)

- [`function testReplace(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreplace>)

- [`function testReplacer(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreplacer>)

- [`function testRunes(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testrunes>)

- [`function testSpecialCase(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testspecialcase>)

- [`function testSplit(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testsplit>)

- [`function testSplitAfter(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testsplitafter>)

- [`function testTitle(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testtitle>)

- [`function testToLower(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testtolower>)

- [`function testToUpper(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testtoupper>)

- [`function testToValidUTF8(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testtovalidutf8>)

- [`function testTrim(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testtrim>)

- [`function testTrimFunc(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testtrimfunc>)

- [`function testTrimSpace(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testtrimspace>)

- [`function testUnreadRuneError(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testunreadruneerror>)

- [`function testWriteStringError(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testwritestringerror>)

- [`function testWriteTo(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testwriteto>)

- [`function main():Void`](<#function-main>)

- [class FieldsTest](<#class-fieldstest>)

  - [`function new(?_s:stdgo.GoString, ?_a:stdgo.Slice<stdgo.GoString>):Void`](<#fieldstest-function-new>)

- [class IndexTest](<#class-indextest>)

  - [`function new(?_s:stdgo.GoString, ?_sep:stdgo.GoString, ?_out:stdgo.GoInt):Void`](<#indextest-function-new>)

- [class SplitTest](<#class-splittest>)

  - [`function new(?_s:stdgo.GoString, ?_sep:stdgo.GoString, ?_n:stdgo.GoInt, ?_a:stdgo.Slice<stdgo.GoString>):Void`](<#splittest-function-new>)

- [class StringTest](<#class-stringtest>)

  - [`function new(?_in:stdgo.GoString, ?_out:stdgo.GoString):Void`](<#stringtest-function-new>)

- [class T\_testReplacer\_2\_\_\_localname\_\_\_testCase](<#class-t_testreplacer_2localnametestcase>)

  - [`function new(?_r:stdgo.Ref<stdgo.strings.Replacer>, ?_in:stdgo.GoString, ?_out:stdgo.GoString):Void`](<#t_testreplacer_2localnametestcase-function-new>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

- [typedef T\_\_struct\_10](<#typedef-t__struct_10>)

- [typedef T\_\_struct\_11](<#typedef-t__struct_11>)

- [typedef T\_\_struct\_12](<#typedef-t__struct_12>)

- [typedef T\_\_struct\_13](<#typedef-t__struct_13>)

- [typedef T\_\_struct\_14](<#typedef-t__struct_14>)

- [typedef T\_\_struct\_15](<#typedef-t__struct_15>)

- [typedef T\_\_struct\_16](<#typedef-t__struct_16>)

- [typedef T\_\_struct\_17](<#typedef-t__struct_17>)

- [typedef T\_\_struct\_18](<#typedef-t__struct_18>)

- [typedef T\_\_struct\_19](<#typedef-t__struct_19>)

- [typedef T\_\_struct\_2](<#typedef-t__struct_2>)

- [typedef T\_\_struct\_20](<#typedef-t__struct_20>)

- [typedef T\_\_struct\_21](<#typedef-t__struct_21>)

- [typedef T\_\_struct\_22](<#typedef-t__struct_22>)

- [typedef T\_\_struct\_23](<#typedef-t__struct_23>)

- [typedef T\_\_struct\_24](<#typedef-t__struct_24>)

- [typedef T\_\_struct\_25](<#typedef-t__struct_25>)

- [typedef T\_\_struct\_26](<#typedef-t__struct_26>)

- [typedef T\_\_struct\_27](<#typedef-t__struct_27>)

- [typedef T\_\_struct\_28](<#typedef-t__struct_28>)

- [typedef T\_\_struct\_3](<#typedef-t__struct_3>)

- [typedef T\_\_struct\_4](<#typedef-t__struct_4>)

- [typedef T\_\_struct\_5](<#typedef-t__struct_5>)

- [typedef T\_\_struct\_6](<#typedef-t__struct_6>)

- [typedef T\_\_struct\_7](<#typedef-t__struct_7>)

- [typedef T\_\_struct\_8](<#typedef-t__struct_8>)

- [typedef T\_\_struct\_9](<#typedef-t__struct_9>)

# Constants


```haxe
import stdgo.strings_test.Strings
```


```haxe
final _benchmarkString:stdgo.GoString = (("some_text=some☺value" : stdgo.GoString))
```


```haxe
final _space:stdgo.GoString = (("\t\x0B\r\x0C\n�  　" : stdgo.GoString))
```


# Variables


```haxe
import stdgo.strings_test.Strings
```


```haxe
var _abcd:stdgo.GoString
```


```haxe
var _algorithmTestCases:stdgo.Slice<stdgo.strings_test.T__struct_5>
```


```haxe
var _benchInputHard:stdgo.GoString
```


```haxe
var _benchInputTorture:stdgo.GoString
```


```haxe
var _benchNeedleTorture:stdgo.GoString
```


```haxe
var _benchmarkLongString:stdgo.GoString
```


```haxe
var _capitalLetters:stdgo.Ref<stdgo.strings.Replacer>
```


```haxe
var _commas:stdgo.GoString
```


```haxe
var _compareTests:stdgo.Slice<stdgo.strings_test.T__struct_2>
```


```haxe
var _cutPrefixTests:stdgo.Slice<stdgo.strings_test.T__struct_27>
```


```haxe
var _cutSuffixTests:stdgo.Slice<stdgo.strings_test.T__struct_28>
```


```haxe
var _cutTests:stdgo.Slice<stdgo.strings_test.T__struct_26>
```


```haxe
var _dots:stdgo.GoString
```


```haxe
var _emptyString:stdgo.GoString
```


```haxe
var _faces:stdgo.GoString
```


```haxe
var _fieldstests:stdgo.Slice<stdgo.strings_test.FieldsTest>
```


```haxe
var _htmlEscaper:stdgo.Ref<stdgo.strings.Replacer>
```


```haxe
var _htmlUnescaper:stdgo.Ref<stdgo.strings.Replacer>
```


```haxe
var _indexAnyTests:stdgo.Slice<stdgo.strings_test.IndexTest>
```


```haxe
var _indexFuncTests:stdgo.Slice<stdgo.strings_test.T__struct_16>
```


```haxe
var _indexTests:stdgo.Slice<stdgo.strings_test.IndexTest>
```


```haxe
var _isDigit:stdgo.strings_test.T_predicate
```


```haxe
var _isSpace:stdgo.strings_test.T_predicate
```


```haxe
var _isUpper:stdgo.strings_test.T_predicate
```


```haxe
var _isValidRune:stdgo.strings_test.T_predicate
```


```haxe
var _lastIndexAnyTests:stdgo.Slice<stdgo.strings_test.IndexTest>
```


```haxe
var _lastIndexTests:stdgo.Slice<stdgo.strings_test.IndexTest>
```


```haxe
var _longString:stdgo.GoString
```


```haxe
var _lowerTests:stdgo.Slice<stdgo.strings_test.StringTest>
```


```haxe
var _mapdata:stdgo.Slice<stdgo.strings_test.T__struct_7>
```


```haxe
var _sinkS:stdgo.GoString
```


```haxe
var _someBytes:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _splitaftertests:stdgo.Slice<stdgo.strings_test.SplitTest>
```


```haxe
var _splittests:stdgo.Slice<stdgo.strings_test.SplitTest>
```


```haxe
var _stringSink:stdgo.GoString
```


```haxe
var _stringdata:stdgo.Slice<stdgo.strings_test.T__struct_7>
```


```haxe
var _toValidUTF8Tests:stdgo.Slice<stdgo.strings_test.T__struct_11>
```


```haxe
var _trimFuncTests:stdgo.Slice<stdgo.strings_test.T__struct_14>
```


```haxe
var _trimSpaceTests:stdgo.Slice<stdgo.strings_test.StringTest>
```


```haxe
var _trimTests:stdgo.Slice<stdgo.strings_test.T__struct_12>
```


```haxe
var _upperTests:stdgo.Slice<stdgo.strings_test.StringTest>
```


```haxe
var containsAnyTests:stdgo.Slice<stdgo.strings_test.T__struct_22>
```


```haxe
var containsRuneTests:stdgo.Slice<stdgo.strings_test.T__struct_23>
```


```haxe
var containsTests:stdgo.Slice<stdgo.strings_test.T__struct_22>
```


```haxe
var countTests:stdgo.Slice<stdgo.strings_test.T__struct_25>
```


```haxe
var equalFoldTests:stdgo.Slice<stdgo.strings_test.T__struct_24>
```


```haxe
var fieldsFuncTests:stdgo.Slice<stdgo.strings_test.FieldsTest>
```


```haxe
var repeatTests:stdgo.Slice<stdgo.strings_test.T__struct_17>
```


```haxe
var replaceTests:stdgo.Slice<stdgo.strings_test.T__struct_21>
```


```haxe
var runesTests:stdgo.Slice<stdgo.strings_test.T__struct_19>
```


```haxe
var titleTests:stdgo.Slice<stdgo.strings_test.StringTest>
```


```haxe
var unreadRuneErrorTests:stdgo.Slice<stdgo.strings_test.T__struct_20>
```


```haxe
var _:Bool
```


```haxe
var _benchmarks:stdgo.Slice<stdgo.testing.InternalBenchmark>
```


```haxe
var _examples:stdgo.Slice<stdgo.testing.InternalExample>
```


```haxe
var _fuzzTargets:stdgo.Slice<stdgo.testing.InternalFuzzTarget>
```


```haxe
var _tests:stdgo.Slice<stdgo.testing.InternalTest>
```


# Functions


```haxe
import stdgo.strings_test.Strings
```


## function \_benchmarkBuilder


```haxe
function _benchmarkBuilder(_b:stdgo.Ref<stdgo.testing.B>, _f:(_b:stdgo.Ref<stdgo.testing.B>, _numWrite:stdgo.GoInt, _grow:Bool):Void):Void
```


[\(view code\)](<./Strings.hx#L1821>)


## function \_benchmarkCountHard


```haxe
function _benchmarkCountHard(_b:stdgo.Ref<stdgo.testing.B>, _sep:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L4103>)


## function \_benchmarkIndexHard


```haxe
function _benchmarkIndexHard(_b:stdgo.Ref<stdgo.testing.B>, _sep:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L4087>)


## function \_benchmarkLastIndexHard


```haxe
function _benchmarkLastIndexHard(_b:stdgo.Ref<stdgo.testing.B>, _sep:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L4095>)


## function \_benchmarkSingleString


```haxe
function _benchmarkSingleString(_b:stdgo.Ref<stdgo.testing.B>, _pattern:stdgo.GoString, _text:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L2794>)


## function \_check


```haxe
function _check(_t:stdgo.Ref<stdgo.testing.T_>, _b:stdgo.Ref<stdgo.strings.Builder>, _want:stdgo.GoString):Void
```


[\(view code\)](<./Strings.hx#L1480>)


## function \_eq


```haxe
function _eq(_a:stdgo.Slice<stdgo.GoString>, _b:stdgo.Slice<stdgo.GoString>):Bool
```


[\(view code\)](<./Strings.hx#L3050>)


## function \_equal


```haxe
function _equal(_m:stdgo.GoString, _s1:stdgo.GoString, _s2:stdgo.GoString, _t:stdgo.Ref<stdgo.testing.T_>):Bool
```


[\(view code\)](<./Strings.hx#L3661>)


## function \_makeBenchInputHard


```haxe
function _makeBenchInputHard():stdgo.GoString
```


[\(view code\)](<./Strings.hx#L4086>)


## function \_makeFieldsInput


```haxe
function _makeFieldsInput():stdgo.GoString
```


[\(view code\)](<./Strings.hx#L809>)


## function \_makeFieldsInputASCII


```haxe
function _makeFieldsInputASCII():stdgo.GoString
```


[\(view code\)](<./Strings.hx#L850>)


## function \_not


```haxe
function _not(_p:stdgo.strings_test.T_predicate):stdgo.strings_test.T_predicate
```


[\(view code\)](<./Strings.hx#L3633>)


## function \_oldHTMLEscape


```haxe
function _oldHTMLEscape(_s:stdgo.GoString):stdgo.GoString
```



The http package's old HTML escaping function.  

[\(view code\)](<./Strings.hx#L2551>)


## function \_repeat


```haxe
function _repeat(_s:stdgo.GoString, _count:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Strings.hx#L3719>)


## function \_rot13


```haxe
function _rot13(_r:stdgo.GoRune):stdgo.GoRune
```



User\-defined self\-inverse mapping function  

[\(view code\)](<./Strings.hx#L3379>)


## function \_runIndexTests


```haxe
function _runIndexTests(_t:stdgo.Ref<stdgo.testing.T_>, _f:(_s:stdgo.GoString, _sep:stdgo.GoString):stdgo.GoInt, _funcName:stdgo.GoString, _testCases:stdgo.Slice<stdgo.strings_test.IndexTest>):Void
```



Execute f on each test case.  funcName should be the name of f; it's used
in failure reports.  

[\(view code\)](<./Strings.hx#L3068>)


## function \_runStringTests


```haxe
function _runStringTests(_t:stdgo.Ref<stdgo.testing.T_>, _f:(), _funcName:stdgo.GoString, _testCases:stdgo.Slice<stdgo.strings_test.StringTest>):Void
```



Execute f on each test case.  funcName should be the name of f; it's used
in failure reports.  

[\(view code\)](<./Strings.hx#L3361>)


## function \_runesEqual


```haxe
function _runesEqual(_a:stdgo.Slice<stdgo.GoRune>, _b:stdgo.Slice<stdgo.GoRune>):Bool
```


[\(view code\)](<./Strings.hx#L3803>)


## function \_simpleIndex


```haxe
function _simpleIndex(_s:stdgo.GoString, _sep:stdgo.GoString):stdgo.GoInt
```


[\(view code\)](<./Strings.hx#L3108>)


## function \_tenRunes


```haxe
function _tenRunes(_ch:stdgo.GoRune):stdgo.GoString
```


[\(view code\)](<./Strings.hx#L3369>)


## function benchmarkBuildString\_Builder


```haxe
function benchmarkBuildString_Builder(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L1835>)


## function benchmarkBuildString\_ByteBuffer


```haxe
function benchmarkBuildString_ByteBuffer(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L1855>)


## function benchmarkByteByteMap


```haxe
function benchmarkByteByteMap(_b:stdgo.Ref<stdgo.testing.B>):Void
```



BenchmarkByteByteMap compares byteByteImpl against Map.  

[\(view code\)](<./Strings.hx#L2896>)


## function benchmarkByteByteMatch


```haxe
function benchmarkByteByteMatch(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L2823>)


## function benchmarkByteByteNoMatch


```haxe
function benchmarkByteByteNoMatch(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L2814>)


## function benchmarkByteByteReplaces


```haxe
function benchmarkByteByteReplaces(_b:stdgo.Ref<stdgo.testing.B>):Void
```



BenchmarkByteByteReplaces compares byteByteImpl against multiple Replaces.  

[\(view code\)](<./Strings.hx#L2884>)


## function benchmarkByteReplacerWriteString


```haxe
function benchmarkByteReplacerWriteString(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L2870>)


## function benchmarkByteStringMatch


```haxe
function benchmarkByteStringMatch(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L2832>)


## function benchmarkByteStringReplacerWriteString


```haxe
function benchmarkByteStringReplacerWriteString(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L2859>)


## function benchmarkClone


```haxe
function benchmarkClone(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L1892>)


## function benchmarkCountByte


```haxe
function benchmarkCountByte(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L4167>)


## function benchmarkCountHard1


```haxe
function benchmarkCountHard1(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L4132>)


## function benchmarkCountHard2


```haxe
function benchmarkCountHard2(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L4135>)


## function benchmarkCountHard3


```haxe
function benchmarkCountHard3(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L4138>)


## function benchmarkCountTorture


```haxe
function benchmarkCountTorture(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L4149>)


## function benchmarkCountTortureOverlapping


```haxe
function benchmarkCountTortureOverlapping(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L4157>)


## function benchmarkEqualFold


```haxe
function benchmarkEqualFold(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L4003>)


## function benchmarkFields


```haxe
function benchmarkFields(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L4185>)


## function benchmarkFieldsFunc


```haxe
function benchmarkFieldsFunc(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L4207>)


## function benchmarkGenericMatch1


```haxe
function benchmarkGenericMatch1(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L2775>)


## function benchmarkGenericMatch2


```haxe
function benchmarkGenericMatch2(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L2785>)


## function benchmarkGenericNoMatch


```haxe
function benchmarkGenericNoMatch(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L2765>)


## function benchmarkHTMLEscapeNew


```haxe
function benchmarkHTMLEscapeNew(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L2841>)


## function benchmarkHTMLEscapeOld


```haxe
function benchmarkHTMLEscapeOld(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L2850>)


## function benchmarkIndex


```haxe
function benchmarkIndex(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L3247>)


## function benchmarkIndexAnyASCII


```haxe
function benchmarkIndexAnyASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L4308>)


## function benchmarkIndexAnyUTF8


```haxe
function benchmarkIndexAnyUTF8(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L4330>)


## function benchmarkIndexByte


```haxe
function benchmarkIndexByte(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L3275>)


## function benchmarkIndexHard1


```haxe
function benchmarkIndexHard1(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L4111>)


## function benchmarkIndexHard2


```haxe
function benchmarkIndexHard2(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L4114>)


## function benchmarkIndexHard3


```haxe
function benchmarkIndexHard3(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L4117>)


## function benchmarkIndexHard4


```haxe
function benchmarkIndexHard4(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L4120>)


## function benchmarkIndexPeriodic


```haxe
function benchmarkIndexPeriodic(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L4427>)


## function benchmarkIndexRune


```haxe
function benchmarkIndexRune(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L3205>)


## function benchmarkIndexRuneFastPath


```haxe
function benchmarkIndexRuneFastPath(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L3233>)


## function benchmarkIndexRuneLongString


```haxe
function benchmarkIndexRuneLongString(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L3219>)


## function benchmarkIndexTorture


```haxe
function benchmarkIndexTorture(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L4141>)


## function benchmarkJoin


```haxe
function benchmarkJoin(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L4441>)


## function benchmarkLastIndex


```haxe
function benchmarkLastIndex(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L3261>)


## function benchmarkLastIndexAnyASCII


```haxe
function benchmarkLastIndexAnyASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L4352>)


## function benchmarkLastIndexAnyUTF8


```haxe
function benchmarkLastIndexAnyUTF8(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L4374>)


## function benchmarkLastIndexHard1


```haxe
function benchmarkLastIndexHard1(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L4123>)


## function benchmarkLastIndexHard2


```haxe
function benchmarkLastIndexHard2(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L4126>)


## function benchmarkLastIndexHard3


```haxe
function benchmarkLastIndexHard3(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L4129>)


## function benchmarkMap


```haxe
function benchmarkMap(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L2916>)


## function benchmarkMapNoChanges


```haxe
function benchmarkMapNoChanges(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L3526>)


## function benchmarkRepeat


```haxe
function benchmarkRepeat(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L4269>)


## function benchmarkRepeatLarge


```haxe
function benchmarkRepeatLarge(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L4284>)


## function benchmarkReplaceAll


```haxe
function benchmarkReplaceAll(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L4472>)


## function benchmarkSingleLongSuffixFail


```haxe
function benchmarkSingleLongSuffixFail(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L2808>)


## function benchmarkSingleMatch


```haxe
function benchmarkSingleMatch(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L2811>)


## function benchmarkSingleMaxSkipping


```haxe
function benchmarkSingleMaxSkipping(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L2805>)


## function benchmarkSplitEmptySeparator


```haxe
function benchmarkSplitEmptySeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L4229>)


## function benchmarkSplitMultiByteSeparator


```haxe
function benchmarkSplitMultiByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L4245>)


## function benchmarkSplitNMultiByteSeparator


```haxe
function benchmarkSplitNMultiByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L4261>)


## function benchmarkSplitNSingleByteSeparator


```haxe
function benchmarkSplitNSingleByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L4253>)


## function benchmarkSplitSingleByteSeparator


```haxe
function benchmarkSplitSingleByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L4237>)


## function benchmarkToLower


```haxe
function benchmarkToLower(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L3511>)


## function benchmarkToUpper


```haxe
function benchmarkToUpper(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L3496>)


## function benchmarkToValidUTF8


```haxe
function benchmarkToValidUTF8(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L3618>)


## function benchmarkTrim


```haxe
function benchmarkTrim(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L3586>)


## function benchmarkTrimASCII


```haxe
function benchmarkTrimASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L4396>)


## function benchmarkTrimByte


```haxe
function benchmarkTrimByte(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L4418>)


## function benchmarkTrimSpace


```haxe
function benchmarkTrimSpace(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strings.hx#L4459>)


## function exampleBuilder


```haxe
function exampleBuilder():Void
```


[\(view code\)](<./Strings.hx#L1995>)


## function exampleClone


```haxe
function exampleClone():Void
```


[\(view code\)](<./Strings.hx#L1989>)


## function exampleCompare


```haxe
function exampleCompare():Void
```


[\(view code\)](<./Strings.hx#L2006>)


## function exampleContains


```haxe
function exampleContains():Void
```


[\(view code\)](<./Strings.hx#L2011>)


## function exampleContainsAny


```haxe
function exampleContainsAny():Void
```


[\(view code\)](<./Strings.hx#L2017>)


## function exampleContainsRune


```haxe
function exampleContainsRune():Void
```


[\(view code\)](<./Strings.hx#L2025>)


## function exampleCount


```haxe
function exampleCount():Void
```


[\(view code\)](<./Strings.hx#L2029>)


## function exampleCut


```haxe
function exampleCut():Void
```


[\(view code\)](<./Strings.hx#L2033>)


## function exampleCutPrefix


```haxe
function exampleCutPrefix():Void
```


[\(view code\)](<./Strings.hx#L2043>)


## function exampleCutSuffix


```haxe
function exampleCutSuffix():Void
```


[\(view code\)](<./Strings.hx#L2051>)


## function exampleEqualFold


```haxe
function exampleEqualFold():Void
```


[\(view code\)](<./Strings.hx#L2059>)


## function exampleFields


```haxe
function exampleFields():Void
```


[\(view code\)](<./Strings.hx#L2064>)


## function exampleFieldsFunc


```haxe
function exampleFieldsFunc():Void
```


[\(view code\)](<./Strings.hx#L2067>)


## function exampleHasPrefix


```haxe
function exampleHasPrefix():Void
```


[\(view code\)](<./Strings.hx#L2073>)


## function exampleHasSuffix


```haxe
function exampleHasSuffix():Void
```


[\(view code\)](<./Strings.hx#L2078>)


## function exampleIndex


```haxe
function exampleIndex():Void
```


[\(view code\)](<./Strings.hx#L2084>)


## function exampleIndexAny


```haxe
function exampleIndexAny():Void
```


[\(view code\)](<./Strings.hx#L2095>)


## function exampleIndexByte


```haxe
function exampleIndexByte():Void
```


[\(view code\)](<./Strings.hx#L2099>)


## function exampleIndexFunc


```haxe
function exampleIndexFunc():Void
```


[\(view code\)](<./Strings.hx#L2088>)


## function exampleIndexRune


```haxe
function exampleIndexRune():Void
```


[\(view code\)](<./Strings.hx#L2104>)


## function exampleJoin


```haxe
function exampleJoin():Void
```


[\(view code\)](<./Strings.hx#L2128>)


## function exampleLastIndex


```haxe
function exampleLastIndex():Void
```


[\(view code\)](<./Strings.hx#L2108>)


## function exampleLastIndexAny


```haxe
function exampleLastIndexAny():Void
```


[\(view code\)](<./Strings.hx#L2113>)


## function exampleLastIndexByte


```haxe
function exampleLastIndexByte():Void
```


[\(view code\)](<./Strings.hx#L2118>)


## function exampleLastIndexFunc


```haxe
function exampleLastIndexFunc():Void
```


[\(view code\)](<./Strings.hx#L2123>)


## function exampleMap


```haxe
function exampleMap():Void
```


[\(view code\)](<./Strings.hx#L2172>)


## function exampleNewReplacer


```haxe
function exampleNewReplacer():Void
```


[\(view code\)](<./Strings.hx#L2183>)


## function exampleRepeat


```haxe
function exampleRepeat():Void
```


[\(view code\)](<./Strings.hx#L2132>)


## function exampleReplace


```haxe
function exampleReplace():Void
```


[\(view code\)](<./Strings.hx#L2135>)


## function exampleReplaceAll


```haxe
function exampleReplaceAll():Void
```


[\(view code\)](<./Strings.hx#L2139>)


## function exampleSplit


```haxe
function exampleSplit():Void
```


[\(view code\)](<./Strings.hx#L2142>)


## function exampleSplitAfter


```haxe
function exampleSplitAfter():Void
```


[\(view code\)](<./Strings.hx#L2153>)


## function exampleSplitAfterN


```haxe
function exampleSplitAfterN():Void
```


[\(view code\)](<./Strings.hx#L2156>)


## function exampleSplitN


```haxe
function exampleSplitN():Void
```


[\(view code\)](<./Strings.hx#L2148>)


## function exampleTitle


```haxe
function exampleTitle():Void
```


[\(view code\)](<./Strings.hx#L2159>)


## function exampleToLower


```haxe
function exampleToLower():Void
```


[\(view code\)](<./Strings.hx#L2193>)


## function exampleToLowerSpecial


```haxe
function exampleToLowerSpecial():Void
```


[\(view code\)](<./Strings.hx#L2196>)


## function exampleToTitle


```haxe
function exampleToTitle():Void
```


[\(view code\)](<./Strings.hx#L2164>)


## function exampleToTitleSpecial


```haxe
function exampleToTitleSpecial():Void
```


[\(view code\)](<./Strings.hx#L2169>)


## function exampleToUpper


```haxe
function exampleToUpper():Void
```


[\(view code\)](<./Strings.hx#L2187>)


## function exampleToUpperSpecial


```haxe
function exampleToUpperSpecial():Void
```


[\(view code\)](<./Strings.hx#L2190>)


## function exampleToValidUTF8


```haxe
function exampleToValidUTF8():Void
```


[\(view code\)](<./Strings.hx#L2238>)


## function exampleTrim


```haxe
function exampleTrim():Void
```


[\(view code\)](<./Strings.hx#L2199>)


## function exampleTrimFunc


```haxe
function exampleTrimFunc():Void
```


[\(view code\)](<./Strings.hx#L2217>)


## function exampleTrimLeft


```haxe
function exampleTrimLeft():Void
```


[\(view code\)](<./Strings.hx#L2222>)


## function exampleTrimLeftFunc


```haxe
function exampleTrimLeftFunc():Void
```


[\(view code\)](<./Strings.hx#L2225>)


## function exampleTrimPrefix


```haxe
function exampleTrimPrefix():Void
```


[\(view code\)](<./Strings.hx#L2205>)


## function exampleTrimRight


```haxe
function exampleTrimRight():Void
```


[\(view code\)](<./Strings.hx#L2230>)


## function exampleTrimRightFunc


```haxe
function exampleTrimRightFunc():Void
```


[\(view code\)](<./Strings.hx#L2233>)


## function exampleTrimSpace


```haxe
function exampleTrimSpace():Void
```


[\(view code\)](<./Strings.hx#L2202>)


## function exampleTrimSuffix


```haxe
function exampleTrimSuffix():Void
```


[\(view code\)](<./Strings.hx#L2211>)


## function testBuilder


```haxe
function testBuilder(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L1500>)


## function testBuilderAllocs


```haxe
function testBuilderAllocs(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L1692>)


## function testBuilderCopyPanic


```haxe
function testBuilderCopyPanic(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L1705>)


## function testBuilderGrow


```haxe
function testBuilderGrow(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L1572>)


## function testBuilderReset


```haxe
function testBuilderReset(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L1555>)


## function testBuilderString


```haxe
function testBuilderString(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L1525>)


## function testBuilderWrite2


```haxe
function testBuilderWrite2(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L1640>)


## function testBuilderWriteByte


```haxe
function testBuilderWriteByte(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L1676>)


## function testBuilderWriteInvalidRune


```haxe
function testBuilderWriteInvalidRune(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L1814>)


## function testCaseConsistency


```haxe
function testCaseConsistency(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L3679>)


## function testClone


```haxe
function testClone(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L1875>)


## function testCompare


```haxe
function testCompare(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L1902>)


## function testCompareIdenticalString


```haxe
function testCompareIdenticalString(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L1910>)


## function testCompareStrings


```haxe
function testCompareStrings(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L1919>)


## function testContains


```haxe
function testContains(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L3957>)


## function testContainsAny


```haxe
function testContainsAny(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L3964>)


## function testContainsFunc


```haxe
function testContainsFunc(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L3978>)


## function testContainsRune


```haxe
function testContainsRune(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L3971>)


## function testCount


```haxe
function testCount(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L4046>)


## function testCut


```haxe
function testCut(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L4056>)


## function testCutPrefix


```haxe
function testCutPrefix(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L4066>)


## function testCutSuffix


```haxe
function testCutSuffix(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L4076>)


## function testEmptyReaderConcurrent


```haxe
function testEmptyReaderConcurrent(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L2353>)


## function testEqualFold


```haxe
function testEqualFold(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L3987>)


## function testFields


```haxe
function testFields(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L3330>)


## function testFieldsFunc


```haxe
function testFieldsFunc(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L3339>)


## function testFinderCreation


```haxe
function testFinderCreation(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L2981>)


## function testFinderNext


```haxe
function testFinderNext(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L2954>)


## function testGenericTrieBuilding


```haxe
function testGenericTrieBuilding(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



TestGenericTrieBuilding verifies the structure of the generated trie. There
is one node per line, and the key ending with the current line is in the
trie if it ends with a "\+".  

[\(view code\)](<./Strings.hx#L2739>)


## function testIndex


```haxe
function testIndex(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L3076>)


## function testIndexAny


```haxe
function testIndexAny(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L3082>)


## function testIndexByte


```haxe
function testIndexByte(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L3088>)


## function testIndexFunc


```haxe
function testIndexFunc(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L3649>)


## function testIndexRandom


```haxe
function testIndexRandom(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L3120>)


## function testIndexRune


```haxe
function testIndexRune(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L3155>)


## function testLastIndex


```haxe
function testLastIndex(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L3079>)


## function testLastIndexAny


```haxe
function testLastIndexAny(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L3085>)


## function testLastIndexByte


```haxe
function testLastIndexByte(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L3099>)


## function testMap


```haxe
function testMap(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L3389>)


## function testPickAlgorithm


```haxe
function testPickAlgorithm(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



TestPickAlgorithm tests that NewReplacer picks the correct algorithm.  

[\(view code\)](<./Strings.hx#L2712>)


## function testReadAfterBigSeek


```haxe
function testReadAfterBigSeek(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L2282>)


## function testReadByte


```haxe
function testReadByte(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L3829>)


## function testReadRune


```haxe
function testReadRune(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L3870>)


## function testReader


```haxe
function testReader(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L2243>)


## function testReaderAt


```haxe
function testReaderAt(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L2297>)


## function testReaderAtConcurrent


```haxe
function testReaderAtConcurrent(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L2312>)


## function testReaderLenSize


```haxe
function testReaderLenSize(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



tests that Len is affected by reads, but Size is not.  

[\(view code\)](<./Strings.hx#L2453>)


## function testReaderReset


```haxe
function testReaderReset(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L2465>)


## function testReaderZero


```haxe
function testReaderZero(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L2492>)


## function testRepeat


```haxe
function testRepeat(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L3710>)


## function testRepeatCatchesOverflow


```haxe
function testRepeatCatchesOverflow(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



See Issue golang.org/issue/16237  

[\(view code\)](<./Strings.hx#L3778>)


## function testReplace


```haxe
function testReplace(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L3931>)


## function testReplacer


```haxe
function testReplacer(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



TestReplacer tests the replacer implementations.  

[\(view code\)](<./Strings.hx#L2581>)


## function testRunes


```haxe
function testRunes(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L3814>)


## function testSpecialCase


```haxe
function testSpecialCase(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L3537>)


## function testSplit


```haxe
function testSplit(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L3289>)


## function testSplitAfter


```haxe
function testSplitAfter(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L3311>)


## function testTitle


```haxe
function testTitle(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L3947>)


## function testToLower


```haxe
function testToLower(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L3485>)


## function testToUpper


```haxe
function testToUpper(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L3482>)


## function testToValidUTF8


```haxe
function testToValidUTF8(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L3488>)


## function testTrim


```haxe
function testTrim(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L3560>)


## function testTrimFunc


```haxe
function testTrimFunc(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L3638>)


## function testTrimSpace


```haxe
function testTrimSpace(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L3557>)


## function testUnreadRuneError


```haxe
function testUnreadRuneError(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L3915>)


## function testWriteStringError


```haxe
function testWriteStringError(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



TestWriteStringError tests that WriteString returns an error
received from the underlying io.Writer.  

[\(view code\)](<./Strings.hx#L2726>)


## function testWriteTo


```haxe
function testWriteTo(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Strings.hx#L2423>)


## function main


```haxe
function main():Void
```


[\(view code\)](<./Strings.hx#L215>)


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


[\(view code\)](<./Strings_test.hx#L933>)


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
function new(?_s:stdgo.GoString, ?_sep:stdgo.GoString, ?_out:stdgo.GoInt):Void
```


[\(view code\)](<./Strings_test.hx#L894>)


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
function new(?_s:stdgo.GoString, ?_sep:stdgo.GoString, ?_n:stdgo.GoInt, ?_a:stdgo.Slice<stdgo.GoString>):Void
```


[\(view code\)](<./Strings_test.hx#L914>)


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


[\(view code\)](<./Strings_test.hx#L950>)


## class T\_testReplacer\_2\_\_\_localname\_\_\_testCase


```haxe
var _in:stdgo.GoString
```


```haxe
var _out:stdgo.GoString
```


```haxe
var _r:stdgo.Ref<stdgo.strings.Replacer>
```


### T\_testReplacer\_2\_\_\_localname\_\_\_testCase function new


```haxe
function new(?_r:stdgo.Ref<stdgo.strings.Replacer>, ?_in:stdgo.GoString, ?_out:stdgo.GoString):Void
```


[\(view code\)](<./Strings_test.hx#L2568>)


# Typedefs


```haxe
import stdgo.strings_test.*
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = {
	_want:stdgo.GoString;
	_name:stdgo.GoString;
	_n:stdgo.GoInt;
	public function _fn();
};
```


## typedef T\_\_struct\_1


```haxe
typedef T__struct_1 = {
	_wantPanic:Bool;
	_name:stdgo.GoString;
	public function _fn():Void;
};
```


## typedef T\_\_struct\_10


```haxe
typedef T__struct_10 = {
	_want:stdgo.GoInt;
	_rune:stdgo.GoInt32;
	_in:stdgo.GoString;
};
```


## typedef T\_\_struct\_11


```haxe
typedef T__struct_11 = {
	_repl:stdgo.GoString;
	_out:stdgo.GoString;
	_in:stdgo.GoString;
};
```


## typedef T\_\_struct\_12


```haxe
typedef T__struct_12 = {
	_out:stdgo.GoString;
	_in:stdgo.GoString;
	_f:stdgo.GoString;
	_arg:stdgo.GoString;
};
```


## typedef T\_\_struct\_13


```haxe
typedef T__struct_13 = {
	_name:stdgo.GoString;
	_input:stdgo.GoString;
};
```


## typedef T\_\_struct\_14


```haxe
typedef T__struct_14 = {
	_trimOut:stdgo.GoString;
	_rightOut:stdgo.GoString;
	_leftOut:stdgo.GoString;
	_in:stdgo.GoString;
	_f:stdgo.strings_test.T_predicate;
};
```


## typedef T\_\_struct\_15


```haxe
typedef T__struct_15 = {
	public function _trim(:stdgo.GoString, :()):stdgo.GoString;
	_out:stdgo.GoString;
	_name:stdgo.GoString;
};
```


## typedef T\_\_struct\_16


```haxe
typedef T__struct_16 = {
	_last:stdgo.GoInt;
	_in:stdgo.GoString;
	_first:stdgo.GoInt;
	_f:stdgo.strings_test.T_predicate;
};
```


## typedef T\_\_struct\_17


```haxe
typedef T__struct_17 = {
	_out:stdgo.GoString;
	_in:stdgo.GoString;
	_count:stdgo.GoInt;
};
```


## typedef T\_\_struct\_18


```haxe
typedef T__struct_18 = {
	_s:stdgo.GoString;
	_errStr:stdgo.GoString;
	_count:stdgo.GoInt;
};
```


## typedef T\_\_struct\_19


```haxe
typedef T__struct_19 = {
	_out:stdgo.Slice<stdgo.GoInt32>;
	_lossy:Bool;
	_in:stdgo.GoString;
};
```


## typedef T\_\_struct\_2


```haxe
typedef T__struct_2 = {
	_i:stdgo.GoInt;
	_b:stdgo.GoString;
	_a:stdgo.GoString;
};
```


## typedef T\_\_struct\_20


```haxe
typedef T__struct_20 = {
	_name:stdgo.GoString;
	public function _f();
};
```


## typedef T\_\_struct\_21


```haxe
typedef T__struct_21 = {
	_out:stdgo.GoString;
	_old:stdgo.GoString;
	_new:stdgo.GoString;
	_n:stdgo.GoInt;
	_in:stdgo.GoString;
};
```


## typedef T\_\_struct\_22


```haxe
typedef T__struct_22 = {
	_substr:stdgo.GoString;
	_str:stdgo.GoString;
	_expected:Bool;
};
```


## typedef T\_\_struct\_23


```haxe
typedef T__struct_23 = {
	_str:stdgo.GoString;
	_r:stdgo.GoInt32;
	_expected:Bool;
};
```


## typedef T\_\_struct\_24


```haxe
typedef T__struct_24 = {
	_t:stdgo.GoString;
	_s:stdgo.GoString;
	_out:Bool;
};
```


## typedef T\_\_struct\_25


```haxe
typedef T__struct_25 = {
	_sep:stdgo.GoString;
	_s:stdgo.GoString;
	_num:stdgo.GoInt;
};
```


## typedef T\_\_struct\_26


```haxe
typedef T__struct_26 = {
	_sep:stdgo.GoString;
	_s:stdgo.GoString;
	_found:Bool;
	_before:stdgo.GoString;
	_after:stdgo.GoString;
};
```


## typedef T\_\_struct\_27


```haxe
typedef T__struct_27 = {
	_sep:stdgo.GoString;
	_s:stdgo.GoString;
	_found:Bool;
	_after:stdgo.GoString;
};
```


## typedef T\_\_struct\_28


```haxe
typedef T__struct_28 = {
	_sep:stdgo.GoString;
	_s:stdgo.GoString;
	_found:Bool;
	_before:stdgo.GoString;
};
```


## typedef T\_\_struct\_3


```haxe
typedef T__struct_3 = {
	_wantpos:stdgo.GoInt64;
	_want:stdgo.GoString;
	_seekerr:stdgo.GoString;
	_seek:stdgo.GoInt;
	_readerr:stdgo.Error;
	_off:stdgo.GoInt64;
	_n:stdgo.GoInt;
};
```


## typedef T\_\_struct\_4


```haxe
typedef T__struct_4 = {
	_wanterr:stdgo.AnyInterface;
	_want:stdgo.GoString;
	_off:stdgo.GoInt64;
	_n:stdgo.GoInt;
};
```


## typedef T\_\_struct\_5


```haxe
typedef T__struct_5 = {
	_want:stdgo.GoString;
	_r:stdgo.Ref<stdgo.strings.Replacer>;
};
```


## typedef T\_\_struct\_6


```haxe
typedef T__struct_6 = {
	_out:stdgo.GoString;
	_in:stdgo.GoString;
};
```


## typedef T\_\_struct\_7


```haxe
typedef T__struct_7 = {
	_name:stdgo.GoString;
	_data:stdgo.GoString;
};
```


## typedef T\_\_struct\_8


```haxe
typedef T__struct_8 = {
	_text:stdgo.GoString;
	_pat:stdgo.GoString;
	_index:stdgo.GoInt;
};
```


## typedef T\_\_struct\_9


```haxe
typedef T__struct_9 = {
	_suf:stdgo.Slice<stdgo.GoInt>;
	_pattern:stdgo.GoString;
	_bad:stdgo.GoArray<stdgo.GoInt>;
};
```


