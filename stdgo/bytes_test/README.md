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
final n:stdgo.GoUInt64 = (("10000" : GoUInt64))
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



[\(view code\)](<./Bytes.hx#L2090>)


## function benchmarkBufferNotEmptyWriteRead


```haxe
function benchmarkBufferNotEmptyWriteRead(_b:stdgo.Ref<stdgo.testing.B>):Void
```


From Issue 5154.  



[\(view code\)](<./Bytes.hx#L2070>)


## function benchmarkBufferWriteBlock


```haxe
function benchmarkBufferWriteBlock(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L2110>)


## function benchmarkBytesCompare


```haxe
function benchmarkBytesCompare(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3781>)


## function benchmarkCompareBytesBig


```haxe
function benchmarkCompareBytesBig(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L4194>)


## function benchmarkCompareBytesBigIdentical


```haxe
function benchmarkCompareBytesBigIdentical(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L4212>)


## function benchmarkCompareBytesBigUnaligned


```haxe
function benchmarkCompareBytesBigUnaligned(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L4184>)


## function benchmarkCompareBytesDifferentLength


```haxe
function benchmarkCompareBytesDifferentLength(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L4154>)


## function benchmarkCompareBytesEmpty


```haxe
function benchmarkCompareBytesEmpty(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L4118>)


## function benchmarkCompareBytesEqual


```haxe
function benchmarkCompareBytesEqual(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L4094>)


## function benchmarkCompareBytesIdentical


```haxe
function benchmarkCompareBytesIdentical(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L4130>)


## function benchmarkCompareBytesSameLength


```haxe
function benchmarkCompareBytesSameLength(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L4142>)


## function benchmarkCompareBytesToNil


```haxe
function benchmarkCompareBytesToNil(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L4106>)


## function benchmarkCount


```haxe
function benchmarkCount(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L2780>)


## function benchmarkCountEasy


```haxe
function benchmarkCountEasy(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L2796>)


## function benchmarkCountHard1


```haxe
function benchmarkCountHard1(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3696>)


## function benchmarkCountHard2


```haxe
function benchmarkCountHard2(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3699>)


## function benchmarkCountHard3


```haxe
function benchmarkCountHard3(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3702>)


## function benchmarkCountSingle


```haxe
function benchmarkCountSingle(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L2814>)


## function benchmarkEqual


```haxe
function benchmarkEqual(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L2694>)


## function benchmarkFields


```haxe
function benchmarkFields(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3567>)


## function benchmarkFieldsFunc


```haxe
function benchmarkFieldsFunc(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3589>)


## function benchmarkIndex


```haxe
function benchmarkIndex(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L2746>)


## function benchmarkIndexAnyASCII


```haxe
function benchmarkIndexAnyASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3811>)


## function benchmarkIndexAnyUTF8


```haxe
function benchmarkIndexAnyUTF8(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3833>)


## function benchmarkIndexByte


```haxe
function benchmarkIndexByte(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L2632>)


## function benchmarkIndexBytePortable


```haxe
function benchmarkIndexBytePortable(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L2635>)


## function benchmarkIndexEasy


```haxe
function benchmarkIndexEasy(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L2762>)


## function benchmarkIndexHard1


```haxe
function benchmarkIndexHard1(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3675>)


## function benchmarkIndexHard2


```haxe
function benchmarkIndexHard2(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3678>)


## function benchmarkIndexHard3


```haxe
function benchmarkIndexHard3(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3681>)


## function benchmarkIndexHard4


```haxe
function benchmarkIndexHard4(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3684>)


## function benchmarkIndexPeriodic


```haxe
function benchmarkIndexPeriodic(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3930>)


## function benchmarkIndexRune


```haxe
function benchmarkIndexRune(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L2654>)


## function benchmarkIndexRuneASCII


```haxe
function benchmarkIndexRuneASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L2657>)


## function benchmarkLastIndexAnyASCII


```haxe
function benchmarkLastIndexAnyASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3855>)


## function benchmarkLastIndexAnyUTF8


```haxe
function benchmarkLastIndexAnyUTF8(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3877>)


## function benchmarkLastIndexHard1


```haxe
function benchmarkLastIndexHard1(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3687>)


## function benchmarkLastIndexHard2


```haxe
function benchmarkLastIndexHard2(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3690>)


## function benchmarkLastIndexHard3


```haxe
function benchmarkLastIndexHard3(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3693>)


## function benchmarkReadString


```haxe
function benchmarkReadString(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L1856>)


## function benchmarkRepeat


```haxe
function benchmarkRepeat(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3749>)


## function benchmarkRepeatLarge


