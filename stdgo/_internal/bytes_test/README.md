# Module: `stdgo._internal.bytes`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _benchBytes(_b:stdgo.Ref<stdgo._internal.testing.B>, _sizes:stdgo.Slice<stdgo.GoInt>, _f:(_b:stdgo.Ref<stdgo._internal.testing.B>, _n:stdgo.GoInt):Void):Void`](<#function-_benchbytes>)

- [`function _benchmarkCompareBytesBigBothUnaligned(_b:stdgo.Ref<stdgo._internal.testing.B>, _offset:stdgo.GoInt):Void`](<#function-_benchmarkcomparebytesbigbothunaligned>)

- [`function _benchmarkCompareBytesBigUnaligned(_b:stdgo.Ref<stdgo._internal.testing.B>, _offset:stdgo.GoInt):Void`](<#function-_benchmarkcomparebytesbigunaligned>)

- [`function _benchmarkCountHard(_b:stdgo.Ref<stdgo._internal.testing.B>, _sep:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_benchmarkcounthard>)

- [`function _benchmarkIndexHard(_b:stdgo.Ref<stdgo._internal.testing.B>, _sep:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_benchmarkindexhard>)

- [`function _benchmarkLastIndexHard(_b:stdgo.Ref<stdgo._internal.testing.B>, _sep:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_benchmarklastindexhard>)

- [`function _bmEqual(_equal:(:stdgo.Slice<stdgo.GoByte>, :stdgo.Slice<stdgo.GoByte>):Bool):(_b:stdgo.Ref<stdgo._internal.testing.B>, _n:stdgo.GoInt):Void`](<#function-_bmequal>)

- [`function _bmIndexByte(_index:(:stdgo.Slice<stdgo.GoByte>, :stdgo.GoByte):stdgo.GoInt):(_b:stdgo.Ref<stdgo._internal.testing.B>, _n:stdgo.GoInt):Void`](<#function-_bmindexbyte>)

- [`function _bmIndexRune(_index:(:stdgo.Slice<stdgo.GoByte>, :stdgo.GoRune):stdgo.GoInt):(_b:stdgo.Ref<stdgo._internal.testing.B>, _n:stdgo.GoInt):Void`](<#function-_bmindexrune>)

- [`function _bmIndexRuneASCII(_index:(:stdgo.Slice<stdgo.GoByte>, :stdgo.GoRune):stdgo.GoInt):(_b:stdgo.Ref<stdgo._internal.testing.B>, _n:stdgo.GoInt):Void`](<#function-_bmindexruneascii>)

- [`function _check(_t:stdgo.Ref<stdgo._internal.testing.T_>, _testname:stdgo.GoString, _buf:stdgo.Ref<stdgo._internal.bytes.Buffer>, _s:stdgo.GoString):Void`](<#function-_check>)

- [`function _empty(_t:stdgo.Ref<stdgo._internal.testing.T_>, _testname:stdgo.GoString, _buf:stdgo.Ref<stdgo._internal.bytes.Buffer>, _s:stdgo.GoString, _fub:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_empty>)

- [`function _eq(_a:stdgo.Slice<stdgo.GoString>, _b:stdgo.Slice<stdgo.GoString>):Bool`](<#function-_eq>)

- [`function _fillBytes(_t:stdgo.Ref<stdgo._internal.testing.T_>, _testname:stdgo.GoString, _buf:stdgo.Ref<stdgo._internal.bytes.Buffer>, _s:stdgo.GoString, _n:stdgo.GoInt, _fub:stdgo.Slice<stdgo.GoByte>):stdgo.GoString`](<#function-_fillbytes>)

- [`function _fillString(_t:stdgo.Ref<stdgo._internal.testing.T_>, _testname:stdgo.GoString, _buf:stdgo.Ref<stdgo._internal.bytes.Buffer>, _s:stdgo.GoString, _n:stdgo.GoInt, _fus:stdgo.GoString):stdgo.GoString`](<#function-_fillstring>)

- [`function _makeBenchInputHard():stdgo.Slice<stdgo.GoByte>`](<#function-_makebenchinputhard>)

- [`function _makeFieldsInput():stdgo.Slice<stdgo.GoUInt8>`](<#function-_makefieldsinput>)

- [`function _makeFieldsInputASCII():stdgo.Slice<stdgo.GoUInt8>`](<#function-_makefieldsinputascii>)

- [`function _not(_p:stdgo._internal.bytes_test.T_predicate):stdgo._internal.bytes_test.T_predicate`](<#function-_not>)

- [`function _repeat(_b:stdgo.Slice<stdgo.GoByte>, _count:stdgo.GoInt):stdgo.Error`](<#function-_repeat>)

- [`function _rot13(_r:stdgo.GoRune):stdgo.GoRune`](<#function-_rot13>)

- [`function _runIndexAnyTests(_t:stdgo.Ref<stdgo._internal.testing.T_>, _f:(_s:stdgo.Slice<stdgo.GoByte>, _chars:stdgo.GoString):stdgo.GoInt, _funcName:stdgo.GoString, _testCases:stdgo.Slice<stdgo._internal.bytes_test.BinOpTest>):Void`](<#function-_runindexanytests>)

- [`function _runIndexTests(_t:stdgo.Ref<stdgo._internal.testing.T_>, _f:(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt, _funcName:stdgo.GoString, _testCases:stdgo.Slice<stdgo._internal.bytes_test.BinOpTest>):Void`](<#function-_runindextests>)

- [`function _runStringTests(_t:stdgo.Ref<stdgo._internal.testing.T_>, _f:(), _funcName:stdgo.GoString, _testCases:stdgo.Slice<stdgo._internal.bytes_test.StringTest>):Void`](<#function-_runstringtests>)

- [`function _runesEqual(_a:stdgo.Slice<stdgo.GoRune>, _b:stdgo.Slice<stdgo.GoRune>):Bool`](<#function-_runesequal>)

- [`function _sliceOfString(_s:stdgo.Slice<stdgo.Slice<stdgo.GoByte>>):stdgo.Slice<stdgo.GoString>`](<#function-_sliceofstring>)

- [`function _tenRunes(_r:stdgo.GoRune):stdgo.GoString`](<#function-_tenrunes>)

- [`function _valName(_x:stdgo.GoInt):stdgo.GoString`](<#function-_valname>)

- [`function benchmarkBufferAppendNoCopy(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkbufferappendnocopy>)

- [`function benchmarkBufferFullSmallReads(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkbufferfullsmallreads>)

- [`function benchmarkBufferNotEmptyWriteRead(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkbuffernotemptywriteread>)

- [`function benchmarkBufferWriteBlock(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkbufferwriteblock>)

- [`function benchmarkBytesCompare(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkbytescompare>)

- [`function benchmarkCompareBytesBig(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkcomparebytesbig>)

- [`function benchmarkCompareBytesBigBothUnaligned(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkcomparebytesbigbothunaligned>)

- [`function benchmarkCompareBytesBigIdentical(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkcomparebytesbigidentical>)

- [`function benchmarkCompareBytesBigUnaligned(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkcomparebytesbigunaligned>)

- [`function benchmarkCompareBytesDifferentLength(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkcomparebytesdifferentlength>)

- [`function benchmarkCompareBytesEmpty(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkcomparebytesempty>)

- [`function benchmarkCompareBytesEqual(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkcomparebytesequal>)

- [`function benchmarkCompareBytesIdentical(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkcomparebytesidentical>)

- [`function benchmarkCompareBytesSameLength(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkcomparebytessamelength>)

- [`function benchmarkCompareBytesToNil(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkcomparebytestonil>)

- [`function benchmarkCount(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkcount>)

- [`function benchmarkCountEasy(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkcounteasy>)

- [`function benchmarkCountHard1(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkcounthard1>)

- [`function benchmarkCountHard2(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkcounthard2>)

- [`function benchmarkCountHard3(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkcounthard3>)

- [`function benchmarkCountSingle(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkcountsingle>)

- [`function benchmarkEqual(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkequal>)

- [`function benchmarkEqualBothUnaligned(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkequalbothunaligned>)

- [`function benchmarkFields(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkfields>)

- [`function benchmarkFieldsFunc(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkfieldsfunc>)

- [`function benchmarkIndex(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkindex>)

- [`function benchmarkIndexAnyASCII(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkindexanyascii>)

- [`function benchmarkIndexAnyUTF8(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkindexanyutf8>)

- [`function benchmarkIndexByte(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkindexbyte>)

- [`function benchmarkIndexBytePortable(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkindexbyteportable>)

- [`function benchmarkIndexEasy(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkindexeasy>)

- [`function benchmarkIndexHard1(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkindexhard1>)

- [`function benchmarkIndexHard2(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkindexhard2>)

- [`function benchmarkIndexHard3(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkindexhard3>)

- [`function benchmarkIndexHard4(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkindexhard4>)

- [`function benchmarkIndexPeriodic(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkindexperiodic>)

- [`function benchmarkIndexRune(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkindexrune>)

- [`function benchmarkIndexRuneASCII(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkindexruneascii>)

- [`function benchmarkLastIndexAnyASCII(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarklastindexanyascii>)

- [`function benchmarkLastIndexAnyUTF8(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarklastindexanyutf8>)

- [`function benchmarkLastIndexHard1(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarklastindexhard1>)

- [`function benchmarkLastIndexHard2(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarklastindexhard2>)

- [`function benchmarkLastIndexHard3(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarklastindexhard3>)

- [`function benchmarkReadString(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkreadstring>)

- [`function benchmarkRepeat(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkrepeat>)

- [`function benchmarkRepeatLarge(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkrepeatlarge>)

- [`function benchmarkSplitEmptySeparator(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksplitemptyseparator>)

- [`function benchmarkSplitMultiByteSeparator(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksplitmultibyteseparator>)

- [`function benchmarkSplitNMultiByteSeparator(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksplitnmultibyteseparator>)

- [`function benchmarkSplitNSingleByteSeparator(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksplitnsinglebyteseparator>)

- [`function benchmarkSplitSingleByteSeparator(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksplitsinglebyteseparator>)

- [`function benchmarkToLower(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarktolower>)

- [`function benchmarkToUpper(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarktoupper>)

- [`function benchmarkToValidUTF8(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarktovalidutf8>)

- [`function benchmarkTrimASCII(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarktrimascii>)

- [`function benchmarkTrimByte(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarktrimbyte>)

- [`function benchmarkTrimSpace(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarktrimspace>)

- [`function benchmarkWriteByte(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkwritebyte>)

- [`function benchmarkWriteRune(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkwriterune>)

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

- [`function testBasicOperations(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testbasicoperations>)

- [`function testBufferGrowNegative(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testbuffergrownegative>)

- [`function testBufferGrowth(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testbuffergrowth>)

- [`function testBufferTruncateNegative(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testbuffertruncatenegative>)

- [`function testBufferTruncateOutOfRange(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testbuffertruncateoutofrange>)

- [`function testCapWithPreallocatedSlice(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testcapwithpreallocatedslice>)

- [`function testCapWithSliceAndWrittenData(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testcapwithsliceandwrittendata>)

- [`function testClone(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testclone>)

- [`function testCompare(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testcompare>)

- [`function testCompareBytes(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testcomparebytes>)

- [`function testCompareIdenticalSlice(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testcompareidenticalslice>)

- [`function testContains(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testcontains>)

- [`function testContainsAny(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testcontainsany>)

- [`function testContainsFunc(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testcontainsfunc>)

- [`function testContainsRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testcontainsrune>)

- [`function testCountByte(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testcountbyte>)

- [`function testCountByteNoMatch(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testcountbytenomatch>)

- [`function testCut(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testcut>)

- [`function testCutPrefix(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testcutprefix>)

- [`function testCutSuffix(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testcutsuffix>)

- [`function testEmptyReaderConcurrent(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testemptyreaderconcurrent>)

- [`function testEndianBaseCompare(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testendianbasecompare>)

- [`function testEqual(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testequal>)

- [`function testEqualExhaustive(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testequalexhaustive>)

- [`function testEqualFold(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testequalfold>)

- [`function testFields(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testfields>)

- [`function testFieldsFunc(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testfieldsfunc>)

- [`function testGrow(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testgrow>)

- [`function testGrowOverflow(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testgrowoverflow>)

- [`function testIndex(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testindex>)

- [`function testIndexAny(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testindexany>)

- [`function testIndexByte(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testindexbyte>)

- [`function testIndexByteBig(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testindexbytebig>)

- [`function testIndexByteSmall(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testindexbytesmall>)

- [`function testIndexFunc(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testindexfunc>)

- [`function testIndexRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testindexrune>)

- [`function testLargeByteReads(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testlargebytereads>)

- [`function testLargeByteWrites(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testlargebytewrites>)

- [`function testLargeStringReads(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testlargestringreads>)

- [`function testLargeStringWrites(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testlargestringwrites>)

- [`function testLastIndex(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testlastindex>)

- [`function testLastIndexAny(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testlastindexany>)

- [`function testLastIndexByte(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testlastindexbyte>)

- [`function testMap(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testmap>)

- [`function testMixedReadsAndWrites(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testmixedreadsandwrites>)

- [`function testNewBuffer(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testnewbuffer>)

- [`function testNewBufferString(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testnewbufferstring>)

- [`function testNext(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testnext>)

- [`function testNil(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testnil>)

- [`function testNotEqual(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testnotequal>)

- [`function testReadAfterBigSeek(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreadafterbigseek>)

- [`function testReadBytes(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreadbytes>)

- [`function testReadEmptyAtEOF(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreademptyateof>)

- [`function testReadFrom(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreadfrom>)

- [`function testReadFromNegativeReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreadfromnegativereader>)

- [`function testReadFromPanicReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreadfrompanicreader>)

- [`function testReadString(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreadstring>)

- [`function testReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreader>)

- [`function testReaderAt(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreaderat>)

- [`function testReaderAtConcurrent(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreaderatconcurrent>)

- [`function testReaderCopyNothing(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreadercopynothing>)

- [`function testReaderDoubleUnreadRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreaderdoubleunreadrune>)

- [`function testReaderLen(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreaderlen>)

- [`function testReaderLenSize(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreaderlensize>)

- [`function testReaderReset(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreaderreset>)

- [`function testReaderWriteTo(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreaderwriteto>)

- [`function testReaderZero(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreaderzero>)

- [`function testRepeat(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testrepeat>)

- [`function testRepeatCatchesOverflow(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testrepeatcatchesoverflow>)

- [`function testReplace(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreplace>)

- [`function testRuneIO(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testruneio>)

- [`function testRunes(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testrunes>)

- [`function testSplit(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testsplit>)

- [`function testSplitAfter(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testsplitafter>)

- [`function testTitle(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testtitle>)

- [`function testToLower(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testtolower>)

- [`function testToTitle(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testtotitle>)

- [`function testToUpper(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testtoupper>)

- [`function testToValidUTF8(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testtovalidutf8>)

- [`function testTrim(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testtrim>)

- [`function testTrimFunc(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testtrimfunc>)

- [`function testTrimSpace(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testtrimspace>)

- [`function testUnreadByte(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testunreadbyte>)

- [`function testUnreadRuneError(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testunreadruneerror>)

- [`function testWriteAppend(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testwriteappend>)

- [`function testWriteInvalidRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testwriteinvalidrune>)

- [`function testWriteTo(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testwriteto>)

- [`function main():Void`](<#function-main>)

- [class BinOpTest](<#class-binoptest>)

  - [`function new(?_a:stdgo.GoString, ?_b:stdgo.GoString, ?_i:stdgo.GoInt):Void`](<#binoptest-function-new>)

- [class FieldsTest](<#class-fieldstest>)

  - [`function new(?_s:stdgo.GoString, ?_a:stdgo.Slice<stdgo.GoString>):Void`](<#fieldstest-function-new>)

- [class IndexFuncTest](<#class-indexfunctest>)

  - [`function new(?_in:stdgo.GoString, ?_f:stdgo._internal.bytes_test.T_predicate, ?_first:stdgo.GoInt, ?_last:stdgo.GoInt):Void`](<#indexfunctest-function-new>)

- [class RepeatTest](<#class-repeattest>)

  - [`function new(?_in:stdgo.GoString, ?_out:stdgo.GoString, ?_count:stdgo.GoInt):Void`](<#repeattest-function-new>)

- [class ReplaceTest](<#class-replacetest>)

  - [`function new(?_in:stdgo.GoString, ?_old:stdgo.GoString, ?_new:stdgo.GoString, ?_n:stdgo.GoInt, ?_out:stdgo.GoString):Void`](<#replacetest-function-new>)

- [class RunesTest](<#class-runestest>)

  - [`function new(?_in:stdgo.GoString, ?_out:stdgo.Slice<stdgo.GoInt32>, ?_lossy:Bool):Void`](<#runestest-function-new>)

- [class SplitTest](<#class-splittest>)

  - [`function new(?_s:stdgo.GoString, ?_sep:stdgo.GoString, ?_n:stdgo.GoInt, ?_a:stdgo.Slice<stdgo.GoString>):Void`](<#splittest-function-new>)

- [class StringTest](<#class-stringtest>)

  - [`function new(?_in:stdgo.GoString, ?_out:stdgo.Slice<stdgo.GoUInt8>):Void`](<#stringtest-function-new>)

- [class T\_testReaderCopyNothing\_\_\_localname\_\_\_justReader\_5869](<#class-t_testreadercopynothinglocalnamejustreader_5869>)

  - [`function new(?reader:Null<stdgo._internal.io.Reader>):Void`](<#t_testreadercopynothinglocalnamejustreader_5869-function-new>)

  - [`function read(__0:stdgo.Slice<stdgo.GoUInt8>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#t_testreadercopynothinglocalnamejustreader_5869-function-read>)

  - [`function read( __0:stdgo.Slice<stdgo.GoUInt8>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#t_testreadercopynothinglocalnamejustreader_5869-function-read>)

- [class T\_testReaderCopyNothing\_\_\_localname\_\_\_justWriter\_5910](<#class-t_testreadercopynothinglocalnamejustwriter_5910>)

  - [`function new(?writer:Null<stdgo._internal.io.Writer>):Void`](<#t_testreadercopynothinglocalnamejustwriter_5910-function-new>)

  - [`function write(__0:stdgo.Slice<stdgo.GoUInt8>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#t_testreadercopynothinglocalnamejustwriter_5910-function-write>)

  - [`function write( __0:stdgo.Slice<stdgo.GoUInt8>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#t_testreadercopynothinglocalnamejustwriter_5910-function-write>)

- [class T\_testReaderCopyNothing\_\_\_localname\_\_\_nErr\_5822](<#class-t_testreadercopynothinglocalnamenerr_5822>)

  - [`function new(?_n:stdgo.GoInt64, ?_err:Null<stdgo.Error>):Void`](<#t_testreadercopynothinglocalnamenerr_5822-function-new>)

- [class TitleTest](<#class-titletest>)

  - [`function new(?_in:stdgo.GoString, ?_out:stdgo.GoString):Void`](<#titletest-function-new>)

- [class TrimFuncTest](<#class-trimfunctest>)

  - [`function new(?_f:stdgo._internal.bytes_test.T_predicate, ?_in:stdgo.GoString, ?_trimOut:stdgo.Slice<stdgo.GoUInt8>, ?_leftOut:stdgo.Slice<stdgo.GoUInt8>, ?_rightOut:stdgo.Slice<stdgo.GoUInt8>):Void`](<#trimfunctest-function-new>)

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
import stdgo._internal.bytes_test.Bytes
```


```haxe
final _space:stdgo.GoString = (("\t\x0B\r\x0C\n�  　" : stdgo.GoString))
```


```haxe
final n:stdgo.GoUInt64 = ((10000i64 : stdgo.GoUInt64))
```


# Variables


```haxe
import stdgo._internal.bytes_test.Bytes
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
var _bmbuf:stdgo.Slice<stdgo.GoByte>
```


```haxe
var _bytesdata:stdgo.Slice<stdgo._internal.bytes_test.T__struct_13>
```


```haxe
var _commas:stdgo.GoString
```


```haxe
var _compareTests:stdgo.Slice<stdgo._internal.bytes_test.T__struct_1>
```


```haxe
var _containsTests:stdgo.Slice<stdgo._internal.bytes_test.T__struct_10>
```


```haxe
var _cutPrefixTests:stdgo.Slice<stdgo._internal.bytes_test.T__struct_8>
```


```haxe
var _cutSuffixTests:stdgo.Slice<stdgo._internal.bytes_test.T__struct_9>
```


```haxe
var _cutTests:stdgo.Slice<stdgo._internal.bytes_test.T__struct_7>
```


```haxe
var _dots:stdgo.GoString
```


```haxe
var _faces:stdgo.GoString
```


```haxe
var _fieldstests:stdgo.Slice<stdgo._internal.bytes_test.FieldsTest>
```


```haxe
var _indexAnyTests:stdgo.Slice<stdgo._internal.bytes_test.BinOpTest>
```


```haxe
var _indexFuncTests:stdgo.Slice<stdgo._internal.bytes_test.IndexFuncTest>
```


```haxe
var _indexSizes:stdgo.Slice<stdgo.GoInt>
```


```haxe
var _indexTests:stdgo.Slice<stdgo._internal.bytes_test.BinOpTest>
```


```haxe
var _isDigit:stdgo._internal.bytes_test.T_predicate
```


```haxe
var _isRaceBuilder:Bool
```


```haxe
var _isSpace:stdgo._internal.bytes_test.T_predicate
```


```haxe
var _isUpper:stdgo._internal.bytes_test.T_predicate
```


```haxe
var _isValidRune:stdgo._internal.bytes_test.T_predicate
```


```haxe
var _lastIndexAnyTests:stdgo.Slice<stdgo._internal.bytes_test.BinOpTest>
```


```haxe
var _lastIndexTests:stdgo.Slice<stdgo._internal.bytes_test.BinOpTest>
```


```haxe
var _longString:stdgo.GoString
```


```haxe
var _lowerTests:stdgo.Slice<stdgo._internal.bytes_test.StringTest>
```


```haxe
var _readBytesTests:stdgo.Slice<stdgo._internal.bytes_test.T__struct_0>
```


```haxe
var _splitaftertests:stdgo.Slice<stdgo._internal.bytes_test.SplitTest>
```


```haxe
var _splittests:stdgo.Slice<stdgo._internal.bytes_test.SplitTest>
```


```haxe
var _testBytes:stdgo.Slice<stdgo.GoByte>
```


```haxe
var _testString:stdgo.GoString
```


```haxe
var _toValidUTF8Tests:stdgo.Slice<stdgo._internal.bytes_test.T__struct_3>
```


```haxe
var _trimFuncTests:stdgo.Slice<stdgo._internal.bytes_test.TrimFuncTest>
```


```haxe
var _trimNilTests:stdgo.Slice<stdgo._internal.bytes_test.TrimNilTest>
```


```haxe
var _trimSpaceTests:stdgo.Slice<stdgo._internal.bytes_test.StringTest>
```


```haxe
var _trimTests:stdgo.Slice<stdgo._internal.bytes_test.TrimTest>
```


```haxe
var _upperTests:stdgo.Slice<stdgo._internal.bytes_test.StringTest>
```


```haxe
var containsAnyTests:stdgo.Slice<stdgo._internal.bytes_test.T__struct_11>
```


```haxe
var containsRuneTests:stdgo.Slice<stdgo._internal.bytes_test.T__struct_12>
```


```haxe
var equalFoldTests:stdgo.Slice<stdgo._internal.bytes_test.T__struct_6>
```


```haxe
var repeatTests:stdgo.Slice<stdgo._internal.bytes_test.RepeatTest>
```


```haxe
var replaceTests:stdgo.Slice<stdgo._internal.bytes_test.ReplaceTest>
```


```haxe
var runesTests:stdgo.Slice<stdgo._internal.bytes_test.RunesTest>
```


```haxe
var titleTests:stdgo.Slice<stdgo._internal.bytes_test.TitleTest>
```


```haxe
var toTitleTests:stdgo.Slice<stdgo._internal.bytes_test.TitleTest>
```


```haxe
var unreadRuneErrorTests:stdgo.Slice<stdgo._internal.bytes_test.T__struct_17>
```


```haxe
var _:Bool
```


```haxe
var _benchmarks:stdgo.Slice<stdgo._internal.testing.InternalBenchmark>
```


```haxe
var _examples:stdgo.Slice<stdgo._internal.testing.InternalExample>
```


```haxe
var _fuzzTargets:stdgo.Slice<stdgo._internal.testing.InternalFuzzTarget>
```


```haxe
var _tests:stdgo.Slice<stdgo._internal.testing.InternalTest>
```


# Functions


```haxe
import stdgo._internal.bytes_test.Bytes
```


## function \_benchBytes


```haxe
function _benchBytes(_b:stdgo.Ref<stdgo._internal.testing.B>, _sizes:stdgo.Slice<stdgo.GoInt>, _f:(_b:stdgo.Ref<stdgo._internal.testing.B>, _n:stdgo.GoInt):Void):Void
```


[\(view code\)](<./Bytes.hx#L2218>)


## function \_benchmarkCompareBytesBigBothUnaligned


```haxe
function _benchmarkCompareBytesBigBothUnaligned(_b:stdgo.Ref<stdgo._internal.testing.B>, _offset:stdgo.GoInt):Void
```


[\(view code\)](<./Bytes.hx#L3821>)


## function \_benchmarkCompareBytesBigUnaligned


```haxe
function _benchmarkCompareBytesBigUnaligned(_b:stdgo.Ref<stdgo._internal.testing.B>, _offset:stdgo.GoInt):Void
```


[\(view code\)](<./Bytes.hx#L3793>)


## function \_benchmarkCountHard


```haxe
function _benchmarkCountHard(_b:stdgo.Ref<stdgo._internal.testing.B>, _sep:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L3292>)


## function \_benchmarkIndexHard


```haxe
function _benchmarkIndexHard(_b:stdgo.Ref<stdgo._internal.testing.B>, _sep:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L3276>)


## function \_benchmarkLastIndexHard


```haxe
function _benchmarkLastIndexHard(_b:stdgo.Ref<stdgo._internal.testing.B>, _sep:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L3284>)


## function \_bmEqual


```haxe
function _bmEqual(_equal:(:stdgo.Slice<stdgo.GoByte>, :stdgo.Slice<stdgo.GoByte>):Bool):(_b:stdgo.Ref<stdgo._internal.testing.B>, _n:stdgo.GoInt):Void
```


[\(view code\)](<./Bytes.hx#L2312>)


## function \_bmIndexByte


```haxe
function _bmIndexByte(_index:(:stdgo.Slice<stdgo.GoByte>, :stdgo.GoByte):stdgo.GoInt):(_b:stdgo.Ref<stdgo._internal.testing.B>, _n:stdgo.GoInt):Void
```


[\(view code\)](<./Bytes.hx#L2238>)


## function \_bmIndexRune


```haxe
function _bmIndexRune(_index:(:stdgo.Slice<stdgo.GoByte>, :stdgo.GoRune):stdgo.GoInt):(_b:stdgo.Ref<stdgo._internal.testing.B>, _n:stdgo.GoInt):Void
```


[\(view code\)](<./Bytes.hx#L2276>)


## function \_bmIndexRuneASCII


```haxe
function _bmIndexRuneASCII(_index:(:stdgo.Slice<stdgo.GoByte>, :stdgo.GoRune):stdgo.GoInt):(_b:stdgo.Ref<stdgo._internal.testing.B>, _n:stdgo.GoInt):Void
```


[\(view code\)](<./Bytes.hx#L2260>)


## function \_check


```haxe
function _check(_t:stdgo.Ref<stdgo._internal.testing.T_>, _testname:stdgo.GoString, _buf:stdgo.Ref<stdgo._internal.bytes.Buffer>, _s:stdgo.GoString):Void
```


[\(view code\)](<./Bytes.hx#L948>)


## function \_empty


```haxe
function _empty(_t:stdgo.Ref<stdgo._internal.testing.T_>, _testname:stdgo.GoString, _buf:stdgo.Ref<stdgo._internal.bytes.Buffer>, _s:stdgo.GoString, _fub:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Bytes.hx#L1002>)


## function \_eq


```haxe
function _eq(_a:stdgo.Slice<stdgo.GoString>, _b:stdgo.Slice<stdgo.GoString>):Bool
```


[\(view code\)](<./Bytes.hx#L1753>)


## function \_fillBytes


```haxe
function _fillBytes(_t:stdgo.Ref<stdgo._internal.testing.T_>, _testname:stdgo.GoString, _buf:stdgo.Ref<stdgo._internal.bytes.Buffer>, _s:stdgo.GoString, _n:stdgo.GoInt, _fub:stdgo.Slice<stdgo.GoByte>):stdgo.GoString
```


[\(view code\)](<./Bytes.hx#L979>)


## function \_fillString


```haxe
function _fillString(_t:stdgo.Ref<stdgo._internal.testing.T_>, _testname:stdgo.GoString, _buf:stdgo.Ref<stdgo._internal.bytes.Buffer>, _s:stdgo.GoString, _n:stdgo.GoInt, _fus:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Bytes.hx#L964>)


## function \_makeBenchInputHard


```haxe
function _makeBenchInputHard():stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Bytes.hx#L3264>)


## function \_makeFieldsInput


```haxe
function _makeFieldsInput():stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Bytes.hx#L346>)


## function \_makeFieldsInputASCII


```haxe
function _makeFieldsInputASCII():stdgo.Slice<stdgo.GoUInt8>
```


[\(view code\)](<./Bytes.hx#L382>)


## function \_not


```haxe
function _not(_p:stdgo._internal.bytes_test.T_predicate):stdgo._internal.bytes_test.T_predicate
```


[\(view code\)](<./Bytes.hx#L2910>)


## function \_repeat


```haxe
function _repeat(_b:stdgo.Slice<stdgo.GoByte>, _count:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Bytes.hx#L2736>)


## function \_rot13


```haxe
function _rot13(_r:stdgo.GoRune):stdgo.GoRune
```


[\(view code\)](<./Bytes.hx#L2618>)


## function \_runIndexAnyTests


```haxe
function _runIndexAnyTests(_t:stdgo.Ref<stdgo._internal.testing.T_>, _f:(_s:stdgo.Slice<stdgo.GoByte>, _chars:stdgo.GoString):stdgo.GoInt, _funcName:stdgo.GoString, _testCases:stdgo.Slice<stdgo._internal.bytes_test.BinOpTest>):Void
```


[\(view code\)](<./Bytes.hx#L1884>)


## function \_runIndexTests


```haxe
function _runIndexTests(_t:stdgo.Ref<stdgo._internal.testing.T_>, _f:(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt, _funcName:stdgo.GoString, _testCases:stdgo.Slice<stdgo._internal.bytes_test.BinOpTest>):Void
```


[\(view code\)](<./Bytes.hx#L1856>)


## function \_runStringTests


```haxe
function _runStringTests(_t:stdgo.Ref<stdgo._internal.testing.T_>, _f:(), _funcName:stdgo.GoString, _testCases:stdgo.Slice<stdgo._internal.bytes_test.StringTest>):Void
```


[\(view code\)](<./Bytes.hx#L2597>)


## function \_runesEqual


```haxe
function _runesEqual(_a:stdgo.Slice<stdgo.GoRune>, _b:stdgo.Slice<stdgo.GoRune>):Bool
```


[\(view code\)](<./Bytes.hx#L2817>)


## function \_sliceOfString


```haxe
function _sliceOfString(_s:stdgo.Slice<stdgo.Slice<stdgo.GoByte>>):stdgo.Slice<stdgo.GoString>
```


[\(view code\)](<./Bytes.hx#L1767>)


## function \_tenRunes


```haxe
function _tenRunes(_r:stdgo.GoRune):stdgo.GoString
```


[\(view code\)](<./Bytes.hx#L2611>)


## function \_valName


```haxe
function _valName(_x:stdgo.GoInt):stdgo.GoString
```


[\(view code\)](<./Bytes.hx#L2203>)


## function benchmarkBufferAppendNoCopy


```haxe
function benchmarkBufferAppendNoCopy(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L1738>)


## function benchmarkBufferFullSmallReads


```haxe
function benchmarkBufferFullSmallReads(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L1701>)


## function benchmarkBufferNotEmptyWriteRead


```haxe
function benchmarkBufferNotEmptyWriteRead(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L1684>)


## function benchmarkBufferWriteBlock


```haxe
function benchmarkBufferWriteBlock(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L1721>)


## function benchmarkBytesCompare


```haxe
function benchmarkBytesCompare(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3406>)


## function benchmarkCompareBytesBig


```haxe
function benchmarkCompareBytesBig(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3851>)


## function benchmarkCompareBytesBigBothUnaligned


```haxe
function benchmarkCompareBytesBigBothUnaligned(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3841>)


## function benchmarkCompareBytesBigIdentical


```haxe
function benchmarkCompareBytesBigIdentical(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3869>)


## function benchmarkCompareBytesBigUnaligned


```haxe
function benchmarkCompareBytesBigUnaligned(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3811>)


## function benchmarkCompareBytesDifferentLength


```haxe
function benchmarkCompareBytesDifferentLength(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3781>)


## function benchmarkCompareBytesEmpty


```haxe
function benchmarkCompareBytesEmpty(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3745>)


## function benchmarkCompareBytesEqual


```haxe
function benchmarkCompareBytesEqual(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3721>)


## function benchmarkCompareBytesIdentical


```haxe
function benchmarkCompareBytesIdentical(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3757>)


## function benchmarkCompareBytesSameLength


```haxe
function benchmarkCompareBytesSameLength(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3769>)


## function benchmarkCompareBytesToNil


```haxe
function benchmarkCompareBytesToNil(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3733>)


## function benchmarkCount


```haxe
function benchmarkCount(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2401>)


## function benchmarkCountEasy


```haxe
function benchmarkCountEasy(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2417>)


## function benchmarkCountHard1


```haxe
function benchmarkCountHard1(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3321>)


## function benchmarkCountHard2


```haxe
function benchmarkCountHard2(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3324>)


## function benchmarkCountHard3


```haxe
function benchmarkCountHard3(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3327>)


## function benchmarkCountSingle


```haxe
function benchmarkCountSingle(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2435>)


## function benchmarkEqual


```haxe
function benchmarkEqual(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2294>)


## function benchmarkEqualBothUnaligned


```haxe
function benchmarkEqualBothUnaligned(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2334>)


## function benchmarkFields


```haxe
function benchmarkFields(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3192>)


## function benchmarkFieldsFunc


```haxe
function benchmarkFieldsFunc(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3214>)


## function benchmarkIndex


```haxe
function benchmarkIndex(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2367>)


## function benchmarkIndexAnyASCII


```haxe
function benchmarkIndexAnyASCII(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3436>)


## function benchmarkIndexAnyUTF8


```haxe
function benchmarkIndexAnyUTF8(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3458>)


## function benchmarkIndexByte


```haxe
function benchmarkIndexByte(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2232>)


## function benchmarkIndexBytePortable


```haxe
function benchmarkIndexBytePortable(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2235>)


## function benchmarkIndexEasy


```haxe
function benchmarkIndexEasy(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2383>)


## function benchmarkIndexHard1


```haxe
function benchmarkIndexHard1(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3300>)


## function benchmarkIndexHard2


```haxe
function benchmarkIndexHard2(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3303>)


## function benchmarkIndexHard3


```haxe
function benchmarkIndexHard3(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3306>)


## function benchmarkIndexHard4


```haxe
function benchmarkIndexHard4(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3309>)


## function benchmarkIndexPeriodic


```haxe
function benchmarkIndexPeriodic(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3555>)


## function benchmarkIndexRune


```haxe
function benchmarkIndexRune(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2254>)


## function benchmarkIndexRuneASCII


```haxe
function benchmarkIndexRuneASCII(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2257>)


## function benchmarkLastIndexAnyASCII


```haxe
function benchmarkLastIndexAnyASCII(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3480>)


## function benchmarkLastIndexAnyUTF8


```haxe
function benchmarkLastIndexAnyUTF8(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3502>)


## function benchmarkLastIndexHard1


```haxe
function benchmarkLastIndexHard1(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3312>)


## function benchmarkLastIndexHard2


```haxe
function benchmarkLastIndexHard2(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3315>)


## function benchmarkLastIndexHard3


```haxe
function benchmarkLastIndexHard3(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3318>)


## function benchmarkReadString


```haxe
function benchmarkReadString(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L1479>)


## function benchmarkRepeat


```haxe
function benchmarkRepeat(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3374>)


## function benchmarkRepeatLarge


```haxe
function benchmarkRepeatLarge(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3382>)


## function benchmarkSplitEmptySeparator


```haxe
function benchmarkSplitEmptySeparator(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3330>)


## function benchmarkSplitMultiByteSeparator


```haxe
function benchmarkSplitMultiByteSeparator(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3347>)


## function benchmarkSplitNMultiByteSeparator


```haxe
function benchmarkSplitNMultiByteSeparator(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3365>)


## function benchmarkSplitNSingleByteSeparator


```haxe
function benchmarkSplitNSingleByteSeparator(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3356>)


## function benchmarkSplitSingleByteSeparator


```haxe
function benchmarkSplitSingleByteSeparator(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3338>)


## function benchmarkToLower


```haxe
function benchmarkToLower(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2698>)


## function benchmarkToUpper


```haxe
function benchmarkToUpper(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L2682>)


## function benchmarkToValidUTF8


```haxe
function benchmarkToValidUTF8(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3249>)


## function benchmarkTrimASCII


```haxe
function benchmarkTrimASCII(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3524>)


## function benchmarkTrimByte


```haxe
function benchmarkTrimByte(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3546>)


## function benchmarkTrimSpace


```haxe
function benchmarkTrimSpace(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L3236>)


## function benchmarkWriteByte


```haxe
function benchmarkWriteByte(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L1649>)


## function benchmarkWriteRune


```haxe
function benchmarkWriteRune(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bytes.hx#L1666>)


## function exampleBuffer


```haxe
function exampleBuffer():Void
```


[\(view code\)](<./Bytes.hx#L3887>)


## function exampleBuffer\_AvailableBuffer


```haxe
function exampleBuffer_AvailableBuffer():Void
```


[\(view code\)](<./Bytes.hx#L3914>)


## function exampleBuffer\_Bytes


```haxe
function exampleBuffer_Bytes():Void
```


[\(view code\)](<./Bytes.hx#L3898>)


## function exampleBuffer\_Cap


```haxe
function exampleBuffer_Cap():Void
```


[\(view code\)](<./Bytes.hx#L3927>)


## function exampleBuffer\_Grow


```haxe
function exampleBuffer_Grow():Void
```


[\(view code\)](<./Bytes.hx#L3933>)


## function exampleBuffer\_Len


```haxe
function exampleBuffer_Len():Void
```


[\(view code\)](<./Bytes.hx#L3940>)


## function exampleBuffer\_Next


```haxe
function exampleBuffer_Next():Void
```


[\(view code\)](<./Bytes.hx#L3946>)


## function exampleBuffer\_Read


```haxe
function exampleBuffer_Read():Void
```


[\(view code\)](<./Bytes.hx#L3954>)


## function exampleBuffer\_ReadByte


```haxe
function exampleBuffer_ReadByte():Void
```


[\(view code\)](<./Bytes.hx#L3967>)


## function exampleBuffer\_reader


```haxe
function exampleBuffer_reader():Void
```


[\(view code\)](<./Bytes.hx#L3893>)


## function exampleClone


```haxe
function exampleClone():Void
```


[\(view code\)](<./Bytes.hx#L3978>)


## function exampleCompare


```haxe
function exampleCompare():Void
```


[\(view code\)](<./Bytes.hx#L3986>)


## function exampleCompare\_search


```haxe
function exampleCompare_search():Void
```


[\(view code\)](<./Bytes.hx#L3995>)


## function exampleContains


```haxe
function exampleContains():Void
```


[\(view code\)](<./Bytes.hx#L4003>)


## function exampleContainsAny


```haxe
function exampleContainsAny():Void
```


[\(view code\)](<./Bytes.hx#L4009>)


## function exampleContainsRune


```haxe
function exampleContainsRune():Void
```


[\(view code\)](<./Bytes.hx#L4015>)


## function exampleCount


```haxe
function exampleCount():Void
```


[\(view code\)](<./Bytes.hx#L4022>)


## function exampleCut


```haxe
function exampleCut():Void
```


[\(view code\)](<./Bytes.hx#L4026>)


## function exampleCutPrefix


```haxe
function exampleCutPrefix():Void
```


[\(view code\)](<./Bytes.hx#L4036>)


## function exampleCutSuffix


```haxe
function exampleCutSuffix():Void
```


[\(view code\)](<./Bytes.hx#L4044>)


## function exampleEqual


```haxe
function exampleEqual():Void
```


[\(view code\)](<./Bytes.hx#L4052>)


## function exampleEqualFold


```haxe
function exampleEqualFold():Void
```


[\(view code\)](<./Bytes.hx#L4056>)


## function exampleFields


```haxe
function exampleFields():Void
```


[\(view code\)](<./Bytes.hx#L4059>)


## function exampleFieldsFunc


```haxe
function exampleFieldsFunc():Void
```


[\(view code\)](<./Bytes.hx#L4062>)


## function exampleHasPrefix


```haxe
function exampleHasPrefix():Void
```


[\(view code\)](<./Bytes.hx#L4068>)


## function exampleHasSuffix


```haxe
function exampleHasSuffix():Void
```


[\(view code\)](<./Bytes.hx#L4073>)


## function exampleIndex


```haxe
function exampleIndex():Void
```


[\(view code\)](<./Bytes.hx#L4079>)


## function exampleIndexAny


```haxe
function exampleIndexAny():Void
```


[\(view code\)](<./Bytes.hx#L4094>)


## function exampleIndexByte


```haxe
function exampleIndexByte():Void
```


[\(view code\)](<./Bytes.hx#L4083>)


## function exampleIndexFunc


```haxe
function exampleIndexFunc():Void
```


[\(view code\)](<./Bytes.hx#L4087>)


## function exampleIndexRune


```haxe
function exampleIndexRune():Void
```


[\(view code\)](<./Bytes.hx#L4098>)


## function exampleJoin


```haxe
function exampleJoin():Void
```


[\(view code\)](<./Bytes.hx#L4102>)


## function exampleLastIndex


```haxe
function exampleLastIndex():Void
```


[\(view code\)](<./Bytes.hx#L4106>)


## function exampleLastIndexAny


```haxe
function exampleLastIndexAny():Void
```


[\(view code\)](<./Bytes.hx#L4111>)


## function exampleLastIndexByte


```haxe
function exampleLastIndexByte():Void
```


[\(view code\)](<./Bytes.hx#L4116>)


## function exampleLastIndexFunc


```haxe
function exampleLastIndexFunc():Void
```


[\(view code\)](<./Bytes.hx#L4121>)


## function exampleMap


```haxe
function exampleMap():Void
```


[\(view code\)](<./Bytes.hx#L4126>)


## function exampleReader\_Len


```haxe
function exampleReader_Len():Void
```


[\(view code\)](<./Bytes.hx#L4137>)


## function exampleRepeat


```haxe
function exampleRepeat():Void
```


[\(view code\)](<./Bytes.hx#L4141>)


## function exampleReplace


```haxe
function exampleReplace():Void
```


[\(view code\)](<./Bytes.hx#L4144>)


## function exampleReplaceAll


```haxe
function exampleReplaceAll():Void
```


[\(view code\)](<./Bytes.hx#L4148>)


## function exampleRunes


```haxe
function exampleRunes():Void
```


[\(view code\)](<./Bytes.hx#L4151>)


## function exampleSplit


```haxe
function exampleSplit():Void
```


[\(view code\)](<./Bytes.hx#L4157>)


## function exampleSplitAfter


```haxe
function exampleSplitAfter():Void
```


[\(view code\)](<./Bytes.hx#L4168>)


## function exampleSplitAfterN


```haxe
function exampleSplitAfterN():Void
```


[\(view code\)](<./Bytes.hx#L4171>)


## function exampleSplitN


```haxe
function exampleSplitN():Void
```


[\(view code\)](<./Bytes.hx#L4163>)


## function exampleTitle


```haxe
function exampleTitle():Void
```


[\(view code\)](<./Bytes.hx#L4174>)


## function exampleToLower


```haxe
function exampleToLower():Void
```


[\(view code\)](<./Bytes.hx#L4233>)


## function exampleToLowerSpecial


```haxe
function exampleToLowerSpecial():Void
```


[\(view code\)](<./Bytes.hx#L4236>)


## function exampleToTitle


```haxe
function exampleToTitle():Void
```


[\(view code\)](<./Bytes.hx#L4177>)


## function exampleToTitleSpecial


```haxe
function exampleToTitleSpecial():Void
```


[\(view code\)](<./Bytes.hx#L4181>)


## function exampleToUpper


```haxe
function exampleToUpper():Void
```


[\(view code\)](<./Bytes.hx#L4242>)


## function exampleToUpperSpecial


```haxe
function exampleToUpperSpecial():Void
```


[\(view code\)](<./Bytes.hx#L4245>)


## function exampleToValidUTF8


```haxe
function exampleToValidUTF8():Void
```


[\(view code\)](<./Bytes.hx#L4187>)


## function exampleTrim


```haxe
function exampleTrim():Void
```


[\(view code\)](<./Bytes.hx#L4192>)


## function exampleTrimFunc


```haxe
function exampleTrimFunc():Void
```


[\(view code\)](<./Bytes.hx#L4195>)


## function exampleTrimLeft


```haxe
function exampleTrimLeft():Void
```


[\(view code\)](<./Bytes.hx#L4201>)


## function exampleTrimLeftFunc


```haxe
function exampleTrimLeftFunc():Void
```


[\(view code\)](<./Bytes.hx#L4204>)


## function exampleTrimPrefix


```haxe
function exampleTrimPrefix():Void
```


[\(view code\)](<./Bytes.hx#L4209>)


## function exampleTrimRight


```haxe
function exampleTrimRight():Void
```


[\(view code\)](<./Bytes.hx#L4225>)


## function exampleTrimRightFunc


```haxe
function exampleTrimRightFunc():Void
```


[\(view code\)](<./Bytes.hx#L4228>)


## function exampleTrimSpace


```haxe
function exampleTrimSpace():Void
```


[\(view code\)](<./Bytes.hx#L4215>)


## function exampleTrimSuffix


```haxe
function exampleTrimSuffix():Void
```


[\(view code\)](<./Bytes.hx#L4218>)


## function testBasicOperations


```haxe
function testBasicOperations(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1017>)


## function testBufferGrowNegative


```haxe
function testBufferGrowNegative(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3035>)


## function testBufferGrowth


```haxe
function testBufferGrowth(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1629>)


## function testBufferTruncateNegative


```haxe
function testBufferTruncateNegative(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3076>)


## function testBufferTruncateOutOfRange


```haxe
function testBufferTruncateOutOfRange(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3117>)


## function testCapWithPreallocatedSlice


```haxe
function testCapWithPreallocatedSlice(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1146>)


## function testCapWithSliceAndWrittenData


```haxe
function testCapWithSliceAndWrittenData(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1153>)


## function testClone


```haxe
function testClone(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3575>)


## function testCompare


```haxe
function testCompare(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3595>)


## function testCompareBytes


```haxe
function testCompareBytes(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3621>)


## function testCompareIdenticalSlice


```haxe
function testCompareIdenticalSlice(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3612>)


## function testContains


```haxe
function testContains(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3159>)


## function testContainsAny


```haxe
function testContainsAny(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3169>)


## function testContainsFunc


```haxe
function testContainsFunc(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3183>)


## function testContainsRune


```haxe
function testContainsRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3176>)


## function testCountByte


```haxe
function testCountByte(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L2094>)


## function testCountByteNoMatch


```haxe
function testCountByteNoMatch(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L2159>)


## function testCut


```haxe
function testCut(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3005>)


## function testCutPrefix


```haxe
function testCutPrefix(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3015>)


## function testCutSuffix


```haxe
function testCutSuffix(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3025>)


## function testEmptyReaderConcurrent


```haxe
function testEmptyReaderConcurrent(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L4350>)


## function testEndianBaseCompare


```haxe
function testEndianBaseCompare(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L3685>)


## function testEqual


```haxe
function testEqual(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1774>)


## function testEqualExhaustive


```haxe
function testEqualExhaustive(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1787>)


## function testEqualFold


```haxe
function testEqualFold(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L2989>)


## function testFields


```haxe
function testFields(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L2534>)


## function testFieldsFunc


```haxe
function testFieldsFunc(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L2560>)


## function testGrow


```haxe
function testGrow(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1495>)


## function testGrowOverflow


```haxe
function testGrowOverflow(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1523>)


## function testIndex


```haxe
function testIndex(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1893>)


## function testIndexAny


```haxe
function testIndexAny(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1899>)


## function testIndexByte


```haxe
function testIndexByte(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1905>)


## function testIndexByteBig


```haxe
function testIndexByteBig(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1931>)


## function testIndexByteSmall


```haxe
function testIndexByteSmall(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1991>)


## function testIndexFunc


```haxe
function testIndexFunc(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L2932>)


## function testIndexRune


```haxe
function testIndexRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L2046>)


## function testLargeByteReads


```haxe
function testLargeByteReads(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1115>)


## function testLargeByteWrites


```haxe
function testLargeByteWrites(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1089>)


## function testLargeStringReads


```haxe
function testLargeStringReads(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1104>)


## function testLargeStringWrites


```haxe
function testLargeStringWrites(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1074>)


## function testLastIndex


```haxe
function testLastIndex(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1896>)


## function testLastIndexAny


```haxe
function testLastIndexAny(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1902>)


## function testLastIndexByte


```haxe
function testLastIndexByte(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1922>)


## function testMap


```haxe
function testMap(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L2628>)


## function testMixedReadsAndWrites


```haxe
function testMixedReadsAndWrites(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1126>)


## function testNewBuffer


```haxe
function testNewBuffer(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L994>)


## function testNewBufferString


```haxe
function testNewBufferString(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L998>)


## function testNext


```haxe
function testNext(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1396>)


## function testNil


```haxe
function testNil(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1161>)


## function testNotEqual


```haxe
function testNotEqual(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1823>)


## function testReadAfterBigSeek


```haxe
function testReadAfterBigSeek(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L4279>)


## function testReadBytes


```haxe
function testReadBytes(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1433>)


## function testReadEmptyAtEOF


```haxe
function testReadEmptyAtEOF(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1565>)


## function testReadFrom


```haxe
function testReadFrom(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1167>)


## function testReadFromNegativeReader


```haxe
function testReadFromNegativeReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1225>)


## function testReadFromPanicReader


```haxe
function testReadFromPanicReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1179>)


## function testReadString


```haxe
function testReadString(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1456>)


## function testReader


```haxe
function testReader(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L4251>)


## function testReaderAt


```haxe
function testReaderAt(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L4294>)


## function testReaderAtConcurrent


```haxe
function testReaderAtConcurrent(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L4309>)


## function testReaderCopyNothing


```haxe
function testReaderCopyNothing(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L4559>)


## function testReaderDoubleUnreadRune


```haxe
function testReaderDoubleUnreadRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L4500>)


## function testReaderLen


```haxe
function testReaderLen(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L4450>)


## function testReaderLenSize


```haxe
function testReaderLenSize(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L4579>)


## function testReaderReset


```haxe
function testReaderReset(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L4591>)


## function testReaderWriteTo


```haxe
function testReaderWriteTo(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L4420>)


## function testReaderZero


```haxe
function testReaderZero(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L4618>)


## function testRepeat


```haxe
function testRepeat(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L2725>)


## function testRepeatCatchesOverflow


```haxe
function testRepeatCatchesOverflow(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L2792>)


## function testReplace


```haxe
function testReplace(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L2944>)


## function testRuneIO


```haxe
function testRuneIO(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1318>)


## function testRunes


```haxe
function testRunes(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L2828>)


## function testSplit


```haxe
function testSplit(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L2463>)


## function testSplitAfter


```haxe
function testSplitAfter(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L2504>)


## function testTitle


```haxe
function testTitle(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L2969>)


## function testToLower


```haxe
function testToLower(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L2679>)


## function testToTitle


```haxe
function testToTitle(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L2979>)


## function testToUpper


```haxe
function testToUpper(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L2676>)


## function testToValidUTF8


```haxe
function testToValidUTF8(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L2714>)


## function testTrim


```haxe
function testTrim(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L2844>)


## function testTrimFunc


```haxe
function testTrimFunc(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L2915>)


## function testTrimSpace


```haxe
function testTrimSpace(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L2722>)


## function testUnreadByte


```haxe
function testUnreadByte(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1576>)


## function testUnreadRuneError


```haxe
function testUnreadRuneError(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L4484>)


## function testWriteAppend


```haxe
function testWriteAppend(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1288>)


## function testWriteInvalidRune


```haxe
function testWriteInvalidRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1389>)


## function testWriteTo


```haxe
function testWriteTo(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bytes.hx#L1276>)


## function main


```haxe
function main():Void
```


[\(view code\)](<./Bytes.hx#L213>)


# Classes


```haxe
import stdgo._internal.bytes_test.*
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
function new(?_a:stdgo.GoString, ?_b:stdgo.GoString, ?_i:stdgo.GoInt):Void
```


[\(view code\)](<./Bytes_test.hx#L449>)


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


[\(view code\)](<./Bytes_test.hx#L478>)


## class IndexFuncTest


```haxe
var _f:stdgo._internal.bytes_test.T_predicate
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
function new(?_in:stdgo.GoString, ?_f:stdgo._internal.bytes_test.T_predicate, ?_first:stdgo.GoInt, ?_last:stdgo.GoInt):Void
```


[\(view code\)](<./Bytes_test.hx#L594>)


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
function new(?_in:stdgo.GoString, ?_out:stdgo.GoString, ?_count:stdgo.GoInt):Void
```


[\(view code\)](<./Bytes_test.hx#L503>)


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
function new(?_in:stdgo.GoString, ?_old:stdgo.GoString, ?_new:stdgo.GoString, ?_n:stdgo.GoInt, ?_out:stdgo.GoString):Void
```


[\(view code\)](<./Bytes_test.hx#L611>)


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


[\(view code\)](<./Bytes_test.hx#L517>)


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


[\(view code\)](<./Bytes_test.hx#L464>)


## class StringTest


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


[\(view code\)](<./Bytes_test.hx#L490>)


## class T\_testReaderCopyNothing\_\_\_localname\_\_\_justReader\_5869


```haxe
var reader:stdgo._internal.io.Reader
```


### T\_testReaderCopyNothing\_\_\_localname\_\_\_justReader\_5869 function new


```haxe
function new(?reader:Null<stdgo._internal.io.Reader>):Void
```


[\(view code\)](<./Bytes_test.hx#L4536>)


### T\_testReaderCopyNothing\_\_\_localname\_\_\_justReader\_5869 function read


```haxe
function read(__0:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Bytes_test.hx#L4541>)


### T\_testReaderCopyNothing\_\_\_localname\_\_\_justReader\_5869 function read


```haxe
function read( __0:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Bytes_test.hx#L4739>)


## class T\_testReaderCopyNothing\_\_\_localname\_\_\_justWriter\_5910


```haxe
var writer:stdgo._internal.io.Writer
```


### T\_testReaderCopyNothing\_\_\_localname\_\_\_justWriter\_5910 function new


```haxe
function new(?writer:Null<stdgo._internal.io.Writer>):Void
```


[\(view code\)](<./Bytes_test.hx#L4549>)


### T\_testReaderCopyNothing\_\_\_localname\_\_\_justWriter\_5910 function write


```haxe
function write(__0:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Bytes_test.hx#L4554>)


### T\_testReaderCopyNothing\_\_\_localname\_\_\_justWriter\_5910 function write


```haxe
function write( __0:stdgo.Slice<stdgo.GoUInt8>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Bytes_test.hx#L4754>)


## class T\_testReaderCopyNothing\_\_\_localname\_\_\_nErr\_5822


```haxe
var _err:stdgo.Error
```


```haxe
var _n:stdgo.GoInt64
```


### T\_testReaderCopyNothing\_\_\_localname\_\_\_nErr\_5822 function new


```haxe
function new(?_n:stdgo.GoInt64, ?_err:Null<stdgo.Error>):Void
```


[\(view code\)](<./Bytes_test.hx#L4524>)


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


[\(view code\)](<./Bytes_test.hx#L626>)


## class TrimFuncTest


```haxe
var _f:stdgo._internal.bytes_test.T_predicate
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
function new(?_f:stdgo._internal.bytes_test.T_predicate, ?_in:stdgo.GoString, ?_trimOut:stdgo.Slice<stdgo.GoUInt8>, ?_leftOut:stdgo.Slice<stdgo.GoUInt8>, ?_rightOut:stdgo.Slice<stdgo.GoUInt8>):Void
```


[\(view code\)](<./Bytes_test.hx#L577>)


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


[\(view code\)](<./Bytes_test.hx#L548>)


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


[\(view code\)](<./Bytes_test.hx#L532>)


# Typedefs


```haxe
import stdgo._internal.bytes_test.*
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


