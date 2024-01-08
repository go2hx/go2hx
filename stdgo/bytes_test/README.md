# Module: `stdgo.bytes`

[(view library index)](../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _benchBytes(_b:stdgo.Ref<stdgo.testing.B>, _sizes:stdgo.Slice<stdgo.GoInt>, _f:(_b:stdgo.Ref<stdgo.testing.B>, _n:stdgo.GoInt):Void):Void`](<#function-_benchbytes>)

- [`function _benchmarkCompareBytesBigBothUnaligned(_b:stdgo.Ref<stdgo.testing.B>, _offset:stdgo.GoInt):Void`](<#function-_benchmarkcomparebytesbigbothunaligned>)

- [`function _benchmarkCompareBytesBigUnaligned(_b:stdgo.Ref<stdgo.testing.B>, _offset:stdgo.GoInt):Void`](<#function-_benchmarkcomparebytesbigunaligned>)

- [`function _benchmarkCountHard(_b:stdgo.Ref<stdgo.testing.B>, _sep:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_benchmarkcounthard>)

- [`function _benchmarkIndexHard(_b:stdgo.Ref<stdgo.testing.B>, _sep:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_benchmarkindexhard>)

- [`function _benchmarkLastIndexHard(_b:stdgo.Ref<stdgo.testing.B>, _sep:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_benchmarklastindexhard>)

- [`function _bmEqual(_equal:(:stdgo.Slice<stdgo.GoByte>, :stdgo.Slice<stdgo.GoByte>):Bool):(_b:stdgo.Ref<stdgo.testing.B>, _n:stdgo.GoInt):Void`](<#function-_bmequal>)

- [`function _bmIndexByte(_index:(:stdgo.Slice<stdgo.GoByte>, :stdgo.GoByte):stdgo.GoInt):(_b:stdgo.Ref<stdgo.testing.B>, _n:stdgo.GoInt):Void`](<#function-_bmindexbyte>)

- [`function _bmIndexRune(_index:(:stdgo.Slice<stdgo.GoByte>, :stdgo.GoRune):stdgo.GoInt):(_b:stdgo.Ref<stdgo.testing.B>, _n:stdgo.GoInt):Void`](<#function-_bmindexrune>)

- [`function _bmIndexRuneASCII(_index:(:stdgo.Slice<stdgo.GoByte>, :stdgo.GoRune):stdgo.GoInt):(_b:stdgo.Ref<stdgo.testing.B>, _n:stdgo.GoInt):Void`](<#function-_bmindexruneascii>)

- [`function _check(_t:stdgo.Ref<stdgo.testing.T_>, _testname:stdgo.GoString, _buf:stdgo.Ref<stdgo.bytes.Buffer>, _s:stdgo.GoString):Void`](<#function-_check>)

- [`function _empty(_t:stdgo.Ref<stdgo.testing.T_>, _testname:stdgo.GoString, _buf:stdgo.Ref<stdgo.bytes.Buffer>, _s:stdgo.GoString, _fub:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_empty>)

- [`function _eq(_a:stdgo.Slice<stdgo.GoString>, _b:stdgo.Slice<stdgo.GoString>):Bool`](<#function-_eq>)

- [`function _fillBytes(_t:stdgo.Ref<stdgo.testing.T_>, _testname:stdgo.GoString, _buf:stdgo.Ref<stdgo.bytes.Buffer>, _s:stdgo.GoString, _n:stdgo.GoInt, _fub:stdgo.Slice<stdgo.GoByte>):stdgo.GoString`](<#function-_fillbytes>)

- [`function _fillString(_t:stdgo.Ref<stdgo.testing.T_>, _testname:stdgo.GoString, _buf:stdgo.Ref<stdgo.bytes.Buffer>, _s:stdgo.GoString, _n:stdgo.GoInt, _fus:stdgo.GoString):stdgo.GoString`](<#function-_fillstring>)

- [`function _makeBenchInputHard():stdgo.Slice<stdgo.GoByte>`](<#function-_makebenchinputhard>)

- [`function _makeFieldsInput():stdgo.Slice<stdgo.GoUInt8>`](<#function-_makefieldsinput>)

- [`function _makeFieldsInputASCII():stdgo.Slice<stdgo.GoUInt8>`](<#function-_makefieldsinputascii>)

- [`function _not(_p:stdgo.bytes_test.T_predicate):stdgo.bytes_test.T_predicate`](<#function-_not>)

- [`function _repeat(_b:stdgo.Slice<stdgo.GoByte>, _count:stdgo.GoInt):stdgo.Error`](<#function-_repeat>)

- [`function _rot13(_r:stdgo.GoRune):stdgo.GoRune`](<#function-_rot13>)

- [`function _runIndexAnyTests(_t:stdgo.Ref<stdgo.testing.T_>, _f:(_s:stdgo.Slice<stdgo.GoByte>, _chars:stdgo.GoString):stdgo.GoInt, _funcName:stdgo.GoString, _testCases:stdgo.Slice<stdgo.bytes_test.BinOpTest>):Void`](<#function-_runindexanytests>)

- [`function _runIndexTests(_t:stdgo.Ref<stdgo.testing.T_>, _f:(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt, _funcName:stdgo.GoString, _testCases:stdgo.Slice<stdgo.bytes_test.BinOpTest>):Void`](<#function-_runindextests>)

- [`function _runStringTests(_t:stdgo.Ref<stdgo.testing.T_>, _f:(), _funcName:stdgo.GoString, _testCases:stdgo.Slice<stdgo.bytes_test.StringTest>):Void`](<#function-_runstringtests>)

- [`function _runesEqual(_a:stdgo.Slice<stdgo.GoRune>, _b:stdgo.Slice<stdgo.GoRune>):Bool`](<#function-_runesequal>)

- [`function _sliceOfString(_s:stdgo.Slice<stdgo.Slice<stdgo.GoByte>>):stdgo.Slice<stdgo.GoString>`](<#function-_sliceofstring>)

- [`function _tenRunes(_r:stdgo.GoRune):stdgo.GoString`](<#function-_tenrunes>)

- [`function _valName(_x:stdgo.GoInt):stdgo.GoString`](<#function-_valname>)

- [`function benchmarkBufferAppendNoCopy(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkbufferappendnocopy>)

- [`function benchmarkBufferFullSmallReads(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkbufferfullsmallreads>)

- [`function benchmarkBufferNotEmptyWriteRead(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkbuffernotemptywriteread>)

- [`function benchmarkBufferWriteBlock(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkbufferwriteblock>)

- [`function benchmarkBytesCompare(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkbytescompare>)

- [`function benchmarkCompareBytesBig(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkcomparebytesbig>)

- [`function benchmarkCompareBytesBigBothUnaligned(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkcomparebytesbigbothunaligned>)

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

- [`function benchmarkEqualBothUnaligned(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkequalbothunaligned>)

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

- [`function exampleBuffer_AvailableBuffer():Void`](<#function-examplebuffer_availablebuffer>)

- [`function exampleBuffer_Bytes():Void`](<#function-examplebuffer_bytes>)

- [`function exampleBuffer_Cap():Void`](<#function-examplebuffer_cap>)

- [`function exampleBuffer_Grow():Void`](<#function-examplebuffer_grow>)

- [`function exampleBuffer_Len():Void`](<#function-examplebuffer_len>)

- [`function exampleBuffer_Next():Void`](<#function-examplebuffer_next>)

- [`function exampleBuffer_Read():Void`](<#function-examplebuffer_read>)

- [`function exampleBuffer_ReadByte():Void`](<#function-examplebuffer_readbyte>)

- [`function exampleBuffer_reader():Void`](<#function-examplebuffer_reader>)

- [`function exampleClone():Void`](<#function-exampleclone>)

- [`function exampleCompare():Void`](<#function-examplecompare>)

- [`function exampleCompare_search():Void`](<#function-examplecompare_search>)

- [`function exampleContains():Void`](<#function-examplecontains>)

- [`function exampleContainsAny():Void`](<#function-examplecontainsany>)

- [`function exampleContainsRune():Void`](<#function-examplecontainsrune>)

- [`function exampleCount():Void`](<#function-examplecount>)

- [`function exampleCut():Void`](<#function-examplecut>)

- [`function exampleCutPrefix():Void`](<#function-examplecutprefix>)

- [`function exampleCutSuffix():Void`](<#function-examplecutsuffix>)

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

- [`function exampleMap():Void`](<#function-examplemap>)

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

- [`function testBasicOperations(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testbasicoperations>)

- [`function testBufferGrowNegative(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testbuffergrownegative>)

- [`function testBufferGrowth(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testbuffergrowth>)

- [`function testBufferTruncateNegative(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testbuffertruncatenegative>)

- [`function testBufferTruncateOutOfRange(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testbuffertruncateoutofrange>)

- [`function testCapWithPreallocatedSlice(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcapwithpreallocatedslice>)

- [`function testCapWithSliceAndWrittenData(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcapwithsliceandwrittendata>)

- [`function testClone(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testclone>)

- [`function testCompare(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcompare>)

- [`function testCompareBytes(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcomparebytes>)

- [`function testCompareIdenticalSlice(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcompareidenticalslice>)

- [`function testContains(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcontains>)

- [`function testContainsAny(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcontainsany>)

- [`function testContainsFunc(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcontainsfunc>)

- [`function testContainsRune(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcontainsrune>)

- [`function testCountByte(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcountbyte>)

- [`function testCountByteNoMatch(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcountbytenomatch>)

- [`function testCut(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcut>)

- [`function testCutPrefix(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcutprefix>)

- [`function testCutSuffix(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcutsuffix>)

- [`function testEmptyReaderConcurrent(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testemptyreaderconcurrent>)

- [`function testEndianBaseCompare(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testendianbasecompare>)

- [`function testEqual(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testequal>)

- [`function testEqualExhaustive(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testequalexhaustive>)

- [`function testEqualFold(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testequalfold>)

- [`function testFields(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testfields>)

- [`function testFieldsFunc(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testfieldsfunc>)

- [`function testGrow(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testgrow>)

- [`function testGrowOverflow(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testgrowoverflow>)

- [`function testIndex(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testindex>)

- [`function testIndexAny(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testindexany>)

- [`function testIndexByte(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testindexbyte>)

- [`function testIndexByteBig(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testindexbytebig>)

- [`function testIndexByteSmall(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testindexbytesmall>)

- [`function testIndexFunc(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testindexfunc>)

- [`function testIndexRune(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testindexrune>)

- [`function testLargeByteReads(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testlargebytereads>)

- [`function testLargeByteWrites(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testlargebytewrites>)

- [`function testLargeStringReads(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testlargestringreads>)

- [`function testLargeStringWrites(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testlargestringwrites>)

- [`function testLastIndex(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testlastindex>)

- [`function testLastIndexAny(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testlastindexany>)

- [`function testLastIndexByte(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testlastindexbyte>)

- [`function testMap(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testmap>)

- [`function testMixedReadsAndWrites(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testmixedreadsandwrites>)

- [`function testNewBuffer(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testnewbuffer>)

- [`function testNewBufferString(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testnewbufferstring>)

- [`function testNext(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testnext>)

- [`function testNil(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testnil>)

- [`function testNotEqual(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testnotequal>)

- [`function testReadAfterBigSeek(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreadafterbigseek>)

- [`function testReadBytes(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreadbytes>)

- [`function testReadEmptyAtEOF(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreademptyateof>)

- [`function testReadFrom(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreadfrom>)

- [`function testReadFromNegativeReader(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreadfromnegativereader>)

- [`function testReadFromPanicReader(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreadfrompanicreader>)

- [`function testReadString(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreadstring>)

- [`function testReader(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreader>)

- [`function testReaderAt(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreaderat>)

- [`function testReaderAtConcurrent(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreaderatconcurrent>)

- [`function testReaderCopyNothing(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreadercopynothing>)

- [`function testReaderDoubleUnreadRune(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreaderdoubleunreadrune>)

- [`function testReaderLen(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreaderlen>)

- [`function testReaderLenSize(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreaderlensize>)

- [`function testReaderReset(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreaderreset>)

- [`function testReaderWriteTo(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreaderwriteto>)

- [`function testReaderZero(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreaderzero>)

- [`function testRepeat(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testrepeat>)

- [`function testRepeatCatchesOverflow(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testrepeatcatchesoverflow>)

- [`function testReplace(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreplace>)

- [`function testRuneIO(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testruneio>)

- [`function testRunes(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testrunes>)

- [`function testSplit(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testsplit>)

- [`function testSplitAfter(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testsplitafter>)

- [`function testTitle(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testtitle>)

- [`function testToLower(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testtolower>)

- [`function testToTitle(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testtotitle>)

- [`function testToUpper(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testtoupper>)

- [`function testToValidUTF8(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testtovalidutf8>)

- [`function testTrim(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testtrim>)

- [`function testTrimFunc(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testtrimfunc>)

- [`function testTrimSpace(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testtrimspace>)

- [`function testUnreadByte(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testunreadbyte>)

- [`function testUnreadRuneError(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testunreadruneerror>)

- [`function testWriteAppend(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testwriteappend>)

- [`function testWriteInvalidRune(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testwriteinvalidrune>)

- [`function testWriteTo(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testwriteto>)

- [`function main():Void`](<#function-main>)

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

- [class T\_testReaderCopyNothing\_10\_\_\_localname\_\_\_justWriter](<#class-t_testreadercopynothing_10localnamejustwriter>)

  - [`function new(?writer:Null<stdgo.io.Writer>):Void`](<#t_testreadercopynothing_10localnamejustwriter-function-new>)

  - [`function write(__0:stdgo.Slice<stdgo.GoUInt8>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#t_testreadercopynothing_10localnamejustwriter-function-write>)

  - [`function write( __0:stdgo.Slice<stdgo.GoUInt8>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#t_testreadercopynothing_10localnamejustwriter-function-write>)

- [class T\_testReaderCopyNothing\_8\_\_\_localname\_\_\_nErr](<#class-t_testreadercopynothing_8localnamenerr>)

  - [`function new(?_n:stdgo.GoInt64, ?_err:Null<stdgo.Error>):Void`](<#t_testreadercopynothing_8localnamenerr-function-new>)

- [class T\_testReaderCopyNothing\_9\_\_\_localname\_\_\_justReader](<#class-t_testreadercopynothing_9localnamejustreader>)

  - [`function new(?reader:Null<stdgo.io.Reader>):Void`](<#t_testreadercopynothing_9localnamejustreader-function-new>)

  - [`function read(__0:stdgo.Slice<stdgo.GoUInt8>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#t_testreadercopynothing_9localnamejustreader-function-read>)

  - [`function read( __0:stdgo.Slice<stdgo.GoUInt8>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#t_testreadercopynothing_9localnamejustreader-function-read>)

- [class TitleTest](<#class-titletest>)

  - [`function new(?_in:stdgo.GoString, ?_out:stdgo.GoString):Void`](<#titletest-function-new>)

- [class TrimFuncTest](<#class-trimfunctest>)

  - [`function new(?_f:stdgo.bytes_test.T_predicate, ?_in:stdgo.GoString, ?_trimOut:stdgo.Slice<stdgo.GoUInt8>, ?_leftOut:stdgo.Slice<stdgo.GoUInt8>, ?_rightOut:stdgo.Slice<stdgo.GoUInt8>):Void`](<#trimfunctest-function-new>)

- [class TrimNilTest](<#class-trimniltest>)

  - [`function new(?_f:stdgo.GoString, ?_in:stdgo.Slice<stdgo.GoUInt8>, ?_arg:stdgo.GoString, ?_out:stdgo.Slice<stdgo.GoUInt8>):Void`](<#trimniltest-function-new>)

- [class TrimTest](<#class-trimtest>)

  - [`function new(?_f:stdgo.GoString, ?_in:stdgo.GoString, ?_arg:stdgo.GoString, ?_out:stdgo.GoString):Void`](<#trimtest-function-new>)

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

- [typedef T\_\_struct\_2](<#typedef-t__struct_2>)

- [typedef T\_\_struct\_3](<#typedef-t__struct_3>)

- [typedef T\_\_struct\_4](<#typedef-t__struct_4>)

- [typedef T\_\_struct\_5](<#typedef-t__struct_5>)

- [typedef T\_\_struct\_6](<#typedef-t__struct_6>)

- [typedef T\_\_struct\_7](<#typedef-t__struct_7>)

- [typedef T\_\_struct\_8](<#typedef-t__struct_8>)

- [typedef T\_\_struct\_9](<#typedef-t__struct_9>)

# Constants


```haxe
import stdgo.bytes_test.Bytes
```


```haxe
final _space:stdgo.GoString = (("\t\x0B\r\x0C\n�  　" : stdgo.GoString))
```


```haxe
final n:stdgo.GoUInt64 = ((10000i64 : stdgo.StdGoTypes.GoUInt64))
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
var _abcd:stdgo.GoString
```


```haxe
var _benchInputHard:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _bmbuf:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _bytesdata:stdgo.Slice<stdgo.bytes_test.T__struct_13>
```


```haxe
var _commas:stdgo.GoString
```


```haxe
var _compareTests:stdgo.Slice<stdgo.bytes_test.T__struct_1>
```


```haxe
var _containsTests:stdgo.Slice<stdgo.bytes_test.T__struct_10>
```


```haxe
var _cutPrefixTests:stdgo.Slice<stdgo.bytes_test.T__struct_8>
```


```haxe
var _cutSuffixTests:stdgo.Slice<stdgo.bytes_test.T__struct_9>
```


```haxe
var _cutTests:stdgo.Slice<stdgo.bytes_test.T__struct_7>
```


```haxe
var _dots:stdgo.GoString
```


```haxe
var _faces:stdgo.GoString
```


```haxe
var _fieldstests:stdgo.Slice<stdgo.bytes_test.FieldsTest>
```


```haxe
var _indexAnyTests:stdgo.Slice<stdgo.bytes_test.BinOpTest>
```


```haxe
var _indexFuncTests:stdgo.Slice<stdgo.bytes_test.IndexFuncTest>
```


```haxe
var _indexSizes:stdgo.Slice<stdgo.GoInt>
```


```haxe
var _indexTests:stdgo.Slice<stdgo.bytes_test.BinOpTest>
```


```haxe
var _isDigit:stdgo.bytes_test.T_predicate
```


```haxe
var _isRaceBuilder:Bool
```


```haxe
var _isSpace:stdgo.bytes_test.T_predicate
```


```haxe
var _isUpper:stdgo.bytes_test.T_predicate
```


```haxe
var _isValidRune:stdgo.bytes_test.T_predicate
```


```haxe
var _lastIndexAnyTests:stdgo.Slice<stdgo.bytes_test.BinOpTest>
```


```haxe
var _lastIndexTests:stdgo.Slice<stdgo.bytes_test.BinOpTest>
```


```haxe
var _longString:stdgo.GoString
```


```haxe
var _lowerTests:stdgo.Slice<stdgo.bytes_test.StringTest>
```


```haxe
var _readBytesTests:stdgo.Slice<stdgo.bytes_test.T__struct_0>
```


```haxe
var _splitaftertests:stdgo.Slice<stdgo.bytes_test.SplitTest>
```


```haxe
var _splittests:stdgo.Slice<stdgo.bytes_test.SplitTest>
```


```haxe
var _testBytes:stdgo.Slice<stdgo.GoUInt8>
```



test data; same as testString but as a slice.  

```haxe
var _testString:stdgo.GoString
```



test data for write tests  

```haxe
var _toValidUTF8Tests:stdgo.Slice<stdgo.bytes_test.T__struct_3>
```


```haxe
var _trimFuncTests:stdgo.Slice<stdgo.bytes_test.TrimFuncTest>
```


```haxe
var _trimNilTests:stdgo.Slice<stdgo.bytes_test.TrimNilTest>
```


```haxe
var _trimSpaceTests:stdgo.Slice<stdgo.bytes_test.StringTest>
```


```haxe
var _trimTests:stdgo.Slice<stdgo.bytes_test.TrimTest>
```


```haxe
var _upperTests:stdgo.Slice<stdgo.bytes_test.StringTest>
```


```haxe
var containsAnyTests:stdgo.Slice<stdgo.bytes_test.T__struct_11>
```


```haxe
var containsRuneTests:stdgo.Slice<stdgo.bytes_test.T__struct_12>
```


```haxe
var equalFoldTests:stdgo.Slice<stdgo.bytes_test.T__struct_6>
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
var unreadRuneErrorTests:stdgo.Slice<stdgo.bytes_test.T__struct_17>
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
import stdgo.bytes_test.Bytes
```


## function \_benchBytes


```haxe
function _benchBytes(_b:stdgo.Ref<stdgo.testing.B>, _sizes:stdgo.Slice<stdgo.GoInt>, _f:(_b:stdgo.Ref<stdgo.testing.B>, _n:stdgo.GoInt):Void):Void
```


[\(view code\)](<./Bytes.hx#L2679>)


## function \_benchmarkCompareBytesBigBothUnaligned


```haxe
function _benchmarkCompareBytesBigBothUnaligned(_b:stdgo.Ref<stdgo.testing.B>, _offset:stdgo.GoInt):Void
```


[\(view code\)](<./Bytes.hx#L4304>)


## function \_benchmarkCompareBytesBigUnaligned


```haxe
function _benchmarkCompareBytesBigUnaligned(_b:stdgo.Ref<stdgo.testing.B>, _offset:stdgo.GoInt):Void
```


[\(view code\)](<./Bytes.hx#L4276>)


## function \_benchmarkCountHard


```haxe
function _benchmarkCountHard(_b:stdgo.Ref<stdgo.testing.B>, _sep:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L3775>)


## function \_benchmarkIndexHard


```haxe
function _benchmarkIndexHard(_b:stdgo.Ref<stdgo.testing.B>, _sep:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L3759>)


## function \_benchmarkLastIndexHard


```haxe
function _benchmarkLastIndexHard(_b:stdgo.Ref<stdgo.testing.B>, _sep:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L3767>)


## function \_bmEqual


```haxe
function _bmEqual(_equal:(:stdgo.Slice<stdgo.GoByte>, :stdgo.Slice<stdgo.GoByte>):Bool):(_b:stdgo.Ref<stdgo.testing.B>, _n:stdgo.GoInt):Void
```


[\(view code\)](<./Bytes.hx#L2785>)


## function \_bmIndexByte


```haxe
function _bmIndexByte(_index:(:stdgo.Slice<stdgo.GoByte>, :stdgo.GoByte):stdgo.GoInt):(_b:stdgo.Ref<stdgo.testing.B>, _n:stdgo.GoInt):Void
```


[\(view code\)](<./Bytes.hx#L2699>)


## function \_bmIndexRune


```haxe
function _bmIndexRune(_index:(:stdgo.Slice<stdgo.GoByte>, :stdgo.GoRune):stdgo.GoInt):(_b:stdgo.Ref<stdgo.testing.B>, _n:stdgo.GoInt):Void
```


[\(view code\)](<./Bytes.hx#L2737>)


## function \_bmIndexRuneASCII


```haxe
function _bmIndexRuneASCII(_index:(:stdgo.Slice<stdgo.GoByte>, :stdgo.GoRune):stdgo.GoInt):(_b:stdgo.Ref<stdgo.testing.B>, _n:stdgo.GoInt):Void
```


[\(view code\)](<./Bytes.hx#L2721>)


## function \_check


```haxe
function _check(_t:stdgo.Ref<stdgo.testing.T_>, _testname:stdgo.GoString, _buf:stdgo.Ref<stdgo.bytes.Buffer>, _s:stdgo.GoString):Void
```



Verify that contents of buf match the string s.  

[\(view code\)](<./Bytes.hx#L1353>)


## function \_empty


```haxe
function _empty(_t:stdgo.Ref<stdgo.testing.T_>, _testname:stdgo.GoString, _buf:stdgo.Ref<stdgo.bytes.Buffer>, _s:stdgo.GoString, _fub:stdgo.Slice<stdgo.GoByte>):Void
```



Empty buf through repeated reads into fub.
The initial contents of buf corresponds to the string s.  

[\(view code\)](<./Bytes.hx#L1421>)


## function \_eq


```haxe
function _eq(_a:stdgo.Slice<stdgo.GoString>, _b:stdgo.Slice<stdgo.GoString>):Bool
```


[\(view code\)](<./Bytes.hx#L2188>)


## function \_fillBytes


```haxe
function _fillBytes(_t:stdgo.Ref<stdgo.testing.T_>, _testname:stdgo.GoString, _buf:stdgo.Ref<stdgo.bytes.Buffer>, _s:stdgo.GoString, _n:stdgo.GoInt, _fub:stdgo.Slice<stdgo.GoByte>):stdgo.GoString
```



Fill buf through n writes of byte slice fub.
The initial contents of buf corresponds to the string s;
the result is the final contents of buf returned as a string.  

[\(view code\)](<./Bytes.hx#L1394>)


## function \_fillString


```haxe
function _fillString(_t:stdgo.Ref<stdgo.testing.T_>, _testname:stdgo.GoString, _buf:stdgo.Ref<stdgo.bytes.Buffer>, _s:stdgo.GoString, _n:stdgo.GoInt, _fus:stdgo.GoString):stdgo.GoString
```



Fill buf through n writes of string fus.
The initial contents of buf corresponds to the string s;
the result is the final contents of buf returned as a string.  

[\(view code\)](<./Bytes.hx#L1374>)


## function \_makeBenchInputHard


```haxe
function _makeBenchInputHard():stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Bytes.hx#L3747>)


## function \_makeFieldsInput


```haxe
function _makeFieldsInput():stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Bytes.hx#L615>)


## function \_makeFieldsInputASCII


```haxe
function _makeFieldsInputASCII():stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Bytes.hx#L656>)


## function \_not


```haxe
function _not(_p:stdgo.bytes_test.T_predicate):stdgo.bytes_test.T_predicate
```


[\(view code\)](<./Bytes.hx#L3393>)


## function \_repeat


```haxe
function _repeat(_b:stdgo.Slice<stdgo.GoByte>, _count:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Bytes.hx#L3216>)


## function \_rot13


```haxe
function _rot13(_r:stdgo.GoRune):stdgo.GoRune
```



User\-defined self\-inverse mapping function  

[\(view code\)](<./Bytes.hx#L3098>)


## function \_runIndexAnyTests


```haxe
function _runIndexAnyTests(_t:stdgo.Ref<stdgo.testing.T_>, _f:(_s:stdgo.Slice<stdgo.GoByte>, _chars:stdgo.GoString):stdgo.GoInt, _funcName:stdgo.GoString, _testCases:stdgo.Slice<stdgo.bytes_test.BinOpTest>):Void
```


[\(view code\)](<./Bytes.hx#L2327>)


## function \_runIndexTests


```haxe
function _runIndexTests(_t:stdgo.Ref<stdgo.testing.T_>, _f:(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt, _funcName:stdgo.GoString, _testCases:stdgo.Slice<stdgo.bytes_test.BinOpTest>):Void
```



Execute f on each test case.  funcName should be the name of f; it's used
in failure reports.  

[\(view code\)](<./Bytes.hx#L2299>)


## function \_runStringTests


```haxe
function _runStringTests(_t:stdgo.Ref<stdgo.testing.T_>, _f:(), _funcName:stdgo.GoString, _testCases:stdgo.Slice<stdgo.bytes_test.StringTest>):Void
```



Execute f on each test case.  funcName should be the name of f; it's used
in failure reports.  

[\(view code\)](<./Bytes.hx#L3074>)


## function \_runesEqual


```haxe
function _runesEqual(_a:stdgo.Slice<stdgo.GoRune>, _b:stdgo.Slice<stdgo.GoRune>):Bool
```


[\(view code\)](<./Bytes.hx#L3300>)


## function \_sliceOfString


```haxe
function _sliceOfString(_s:stdgo.Slice<stdgo.Slice<stdgo.GoByte>>):stdgo.Slice<stdgo.GoString>
```


[\(view code\)](<./Bytes.hx#L2202>)


## function \_tenRunes


```haxe
function _tenRunes(_r:stdgo.GoRune):stdgo.GoString
```


[\(view code\)](<./Bytes.hx#L3088>)


## function \_valName


```haxe
function _valName(_x:stdgo.GoInt):stdgo.GoString
```


[\(view code\)](<./Bytes.hx#L2664>)


## function benchmarkBufferAppendNoCopy


```haxe
function benchmarkBufferAppendNoCopy(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2173>)


## function benchmarkBufferFullSmallReads


```haxe
function benchmarkBufferFullSmallReads(_b:stdgo.Ref<stdgo.testing.B>):Void
```



Check that we don't compact too often. From Issue 5154.  

[\(view code\)](<./Bytes.hx#L2136>)


## function benchmarkBufferNotEmptyWriteRead


```haxe
function benchmarkBufferNotEmptyWriteRead(_b:stdgo.Ref<stdgo.testing.B>):Void
```



From Issue 5154.  

[\(view code\)](<./Bytes.hx#L2116>)


## function benchmarkBufferWriteBlock


```haxe
function benchmarkBufferWriteBlock(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2156>)


## function benchmarkBytesCompare


```haxe
function benchmarkBytesCompare(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3889>)


## function benchmarkCompareBytesBig


```haxe
function benchmarkCompareBytesBig(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L4334>)


## function benchmarkCompareBytesBigBothUnaligned


```haxe
function benchmarkCompareBytesBigBothUnaligned(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L4324>)


## function benchmarkCompareBytesBigIdentical


```haxe
function benchmarkCompareBytesBigIdentical(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L4352>)


## function benchmarkCompareBytesBigUnaligned


```haxe
function benchmarkCompareBytesBigUnaligned(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L4294>)


## function benchmarkCompareBytesDifferentLength


```haxe
function benchmarkCompareBytesDifferentLength(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L4264>)


## function benchmarkCompareBytesEmpty


```haxe
function benchmarkCompareBytesEmpty(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L4228>)


## function benchmarkCompareBytesEqual


```haxe
function benchmarkCompareBytesEqual(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L4204>)


## function benchmarkCompareBytesIdentical


```haxe
function benchmarkCompareBytesIdentical(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L4240>)


## function benchmarkCompareBytesSameLength


```haxe
function benchmarkCompareBytesSameLength(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L4252>)


## function benchmarkCompareBytesToNil


```haxe
function benchmarkCompareBytesToNil(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L4216>)


## function benchmarkCount


```haxe
function benchmarkCount(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2874>)


## function benchmarkCountEasy


```haxe
function benchmarkCountEasy(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2890>)


## function benchmarkCountHard1


```haxe
function benchmarkCountHard1(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3804>)


## function benchmarkCountHard2


```haxe
function benchmarkCountHard2(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3807>)


## function benchmarkCountHard3


```haxe
function benchmarkCountHard3(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3810>)


## function benchmarkCountSingle


```haxe
function benchmarkCountSingle(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2908>)


## function benchmarkEqual


```haxe
function benchmarkEqual(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2755>)


## function benchmarkEqualBothUnaligned


```haxe
function benchmarkEqualBothUnaligned(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2807>)


## function benchmarkFields


```haxe
function benchmarkFields(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3675>)


## function benchmarkFieldsFunc


```haxe
function benchmarkFieldsFunc(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3697>)


## function benchmarkIndex


```haxe
function benchmarkIndex(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2840>)


## function benchmarkIndexAnyASCII


```haxe
function benchmarkIndexAnyASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3919>)


## function benchmarkIndexAnyUTF8


```haxe
function benchmarkIndexAnyUTF8(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3941>)


## function benchmarkIndexByte


```haxe
function benchmarkIndexByte(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2693>)


## function benchmarkIndexBytePortable


```haxe
function benchmarkIndexBytePortable(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2696>)


## function benchmarkIndexEasy


```haxe
function benchmarkIndexEasy(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2856>)


## function benchmarkIndexHard1


```haxe
function benchmarkIndexHard1(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3783>)


## function benchmarkIndexHard2


```haxe
function benchmarkIndexHard2(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3786>)


## function benchmarkIndexHard3


```haxe
function benchmarkIndexHard3(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3789>)


## function benchmarkIndexHard4


```haxe
function benchmarkIndexHard4(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3792>)


## function benchmarkIndexPeriodic


```haxe
function benchmarkIndexPeriodic(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L4038>)


## function benchmarkIndexRune


```haxe
function benchmarkIndexRune(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2715>)


## function benchmarkIndexRuneASCII


```haxe
function benchmarkIndexRuneASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2718>)


## function benchmarkLastIndexAnyASCII


```haxe
function benchmarkLastIndexAnyASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3963>)


## function benchmarkLastIndexAnyUTF8


```haxe
function benchmarkLastIndexAnyUTF8(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3985>)


## function benchmarkLastIndexHard1


```haxe
function benchmarkLastIndexHard1(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3795>)


## function benchmarkLastIndexHard2


```haxe
function benchmarkLastIndexHard2(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3798>)


## function benchmarkLastIndexHard3


```haxe
function benchmarkLastIndexHard3(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3801>)


## function benchmarkReadString


```haxe
function benchmarkReadString(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L1902>)


## function benchmarkRepeat


```haxe
function benchmarkRepeat(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3857>)


## function benchmarkRepeatLarge


```haxe
function benchmarkRepeatLarge(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3865>)


## function benchmarkSplitEmptySeparator


```haxe
function benchmarkSplitEmptySeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3813>)


## function benchmarkSplitMultiByteSeparator


```haxe
function benchmarkSplitMultiByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3830>)


## function benchmarkSplitNMultiByteSeparator


```haxe
function benchmarkSplitNMultiByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3848>)


## function benchmarkSplitNSingleByteSeparator


```haxe
function benchmarkSplitNSingleByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3839>)


## function benchmarkSplitSingleByteSeparator


```haxe
function benchmarkSplitSingleByteSeparator(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3821>)


## function benchmarkToLower


```haxe
function benchmarkToLower(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3178>)


## function benchmarkToUpper


```haxe
function benchmarkToUpper(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3162>)


## function benchmarkToValidUTF8


```haxe
function benchmarkToValidUTF8(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3732>)


## function benchmarkTrimASCII


```haxe
function benchmarkTrimASCII(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L4007>)


## function benchmarkTrimByte


```haxe
function benchmarkTrimByte(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L4029>)


## function benchmarkTrimSpace


```haxe
function benchmarkTrimSpace(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3719>)


## function benchmarkWriteByte


```haxe
function benchmarkWriteByte(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2078>)


## function benchmarkWriteRune


```haxe
function benchmarkWriteRune(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2095>)


## function exampleBuffer


```haxe
function exampleBuffer():Void
```


[\(view code\)](<./Bytes.hx#L4370>)


## function exampleBuffer\_AvailableBuffer


```haxe
function exampleBuffer_AvailableBuffer():Void
```


[\(view code\)](<./Bytes.hx#L4399>)


## function exampleBuffer\_Bytes


```haxe
function exampleBuffer_Bytes():Void
```


[\(view code\)](<./Bytes.hx#L4381>)


## function exampleBuffer\_Cap


```haxe
function exampleBuffer_Cap():Void
```


[\(view code\)](<./Bytes.hx#L4412>)


## function exampleBuffer\_Grow


```haxe
function exampleBuffer_Grow():Void
```


[\(view code\)](<./Bytes.hx#L4418>)


## function exampleBuffer\_Len


```haxe
function exampleBuffer_Len():Void
```


[\(view code\)](<./Bytes.hx#L4425>)


## function exampleBuffer\_Next


```haxe
function exampleBuffer_Next():Void
```


[\(view code\)](<./Bytes.hx#L4431>)


## function exampleBuffer\_Read


```haxe
function exampleBuffer_Read():Void
```


[\(view code\)](<./Bytes.hx#L4439>)


## function exampleBuffer\_ReadByte


```haxe
function exampleBuffer_ReadByte():Void
```


[\(view code\)](<./Bytes.hx#L4452>)


## function exampleBuffer\_reader


```haxe
function exampleBuffer_reader():Void
```


[\(view code\)](<./Bytes.hx#L4376>)


## function exampleClone


```haxe
function exampleClone():Void
```


[\(view code\)](<./Bytes.hx#L4463>)


## function exampleCompare


```haxe
function exampleCompare():Void
```


[\(view code\)](<./Bytes.hx#L4471>)


## function exampleCompare\_search


```haxe
function exampleCompare_search():Void
```


[\(view code\)](<./Bytes.hx#L4480>)


## function exampleContains


```haxe
function exampleContains():Void
```


[\(view code\)](<./Bytes.hx#L4488>)


## function exampleContainsAny


```haxe
function exampleContainsAny():Void
```


[\(view code\)](<./Bytes.hx#L4494>)


## function exampleContainsRune


```haxe
function exampleContainsRune():Void
```


[\(view code\)](<./Bytes.hx#L4500>)


## function exampleCount


```haxe
function exampleCount():Void
```


[\(view code\)](<./Bytes.hx#L4507>)


## function exampleCut


```haxe
function exampleCut():Void
```


[\(view code\)](<./Bytes.hx#L4511>)


## function exampleCutPrefix


```haxe
function exampleCutPrefix():Void
```


[\(view code\)](<./Bytes.hx#L4521>)


## function exampleCutSuffix


```haxe
function exampleCutSuffix():Void
```


[\(view code\)](<./Bytes.hx#L4529>)


## function exampleEqual


```haxe
function exampleEqual():Void
```


[\(view code\)](<./Bytes.hx#L4537>)


## function exampleEqualFold


```haxe
function exampleEqualFold():Void
```


[\(view code\)](<./Bytes.hx#L4541>)


## function exampleFields


```haxe
function exampleFields():Void
```


[\(view code\)](<./Bytes.hx#L4544>)


## function exampleFieldsFunc


```haxe
function exampleFieldsFunc():Void
```


[\(view code\)](<./Bytes.hx#L4547>)


## function exampleHasPrefix


```haxe
function exampleHasPrefix():Void
```


[\(view code\)](<./Bytes.hx#L4553>)


## function exampleHasSuffix


```haxe
function exampleHasSuffix():Void
```


[\(view code\)](<./Bytes.hx#L4558>)


## function exampleIndex


```haxe
function exampleIndex():Void
```


[\(view code\)](<./Bytes.hx#L4564>)


## function exampleIndexAny


```haxe
function exampleIndexAny():Void
```


[\(view code\)](<./Bytes.hx#L4579>)


## function exampleIndexByte


```haxe
function exampleIndexByte():Void
```


[\(view code\)](<./Bytes.hx#L4568>)


## function exampleIndexFunc


```haxe
function exampleIndexFunc():Void
```


[\(view code\)](<./Bytes.hx#L4572>)


## function exampleIndexRune


```haxe
function exampleIndexRune():Void
```


[\(view code\)](<./Bytes.hx#L4583>)


## function exampleJoin


```haxe
function exampleJoin():Void
```


[\(view code\)](<./Bytes.hx#L4587>)


## function exampleLastIndex


```haxe
function exampleLastIndex():Void
```


[\(view code\)](<./Bytes.hx#L4591>)


## function exampleLastIndexAny


```haxe
function exampleLastIndexAny():Void
```


[\(view code\)](<./Bytes.hx#L4596>)


## function exampleLastIndexByte


```haxe
function exampleLastIndexByte():Void
```


[\(view code\)](<./Bytes.hx#L4601>)


## function exampleLastIndexFunc


```haxe
function exampleLastIndexFunc():Void
```


[\(view code\)](<./Bytes.hx#L4606>)


## function exampleMap


```haxe
function exampleMap():Void
```


[\(view code\)](<./Bytes.hx#L4611>)


## function exampleReader\_Len


```haxe
function exampleReader_Len():Void
```


[\(view code\)](<./Bytes.hx#L4622>)


## function exampleRepeat


```haxe
function exampleRepeat():Void
```


[\(view code\)](<./Bytes.hx#L4626>)


## function exampleReplace


```haxe
function exampleReplace():Void
```


[\(view code\)](<./Bytes.hx#L4629>)


## function exampleReplaceAll


```haxe
function exampleReplaceAll():Void
```


[\(view code\)](<./Bytes.hx#L4633>)


## function exampleRunes


```haxe
function exampleRunes():Void
```


[\(view code\)](<./Bytes.hx#L4636>)


## function exampleSplit


```haxe
function exampleSplit():Void
```


[\(view code\)](<./Bytes.hx#L4642>)


## function exampleSplitAfter


```haxe
function exampleSplitAfter():Void
```


[\(view code\)](<./Bytes.hx#L4653>)


## function exampleSplitAfterN


```haxe
function exampleSplitAfterN():Void
```


[\(view code\)](<./Bytes.hx#L4656>)


## function exampleSplitN


```haxe
function exampleSplitN():Void
```


[\(view code\)](<./Bytes.hx#L4648>)


## function exampleTitle


```haxe
function exampleTitle():Void
```


[\(view code\)](<./Bytes.hx#L4659>)


## function exampleToLower


```haxe
function exampleToLower():Void
```


[\(view code\)](<./Bytes.hx#L4718>)


## function exampleToLowerSpecial


```haxe
function exampleToLowerSpecial():Void
```


[\(view code\)](<./Bytes.hx#L4721>)


## function exampleToTitle


```haxe
function exampleToTitle():Void
```


[\(view code\)](<./Bytes.hx#L4662>)


## function exampleToTitleSpecial


```haxe
function exampleToTitleSpecial():Void
```


[\(view code\)](<./Bytes.hx#L4666>)


## function exampleToUpper


```haxe
function exampleToUpper():Void
```


[\(view code\)](<./Bytes.hx#L4727>)


## function exampleToUpperSpecial


```haxe
function exampleToUpperSpecial():Void
```


[\(view code\)](<./Bytes.hx#L4730>)


## function exampleToValidUTF8


```haxe
function exampleToValidUTF8():Void
```


[\(view code\)](<./Bytes.hx#L4672>)


## function exampleTrim


```haxe
function exampleTrim():Void
```


[\(view code\)](<./Bytes.hx#L4677>)


## function exampleTrimFunc


```haxe
function exampleTrimFunc():Void
```


[\(view code\)](<./Bytes.hx#L4680>)


## function exampleTrimLeft


```haxe
function exampleTrimLeft():Void
```


[\(view code\)](<./Bytes.hx#L4686>)


## function exampleTrimLeftFunc


```haxe
function exampleTrimLeftFunc():Void
```


[\(view code\)](<./Bytes.hx#L4689>)


## function exampleTrimPrefix


```haxe
function exampleTrimPrefix():Void
```


[\(view code\)](<./Bytes.hx#L4694>)


## function exampleTrimRight


```haxe
function exampleTrimRight():Void
```


[\(view code\)](<./Bytes.hx#L4710>)


## function exampleTrimRightFunc


```haxe
function exampleTrimRightFunc():Void
```


[\(view code\)](<./Bytes.hx#L4713>)


## function exampleTrimSpace


```haxe
function exampleTrimSpace():Void
```


[\(view code\)](<./Bytes.hx#L4700>)


## function exampleTrimSuffix


```haxe
function exampleTrimSuffix():Void
```


[\(view code\)](<./Bytes.hx#L4703>)


## function testBasicOperations


```haxe
function testBasicOperations(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1436>)


## function testBufferGrowNegative


```haxe
function testBufferGrowNegative(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3518>)


## function testBufferGrowth


```haxe
function testBufferGrowth(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



Tests that we occasionally compact. Issue 5154.  

[\(view code\)](<./Bytes.hx#L2058>)


## function testBufferTruncateNegative


```haxe
function testBufferTruncateNegative(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3559>)


## function testBufferTruncateOutOfRange


```haxe
function testBufferTruncateOutOfRange(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3600>)


## function testCapWithPreallocatedSlice


```haxe
function testCapWithPreallocatedSlice(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1565>)


## function testCapWithSliceAndWrittenData


```haxe
function testCapWithSliceAndWrittenData(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1572>)


## function testClone


```haxe
function testClone(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L4058>)


## function testCompare


```haxe
function testCompare(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L4078>)


## function testCompareBytes


```haxe
function testCompareBytes(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L4104>)


## function testCompareIdenticalSlice


```haxe
function testCompareIdenticalSlice(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L4095>)


## function testContains


```haxe
function testContains(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3642>)


## function testContainsAny


```haxe
function testContainsAny(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3652>)


## function testContainsFunc


```haxe
function testContainsFunc(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3666>)


## function testContainsRune


```haxe
function testContainsRune(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3659>)


## function testCountByte


```haxe
function testCountByte(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



test count of a single byte across page offsets  

[\(view code\)](<./Bytes.hx#L2548>)


## function testCountByteNoMatch


```haxe
function testCountByteNoMatch(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



Make sure we don't count bytes outside our window  

[\(view code\)](<./Bytes.hx#L2618>)


## function testCut


```haxe
function testCut(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3488>)


## function testCutPrefix


```haxe
function testCutPrefix(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3498>)


## function testCutSuffix


```haxe
function testCutSuffix(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3508>)


## function testEmptyReaderConcurrent


```haxe
function testEmptyReaderConcurrent(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L4846>)


## function testEndianBaseCompare


```haxe
function testEndianBaseCompare(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L4168>)


## function testEqual


```haxe
function testEqual(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L2209>)


## function testEqualExhaustive


```haxe
function testEqualExhaustive(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L2222>)


## function testEqualFold


```haxe
function testEqualFold(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3472>)


## function testFields


```haxe
function testFields(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3007>)


## function testFieldsFunc


```haxe
function testFieldsFunc(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3033>)


## function testGrow


```haxe
function testGrow(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1918>)


## function testGrowOverflow


```haxe
function testGrowOverflow(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1946>)


## function testIndex


```haxe
function testIndex(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L2336>)


## function testIndexAny


```haxe
function testIndexAny(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L2342>)


## function testIndexByte


```haxe
function testIndexByte(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L2348>)


## function testIndexByteBig


```haxe
function testIndexByteBig(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



test a larger buffer with different sizes and alignments  

[\(view code\)](<./Bytes.hx#L2377>)


## function testIndexByteSmall


```haxe
function testIndexByteSmall(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



test a small index across all page offsets  

[\(view code\)](<./Bytes.hx#L2440>)


## function testIndexFunc


```haxe
function testIndexFunc(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3415>)


## function testIndexRune


```haxe
function testIndexRune(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L2495>)


## function testLargeByteReads


```haxe
function testLargeByteReads(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1534>)


## function testLargeByteWrites


```haxe
function testLargeByteWrites(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1508>)


## function testLargeStringReads


```haxe
function testLargeStringReads(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1523>)


## function testLargeStringWrites


```haxe
function testLargeStringWrites(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1493>)


## function testLastIndex


```haxe
function testLastIndex(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L2339>)


## function testLastIndexAny


```haxe
function testLastIndexAny(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L2345>)


## function testLastIndexByte


```haxe
function testLastIndexByte(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L2365>)


## function testMap


```haxe
function testMap(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3108>)


## function testMixedReadsAndWrites


```haxe
function testMixedReadsAndWrites(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1545>)


## function testNewBuffer


```haxe
function testNewBuffer(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1409>)


## function testNewBufferString


```haxe
function testNewBufferString(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1413>)


## function testNext


```haxe
function testNext(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1819>)


## function testNil


```haxe
function testNil(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1580>)


## function testNotEqual


```haxe
function testNotEqual(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



make sure Equal returns false for minimally different strings. The data
is all zeros except for a single one in one location.  

[\(view code\)](<./Bytes.hx#L2262>)


## function testReadAfterBigSeek


```haxe
function testReadAfterBigSeek(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L4775>)


## function testReadBytes


```haxe
function testReadBytes(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1856>)


## function testReadEmptyAtEOF


```haxe
function testReadEmptyAtEOF(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



Was a bug: used to give EOF reading empty slice at EOF.  

[\(view code\)](<./Bytes.hx#L1991>)


## function testReadFrom


```haxe
function testReadFrom(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1586>)


## function testReadFromNegativeReader


```haxe
function testReadFromNegativeReader(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1648>)


## function testReadFromPanicReader


```haxe
function testReadFromPanicReader(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



Make sure that an empty Buffer remains empty when
it is "grown" before a Read that panics  

[\(view code\)](<./Bytes.hx#L1602>)


## function testReadString


```haxe
function testReadString(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1879>)


## function testReader


```haxe
function testReader(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L4736>)


## function testReaderAt


```haxe
function testReaderAt(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L4790>)


## function testReaderAtConcurrent


```haxe
function testReaderAtConcurrent(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L4805>)


## function testReaderCopyNothing


```haxe
function testReaderCopyNothing(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



verify that copying from an empty reader always has the same results,
regardless of the presence of a WriteTo method.  

[\(view code\)](<./Bytes.hx#L5074>)


## function testReaderDoubleUnreadRune


```haxe
function testReaderDoubleUnreadRune(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L4996>)


## function testReaderLen


```haxe
function testReaderLen(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L4946>)


## function testReaderLenSize


```haxe
function testReaderLenSize(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



tests that Len is affected by reads, but Size is not.  

[\(view code\)](<./Bytes.hx#L5097>)


## function testReaderReset


```haxe
function testReaderReset(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L5109>)


## function testReaderWriteTo


```haxe
function testReaderWriteTo(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L4916>)


## function testReaderZero


```haxe
function testReaderZero(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L5136>)


## function testRepeat


```haxe
function testRepeat(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3205>)


## function testRepeatCatchesOverflow


```haxe
function testRepeatCatchesOverflow(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



See Issue golang.org/issue/16237  

[\(view code\)](<./Bytes.hx#L3275>)


## function testReplace


```haxe
function testReplace(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3427>)


## function testRuneIO


```haxe
function testRuneIO(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1741>)


## function testRunes


```haxe
function testRunes(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3311>)


## function testSplit


```haxe
function testSplit(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L2936>)


## function testSplitAfter


```haxe
function testSplitAfter(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L2977>)


## function testTitle


```haxe
function testTitle(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3452>)


## function testToLower


```haxe
function testToLower(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3159>)


## function testToTitle


```haxe
function testToTitle(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3462>)


## function testToUpper


```haxe
function testToUpper(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3156>)


## function testToValidUTF8


```haxe
function testToValidUTF8(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3194>)


## function testTrim


```haxe
function testTrim(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3327>)


## function testTrimFunc


```haxe
function testTrimFunc(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3398>)


## function testTrimSpace


```haxe
function testTrimSpace(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3202>)


## function testUnreadByte


```haxe
function testUnreadByte(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L2002>)


## function testUnreadRuneError


```haxe
function testUnreadRuneError(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L4980>)


## function testWriteAppend


```haxe
function testWriteAppend(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1711>)


## function testWriteInvalidRune


```haxe
function testWriteInvalidRune(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1812>)


## function testWriteTo


```haxe
function testWriteTo(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1699>)


## function main


```haxe
function main():Void
```


[\(view code\)](<./Bytes.hx#L238>)


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


[\(view code\)](<./Bytes_test.hx#L790>)


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


[\(view code\)](<./Bytes_test.hx#L829>)


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


[\(view code\)](<./Bytes_test.hx#L986>)


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


[\(view code\)](<./Bytes_test.hx#L865>)


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


[\(view code\)](<./Bytes_test.hx#L1008>)


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


[\(view code\)](<./Bytes_test.hx#L884>)


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


[\(view code\)](<./Bytes_test.hx#L810>)


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


[\(view code\)](<./Bytes_test.hx#L847>)


## class T\_testReaderCopyNothing\_10\_\_\_localname\_\_\_justWriter


```haxe
var writer:stdgo.io.Writer
```


### T\_testReaderCopyNothing\_10\_\_\_localname\_\_\_justWriter function new


```haxe
function new(?writer:Null<stdgo.io.Writer>):Void
```


[\(view code\)](<./Bytes_test.hx#L5060>)


### T\_testReaderCopyNothing\_10\_\_\_localname\_\_\_justWriter function write


```haxe
function write(__0:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Bytes_test.hx#L5065>)


### T\_testReaderCopyNothing\_10\_\_\_localname\_\_\_justWriter function write


```haxe
function write( __0:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Bytes_test.hx#L5272>)


## class T\_testReaderCopyNothing\_8\_\_\_localname\_\_\_nErr


```haxe
var _err:stdgo.Error
```


```haxe
var _n:stdgo.GoInt64
```


### T\_testReaderCopyNothing\_8\_\_\_localname\_\_\_nErr function new


```haxe
function new(?_n:stdgo.GoInt64, ?_err:Null<stdgo.Error>):Void
```


[\(view code\)](<./Bytes_test.hx#L5025>)


## class T\_testReaderCopyNothing\_9\_\_\_localname\_\_\_justReader


```haxe
var reader:stdgo.io.Reader
```


### T\_testReaderCopyNothing\_9\_\_\_localname\_\_\_justReader function new


```haxe
function new(?reader:Null<stdgo.io.Reader>):Void
```


[\(view code\)](<./Bytes_test.hx#L5042>)


### T\_testReaderCopyNothing\_9\_\_\_localname\_\_\_justReader function read


```haxe
function read(__0:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Bytes_test.hx#L5047>)


### T\_testReaderCopyNothing\_9\_\_\_localname\_\_\_justReader function read


```haxe
function read( __0:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Bytes_test.hx#L5257>)


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


[\(view code\)](<./Bytes_test.hx#L1028>)


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


[\(view code\)](<./Bytes_test.hx#L964>)


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


[\(view code\)](<./Bytes_test.hx#L925>)


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


[\(view code\)](<./Bytes_test.hx#L904>)


# Typedefs


```haxe
import stdgo.bytes_test.*
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = {
	_expected:stdgo.Slice<stdgo.GoString>;
	_err:stdgo.Error;
	_delim:stdgo.GoUInt8;
	_buffer:stdgo.GoString;
};
```


## typedef T\_\_struct\_1


```haxe
typedef T__struct_1 = {
	_i:stdgo.GoInt;
	_b:stdgo.Slice<stdgo.GoUInt8>;
	_a:stdgo.Slice<stdgo.GoUInt8>;
};
```


## typedef T\_\_struct\_10


```haxe
typedef T__struct_10 = {
	_want:Bool;
	_subslice:stdgo.Slice<stdgo.GoUInt8>;
	_b:stdgo.Slice<stdgo.GoUInt8>;
};
```


## typedef T\_\_struct\_11


```haxe
typedef T__struct_11 = {
	_substr:stdgo.GoString;
	_expected:Bool;
	_b:stdgo.Slice<stdgo.GoUInt8>;
};
```


## typedef T\_\_struct\_12


```haxe
typedef T__struct_12 = {
	_r:stdgo.GoInt32;
	_expected:Bool;
	_b:stdgo.Slice<stdgo.GoUInt8>;
};
```


## typedef T\_\_struct\_13


```haxe
typedef T__struct_13 = {
	_name:stdgo.GoString;
	_data:stdgo.Slice<stdgo.GoUInt8>;
};
```


## typedef T\_\_struct\_14


```haxe
typedef T__struct_14 = {
	_name:stdgo.GoString;
	_input:stdgo.Slice<stdgo.GoUInt8>;
};
```


## typedef T\_\_struct\_15


```haxe
typedef T__struct_15 = {
	_wantpos:stdgo.GoInt64;
	_want:stdgo.GoString;
	_seekerr:stdgo.GoString;
	_seek:stdgo.GoInt;
	_readerr:stdgo.Error;
	_off:stdgo.GoInt64;
	_n:stdgo.GoInt;
};
```


## typedef T\_\_struct\_16


```haxe
typedef T__struct_16 = {
	_wanterr:stdgo.AnyInterface;
	_want:stdgo.GoString;
	_off:stdgo.GoInt64;
	_n:stdgo.GoInt;
};
```


## typedef T\_\_struct\_17


```haxe
typedef T__struct_17 = {
	_name:stdgo.GoString;
	public function _f();
};
```


## typedef T\_\_struct\_2


```haxe
typedef T__struct_2 = {
	_want:stdgo.GoInt;
	_rune:stdgo.GoInt32;
	_in:stdgo.GoString;
};
```


## typedef T\_\_struct\_3


```haxe
typedef T__struct_3 = {
	_repl:stdgo.GoString;
	_out:stdgo.GoString;
	_in:stdgo.GoString;
};
```


## typedef T\_\_struct\_4


```haxe
typedef T__struct_4 = {
	_s:stdgo.GoString;
	_errStr:stdgo.GoString;
	_count:stdgo.GoInt;
};
```


## typedef T\_\_struct\_5


```haxe
typedef T__struct_5 = {
	public function _trim(:stdgo.Slice<stdgo.GoUInt8>, :()):stdgo.Slice<stdgo.GoUInt8>;
	_out:stdgo.Slice<stdgo.GoUInt8>;
	_name:stdgo.GoString;
};
```


## typedef T\_\_struct\_6


```haxe
typedef T__struct_6 = {
	_t:stdgo.GoString;
	_s:stdgo.GoString;
	_out:Bool;
};
```


## typedef T\_\_struct\_7


```haxe
typedef T__struct_7 = {
	_sep:stdgo.GoString;
	_s:stdgo.GoString;
	_found:Bool;
	_before:stdgo.GoString;
	_after:stdgo.GoString;
};
```


## typedef T\_\_struct\_8


```haxe
typedef T__struct_8 = {
	_sep:stdgo.GoString;
	_s:stdgo.GoString;
	_found:Bool;
	_after:stdgo.GoString;
};
```


## typedef T\_\_struct\_9


```haxe
typedef T__struct_9 = {
	_sep:stdgo.GoString;
	_s:stdgo.GoString;
	_found:Bool;
	_before:stdgo.GoString;
};
```


