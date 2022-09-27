# Module: stdgo.strings


[(view library index)](../stdgo.md)


# Overview


 


# Index


- [Variables](<#variables>)

- [function \_benchmarkBuilder\(\_b:stdgo.Ref\<stdgo.testing.B\>, \_f:\(\_b:stdgo.Ref\<stdgo.testing.B\>, \_numWrite:stdgo.GoInt, \_grow:Bool\):Void\):Void](<#function-_benchmarkbuilder>)

- [function \_benchmarkCountHard\(\_b:stdgo.Ref\<stdgo.testing.B\>, \_sep:stdgo.GoString\):Void](<#function-_benchmarkcounthard>)

- [function \_benchmarkIndexHard\(\_b:stdgo.Ref\<stdgo.testing.B\>, \_sep:stdgo.GoString\):Void](<#function-_benchmarkindexhard>)

- [function \_benchmarkLastIndexHard\(\_b:stdgo.Ref\<stdgo.testing.B\>, \_sep:stdgo.GoString\):Void](<#function-_benchmarklastindexhard>)

- [function \_benchmarkSingleString\(\_b:stdgo.Ref\<stdgo.testing.B\>, \_pattern:stdgo.GoString, \_text:stdgo.GoString\):Void](<#function-_benchmarksinglestring>)

- [function \_check\(\_t:stdgo.Ref\<stdgo.testing.T\>, \_b:stdgo.Ref\<stdgo.strings.Builder\>, \_want:stdgo.GoString\):Void](<#function-_check>)

- [function \_eq\(\_a:stdgo.Slice\<stdgo.GoString\>, \_b:stdgo.Slice\<stdgo.GoString\>\):Bool](<#function-_eq>)

- [function \_equal\(\_m:stdgo.GoString, \_s1:stdgo.GoString, \_s2:stdgo.GoString, \_t:stdgo.Ref\<stdgo.testing.T\>\):Bool](<#function-_equal>)

- [function \_makeBenchInputHard\(\):stdgo.GoString](<#function-_makebenchinputhard>)

- [function \_not\(\_p:stdgo.strings\_test.\_Strings\_test.T\_predicate\):stdgo.strings\_test.\_Strings\_test.T\_predicate](<#function-_not>)

- [function \_oldHTMLEscape\(\_s:stdgo.GoString\):stdgo.GoString](<#function-_oldhtmlescape>)

- [function \_repeat\(\_s:stdgo.GoString, \_count:stdgo.GoInt\):stdgo.Error](<#function-_repeat>)

- [function \_rot13\(\_r:stdgo.GoRune\):stdgo.GoRune](<#function-_rot13>)

- [function \_runIndexTests\(\_t:stdgo.Ref\<stdgo.testing.T\>, \_f:\(\_s:stdgo.GoString, \_sep:stdgo.GoString\):stdgo.GoInt, \_funcName:stdgo.GoString, \_testCases:stdgo.Slice\<stdgo.strings\_test.IndexTest\>\):Void](<#function-_runindextests>)

- [function \_runStringTests\(\_t:stdgo.Ref\<stdgo.testing.T\>, \_f:\(\), \_funcName:stdgo.GoString, \_testCases:stdgo.Slice\<stdgo.strings\_test.StringTest\>\):Void](<#function-_runstringtests>)

- [function \_runesEqual\(\_a:stdgo.Slice\<stdgo.GoRune\>, \_b:stdgo.Slice\<stdgo.GoRune\>\):Bool](<#function-_runesequal>)

- [function \_simpleIndex\(\_s:stdgo.GoString, \_sep:stdgo.GoString\):stdgo.GoInt](<#function-_simpleindex>)

- [function \_tenRunes\(\_ch:stdgo.GoRune\):stdgo.GoString](<#function-_tenrunes>)

- [function benchmarkBuildString\_Builder\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkbuildstring_builder>)

- [function benchmarkBuildString\_ByteBuffer\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkbuildstring_bytebuffer>)

- [function benchmarkByteByteMap\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkbytebytemap>)

- [function benchmarkByteByteMatch\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkbytebytematch>)

- [function benchmarkByteByteNoMatch\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkbytebytenomatch>)

- [function benchmarkByteByteReplaces\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkbytebytereplaces>)

- [function benchmarkByteReplacerWriteString\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkbytereplacerwritestring>)

- [function benchmarkByteStringMatch\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkbytestringmatch>)

- [function benchmarkByteStringReplacerWriteString\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkbytestringreplacerwritestring>)

- [function benchmarkClone\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkclone>)

- [function benchmarkCountByte\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkcountbyte>)

- [function benchmarkCountHard1\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkcounthard1>)

- [function benchmarkCountHard2\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkcounthard2>)

- [function benchmarkCountHard3\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkcounthard3>)

- [function benchmarkCountTorture\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkcounttorture>)

- [function benchmarkCountTortureOverlapping\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkcounttortureoverlapping>)

- [function benchmarkEqualFold\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkequalfold>)

- [function benchmarkFields\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkfields>)

- [function benchmarkFieldsFunc\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkfieldsfunc>)

- [function benchmarkGenericMatch1\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkgenericmatch1>)

- [function benchmarkGenericMatch2\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkgenericmatch2>)

- [function benchmarkGenericNoMatch\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkgenericnomatch>)

- [function benchmarkHTMLEscapeNew\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkhtmlescapenew>)

- [function benchmarkHTMLEscapeOld\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkhtmlescapeold>)

- [function benchmarkIndex\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkindex>)

- [function benchmarkIndexAnyASCII\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkindexanyascii>)

- [function benchmarkIndexAnyUTF8\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkindexanyutf8>)

- [function benchmarkIndexByte\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkindexbyte>)

- [function benchmarkIndexHard1\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkindexhard1>)

- [function benchmarkIndexHard2\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkindexhard2>)

- [function benchmarkIndexHard3\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkindexhard3>)

- [function benchmarkIndexHard4\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkindexhard4>)

- [function benchmarkIndexPeriodic\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkindexperiodic>)

- [function benchmarkIndexRune\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkindexrune>)

- [function benchmarkIndexRuneFastPath\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkindexrunefastpath>)

- [function benchmarkIndexRuneLongString\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkindexrunelongstring>)

- [function benchmarkIndexTorture\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkindextorture>)

- [function benchmarkJoin\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkjoin>)

- [function benchmarkLastIndex\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarklastindex>)

- [function benchmarkLastIndexAnyASCII\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarklastindexanyascii>)

- [function benchmarkLastIndexAnyUTF8\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarklastindexanyutf8>)

- [function benchmarkLastIndexHard1\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarklastindexhard1>)

- [function benchmarkLastIndexHard2\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarklastindexhard2>)

- [function benchmarkLastIndexHard3\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarklastindexhard3>)

- [function benchmarkMap\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkmap>)

- [function benchmarkMapNoChanges\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkmapnochanges>)

- [function benchmarkRepeat\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkrepeat>)

- [function benchmarkReplaceAll\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkreplaceall>)

- [function benchmarkSingleLongSuffixFail\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarksinglelongsuffixfail>)

- [function benchmarkSingleMatch\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarksinglematch>)

- [function benchmarkSingleMaxSkipping\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarksinglemaxskipping>)

- [function benchmarkSplitEmptySeparator\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarksplitemptyseparator>)

- [function benchmarkSplitMultiByteSeparator\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarksplitmultibyteseparator>)

- [function benchmarkSplitNMultiByteSeparator\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarksplitnmultibyteseparator>)

- [function benchmarkSplitNSingleByteSeparator\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarksplitnsinglebyteseparator>)

- [function benchmarkSplitSingleByteSeparator\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarksplitsinglebyteseparator>)

- [function benchmarkToLower\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarktolower>)

- [function benchmarkToUpper\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarktoupper>)

- [function benchmarkToValidUTF8\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarktovalidutf8>)

- [function benchmarkTrim\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarktrim>)

- [function benchmarkTrimASCII\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarktrimascii>)

- [function benchmarkTrimByte\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarktrimbyte>)

- [function benchmarkTrimSpace\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarktrimspace>)

- [function exampleBuilder\(\):Void](<#function-examplebuilder>)

- [function exampleCompare\(\):Void](<#function-examplecompare>)

- [function exampleContains\(\):Void](<#function-examplecontains>)

- [function exampleContainsAny\(\):Void](<#function-examplecontainsany>)

- [function exampleContainsRune\(\):Void](<#function-examplecontainsrune>)

- [function exampleCount\(\):Void](<#function-examplecount>)

- [function exampleCut\(\):Void](<#function-examplecut>)

- [function exampleEqualFold\(\):Void](<#function-exampleequalfold>)

- [function exampleFields\(\):Void](<#function-examplefields>)

- [function exampleFieldsFunc\(\):Void](<#function-examplefieldsfunc>)

- [function exampleHasPrefix\(\):Void](<#function-examplehasprefix>)

- [function exampleHasSuffix\(\):Void](<#function-examplehassuffix>)

- [function exampleIndex\(\):Void](<#function-exampleindex>)

- [function exampleIndexAny\(\):Void](<#function-exampleindexany>)

- [function exampleIndexByte\(\):Void](<#function-exampleindexbyte>)

- [function exampleIndexFunc\(\):Void](<#function-exampleindexfunc>)

- [function exampleIndexRune\(\):Void](<#function-exampleindexrune>)

- [function exampleJoin\(\):Void](<#function-examplejoin>)

- [function exampleLastIndex\(\):Void](<#function-examplelastindex>)

- [function exampleLastIndexAny\(\):Void](<#function-examplelastindexany>)

- [function exampleLastIndexByte\(\):Void](<#function-examplelastindexbyte>)

- [function exampleLastIndexFunc\(\):Void](<#function-examplelastindexfunc>)

- [function exampleMap\(\):Void](<#function-examplemap>)

- [function exampleNewReplacer\(\):Void](<#function-examplenewreplacer>)

- [function exampleRepeat\(\):Void](<#function-examplerepeat>)

- [function exampleReplace\(\):Void](<#function-examplereplace>)

- [function exampleReplaceAll\(\):Void](<#function-examplereplaceall>)

- [function exampleSplit\(\):Void](<#function-examplesplit>)

- [function exampleSplitAfter\(\):Void](<#function-examplesplitafter>)

- [function exampleSplitAfterN\(\):Void](<#function-examplesplitaftern>)

- [function exampleSplitN\(\):Void](<#function-examplesplitn>)

- [function exampleTitle\(\):Void](<#function-exampletitle>)

- [function exampleToLower\(\):Void](<#function-exampletolower>)

- [function exampleToLowerSpecial\(\):Void](<#function-exampletolowerspecial>)

- [function exampleToTitle\(\):Void](<#function-exampletotitle>)

- [function exampleToTitleSpecial\(\):Void](<#function-exampletotitlespecial>)

- [function exampleToUpper\(\):Void](<#function-exampletoupper>)

- [function exampleToUpperSpecial\(\):Void](<#function-exampletoupperspecial>)

- [function exampleTrim\(\):Void](<#function-exampletrim>)

- [function exampleTrimFunc\(\):Void](<#function-exampletrimfunc>)

- [function exampleTrimLeft\(\):Void](<#function-exampletrimleft>)

- [function exampleTrimLeftFunc\(\):Void](<#function-exampletrimleftfunc>)

- [function exampleTrimPrefix\(\):Void](<#function-exampletrimprefix>)

- [function exampleTrimRight\(\):Void](<#function-exampletrimright>)

- [function exampleTrimRightFunc\(\):Void](<#function-exampletrimrightfunc>)

- [function exampleTrimSpace\(\):Void](<#function-exampletrimspace>)

- [function exampleTrimSuffix\(\):Void](<#function-exampletrimsuffix>)

- [function testBuilder\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testbuilder>)

- [function testBuilderAllocs\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testbuilderallocs>)

- [function testBuilderCopyPanic\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testbuildercopypanic>)

- [function testBuilderGrow\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testbuildergrow>)

- [function testBuilderReset\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testbuilderreset>)

- [function testBuilderString\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testbuilderstring>)

- [function testBuilderWrite2\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testbuilderwrite2>)

- [function testBuilderWriteByte\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testbuilderwritebyte>)

- [function testBuilderWriteInvalidRune\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testbuilderwriteinvalidrune>)

- [function testCaseConsistency\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testcaseconsistency>)

- [function testClone\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testclone>)

- [function testCompare\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testcompare>)

- [function testCompareIdenticalString\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testcompareidenticalstring>)

- [function testCompareStrings\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testcomparestrings>)

- [function testContains\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testcontains>)

- [function testContainsAny\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testcontainsany>)

- [function testContainsRune\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testcontainsrune>)

- [function testCount\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testcount>)

- [function testCut\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testcut>)

- [function testEmptyReaderConcurrent\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testemptyreaderconcurrent>)

- [function testEqualFold\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testequalfold>)

- [function testFields\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testfields>)

- [function testFieldsFunc\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testfieldsfunc>)

- [function testFinderCreation\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testfindercreation>)

- [function testFinderNext\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testfindernext>)

- [function testGenericTrieBuilding\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testgenerictriebuilding>)

- [function testIndex\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testindex>)

- [function testIndexAny\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testindexany>)

- [function testIndexByte\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testindexbyte>)

- [function testIndexFunc\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testindexfunc>)

- [function testIndexRandom\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testindexrandom>)

- [function testIndexRune\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testindexrune>)

- [function testLastIndex\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testlastindex>)

- [function testLastIndexAny\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testlastindexany>)

- [function testLastIndexByte\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testlastindexbyte>)

- [function testMap\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testmap>)

- [function testPickAlgorithm\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testpickalgorithm>)

- [function testReadAfterBigSeek\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testreadafterbigseek>)

- [function testReadByte\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testreadbyte>)

- [function testReadRune\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testreadrune>)

- [function testReader\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testreader>)

- [function testReaderAt\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testreaderat>)

- [function testReaderAtConcurrent\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testreaderatconcurrent>)

- [function testReaderLenSize\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testreaderlensize>)

- [function testReaderReset\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testreaderreset>)

- [function testReaderZero\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testreaderzero>)

- [function testRepeat\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testrepeat>)

- [function testRepeatCatchesOverflow\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testrepeatcatchesoverflow>)

- [function testReplace\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testreplace>)

- [function testReplacer\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testreplacer>)

- [function testRunes\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testrunes>)

- [function testSpecialCase\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testspecialcase>)

- [function testSplit\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testsplit>)

- [function testSplitAfter\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testsplitafter>)

- [function testTitle\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testtitle>)

- [function testToLower\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testtolower>)

- [function testToUpper\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testtoupper>)

- [function testToValidUTF8\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testtovalidutf8>)

- [function testTrim\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testtrim>)

- [function testTrimFunc\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testtrimfunc>)

- [function testTrimSpace\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testtrimspace>)

- [function testUnreadRuneError\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testunreadruneerror>)

- [function testWriteStringError\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testwritestringerror>)

- [function testWriteTo\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testwriteto>)

- [function main\(\):Void](<#function-main>)

- [class FieldsTest](<#class-fieldstest>)

  - [function new\(?\_s:stdgo.GoString, ?\_a:stdgo.Slice\<stdgo.GoString\>\):Void](<#fieldstest-function-new>)

- [class IndexTest](<#class-indextest>)

  - [function new\(?\_s:stdgo.GoString, ?\_sep:stdgo.GoString, ?\_out:Null\<stdgo.GoInt\>\):Void](<#indextest-function-new>)

- [class SplitTest](<#class-splittest>)

  - [function new\(?\_s:stdgo.GoString, ?\_sep:stdgo.GoString, ?\_n:Null\<stdgo.GoInt\>, ?\_a:stdgo.Slice\<stdgo.GoString\>\):Void](<#splittest-function-new>)

- [class StringTest](<#class-stringtest>)

  - [function new\(?\_in:stdgo.GoString, ?\_out:stdgo.GoString\):Void](<#stringtest-function-new>)

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


## function \`\_benchmarkBuilder\`


```haxe
function _benchmarkBuilder(_b:stdgo.Ref<stdgo.testing.B>, _f:(_b:stdgo.Ref<stdgo.testing.B>, _numWrite:stdgo.GoInt, _grow:Bool):Void):Void
```


 


[\(view code\)](<./Strings.hx#L1832>)


## function \`\_benchmarkCountHard\`


```haxe
function _benchmarkCountHard(_b:stdgo.Ref<stdgo.testing.B>, _sep:stdgo.GoString):Void
```


 


[\(view code\)](<./Strings.hx#L4599>)


## function \`\_benchmarkIndexHard\`


```haxe
function _benchmarkIndexHard(_b:stdgo.Ref<stdgo.testing.B>, _sep:stdgo.GoString):Void
```


 


[\(view code\)](<./Strings.hx#L4581>)


## function \`\_benchmarkLastIndexHard\`


```haxe
function _benchmarkLastIndexHard(_b:stdgo.Ref<stdgo.testing.B>, _sep:stdgo.GoString):Void
```


 


[\(view code\)](<./Strings.hx#L4590>)


## function \`\_benchmarkSingleString\`


```haxe
function _benchmarkSingleString(_b:stdgo.Ref<stdgo.testing.B>, _pattern:stdgo.GoString, _text:stdgo.GoString):Void
```


 


[\(view code\)](<./Strings.hx#L3162>)


## function \`\_check\`


```haxe
function _check(_t:stdgo.Ref<stdgo.testing.T>, _b:stdgo.Ref<stdgo.strings.Builder>, _want:stdgo.GoString):Void
```


 


[\(view code\)](<./Strings.hx#L1552>)


## function \`\_eq\`


```haxe
function _eq(_a:stdgo.Slice<stdgo.GoString>, _b:stdgo.Slice<stdgo.GoString>):Bool
```


 


[\(view code\)](<./Strings.hx#L3433>)


## function \`\_equal\`


```haxe
function _equal(_m:stdgo.GoString, _s1:stdgo.GoString, _s2:stdgo.GoString, _t:stdgo.Ref<stdgo.testing.T>):Bool
```


 


[\(view code\)](<./Strings.hx#L4140>)


## function \`\_makeBenchInputHard\`


```haxe
function _makeBenchInputHard():stdgo.GoString
```


 


[\(view code\)](<./Strings.hx#L4566>)


## function \`\_not\`


```haxe
function _not(_p:stdgo.strings_test._Strings_test.T_predicate):stdgo.strings_test._Strings_test.T_predicate
```


 


[\(view code\)](<./Strings.hx#L4103>)


## function \`\_oldHTMLEscape\`


```haxe
function _oldHTMLEscape(_s:stdgo.GoString):stdgo.GoString
```


The http package's old HTML escaping function. 


[\(view code\)](<./Strings.hx#L2781>)


## function \`\_repeat\`


```haxe
function _repeat(_s:stdgo.GoString, _count:stdgo.GoInt):stdgo.Error
```


 


[\(view code\)](<./Strings.hx#L4206>)


## function \`\_rot13\`


```haxe
function _rot13(_r:stdgo.GoRune):stdgo.GoRune
```


User\-defined self\-inverse mapping function 


[\(view code\)](<./Strings.hx#L3810>)


## function \`\_runIndexTests\`


```haxe
function _runIndexTests(_t:stdgo.Ref<stdgo.testing.T>, _f:(_s:stdgo.GoString, _sep:stdgo.GoString):stdgo.GoInt, _funcName:stdgo.GoString, _testCases:stdgo.Slice<stdgo.strings_test.IndexTest>):Void
```


Execute f on each test case.  funcName should be the name of f; it's used in failure reports. 


[\(view code\)](<./Strings.hx#L3452>)


## function \`\_runStringTests\`


```haxe
function _runStringTests(_t:stdgo.Ref<stdgo.testing.T>, _f:(), _funcName:stdgo.GoString, _testCases:stdgo.Slice<stdgo.strings_test.StringTest>):Void
```


Execute f on each test case.  funcName should be the name of f; it's used in failure reports. 


[\(view code\)](<./Strings.hx#L3789>)


## function \`\_runesEqual\`


```haxe
function _runesEqual(_a:stdgo.Slice<stdgo.GoRune>, _b:stdgo.Slice<stdgo.GoRune>):Bool
```


 


[\(view code\)](<./Strings.hx#L4297>)


## function \`\_simpleIndex\`


```haxe
function _simpleIndex(_s:stdgo.GoString, _sep:stdgo.GoString):stdgo.GoInt
```


 


[\(view code\)](<./Strings.hx#L3514>)


## function \`\_tenRunes\`


```haxe
function _tenRunes(_ch:stdgo.GoRune):stdgo.GoString
```


 


[\(view code\)](<./Strings.hx#L3799>)


## function \`benchmarkBuildString\_Builder\`


```haxe
function benchmarkBuildString_Builder(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L1847>)


## function \`benchmarkBuildString\_ByteBuffer\`


```haxe
function benchmarkBuildString_ByteBuffer(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L1868>)


## function \`benchmarkByteByteMap\`


```haxe
function benchmarkByteByteMap(_b:stdgo.Ref<stdgo.testing.B>):Void
```


BenchmarkByteByteMap compares byteByteImpl against Map. 


[\(view code\)](<./Strings.hx#L3279>)


## function \`benchmarkByteByteMatch\`


```haxe
function benchmarkByteByteMatch(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3196>)


## function \`benchmarkByteByteNoMatch\`


```haxe
function benchmarkByteByteNoMatch(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3186>)


## function \`benchmarkByteByteReplaces\`


```haxe
function benchmarkByteByteReplaces(_b:stdgo.Ref<stdgo.testing.B>):Void
```


BenchmarkByteByteReplaces compares byteByteImpl against multiple Replaces. 


[\(view code\)](<./Strings.hx#L3265>)


## function \`benchmarkByteReplacerWriteString\`


```haxe
function benchmarkByteReplacerWriteString(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3250>)


## function \`benchmarkByteStringMatch\`


```haxe
function benchmarkByteStringMatch(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3206>)


## function \`benchmarkByteStringReplacerWriteString\`


```haxe
function benchmarkByteStringReplacerWriteString(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3238>)


## function \`benchmarkClone\`


```haxe
function benchmarkClone(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L1955>)


## function \`benchmarkCountByte\`


```haxe
function benchmarkCountByte(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4677>)


## function \`benchmarkCountHard1\`


```haxe
function benchmarkCountHard1(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4636>)


## function \`benchmarkCountHard2\`


```haxe
function benchmarkCountHard2(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4640>)


## function \`benchmarkCountHard3\`


```haxe
function benchmarkCountHard3(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4644>)


## function \`benchmarkCountTorture\`


```haxe
function benchmarkCountTorture(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4657>)


## function \`benchmarkCountTortureOverlapping\`


```haxe
function benchmarkCountTortureOverlapping(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4666>)


## function \`benchmarkEqualFold\`


```haxe
function benchmarkEqualFold(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4522>)


## function \`benchmarkFields\`


```haxe
function benchmarkFields(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4698>)


## function \`benchmarkFieldsFunc\`


```haxe
function benchmarkFieldsFunc(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4721>)


## function \`benchmarkGenericMatch1\`


```haxe
function benchmarkGenericMatch1(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3140>)


## function \`benchmarkGenericMatch2\`


```haxe
function benchmarkGenericMatch2(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3152>)


## function \`benchmarkGenericNoMatch\`


```haxe
function benchmarkGenericNoMatch(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3128>)


## function \`benchmarkHTMLEscapeNew\`


```haxe
function benchmarkHTMLEscapeNew(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3218>)


## function \`benchmarkHTMLEscapeOld\`


```haxe
function benchmarkHTMLEscapeOld(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3228>)


## function \`benchmarkIndex\`


```haxe
function benchmarkIndex(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3661>)


## function \`benchmarkIndexAnyASCII\`


```haxe
function benchmarkIndexAnyASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4806>)


## function \`benchmarkIndexAnyUTF8\`


```haxe
function benchmarkIndexAnyUTF8(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4830>)


## function \`benchmarkIndexByte\`


```haxe
function benchmarkIndexByte(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3691>)


## function \`benchmarkIndexHard1\`


```haxe
function benchmarkIndexHard1(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4608>)


## function \`benchmarkIndexHard2\`


```haxe
function benchmarkIndexHard2(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4612>)


## function \`benchmarkIndexHard3\`


```haxe
function benchmarkIndexHard3(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4616>)


## function \`benchmarkIndexHard4\`


```haxe
function benchmarkIndexHard4(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4620>)


## function \`benchmarkIndexPeriodic\`


```haxe
function benchmarkIndexPeriodic(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4936>)


## function \`benchmarkIndexRune\`


```haxe
function benchmarkIndexRune(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3616>)


## function \`benchmarkIndexRuneFastPath\`


```haxe
function benchmarkIndexRuneFastPath(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3646>)


## function \`benchmarkIndexRuneLongString\`


```haxe
function benchmarkIndexRuneLongString(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3631>)


## function \`benchmarkIndexTorture\`


```haxe
function benchmarkIndexTorture(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4648>)


## function \`benchmarkJoin\`


```haxe
function benchmarkJoin(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4951>)


## function \`benchmarkLastIndex\`


```haxe
function benchmarkLastIndex(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3676>)


## function \`benchmarkLastIndexAnyASCII\`


```haxe
function benchmarkLastIndexAnyASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4854>)


## function \`benchmarkLastIndexAnyUTF8\`


```haxe
function benchmarkLastIndexAnyUTF8(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4878>)


## function \`benchmarkLastIndexHard1\`


```haxe
function benchmarkLastIndexHard1(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4624>)


## function \`benchmarkLastIndexHard2\`


```haxe
function benchmarkLastIndexHard2(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4628>)


## function \`benchmarkLastIndexHard3\`


```haxe
function benchmarkLastIndexHard3(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4632>)


## function \`benchmarkMap\`


```haxe
function benchmarkMap(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3297>)


## function \`benchmarkMapNoChanges\`


```haxe
function benchmarkMapNoChanges(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3992>)


## function \`benchmarkRepeat\`


```haxe
function benchmarkRepeat(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4789>)


## function \`benchmarkReplaceAll\`


```haxe
function benchmarkReplaceAll(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4989>)


## function \`benchmarkSingleLongSuffixFail\`


```haxe
function benchmarkSingleLongSuffixFail(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3178>)


## function \`benchmarkSingleMatch\`


```haxe
function benchmarkSingleMatch(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3182>)


## function \`benchmarkSingleMaxSkipping\`


```haxe
function benchmarkSingleMaxSkipping(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3174>)


## function \`benchmarkSplitEmptySeparator\`


```haxe
function benchmarkSplitEmptySeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4744>)


## function \`benchmarkSplitMultiByteSeparator\`


```haxe
function benchmarkSplitMultiByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4762>)


## function \`benchmarkSplitNMultiByteSeparator\`


```haxe
function benchmarkSplitNMultiByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4780>)


## function \`benchmarkSplitNSingleByteSeparator\`


```haxe
function benchmarkSplitNSingleByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4771>)


## function \`benchmarkSplitSingleByteSeparator\`


```haxe
function benchmarkSplitSingleByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4753>)


## function \`benchmarkToLower\`


```haxe
function benchmarkToLower(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3975>)


## function \`benchmarkToUpper\`


```haxe
function benchmarkToUpper(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L3958>)


## function \`benchmarkToValidUTF8\`


```haxe
function benchmarkToValidUTF8(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4085>)


## function \`benchmarkTrim\`


```haxe
function benchmarkTrim(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4054>)


## function \`benchmarkTrimASCII\`


```haxe
function benchmarkTrimASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4902>)


## function \`benchmarkTrimByte\`


```haxe
function benchmarkTrimByte(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4926>)


## function \`benchmarkTrimSpace\`


```haxe
function benchmarkTrimSpace(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strings.hx#L4971>)


## function \`exampleBuilder\`


```haxe
function exampleBuilder():Void
```


 


[\(view code\)](<./Strings.hx#L2055>)


## function \`exampleCompare\`


```haxe
function exampleCompare():Void
```


 


[\(view code\)](<./Strings.hx#L2067>)


## function \`exampleContains\`


```haxe
function exampleContains():Void
```


 


[\(view code\)](<./Strings.hx#L2073>)


## function \`exampleContainsAny\`


```haxe
function exampleContainsAny():Void
```


 


[\(view code\)](<./Strings.hx#L2080>)


## function \`exampleContainsRune\`


```haxe
function exampleContainsRune():Void
```


 


[\(view code\)](<./Strings.hx#L2089>)


## function \`exampleCount\`


```haxe
function exampleCount():Void
```


 


[\(view code\)](<./Strings.hx#L2094>)


## function \`exampleCut\`


```haxe
function exampleCut():Void
```


 


[\(view code\)](<./Strings.hx#L2099>)


## function \`exampleEqualFold\`


```haxe
function exampleEqualFold():Void
```


 


[\(view code\)](<./Strings.hx#L2111>)


## function \`exampleFields\`


```haxe
function exampleFields():Void
```


 


[\(view code\)](<./Strings.hx#L2117>)


## function \`exampleFieldsFunc\`


```haxe
function exampleFieldsFunc():Void
```


 


[\(view code\)](<./Strings.hx#L2121>)


## function \`exampleHasPrefix\`


```haxe
function exampleHasPrefix():Void
```


 


[\(view code\)](<./Strings.hx#L2129>)


## function \`exampleHasSuffix\`


```haxe
function exampleHasSuffix():Void
```


 


[\(view code\)](<./Strings.hx#L2135>)


## function \`exampleIndex\`


```haxe
function exampleIndex():Void
```


 


[\(view code\)](<./Strings.hx#L2142>)


## function \`exampleIndexAny\`


```haxe
function exampleIndexAny():Void
```


 


[\(view code\)](<./Strings.hx#L2155>)


## function \`exampleIndexByte\`


```haxe
function exampleIndexByte():Void
```


 


[\(view code\)](<./Strings.hx#L2160>)


## function \`exampleIndexFunc\`


```haxe
function exampleIndexFunc():Void
```


 


[\(view code\)](<./Strings.hx#L2147>)


## function \`exampleIndexRune\`


```haxe
function exampleIndexRune():Void
```


 


[\(view code\)](<./Strings.hx#L2166>)


## function \`exampleJoin\`


```haxe
function exampleJoin():Void
```


 


[\(view code\)](<./Strings.hx#L2195>)


## function \`exampleLastIndex\`


```haxe
function exampleLastIndex():Void
```


 


[\(view code\)](<./Strings.hx#L2171>)


## function \`exampleLastIndexAny\`


```haxe
function exampleLastIndexAny():Void
```


 


[\(view code\)](<./Strings.hx#L2177>)


## function \`exampleLastIndexByte\`


```haxe
function exampleLastIndexByte():Void
```


 


[\(view code\)](<./Strings.hx#L2183>)


## function \`exampleLastIndexFunc\`


```haxe
function exampleLastIndexFunc():Void
```


 


[\(view code\)](<./Strings.hx#L2189>)


## function \`exampleMap\`


```haxe
function exampleMap():Void
```


 


[\(view code\)](<./Strings.hx#L2258>)


## function \`exampleNewReplacer\`


```haxe
function exampleNewReplacer():Void
```


 


[\(view code\)](<./Strings.hx#L2270>)


## function \`exampleRepeat\`


```haxe
function exampleRepeat():Void
```


 


[\(view code\)](<./Strings.hx#L2200>)


## function \`exampleReplace\`


```haxe
function exampleReplace():Void
```


 


[\(view code\)](<./Strings.hx#L2204>)


## function \`exampleReplaceAll\`


```haxe
function exampleReplaceAll():Void
```


 


[\(view code\)](<./Strings.hx#L2211>)


## function \`exampleSplit\`


```haxe
function exampleSplit():Void
```


 


[\(view code\)](<./Strings.hx#L2215>)


## function \`exampleSplitAfter\`


```haxe
function exampleSplitAfter():Void
```


 


[\(view code\)](<./Strings.hx#L2231>)


## function \`exampleSplitAfterN\`


```haxe
function exampleSplitAfterN():Void
```


 


[\(view code\)](<./Strings.hx#L2236>)


## function \`exampleSplitN\`


```haxe
function exampleSplitN():Void
```


 


[\(view code\)](<./Strings.hx#L2224>)


## function \`exampleTitle\`


```haxe
function exampleTitle():Void
```


 


[\(view code\)](<./Strings.hx#L2241>)


## function \`exampleToLower\`


```haxe
function exampleToLower():Void
```


 


[\(view code\)](<./Strings.hx#L2283>)


## function \`exampleToLowerSpecial\`


```haxe
function exampleToLowerSpecial():Void
```


 


[\(view code\)](<./Strings.hx#L2287>)


## function \`exampleToTitle\`


```haxe
function exampleToTitle():Void
```


 


[\(view code\)](<./Strings.hx#L2247>)


## function \`exampleToTitleSpecial\`


```haxe
function exampleToTitleSpecial():Void
```


 


[\(view code\)](<./Strings.hx#L2253>)


## function \`exampleToUpper\`


```haxe
function exampleToUpper():Void
```


 


[\(view code\)](<./Strings.hx#L2275>)


## function \`exampleToUpperSpecial\`


```haxe
function exampleToUpperSpecial():Void
```


 


[\(view code\)](<./Strings.hx#L2279>)


## function \`exampleTrim\`


```haxe
function exampleTrim():Void
```


 


[\(view code\)](<./Strings.hx#L2291>)


## function \`exampleTrimFunc\`


```haxe
function exampleTrimFunc():Void
```


 


[\(view code\)](<./Strings.hx#L2313>)


## function \`exampleTrimLeft\`


```haxe
function exampleTrimLeft():Void
```


 


[\(view code\)](<./Strings.hx#L2319>)


## function \`exampleTrimLeftFunc\`


```haxe
function exampleTrimLeftFunc():Void
```


 


[\(view code\)](<./Strings.hx#L2323>)


## function \`exampleTrimPrefix\`


```haxe
function exampleTrimPrefix():Void
```


 


[\(view code\)](<./Strings.hx#L2299>)


## function \`exampleTrimRight\`


```haxe
function exampleTrimRight():Void
```


 


[\(view code\)](<./Strings.hx#L2329>)


## function \`exampleTrimRightFunc\`


```haxe
function exampleTrimRightFunc():Void
```


 


[\(view code\)](<./Strings.hx#L2333>)


## function \`exampleTrimSpace\`


```haxe
function exampleTrimSpace():Void
```


 


[\(view code\)](<./Strings.hx#L2295>)


## function \`exampleTrimSuffix\`


```haxe
function exampleTrimSuffix():Void
```


 


[\(view code\)](<./Strings.hx#L2306>)


## function \`testBuilder\`


```haxe
function testBuilder(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L1573>)


## function \`testBuilderAllocs\`


```haxe
function testBuilderAllocs(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L1754>)


## function \`testBuilderCopyPanic\`


```haxe
function testBuilderCopyPanic(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L1766>)


## function \`testBuilderGrow\`


```haxe
function testBuilderGrow(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L1650>)


## function \`testBuilderReset\`


```haxe
function testBuilderReset(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L1632>)


## function \`testBuilderString\`


```haxe
function testBuilderString(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L1601>)


## function \`testBuilderWrite2\`


```haxe
function testBuilderWrite2(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L1678>)


## function \`testBuilderWriteByte\`


```haxe
function testBuilderWriteByte(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L1737>)


## function \`testBuilderWriteInvalidRune\`


```haxe
function testBuilderWriteInvalidRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L1824>)


## function \`testCaseConsistency\`


```haxe
function testCaseConsistency(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4163>)


## function \`testClone\`


```haxe
function testClone(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L1889>)


## function \`testCompare\`


```haxe
function testCompare(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L1966>)


## function \`testCompareIdenticalString\`


```haxe
function testCompareIdenticalString(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L1975>)


## function \`testCompareStrings\`


```haxe
function testCompareStrings(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L1985>)


## function \`testContains\`


```haxe
function testContains(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4476>)


## function \`testContainsAny\`


```haxe
function testContainsAny(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4485>)


## function \`testContainsRune\`


```haxe
function testContainsRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4494>)


## function \`testCount\`


```haxe
function testCount(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4538>)


## function \`testCut\`


```haxe
function testCut(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4550>)


## function \`testEmptyReaderConcurrent\`


```haxe
function testEmptyReaderConcurrent(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L2556>)


## function \`testEqualFold\`


```haxe
function testEqualFold(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4503>)


## function \`testFields\`


```haxe
function testFields(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L3755>)


## function \`testFieldsFunc\`


```haxe
function testFieldsFunc(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L3765>)


## function \`testFinderCreation\`


```haxe
function testFinderCreation(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L3363>)


## function \`testFinderNext\`


```haxe
function testFinderNext(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L3336>)


## function \`testGenericTrieBuilding\`


```haxe
function testGenericTrieBuilding(_t:stdgo.Ref<stdgo.testing.T>):Void
```


TestGenericTrieBuilding verifies the structure of the generated trie. There is one node per line, and the key ending with the current line is in the trie if it ends with a "\+". 


[\(view code\)](<./Strings.hx#L3095>)


## function \`testIndex\`


```haxe
function testIndex(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L3462>)


## function \`testIndexAny\`


```haxe
function testIndexAny(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L3470>)


## function \`testIndexByte\`


```haxe
function testIndexByte(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L3478>)


## function \`testIndexFunc\`


```haxe
function testIndexFunc(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4125>)


## function \`testIndexRandom\`


```haxe
function testIndexRandom(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L3527>)


## function \`testIndexRune\`


```haxe
function testIndexRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L3566>)


## function \`testLastIndex\`


```haxe
function testLastIndex(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L3466>)


## function \`testLastIndexAny\`


```haxe
function testLastIndexAny(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L3474>)


## function \`testLastIndexByte\`


```haxe
function testLastIndexByte(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L3491>)


## function \`testMap\`


```haxe
function testMap(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L3821>)


## function \`testPickAlgorithm\`


```haxe
function testPickAlgorithm(_t:stdgo.Ref<stdgo.testing.T>):Void
```


TestPickAlgorithm tests that NewReplacer picks the correct algorithm. 


[\(view code\)](<./Strings.hx#L3065>)


## function \`testReadAfterBigSeek\`


```haxe
function testReadAfterBigSeek(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L2444>)


## function \`testReadByte\`


```haxe
function testReadByte(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4325>)


## function \`testReadRune\`


```haxe
function testReadRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4372>)


## function \`testReader\`


```haxe
function testReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L2339>)


## function \`testReaderAt\`


```haxe
function testReaderAt(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L2464>)


## function \`testReaderAtConcurrent\`


```haxe
function testReaderAtConcurrent(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L2512>)


## function \`testReaderLenSize\`


```haxe
function testReaderLenSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```


tests that Len is affected by reads, but Size is not. 


[\(view code\)](<./Strings.hx#L2664>)


## function \`testReaderReset\`


```haxe
function testReaderReset(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L2675>)


## function \`testReaderZero\`


```haxe
function testReaderZero(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L2708>)


## function \`testRepeat\`


```haxe
function testRepeat(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4195>)


## function \`testRepeatCatchesOverflow\`


```haxe
function testRepeatCatchesOverflow(_t:stdgo.Ref<stdgo.testing.T>):Void
```


See Issue golang.org/issue/16237 


[\(view code\)](<./Strings.hx#L4265>)


## function \`testReplace\`


```haxe
function testReplace(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4446>)


## function \`testReplacer\`


```haxe
function testReplacer(_t:stdgo.Ref<stdgo.testing.T>):Void
```


TestReplacer tests the replacer implementations. 


[\(view code\)](<./Strings.hx#L2815>)


## function \`testRunes\`


```haxe
function testRunes(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4309>)


## function \`testSpecialCase\`


```haxe
function testSpecialCase(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4004>)


## function \`testSplit\`


```haxe
function testSplit(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L3706>)


## function \`testSplitAfter\`


```haxe
function testSplitAfter(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L3732>)


## function \`testTitle\`


```haxe
function testTitle(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4465>)


## function \`testToLower\`


```haxe
function testToLower(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L3944>)


## function \`testToUpper\`


```haxe
function testToUpper(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L3940>)


## function \`testToValidUTF8\`


```haxe
function testToValidUTF8(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L3948>)


## function \`testTrim\`


```haxe
function testTrim(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4029>)


## function \`testTrimFunc\`


```haxe
function testTrimFunc(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4110>)


## function \`testTrimSpace\`


```haxe
function testTrimSpace(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4025>)


## function \`testUnreadRuneError\`


```haxe
function testUnreadRuneError(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L4426>)


## function \`testWriteStringError\`


```haxe
function testWriteStringError(_t:stdgo.Ref<stdgo.testing.T>):Void
```


TestWriteStringError tests that WriteString returns an error received from the underlying io.Writer. 


[\(view code\)](<./Strings.hx#L3078>)


## function \`testWriteTo\`


```haxe
function testWriteTo(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strings.hx#L2631>)


## function \`main\`


```haxe
function main():Void
```


 


[\(view code\)](<./Strings.hx#L364>)


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


 


[\(view code\)](<./Strings_test.hx#L1322>)


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


 


[\(view code\)](<./Strings_test.hx#L1276>)


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


 


[\(view code\)](<./Strings_test.hx#L1299>)


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


 


[\(view code\)](<./Strings_test.hx#L1344>)