```haxe
function benchmarkRepeatLarge(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3757>)


## function benchmarkSplitEmptySeparator


```haxe
function benchmarkSplitEmptySeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3705>)


## function benchmarkSplitMultiByteSeparator


```haxe
function benchmarkSplitMultiByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3722>)


## function benchmarkSplitNMultiByteSeparator


```haxe
function benchmarkSplitNMultiByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3740>)


## function benchmarkSplitNSingleByteSeparator


```haxe
function benchmarkSplitNSingleByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3731>)


## function benchmarkSplitSingleByteSeparator


```haxe
function benchmarkSplitSingleByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3713>)


## function benchmarkToLower


```haxe
function benchmarkToLower(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3082>)


## function benchmarkToUpper


```haxe
function benchmarkToUpper(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3066>)


## function benchmarkToValidUTF8


```haxe
function benchmarkToValidUTF8(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3624>)


## function benchmarkTrimASCII


```haxe
function benchmarkTrimASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3899>)


## function benchmarkTrimByte


```haxe
function benchmarkTrimByte(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3921>)


## function benchmarkTrimSpace


```haxe
function benchmarkTrimSpace(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3611>)


## function benchmarkWriteByte


```haxe
function benchmarkWriteByte(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L2032>)


## function benchmarkWriteRune


```haxe
function benchmarkWriteRune(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L2049>)


## function exampleBuffer


```haxe
function exampleBuffer():Void
```





