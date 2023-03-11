# Module: `stdgo.bytes`

[(view library index)](../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function benchmarkBufferFullSmallReads(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkbufferfullsmallreads>)

- [`function benchmarkBufferNotEmptyWriteRead(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkbuffernotemptywriteread>)

- [`function benchmarkBufferWriteBlock(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkbufferwriteblock>)

- [`function benchmarkBytesCompare(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkbytescompare>)

- [`function benchmarkCompareBytesBig(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkcomparebytesbig>)

- [`function benchmarkCompareBytesBigIdentical(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkcomparebytesbigidentical>)

- [`function benchmarkCompareBytesBigUnaligned(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkcomparebytesbigunaligned>)

- [`function benchmarkCompareBytesDifferentLength(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkcomparebytesdifferentlength>)

- [`function benchmarkCompareBytesEmpty(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkcomparebytesempty>)

- [`function benchmarkCompareBytesEqual(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkcomparebytesequal>)

- [`function benchmarkCompareBytesIdentical(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkcomparebytesidentical>)

- [`function benchmarkCompareBytesSameLength(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkcomparebytessamelength>)

- [`function benchmarkCompareBytesToNil(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkcomparebytestonil>)

- [`function benchmarkCount(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkcount>)

- [`function benchmarkCountEasy(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkcounteasy>)

- [`function benchmarkCountHard1(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkcounthard1>)

- [`function benchmarkCountHard2(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkcounthard2>)

- [`function benchmarkCountHard3(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkcounthard3>)

- [`function benchmarkCountSingle(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkcountsingle>)

- [`function benchmarkEqual(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkequal>)

- [`function benchmarkFields(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkfields>)

- [`function benchmarkFieldsFunc(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkfieldsfunc>)

- [`function benchmarkIndex(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkindex>)

- [`function benchmarkIndexAnyASCII(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkindexanyascii>)

- [`function benchmarkIndexAnyUTF8(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkindexanyutf8>)

- [`function benchmarkIndexByte(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkindexbyte>)

- [`function benchmarkIndexBytePortable(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkindexbyteportable>)

- [`function benchmarkIndexEasy(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkindexeasy>)

- [`function benchmarkIndexHard1(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkindexhard1>)

- [`function benchmarkIndexHard2(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkindexhard2>)

- [`function benchmarkIndexHard3(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkindexhard3>)

- [`function benchmarkIndexHard4(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkindexhard4>)

- [`function benchmarkIndexPeriodic(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkindexperiodic>)

- [`function benchmarkIndexRune(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkindexrune>)

- [`function benchmarkIndexRuneASCII(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkindexruneascii>)

- [`function benchmarkLastIndexAnyASCII(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarklastindexanyascii>)

- [`function benchmarkLastIndexAnyUTF8(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarklastindexanyutf8>)

- [`function benchmarkLastIndexHard1(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarklastindexhard1>)

- [`function benchmarkLastIndexHard2(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarklastindexhard2>)

- [`function benchmarkLastIndexHard3(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarklastindexhard3>)

- [`function benchmarkReadString(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkreadstring>)

- [`function benchmarkRepeat(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkrepeat>)

- [`function benchmarkRepeatLarge(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkrepeatlarge>)

- [`function benchmarkSplitEmptySeparator(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksplitemptyseparator>)

- [`function benchmarkSplitMultiByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksplitmultibyteseparator>)

- [`function benchmarkSplitNMultiByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksplitnmultibyteseparator>)

- [`function benchmarkSplitNSingleByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksplitnsinglebyteseparator>)

- [`function benchmarkSplitSingleByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksplitsinglebyteseparator>)

- [`function benchmarkToLower(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarktolower>)

- [`function benchmarkToUpper(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarktoupper>)

- [`function benchmarkToValidUTF8(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarktovalidutf8>)

- [`function benchmarkTrimASCII(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarktrimascii>)

- [`function benchmarkTrimByte(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarktrimbyte>)

- [`function benchmarkTrimSpace(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarktrimspace>)

- [`function benchmarkWriteByte(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkwritebyte>)

- [`function benchmarkWriteRune(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkwriterune>)

- [`function exampleBuffer():Void`](<#function-examplebuffer>)

- [`function exampleBuffer_Bytes():Void`](<#function-examplebuffer_bytes>)

- [`function exampleBuffer_Cap():Void`](<#function-examplebuffer_cap>)

- [`function exampleBuffer_Grow():Void`](<#function-examplebuffer_grow>)

- [`function exampleBuffer_Len():Void`](<#function-examplebuffer_len>)

- [`function exampleBuffer_Next():Void`](<#function-examplebuffer_next>)

- [`function exampleBuffer_Read():Void`](<#function-examplebuffer_read>)

- [`function exampleBuffer_ReadByte():Void`](<#function-examplebuffer_readbyte>)

- [`function exampleBuffer_reader():Void`](<#function-examplebuffer_reader>)

- [`function exampleCompare():Void`](<#function-examplecompare>)

- [`function exampleCompare_search():Void`](<#function-examplecompare_search>)

- [`function exampleContains():Void`](<#function-examplecontains>)

- [`function exampleContainsAny():Void`](<#function-examplecontainsany>)

- [`function exampleContainsRune():Void`](<#function-examplecontainsrune>)

- [`function exampleCount():Void`](<#function-examplecount>)

- [`function exampleCut():Void`](<#function-examplecut>)

- [`function exampleEqual():Void`](<#function-exampleequal>)

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

- [`function exampleReader_Len():Void`](<#function-examplereader_len>)

- [`function exampleRepeat():Void`](<#function-examplerepeat>)

- [`function exampleReplace():Void`](<#function-examplereplace>)

- [`function exampleReplaceAll():Void`](<#function-examplereplaceall>)

- [`function exampleRunes():Void`](<#function-examplerunes>)

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

- [`function testBasicOperations(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testbasicoperations>)

- [`function testBufferGrowNegative(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testbuffergrownegative>)

- [`function testBufferGrowth(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testbuffergrowth>)

- [`function testBufferTruncateNegative(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testbuffertruncatenegative>)

- [`function testBufferTruncateOutOfRange(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testbuffertruncateoutofrange>)

- [`function testCapWithPreallocatedSlice(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcapwithpreallocatedslice>)

- [`function testCapWithSliceAndWrittenData(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcapwithsliceandwrittendata>)

- [`function testClone(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testclone>)

- [`function testCompare(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcompare>)

- [`function testCompareBytes(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcomparebytes>)

- [`function testCompareIdenticalSlice(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcompareidenticalslice>)

- [`function testContains(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcontains>)

- [`function testContainsAny(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcontainsany>)

- [`function testContainsRune(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcontainsrune>)

- [`function testCountByte(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcountbyte>)

- [`function testCountByteNoMatch(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcountbytenomatch>)

- [`function testCut(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcut>)

- [`function testCutPrefix(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcutprefix>)

- [`function testCutSuffix(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcutsuffix>)

- [`function testEmptyReaderConcurrent(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testemptyreaderconcurrent>)

- [`function testEndianBaseCompare(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testendianbasecompare>)

- [`function testEqual(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testequal>)

- [`function testEqualExhaustive(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testequalexhaustive>)

- [`function testEqualFold(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testequalfold>)

- [`function testFields(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testfields>)

- [`function testFieldsFunc(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testfieldsfunc>)

- [`function testGrow(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testgrow>)

- [`function testGrowOverflow(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testgrowoverflow>)

- [`function testIndex(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testindex>)

- [`function testIndexAny(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testindexany>)

- [`function testIndexByte(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testindexbyte>)

- [`function testIndexByteBig(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testindexbytebig>)

- [`function testIndexByteSmall(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testindexbytesmall>)

- [`function testIndexFunc(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testindexfunc>)

- [`function testIndexRune(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testindexrune>)

- [`function testLargeByteReads(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testlargebytereads>)

- [`function testLargeByteWrites(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testlargebytewrites>)

- [`function testLargeStringReads(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testlargestringreads>)

- [`function testLargeStringWrites(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testlargestringwrites>)

- [`function testLastIndex(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testlastindex>)

- [`function testLastIndexAny(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testlastindexany>)

- [`function testLastIndexByte(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testlastindexbyte>)

- [`function testMap(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testmap>)

- [`function testMixedReadsAndWrites(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testmixedreadsandwrites>)

- [`function testNewBuffer(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testnewbuffer>)

- [`function testNewBufferString(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testnewbufferstring>)

- [`function testNext(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testnext>)

- [`function testNil(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testnil>)

- [`function testNotEqual(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testnotequal>)

- [`function testReadAfterBigSeek(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreadafterbigseek>)

- [`function testReadBytes(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreadbytes>)

- [`function testReadEmptyAtEOF(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreademptyateof>)

- [`function testReadFrom(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreadfrom>)

- [`function testReadFromNegativeReader(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreadfromnegativereader>)

- [`function testReadFromPanicReader(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreadfrompanicreader>)

- [`function testReadString(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreadstring>)

- [`function testReader(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreader>)

- [`function testReaderAt(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreaderat>)

- [`function testReaderAtConcurrent(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreaderatconcurrent>)

- [`function testReaderCopyNothing(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreadercopynothing>)

- [`function testReaderDoubleUnreadRune(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreaderdoubleunreadrune>)

- [`function testReaderLen(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreaderlen>)

- [`function testReaderLenSize(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreaderlensize>)

- [`function testReaderReset(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreaderreset>)

- [`function testReaderWriteTo(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreaderwriteto>)

- [`function testReaderZero(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreaderzero>)

- [`function testRepeat(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testrepeat>)

- [`function testRepeatCatchesOverflow(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testrepeatcatchesoverflow>)

- [`function testReplace(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreplace>)

- [`function testRuneIO(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testruneio>)

- [`function testRunes(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testrunes>)

- [`function testSplit(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testsplit>)

- [`function testSplitAfter(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testsplitafter>)

- [`function testTitle(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testtitle>)

- [`function testToLower(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testtolower>)

- [`function testToTitle(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testtotitle>)

- [`function testToUpper(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testtoupper>)

- [`function testToValidUTF8(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testtovalidutf8>)

- [`function testTrim(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testtrim>)

- [`function testTrimFunc(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testtrimfunc>)

- [`function testTrimSpace(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testtrimspace>)

- [`function testUnreadByte(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testunreadbyte>)

- [`function testUnreadRuneError(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testunreadruneerror>)

- [`function testWriteInvalidRune(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testwriteinvalidrune>)

- [`function testWriteTo(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testwriteto>)

- [class BinOpTest](<#class-binoptest>)

  - [`function new(?_a:stdgo.GoString, ?_b:stdgo.GoString, ?_i:Null<stdgo.GoInt>):Void`](<#binoptest-function-new>)

- [class FieldsTest](<#class-fieldstest>)

  - [`function new(?_s:stdgo.GoString, ?_a:stdgo.Slice<stdgo.GoString>):Void`](<#fieldstest-function-new>)

- [class IndexFuncTest](<#class-indexfunctest>)

  - [`function new(?_in:stdgo.GoString, ?_f:stdgo.bytes_test.T_predicate, ?_first:Null<stdgo.GoInt>, ?_last:Null<stdgo.GoInt>):Void`](<#indexfunctest-function-new>)

- [class RepeatTest](<#class-repeattest>)

  - [`function new(?_in:stdgo.GoString, ?_out:stdgo.GoString, ?_count:Null<stdgo.GoInt>):Void`](<#repeattest-function-new>)

- [class ReplaceTest](<#class-replacetest>)

  - [`function new(?_in:stdgo.GoString, ?_old:stdgo.GoString, ?_new:stdgo.GoString, ?_n:Null<stdgo.GoInt>, ?_out:stdgo.GoString):Void`](<#replacetest-function-new>)

- [class RunesTest](<#class-runestest>)

  - [`function new(?_in:stdgo.GoString, ?_out:stdgo.Slice<stdgo.GoInt32>, ?_lossy:Bool):Void`](<#runestest-function-new>)

- [class SplitTest](<#class-splittest>)

  - [`function new(?_s:stdgo.GoString, ?_sep:stdgo.GoString, ?_n:Null<stdgo.GoInt>, ?_a:stdgo.Slice<stdgo.GoString>):Void`](<#splittest-function-new>)

- [class StringTest](<#class-stringtest>)

  - [`function new(?_in:stdgo.GoString, ?_out:stdgo.Slice<stdgo.GoUInt8>):Void`](<#stringtest-function-new>)

- [class T\_testReaderCopyNothing\_0\_\_\_localname\_\_\_nErr](<#class-t_testreadercopynothing_0localnamenerr>)

  - [`function new(?_n:stdgo.GoInt64, ?_err:Null<stdgo.Error>):Void`](<#t_testreadercopynothing_0localnamenerr-function-new>)

- [class T\_testReaderCopyNothing\_1\_\_\_localname\_\_\_justReader](<#class-t_testreadercopynothing_1localnamejustreader>)

  - [`function new(?reader:Null<stdgo.io.Reader>):Void`](<#t_testreadercopynothing_1localnamejustreader-function-new>)

  - [`function read(__0:stdgo.Slice<stdgo.GoUInt8>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#t_testreadercopynothing_1localnamejustreader-function-read>)

  - [`function read( __0:stdgo.Slice<stdgo.GoUInt8>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#t_testreadercopynothing_1localnamejustreader-function-read>)

- [class T\_testReaderCopyNothing\_2\_\_\_localname\_\_\_justWriter](<#class-t_testreadercopynothing_2localnamejustwriter>)

  - [`function new(?writer:Null<stdgo.io.Writer>):Void`](<#t_testreadercopynothing_2localnamejustwriter-function-new>)

  - [`function write(__0:stdgo.Slice<stdgo.GoUInt8>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#t_testreadercopynothing_2localnamejustwriter-function-write>)

  - [`function write( __0:stdgo.Slice<stdgo.GoUInt8>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#t_testreadercopynothing_2localnamejustwriter-function-write>)

- [class TitleTest](<#class-titletest>)

  - [`function new(?_in:stdgo.GoString, ?_out:stdgo.GoString):Void`](<#titletest-function-new>)

- [class TrimFuncTest](<#class-trimfunctest>)

  - [`function new(?_f:stdgo.bytes_test.T_predicate, ?_in:stdgo.GoString, ?_trimOut:stdgo.Slice<stdgo.GoUInt8>, ?_leftOut:stdgo.Slice<stdgo.GoUInt8>, ?_rightOut:stdgo.Slice<stdgo.GoUInt8>):Void`](<#trimfunctest-function-new>)

- [class TrimNilTest](<#class-trimniltest>)

  - [`function new(?_f:stdgo.GoString, ?_in:stdgo.Slice<stdgo.GoUInt8>, ?_arg:stdgo.GoString, ?_out:stdgo.Slice<stdgo.GoUInt8>):Void`](<#trimniltest-function-new>)

- [class TrimTest](<#class-trimtest>)

  - [`function new(?_f:stdgo.GoString, ?_in:stdgo.GoString, ?_arg:stdgo.GoString, ?_out:stdgo.GoString):Void`](<#trimtest-function-new>)

# Constants


```haxe
import stdgo.bytes_test.Bytes
```


```haxe
final n:stdgo.GoUInt64 = ((10000i64 : GoUInt64))
```



make this bigger for a larger \(and slower\) test  

# Variables


```haxe
import stdgo.bytes_test.Bytes
```


```haxe
var _:Bool
```


```haxe
var containsAnyTests:stdgo.Slice<stdgo.bytes_test._Bytes_test.T__struct_10>
```


```haxe
var containsRuneTests:stdgo.Slice<stdgo.bytes_test._Bytes_test.T__struct_11>
```


```haxe
var equalFoldTests:stdgo.Slice<stdgo.bytes_test._Bytes_test.T__struct_6>
```


```haxe
var repeatTests:stdgo.Slice<stdgo.bytes_test.RepeatTest>
```


```haxe
var replaceTests:stdgo.Slice<stdgo.bytes_test.ReplaceTest>
```


```haxe
var runesTests:stdgo.Slice<stdgo.bytes_test.RunesTest>
```


```haxe
var titleTests:stdgo.Slice<stdgo.bytes_test.TitleTest>
```


```haxe
var toTitleTests:stdgo.Slice<stdgo.bytes_test.TitleTest>
```


```haxe
var unreadRuneErrorTests:stdgo.Slice<stdgo.bytes_test._Bytes_test.T__struct_16>
```


```haxe
var _:Bool
```


# Functions


```haxe
import stdgo.bytes_test.Bytes
```


## function benchmarkBufferFullSmallReads


```haxe
function benchmarkBufferFullSmallReads(_b:stdgo.Ref<stdgo.testing.B>):Void
```



Check that we don't compact too often. From Issue 5154.  

[\(view code\)](<./Bytes.hx#L2103>)


## function benchmarkBufferNotEmptyWriteRead


```haxe
function benchmarkBufferNotEmptyWriteRead(_b:stdgo.Ref<stdgo.testing.B>):Void
```



From Issue 5154.  

[\(view code\)](<./Bytes.hx#L2083>)


## function benchmarkBufferWriteBlock


```haxe
function benchmarkBufferWriteBlock(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2123>)


## function benchmarkBytesCompare


```haxe
function benchmarkBytesCompare(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3809>)


## function benchmarkCompareBytesBig


```haxe
function benchmarkCompareBytesBig(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L4222>)


## function benchmarkCompareBytesBigIdentical


```haxe
function benchmarkCompareBytesBigIdentical(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L4240>)


## function benchmarkCompareBytesBigUnaligned


```haxe
function benchmarkCompareBytesBigUnaligned(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L4212>)


## function benchmarkCompareBytesDifferentLength


```haxe
function benchmarkCompareBytesDifferentLength(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L4182>)


## function benchmarkCompareBytesEmpty


```haxe
function benchmarkCompareBytesEmpty(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L4146>)


## function benchmarkCompareBytesEqual


```haxe
function benchmarkCompareBytesEqual(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L4122>)


## function benchmarkCompareBytesIdentical


```haxe
function benchmarkCompareBytesIdentical(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L4158>)


## function benchmarkCompareBytesSameLength


```haxe
function benchmarkCompareBytesSameLength(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L4170>)


## function benchmarkCompareBytesToNil


```haxe
function benchmarkCompareBytesToNil(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L4134>)


## function benchmarkCount


```haxe
function benchmarkCount(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2793>)


## function benchmarkCountEasy


```haxe
function benchmarkCountEasy(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2809>)


## function benchmarkCountHard1


```haxe
function benchmarkCountHard1(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3724>)


## function benchmarkCountHard2


```haxe
function benchmarkCountHard2(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3727>)


## function benchmarkCountHard3


```haxe
function benchmarkCountHard3(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3730>)


## function benchmarkCountSingle


```haxe
function benchmarkCountSingle(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2827>)


## function benchmarkEqual


```haxe
function benchmarkEqual(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2707>)


## function benchmarkFields


```haxe
function benchmarkFields(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3595>)


## function benchmarkFieldsFunc


```haxe
function benchmarkFieldsFunc(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3617>)


## function benchmarkIndex


```haxe
function benchmarkIndex(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2759>)


## function benchmarkIndexAnyASCII


```haxe
function benchmarkIndexAnyASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3839>)


## function benchmarkIndexAnyUTF8


```haxe
function benchmarkIndexAnyUTF8(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3861>)


## function benchmarkIndexByte


```haxe
function benchmarkIndexByte(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2645>)


## function benchmarkIndexBytePortable


```haxe
function benchmarkIndexBytePortable(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2648>)


## function benchmarkIndexEasy


```haxe
function benchmarkIndexEasy(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2775>)


## function benchmarkIndexHard1


```haxe
function benchmarkIndexHard1(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3703>)


## function benchmarkIndexHard2


```haxe
function benchmarkIndexHard2(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3706>)


## function benchmarkIndexHard3


```haxe
function benchmarkIndexHard3(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3709>)


## function benchmarkIndexHard4


```haxe
function benchmarkIndexHard4(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3712>)


## function benchmarkIndexPeriodic


```haxe
function benchmarkIndexPeriodic(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3958>)


## function benchmarkIndexRune


```haxe
function benchmarkIndexRune(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2667>)


## function benchmarkIndexRuneASCII


```haxe
function benchmarkIndexRuneASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2670>)


## function benchmarkLastIndexAnyASCII


```haxe
function benchmarkLastIndexAnyASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3883>)


## function benchmarkLastIndexAnyUTF8


```haxe
function benchmarkLastIndexAnyUTF8(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3905>)


## function benchmarkLastIndexHard1


```haxe
function benchmarkLastIndexHard1(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3715>)


## function benchmarkLastIndexHard2


```haxe
function benchmarkLastIndexHard2(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3718>)


## function benchmarkLastIndexHard3


```haxe
function benchmarkLastIndexHard3(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3721>)


## function benchmarkReadString


```haxe
function benchmarkReadString(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L1866>)


## function benchmarkRepeat


```haxe
function benchmarkRepeat(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3777>)


## function benchmarkRepeatLarge


```haxe
function benchmarkRepeatLarge(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3785>)


## function benchmarkSplitEmptySeparator


```haxe
function benchmarkSplitEmptySeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3733>)


## function benchmarkSplitMultiByteSeparator


```haxe
function benchmarkSplitMultiByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3750>)


## function benchmarkSplitNMultiByteSeparator


```haxe
function benchmarkSplitNMultiByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3768>)


## function benchmarkSplitNSingleByteSeparator


```haxe
function benchmarkSplitNSingleByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3759>)


## function benchmarkSplitSingleByteSeparator


```haxe
function benchmarkSplitSingleByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3741>)


## function benchmarkToLower


```haxe
function benchmarkToLower(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3095>)


## function benchmarkToUpper


```haxe
function benchmarkToUpper(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3079>)


## function benchmarkToValidUTF8


```haxe
function benchmarkToValidUTF8(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3652>)


## function benchmarkTrimASCII


```haxe
function benchmarkTrimASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3927>)


## function benchmarkTrimByte


```haxe
function benchmarkTrimByte(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3949>)


## function benchmarkTrimSpace


```haxe
function benchmarkTrimSpace(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3639>)


## function benchmarkWriteByte


```haxe
function benchmarkWriteByte(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2045>)


## function benchmarkWriteRune


```haxe
function benchmarkWriteRune(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2062>)


## function exampleBuffer


```haxe
function exampleBuffer():Void
```


[\(view code\)](<./Bytes.hx#L4258>)


## function exampleBuffer\_Bytes


```haxe
function exampleBuffer_Bytes():Void
```


[\(view code\)](<./Bytes.hx#L4269>)


## function exampleBuffer\_Cap


```haxe
function exampleBuffer_Cap():Void
```


[\(view code\)](<./Bytes.hx#L4287>)


## function exampleBuffer\_Grow


```haxe
function exampleBuffer_Grow():Void
```


[\(view code\)](<./Bytes.hx#L4293>)


## function exampleBuffer\_Len


```haxe
function exampleBuffer_Len():Void
```


[\(view code\)](<./Bytes.hx#L4300>)


## function exampleBuffer\_Next


```haxe
function exampleBuffer_Next():Void
```


[\(view code\)](<./Bytes.hx#L4306>)


## function exampleBuffer\_Read


```haxe
function exampleBuffer_Read():Void
```


[\(view code\)](<./Bytes.hx#L4314>)


## function exampleBuffer\_ReadByte


```haxe
function exampleBuffer_ReadByte():Void
```


[\(view code\)](<./Bytes.hx#L4327>)


## function exampleBuffer\_reader


```haxe
function exampleBuffer_reader():Void
```


[\(view code\)](<./Bytes.hx#L4264>)


## function exampleCompare


```haxe
function exampleCompare():Void
```


[\(view code\)](<./Bytes.hx#L4338>)


## function exampleCompare\_search


```haxe
function exampleCompare_search():Void
```


[\(view code\)](<./Bytes.hx#L4347>)


## function exampleContains


```haxe
function exampleContains():Void
```


[\(view code\)](<./Bytes.hx#L4355>)


## function exampleContainsAny


```haxe
function exampleContainsAny():Void
```


[\(view code\)](<./Bytes.hx#L4361>)


## function exampleContainsRune


```haxe
function exampleContainsRune():Void
```


[\(view code\)](<./Bytes.hx#L4367>)


## function exampleCount


```haxe
function exampleCount():Void
```


[\(view code\)](<./Bytes.hx#L4374>)


## function exampleCut


```haxe
function exampleCut():Void
```


[\(view code\)](<./Bytes.hx#L4378>)


## function exampleEqual


```haxe
function exampleEqual():Void
```


[\(view code\)](<./Bytes.hx#L4388>)


## function exampleEqualFold


```haxe
function exampleEqualFold():Void
```


[\(view code\)](<./Bytes.hx#L4392>)


## function exampleFields


```haxe
function exampleFields():Void
```


[\(view code\)](<./Bytes.hx#L4395>)


## function exampleFieldsFunc


```haxe
function exampleFieldsFunc():Void
```


[\(view code\)](<./Bytes.hx#L4398>)


## function exampleHasPrefix


```haxe
function exampleHasPrefix():Void
```


[\(view code\)](<./Bytes.hx#L4404>)


## function exampleHasSuffix


```haxe
function exampleHasSuffix():Void
```


[\(view code\)](<./Bytes.hx#L4409>)


## function exampleIndex


```haxe
function exampleIndex():Void
```


[\(view code\)](<./Bytes.hx#L4415>)


## function exampleIndexAny


```haxe
function exampleIndexAny():Void
```


[\(view code\)](<./Bytes.hx#L4430>)


## function exampleIndexByte


```haxe
function exampleIndexByte():Void
```


[\(view code\)](<./Bytes.hx#L4419>)


## function exampleIndexFunc


```haxe
function exampleIndexFunc():Void
```


[\(view code\)](<./Bytes.hx#L4423>)


## function exampleIndexRune


```haxe
function exampleIndexRune():Void
```


[\(view code\)](<./Bytes.hx#L4434>)


## function exampleJoin


```haxe
function exampleJoin():Void
```


[\(view code\)](<./Bytes.hx#L4438>)


## function exampleLastIndex


```haxe
function exampleLastIndex():Void
```


[\(view code\)](<./Bytes.hx#L4442>)


## function exampleLastIndexAny


```haxe
function exampleLastIndexAny():Void
```


[\(view code\)](<./Bytes.hx#L4447>)


## function exampleLastIndexByte


```haxe
function exampleLastIndexByte():Void
```


[\(view code\)](<./Bytes.hx#L4452>)


## function exampleLastIndexFunc


```haxe
function exampleLastIndexFunc():Void
```


[\(view code\)](<./Bytes.hx#L4457>)


## function exampleReader\_Len


```haxe
function exampleReader_Len():Void
```


[\(view code\)](<./Bytes.hx#L4462>)


## function exampleRepeat


```haxe
function exampleRepeat():Void
```


[\(view code\)](<./Bytes.hx#L4466>)


## function exampleReplace


```haxe
function exampleReplace():Void
```


[\(view code\)](<./Bytes.hx#L4469>)


## function exampleReplaceAll


```haxe
function exampleReplaceAll():Void
```


[\(view code\)](<./Bytes.hx#L4473>)


## function exampleRunes


```haxe
function exampleRunes():Void
```


[\(view code\)](<./Bytes.hx#L4476>)


## function exampleSplit


```haxe
function exampleSplit():Void
```


[\(view code\)](<./Bytes.hx#L4482>)


## function exampleSplitAfter


```haxe
function exampleSplitAfter():Void
```


[\(view code\)](<./Bytes.hx#L4493>)


## function exampleSplitAfterN


```haxe
function exampleSplitAfterN():Void
```


[\(view code\)](<./Bytes.hx#L4496>)


## function exampleSplitN


```haxe
function exampleSplitN():Void
```


[\(view code\)](<./Bytes.hx#L4488>)


## function exampleTitle


```haxe
function exampleTitle():Void
```


[\(view code\)](<./Bytes.hx#L4499>)


## function exampleToLower


```haxe
function exampleToLower():Void
```


[\(view code\)](<./Bytes.hx#L4553>)


## function exampleToLowerSpecial


```haxe
function exampleToLowerSpecial():Void
```


[\(view code\)](<./Bytes.hx#L4556>)


## function exampleToTitle


```haxe
function exampleToTitle():Void
```


[\(view code\)](<./Bytes.hx#L4502>)


## function exampleToTitleSpecial


```haxe
function exampleToTitleSpecial():Void
```


[\(view code\)](<./Bytes.hx#L4506>)


## function exampleToUpper


```haxe
function exampleToUpper():Void
```


[\(view code\)](<./Bytes.hx#L4562>)


## function exampleToUpperSpecial


```haxe
function exampleToUpperSpecial():Void
```


[\(view code\)](<./Bytes.hx#L4565>)


## function exampleTrim


```haxe
function exampleTrim():Void
```


[\(view code\)](<./Bytes.hx#L4512>)


## function exampleTrimFunc


```haxe
function exampleTrimFunc():Void
```


[\(view code\)](<./Bytes.hx#L4515>)


## function exampleTrimLeft


```haxe
function exampleTrimLeft():Void
```


[\(view code\)](<./Bytes.hx#L4521>)


## function exampleTrimLeftFunc


```haxe
function exampleTrimLeftFunc():Void
```


[\(view code\)](<./Bytes.hx#L4524>)


## function exampleTrimPrefix


```haxe
function exampleTrimPrefix():Void
```


[\(view code\)](<./Bytes.hx#L4529>)


## function exampleTrimRight


```haxe
function exampleTrimRight():Void
```


[\(view code\)](<./Bytes.hx#L4545>)


## function exampleTrimRightFunc


```haxe
function exampleTrimRightFunc():Void
```


[\(view code\)](<./Bytes.hx#L4548>)


## function exampleTrimSpace


```haxe
function exampleTrimSpace():Void
```


[\(view code\)](<./Bytes.hx#L4535>)


## function exampleTrimSuffix


```haxe
function exampleTrimSuffix():Void
```


[\(view code\)](<./Bytes.hx#L4538>)


## function testBasicOperations


```haxe
function testBasicOperations(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L1424>)


## function testBufferGrowNegative


```haxe
function testBufferGrowNegative(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L3438>)


## function testBufferGrowth


```haxe
function testBufferGrowth(_t:stdgo.Ref<stdgo.testing.T>):Void
```



Tests that we occasionally compact. Issue 5154.  

[\(view code\)](<./Bytes.hx#L2025>)


## function testBufferTruncateNegative


```haxe
function testBufferTruncateNegative(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L3482>)


## function testBufferTruncateOutOfRange


```haxe
function testBufferTruncateOutOfRange(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L3526>)


## function testCapWithPreallocatedSlice


```haxe
function testCapWithPreallocatedSlice(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L1553>)


## function testCapWithSliceAndWrittenData


```haxe
function testCapWithSliceAndWrittenData(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L1560>)


## function testClone


```haxe
function testClone(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L3978>)


## function testCompare


```haxe
function testCompare(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L3996>)


## function testCompareBytes


```haxe
function testCompareBytes(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L4022>)


## function testCompareIdenticalSlice


```haxe
function testCompareIdenticalSlice(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L4013>)


## function testContains


```haxe
function testContains(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L3571>)


## function testContainsAny


```haxe
function testContainsAny(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L3581>)


## function testContainsRune


```haxe
function testContainsRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L3588>)


## function testCountByte


```haxe
function testCountByte(_t:stdgo.Ref<stdgo.testing.T>):Void
```



test count of a single byte across page offsets  

[\(view code\)](<./Bytes.hx#L2500>)


## function testCountByteNoMatch


```haxe
function testCountByteNoMatch(_t:stdgo.Ref<stdgo.testing.T>):Void
```



Make sure we don't count bytes outside our window  

[\(view code\)](<./Bytes.hx#L2570>)


## function testCut


```haxe
function testCut(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L3408>)


## function testCutPrefix


```haxe
function testCutPrefix(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L3418>)


## function testCutSuffix


```haxe
function testCutSuffix(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L3428>)


## function testEmptyReaderConcurrent


```haxe
function testEmptyReaderConcurrent(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L4684>)


## function testEndianBaseCompare


```haxe
function testEndianBaseCompare(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L4086>)


## function testEqual


```haxe
function testEqual(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L2161>)


## function testEqualExhaustive


```haxe
function testEqualExhaustive(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L2174>)


## function testEqualFold


```haxe
function testEqualFold(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L3392>)


## function testFields


```haxe
function testFields(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L2924>)


## function testFieldsFunc


```haxe
function testFieldsFunc(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L2950>)


## function testGrow


```haxe
function testGrow(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L1882>)


## function testGrowOverflow


```haxe
function testGrowOverflow(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L1910>)


## function testIndex


```haxe
function testIndex(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L2288>)


## function testIndexAny


```haxe
function testIndexAny(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L2294>)


## function testIndexByte


```haxe
function testIndexByte(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L2300>)


## function testIndexByteBig


```haxe
function testIndexByteBig(_t:stdgo.Ref<stdgo.testing.T>):Void
```



test a larger buffer with different sizes and alignments  

[\(view code\)](<./Bytes.hx#L2329>)


## function testIndexByteSmall


```haxe
function testIndexByteSmall(_t:stdgo.Ref<stdgo.testing.T>):Void
```



test a small index across all page offsets  

[\(view code\)](<./Bytes.hx#L2392>)


## function testIndexFunc


```haxe
function testIndexFunc(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L3335>)


## function testIndexRune


```haxe
function testIndexRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L2447>)


## function testLargeByteReads


```haxe
function testLargeByteReads(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L1522>)


## function testLargeByteWrites


```haxe
function testLargeByteWrites(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L1496>)


## function testLargeStringReads


```haxe
function testLargeStringReads(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L1511>)


## function testLargeStringWrites


```haxe
function testLargeStringWrites(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L1481>)


## function testLastIndex


```haxe
function testLastIndex(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L2291>)


## function testLastIndexAny


```haxe
function testLastIndexAny(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L2297>)


## function testLastIndexByte


```haxe
function testLastIndexByte(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L2317>)


## function testMap


```haxe
function testMap(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L3025>)


## function testMixedReadsAndWrites


```haxe
function testMixedReadsAndWrites(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L1533>)


## function testNewBuffer


```haxe
function testNewBuffer(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L1397>)


## function testNewBufferString


```haxe
function testNewBufferString(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L1401>)


## function testNext


```haxe
function testNext(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L1783>)


## function testNil


```haxe
function testNil(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L1568>)


## function testNotEqual


```haxe
function testNotEqual(_t:stdgo.Ref<stdgo.testing.T>):Void
```



make sure Equal returns false for minimally different strings. The data
is all zeros except for a single one in one location.  

[\(view code\)](<./Bytes.hx#L2214>)


## function testReadAfterBigSeek


```haxe
function testReadAfterBigSeek(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L4610>)


## function testReadBytes


```haxe
function testReadBytes(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L1820>)


## function testReadEmptyAtEOF


```haxe
function testReadEmptyAtEOF(_t:stdgo.Ref<stdgo.testing.T>):Void
```



Was a bug: used to give EOF reading empty slice at EOF.  

[\(view code\)](<./Bytes.hx#L1958>)


## function testReadFrom


```haxe
function testReadFrom(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L1574>)


## function testReadFromNegativeReader


```haxe
function testReadFromNegativeReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L1639>)


## function testReadFromPanicReader


```haxe
function testReadFromPanicReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```



Make sure that an empty Buffer remains empty when
it is "grown" before a Read that panics  

[\(view code\)](<./Bytes.hx#L1590>)


## function testReadString


```haxe
function testReadString(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L1843>)


## function testReader


```haxe
function testReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L4571>)


## function testReaderAt


```haxe
function testReaderAt(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L4625>)


## function testReaderAtConcurrent


```haxe
function testReaderAtConcurrent(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L4640>)


## function testReaderCopyNothing


```haxe
function testReaderCopyNothing(_t:stdgo.Ref<stdgo.testing.T>):Void
```



verify that copying from an empty reader always has the same results,
regardless of the presence of a WriteTo method.  

[\(view code\)](<./Bytes.hx#L4918>)


## function testReaderDoubleUnreadRune


```haxe
function testReaderDoubleUnreadRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L4840>)


## function testReaderLen


```haxe
function testReaderLen(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L4790>)


## function testReaderLenSize


```haxe
function testReaderLenSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```



tests that Len is affected by reads, but Size is not.  

[\(view code\)](<./Bytes.hx#L4941>)


## function testReaderReset


```haxe
function testReaderReset(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L4953>)


## function testReaderWriteTo


```haxe
function testReaderWriteTo(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L4760>)


## function testReaderZero


```haxe
function testReaderZero(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L4980>)


## function testRepeat


```haxe
function testRepeat(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L3122>)


## function testRepeatCatchesOverflow


```haxe
function testRepeatCatchesOverflow(_t:stdgo.Ref<stdgo.testing.T>):Void
```



See Issue golang.org/issue/16237  

[\(view code\)](<./Bytes.hx#L3195>)


## function testReplace


```haxe
function testReplace(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L3347>)


## function testRuneIO


```haxe
function testRuneIO(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L1705>)


## function testRunes


```haxe
function testRunes(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L3231>)


## function testSplit


```haxe
function testSplit(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L2855>)


## function testSplitAfter


```haxe
function testSplitAfter(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L2894>)


## function testTitle


```haxe
function testTitle(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L3372>)


## function testToLower


```haxe
function testToLower(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L3076>)


## function testToTitle


```haxe
function testToTitle(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L3382>)


## function testToUpper


```haxe
function testToUpper(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L3073>)


## function testToValidUTF8


```haxe
function testToValidUTF8(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L3111>)


## function testTrim


```haxe
function testTrim(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L3247>)


## function testTrimFunc


```haxe
function testTrimFunc(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L3318>)


## function testTrimSpace


```haxe
function testTrimSpace(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L3119>)


## function testUnreadByte


```haxe
function testUnreadByte(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L1969>)


## function testUnreadRuneError


```haxe
function testUnreadRuneError(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L4824>)


## function testWriteInvalidRune


```haxe
function testWriteInvalidRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L1776>)


## function testWriteTo


```haxe
function testWriteTo(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bytes.hx#L1693>)


# Classes


```haxe
import stdgo.bytes_test.*
```


## class BinOpTest


```haxe
var _a:stdgo.GoString
```


```haxe
var _b:stdgo.GoString
```


```haxe
var _i:stdgo.GoInt
```


### BinOpTest function new


```haxe
function new(?_a:stdgo.GoString, ?_b:stdgo.GoString, ?_i:Null<stdgo.GoInt>):Void
```


[\(view code\)](<./Bytes_test.hx#L796>)


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


[\(view code\)](<./Bytes_test.hx#L835>)


## class IndexFuncTest


```haxe
var _f:stdgo.bytes_test.T_predicate
```


```haxe
var _first:stdgo.GoInt
```


```haxe
var _in:stdgo.GoString
```


```haxe
var _last:stdgo.GoInt
```


### IndexFuncTest function new


```haxe
function new(?_in:stdgo.GoString, ?_f:stdgo.bytes_test.T_predicate, ?_first:Null<stdgo.GoInt>, ?_last:Null<stdgo.GoInt>):Void
```


[\(view code\)](<./Bytes_test.hx#L992>)


## class RepeatTest


```haxe
var _count:stdgo.GoInt
```


```haxe
var _in:stdgo.GoString
```


```haxe
var _out:stdgo.GoString
```


### RepeatTest function new


```haxe
function new(?_in:stdgo.GoString, ?_out:stdgo.GoString, ?_count:Null<stdgo.GoInt>):Void
```


[\(view code\)](<./Bytes_test.hx#L871>)


## class ReplaceTest


```haxe
var _in:stdgo.GoString
```


```haxe
var _n:stdgo.GoInt
```


```haxe
var _new:stdgo.GoString
```


```haxe
var _old:stdgo.GoString
```


```haxe
var _out:stdgo.GoString
```


### ReplaceTest function new


```haxe
function new(?_in:stdgo.GoString, ?_old:stdgo.GoString, ?_new:stdgo.GoString, ?_n:Null<stdgo.GoInt>, ?_out:stdgo.GoString):Void
```


[\(view code\)](<./Bytes_test.hx#L1014>)


## class RunesTest


```haxe
var _in:stdgo.GoString
```


```haxe
var _lossy:Bool
```


```haxe
var _out:stdgo.Slice<stdgo.GoInt32>
```


### RunesTest function new


```haxe
function new(?_in:stdgo.GoString, ?_out:stdgo.Slice<stdgo.GoInt32>, ?_lossy:Bool):Void
```


[\(view code\)](<./Bytes_test.hx#L890>)


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


[\(view code\)](<./Bytes_test.hx#L816>)


## class StringTest



Test case for any function which accepts and returns a byte slice.
For ease of creation, we write the input byte slice as a string.  

```haxe
var _in:stdgo.GoString
```


```haxe
var _out:stdgo.Slice<stdgo.GoUInt8>
```


### StringTest function new


```haxe
function new(?_in:stdgo.GoString, ?_out:stdgo.Slice<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Bytes_test.hx#L853>)


## class T\_testReaderCopyNothing\_0\_\_\_localname\_\_\_nErr


```haxe
var _err:stdgo.Error
```


```haxe
var _n:stdgo.GoInt64
```


### T\_testReaderCopyNothing\_0\_\_\_localname\_\_\_nErr function new


```haxe
function new(?_n:stdgo.GoInt64, ?_err:Null<stdgo.Error>):Void
```


[\(view code\)](<./Bytes_test.hx#L4869>)


## class T\_testReaderCopyNothing\_1\_\_\_localname\_\_\_justReader


```haxe
var reader:stdgo.io.Reader
```


### T\_testReaderCopyNothing\_1\_\_\_localname\_\_\_justReader function new


```haxe
function new(?reader:Null<stdgo.io.Reader>):Void
```


[\(view code\)](<./Bytes_test.hx#L4886>)


### T\_testReaderCopyNothing\_1\_\_\_localname\_\_\_justReader function read


```haxe
function read(__0:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Bytes_test.hx#L4891>)


### T\_testReaderCopyNothing\_1\_\_\_localname\_\_\_justReader function read


```haxe
function read( __0:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Bytes_test.hx#L5099>)


## class T\_testReaderCopyNothing\_2\_\_\_localname\_\_\_justWriter


```haxe
var writer:stdgo.io.Writer
```


### T\_testReaderCopyNothing\_2\_\_\_localname\_\_\_justWriter function new


```haxe
function new(?writer:Null<stdgo.io.Writer>):Void
```


[\(view code\)](<./Bytes_test.hx#L4904>)


### T\_testReaderCopyNothing\_2\_\_\_localname\_\_\_justWriter function write


```haxe
function write(__0:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Bytes_test.hx#L4909>)


### T\_testReaderCopyNothing\_2\_\_\_localname\_\_\_justWriter function write


```haxe
function write( __0:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Bytes_test.hx#L5114>)


## class TitleTest


```haxe
var _in:stdgo.GoString
```


```haxe
var _out:stdgo.GoString
```


### TitleTest function new


```haxe
function new(?_in:stdgo.GoString, ?_out:stdgo.GoString):Void
```


[\(view code\)](<./Bytes_test.hx#L1034>)


## class TrimFuncTest


```haxe
var _f:stdgo.bytes_test.T_predicate
```


```haxe
var _in:stdgo.GoString
```


```haxe
var _leftOut:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _rightOut:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _trimOut:stdgo.Slice<stdgo.GoUInt8>
```


### TrimFuncTest function new


```haxe
function new(?_f:stdgo.bytes_test.T_predicate, ?_in:stdgo.GoString, ?_trimOut:stdgo.Slice<stdgo.GoUInt8>, ?_leftOut:stdgo.Slice<stdgo.GoUInt8>, ?_rightOut:stdgo.Slice<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Bytes_test.hx#L970>)


## class TrimNilTest


```haxe
var _arg:stdgo.GoString
```


```haxe
var _f:stdgo.GoString
```


```haxe
var _in:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _out:stdgo.Slice<stdgo.GoUInt8>
```


### TrimNilTest function new


```haxe
function new(?_f:stdgo.GoString, ?_in:stdgo.Slice<stdgo.GoUInt8>, ?_arg:stdgo.GoString, ?_out:stdgo.Slice<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Bytes_test.hx#L931>)


## class TrimTest


```haxe
var _arg:stdgo.GoString
```


```haxe
var _f:stdgo.GoString
```


```haxe
var _in:stdgo.GoString
```


```haxe
var _out:stdgo.GoString
```


### TrimTest function new


```haxe
function new(?_f:stdgo.GoString, ?_in:stdgo.GoString, ?_arg:stdgo.GoString, ?_out:stdgo.GoString):Void
```


[\(view code\)](<./Bytes_test.hx#L910>)


