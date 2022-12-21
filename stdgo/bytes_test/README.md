# Module: `stdgo.bytes`

[(view library index)](../stdgo.md)


# Overview


 


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _benchBytes(_b:stdgo.Ref<stdgo.testing.B>, _sizes:stdgo.Slice<stdgo.GoInt>, _f:(_b:stdgo.Ref<stdgo.testing.B>, _n:stdgo.GoInt):Void):Void`](<#function-_benchbytes>)

- [`function _benchmarkCountHard(_b:stdgo.Ref<stdgo.testing.B>, _sep:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_benchmarkcounthard>)

- [`function _benchmarkIndexHard(_b:stdgo.Ref<stdgo.testing.B>, _sep:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_benchmarkindexhard>)

- [`function _benchmarkLastIndexHard(_b:stdgo.Ref<stdgo.testing.B>, _sep:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_benchmarklastindexhard>)

- [`function _bmEqual(_equal:(:stdgo.Slice<stdgo.GoByte>, :stdgo.Slice<stdgo.GoByte>):Bool):(_b:stdgo.Ref<stdgo.testing.B>, _n:stdgo.GoInt):Void`](<#function-_bmequal>)

- [`function _bmIndexByte(_index:(:stdgo.Slice<stdgo.GoByte>, :stdgo.GoByte):stdgo.GoInt):(_b:stdgo.Ref<stdgo.testing.B>, _n:stdgo.GoInt):Void`](<#function-_bmindexbyte>)

- [`function _bmIndexRune(_index:(:stdgo.Slice<stdgo.GoByte>, :stdgo.GoRune):stdgo.GoInt):(_b:stdgo.Ref<stdgo.testing.B>, _n:stdgo.GoInt):Void`](<#function-_bmindexrune>)

- [`function _bmIndexRuneASCII(_index:(:stdgo.Slice<stdgo.GoByte>, :stdgo.GoRune):stdgo.GoInt):(_b:stdgo.Ref<stdgo.testing.B>, _n:stdgo.GoInt):Void`](<#function-_bmindexruneascii>)

- [`function _check(_t:stdgo.Ref<stdgo.testing.T>, _testname:stdgo.GoString, _buf:stdgo.Ref<stdgo.bytes.Buffer>, _s:stdgo.GoString):Void`](<#function-_check>)

- [`function _empty(_t:stdgo.Ref<stdgo.testing.T>, _testname:stdgo.GoString, _buf:stdgo.Ref<stdgo.bytes.Buffer>, _s:stdgo.GoString, _fub:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_empty>)

- [`function _eq(_a:stdgo.Slice<stdgo.GoString>, _b:stdgo.Slice<stdgo.GoString>):Bool`](<#function-_eq>)

- [`function _fillBytes(_t:stdgo.Ref<stdgo.testing.T>, _testname:stdgo.GoString, _buf:stdgo.Ref<stdgo.bytes.Buffer>, _s:stdgo.GoString, _n:stdgo.GoInt, _fub:stdgo.Slice<stdgo.GoByte>):stdgo.GoString`](<#function-_fillbytes>)

- [`function _fillString(_t:stdgo.Ref<stdgo.testing.T>, _testname:stdgo.GoString, _buf:stdgo.Ref<stdgo.bytes.Buffer>, _s:stdgo.GoString, _n:stdgo.GoInt, _fus:stdgo.GoString):stdgo.GoString`](<#function-_fillstring>)

- [`function _makeBenchInputHard():stdgo.Slice<stdgo.GoByte>`](<#function-_makebenchinputhard>)

- [`function _not(_p:stdgo.bytes_test._Bytes_test.T_predicate):stdgo.bytes_test._Bytes_test.T_predicate`](<#function-_not>)

- [`function _repeat(_b:stdgo.Slice<stdgo.GoByte>, _count:stdgo.GoInt):stdgo.Error`](<#function-_repeat>)

- [`function _rot13(_r:stdgo.GoRune):stdgo.GoRune`](<#function-_rot13>)

- [`function _runIndexAnyTests(_t:stdgo.Ref<stdgo.testing.T>, _f:(_s:stdgo.Slice<stdgo.GoByte>, _chars:stdgo.GoString):stdgo.GoInt, _funcName:stdgo.GoString, _testCases:stdgo.Slice<stdgo.bytes_test.BinOpTest>):Void`](<#function-_runindexanytests>)

- [`function _runIndexTests(_t:stdgo.Ref<stdgo.testing.T>, _f:(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt, _funcName:stdgo.GoString, _testCases:stdgo.Slice<stdgo.bytes_test.BinOpTest>):Void`](<#function-_runindextests>)

- [`function _runStringTests(_t:stdgo.Ref<stdgo.testing.T>, _f:(), _funcName:stdgo.GoString, _testCases:stdgo.Slice<stdgo.bytes_test.StringTest>):Void`](<#function-_runstringtests>)

- [`function _runesEqual(_a:stdgo.Slice<stdgo.GoRune>, _b:stdgo.Slice<stdgo.GoRune>):Bool`](<#function-_runesequal>)

- [`function _sliceOfString(_s:stdgo.Slice<stdgo.Slice<stdgo.GoByte>>):stdgo.Slice<stdgo.GoString>`](<#function-_sliceofstring>)

- [`function _tenRunes(_r:stdgo.GoRune):stdgo.GoString`](<#function-_tenrunes>)

- [`function _valName(_x:stdgo.GoInt):stdgo.GoString`](<#function-_valname>)

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

- [`function main():Void`](<#function-main>)

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


## function \_benchBytes


```haxe
function _benchBytes(_b:stdgo.Ref<stdgo.testing.B>, _sizes:stdgo.Slice<stdgo.GoInt>, _f:(_b:stdgo.Ref<stdgo.testing.B>, _n:stdgo.GoInt):Void):Void
```


 


[\(view code\)](<./Bytes.hx#L2890>)


## function \_benchmarkCountHard


```haxe
function _benchmarkCountHard(_b:stdgo.Ref<stdgo.testing.B>, _sep:stdgo.Slice<stdgo.GoByte>):Void
```


 


[\(view code\)](<./Bytes.hx#L4031>)


## function \_benchmarkIndexHard


```haxe
function _benchmarkIndexHard(_b:stdgo.Ref<stdgo.testing.B>, _sep:stdgo.Slice<stdgo.GoByte>):Void
```


 


[\(view code\)](<./Bytes.hx#L4013>)


## function \_benchmarkLastIndexHard


```haxe
function _benchmarkLastIndexHard(_b:stdgo.Ref<stdgo.testing.B>, _sep:stdgo.Slice<stdgo.GoByte>):Void
```


 


[\(view code\)](<./Bytes.hx#L4022>)


## function \_bmEqual


```haxe
function _bmEqual(_equal:(:stdgo.Slice<stdgo.GoByte>, :stdgo.Slice<stdgo.GoByte>):Bool):(_b:stdgo.Ref<stdgo.testing.B>, _n:stdgo.GoInt):Void
```


 


[\(view code\)](<./Bytes.hx#L2994>)


## function \_bmIndexByte


```haxe
function _bmIndexByte(_index:(:stdgo.Slice<stdgo.GoByte>, :stdgo.GoByte):stdgo.GoInt):(_b:stdgo.Ref<stdgo.testing.B>, _n:stdgo.GoInt):Void
```


 


[\(view code\)](<./Bytes.hx#L2913>)


## function \_bmIndexRune


```haxe
function _bmIndexRune(_index:(:stdgo.Slice<stdgo.GoByte>, :stdgo.GoRune):stdgo.GoInt):(_b:stdgo.Ref<stdgo.testing.B>, _n:stdgo.GoInt):Void
```


 


[\(view code\)](<./Bytes.hx#L2955>)


## function \_bmIndexRuneASCII


```haxe
function _bmIndexRuneASCII(_index:(:stdgo.Slice<stdgo.GoByte>, :stdgo.GoRune):stdgo.GoInt):(_b:stdgo.Ref<stdgo.testing.B>, _n:stdgo.GoInt):Void
```


 


[\(view code\)](<./Bytes.hx#L2938>)


## function \_check


```haxe
function _check(_t:stdgo.Ref<stdgo.testing.T>, _testname:stdgo.GoString, _buf:stdgo.Ref<stdgo.bytes.Buffer>, _s:stdgo.GoString):Void
```


Verify that contents of buf match the string s. 


[\(view code\)](<./Bytes.hx#L1481>)


## function \_empty


```haxe
function _empty(_t:stdgo.Ref<stdgo.testing.T>, _testname:stdgo.GoString, _buf:stdgo.Ref<stdgo.bytes.Buffer>, _s:stdgo.GoString, _fub:stdgo.Slice<stdgo.GoByte>):Void
```


Empty buf through repeated reads into fub.��// The initial contents of buf corresponds to the string s. 


[\(view code\)](<./Bytes.hx#L1560>)


## function \_eq


```haxe
function _eq(_a:stdgo.Slice<stdgo.GoString>, _b:stdgo.Slice<stdgo.GoString>):Bool
```


 


[\(view code\)](<./Bytes.hx#L2384>)


## function \_fillBytes


```haxe
function _fillBytes(_t:stdgo.Ref<stdgo.testing.T>, _testname:stdgo.GoString, _buf:stdgo.Ref<stdgo.bytes.Buffer>, _s:stdgo.GoString, _n:stdgo.GoInt, _fub:stdgo.Slice<stdgo.GoByte>):stdgo.GoString
```


Fill buf through n writes of byte slice fub.��// The initial contents of buf corresponds to the string s;��// the result is the final contents of buf returned as a string. 


[\(view code\)](<./Bytes.hx#L1528>)


## function \_fillString


```haxe
function _fillString(_t:stdgo.Ref<stdgo.testing.T>, _testname:stdgo.GoString, _buf:stdgo.Ref<stdgo.bytes.Buffer>, _s:stdgo.GoString, _n:stdgo.GoInt, _fus:stdgo.GoString):stdgo.GoString
```


Fill buf through n writes of string fus.��// The initial contents of buf corresponds to the string s;��// the result is the final contents of buf returned as a string. 


[\(view code\)](<./Bytes.hx#L1505>)


## function \_makeBenchInputHard


```haxe
function _makeBenchInputHard():stdgo.Slice<stdgo.GoByte>
```


 


[\(view code\)](<./Bytes.hx#L3999>)


## function \_not


```haxe
function _not(_p:stdgo.bytes_test._Bytes_test.T_predicate):stdgo.bytes_test._Bytes_test.T_predicate
```


 


[\(view code\)](<./Bytes.hx#L3624>)


## function \_repeat


```haxe
function _repeat(_b:stdgo.Slice<stdgo.GoByte>, _count:stdgo.GoInt):stdgo.Error
```


 


[\(view code\)](<./Bytes.hx#L3427>)


## function \_rot13


```haxe
function _rot13(_r:stdgo.GoRune):stdgo.GoRune
```


User\-defined self\-inverse mapping function 


[\(view code\)](<./Bytes.hx#L3299>)


## function \_runIndexAnyTests


```haxe
function _runIndexAnyTests(_t:stdgo.Ref<stdgo.testing.T>, _f:(_s:stdgo.Slice<stdgo.GoByte>, _chars:stdgo.GoString):stdgo.GoInt, _funcName:stdgo.GoString, _testCases:stdgo.Slice<stdgo.bytes_test.BinOpTest>):Void
```


 


[\(view code\)](<./Bytes.hx#L2542>)


## function \_runIndexTests


```haxe
function _runIndexTests(_t:stdgo.Ref<stdgo.testing.T>, _f:(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt, _funcName:stdgo.GoString, _testCases:stdgo.Slice<stdgo.bytes_test.BinOpTest>):Void
```


Execute f on each test case.  funcName should be the name of f; it's used��// in failure reports. 


[\(view code\)](<./Bytes.hx#L2504>)


## function \_runStringTests


```haxe
function _runStringTests(_t:stdgo.Ref<stdgo.testing.T>, _f:(), _funcName:stdgo.GoString, _testCases:stdgo.Slice<stdgo.bytes_test.StringTest>):Void
```


Execute f on each test case.  funcName should be the name of f; it's used��// in failure reports. 


[\(view code\)](<./Bytes.hx#L3273>)


## function \_runesEqual


```haxe
function _runesEqual(_a:stdgo.Slice<stdgo.GoRune>, _b:stdgo.Slice<stdgo.GoRune>):Bool
```


 


[\(view code\)](<./Bytes.hx#L3522>)


## function \_sliceOfString


```haxe
function _sliceOfString(_s:stdgo.Slice<stdgo.Slice<stdgo.GoByte>>):stdgo.Slice<stdgo.GoString>
```


 


[\(view code\)](<./Bytes.hx#L2399>)


## function \_tenRunes


```haxe
function _tenRunes(_r:stdgo.GoRune):stdgo.GoString
```


 


[\(view code\)](<./Bytes.hx#L3288>)


## function \_valName


```haxe
function _valName(_x:stdgo.GoInt):stdgo.GoString
```


 


[\(view code\)](<./Bytes.hx#L2874>)


## function benchmarkBufferFullSmallReads


```haxe
function benchmarkBufferFullSmallReads(_b:stdgo.Ref<stdgo.testing.B>):Void
```


Check that we don't compact too often. From Issue 5154. 


[\(view code\)](<./Bytes.hx#L2345>)


## function benchmarkBufferNotEmptyWriteRead


```haxe
function benchmarkBufferNotEmptyWriteRead(_b:stdgo.Ref<stdgo.testing.B>):Void
```


From Issue 5154. 


[\(view code\)](<./Bytes.hx#L2324>)


## function benchmarkBufferWriteBlock


```haxe
function benchmarkBufferWriteBlock(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L2366>)


## function benchmarkBytesCompare


```haxe
function benchmarkBytesCompare(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4138>)


## function benchmarkCompareBytesBig


```haxe
function benchmarkCompareBytesBig(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4544>)


## function benchmarkCompareBytesBigIdentical


```haxe
function benchmarkCompareBytesBigIdentical(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4563>)


## function benchmarkCompareBytesBigUnaligned


```haxe
function benchmarkCompareBytesBigUnaligned(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4525>)


## function benchmarkCompareBytesDifferentLength


```haxe
function benchmarkCompareBytesDifferentLength(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4512>)


## function benchmarkCompareBytesEmpty


```haxe
function benchmarkCompareBytesEmpty(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4473>)


## function benchmarkCompareBytesEqual


```haxe
function benchmarkCompareBytesEqual(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4447>)


## function benchmarkCompareBytesIdentical


```haxe
function benchmarkCompareBytesIdentical(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4486>)


## function benchmarkCompareBytesSameLength


```haxe
function benchmarkCompareBytesSameLength(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4499>)


## function benchmarkCompareBytesToNil


```haxe
function benchmarkCompareBytesToNil(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4460>)


## function benchmarkCount


```haxe
function benchmarkCount(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L3053>)


## function benchmarkCountEasy


```haxe
function benchmarkCountEasy(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L3070>)


## function benchmarkCountHard1


```haxe
function benchmarkCountHard1(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4068>)


## function benchmarkCountHard2


```haxe
function benchmarkCountHard2(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4072>)


## function benchmarkCountHard3


```haxe
function benchmarkCountHard3(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4076>)


## function benchmarkCountSingle


```haxe
function benchmarkCountSingle(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L3089>)


## function benchmarkEqual


```haxe
function benchmarkEqual(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L2974>)


## function benchmarkFields


```haxe
function benchmarkFields(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L3918>)


## function benchmarkFieldsFunc


```haxe
function benchmarkFieldsFunc(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L3941>)


## function benchmarkIndex


```haxe
function benchmarkIndex(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L3017>)


## function benchmarkIndexAnyASCII


```haxe
function benchmarkIndexAnyASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4169>)


## function benchmarkIndexAnyUTF8


```haxe
function benchmarkIndexAnyUTF8(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4192>)


## function benchmarkIndexByte


```haxe
function benchmarkIndexByte(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L2905>)


## function benchmarkIndexBytePortable


```haxe
function benchmarkIndexBytePortable(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L2909>)


## function benchmarkIndexEasy


```haxe
function benchmarkIndexEasy(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L3034>)


## function benchmarkIndexHard1


```haxe
function benchmarkIndexHard1(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4040>)


## function benchmarkIndexHard2


```haxe
function benchmarkIndexHard2(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4044>)


## function benchmarkIndexHard3


```haxe
function benchmarkIndexHard3(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4048>)


## function benchmarkIndexHard4


```haxe
function benchmarkIndexHard4(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4052>)


## function benchmarkIndexPeriodic


```haxe
function benchmarkIndexPeriodic(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4294>)


## function benchmarkIndexRune


```haxe
function benchmarkIndexRune(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L2930>)


## function benchmarkIndexRuneASCII


```haxe
function benchmarkIndexRuneASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L2934>)


## function benchmarkLastIndexAnyASCII


```haxe
function benchmarkLastIndexAnyASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4215>)


## function benchmarkLastIndexAnyUTF8


```haxe
function benchmarkLastIndexAnyUTF8(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4238>)


## function benchmarkLastIndexHard1


```haxe
function benchmarkLastIndexHard1(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4056>)


## function benchmarkLastIndexHard2


```haxe
function benchmarkLastIndexHard2(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4060>)


## function benchmarkLastIndexHard3


```haxe
function benchmarkLastIndexHard3(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4064>)


## function benchmarkReadString


```haxe
function benchmarkReadString(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L2086>)


## function benchmarkRepeat


```haxe
function benchmarkRepeat(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4129>)


## function benchmarkSplitEmptySeparator


```haxe
function benchmarkSplitEmptySeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4080>)


## function benchmarkSplitMultiByteSeparator


```haxe
function benchmarkSplitMultiByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4099>)


## function benchmarkSplitNMultiByteSeparator


```haxe
function benchmarkSplitNMultiByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4119>)


## function benchmarkSplitNSingleByteSeparator


```haxe
function benchmarkSplitNSingleByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4109>)


## function benchmarkSplitSingleByteSeparator


```haxe
function benchmarkSplitSingleByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4089>)


## function benchmarkToLower


```haxe
function benchmarkToLower(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L3384>)


## function benchmarkToUpper


```haxe
function benchmarkToUpper(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L3367>)


## function benchmarkToValidUTF8


```haxe
function benchmarkToValidUTF8(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L3981>)


## function benchmarkTrimASCII


```haxe
function benchmarkTrimASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4261>)


## function benchmarkTrimByte


```haxe
function benchmarkTrimByte(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L4284>)


## function benchmarkTrimSpace


```haxe
function benchmarkTrimSpace(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L3964>)


## function benchmarkWriteByte


```haxe
function benchmarkWriteByte(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L2284>)


## function benchmarkWriteRune


```haxe
function benchmarkWriteRune(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Bytes.hx#L2302>)


## function exampleBuffer


```haxe
function exampleBuffer():Void
```


 


[\(view code\)](<./Bytes.hx#L4582>)


## function exampleBuffer\_Bytes


```haxe
function exampleBuffer_Bytes():Void
```


 


[\(view code\)](<./Bytes.hx#L4595>)


## function exampleBuffer\_Cap


```haxe
function exampleBuffer_Cap():Void
```


 


[\(view code\)](<./Bytes.hx#L4602>)


## function exampleBuffer\_Grow


```haxe
function exampleBuffer_Grow():Void
```


 


[\(view code\)](<./Bytes.hx#L4609>)


## function exampleBuffer\_Len


```haxe
function exampleBuffer_Len():Void
```


 


[\(view code\)](<./Bytes.hx#L4617>)


## function exampleBuffer\_Next


```haxe
function exampleBuffer_Next():Void
```


 


[\(view code\)](<./Bytes.hx#L4624>)


## function exampleBuffer\_Read


```haxe
function exampleBuffer_Read():Void
```


 


[\(view code\)](<./Bytes.hx#L4633>)


## function exampleBuffer\_ReadByte


```haxe
function exampleBuffer_ReadByte():Void
```


 


[\(view code\)](<./Bytes.hx#L4649>)


## function exampleBuffer\_reader


```haxe
function exampleBuffer_reader():Void
```


 


[\(view code\)](<./Bytes.hx#L4589>)


## function exampleCompare


```haxe
function exampleCompare():Void
```


 


[\(view code\)](<./Bytes.hx#L4663>)


## function exampleCompare\_search


```haxe
function exampleCompare_search():Void
```


 


[\(view code\)](<./Bytes.hx#L4676>)


## function exampleContains


```haxe
function exampleContains():Void
```


 


[\(view code\)](<./Bytes.hx#L4685>)


## function exampleContainsAny


```haxe
function exampleContainsAny():Void
```


 


[\(view code\)](<./Bytes.hx#L4692>)


## function exampleContainsRune


```haxe
function exampleContainsRune():Void
```


 


[\(view code\)](<./Bytes.hx#L4699>)


## function exampleCount


```haxe
function exampleCount():Void
```


 


[\(view code\)](<./Bytes.hx#L4707>)


## function exampleCut


```haxe
function exampleCut():Void
```


 


[\(view code\)](<./Bytes.hx#L4712>)


## function exampleEqual


```haxe
function exampleEqual():Void
```


 


[\(view code\)](<./Bytes.hx#L4725>)


## function exampleEqualFold


```haxe
function exampleEqualFold():Void
```


 


[\(view code\)](<./Bytes.hx#L4730>)


## function exampleFields


```haxe
function exampleFields():Void
```


 


[\(view code\)](<./Bytes.hx#L4734>)


## function exampleFieldsFunc


```haxe
function exampleFieldsFunc():Void
```


 


[\(view code\)](<./Bytes.hx#L4738>)


## function exampleHasPrefix


```haxe
function exampleHasPrefix():Void
```


 


[\(view code\)](<./Bytes.hx#L4745>)


## function exampleHasSuffix


```haxe
function exampleHasSuffix():Void
```


 


[\(view code\)](<./Bytes.hx#L4751>)


## function exampleIndex


```haxe
function exampleIndex():Void
```


 


[\(view code\)](<./Bytes.hx#L4758>)


## function exampleIndexAny


```haxe
function exampleIndexAny():Void
```


 


[\(view code\)](<./Bytes.hx#L4776>)


## function exampleIndexByte


```haxe
function exampleIndexByte():Void
```


 


[\(view code\)](<./Bytes.hx#L4763>)


## function exampleIndexFunc


```haxe
function exampleIndexFunc():Void
```


 


[\(view code\)](<./Bytes.hx#L4768>)


## function exampleIndexRune


```haxe
function exampleIndexRune():Void
```


 


[\(view code\)](<./Bytes.hx#L4781>)


## function exampleJoin


```haxe
function exampleJoin():Void
```


 


[\(view code\)](<./Bytes.hx#L4786>)


## function exampleLastIndex


```haxe
function exampleLastIndex():Void
```


 


[\(view code\)](<./Bytes.hx#L4792>)


## function exampleLastIndexAny


```haxe
function exampleLastIndexAny():Void
```


 


[\(view code\)](<./Bytes.hx#L4798>)


## function exampleLastIndexByte


```haxe
function exampleLastIndexByte():Void
```


 


[\(view code\)](<./Bytes.hx#L4804>)


## function exampleLastIndexFunc


```haxe
function exampleLastIndexFunc():Void
```


 


[\(view code\)](<./Bytes.hx#L4810>)


## function exampleReader\_Len


```haxe
function exampleReader_Len():Void
```


 


[\(view code\)](<./Bytes.hx#L4816>)


## function exampleRepeat


```haxe
function exampleRepeat():Void
```


 


[\(view code\)](<./Bytes.hx#L4821>)


## function exampleReplace


```haxe
function exampleReplace():Void
```


 


[\(view code\)](<./Bytes.hx#L4825>)


## function exampleReplaceAll


```haxe
function exampleReplaceAll():Void
```


 


[\(view code\)](<./Bytes.hx#L4834>)


## function exampleRunes


```haxe
function exampleRunes():Void
```


 


[\(view code\)](<./Bytes.hx#L4840>)


## function exampleSplit


```haxe
function exampleSplit():Void
```


 


[\(view code\)](<./Bytes.hx#L4847>)


## function exampleSplitAfter


```haxe
function exampleSplitAfter():Void
```


 


[\(view code\)](<./Bytes.hx#L4862>)


## function exampleSplitAfterN


```haxe
function exampleSplitAfterN():Void
```


 


[\(view code\)](<./Bytes.hx#L4866>)


## function exampleSplitN


```haxe
function exampleSplitN():Void
```


 


[\(view code\)](<./Bytes.hx#L4855>)


## function exampleTitle


```haxe
function exampleTitle():Void
```


 


[\(view code\)](<./Bytes.hx#L4871>)


## function exampleToLower


```haxe
function exampleToLower():Void
```


 


[\(view code\)](<./Bytes.hx#L4937>)


## function exampleToLowerSpecial


```haxe
function exampleToLowerSpecial():Void
```


 


[\(view code\)](<./Bytes.hx#L4941>)


## function exampleToTitle


```haxe
function exampleToTitle():Void
```


 


[\(view code\)](<./Bytes.hx#L4875>)


## function exampleToTitleSpecial


```haxe
function exampleToTitleSpecial():Void
```


 


[\(view code\)](<./Bytes.hx#L4880>)


## function exampleToUpper


```haxe
function exampleToUpper():Void
```


 


[\(view code\)](<./Bytes.hx#L4948>)


## function exampleToUpperSpecial


```haxe
function exampleToUpperSpecial():Void
```


 


[\(view code\)](<./Bytes.hx#L4952>)


## function exampleTrim


```haxe
function exampleTrim():Void
```


 


[\(view code\)](<./Bytes.hx#L4887>)


## function exampleTrimFunc


```haxe
function exampleTrimFunc():Void
```


 


[\(view code\)](<./Bytes.hx#L4891>)


## function exampleTrimLeft


```haxe
function exampleTrimLeft():Void
```


 


[\(view code\)](<./Bytes.hx#L4898>)


## function exampleTrimLeftFunc


```haxe
function exampleTrimLeftFunc():Void
```


 


[\(view code\)](<./Bytes.hx#L4902>)


## function exampleTrimPrefix


```haxe
function exampleTrimPrefix():Void
```


 


[\(view code\)](<./Bytes.hx#L4908>)


## function exampleTrimRight


```haxe
function exampleTrimRight():Void
```


 


[\(view code\)](<./Bytes.hx#L4927>)


## function exampleTrimRightFunc


```haxe
function exampleTrimRightFunc():Void
```


 


[\(view code\)](<./Bytes.hx#L4931>)


## function exampleTrimSpace


```haxe
function exampleTrimSpace():Void
```


 


[\(view code\)](<./Bytes.hx#L4915>)


## function exampleTrimSuffix


```haxe
function exampleTrimSuffix():Void
```


 


[\(view code\)](<./Bytes.hx#L4919>)


## function testBasicOperations


```haxe
function testBasicOperations(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L1578>)


## function testBufferGrowNegative


```haxe
function testBufferGrowNegative(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3755>)


## function testBufferGrowth


```haxe
function testBufferGrowth(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Tests that we occasionally compact. Issue 5154. 


[\(view code\)](<./Bytes.hx#L2263>)


## function testBufferTruncateNegative


```haxe
function testBufferTruncateNegative(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3799>)


## function testBufferTruncateOutOfRange


```haxe
function testBufferTruncateOutOfRange(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3843>)


## function testCapWithPreallocatedSlice


```haxe
function testCapWithPreallocatedSlice(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L1736>)


## function testCapWithSliceAndWrittenData


```haxe
function testCapWithSliceAndWrittenData(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L1744>)


## function testCompare


```haxe
function testCompare(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L4315>)


## function testCompareBytes


```haxe
function testCompareBytes(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L4345>)


## function testCompareIdenticalSlice


```haxe
function testCompareIdenticalSlice(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L4335>)


## function testContains


```haxe
function testContains(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3888>)


## function testContainsAny


```haxe
function testContainsAny(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3900>)


## function testContainsRune


```haxe
function testContainsRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3909>)


## function testCountByte


```haxe
function testCountByte(_t:stdgo.Ref<stdgo.testing.T>):Void
```


test count of a single byte across page offsets 


[\(view code\)](<./Bytes.hx#L2784>)


## function testCountByteNoMatch


```haxe
function testCountByteNoMatch(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Make sure we don't count bytes outside our window 


[\(view code\)](<./Bytes.hx#L2841>)


## function testCut


```haxe
function testCut(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3740>)


## function testEmptyReaderConcurrent


```haxe
function testEmptyReaderConcurrent(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L5139>)


## function testEndianBaseCompare


```haxe
function testEndianBaseCompare(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L4410>)


## function testEqual


```haxe
function testEqual(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L2407>)


## function testEqualExhaustive


```haxe
function testEqualExhaustive(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L2421>)


## function testEqualFold


```haxe
function testEqualFold(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3721>)


## function testFields


```haxe
function testFields(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3197>)


## function testFieldsFunc


```haxe
function testFieldsFunc(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3224>)


## function testGrow


```haxe
function testGrow(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L2105>)


## function testGrowOverflow


```haxe
function testGrowOverflow(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L2136>)


## function testIndex


```haxe
function testIndex(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L2553>)


## function testIndexAny


```haxe
function testIndexAny(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L2561>)


## function testIndexByte


```haxe
function testIndexByte(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L2569>)


## function testIndexByteBig


```haxe
function testIndexByteBig(_t:stdgo.Ref<stdgo.testing.T>):Void
```


test a larger buffer with different sizes and alignments 


[\(view code\)](<./Bytes.hx#L2609>)


## function testIndexByteSmall


```haxe
function testIndexByteSmall(_t:stdgo.Ref<stdgo.testing.T>):Void
```


test a small index across all page offsets 


[\(view code\)](<./Bytes.hx#L2673>)


## function testIndexFunc


```haxe
function testIndexFunc(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3653>)


## function testIndexRune


```haxe
function testIndexRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L2731>)


## function testLargeByteReads


```haxe
function testLargeByteReads(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L1696>)


## function testLargeByteWrites


```haxe
function testLargeByteWrites(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L1664>)


## function testLargeStringReads


```haxe
function testLargeStringReads(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L1682>)


## function testLargeStringWrites


```haxe
function testLargeStringWrites(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L1646>)


## function testLastIndex


```haxe
function testLastIndex(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L2557>)


## function testLastIndexAny


```haxe
function testLastIndexAny(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L2565>)


## function testLastIndexByte


```haxe
function testLastIndexByte(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L2587>)


## function testMap


```haxe
function testMap(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3310>)


## function testMixedReadsAndWrites


```haxe
function testMixedReadsAndWrites(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L1710>)


## function testNewBuffer


```haxe
function testNewBuffer(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L1546>)


## function testNewBufferString


```haxe
function testNewBufferString(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L1551>)


## function testNext


```haxe
function testNext(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L1996>)


## function testNil


```haxe
function testNil(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L1753>)


## function testNotEqual


```haxe
function testNotEqual(_t:stdgo.Ref<stdgo.testing.T>):Void
```


make sure Equal returns false for minimally different strings. The data��// is all zeros except for a single one in one location. 


[\(view code\)](<./Bytes.hx#L2463>)


## function testReadAfterBigSeek


```haxe
function testReadAfterBigSeek(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L5027>)


## function testReadBytes


```haxe
function testReadBytes(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L2038>)


## function testReadEmptyAtEOF


```haxe
function testReadEmptyAtEOF(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Was a bug: used to give EOF reading empty slice at EOF. 


[\(view code\)](<./Bytes.hx#L2184>)


## function testReadFrom


```haxe
function testReadFrom(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L1760>)


## function testReadFromNegativeReader


```haxe
function testReadFromNegativeReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L1830>)


## function testReadFromPanicReader


```haxe
function testReadFromPanicReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Make sure that an empty Buffer remains empty when��// it is "grown" before a Read that panics 


[\(view code\)](<./Bytes.hx#L1779>)


## function testReadString


```haxe
function testReadString(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L2062>)


## function testReader


```haxe
function testReader(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L4959>)


## function testReaderAt


```haxe
function testReaderAt(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L5047>)


## function testReaderAtConcurrent


```haxe
function testReaderAtConcurrent(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L5095>)


## function testReaderCopyNothing


```haxe
function testReaderCopyNothing(_t:stdgo.Ref<stdgo.testing.T>):Void
```


verify that copying from an empty reader always has the same results,��// regardless of the presence of a WriteTo method. 


[\(view code\)](<./Bytes.hx#L5396>)


## function testReaderDoubleUnreadRune


```haxe
function testReaderDoubleUnreadRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L5315>)


## function testReaderLen


```haxe
function testReaderLen(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L5247>)


## function testReaderLenSize


```haxe
function testReaderLenSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```


tests that Len is affected by reads, but Size is not. 


[\(view code\)](<./Bytes.hx#L5424>)


## function testReaderReset


```haxe
function testReaderReset(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L5437>)


## function testReaderWriteTo


```haxe
function testReaderWriteTo(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L5214>)


## function testReaderZero


```haxe
function testReaderZero(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L5470>)


## function testRepeat


```haxe
function testRepeat(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3415>)


## function testRepeatCatchesOverflow


```haxe
function testRepeatCatchesOverflow(_t:stdgo.Ref<stdgo.testing.T>):Void
```


See Issue golang.org/issue/16237 


[\(view code\)](<./Bytes.hx#L3490>)


## function testReplace


```haxe
function testReplace(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3668>)


## function testRuneIO


```haxe
function testRuneIO(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L1900>)


## function testRunes


```haxe
function testRunes(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3534>)


## function testSplit


```haxe
function testSplit(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3118>)


## function testSplitAfter


```haxe
function testSplitAfter(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3163>)


## function testTitle


```haxe
function testTitle(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3699>)


## function testToLower


```haxe
function testToLower(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3363>)


## function testToTitle


```haxe
function testToTitle(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3710>)


## function testToUpper


```haxe
function testToUpper(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3359>)


## function testToValidUTF8


```haxe
function testToValidUTF8(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3401>)


## function testTrim


```haxe
function testTrim(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3551>)


## function testTrimFunc


```haxe
function testTrimFunc(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3630>)


## function testTrimSpace


```haxe
function testTrimSpace(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L3411>)


## function testUnreadByte


```haxe
function testUnreadByte(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L2198>)


## function testUnreadRuneError


```haxe
function testUnreadRuneError(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L5295>)


## function testWriteInvalidRune


```haxe
function testWriteInvalidRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L1988>)


## function testWriteTo


```haxe
function testWriteTo(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Bytes.hx#L1885>)


## function main


```haxe
function main():Void
```


 


[\(view code\)](<./Bytes.hx#L353>)


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


 


[\(view code\)](<./Bytes_test.hx#L852>)


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


 


[\(view code\)](<./Bytes_test.hx#L892>)


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


 


[\(view code\)](<./Bytes_test.hx#L1054>)


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


 


[\(view code\)](<./Bytes_test.hx#L929>)


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


 


[\(view code\)](<./Bytes_test.hx#L1077>)


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


 


[\(view code\)](<./Bytes_test.hx#L948>)


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


 


[\(view code\)](<./Bytes_test.hx#L872>)


## class StringTest


Test case for any function which accepts and returns a byte slice.��// For ease of creation, we write the input byte slice as a string. 


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


 


[\(view code\)](<./Bytes_test.hx#L912>)


## class T\_justReader\_testReaderCopyNothing\_1\_static\_extension


 


### T\_justReader\_testReaderCopyNothing\_1\_static\_extension function read


```haxe
function read(__self__:stdgo.bytes_test._Bytes_test.T_justReader_testReaderCopyNothing_1, __0:stdgo.Slice<stdgo.GoUInt8>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Bytes_test.hx#L5633>)


## class T\_justWriter\_testReaderCopyNothing\_2\_static\_extension


 


### T\_justWriter\_testReaderCopyNothing\_2\_static\_extension function write


```haxe
function write(__self__:stdgo.bytes_test._Bytes_test.T_justWriter_testReaderCopyNothing_2, __0:stdgo.Slice<stdgo.GoUInt8>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Bytes_test.hx#L5658>)


## class T\_negativeReader\_static\_extension


 


### T\_negativeReader\_static\_extension function read


```haxe
function read(_r:stdgo.Ref<stdgo.bytes_test._Bytes_test.T_negativeReader>, _0:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Bytes_test.hx#L5577>)


## class T\_panicReader\_static\_extension


 


### T\_panicReader\_static\_extension function read


```haxe
function read(_r:stdgo.bytes_test._Bytes_test.T_panicReader, _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Bytes_test.hx#L5603>)


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


 


[\(view code\)](<./Bytes_test.hx#L1099>)


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


 


[\(view code\)](<./Bytes_test.hx#L1029>)


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


 


[\(view code\)](<./Bytes_test.hx#L990>)


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


 


[\(view code\)](<./Bytes_test.hx#L968>)