[\(view code\)](<./Bytes.hx#L4230>)


## function exampleBuffer\_Bytes


```haxe
function exampleBuffer_Bytes():Void
```





[\(view code\)](<./Bytes.hx#L4241>)


## function exampleBuffer\_Cap


```haxe
function exampleBuffer_Cap():Void
```





[\(view code\)](<./Bytes.hx#L4259>)


## function exampleBuffer\_Grow


```haxe
function exampleBuffer_Grow():Void
```





[\(view code\)](<./Bytes.hx#L4265>)


## function exampleBuffer\_Len


```haxe
function exampleBuffer_Len():Void
```





[\(view code\)](<./Bytes.hx#L4272>)


## function exampleBuffer\_Next


```haxe
function exampleBuffer_Next():Void
```





[\(view code\)](<./Bytes.hx#L4278>)


## function exampleBuffer\_Read


```haxe
function exampleBuffer_Read():Void
```





[\(view code\)](<./Bytes.hx#L4286>)


## function exampleBuffer\_ReadByte


```haxe
function exampleBuffer_ReadByte():Void
```





[\(view code\)](<./Bytes.hx#L4299>)


## function exampleBuffer\_reader


```haxe
function exampleBuffer_reader():Void
```





[\(view code\)](<./Bytes.hx#L4236>)


## function exampleCompare


```haxe
function exampleCompare():Void
```





[\(view code\)](<./Bytes.hx#L4310>)


## function exampleCompare\_search


```haxe
function exampleCompare_search():Void
```





[\(view code\)](<./Bytes.hx#L4319>)


## function exampleContains


```haxe
function exampleContains():Void
```





[\(view code\)](<./Bytes.hx#L4327>)


## function exampleContainsAny


```haxe
function exampleContainsAny():Void
```





[\(view code\)](<./Bytes.hx#L4333>)


## function exampleContainsRune


```haxe
function exampleContainsRune():Void
```





[\(view code\)](<./Bytes.hx#L4339>)


## function exampleCount


```haxe
function exampleCount():Void
```





[\(view code\)](<./Bytes.hx#L4346>)


## function exampleCut


```haxe
function exampleCut():Void
```





[\(view code\)](<./Bytes.hx#L4350>)


## function exampleEqual


```haxe
function exampleEqual():Void
```





[\(view code\)](<./Bytes.hx#L4360>)


## function exampleEqualFold


```haxe
function exampleEqualFold():Void
```





[\(view code\)](<./Bytes.hx#L4364>)


## function exampleFields


```haxe
function exampleFields():Void
```





[\(view code\)](<./Bytes.hx#L4367>)


## function exampleFieldsFunc


```haxe
function exampleFieldsFunc():Void
```





[\(view code\)](<./Bytes.hx#L4370>)


## function exampleHasPrefix


```haxe
function exampleHasPrefix():Void
```





[\(view code\)](<./Bytes.hx#L4376>)


## function exampleHasSuffix


```haxe
function exampleHasSuffix():Void
```





[\(view code\)](<./Bytes.hx#L4381>)


## function exampleIndex


```haxe
function exampleIndex():Void
```





[\(view code\)](<./Bytes.hx#L4387>)


## function exampleIndexAny


```haxe
function exampleIndexAny():Void
```





[\(view code\)](<./Bytes.hx#L4402>)


## function exampleIndexByte


```haxe
function exampleIndexByte():Void
```





[\(view code\)](<./Bytes.hx#L4391>)


## function exampleIndexFunc


```haxe
function exampleIndexFunc():Void
```





[\(view code\)](<./Bytes.hx#L4395>)


## function exampleIndexRune


```haxe
function exampleIndexRune():Void
```





[\(view code\)](<./Bytes.hx#L4406>)


## function exampleJoin


```haxe
function exampleJoin():Void
```





[\(view code\)](<./Bytes.hx#L4410>)


## function exampleLastIndex


```haxe
function exampleLastIndex():Void
```





[\(view code\)](<./Bytes.hx#L4414>)


## function exampleLastIndexAny


```haxe
function exampleLastIndexAny():Void
```





[\(view code\)](<./Bytes.hx#L4419>)


## function exampleLastIndexByte


```haxe
function exampleLastIndexByte():Void
```





[\(view code\)](<./Bytes.hx#L4424>)


## function exampleLastIndexFunc


```haxe
function exampleLastIndexFunc():Void
```





[\(view code\)](<./Bytes.hx#L4429>)


## function exampleReader\_Len


```haxe
function exampleReader_Len():Void
```





[\(view code\)](<./Bytes.hx#L4434>)


## function exampleRepeat


```haxe
function exampleRepeat():Void
```





[\(view code\)](<./Bytes.hx#L4438>)


## function exampleReplace


```haxe
function exampleReplace():Void
```





[\(view code\)](<./Bytes.hx#L4441>)


## function exampleReplaceAll


```haxe
function exampleReplaceAll():Void
```





[\(view code\)](<./Bytes.hx#L4445>)


## function exampleRunes


```haxe
function exampleRunes():Void
```





[\(view code\)](<./Bytes.hx#L4448>)


## function exampleSplit


```haxe
function exampleSplit():Void
```





[\(view code\)](<./Bytes.hx#L4454>)


## function exampleSplitAfter


```haxe
function exampleSplitAfter():Void
```





[\(view code\)](<./Bytes.hx#L4465>)


## function exampleSplitAfterN


```haxe
function exampleSplitAfterN():Void
```





[\(view code\)](<./Bytes.hx#L4468>)


## function exampleSplitN


```haxe
function exampleSplitN():Void
```





[\(view code\)](<./Bytes.hx#L4460>)


## function exampleTitle


```haxe
function exampleTitle():Void
```





[\(view code\)](<./Bytes.hx#L4471>)


## function exampleToLower


```haxe
function exampleToLower():Void
```





[\(view code\)](<./Bytes.hx#L4525>)


## function exampleToLowerSpecial


```haxe
function exampleToLowerSpecial():Void
```





[\(view code\)](<./Bytes.hx#L4528>)


## function exampleToTitle


```haxe
function exampleToTitle():Void
```





[\(view code\)](<./Bytes.hx#L4474>)


## function exampleToTitleSpecial


```haxe
function exampleToTitleSpecial():Void
```





[\(view code\)](<./Bytes.hx#L4478>)


## function exampleToUpper


```haxe
function exampleToUpper():Void
```





[\(view code\)](<./Bytes.hx#L4534>)


## function exampleToUpperSpecial


```haxe
function exampleToUpperSpecial():Void
```





[\(view code\)](<./Bytes.hx#L4537>)


## function exampleTrim


```haxe
function exampleTrim():Void
```





[\(view code\)](<./Bytes.hx#L4484>)


## function exampleTrimFunc


```haxe
function exampleTrimFunc():Void
```





[\(view code\)](<./Bytes.hx#L4487>)


## function exampleTrimLeft


```haxe
function exampleTrimLeft():Void
```





[\(view code\)](<./Bytes.hx#L4493>)


## function exampleTrimLeftFunc


```haxe
function exampleTrimLeftFunc():Void
```





[\(view code\)](<./Bytes.hx#L4496>)


## function exampleTrimPrefix


```haxe
function exampleTrimPrefix():Void
```





[\(view code\)](<./Bytes.hx#L4501>)


## function exampleTrimRight


```haxe
function exampleTrimRight():Void
```





[\(view code\)](<./Bytes.hx#L4517>)


## function exampleTrimRightFunc


```haxe
function exampleTrimRightFunc():Void
```





[\(view code\)](<./Bytes.hx#L4520>)


## function exampleTrimSpace


```haxe
function exampleTrimSpace():Void
```





[\(view code\)](<./Bytes.hx#L4507>)


## function exampleTrimSuffix


```haxe
function exampleTrimSuffix():Void
```





[\(view code\)](<./Bytes.hx#L4510>)


## function testBasicOperations


```haxe
function testBasicOperations(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L1420>)


## function testBufferGrowNegative


```haxe
function testBufferGrowNegative(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3419>)


## function testBufferGrowth


```haxe
function testBufferGrowth(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Tests that we occasionally compact. Issue 5154.  



[\(view code\)](<./Bytes.hx#L2012>)


## function testBufferTruncateNegative


```haxe
function testBufferTruncateNegative(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3460>)


## function testBufferTruncateOutOfRange


```haxe
function testBufferTruncateOutOfRange(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3501>)


## function testCapWithPreallocatedSlice


```haxe
function testCapWithPreallocatedSlice(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L1549>)


## function testCapWithSliceAndWrittenData


```haxe
function testCapWithSliceAndWrittenData(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L1556>)


## function testClone


```haxe
function testClone(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3950>)


## function testCompare


```haxe
function testCompare(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3968>)


## function testCompareBytes


```haxe
function testCompareBytes(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3994>)


## function testCompareIdenticalSlice


```haxe
function testCompareIdenticalSlice(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3985>)


## function testContains


```haxe
function testContains(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3543>)


## function testContainsAny


```haxe
function testContainsAny(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3553>)


## function testContainsRune


```haxe
function testContainsRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3560>)


## function testCountByte


```haxe
function testCountByte(_t:stdgo.Ref<stdgo.testing.T>):Void
```


test count of a single byte across page offsets  



[\(view code\)](<./Bytes.hx#L2487>)


## function testCountByteNoMatch


```haxe
function testCountByteNoMatch(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Make sure we don't count bytes outside our window  



[\(view code\)](<./Bytes.hx#L2557>)


## function testCut


```haxe
function testCut(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3389>)


## function testCutPrefix


```haxe
function testCutPrefix(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3399>)


## function testCutSuffix


```haxe
function testCutSuffix(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3409>)


## function testEmptyReaderConcurrent


```haxe
function testEmptyReaderConcurrent(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L4653>)


## function testEndianBaseCompare


```haxe
function testEndianBaseCompare(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L4058>)


## function testEqual


```haxe
function testEqual(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L2148>)


## function testEqualExhaustive


```haxe
function testEqualExhaustive(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L2161>)


## function testEqualFold


```haxe
function testEqualFold(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3373>)


## function testFields


```haxe
function testFields(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L2911>)


## function testFieldsFunc


```haxe
function testFieldsFunc(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L2937>)


## function testGrow


```haxe
function testGrow(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L1872>)


## function testGrowOverflow


```haxe
function testGrowOverflow(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L1900>)


## function testIndex


```haxe
function testIndex(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L2275>)


## function testIndexAny


```haxe
function testIndexAny(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L2281>)


## function testIndexByte


```haxe
function testIndexByte(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L2287>)


## function testIndexByteBig


```haxe
function testIndexByteBig(_t:stdgo.Ref<stdgo.testing.T>):Void
```


test a larger buffer with different sizes and alignments  



[\(view code\)](<./Bytes.hx#L2316>)


## function testIndexByteSmall


```haxe
function testIndexByteSmall(_t:stdgo.Ref<stdgo.testing.T>):Void
```


test a small index across all page offsets  



[\(view code\)](<./Bytes.hx#L2379>)


## function testIndexFunc


```haxe
function testIndexFunc(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3316>)


## function testIndexRune


```haxe
function testIndexRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L2434>)


## function testLargeByteReads


```haxe
function testLargeByteReads(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L1518>)


## function testLargeByteWrites


```haxe
function testLargeByteWrites(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L1492>)


## function testLargeStringReads


```haxe
function testLargeStringReads(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L1507>)


## function testLargeStringWrites


```haxe
function testLargeStringWrites(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L1477>)


## function testLastIndex


```haxe
function testLastIndex(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L2278>)


## function testLastIndexAny


```haxe
function testLastIndexAny(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L2284>)


## function testLastIndexByte


```haxe
function testLastIndexByte(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L2304>)


## function testMap


```haxe
function testMap(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3012>)


## function testMixedReadsAndWrites


```haxe
function testMixedReadsAndWrites(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L1529>)


## function testNewBuffer


```haxe
function testNewBuffer(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L1393>)


## function testNewBufferString


```haxe
function testNewBufferString(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L1397>)


## function testNext


```haxe
function testNext(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L1773>)


## function testNil


```haxe
function testNil(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L1564>)


## function testNotEqual


```haxe
function testNotEqual(_t:stdgo.Ref<stdgo.testing.T>):Void
```


make sure Equal returns false for minimally different strings. The data  
is all zeros except for a single one in one location.  



[\(view code\)](<./Bytes.hx#L2201>)


## function testReadAfterBigSeek


```haxe
function testReadAfterBigSeek(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L4582>)


## function testReadBytes


```haxe
function testReadBytes(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L1810>)


## function testReadEmptyAtEOF


```haxe
function testReadEmptyAtEOF(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Was a bug: used to give EOF reading empty slice at EOF.  



[\(view code\)](<./Bytes.hx#L1945>)


## function testReadFrom


```haxe
function testReadFrom(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L1570>)


## function testReadFromNegativeReader


```haxe
function testReadFromNegativeReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L1632>)


## function testReadFromPanicReader


```haxe
function testReadFromPanicReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Make sure that an empty Buffer remains empty when  
it is "grown" before a Read that panics  



[\(view code\)](<./Bytes.hx#L1586>)


## function testReadString


```haxe
function testReadString(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L1833>)


## function testReader


```haxe
function testReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L4543>)


## function testReaderAt


```haxe
function testReaderAt(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L4597>)


## function testReaderAtConcurrent


```haxe
function testReaderAtConcurrent(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L4612>)


## function testReaderCopyNothing


```haxe
function testReaderCopyNothing(_t:stdgo.Ref<stdgo.testing.T>):Void
```


verify that copying from an empty reader always has the same results,  
regardless of the presence of a WriteTo method.  



[\(view code\)](<./Bytes.hx#L4881>)


## function testReaderDoubleUnreadRune


```haxe
function testReaderDoubleUnreadRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L4803>)


## function testReaderLen


```haxe
function testReaderLen(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L4753>)


## function testReaderLenSize


```haxe
function testReaderLenSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```


tests that Len is affected by reads, but Size is not.  



[\(view code\)](<./Bytes.hx#L4904>)


## function testReaderReset


```haxe
function testReaderReset(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L4916>)


## function testReaderWriteTo


```haxe
function testReaderWriteTo(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L4723>)


## function testReaderZero


```haxe
function testReaderZero(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L4943>)


## function testRepeat


```haxe
function testRepeat(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3109>)


## function testRepeatCatchesOverflow


```haxe
function testRepeatCatchesOverflow(_t:stdgo.Ref<stdgo.testing.T>):Void
```


See Issue golang.org/issue/16237  



[\(view code\)](<./Bytes.hx#L3179>)


## function testReplace


```haxe
function testReplace(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3328>)


## function testRuneIO


```haxe
function testRuneIO(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L1695>)


## function testRunes


```haxe
function testRunes(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3215>)


## function testSplit


```haxe
function testSplit(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L2842>)


## function testSplitAfter


```haxe
function testSplitAfter(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L2881>)


## function testTitle


```haxe
function testTitle(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3353>)


## function testToLower


```haxe
function testToLower(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3063>)


## function testToTitle


```haxe
function testToTitle(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3363>)


## function testToUpper


```haxe
function testToUpper(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3060>)


## function testToValidUTF8


```haxe
function testToValidUTF8(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3098>)


## function testTrim


```haxe
function testTrim(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3231>)


## function testTrimFunc


```haxe
function testTrimFunc(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3299>)


## function testTrimSpace


```haxe
function testTrimSpace(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3106>)


## function testUnreadByte


```haxe
function testUnreadByte(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L1956>)


## function testUnreadRuneError


```haxe
function testUnreadRuneError(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L4787>)


## function testWriteInvalidRune


```haxe
function testWriteInvalidRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L1766>)


## function testWriteTo


```haxe
function testWriteTo(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L1683>)


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





[\(view code\)](<./Bytes_test.hx#L792>)


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





[\(view code\)](<./Bytes_test.hx#L831>)


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





[\(view code\)](<./Bytes_test.hx#L988>)


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





[\(view code\)](<./Bytes_test.hx#L867>)


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





[\(view code\)](<./Bytes_test.hx#L1010>)


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





[\(view code\)](<./Bytes_test.hx#L886>)


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





[\(view code\)](<./Bytes_test.hx#L812>)


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





[\(view code\)](<./Bytes_test.hx#L849>)


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





[\(view code\)](<./Bytes_test.hx#L1030>)


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





[\(view code\)](<./Bytes_test.hx#L966>)


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





[\(view code\)](<./Bytes_test.hx#L927>)


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





[\(view code\)](<./Bytes_test.hx#L906>)


