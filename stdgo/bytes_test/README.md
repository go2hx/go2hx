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

- [class T\_justReader\_testReaderCopyNothing\_1](<#class-t_justreader_testreadercopynothing_1>)

  - [`function new(?reader:Null<stdgo.io.Reader>):Void`](<#t_justreader_testreadercopynothing_1-function-new>)

  - [`function read(__0:stdgo.Slice<stdgo.GoUInt8>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_justreader_testreadercopynothing_1-function-read>)

  - [`function read( __0:stdgo.Slice<stdgo.GoUInt8>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_justreader_testreadercopynothing_1-function-read>)

- [class T\_justWriter\_testReaderCopyNothing\_2](<#class-t_justwriter_testreadercopynothing_2>)

  - [`function new(?writer:Null<stdgo.io.Writer>):Void`](<#t_justwriter_testreadercopynothing_2-function-new>)

  - [`function write(__0:stdgo.Slice<stdgo.GoUInt8>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_justwriter_testreadercopynothing_2-function-write>)

  - [`function write( __0:stdgo.Slice<stdgo.GoUInt8>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_justwriter_testreadercopynothing_2-function-write>)

- [class T\_nErr\_testReaderCopyNothing\_0](<#class-t_nerr_testreadercopynothing_0>)

  - [`function new(?_n:stdgo.GoInt64, ?_err:Null<stdgo.Error>):Void`](<#t_nerr_testreadercopynothing_0-function-new>)

- [class T\_negativeReader](<#class-t_negativereader>)

  - [`function new():Void`](<#t_negativereader-function-new>)

  - [`function read( _0:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_negativereader-function-read>)

- [class T\_panicReader](<#class-t_panicreader>)

  - [`function new(?_panic:Bool):Void`](<#t_panicreader-function-new>)

  - [`function read( _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_panicreader-function-read>)

- [class T\_predicate](<#class-t_predicate>)

  - [`function _f()`](<#t_predicate-function-_f>)

  - [`function new(?_f:(), ?_name:stdgo.GoString):Void`](<#t_predicate-function-new>)

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



[\(view code\)](<./Bytes.hx#L2087>)


## function benchmarkBufferNotEmptyWriteRead


```haxe
function benchmarkBufferNotEmptyWriteRead(_b:stdgo.Ref<stdgo.testing.B>):Void
```


From Issue 5154.  



[\(view code\)](<./Bytes.hx#L2067>)


## function benchmarkBufferWriteBlock


```haxe
function benchmarkBufferWriteBlock(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L2107>)


## function benchmarkBytesCompare


```haxe
function benchmarkBytesCompare(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3774>)


## function benchmarkCompareBytesBig


```haxe
function benchmarkCompareBytesBig(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L4187>)


## function benchmarkCompareBytesBigIdentical


```haxe
function benchmarkCompareBytesBigIdentical(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L4205>)


## function benchmarkCompareBytesBigUnaligned


```haxe
function benchmarkCompareBytesBigUnaligned(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L4177>)


## function benchmarkCompareBytesDifferentLength


```haxe
function benchmarkCompareBytesDifferentLength(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L4147>)


## function benchmarkCompareBytesEmpty


```haxe
function benchmarkCompareBytesEmpty(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L4111>)


## function benchmarkCompareBytesEqual


```haxe
function benchmarkCompareBytesEqual(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L4087>)


## function benchmarkCompareBytesIdentical


```haxe
function benchmarkCompareBytesIdentical(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L4123>)


## function benchmarkCompareBytesSameLength


```haxe
function benchmarkCompareBytesSameLength(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L4135>)


## function benchmarkCompareBytesToNil


```haxe
function benchmarkCompareBytesToNil(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L4099>)


## function benchmarkCount


```haxe
function benchmarkCount(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L2777>)


## function benchmarkCountEasy


```haxe
function benchmarkCountEasy(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L2793>)


## function benchmarkCountHard1


```haxe
function benchmarkCountHard1(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3689>)


## function benchmarkCountHard2


```haxe
function benchmarkCountHard2(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3692>)


## function benchmarkCountHard3


```haxe
function benchmarkCountHard3(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3695>)


## function benchmarkCountSingle


```haxe
function benchmarkCountSingle(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L2811>)


## function benchmarkEqual


```haxe
function benchmarkEqual(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L2691>)


## function benchmarkFields


```haxe
function benchmarkFields(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3560>)


## function benchmarkFieldsFunc


```haxe
function benchmarkFieldsFunc(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3582>)


## function benchmarkIndex


```haxe
function benchmarkIndex(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L2743>)


## function benchmarkIndexAnyASCII


```haxe
function benchmarkIndexAnyASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3804>)


## function benchmarkIndexAnyUTF8


```haxe
function benchmarkIndexAnyUTF8(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3826>)


## function benchmarkIndexByte


```haxe
function benchmarkIndexByte(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L2629>)


## function benchmarkIndexBytePortable


```haxe
function benchmarkIndexBytePortable(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L2632>)


## function benchmarkIndexEasy


```haxe
function benchmarkIndexEasy(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L2759>)


## function benchmarkIndexHard1


```haxe
function benchmarkIndexHard1(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3668>)


## function benchmarkIndexHard2


```haxe
function benchmarkIndexHard2(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3671>)


## function benchmarkIndexHard3


```haxe
function benchmarkIndexHard3(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3674>)


## function benchmarkIndexHard4


```haxe
function benchmarkIndexHard4(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3677>)


## function benchmarkIndexPeriodic


```haxe
function benchmarkIndexPeriodic(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3923>)


## function benchmarkIndexRune


```haxe
function benchmarkIndexRune(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L2651>)


## function benchmarkIndexRuneASCII


```haxe
function benchmarkIndexRuneASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L2654>)


## function benchmarkLastIndexAnyASCII


```haxe
function benchmarkLastIndexAnyASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3848>)


## function benchmarkLastIndexAnyUTF8


```haxe
function benchmarkLastIndexAnyUTF8(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3870>)


## function benchmarkLastIndexHard1


```haxe
function benchmarkLastIndexHard1(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3680>)


## function benchmarkLastIndexHard2


```haxe
function benchmarkLastIndexHard2(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3683>)


## function benchmarkLastIndexHard3


```haxe
function benchmarkLastIndexHard3(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3686>)


## function benchmarkReadString


```haxe
function benchmarkReadString(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L1854>)


## function benchmarkRepeat


```haxe
function benchmarkRepeat(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3742>)


## function benchmarkRepeatLarge


```haxe
function benchmarkRepeatLarge(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3750>)


## function benchmarkSplitEmptySeparator


```haxe
function benchmarkSplitEmptySeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3698>)


## function benchmarkSplitMultiByteSeparator


```haxe
function benchmarkSplitMultiByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3715>)


## function benchmarkSplitNMultiByteSeparator


```haxe
function benchmarkSplitNMultiByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3733>)


## function benchmarkSplitNSingleByteSeparator


```haxe
function benchmarkSplitNSingleByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3724>)


## function benchmarkSplitSingleByteSeparator


```haxe
function benchmarkSplitSingleByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3706>)


## function benchmarkToLower


```haxe
function benchmarkToLower(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3079>)


## function benchmarkToUpper


```haxe
function benchmarkToUpper(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3063>)


## function benchmarkToValidUTF8


```haxe
function benchmarkToValidUTF8(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3617>)


## function benchmarkTrimASCII


```haxe
function benchmarkTrimASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3892>)


## function benchmarkTrimByte


```haxe
function benchmarkTrimByte(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3914>)


## function benchmarkTrimSpace


```haxe
function benchmarkTrimSpace(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L3604>)


## function benchmarkWriteByte


```haxe
function benchmarkWriteByte(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L2029>)


## function benchmarkWriteRune


```haxe
function benchmarkWriteRune(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bytes.hx#L2046>)


## function exampleBuffer


```haxe
function exampleBuffer():Void
```





[\(view code\)](<./Bytes.hx#L4223>)


## function exampleBuffer\_Bytes


```haxe
function exampleBuffer_Bytes():Void
```





[\(view code\)](<./Bytes.hx#L4234>)


## function exampleBuffer\_Cap


```haxe
function exampleBuffer_Cap():Void
```





[\(view code\)](<./Bytes.hx#L4252>)


## function exampleBuffer\_Grow


```haxe
function exampleBuffer_Grow():Void
```





[\(view code\)](<./Bytes.hx#L4258>)


## function exampleBuffer\_Len


```haxe
function exampleBuffer_Len():Void
```





[\(view code\)](<./Bytes.hx#L4265>)


## function exampleBuffer\_Next


```haxe
function exampleBuffer_Next():Void
```





[\(view code\)](<./Bytes.hx#L4271>)


## function exampleBuffer\_Read


```haxe
function exampleBuffer_Read():Void
```





[\(view code\)](<./Bytes.hx#L4279>)


## function exampleBuffer\_ReadByte


```haxe
function exampleBuffer_ReadByte():Void
```





[\(view code\)](<./Bytes.hx#L4292>)


## function exampleBuffer\_reader


```haxe
function exampleBuffer_reader():Void
```





[\(view code\)](<./Bytes.hx#L4229>)


## function exampleCompare


```haxe
function exampleCompare():Void
```





[\(view code\)](<./Bytes.hx#L4303>)


## function exampleCompare\_search


```haxe
function exampleCompare_search():Void
```





[\(view code\)](<./Bytes.hx#L4312>)


## function exampleContains


```haxe
function exampleContains():Void
```





[\(view code\)](<./Bytes.hx#L4320>)


## function exampleContainsAny


```haxe
function exampleContainsAny():Void
```





[\(view code\)](<./Bytes.hx#L4326>)


## function exampleContainsRune


```haxe
function exampleContainsRune():Void
```





[\(view code\)](<./Bytes.hx#L4332>)


## function exampleCount


```haxe
function exampleCount():Void
```





[\(view code\)](<./Bytes.hx#L4339>)


## function exampleCut


```haxe
function exampleCut():Void
```





[\(view code\)](<./Bytes.hx#L4343>)


## function exampleEqual


```haxe
function exampleEqual():Void
```





[\(view code\)](<./Bytes.hx#L4353>)


## function exampleEqualFold


```haxe
function exampleEqualFold():Void
```





[\(view code\)](<./Bytes.hx#L4357>)


## function exampleFields


```haxe
function exampleFields():Void
```





[\(view code\)](<./Bytes.hx#L4360>)


## function exampleFieldsFunc


```haxe
function exampleFieldsFunc():Void
```





[\(view code\)](<./Bytes.hx#L4363>)


## function exampleHasPrefix


```haxe
function exampleHasPrefix():Void
```





[\(view code\)](<./Bytes.hx#L4369>)


## function exampleHasSuffix


```haxe
function exampleHasSuffix():Void
```





[\(view code\)](<./Bytes.hx#L4374>)


## function exampleIndex


```haxe
function exampleIndex():Void
```





[\(view code\)](<./Bytes.hx#L4380>)


## function exampleIndexAny


```haxe
function exampleIndexAny():Void
```





[\(view code\)](<./Bytes.hx#L4395>)


## function exampleIndexByte


```haxe
function exampleIndexByte():Void
```





[\(view code\)](<./Bytes.hx#L4384>)


## function exampleIndexFunc


```haxe
function exampleIndexFunc():Void
```





[\(view code\)](<./Bytes.hx#L4388>)


## function exampleIndexRune


```haxe
function exampleIndexRune():Void
```





[\(view code\)](<./Bytes.hx#L4399>)


## function exampleJoin


```haxe
function exampleJoin():Void
```





[\(view code\)](<./Bytes.hx#L4403>)


## function exampleLastIndex


```haxe
function exampleLastIndex():Void
```





[\(view code\)](<./Bytes.hx#L4407>)


## function exampleLastIndexAny


```haxe
function exampleLastIndexAny():Void
```





[\(view code\)](<./Bytes.hx#L4412>)


## function exampleLastIndexByte


```haxe
function exampleLastIndexByte():Void
```





[\(view code\)](<./Bytes.hx#L4417>)


## function exampleLastIndexFunc


```haxe
function exampleLastIndexFunc():Void
```





[\(view code\)](<./Bytes.hx#L4422>)


## function exampleReader\_Len


```haxe
function exampleReader_Len():Void
```





[\(view code\)](<./Bytes.hx#L4427>)


## function exampleRepeat


```haxe
function exampleRepeat():Void
```





[\(view code\)](<./Bytes.hx#L4431>)


## function exampleReplace


```haxe
function exampleReplace():Void
```





[\(view code\)](<./Bytes.hx#L4434>)


## function exampleReplaceAll


```haxe
function exampleReplaceAll():Void
```





[\(view code\)](<./Bytes.hx#L4438>)


## function exampleRunes


```haxe
function exampleRunes():Void
```





[\(view code\)](<./Bytes.hx#L4441>)


## function exampleSplit


```haxe
function exampleSplit():Void
```





[\(view code\)](<./Bytes.hx#L4447>)


## function exampleSplitAfter


```haxe
function exampleSplitAfter():Void
```





[\(view code\)](<./Bytes.hx#L4458>)


## function exampleSplitAfterN


```haxe
function exampleSplitAfterN():Void
```





[\(view code\)](<./Bytes.hx#L4461>)


## function exampleSplitN


```haxe
function exampleSplitN():Void
```





[\(view code\)](<./Bytes.hx#L4453>)


## function exampleTitle


```haxe
function exampleTitle():Void
```





[\(view code\)](<./Bytes.hx#L4464>)


## function exampleToLower


```haxe
function exampleToLower():Void
```





[\(view code\)](<./Bytes.hx#L4518>)


## function exampleToLowerSpecial


```haxe
function exampleToLowerSpecial():Void
```





[\(view code\)](<./Bytes.hx#L4521>)


## function exampleToTitle


```haxe
function exampleToTitle():Void
```





[\(view code\)](<./Bytes.hx#L4467>)


## function exampleToTitleSpecial


```haxe
function exampleToTitleSpecial():Void
```





[\(view code\)](<./Bytes.hx#L4471>)


## function exampleToUpper


```haxe
function exampleToUpper():Void
```





[\(view code\)](<./Bytes.hx#L4527>)


## function exampleToUpperSpecial


```haxe
function exampleToUpperSpecial():Void
```





[\(view code\)](<./Bytes.hx#L4530>)


## function exampleTrim


```haxe
function exampleTrim():Void
```





[\(view code\)](<./Bytes.hx#L4477>)


## function exampleTrimFunc


```haxe
function exampleTrimFunc():Void
```





[\(view code\)](<./Bytes.hx#L4480>)


## function exampleTrimLeft


```haxe
function exampleTrimLeft():Void
```





[\(view code\)](<./Bytes.hx#L4486>)


## function exampleTrimLeftFunc


```haxe
function exampleTrimLeftFunc():Void
```





[\(view code\)](<./Bytes.hx#L4489>)


## function exampleTrimPrefix


```haxe
function exampleTrimPrefix():Void
```





[\(view code\)](<./Bytes.hx#L4494>)


## function exampleTrimRight


```haxe
function exampleTrimRight():Void
```





[\(view code\)](<./Bytes.hx#L4510>)


## function exampleTrimRightFunc


```haxe
function exampleTrimRightFunc():Void
```





[\(view code\)](<./Bytes.hx#L4513>)


## function exampleTrimSpace


```haxe
function exampleTrimSpace():Void
```





[\(view code\)](<./Bytes.hx#L4500>)


## function exampleTrimSuffix


```haxe
function exampleTrimSuffix():Void
```





[\(view code\)](<./Bytes.hx#L4503>)


## function testBasicOperations


```haxe
function testBasicOperations(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L1420>)


## function testBufferGrowNegative


```haxe
function testBufferGrowNegative(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3415>)


## function testBufferGrowth


```haxe
function testBufferGrowth(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Tests that we occasionally compact. Issue 5154.  



[\(view code\)](<./Bytes.hx#L2009>)


## function testBufferTruncateNegative


```haxe
function testBufferTruncateNegative(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3455>)


## function testBufferTruncateOutOfRange


```haxe
function testBufferTruncateOutOfRange(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3495>)


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





[\(view code\)](<./Bytes.hx#L3943>)


## function testCompare


```haxe
function testCompare(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3961>)


## function testCompareBytes


```haxe
function testCompareBytes(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3987>)


## function testCompareIdenticalSlice


```haxe
function testCompareIdenticalSlice(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3978>)


## function testContains


```haxe
function testContains(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3536>)


## function testContainsAny


```haxe
function testContainsAny(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3546>)


## function testContainsRune


```haxe
function testContainsRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3553>)


## function testCountByte


```haxe
function testCountByte(_t:stdgo.Ref<stdgo.testing.T>):Void
```


test count of a single byte across page offsets  



[\(view code\)](<./Bytes.hx#L2484>)


## function testCountByteNoMatch


```haxe
function testCountByteNoMatch(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Make sure we don't count bytes outside our window  



[\(view code\)](<./Bytes.hx#L2554>)


## function testCut


```haxe
function testCut(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3385>)


## function testCutPrefix


```haxe
function testCutPrefix(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3395>)


## function testCutSuffix


```haxe
function testCutSuffix(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3405>)


## function testEmptyReaderConcurrent


```haxe
function testEmptyReaderConcurrent(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L4645>)


## function testEndianBaseCompare


```haxe
function testEndianBaseCompare(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L4051>)


## function testEqual


```haxe
function testEqual(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L2145>)


## function testEqualExhaustive


```haxe
function testEqualExhaustive(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L2158>)


## function testEqualFold


```haxe
function testEqualFold(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3369>)


## function testFields


```haxe
function testFields(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L2908>)


## function testFieldsFunc


```haxe
function testFieldsFunc(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L2934>)


## function testGrow


```haxe
function testGrow(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L1870>)


## function testGrowOverflow


```haxe
function testGrowOverflow(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L1898>)


## function testIndex


```haxe
function testIndex(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L2272>)


## function testIndexAny


```haxe
function testIndexAny(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L2278>)


## function testIndexByte


```haxe
function testIndexByte(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L2284>)


## function testIndexByteBig


```haxe
function testIndexByteBig(_t:stdgo.Ref<stdgo.testing.T>):Void
```


test a larger buffer with different sizes and alignments  



[\(view code\)](<./Bytes.hx#L2313>)


## function testIndexByteSmall


```haxe
function testIndexByteSmall(_t:stdgo.Ref<stdgo.testing.T>):Void
```


test a small index across all page offsets  



[\(view code\)](<./Bytes.hx#L2376>)


## function testIndexFunc


```haxe
function testIndexFunc(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3312>)


## function testIndexRune


```haxe
function testIndexRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L2431>)


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





[\(view code\)](<./Bytes.hx#L2275>)


## function testLastIndexAny


```haxe
function testLastIndexAny(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L2281>)


## function testLastIndexByte


```haxe
function testLastIndexByte(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L2301>)


## function testMap


```haxe
function testMap(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3009>)


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





[\(view code\)](<./Bytes.hx#L1771>)


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



[\(view code\)](<./Bytes.hx#L2198>)


## function testReadAfterBigSeek


```haxe
function testReadAfterBigSeek(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L4575>)


## function testReadBytes


```haxe
function testReadBytes(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L1808>)


## function testReadEmptyAtEOF


```haxe
function testReadEmptyAtEOF(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Was a bug: used to give EOF reading empty slice at EOF.  



[\(view code\)](<./Bytes.hx#L1942>)


## function testReadFrom


```haxe
function testReadFrom(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L1570>)


## function testReadFromNegativeReader


```haxe
function testReadFromNegativeReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L1631>)


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





[\(view code\)](<./Bytes.hx#L1831>)


## function testReader


```haxe
function testReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L4536>)


## function testReaderAt


```haxe
function testReaderAt(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L4590>)


## function testReaderAtConcurrent


```haxe
function testReaderAtConcurrent(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L4605>)


## function testReaderCopyNothing


```haxe
function testReaderCopyNothing(_t:stdgo.Ref<stdgo.testing.T>):Void
```


verify that copying from an empty reader always has the same results,  
regardless of the presence of a WriteTo method.  



[\(view code\)](<./Bytes.hx#L4871>)


## function testReaderDoubleUnreadRune


```haxe
function testReaderDoubleUnreadRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L4793>)


## function testReaderLen


```haxe
function testReaderLen(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L4743>)


## function testReaderLenSize


```haxe
function testReaderLenSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```


tests that Len is affected by reads, but Size is not.  



[\(view code\)](<./Bytes.hx#L4894>)


## function testReaderReset


```haxe
function testReaderReset(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L4906>)


## function testReaderWriteTo


```haxe
function testReaderWriteTo(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L4713>)


## function testReaderZero


```haxe
function testReaderZero(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L4933>)


## function testRepeat


```haxe
function testRepeat(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3106>)


## function testRepeatCatchesOverflow


```haxe
function testRepeatCatchesOverflow(_t:stdgo.Ref<stdgo.testing.T>):Void
```


See Issue golang.org/issue/16237  



[\(view code\)](<./Bytes.hx#L3175>)


## function testReplace


```haxe
function testReplace(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3324>)


## function testRuneIO


```haxe
function testRuneIO(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L1693>)


## function testRunes


```haxe
function testRunes(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3211>)


## function testSplit


```haxe
function testSplit(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L2839>)


## function testSplitAfter


```haxe
function testSplitAfter(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L2878>)


## function testTitle


```haxe
function testTitle(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3349>)


## function testToLower


```haxe
function testToLower(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3060>)


## function testToTitle


```haxe
function testToTitle(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3359>)


## function testToUpper


```haxe
function testToUpper(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3057>)


## function testToValidUTF8


```haxe
function testToValidUTF8(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3095>)


## function testTrim


```haxe
function testTrim(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3227>)


## function testTrimFunc


```haxe
function testTrimFunc(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3295>)


## function testTrimSpace


```haxe
function testTrimSpace(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L3103>)


## function testUnreadByte


```haxe
function testUnreadByte(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L1953>)


## function testUnreadRuneError


```haxe
function testUnreadRuneError(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L4777>)


## function testWriteInvalidRune


```haxe
function testWriteInvalidRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L1764>)


## function testWriteTo


```haxe
function testWriteTo(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bytes.hx#L1681>)


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


## class T\_justReader\_testReaderCopyNothing\_1





```haxe
var reader:stdgo.io.Reader
```


### T\_justReader\_testReaderCopyNothing\_1 function new


```haxe
function new(?reader:Null<stdgo.io.Reader>):Void
```





[\(view code\)](<./Bytes_test.hx#L4839>)


### T\_justReader\_testReaderCopyNothing\_1 function read


```haxe
function read(__0:stdgo.Slice<stdgo.GoUInt8>):{_1:stdgo.Error, _0:stdgo.GoInt}
```





[\(view code\)](<./Bytes_test.hx#L4844>)


### T\_justReader\_testReaderCopyNothing\_1 function read


```haxe
function read( __0:stdgo.Slice<stdgo.GoUInt8>):{_1:stdgo.Error, _0:stdgo.GoInt}
```





[\(view code\)](<./Bytes_test.hx#L5052>)


## class T\_justWriter\_testReaderCopyNothing\_2





```haxe
var writer:stdgo.io.Writer
```


### T\_justWriter\_testReaderCopyNothing\_2 function new


```haxe
function new(?writer:Null<stdgo.io.Writer>):Void
```





[\(view code\)](<./Bytes_test.hx#L4857>)


### T\_justWriter\_testReaderCopyNothing\_2 function write


```haxe
function write(__0:stdgo.Slice<stdgo.GoUInt8>):{_1:stdgo.Error, _0:stdgo.GoInt}
```





[\(view code\)](<./Bytes_test.hx#L4862>)


### T\_justWriter\_testReaderCopyNothing\_2 function write


```haxe
function write( __0:stdgo.Slice<stdgo.GoUInt8>):{_1:stdgo.Error, _0:stdgo.GoInt}
```





[\(view code\)](<./Bytes_test.hx#L5067>)


## class T\_nErr\_testReaderCopyNothing\_0





```haxe
var _err:stdgo.Error
```


```haxe
var _n:stdgo.GoInt64
```


### T\_nErr\_testReaderCopyNothing\_0 function new


```haxe
function new(?_n:stdgo.GoInt64, ?_err:Null<stdgo.Error>):Void
```





[\(view code\)](<./Bytes_test.hx#L4822>)


## class T\_negativeReader





### T\_negativeReader function new


```haxe
function new():Void
```





[\(view code\)](<./Bytes_test.hx#L762>)


### T\_negativeReader function read


```haxe
function read( _0:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```





[\(view code\)](<./Bytes_test.hx#L5015>)


## class T\_panicReader





```haxe
var _panic:Bool
```


### T\_panicReader function new


```haxe
function new(?_panic:Bool):Void
```





[\(view code\)](<./Bytes_test.hx#L775>)


### T\_panicReader function read


```haxe
function read( _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```





[\(view code\)](<./Bytes_test.hx#L5032>)


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





[\(view code\)](<./Bytes_test.hx#L946>)


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


