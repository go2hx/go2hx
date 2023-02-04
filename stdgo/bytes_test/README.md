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

- [`function testCompare(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcompare>)

- [`function testCompareBytes(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcomparebytes>)

- [`function testCompareIdenticalSlice(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcompareidenticalslice>)

- [`function testContains(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcontains>)

- [`function testContainsAny(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcontainsany>)

- [`function testContainsRune(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcontainsrune>)

- [`function testCountByte(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcountbyte>)

- [`function testCountByteNoMatch(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcountbytenomatch>)

- [`function testCut(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcut>)

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

  - [`function new(?_in:stdgo.GoString, ?_f:stdgo.bytes_test._Bytes_test.T_predicate, ?_first:Null<stdgo.GoInt>, ?_last:Null<stdgo.GoInt>):Void`](<#indexfunctest-function-new>)

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

- [class T\_\_struct\_0\_static\_extension](<#class-t__struct_0_static_extension>)

- [class T\_\_struct\_10\_static\_extension](<#class-t__struct_10_static_extension>)

- [class T\_\_struct\_11\_static\_extension](<#class-t__struct_11_static_extension>)

- [class T\_\_struct\_12\_static\_extension](<#class-t__struct_12_static_extension>)

- [class T\_\_struct\_13\_static\_extension](<#class-t__struct_13_static_extension>)

- [class T\_\_struct\_14\_static\_extension](<#class-t__struct_14_static_extension>)

- [class T\_\_struct\_15\_static\_extension](<#class-t__struct_15_static_extension>)

- [class T\_\_struct\_1\_static\_extension](<#class-t__struct_1_static_extension>)

- [class T\_\_struct\_2\_static\_extension](<#class-t__struct_2_static_extension>)

- [class T\_\_struct\_3\_static\_extension](<#class-t__struct_3_static_extension>)

- [class T\_\_struct\_4\_static\_extension](<#class-t__struct_4_static_extension>)

- [class T\_\_struct\_5\_static\_extension](<#class-t__struct_5_static_extension>)

- [class T\_\_struct\_6\_static\_extension](<#class-t__struct_6_static_extension>)

- [class T\_\_struct\_7\_static\_extension](<#class-t__struct_7_static_extension>)

- [class T\_\_struct\_8\_static\_extension](<#class-t__struct_8_static_extension>)

- [class T\_\_struct\_9\_static\_extension](<#class-t__struct_9_static_extension>)

- [class T\_justReader\_testReaderCopyNothing\_1\_static\_extension](<#class-t_justreader_testreadercopynothing_1_static_extension>)

  - [`function read(__self__:stdgo.bytes_test._Bytes_test.T_justReader_testReaderCopyNothing_1, __0:stdgo.Slice<stdgo.GoUInt8>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_justreader_testreadercopynothing_1_static_extension-function-read>)

- [class T\_justWriter\_testReaderCopyNothing\_2\_static\_extension](<#class-t_justwriter_testreadercopynothing_2_static_extension>)

  - [`function write(__self__:stdgo.bytes_test._Bytes_test.T_justWriter_testReaderCopyNothing_2, __0:stdgo.Slice<stdgo.GoUInt8>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_justwriter_testreadercopynothing_2_static_extension-function-write>)

- [class T\_negativeReader\_static\_extension](<#class-t_negativereader_static_extension>)

  - [`function read(_r:stdgo.Ref<stdgo.bytes_test._Bytes_test.T_negativeReader>, _0:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_negativereader_static_extension-function-read>)

- [class T\_panicReader\_static\_extension](<#class-t_panicreader_static_extension>)

  - [`function read(_r:stdgo.bytes_test._Bytes_test.T_panicReader, _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_panicreader_static_extension-function-read>)

- [class TitleTest](<#class-titletest>)

  - [`function new(?_in:stdgo.GoString, ?_out:stdgo.GoString):Void`](<#titletest-function-new>)

- [class TrimFuncTest](<#class-trimfunctest>)

  - [`function new(?_f:stdgo.bytes_test._Bytes_test.T_predicate, ?_in:stdgo.GoString, ?_trimOut:stdgo.Slice<stdgo.GoUInt8>, ?_leftOut:stdgo.Slice<stdgo.GoUInt8>, ?_rightOut:stdgo.Slice<stdgo.GoUInt8>):Void`](<#trimfunctest-function-new>)

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
var containsAnyTests:stdgo.Slice<stdgo.bytes_test._Bytes_test.T__struct_9>
```


```haxe
var containsRuneTests:stdgo.Slice<stdgo.bytes_test._Bytes_test.T__struct_10>
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
var unreadRuneErrorTests:stdgo.Slice<stdgo.bytes_test._Bytes_test.T__struct_15>
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


[\(view code\)](<./Bytes.hx#L2438>)


## function benchmarkBufferNotEmptyWriteRead


```haxe
function benchmarkBufferNotEmptyWriteRead(_b:stdgo.Ref<stdgo.testing.B>):Void
```


From Issue 5154. 


[\(view code\)](<./Bytes.hx#L2417>)


## function benchmarkBufferWriteBlock


```haxe
function benchmarkBufferWriteBlock(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L2459>)


## function benchmarkBytesCompare


```haxe
function benchmarkBytesCompare(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4236>)


## function benchmarkCompareBytesBig


```haxe
function benchmarkCompareBytesBig(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4647>)


## function benchmarkCompareBytesBigIdentical


```haxe
function benchmarkCompareBytesBigIdentical(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4666>)


## function benchmarkCompareBytesBigUnaligned


```haxe
function benchmarkCompareBytesBigUnaligned(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4628>)


## function benchmarkCompareBytesDifferentLength


```haxe
function benchmarkCompareBytesDifferentLength(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4615>)


## function benchmarkCompareBytesEmpty


```haxe
function benchmarkCompareBytesEmpty(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4576>)


## function benchmarkCompareBytesEqual


```haxe
function benchmarkCompareBytesEqual(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4550>)


## function benchmarkCompareBytesIdentical


```haxe
function benchmarkCompareBytesIdentical(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4589>)


## function benchmarkCompareBytesSameLength


```haxe
function benchmarkCompareBytesSameLength(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4602>)


## function benchmarkCompareBytesToNil


```haxe
function benchmarkCompareBytesToNil(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4563>)


## function benchmarkCount


```haxe
function benchmarkCount(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L3147>)


## function benchmarkCountEasy


```haxe
function benchmarkCountEasy(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L3164>)


## function benchmarkCountHard1


```haxe
function benchmarkCountHard1(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4166>)


## function benchmarkCountHard2


```haxe
function benchmarkCountHard2(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4170>)


## function benchmarkCountHard3


```haxe
function benchmarkCountHard3(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4174>)


## function benchmarkCountSingle


```haxe
function benchmarkCountSingle(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L3183>)


## function benchmarkEqual


```haxe
function benchmarkEqual(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L3068>)


## function benchmarkFields


```haxe
function benchmarkFields(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4015>)


## function benchmarkFieldsFunc


```haxe
function benchmarkFieldsFunc(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4038>)


## function benchmarkIndex


```haxe
function benchmarkIndex(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L3111>)


## function benchmarkIndexAnyASCII


```haxe
function benchmarkIndexAnyASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4267>)


## function benchmarkIndexAnyUTF8


```haxe
function benchmarkIndexAnyUTF8(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4291>)


## function benchmarkIndexByte


```haxe
function benchmarkIndexByte(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L2999>)


## function benchmarkIndexBytePortable


```haxe
function benchmarkIndexBytePortable(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L3003>)


## function benchmarkIndexEasy


```haxe
function benchmarkIndexEasy(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L3128>)


## function benchmarkIndexHard1


```haxe
function benchmarkIndexHard1(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4138>)


## function benchmarkIndexHard2


```haxe
function benchmarkIndexHard2(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4142>)


## function benchmarkIndexHard3


```haxe
function benchmarkIndexHard3(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4146>)


## function benchmarkIndexHard4


```haxe
function benchmarkIndexHard4(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4150>)


## function benchmarkIndexPeriodic


```haxe
function benchmarkIndexPeriodic(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4397>)


## function benchmarkIndexRune


```haxe
function benchmarkIndexRune(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L3024>)


## function benchmarkIndexRuneASCII


```haxe
function benchmarkIndexRuneASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L3028>)


## function benchmarkLastIndexAnyASCII


```haxe
function benchmarkLastIndexAnyASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4315>)


## function benchmarkLastIndexAnyUTF8


```haxe
function benchmarkLastIndexAnyUTF8(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4339>)


## function benchmarkLastIndexHard1


```haxe
function benchmarkLastIndexHard1(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4154>)


## function benchmarkLastIndexHard2


```haxe
function benchmarkLastIndexHard2(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4158>)


## function benchmarkLastIndexHard3


```haxe
function benchmarkLastIndexHard3(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4162>)


## function benchmarkReadString


```haxe
function benchmarkReadString(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L2179>)


## function benchmarkRepeat


```haxe
function benchmarkRepeat(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4227>)


## function benchmarkSplitEmptySeparator


```haxe
function benchmarkSplitEmptySeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4178>)


## function benchmarkSplitMultiByteSeparator


```haxe
function benchmarkSplitMultiByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4197>)


## function benchmarkSplitNMultiByteSeparator


```haxe
function benchmarkSplitNMultiByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4217>)


## function benchmarkSplitNSingleByteSeparator


```haxe
function benchmarkSplitNSingleByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4207>)


## function benchmarkSplitSingleByteSeparator


```haxe
function benchmarkSplitSingleByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4187>)


## function benchmarkToLower


```haxe
function benchmarkToLower(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L3480>)


## function benchmarkToUpper


```haxe
function benchmarkToUpper(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L3463>)


## function benchmarkToValidUTF8


```haxe
function benchmarkToValidUTF8(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4079>)


## function benchmarkTrimASCII


```haxe
function benchmarkTrimASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4363>)


## function benchmarkTrimByte


```haxe
function benchmarkTrimByte(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4387>)


## function benchmarkTrimSpace


```haxe
function benchmarkTrimSpace(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4061>)


## function benchmarkWriteByte


```haxe
function benchmarkWriteByte(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L2377>)


## function benchmarkWriteRune


```haxe
function benchmarkWriteRune(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L2395>)


## function exampleBuffer


```haxe
function exampleBuffer():Void
```


 


[\(view code\)](<./Bytes.hx#L4685>)


## function exampleBuffer\_Bytes


```haxe
function exampleBuffer_Bytes():Void
```


 


[\(view code\)](<./Bytes.hx#L4698>)


## function exampleBuffer\_Cap


```haxe
function exampleBuffer_Cap():Void
```


 


[\(view code\)](<./Bytes.hx#L4705>)


## function exampleBuffer\_Grow


```haxe
function exampleBuffer_Grow():Void
```


 


[\(view code\)](<./Bytes.hx#L4712>)


## function exampleBuffer\_Len


```haxe
function exampleBuffer_Len():Void
```


 


[\(view code\)](<./Bytes.hx#L4720>)


## function exampleBuffer\_Next


```haxe
function exampleBuffer_Next():Void
```


 


[\(view code\)](<./Bytes.hx#L4727>)


## function exampleBuffer\_Read


```haxe
function exampleBuffer_Read():Void
```


 


[\(view code\)](<./Bytes.hx#L4736>)


## function exampleBuffer\_ReadByte


```haxe
function exampleBuffer_ReadByte():Void
```


 


[\(view code\)](<./Bytes.hx#L4752>)


## function exampleBuffer\_reader


```haxe
function exampleBuffer_reader():Void
```


 


[\(view code\)](<./Bytes.hx#L4692>)


## function exampleCompare


```haxe
function exampleCompare():Void
```


 


[\(view code\)](<./Bytes.hx#L4766>)


## function exampleCompare\_search


```haxe
function exampleCompare_search():Void
```


 


[\(view code\)](<./Bytes.hx#L4779>)


## function exampleContains


```haxe
function exampleContains():Void
```


 


[\(view code\)](<./Bytes.hx#L4788>)


## function exampleContainsAny


```haxe
function exampleContainsAny():Void
```


 


[\(view code\)](<./Bytes.hx#L4795>)


## function exampleContainsRune


```haxe
function exampleContainsRune():Void
```


 


[\(view code\)](<./Bytes.hx#L4802>)


## function exampleCount


```haxe
function exampleCount():Void
```


 


[\(view code\)](<./Bytes.hx#L4810>)


## function exampleCut


```haxe
function exampleCut():Void
```


 


[\(view code\)](<./Bytes.hx#L4815>)


## function exampleEqual


```haxe
function exampleEqual():Void
```


 


[\(view code\)](<./Bytes.hx#L4828>)


## function exampleEqualFold


```haxe
function exampleEqualFold():Void
```


 


[\(view code\)](<./Bytes.hx#L4833>)


## function exampleFields


```haxe
function exampleFields():Void
```


 


[\(view code\)](<./Bytes.hx#L4837>)


## function exampleFieldsFunc


```haxe
function exampleFieldsFunc():Void
```


 


[\(view code\)](<./Bytes.hx#L4841>)


## function exampleHasPrefix


```haxe
function exampleHasPrefix():Void
```


 


[\(view code\)](<./Bytes.hx#L4849>)


## function exampleHasSuffix


```haxe
function exampleHasSuffix():Void
```


 


[\(view code\)](<./Bytes.hx#L4855>)


## function exampleIndex


```haxe
function exampleIndex():Void
```


 


[\(view code\)](<./Bytes.hx#L4862>)


## function exampleIndexAny


```haxe
function exampleIndexAny():Void
```


 


[\(view code\)](<./Bytes.hx#L4880>)


## function exampleIndexByte


```haxe
function exampleIndexByte():Void
```


 


[\(view code\)](<./Bytes.hx#L4867>)


## function exampleIndexFunc


```haxe
function exampleIndexFunc():Void
```


 


[\(view code\)](<./Bytes.hx#L4872>)


## function exampleIndexRune


```haxe
function exampleIndexRune():Void
```


 


[\(view code\)](<./Bytes.hx#L4885>)


## function exampleJoin


```haxe
function exampleJoin():Void
```


 


[\(view code\)](<./Bytes.hx#L4890>)


## function exampleLastIndex


```haxe
function exampleLastIndex():Void
```


 


[\(view code\)](<./Bytes.hx#L4896>)


## function exampleLastIndexAny


```haxe
function exampleLastIndexAny():Void
```


 


[\(view code\)](<./Bytes.hx#L4902>)


## function exampleLastIndexByte


```haxe
function exampleLastIndexByte():Void
```


 


[\(view code\)](<./Bytes.hx#L4908>)


## function exampleLastIndexFunc


```haxe
function exampleLastIndexFunc():Void
```


 


[\(view code\)](<./Bytes.hx#L4914>)


## function exampleReader\_Len


```haxe
function exampleReader_Len():Void
```


 


[\(view code\)](<./Bytes.hx#L4920>)


## function exampleRepeat


```haxe
function exampleRepeat():Void
```


 


[\(view code\)](<./Bytes.hx#L4925>)


## function exampleReplace


```haxe
function exampleReplace():Void
```


 


[\(view code\)](<./Bytes.hx#L4929>)


## function exampleReplaceAll


```haxe
function exampleReplaceAll():Void
```


 


[\(view code\)](<./Bytes.hx#L4938>)


## function exampleRunes


```haxe
function exampleRunes():Void
```


 


[\(view code\)](<./Bytes.hx#L4944>)


## function exampleSplit


```haxe
function exampleSplit():Void
```


 


[\(view code\)](<./Bytes.hx#L4951>)


## function exampleSplitAfter


```haxe
function exampleSplitAfter():Void
```


 


[\(view code\)](<./Bytes.hx#L4968>)


## function exampleSplitAfterN


```haxe
function exampleSplitAfterN():Void
```


 


[\(view code\)](<./Bytes.hx#L4973>)


## function exampleSplitN


```haxe
function exampleSplitN():Void
```


 


[\(view code\)](<./Bytes.hx#L4961>)


## function exampleTitle


```haxe
function exampleTitle():Void
```


 


[\(view code\)](<./Bytes.hx#L4978>)


## function exampleToLower


```haxe
function exampleToLower():Void
```


 


[\(view code\)](<./Bytes.hx#L5054>)


## function exampleToLowerSpecial


```haxe
function exampleToLowerSpecial():Void
```


 


[\(view code\)](<./Bytes.hx#L5058>)


## function exampleToTitle


```haxe
function exampleToTitle():Void
```


 


[\(view code\)](<./Bytes.hx#L4982>)


## function exampleToTitleSpecial


```haxe
function exampleToTitleSpecial():Void
```


 


[\(view code\)](<./Bytes.hx#L4987>)


## function exampleToUpper


```haxe
function exampleToUpper():Void
```


 


[\(view code\)](<./Bytes.hx#L5065>)


## function exampleToUpperSpecial


```haxe
function exampleToUpperSpecial():Void
```


 


[\(view code\)](<./Bytes.hx#L5069>)


## function exampleTrim


```haxe
function exampleTrim():Void
```


 


[\(view code\)](<./Bytes.hx#L4994>)


## function exampleTrimFunc


```haxe
function exampleTrimFunc():Void
```


 


[\(view code\)](<./Bytes.hx#L4999>)


## function exampleTrimLeft


```haxe
function exampleTrimLeft():Void
```


 


[\(view code\)](<./Bytes.hx#L5009>)


## function exampleTrimLeftFunc


```haxe
function exampleTrimLeftFunc():Void
```


 


[\(view code\)](<./Bytes.hx#L5013>)


## function exampleTrimPrefix


```haxe
function exampleTrimPrefix():Void
```


 


[\(view code\)](<./Bytes.hx#L5022>)


## function exampleTrimRight


```haxe
function exampleTrimRight():Void
```


 


[\(view code\)](<./Bytes.hx#L5041>)


## function exampleTrimRightFunc


```haxe
function exampleTrimRightFunc():Void
```


 


[\(view code\)](<./Bytes.hx#L5045>)


## function exampleTrimSpace


```haxe
function exampleTrimSpace():Void
```


 


[\(view code\)](<./Bytes.hx#L5029>)


## function exampleTrimSuffix


```haxe
function exampleTrimSuffix():Void
```


 


[\(view code\)](<./Bytes.hx#L5033>)


## function testBasicOperations


```haxe
function testBasicOperations(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L1671>)


## function testBufferGrowNegative


```haxe
function testBufferGrowNegative(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3852>)


## function testBufferGrowth


```haxe
function testBufferGrowth(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Tests that we occasionally compact. Issue 5154. 


[\(view code\)](<./Bytes.hx#L2356>)


## function testBufferTruncateNegative


```haxe
function testBufferTruncateNegative(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3896>)


## function testBufferTruncateOutOfRange


```haxe
function testBufferTruncateOutOfRange(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3940>)


## function testCapWithPreallocatedSlice


```haxe
function testCapWithPreallocatedSlice(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L1829>)


## function testCapWithSliceAndWrittenData


```haxe
function testCapWithSliceAndWrittenData(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L1837>)


## function testCompare


```haxe
function testCompare(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L4418>)


## function testCompareBytes


```haxe
function testCompareBytes(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L4448>)


## function testCompareIdenticalSlice


```haxe
function testCompareIdenticalSlice(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L4438>)


## function testContains


```haxe
function testContains(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3985>)


## function testContainsAny


```haxe
function testContainsAny(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3997>)


## function testContainsRune


```haxe
function testContainsRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L4006>)


## function testCountByte


```haxe
function testCountByte(_t:stdgo.Ref<stdgo.testing.T>):Void
```


test count of a single byte across page offsets 


[\(view code\)](<./Bytes.hx#L2878>)


## function testCountByteNoMatch


```haxe
function testCountByteNoMatch(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Make sure we don't count bytes outside our window 


[\(view code\)](<./Bytes.hx#L2935>)


## function testCut


```haxe
function testCut(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3837>)


## function testEmptyReaderConcurrent


```haxe
function testEmptyReaderConcurrent(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L5293>)


## function testEndianBaseCompare


```haxe
function testEndianBaseCompare(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L4513>)


## function testEqual


```haxe
function testEqual(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L2500>)


## function testEqualExhaustive


```haxe
function testEqualExhaustive(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L2514>)


## function testEqualFold


```haxe
function testEqualFold(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3818>)


## function testFields


```haxe
function testFields(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3291>)


## function testFieldsFunc


```haxe
function testFieldsFunc(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3318>)


## function testGrow


```haxe
function testGrow(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L2198>)


## function testGrowOverflow


```haxe
function testGrowOverflow(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L2229>)


## function testIndex


```haxe
function testIndex(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L2646>)


## function testIndexAny


```haxe
function testIndexAny(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L2654>)


## function testIndexByte


```haxe
function testIndexByte(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L2662>)


## function testIndexByteBig


```haxe
function testIndexByteBig(_t:stdgo.Ref<stdgo.testing.T>):Void
```


test a larger buffer with different sizes and alignments 


[\(view code\)](<./Bytes.hx#L2703>)


## function testIndexByteSmall


```haxe
function testIndexByteSmall(_t:stdgo.Ref<stdgo.testing.T>):Void
```


test a small index across all page offsets 


[\(view code\)](<./Bytes.hx#L2767>)


## function testIndexFunc


```haxe
function testIndexFunc(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3750>)


## function testIndexRune


```haxe
function testIndexRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L2825>)


## function testLargeByteReads


```haxe
function testLargeByteReads(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L1789>)


## function testLargeByteWrites


```haxe
function testLargeByteWrites(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L1757>)


## function testLargeStringReads


```haxe
function testLargeStringReads(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L1775>)


## function testLargeStringWrites


```haxe
function testLargeStringWrites(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L1739>)


## function testLastIndex


```haxe
function testLastIndex(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L2650>)


## function testLastIndexAny


```haxe
function testLastIndexAny(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L2658>)


## function testLastIndexByte


```haxe
function testLastIndexByte(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L2680>)


## function testMap


```haxe
function testMap(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3406>)


## function testMixedReadsAndWrites


```haxe
function testMixedReadsAndWrites(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L1803>)


## function testNewBuffer


```haxe
function testNewBuffer(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L1639>)


## function testNewBufferString


```haxe
function testNewBufferString(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L1644>)


## function testNext


```haxe
function testNext(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L2089>)


## function testNil


```haxe
function testNil(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L1846>)


## function testNotEqual


```haxe
function testNotEqual(_t:stdgo.Ref<stdgo.testing.T>):Void
```


make sure Equal returns false for minimally different strings. The data  is all zeros except for a single one in one location. 


[\(view code\)](<./Bytes.hx#L2556>)


## function testReadAfterBigSeek


```haxe
function testReadAfterBigSeek(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L5181>)


## function testReadBytes


```haxe
function testReadBytes(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L2131>)


## function testReadEmptyAtEOF


```haxe
function testReadEmptyAtEOF(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Was a bug: used to give EOF reading empty slice at EOF. 


[\(view code\)](<./Bytes.hx#L2277>)


## function testReadFrom


```haxe
function testReadFrom(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L1853>)


## function testReadFromNegativeReader


```haxe
function testReadFromNegativeReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L1923>)


## function testReadFromPanicReader


```haxe
function testReadFromPanicReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Make sure that an empty Buffer remains empty when  it is "grown" before a Read that panics 


[\(view code\)](<./Bytes.hx#L1872>)


## function testReadString


```haxe
function testReadString(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L2155>)


## function testReader


```haxe
function testReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L5076>)


## function testReaderAt


```haxe
function testReaderAt(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L5201>)


## function testReaderAtConcurrent


```haxe
function testReaderAtConcurrent(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L5249>)


## function testReaderCopyNothing


```haxe
function testReaderCopyNothing(_t:stdgo.Ref<stdgo.testing.T>):Void
```


verify that copying from an empty reader always has the same results,  regardless of the presence of a WriteTo method. 


[\(view code\)](<./Bytes.hx#L5559>)


## function testReaderDoubleUnreadRune


```haxe
function testReaderDoubleUnreadRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L5469>)


## function testReaderLen


```haxe
function testReaderLen(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L5401>)


## function testReaderLenSize


```haxe
function testReaderLenSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```


tests that Len is affected by reads, but Size is not. 


[\(view code\)](<./Bytes.hx#L5587>)


## function testReaderReset


```haxe
function testReaderReset(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L5600>)


## function testReaderWriteTo


```haxe
function testReaderWriteTo(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L5368>)


## function testReaderZero


```haxe
function testReaderZero(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L5633>)


## function testRepeat


```haxe
function testRepeat(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3511>)


## function testRepeatCatchesOverflow


```haxe
function testRepeatCatchesOverflow(_t:stdgo.Ref<stdgo.testing.T>):Void
```


See Issue golang.org/issue/16237 


[\(view code\)](<./Bytes.hx#L3587>)


## function testReplace


```haxe
function testReplace(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3765>)


## function testRuneIO


```haxe
function testRuneIO(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L1993>)


## function testRunes


```haxe
function testRunes(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3631>)


## function testSplit


```haxe
function testSplit(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3212>)


## function testSplitAfter


```haxe
function testSplitAfter(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3257>)


## function testTitle


```haxe
function testTitle(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3796>)


## function testToLower


```haxe
function testToLower(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3459>)


## function testToTitle


```haxe
function testToTitle(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3807>)


## function testToUpper


```haxe
function testToUpper(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3455>)


## function testToValidUTF8


```haxe
function testToValidUTF8(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3497>)


## function testTrim


```haxe
function testTrim(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3648>)


## function testTrimFunc


```haxe
function testTrimFunc(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3727>)


## function testTrimSpace


```haxe
function testTrimSpace(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3507>)


## function testUnreadByte


```haxe
function testUnreadByte(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L2291>)


## function testUnreadRuneError


```haxe
function testUnreadRuneError(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L5449>)


## function testWriteInvalidRune


```haxe
function testWriteInvalidRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L2081>)


## function testWriteTo


```haxe
function testWriteTo(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L1978>)


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


 


[\(view code\)](<./Bytes_test.hx#L900>)


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


 


[\(view code\)](<./Bytes_test.hx#L946>)


## class IndexFuncTest


 


```haxe
var _f:stdgo.bytes_test._Bytes_test.T_predicate
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
function new(?_in:stdgo.GoString, ?_f:stdgo.bytes_test._Bytes_test.T_predicate, ?_first:Null<stdgo.GoInt>, ?_last:Null<stdgo.GoInt>):Void
```


 


[\(view code\)](<./Bytes_test.hx#L1132>)


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


 


[\(view code\)](<./Bytes_test.hx#L989>)


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


 


[\(view code\)](<./Bytes_test.hx#L1158>)


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


 


[\(view code\)](<./Bytes_test.hx#L1011>)


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


 


[\(view code\)](<./Bytes_test.hx#L923>)


## class StringTest


Test case for any function which accepts and returns a byte slice.  For ease of creation, we write the input byte slice as a string. 


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


 


[\(view code\)](<./Bytes_test.hx#L969>)


## class T\_\_struct\_0\_static\_extension


 


## class T\_\_struct\_10\_static\_extension


 


## class T\_\_struct\_11\_static\_extension


 


## class T\_\_struct\_12\_static\_extension


 


## class T\_\_struct\_13\_static\_extension


 


## class T\_\_struct\_14\_static\_extension


 


## class T\_\_struct\_15\_static\_extension


 


## class T\_\_struct\_1\_static\_extension


 


## class T\_\_struct\_2\_static\_extension


 


## class T\_\_struct\_3\_static\_extension


 


## class T\_\_struct\_4\_static\_extension


 


## class T\_\_struct\_5\_static\_extension


 


## class T\_\_struct\_6\_static\_extension


 


## class T\_\_struct\_7\_static\_extension


 


## class T\_\_struct\_8\_static\_extension


 


## class T\_\_struct\_9\_static\_extension


 


## class T\_justReader\_testReaderCopyNothing\_1\_static\_extension


 


### T\_justReader\_testReaderCopyNothing\_1\_static\_extension function read


```haxe
function read(__self__:stdgo.bytes_test._Bytes_test.T_justReader_testReaderCopyNothing_1, __0:stdgo.Slice<stdgo.GoUInt8>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Bytes_test.hx#L5796>)


## class T\_justWriter\_testReaderCopyNothing\_2\_static\_extension


 


### T\_justWriter\_testReaderCopyNothing\_2\_static\_extension function write


```haxe
function write(__self__:stdgo.bytes_test._Bytes_test.T_justWriter_testReaderCopyNothing_2, __0:stdgo.Slice<stdgo.GoUInt8>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Bytes_test.hx#L5821>)


## class T\_negativeReader\_static\_extension


 


### T\_negativeReader\_static\_extension function read


```haxe
function read(_r:stdgo.Ref<stdgo.bytes_test._Bytes_test.T_negativeReader>, _0:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Bytes_test.hx#L5740>)


## class T\_panicReader\_static\_extension


 


### T\_panicReader\_static\_extension function read


```haxe
function read(_r:stdgo.bytes_test._Bytes_test.T_panicReader, _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Bytes_test.hx#L5766>)


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


 


[\(view code\)](<./Bytes_test.hx#L1183>)


## class TrimFuncTest


 


```haxe
var _f:stdgo.bytes_test._Bytes_test.T_predicate
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
function new(?_f:stdgo.bytes_test._Bytes_test.T_predicate, ?_in:stdgo.GoString, ?_trimOut:stdgo.Slice<stdgo.GoUInt8>, ?_leftOut:stdgo.Slice<stdgo.GoUInt8>, ?_rightOut:stdgo.Slice<stdgo.GoUInt8>):Void
```


 


[\(view code\)](<./Bytes_test.hx#L1104>)


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


 


[\(view code\)](<./Bytes_test.hx#L1059>)


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


 


[\(view code\)](<./Bytes_test.hx#L1034>)


