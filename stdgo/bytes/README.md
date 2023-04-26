# Module: `stdgo.bytes`

[(view library index)](../stdgo.md)


# Overview



Package bytes implements functions for the manipulation of byte slices.
It is analogous to the facilities of the strings package.  

<details><summary>hl tests passed</summary>
<p>

```
=== RUN  TestNewBuffer
--- PASS: TestNewBuffer (%!s(float64=0.0007259845733642578))

=== RUN  TestNewBufferString
--- PASS: TestNewBufferString (%!s(float64=0.0022499561309814453))

=== RUN  TestBasicOperations
--- PASS: TestBasicOperations (%!s(float64=0.00032782554626464844))

=== RUN  TestLargeStringWrites
--- PASS: TestLargeStringWrites (%!s(float64=0.1433858871459961))

=== RUN  TestLargeByteWrites
--- PASS: TestLargeByteWrites (%!s(float64=0.15530085563659668))

=== RUN  TestLargeStringReads
--- PASS: TestLargeStringReads (%!s(float64=0.024200916290283203))

=== RUN  TestLargeByteReads
--- PASS: TestLargeByteReads (%!s(float64=0.03633689880371094))

=== RUN  TestMixedReadsAndWrites
--- PASS: TestMixedReadsAndWrites (%!s(float64=0.19464707374572754))

=== RUN  TestCapWithPreallocatedSlice
--- PASS: TestCapWithPreallocatedSlice (%!s(float64=7.867813110351562e-06))

=== RUN  TestCapWithSliceAndWrittenData
--- PASS: TestCapWithSliceAndWrittenData (%!s(float64=1.0967254638671875e-05))

=== RUN  TestNil
--- PASS: TestNil (%!s(float64=5.9604644775390625e-06))

=== RUN  TestReadFrom
--- PASS: TestReadFrom (%!s(float64=0.08237314224243164))

=== RUN  TestReadFromPanicReader
--- PASS: TestReadFromPanicReader (%!s(float64=0.00021982192993164062))

=== RUN  TestReadFromNegativeReader
--- PASS: TestReadFromNegativeReader (%!s(float64=0.00020313262939453125))

=== RUN  TestWriteTo
--- PASS: TestWriteTo (%!s(float64=0.0405430793762207))

=== RUN  TestRuneIO
--- PASS: TestRuneIO (%!s(float64=0.006597042083740234))

=== RUN  TestWriteInvalidRune
--- PASS: TestWriteInvalidRune (%!s(float64=0.0005369186401367188))

=== RUN  TestNext
--- PASS: TestNext (%!s(float64=0.00033783912658691406))

=== RUN  TestReadBytes
--- PASS: TestReadBytes (%!s(float64=0.0001239776611328125))

=== RUN  TestReadString
--- PASS: TestReadString (%!s(float64=9.703636169433594e-05))

=== RUN  TestGrow
bytes_test/Bytes_test.hx:1886: testGrow skip function
--- PASS: TestGrow (%!s(float64=3.0994415283203125e-05))

=== RUN  TestGrowOverflow
--- PASS: TestGrowOverflow (%!s(float64=6.389617919921875e-05))

=== RUN  TestReadEmptyAtEOF
--- PASS: TestReadEmptyAtEOF (%!s(float64=1.9073486328125e-05))

=== RUN  TestUnreadByte
--- PASS: TestUnreadByte (%!s(float64=4.601478576660156e-05))

=== RUN  TestBufferGrowth
--- PASS: TestBufferGrowth (%!s(float64=1.6126708984375))

=== RUN  TestEqual
--- PASS: TestEqual (%!s(float64=6.9141387939453125e-06))

=== RUN  TestEqualExhaustive
--- PASS: TestEqualExhaustive (%!s(float64=0.14663910865783691))

=== RUN  TestNotEqual
--- PASS: TestNotEqual (%!s(float64=0.45713281631469727))

=== RUN  TestIndex
--- PASS: TestIndex (%!s(float64=0.0008168220520019531))

=== RUN  TestLastIndex
--- PASS: TestLastIndex (%!s(float64=7.796287536621094e-05))

=== RUN  TestIndexAny
--- PASS: TestIndexAny (%!s(float64=0.0001251697540283203))

=== RUN  TestLastIndexAny
--- PASS: TestLastIndexAny (%!s(float64=0.00011014938354492188))

=== RUN  TestIndexByte
--- PASS: TestIndexByte (%!s(float64=0.00019693374633789062))

=== RUN  TestLastIndexByte
--- PASS: TestLastIndexByte (%!s(float64=4.38690185546875e-05))

=== RUN  TestIndexByteBig
--- PASS: TestIndexByteBig (%!s(float64=0.05613112449645996))

=== RUN  TestIndexByteSmall
--- PASS: TestIndexByteSmall (%!s(float64=0.14095687866210938))

=== RUN  TestIndexRune
--- PASS: TestIndexRune (%!s(float64=0.00011205673217773438))

=== RUN  TestCountByte
--- PASS: TestCountByte (%!s(float64=37.384324073791504))

=== RUN  TestCountByteNoMatch
--- PASS: TestCountByteNoMatch (%!s(float64=2.931425094604492))

=== RUN  TestSplit
bytes_test/Bytes_test.hx:2859: testSplit skip function
--- PASS: TestSplit (%!s(float64=1.7881393432617188e-05))

=== RUN  TestSplitAfter
--- PASS: TestSplitAfter (%!s(float64=0.0025560855865478516))

=== RUN  TestFields
--- PASS: TestFields (%!s(float64=0.00021195411682128906))

=== RUN  TestFieldsFunc
--- PASS: TestFieldsFunc (%!s(float64=0.00024390220642089844))

=== RUN  TestMap
--- PASS: TestMap (%!s(float64=0.00011897087097167969))

=== RUN  TestToUpper
--- PASS: TestToUpper (%!s(float64=0.00015020370483398438))

=== RUN  TestToLower
--- PASS: TestToLower (%!s(float64=0.0001201629638671875))

=== RUN  TestToValidUTF8
--- PASS: TestToValidUTF8 (%!s(float64=0.00020384788513183594))

=== RUN  TestTrimSpace
--- PASS: TestTrimSpace (%!s(float64=0.00012993812561035156))

=== RUN  TestRepeat
--- PASS: TestRepeat (%!s(float64=0.11020708084106445))

=== RUN  TestRepeatCatchesOverflow
--- PASS: TestRepeatCatchesOverflow (%!s(float64=0.001589059829711914))

=== RUN  TestRunes
--- PASS: TestRunes (%!s(float64=0.00010991096496582031))

=== RUN  TestTrim
--- PASS: TestTrim (%!s(float64=0.0003650188446044922))

=== RUN  TestTrimFunc
--- PASS: TestTrimFunc (%!s(float64=0.0003199577331542969))

=== RUN  TestIndexFunc
--- PASS: TestIndexFunc (%!s(float64=0.000102996826171875))

=== RUN  TestReplace
--- PASS: TestReplace (%!s(float64=0.0004470348358154297))

=== RUN  TestTitle
--- PASS: TestTitle (%!s(float64=0.0002238750457763672))

=== RUN  TestToTitle
--- PASS: TestToTitle (%!s(float64=8.106231689453125e-05))

=== RUN  TestEqualFold
--- PASS: TestEqualFold (%!s(float64=0.0001461505889892578))

=== RUN  TestCut
--- PASS: TestCut (%!s(float64=5.0067901611328125e-05))

=== RUN  TestCutPrefix
--- PASS: TestCutPrefix (%!s(float64=4.100799560546875e-05))

=== RUN  TestCutSuffix
--- PASS: TestCutSuffix (%!s(float64=4.00543212890625e-05))

=== RUN  TestBufferGrowNegative
--- PASS: TestBufferGrowNegative (%!s(float64=3.314018249511719e-05))

=== RUN  TestBufferTruncateNegative
--- PASS: TestBufferTruncateNegative (%!s(float64=3.0994415283203125e-05))

=== RUN  TestBufferTruncateOutOfRange
--- PASS: TestBufferTruncateOutOfRange (%!s(float64=3.504753112792969e-05))

=== RUN  TestContains
--- PASS: TestContains (%!s(float64=4.00543212890625e-05))

=== RUN  TestContainsAny
--- PASS: TestContainsAny (%!s(float64=6.4849853515625e-05))

=== RUN  TestContainsRune
--- PASS: TestContainsRune (%!s(float64=3.504753112792969e-05))

=== RUN  TestClone
--- PASS: TestClone (%!s(float64=0.00023221969604492188))

=== RUN  TestCompare
--- PASS: TestCompare (%!s(float64=0.0004761219024658203))

=== RUN  TestCompareIdenticalSlice
--- PASS: TestCompareIdenticalSlice (%!s(float64=3.600120544433594e-05))

=== RUN  TestCompareBytes
bytes_test/Bytes_test.hx:4028: testCompareBytes skip function
--- PASS: TestCompareBytes (%!s(float64=2.6941299438476562e-05))

=== RUN  TestEndianBaseCompare
--- PASS: TestEndianBaseCompare (%!s(float64=0.029577016830444336))

=== RUN  TestReader
--- PASS: TestReader (%!s(float64=0.00011014938354492188))

=== RUN  TestReadAfterBigSeek
--- PASS: TestReadAfterBigSeek (%!s(float64=2.09808349609375e-05))

=== RUN  TestReaderAt
--- PASS: TestReaderAt (%!s(float64=0.0038869380950927734))

=== RUN  TestReaderAtConcurrent
--- PASS: TestReaderAtConcurrent (%!s(float64=0.0010390281677246094))

=== RUN  TestEmptyReaderConcurrent
--- PASS: TestEmptyReaderConcurrent (%!s(float64=0.001157999038696289))

=== RUN  TestReaderWriteTo
--- PASS: TestReaderWriteTo (%!s(float64=0.0032389163970947266))

=== RUN  TestReaderLen
--- PASS: TestReaderLen (%!s(float64=3.218650817871094e-05))

=== RUN  TestUnreadRuneError
--- PASS: TestUnreadRuneError (%!s(float64=6.604194641113281e-05))

=== RUN  TestReaderDoubleUnreadRune
--- PASS: TestReaderDoubleUnreadRune (%!s(float64=2.09808349609375e-05))

=== RUN  TestReaderCopyNothing
--- PASS: TestReaderCopyNothing (%!s(float64=0.02858877182006836))

=== RUN  TestReaderLenSize
bytes_test/Bytes_test.hx:4947: testReaderLenSize skip function
--- PASS: TestReaderLenSize (%!s(float64=1.7881393432617188e-05))

=== RUN  TestReaderReset
--- PASS: TestReaderReset (%!s(float64=6.699562072753906e-05))

=== RUN  TestReaderZero
--- PASS: TestReaderZero (%!s(float64=6.890296936035156e-05))

```
</p>
</details>

<details><summary>interp tests failed</summary>
<p>

```
Invalid_argument("index out of bounds")
=== RUN  TestNewBuffer
--- PASS: TestNewBuffer (%!s(float64=0.00913691520690918))

=== RUN  TestNewBufferString
--- PASS: TestNewBufferString (%!s(float64=0.014223098754882812))

=== RUN  TestBasicOperations
--- PASS: TestBasicOperations (%!s(float64=0.0016880035400390625))

=== RUN  TestLargeStringWrites
--- PASS: TestLargeStringWrites (%!s(float64=1.3500359058380127))

=== RUN  TestLargeByteWrites
--- PASS: TestLargeByteWrites (%!s(float64=1.328843116760254))

=== RUN  TestLargeStringReads
--- PASS: TestLargeStringReads (%!s(float64=0.22136783599853516))

=== RUN  TestLargeByteReads
--- PASS: TestLargeByteReads (%!s(float64=0.20424294471740723))

=== RUN  TestMixedReadsAndWrites
--- PASS: TestMixedReadsAndWrites (%!s(float64=2.080796003341675))

=== RUN  TestCapWithPreallocatedSlice
--- PASS: TestCapWithPreallocatedSlice (%!s(float64=1.3828277587890625e-05))

=== RUN  TestCapWithSliceAndWrittenData
--- PASS: TestCapWithSliceAndWrittenData (%!s(float64=2.5987625122070312e-05))

=== RUN  TestNil
--- PASS: TestNil (%!s(float64=2.2172927856445312e-05))

=== RUN  TestReadFrom
--- PASS: TestReadFrom (%!s(float64=0.2577381134033203))

=== RUN  TestReadFromPanicReader
--- PASS: TestReadFromPanicReader (%!s(float64=0.00045108795166015625))

=== RUN  TestReadFromNegativeReader
--- PASS: TestReadFromNegativeReader (%!s(float64=0.0003070831298828125))

=== RUN  TestWriteTo
--- PASS: TestWriteTo (%!s(float64=0.23209786415100098))

=== RUN  TestRuneIO
--- PASS: TestRuneIO (%!s(float64=0.03554797172546387))

=== RUN  TestWriteInvalidRune
--- PASS: TestWriteInvalidRune (%!s(float64=0.0008690357208251953))

=== RUN  TestNext
--- PASS: TestNext (%!s(float64=0.0014641284942626953))

=== RUN  TestReadBytes
--- PASS: TestReadBytes (%!s(float64=0.000331878662109375))

=== RUN  TestReadString
--- PASS: TestReadString (%!s(float64=0.0002830028533935547))

=== RUN  TestGrow
bytes_test/Bytes_test.hx:1886: testGrow skip function
--- PASS: TestGrow (%!s(float64=2.6941299438476562e-05))

=== RUN  TestGrowOverflow
--- PASS: TestGrowOverflow (%!s(float64=7.605552673339844e-05))

=== RUN  TestReadEmptyAtEOF
--- PASS: TestReadEmptyAtEOF (%!s(float64=2.288818359375e-05))

=== RUN  TestUnreadByte
--- PASS: TestUnreadByte (%!s(float64=6.699562072753906e-05))

=== RUN  TestBufferGrowth
--- PASS: TestBufferGrowth (%!s(float64=3.7597458362579346))

=== RUN  TestEqual
--- PASS: TestEqual (%!s(float64=1.0013580322265625e-05))

=== RUN  TestEqualExhaustive
--- PASS: TestEqualExhaustive (%!s(float64=0.5150949954986572))

=== RUN  TestNotEqual
--- PASS: TestNotEqual (%!s(float64=2.67167592048645))

=== RUN  TestIndex
--- PASS: TestIndex (%!s(float64=0.003844022750854492))

=== RUN  TestLastIndex
--- PASS: TestLastIndex (%!s(float64=0.00021886825561523438))

=== RUN  TestIndexAny
--- PASS: TestIndexAny (%!s(float64=0.0005419254302978516))

=== RUN  TestLastIndexAny
--- PASS: TestLastIndexAny (%!s(float64=0.0005700588226318359))

=== RUN  TestIndexByte
--- PASS: TestIndexByte (%!s(float64=0.000186920166015625))

=== RUN  TestLastIndexByte
--- PASS: TestLastIndexByte (%!s(float64=8.20159912109375e-05))

=== RUN  TestIndexByteBig
--- PASS: TestIndexByteBig (%!s(float64=0.6319499015808105))

=== RUN  TestIndexByteSmall
--- PASS: TestIndexByteSmall (%!s(float64=0.7386159896850586))

=== RUN  TestIndexRune
--- PASS: TestIndexRune (%!s(float64=0.0008890628814697266))

=== RUN  TestCountByte
--- PASS: TestCountByte (%!s(float64=24.618243932724))

=== RUN  TestCountByteNoMatch
--- PASS: TestCountByteNoMatch (%!s(float64=3.6480538845062256))

=== RUN  TestSplit
bytes_test/Bytes_test.hx:2859: testSplit skip function
--- PASS: TestSplit (%!s(float64=1.9073486328125e-05))

=== RUN  TestSplitAfter
--- PASS: TestSplitAfter (%!s(float64=0.0038611888885498047))

=== RUN  TestFields
--- PASS: TestFields (%!s(float64=0.0010721683502197266))

=== RUN  TestFieldsFunc
--- PASS: TestFieldsFunc (%!s(float64=0.0009279251098632812))

=== RUN  TestMap
--- PASS: TestMap (%!s(float64=0.0006210803985595703))

=== RUN  TestToUpper
--- PASS: TestToUpper (%!s(float64=0.0008831024169921875))

=== RUN  TestToLower
--- PASS: TestToLower (%!s(float64=0.0006899833679199219))

=== RUN  TestToValidUTF8
--- PASS: TestToValidUTF8 (%!s(float64=0.0007860660552978516))

=== RUN  TestTrimSpace
--- PASS: TestTrimSpace (%!s(float64=0.0007388591766357422))

=== RUN  TestRepeat
--- PASS: TestRepeat (%!s(float64=0.4828791618347168))

=== RUN  TestRepeatCatchesOverflow
--- PASS: TestRepeatCatchesOverflow (%!s(float64=0.0020599365234375))

=== RUN  TestRunes
--- PASS: TestRunes (%!s(float64=0.000247955322265625))

=== RUN  TestTrim
--- PASS: TestTrim (%!s(float64=0.0014581680297851562))

=== RUN  TestTrimFunc
--- PASS: TestTrimFunc (%!s(float64=0.0017809867858886719))

=== RUN  TestIndexFunc
--- PASS: TestIndexFunc (%!s(float64=0.0006210803985595703))

=== RUN  TestReplace
--- PASS: TestReplace (%!s(float64=0.0018439292907714844))

=== RUN  TestTitle
--- PASS: TestTitle (%!s(float64=0.0007801055908203125))

=== RUN  TestToTitle
--- PASS: TestToTitle (%!s(float64=0.00034809112548828125))

=== RUN  TestEqualFold
--- PASS: TestEqualFold (%!s(float64=0.0007429122924804688))

=== RUN  TestCut
--- PASS: TestCut (%!s(float64=0.0001220703125))

=== RUN  TestCutPrefix
--- PASS: TestCutPrefix (%!s(float64=9.298324584960938e-05))

=== RUN  TestCutSuffix
--- PASS: TestCutSuffix (%!s(float64=9.512901306152344e-05))

=== RUN  TestBufferGrowNegative
--- PASS: TestBufferGrowNegative (%!s(float64=4.506111145019531e-05))

=== RUN  TestBufferTruncateNegative
--- PASS: TestBufferTruncateNegative (%!s(float64=3.790855407714844e-05))

=== RUN  TestBufferTruncateOutOfRange
--- PASS: TestBufferTruncateOutOfRange (%!s(float64=5.0067901611328125e-05))

=== RUN  TestContains
--- PASS: TestContains (%!s(float64=4.696846008300781e-05))

=== RUN  TestContainsAny
--- PASS: TestContainsAny (%!s(float64=0.0002357959747314453))

=== RUN  TestContainsRune
--- PASS: TestContainsRune (%!s(float64=9.393692016601562e-05))

=== RUN  TestClone
--- PASS: TestClone (%!s(float64=0.0007939338684082031))

=== RUN  TestCompare
--- PASS: TestCompare (%!s(float64=0.002254009246826172))

=== RUN  TestCompareIdenticalSlice
--- PASS: TestCompareIdenticalSlice (%!s(float64=3.504753112792969e-05))

=== RUN  TestCompareBytes
bytes_test/Bytes_test.hx:4028: testCompareBytes skip function
--- PASS: TestCompareBytes (%!s(float64=1.5020370483398438e-05))

=== RUN  TestEndianBaseCompare
--- PASS: TestEndianBaseCompare (%!s(float64=0.37433314323425293))

=== RUN  TestReader
--- PASS: TestReader (%!s(float64=0.0004420280456542969))

=== RUN  TestReadAfterBigSeek
--- PASS: TestReadAfterBigSeek (%!s(float64=5.412101745605469e-05))

=== RUN  TestReaderAt
--- PASS: TestReaderAt (%!s(float64=0.004307985305786133))

=== RUN  TestReaderAtConcurrent
--- PASS: TestReaderAtConcurrent (%!s(float64=0.0010309219360351562))

=== RUN  TestEmptyReaderConcurrent
--- PASS: TestEmptyReaderConcurrent (%!s(float64=0.002095937728881836))

=== RUN  TestReaderWriteTo
--- PASS: TestReaderWriteTo (%!s(float64=0.015687942504882812))

=== RUN  TestReaderLen
--- PASS: TestReaderLen (%!s(float64=6.389617919921875e-05))

=== RUN  TestUnreadRuneError
--- PASS: TestUnreadRuneError (%!s(float64=0.00016880035400390625))

=== RUN  TestReaderDoubleUnreadRune
--- PASS: TestReaderDoubleUnreadRune (%!s(float64=2.09808349609375e-05))

=== RUN  TestReaderCopyNothing
```
</p>
</details>

<details><summary>jvm tests failed</summary>
<p>

```
IO.Overflow("write_ui16")
```
</p>
</details>


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function clone(_b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#function-clone>)

- [`function compare(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt`](<#function-compare>)

- [`function contains(_b:stdgo.Slice<stdgo.GoByte>, _subslice:stdgo.Slice<stdgo.GoByte>):Bool`](<#function-contains>)

- [`function containsAny(_b:stdgo.Slice<stdgo.GoByte>, _chars:stdgo.GoString):Bool`](<#function-containsany>)

- [`function containsRune(_b:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):Bool`](<#function-containsrune>)

- [`function count(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt`](<#function-count>)

- [`function cut(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):{
	_2:Bool;
	_1:stdgo.Slice<stdgo.GoByte>;
	_0:stdgo.Slice<stdgo.GoByte>;
}`](<#function-cut>)

- [`function cutPrefix(_s:stdgo.Slice<stdgo.GoByte>, _prefix:stdgo.Slice<stdgo.GoByte>):{
	_1:Bool;
	_0:stdgo.Slice<stdgo.GoByte>;
}`](<#function-cutprefix>)

- [`function cutSuffix(_s:stdgo.Slice<stdgo.GoByte>, _suffix:stdgo.Slice<stdgo.GoByte>):{
	_1:Bool;
	_0:stdgo.Slice<stdgo.GoByte>;
}`](<#function-cutsuffix>)

- [`function equal(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):Bool`](<#function-equal>)

- [`function equalFold(_s:stdgo.Slice<stdgo.GoByte>, _t:stdgo.Slice<stdgo.GoByte>):Bool`](<#function-equalfold>)

- [`function fields(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>`](<#function-fields>)

- [`function fieldsFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:()):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>`](<#function-fieldsfunc>)

- [`function hasPrefix(_s:stdgo.Slice<stdgo.GoByte>, _prefix:stdgo.Slice<stdgo.GoByte>):Bool`](<#function-hasprefix>)

- [`function hasSuffix(_s:stdgo.Slice<stdgo.GoByte>, _suffix:stdgo.Slice<stdgo.GoByte>):Bool`](<#function-hassuffix>)

- [`function index(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt`](<#function-index>)

- [`function indexAny(_s:stdgo.Slice<stdgo.GoByte>, _chars:stdgo.GoString):stdgo.GoInt`](<#function-indexany>)

- [`function indexByte(_b:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.GoInt`](<#function-indexbyte>)

- [`function indexBytePortable(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.GoInt`](<#function-indexbyteportable>)

- [`function indexFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):stdgo.GoInt`](<#function-indexfunc>)

- [`function indexRune(_s:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.GoInt`](<#function-indexrune>)

- [`function join(_s:stdgo.Slice<stdgo.Slice<stdgo.GoByte>>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#function-join>)

- [`function lastIndex(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt`](<#function-lastindex>)

- [`function lastIndexAny(_s:stdgo.Slice<stdgo.GoByte>, _chars:stdgo.GoString):stdgo.GoInt`](<#function-lastindexany>)

- [`function lastIndexByte(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.GoInt`](<#function-lastindexbyte>)

- [`function lastIndexFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):stdgo.GoInt`](<#function-lastindexfunc>)

- [`function map(_mapping:(_r:stdgo.GoRune):stdgo.GoRune, _s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#function-map>)

- [`function newBuffer(_buf:stdgo.Slice<stdgo.GoByte>):stdgo.Ref<stdgo.bytes.Buffer>`](<#function-newbuffer>)

- [`function newBufferString(_s:stdgo.GoString):stdgo.Ref<stdgo.bytes.Buffer>`](<#function-newbufferstring>)

- [`function newReader(_b:stdgo.Slice<stdgo.GoByte>):stdgo.Ref<stdgo.bytes.Reader>`](<#function-newreader>)

- [`function repeat(_b:stdgo.Slice<stdgo.GoByte>, _count:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>`](<#function-repeat>)

- [`function replace(_s:stdgo.Slice<stdgo.GoByte>, _old:stdgo.Slice<stdgo.GoByte>, _new:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>`](<#function-replace>)

- [`function replaceAll(_s:stdgo.Slice<stdgo.GoByte>, _old:stdgo.Slice<stdgo.GoByte>, _new:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#function-replaceall>)

- [`function runes(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoRune>`](<#function-runes>)

- [`function split(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>`](<#function-split>)

- [`function splitAfter(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>`](<#function-splitafter>)

- [`function splitAfterN(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>`](<#function-splitaftern>)

- [`function splitN(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>`](<#function-splitn>)

- [`function title(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#function-title>)

- [`function toLower(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#function-tolower>)

- [`function toLowerSpecial(_c:stdgo.unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#function-tolowerspecial>)

- [`function toTitle(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#function-totitle>)

- [`function toTitleSpecial(_c:stdgo.unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#function-totitlespecial>)

- [`function toUpper(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#function-toupper>)

- [`function toUpperSpecial(_c:stdgo.unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#function-toupperspecial>)

- [`function toValidUTF8(_s:stdgo.Slice<stdgo.GoByte>, _replacement:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#function-tovalidutf8>)

- [`function trim(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoByte>`](<#function-trim>)

- [`function trimFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):stdgo.Slice<stdgo.GoByte>`](<#function-trimfunc>)

- [`function trimLeft(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoByte>`](<#function-trimleft>)

- [`function trimLeftFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):stdgo.Slice<stdgo.GoByte>`](<#function-trimleftfunc>)

- [`function trimPrefix(_s:stdgo.Slice<stdgo.GoByte>, _prefix:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#function-trimprefix>)

- [`function trimRight(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoByte>`](<#function-trimright>)

- [`function trimRightFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):stdgo.Slice<stdgo.GoByte>`](<#function-trimrightfunc>)

- [`function trimSpace(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#function-trimspace>)

- [`function trimSuffix(_s:stdgo.Slice<stdgo.GoByte>, _suffix:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>`](<#function-trimsuffix>)

- [class Buffer](<#class-buffer>)

  - [`function new(?_buf:stdgo.Slice<stdgo.GoUInt8>, ?_off:Null<stdgo.GoInt>, ?_lastRead:Null<stdgo.bytes._Bytes.T_readOp>):Void`](<#buffer-function-new>)

  - [`function _empty():Bool`](<#buffer-function-_empty>)

  - [`function _grow( _n:stdgo.GoInt):stdgo.GoInt`](<#buffer-function-_grow>)

  - [`function _readSlice( _delim:stdgo.GoByte):{ _1:stdgo.Error; _0:stdgo.Slice<stdgo.GoByte>;}`](<#buffer-function-_readslice>)

  - [`function _tryGrowByReslice( _n:stdgo.GoInt):{ _1:Bool; _0:stdgo.GoInt;}`](<#buffer-function-_trygrowbyreslice>)

  - [`function bytes():stdgo.Slice<stdgo.GoByte>`](<#buffer-function-bytes>)

  - [`function cap():stdgo.GoInt`](<#buffer-function-cap>)

  - [`function grow( _n:stdgo.GoInt):Void`](<#buffer-function-grow>)

  - [`function len():stdgo.GoInt`](<#buffer-function-len>)

  - [`function next( _n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>`](<#buffer-function-next>)

  - [`function read( _p:stdgo.Slice<stdgo.GoByte>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#buffer-function-read>)

  - [`function readByte():{ _1:stdgo.Error; _0:stdgo.GoByte;}`](<#buffer-function-readbyte>)

  - [`function readBytes( _delim:stdgo.GoByte):{ _1:stdgo.Error; _0:stdgo.Slice<stdgo.GoByte>;}`](<#buffer-function-readbytes>)

  - [`function readFrom( _r:stdgo.io.Reader):{ _1:stdgo.Error; _0:stdgo.GoInt64;}`](<#buffer-function-readfrom>)

  - [`function readRune():{ _2:stdgo.Error; _1:stdgo.GoInt; _0:stdgo.GoRune;}`](<#buffer-function-readrune>)

  - [`function readString( _delim:stdgo.GoByte):{ _1:stdgo.Error; _0:stdgo.GoString;}`](<#buffer-function-readstring>)

  - [`function reset():Void`](<#buffer-function-reset>)

  - [`function string():stdgo.GoString`](<#buffer-function-string>)

  - [`function truncate( _n:stdgo.GoInt):Void`](<#buffer-function-truncate>)

  - [`function unreadByte():stdgo.Error`](<#buffer-function-unreadbyte>)

  - [`function unreadRune():stdgo.Error`](<#buffer-function-unreadrune>)

  - [`function write( _p:stdgo.Slice<stdgo.GoByte>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#buffer-function-write>)

  - [`function writeByte( _c:stdgo.GoByte):stdgo.Error`](<#buffer-function-writebyte>)

  - [`function writeRune( _r:stdgo.GoRune):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#buffer-function-writerune>)

  - [`function writeString( _s:stdgo.GoString):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#buffer-function-writestring>)

  - [`function writeTo( _w:stdgo.io.Writer):{ _1:stdgo.Error; _0:stdgo.GoInt64;}`](<#buffer-function-writeto>)

- [class Reader](<#class-reader>)

  - [`function new(?_s:stdgo.Slice<stdgo.GoUInt8>, ?_i:stdgo.GoInt64, ?_prevRune:Null<stdgo.GoInt>):Void`](<#reader-function-new>)

  - [`function len():stdgo.GoInt`](<#reader-function-len>)

  - [`function read( _b:stdgo.Slice<stdgo.GoByte>):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#reader-function-read>)

  - [`function readAt( _b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{ _1:stdgo.Error; _0:stdgo.GoInt;}`](<#reader-function-readat>)

  - [`function readByte():{ _1:stdgo.Error; _0:stdgo.GoByte;}`](<#reader-function-readbyte>)

  - [`function readRune():{ _2:stdgo.Error; _1:stdgo.GoInt; _0:stdgo.GoRune;}`](<#reader-function-readrune>)

  - [`function reset( _b:stdgo.Slice<stdgo.GoByte>):Void`](<#reader-function-reset>)

  - [`function seek( _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ _1:stdgo.Error; _0:stdgo.GoInt64;}`](<#reader-function-seek>)

  - [`function size():stdgo.GoInt64`](<#reader-function-size>)

  - [`function unreadByte():stdgo.Error`](<#reader-function-unreadbyte>)

  - [`function unreadRune():stdgo.Error`](<#reader-function-unreadrune>)

  - [`function writeTo( _w:stdgo.io.Writer):{ _1:stdgo.Error; _0:stdgo.GoInt64;}`](<#reader-function-writeto>)

- [class T\_fieldsFunc\_0\_\_\_localname\_\_\_span](<#class-t_fieldsfunc_0localnamespan>)

  - [`function new(?_start:Null<stdgo.GoInt>, ?_end:Null<stdgo.GoInt>):Void`](<#t_fieldsfunc_0localnamespan-function-new>)

# Examples


- [`exampleCompare`](<#examplecompare>)

- [`exampleCompare_search`](<#examplecompare_search>)

- [`exampleContains`](<#examplecontains>)

- [`exampleContainsAny`](<#examplecontainsany>)

- [`exampleContainsRune`](<#examplecontainsrune>)

- [`exampleCount`](<#examplecount>)

- [`exampleCut`](<#examplecut>)

- [`exampleEqual`](<#exampleequal>)

- [`exampleEqualFold`](<#exampleequalfold>)

- [`exampleFields`](<#examplefields>)

- [`exampleFieldsFunc`](<#examplefieldsfunc>)

- [`exampleHasPrefix`](<#examplehasprefix>)

- [`exampleHasSuffix`](<#examplehassuffix>)

- [`exampleIndex`](<#exampleindex>)

- [`exampleIndexAny`](<#exampleindexany>)

- [`exampleIndexByte`](<#exampleindexbyte>)

- [`exampleIndexFunc`](<#exampleindexfunc>)

- [`exampleIndexRune`](<#exampleindexrune>)

- [`exampleJoin`](<#examplejoin>)

- [`exampleLastIndex`](<#examplelastindex>)

- [`exampleLastIndexAny`](<#examplelastindexany>)

- [`exampleLastIndexByte`](<#examplelastindexbyte>)

- [`exampleLastIndexFunc`](<#examplelastindexfunc>)

- [`exampleRepeat`](<#examplerepeat>)

- [`exampleReplace`](<#examplereplace>)

- [`exampleReplaceAll`](<#examplereplaceall>)

- [`exampleRunes`](<#examplerunes>)

- [`exampleSplit`](<#examplesplit>)

- [`exampleSplitAfter`](<#examplesplitafter>)

- [`exampleSplitAfterN`](<#examplesplitaftern>)

- [`exampleSplitN`](<#examplesplitn>)

- [`exampleTitle`](<#exampletitle>)

- [`exampleToLower`](<#exampletolower>)

- [`exampleToLowerSpecial`](<#exampletolowerspecial>)

- [`exampleToTitle`](<#exampletotitle>)

- [`exampleToTitleSpecial`](<#exampletotitlespecial>)

- [`exampleToUpper`](<#exampletoupper>)

- [`exampleToUpperSpecial`](<#exampletoupperspecial>)

- [`exampleTrim`](<#exampletrim>)

- [`exampleTrimFunc`](<#exampletrimfunc>)

- [`exampleTrimLeft`](<#exampletrimleft>)

- [`exampleTrimLeftFunc`](<#exampletrimleftfunc>)

- [`exampleTrimPrefix`](<#exampletrimprefix>)

- [`exampleTrimRight`](<#exampletrimright>)

- [`exampleTrimRightFunc`](<#exampletrimrightfunc>)

- [`exampleTrimSpace`](<#exampletrimspace>)

- [`exampleTrimSuffix`](<#exampletrimsuffix>)

# Constants


```haxe
import stdgo.bytes.Bytes
```


```haxe
final minRead:stdgo.GoUInt64 = ((512i64 : GoUInt64))
```



MinRead is the minimum slice size passed to a Read call by
Buffer.ReadFrom. As long as the Buffer has at least MinRead bytes beyond
what is required to hold the contents of r, ReadFrom will not grow the
underlying buffer.  

# Variables


```haxe
import stdgo.bytes.Bytes
```


```haxe
var errTooLarge:stdgo.Error
```



ErrTooLarge is passed to panic if memory cannot be allocated to store data in a buffer.  

# Functions


```haxe
import stdgo.bytes.Bytes
```


## function clone


```haxe
function clone(_b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```



Clone returns a copy of b\[:len\(b\)\].
The result may have additional unused capacity.
Clone\(nil\) returns nil.  

[\(view code\)](<./Bytes.hx#L1667>)


## function compare


```haxe
function compare(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt
```



Compare returns an integer comparing two byte slices lexicographically.
The result will be 0 if a == b, \-1 if a \< b, and \+1 if a \> b.
A nil argument is equivalent to an empty slice.  

### exampleCompare


<details><summary></summary>
<p>


```haxe
function exampleCompare():Void {
        var __0:Slice<GoByte> = (null : Slice<GoUInt8>), __1:Slice<GoByte> = (null : Slice<GoUInt8>), _b:Slice<GoByte> = __1, _a:Slice<GoByte> = __0;
        if (stdgo.bytes.Bytes.compare(_a, _b) < (0 : GoInt)) {};
        if (stdgo.bytes.Bytes.compare(_a, _b) <= (0 : GoInt)) {};
        if (stdgo.bytes.Bytes.compare(_a, _b) > (0 : GoInt)) {};
        if (stdgo.bytes.Bytes.compare(_a, _b) >= (0 : GoInt)) {};
        if (stdgo.bytes.Bytes.equal(_a, _b)) {};
        if (!stdgo.bytes.Bytes.equal(_a, _b)) {};
    }
```


</p>
</details>


### exampleCompare\_search


<details><summary></summary>
<p>


```haxe
function exampleCompare_search():Void {
        var _needle:Slice<GoByte> = (null : Slice<GoUInt8>);
        var _haystack:Slice<Slice<GoByte>> = (null : Slice<Slice<GoUInt8>>);
        var _i:GoInt = stdgo.sort.Sort.search((_haystack.length), function(_i:GoInt):Bool {
            return stdgo.bytes.Bytes.compare(_haystack[(_i : GoInt)], _needle) >= (0 : GoInt);
        });
        if ((_i < _haystack.length) && stdgo.bytes.Bytes.equal(_haystack[(_i : GoInt)], _needle)) {};
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L272>)


## function contains


```haxe
function contains(_b:stdgo.Slice<stdgo.GoByte>, _subslice:stdgo.Slice<stdgo.GoByte>):Bool
```



Contains reports whether subslice is within b.  

### exampleContains


<details><summary></summary>
<p>


```haxe
function exampleContains():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.contains((("seafood" : GoString) : Slice<GoByte>), (("foo" : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.contains((("seafood" : GoString) : Slice<GoByte>), (("bar" : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.contains((("seafood" : GoString) : Slice<GoByte>), (Go.str() : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.contains((Go.str() : Slice<GoByte>), (Go.str() : Slice<GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L326>)


## function containsAny


```haxe
function containsAny(_b:stdgo.Slice<stdgo.GoByte>, _chars:stdgo.GoString):Bool
```



ContainsAny reports whether any of the UTF\-8\-encoded code points in chars are within b.  

### exampleContainsAny


<details><summary></summary>
<p>


```haxe
function exampleContainsAny():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.containsAny((("I like seafood." : GoString) : Slice<GoByte>), ("fÄo!" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.containsAny((("I like seafood." : GoString) : Slice<GoByte>), ("去是伟大的." : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.containsAny((("I like seafood." : GoString) : Slice<GoByte>), Go.str())));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.containsAny((Go.str() : Slice<GoByte>), Go.str())));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L332>)


## function containsRune


```haxe
function containsRune(_b:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):Bool
```



ContainsRune reports whether the rune is contained in the UTF\-8\-encoded byte slice b.  

### exampleContainsRune


<details><summary></summary>
<p>


```haxe
function exampleContainsRune():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.containsRune((("I like seafood." : GoString) : Slice<GoByte>), (102 : GoInt32))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.containsRune((("I like seafood." : GoString) : Slice<GoByte>), (246 : GoInt32))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.containsRune((("去是伟大的!" : GoString) : Slice<GoByte>), (22823 : GoInt32))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.containsRune((("去是伟大的!" : GoString) : Slice<GoByte>), (33 : GoInt32))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.containsRune((Go.str() : Slice<GoByte>), (64 : GoInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L338>)


## function count


```haxe
function count(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt
```



Count counts the number of non\-overlapping instances of sep in s.
If sep is an empty slice, Count returns 1 \+ the number of UTF\-8\-encoded code points in s.  

### exampleCount


<details><summary></summary>
<p>


```haxe
function exampleCount():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.count((("cheese" : GoString) : Slice<GoByte>), (("e" : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.count((("five" : GoString) : Slice<GoByte>), (Go.str() : Slice<GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L306>)


## function cut


```haxe
function cut(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):{
	_2:Bool;
	_1:stdgo.Slice<stdgo.GoByte>;
	_0:stdgo.Slice<stdgo.GoByte>;
}
```



Cut slices s around the first instance of sep,
returning the text before and after sep.
The found result reports whether sep appears in s.
If sep does not appear in s, cut returns s, nil, false.  


Cut returns slices of the original slice s, not copies.  

### exampleCut


<details><summary></summary>
<p>


```haxe
function exampleCut():Void {
        var _show:(GoString, GoString) -> Void = function(_s:GoString, _sep:GoString):Void {
            var __tmp__ = stdgo.bytes.Bytes.cut((_s : Slice<GoByte>), (_sep : Slice<GoByte>)), _before:Slice<GoUInt8> = __tmp__._0, _after:Slice<GoUInt8> = __tmp__._1, _found:Bool = __tmp__._2;
            stdgo.fmt.Fmt.printf(("Cut(%q, %q) = %q, %q, %v\n" : GoString), Go.toInterface(_s), Go.toInterface(_sep), Go.toInterface(_before), Go.toInterface(_after), Go.toInterface(_found));
        };
        _show(("Gopher" : GoString), ("Go" : GoString));
        _show(("Gopher" : GoString), ("ph" : GoString));
        _show(("Gopher" : GoString), ("er" : GoString));
        _show(("Gopher" : GoString), ("Badger" : GoString));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1652>)


## function cutPrefix


```haxe
function cutPrefix(_s:stdgo.Slice<stdgo.GoByte>, _prefix:stdgo.Slice<stdgo.GoByte>):{
	_1:Bool;
	_0:stdgo.Slice<stdgo.GoByte>;
}
```



CutPrefix returns s without the provided leading prefix byte slice
and reports whether it found the prefix.
If s doesn't start with prefix, CutPrefix returns s, false.
If prefix is the empty byte slice, CutPrefix returns s, true.  


CutPrefix returns slices of the original slice s, not copies.  

[\(view code\)](<./Bytes.hx#L1681>)


## function cutSuffix


```haxe
function cutSuffix(_s:stdgo.Slice<stdgo.GoByte>, _suffix:stdgo.Slice<stdgo.GoByte>):{
	_1:Bool;
	_0:stdgo.Slice<stdgo.GoByte>;
}
```



CutSuffix returns s without the provided ending suffix byte slice
and reports whether it found the suffix.
If s doesn't end with suffix, CutSuffix returns s, false.
If suffix is the empty byte slice, CutSuffix returns s, true.  


CutSuffix returns slices of the original slice s, not copies.  

[\(view code\)](<./Bytes.hx#L1696>)


## function equal


```haxe
function equal(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):Bool
```



Equal reports whether a and b
are the same length and contain the same bytes.
A nil argument is equivalent to an empty slice.  

### exampleEqual


<details><summary></summary>
<p>


```haxe
function exampleEqual():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.equal((("Go" : GoString) : Slice<GoByte>), (("Go" : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.equal((("Go" : GoString) : Slice<GoByte>), (("C++" : GoString) : Slice<GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L264>)


## function equalFold


```haxe
function equalFold(_s:stdgo.Slice<stdgo.GoByte>, _t:stdgo.Slice<stdgo.GoByte>):Bool
```



EqualFold reports whether s and t, interpreted as UTF\-8 strings,
are equal under simple Unicode case\-folding, which is a more general
form of case\-insensitivity.  

### exampleEqualFold


<details><summary></summary>
<p>


```haxe
function exampleEqualFold():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.equalFold((("Go" : GoString) : Slice<GoByte>), (("go" : GoString) : Slice<GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1476>)


## function fields


```haxe
function fields(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>
```



Fields interprets s as a sequence of UTF\-8\-encoded code points.
It splits the slice s around each instance of one or more consecutive white space
characters, as defined by unicode.IsSpace, returning a slice of subslices of s or an
empty slice if s contains only white space.  

### exampleFields


<details><summary></summary>
<p>


```haxe
function exampleFields():Void {
        stdgo.fmt.Fmt.printf(("Fields are: %q" : GoString), Go.toInterface(stdgo.bytes.Bytes.fields((("  foo bar  baz   " : GoString) : Slice<GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L708>)


## function fieldsFunc


```haxe
function fieldsFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:()):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>
```



FieldsFunc interprets s as a sequence of UTF\-8\-encoded code points.
It splits the slice s at each run of code points c satisfying f\(c\) and
returns a slice of subslices of s. If all code points in s satisfy f\(c\), or
len\(s\) == 0, an empty slice is returned.  


FieldsFunc makes no guarantees about the order in which it calls f\(c\)
and assumes that f always returns the same value for a given c.  

### exampleFieldsFunc


<details><summary></summary>
<p>


```haxe
function exampleFieldsFunc():Void {
        var _f:GoInt32 -> Bool = function(_c:GoRune):Bool {
            return !stdgo.unicode.Unicode.isLetter(_c) && !stdgo.unicode.Unicode.isNumber(_c);
        };
        stdgo.fmt.Fmt.printf(("Fields are: %q" : GoString), Go.toInterface(stdgo.bytes.Bytes.fieldsFunc((("  foo1;bar2,baz3..." : GoString) : Slice<GoByte>), _f)));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L778>)


## function hasPrefix


```haxe
function hasPrefix(_s:stdgo.Slice<stdgo.GoByte>, _prefix:stdgo.Slice<stdgo.GoByte>):Bool
```



HasPrefix tests whether the byte slice s begins with prefix.  

### exampleHasPrefix


<details><summary></summary>
<p>


```haxe
function exampleHasPrefix():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.hasPrefix((("Gopher" : GoString) : Slice<GoByte>), (("Go" : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.hasPrefix((("Gopher" : GoString) : Slice<GoByte>), (("C" : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.hasPrefix((("Gopher" : GoString) : Slice<GoByte>), (Go.str() : Slice<GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L842>)


## function hasSuffix


```haxe
function hasSuffix(_s:stdgo.Slice<stdgo.GoByte>, _suffix:stdgo.Slice<stdgo.GoByte>):Bool
```



HasSuffix tests whether the byte slice s ends with suffix.  

### exampleHasSuffix


<details><summary></summary>
<p>


```haxe
function exampleHasSuffix():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.hasSuffix((("Amigo" : GoString) : Slice<GoByte>), (("go" : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.hasSuffix((("Amigo" : GoString) : Slice<GoByte>), (("O" : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.hasSuffix((("Amigo" : GoString) : Slice<GoByte>), (("Ami" : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.hasSuffix((("Amigo" : GoString) : Slice<GoByte>), (Go.str() : Slice<GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L848>)


## function index


```haxe
function index(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt
```



Index returns the index of the first instance of sep in s, or \-1 if sep is not present in s.  

### exampleIndex


<details><summary></summary>
<p>


```haxe
function exampleIndex():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.index((("chicken" : GoString) : Slice<GoByte>), (("ken" : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.index((("chicken" : GoString) : Slice<GoByte>), (("dmr" : GoString) : Slice<GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1571>)


## function indexAny


```haxe
function indexAny(_s:stdgo.Slice<stdgo.GoByte>, _chars:stdgo.GoString):stdgo.GoInt
```



IndexAny interprets s as a sequence of UTF\-8\-encoded Unicode code points.
It returns the byte index of the first occurrence in s of any of the Unicode
code points in chars. It returns \-1 if chars is empty or if there is no code
point in common.  

### exampleIndexAny


<details><summary></summary>
<p>


```haxe
function exampleIndexAny():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.indexAny((("chicken" : GoString) : Slice<GoByte>), ("aeiouy" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.indexAny((("crwth" : GoString) : Slice<GoByte>), ("aeiouy" : GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L447>)


## function indexByte


```haxe
function indexByte(_b:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.GoInt
```



IndexByte returns the index of the first instance of c in b, or \-1 if c is not present in b.  

### exampleIndexByte


<details><summary></summary>
<p>


```haxe
function exampleIndexByte():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.indexByte((("chicken" : GoString) : Slice<GoByte>), ((107 : GoUInt8) : GoByte))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.indexByte((("chicken" : GoString) : Slice<GoByte>), ((103 : GoUInt8) : GoByte))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L344>)


## function indexBytePortable


```haxe
function indexBytePortable(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.GoInt
```



Export func for testing  

[\(view code\)](<./Bytes.hx#L54>)


## function indexFunc


```haxe
function indexFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):stdgo.GoInt
```



IndexFunc interprets s as a sequence of UTF\-8\-encoded code points.
It returns the byte index in s of the first Unicode
code point satisfying f\(c\), or \-1 if none do.  

### exampleIndexFunc


<details><summary></summary>
<p>


```haxe
function exampleIndexFunc():Void {
        var _f:GoInt32 -> Bool = function(_c:GoRune):Bool {
            return stdgo.unicode.Unicode.is_(stdgo.unicode.Unicode.han, _c);
        };
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.indexFunc((("Hello, 世界" : GoString) : Slice<GoByte>), _f)));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.indexFunc((("Hello, world" : GoString) : Slice<GoByte>), _f)));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1147>)


## function indexRune


```haxe
function indexRune(_s:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.GoInt
```



IndexRune interprets s as a sequence of UTF\-8\-encoded code points.
It returns the byte index of the first occurrence in s of the given rune.
It returns \-1 if rune is not present in s.
If r is utf8.RuneError, it returns the first instance of any
invalid UTF\-8 byte sequence.  

### exampleIndexRune


<details><summary></summary>
<p>


```haxe
function exampleIndexRune():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.indexRune((("chicken" : GoString) : Slice<GoByte>), (107 : GoInt32))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.indexRune((("chicken" : GoString) : Slice<GoByte>), (100 : GoInt32))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L418>)


## function join


```haxe
function join(_s:stdgo.Slice<stdgo.Slice<stdgo.GoByte>>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```



Join concatenates the elements of s to create a new byte slice. The separator
sep is placed between elements in the resulting slice.  

### exampleJoin


<details><summary></summary>
<p>


```haxe
function exampleJoin():Void {
        var _s = (new Slice<Slice<GoUInt8>>(3, 3, (("foo" : GoString) : Slice<GoByte>), (("bar" : GoString) : Slice<GoByte>), (("baz" : GoString) : Slice<GoByte>)) : Slice<Slice<GoUInt8>>);
        stdgo.fmt.Fmt.printf(("%s" : GoString), Go.toInterface(stdgo.bytes.Bytes.join(_s, ((", " : GoString) : Slice<GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L820>)


## function lastIndex


```haxe
function lastIndex(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt
```



LastIndex returns the index of the last instance of sep in s, or \-1 if sep is not present in s.  

### exampleLastIndex


<details><summary></summary>
<p>


```haxe
function exampleLastIndex():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.index((("go gopher" : GoString) : Slice<GoByte>), (("go" : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.lastIndex((("go gopher" : GoString) : Slice<GoByte>), (("go" : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.lastIndex((("go gopher" : GoString) : Slice<GoByte>), (("rodent" : GoString) : Slice<GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L358>)


## function lastIndexAny


```haxe
function lastIndexAny(_s:stdgo.Slice<stdgo.GoByte>, _chars:stdgo.GoString):stdgo.GoInt
```



LastIndexAny interprets s as a sequence of UTF\-8\-encoded Unicode code
points. It returns the byte index of the last occurrence in s of any of
the Unicode code points in chars. It returns \-1 if chars is empty or if
there is no code point in common.  

### exampleLastIndexAny


<details><summary></summary>
<p>


```haxe
function exampleLastIndexAny():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.lastIndexAny((("go gopher" : GoString) : Slice<GoByte>), ("MüQp" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.lastIndexAny((("go 地鼠" : GoString) : Slice<GoByte>), ("地大" : GoString))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.lastIndexAny((("go gopher" : GoString) : Slice<GoByte>), ("z,!." : GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L533>)


## function lastIndexByte


```haxe
function lastIndexByte(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.GoInt
```



LastIndexByte returns the index of the last instance of c in s, or \-1 if c is not present in s.  

### exampleLastIndexByte


<details><summary></summary>
<p>


```haxe
function exampleLastIndexByte():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.lastIndexByte((("go gopher" : GoString) : Slice<GoByte>), ((103 : GoUInt8) : GoByte))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.lastIndexByte((("go gopher" : GoString) : Slice<GoByte>), ((114 : GoUInt8) : GoByte))));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.lastIndexByte((("go gopher" : GoString) : Slice<GoByte>), ((122 : GoUInt8) : GoByte))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L400>)


## function lastIndexFunc


```haxe
function lastIndexFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):stdgo.GoInt
```



LastIndexFunc interprets s as a sequence of UTF\-8\-encoded code points.
It returns the byte index in s of the last Unicode
code point satisfying f\(c\), or \-1 if none do.  

### exampleLastIndexFunc


<details><summary></summary>
<p>


```haxe
function exampleLastIndexFunc():Void {
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.lastIndexFunc((("go gopher!" : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isLetter)));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.lastIndexFunc((("go gopher!" : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isPunct)));
        stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.lastIndexFunc((("go gopher!" : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isNumber)));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1155>)


## function map


```haxe
function map(_mapping:(_r:stdgo.GoRune):stdgo.GoRune, _s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```



Map returns a copy of the byte slice s with all its characters modified
according to the mapping function. If mapping returns a negative value, the character is
dropped from the byte slice with no replacement. The characters in s and the
output are interpreted as UTF\-8\-encoded code points.  

[\(view code\)](<./Bytes.hx#L857>)


## function newBuffer


```haxe
function newBuffer(_buf:stdgo.Slice<stdgo.GoByte>):stdgo.Ref<stdgo.bytes.Buffer>
```



NewBuffer creates and initializes a new Buffer using buf as its
initial contents. The new Buffer takes ownership of buf, and the
caller should not use buf after this call. NewBuffer is intended to
prepare a Buffer to read existing data. It can also be used to set
the initial size of the internal buffer for writing. To do that,
buf should have the desired capacity but a length of zero.  


In most cases, new\(Buffer\) \(or just declaring a Buffer variable\) is
sufficient to initialize a Buffer.  

[\(view code\)](<./Bytes.hx#L245>)


## function newBufferString


```haxe
function newBufferString(_s:stdgo.GoString):stdgo.Ref<stdgo.bytes.Buffer>
```



NewBufferString creates and initializes a new Buffer using string s as its
initial contents. It is intended to prepare a buffer to read an existing
string.  


In most cases, new\(Buffer\) \(or just declaring a Buffer variable\) is
sufficient to initialize a Buffer.  

[\(view code\)](<./Bytes.hx#L256>)


## function newReader


```haxe
function newReader(_b:stdgo.Slice<stdgo.GoByte>):stdgo.Ref<stdgo.bytes.Reader>
```



NewReader returns a new Reader reading from b.  

[\(view code\)](<./Bytes.hx#L1706>)


## function repeat


```haxe
function repeat(_b:stdgo.Slice<stdgo.GoByte>, _count:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>
```



Repeat returns a new byte slice consisting of count copies of b.  


It panics if count is negative or if the result of \(len\(b\) \* count\)
overflows.  

### exampleRepeat


<details><summary></summary>
<p>


```haxe
function exampleRepeat():Void {
        stdgo.fmt.Fmt.printf(("ba%s" : GoString), Go.toInterface(stdgo.bytes.Bytes.repeat((("na" : GoString) : Slice<GoByte>), (2 : GoInt))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L886>)


## function replace


```haxe
function replace(_s:stdgo.Slice<stdgo.GoByte>, _old:stdgo.Slice<stdgo.GoByte>, _new:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>
```



Replace returns a copy of the slice s with the first n
non\-overlapping instances of old replaced by new.
If old is empty, it matches at the beginning of the slice
and after each UTF\-8 sequence, yielding up to k\+1 replacements
for a k\-rune slice.
If n \< 0, there is no limit on the number of replacements.  

### exampleReplace


<details><summary></summary>
<p>


```haxe
function exampleReplace():Void {
        stdgo.fmt.Fmt.printf(("%s\n" : GoString), Go.toInterface(stdgo.bytes.Bytes.replace((("oink oink oink" : GoString) : Slice<GoByte>), (("k" : GoString) : Slice<GoByte>), (("ky" : GoString) : Slice<GoByte>), (2 : GoInt))));
        stdgo.fmt.Fmt.printf(("%s\n" : GoString), Go.toInterface(stdgo.bytes.Bytes.replace((("oink oink oink" : GoString) : Slice<GoByte>), (("oink" : GoString) : Slice<GoByte>), (("moo" : GoString) : Slice<GoByte>), (-1 : GoInt))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1427>)


## function replaceAll


```haxe
function replaceAll(_s:stdgo.Slice<stdgo.GoByte>, _old:stdgo.Slice<stdgo.GoByte>, _new:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```



ReplaceAll returns a copy of the slice s with all
non\-overlapping instances of old replaced by new.
If old is empty, it matches at the beginning of the slice
and after each UTF\-8 sequence, yielding up to k\+1 replacements
for a k\-rune slice.  

### exampleReplaceAll


<details><summary></summary>
<p>


```haxe
function exampleReplaceAll():Void {
        stdgo.fmt.Fmt.printf(("%s\n" : GoString), Go.toInterface(stdgo.bytes.Bytes.replaceAll((("oink oink oink" : GoString) : Slice<GoByte>), (("oink" : GoString) : Slice<GoByte>), (("moo" : GoString) : Slice<GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1468>)


## function runes


```haxe
function runes(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoRune>
```



Runes interprets s as a sequence of UTF\-8\-encoded code points.
It returns a slice of runes \(Unicode code points\) equivalent to s.  

### exampleRunes


<details><summary></summary>
<p>


```haxe
function exampleRunes():Void {
        var _rs = stdgo.bytes.Bytes.runes((("go gopher" : GoString) : Slice<GoByte>));
        for (__0 => _r in _rs) {
            stdgo.fmt.Fmt.printf(("%#U\n" : GoString), Go.toInterface(_r));
        };
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1408>)


## function split


```haxe
function split(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>
```



Split slices s into all subslices separated by sep and returns a slice of
the subslices between those separators.
If sep is empty, Split splits after each UTF\-8 sequence.
It is equivalent to SplitN with a count of \-1.  


To split around the first instance of a separator, see Cut.  

### exampleSplit


<details><summary></summary>
<p>


```haxe
function exampleSplit():Void {
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(stdgo.bytes.Bytes.split((("a,b,c" : GoString) : Slice<GoByte>), (("," : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(stdgo.bytes.Bytes.split((("a man a plan a canal panama" : GoString) : Slice<GoByte>), (("a " : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(stdgo.bytes.Bytes.split(((" xyz " : GoString) : Slice<GoByte>), (Go.str() : Slice<GoByte>))));
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(stdgo.bytes.Bytes.split((Go.str() : Slice<GoByte>), (("Bernardo O\'Higgins" : GoString) : Slice<GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L690>)


## function splitAfter


```haxe
function splitAfter(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>
```



SplitAfter slices s into all subslices after each instance of sep and
returns a slice of those subslices.
If sep is empty, SplitAfter splits after each UTF\-8 sequence.
It is equivalent to SplitAfterN with a count of \-1.  

### exampleSplitAfter


<details><summary></summary>
<p>


```haxe
function exampleSplitAfter():Void {
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(stdgo.bytes.Bytes.splitAfter((("a,b,c" : GoString) : Slice<GoByte>), (("," : GoString) : Slice<GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L699>)


## function splitAfterN


```haxe
function splitAfterN(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>
```



SplitAfterN slices s into subslices after each instance of sep and
returns a slice of those subslices.
If sep is empty, SplitAfterN splits after each UTF\-8 sequence.
The count determines the number of subslices to return:  

```
	n > 0: at most n subslices; the last subslice will be the unsplit remainder.
	n == 0: the result is nil (zero subslices)
	n < 0: all subslices
```
### exampleSplitAfterN


<details><summary></summary>
<p>


```haxe
function exampleSplitAfterN():Void {
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(stdgo.bytes.Bytes.splitAfterN((("a,b,c" : GoString) : Slice<GoByte>), (("," : GoString) : Slice<GoByte>), (2 : GoInt))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L679>)


## function splitN


```haxe
function splitN(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>
```



SplitN slices s into subslices separated by sep and returns a slice of
the subslices between those separators.
If sep is empty, SplitN splits after each UTF\-8 sequence.
The count determines the number of subslices to return:  

```
	n > 0: at most n subslices; the last subslice will be the unsplit remainder.
	n == 0: the result is nil (zero subslices)
	n < 0: all subslices
```

To split around the first instance of a separator, see Cut.  

### exampleSplitN


<details><summary></summary>
<p>


```haxe
function exampleSplitN():Void {
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(stdgo.bytes.Bytes.splitN((("a,b,c" : GoString) : Slice<GoByte>), (("," : GoString) : Slice<GoByte>), (2 : GoInt))));
        var _z = stdgo.bytes.Bytes.splitN((("a,b,c" : GoString) : Slice<GoByte>), (("," : GoString) : Slice<GoByte>), (0 : GoInt));
        stdgo.fmt.Fmt.printf(("%q (nil = %v)\n" : GoString), Go.toInterface(_z), Go.toInterface(_z == null));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L666>)


## function title


```haxe
function title(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```



Title treats s as UTF\-8\-encoded bytes and returns a copy with all Unicode letters that begin
words mapped to their title case.  


Deprecated: The rule Title uses for word boundaries does not handle Unicode
punctuation properly. Use golang.org/x/text/cases instead.  

### exampleTitle


<details><summary></summary>
<p>


```haxe
function exampleTitle():Void {
        stdgo.fmt.Fmt.printf(("%s" : GoString), Go.toInterface(stdgo.bytes.Bytes.title((("her royal highness" : GoString) : Slice<GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1079>)


## function toLower


```haxe
function toLower(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```



ToLower returns a copy of the byte slice s with all Unicode letters mapped to
their lower case.  

### exampleToLower


<details><summary></summary>
<p>


```haxe
function exampleToLower():Void {
        stdgo.fmt.Fmt.printf(("%s" : GoString), Go.toInterface(stdgo.bytes.Bytes.toLower((("Gopher" : GoString) : Slice<GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L958>)


## function toLowerSpecial


```haxe
function toLowerSpecial(_c:stdgo.unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```



ToLowerSpecial treats s as UTF\-8\-encoded bytes and returns a copy with all the Unicode letters mapped to their
lower case, giving priority to the special casing rules.  

### exampleToLowerSpecial


<details><summary></summary>
<p>


```haxe
function exampleToLowerSpecial():Void {
        var _str = (("AHOJ VÝVOJÁRİ GOLANG" : GoString) : Slice<GoByte>);
        var _totitle = stdgo.bytes.Bytes.toLowerSpecial(stdgo.unicode.Unicode.azeriCase, _str);
        stdgo.fmt.Fmt.println(Go.toInterface(("Original : " : GoString) + (_str : GoString)));
        stdgo.fmt.Fmt.println(Go.toInterface(("ToLower : " : GoString) + (_totitle : GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1007>)


## function toTitle


```haxe
function toTitle(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```



ToTitle treats s as UTF\-8\-encoded bytes and returns a copy with all the Unicode letters mapped to their title case.  

### exampleToTitle


<details><summary></summary>
<p>


```haxe
function exampleToTitle():Void {
        stdgo.fmt.Fmt.printf(("%s\n" : GoString), Go.toInterface(stdgo.bytes.Bytes.toTitle((("loud noises" : GoString) : Slice<GoByte>))));
        stdgo.fmt.Fmt.printf(("%s\n" : GoString), Go.toInterface(stdgo.bytes.Bytes.toTitle((("хлеб" : GoString) : Slice<GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L993>)


## function toTitleSpecial


```haxe
function toTitleSpecial(_c:stdgo.unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```



ToTitleSpecial treats s as UTF\-8\-encoded bytes and returns a copy with all the Unicode letters mapped to their
title case, giving priority to the special casing rules.  

### exampleToTitleSpecial


<details><summary></summary>
<p>


```haxe
function exampleToTitleSpecial():Void {
        var _str = (("ahoj vývojári golang" : GoString) : Slice<GoByte>);
        var _totitle = stdgo.bytes.Bytes.toTitleSpecial(stdgo.unicode.Unicode.azeriCase, _str);
        stdgo.fmt.Fmt.println(Go.toInterface(("Original : " : GoString) + (_str : GoString)));
        stdgo.fmt.Fmt.println(Go.toInterface(("ToTitle : " : GoString) + (_totitle : GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1014>)


## function toUpper


```haxe
function toUpper(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```



ToUpper returns a copy of the byte slice s with all Unicode letters mapped to
their upper case.  

### exampleToUpper


<details><summary></summary>
<p>


```haxe
function exampleToUpper():Void {
        stdgo.fmt.Fmt.printf(("%s" : GoString), Go.toInterface(stdgo.bytes.Bytes.toUpper((("Gopher" : GoString) : Slice<GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L922>)


## function toUpperSpecial


```haxe
function toUpperSpecial(_c:stdgo.unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```



ToUpperSpecial treats s as UTF\-8\-encoded bytes and returns a copy with all the Unicode letters mapped to their
upper case, giving priority to the special casing rules.  

### exampleToUpperSpecial


<details><summary></summary>
<p>


```haxe
function exampleToUpperSpecial():Void {
        var _str = (("ahoj vývojári golang" : GoString) : Slice<GoByte>);
        var _totitle = stdgo.bytes.Bytes.toUpperSpecial(stdgo.unicode.Unicode.azeriCase, _str);
        stdgo.fmt.Fmt.println(Go.toInterface(("Original : " : GoString) + (_str : GoString)));
        stdgo.fmt.Fmt.println(Go.toInterface(("ToUpper : " : GoString) + (_totitle : GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1000>)


## function toValidUTF8


```haxe
function toValidUTF8(_s:stdgo.Slice<stdgo.GoByte>, _replacement:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```



ToValidUTF8 treats s as UTF\-8\-encoded bytes and returns a copy with each run of bytes
representing invalid UTF\-8 replaced with the bytes in replacement, which may be empty.  

[\(view code\)](<./Bytes.hx#L1021>)


## function trim


```haxe
function trim(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoByte>
```



Trim returns a subslice of s by slicing off all leading and
trailing UTF\-8\-encoded code points contained in cutset.  

### exampleTrim


<details><summary></summary>
<p>


```haxe
function exampleTrim():Void {
        stdgo.fmt.Fmt.printf(("[%q]" : GoString), Go.toInterface(stdgo.bytes.Bytes.trim(((" !!! Achtung! Achtung! !!! " : GoString) : Slice<GoByte>), ("! " : GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1242>)


## function trimFunc


```haxe
function trimFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):stdgo.Slice<stdgo.GoByte>
```



TrimFunc returns a subslice of s by slicing off all leading and trailing
UTF\-8\-encoded code points c that satisfy f\(c\).  

### exampleTrimFunc


<details><summary></summary>
<p>


```haxe
function exampleTrimFunc():Void {
        stdgo.fmt.Fmt.println(Go.toInterface((stdgo.bytes.Bytes.trimFunc((("go-gopher!" : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isLetter) : GoString)));
        stdgo.fmt.Fmt.println(Go.toInterface((stdgo.bytes.Bytes.trimFunc((("\"go-gopher!\"" : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isLetter) : GoString)));
        stdgo.fmt.Fmt.println(Go.toInterface((stdgo.bytes.Bytes.trimFunc((("go-gopher!" : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isPunct) : GoString)));
        stdgo.fmt.Fmt.println(Go.toInterface((stdgo.bytes.Bytes.trimFunc((("1234go-gopher!567" : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isNumber) : GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1119>)


## function trimLeft


```haxe
function trimLeft(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoByte>
```



TrimLeft returns a subslice of s by slicing off all leading
UTF\-8\-encoded code points contained in cutset.  

### exampleTrimLeft


<details><summary></summary>
<p>


```haxe
function exampleTrimLeft():Void {
        stdgo.fmt.Fmt.print(Go.toInterface((stdgo.bytes.Bytes.trimLeft((("453gopher8257" : GoString) : Slice<GoByte>), ("0123456789" : GoString)) : GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1264>)


## function trimLeftFunc


```haxe
function trimLeftFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):stdgo.Slice<stdgo.GoByte>
```



TrimLeftFunc treats s as UTF\-8\-encoded bytes and returns a subslice of s by slicing off
all leading UTF\-8\-encoded code points c that satisfy f\(c\).  

### exampleTrimLeftFunc


<details><summary></summary>
<p>


```haxe
function exampleTrimLeftFunc():Void {
        stdgo.fmt.Fmt.println(Go.toInterface((stdgo.bytes.Bytes.trimLeftFunc((("go-gopher" : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isLetter) : GoString)));
        stdgo.fmt.Fmt.println(Go.toInterface((stdgo.bytes.Bytes.trimLeftFunc((("go-gopher!" : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isPunct) : GoString)));
        stdgo.fmt.Fmt.println(Go.toInterface((stdgo.bytes.Bytes.trimLeftFunc((("1234go-gopher!567" : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isNumber) : GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1094>)


## function trimPrefix


```haxe
function trimPrefix(_s:stdgo.Slice<stdgo.GoByte>, _prefix:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```



TrimPrefix returns s without the provided leading prefix string.
If s doesn't start with prefix, s is returned unchanged.  

### exampleTrimPrefix


<details><summary></summary>
<p>


```haxe
function exampleTrimPrefix():Void {
        var _b:Slice<GoUInt8> = (("Goodbye,, world!" : GoString) : Slice<GoByte>);
        _b = stdgo.bytes.Bytes.trimPrefix(_b, (("Goodbye," : GoString) : Slice<GoByte>));
        _b = stdgo.bytes.Bytes.trimPrefix(_b, (("See ya," : GoString) : Slice<GoByte>));
        stdgo.fmt.Fmt.printf(("Hello%s" : GoString), Go.toInterface(_b));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1126>)


## function trimRight


```haxe
function trimRight(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoByte>
```



TrimRight returns a subslice of s by slicing off all trailing
UTF\-8\-encoded code points that are contained in cutset.  

### exampleTrimRight


<details><summary></summary>
<p>


```haxe
function exampleTrimRight():Void {
        stdgo.fmt.Fmt.print(Go.toInterface((stdgo.bytes.Bytes.trimRight((("453gopher8257" : GoString) : Slice<GoByte>), ("0123456789" : GoString)) : GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1327>)


## function trimRightFunc


```haxe
function trimRightFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):stdgo.Slice<stdgo.GoByte>
```



TrimRightFunc returns a subslice of s by slicing off all trailing
UTF\-8\-encoded code points c that satisfy f\(c\).  

### exampleTrimRightFunc


<details><summary></summary>
<p>


```haxe
function exampleTrimRightFunc():Void {
        stdgo.fmt.Fmt.println(Go.toInterface((stdgo.bytes.Bytes.trimRightFunc((("go-gopher" : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isLetter) : GoString)));
        stdgo.fmt.Fmt.println(Go.toInterface((stdgo.bytes.Bytes.trimRightFunc((("go-gopher!" : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isPunct) : GoString)));
        stdgo.fmt.Fmt.println(Go.toInterface((stdgo.bytes.Bytes.trimRightFunc((("1234go-gopher!567" : GoString) : Slice<GoByte>), stdgo.unicode.Unicode.isNumber) : GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1105>)


## function trimSpace


```haxe
function trimSpace(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```



TrimSpace returns a subslice of s by slicing off all leading and
trailing white space, as defined by Unicode.  

### exampleTrimSpace


<details><summary></summary>
<p>


```haxe
function exampleTrimSpace():Void {
        stdgo.fmt.Fmt.printf(("%s" : GoString), Go.toInterface(stdgo.bytes.Bytes.trimSpace(((" \t\n a lone gopher \n\t\r\n" : GoString) : Slice<GoByte>))));
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1378>)


## function trimSuffix


```haxe
function trimSuffix(_s:stdgo.Slice<stdgo.GoByte>, _suffix:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```



TrimSuffix returns s without the provided trailing suffix string.
If s doesn't end with suffix, s is returned unchanged.  

### exampleTrimSuffix


<details><summary></summary>
<p>


```haxe
function exampleTrimSuffix():Void {
        var _b:Slice<GoUInt8> = (("Hello, goodbye, etc!" : GoString) : Slice<GoByte>);
        _b = stdgo.bytes.Bytes.trimSuffix(_b, (("goodbye, etc!" : GoString) : Slice<GoByte>));
        _b = stdgo.bytes.Bytes.trimSuffix(_b, (("gopher" : GoString) : Slice<GoByte>));
        _b = (_b.__append__(...stdgo.bytes.Bytes.trimSuffix((("world!" : GoString) : Slice<GoByte>), (("x!" : GoString) : Slice<GoByte>)).__toArray__()));
        stdgo.os.Os.stdout.write(_b);
    }
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1136>)


# Classes


```haxe
import stdgo.bytes.*
```


## class Buffer



A Buffer is a variable\-sized buffer of bytes with Read and Write methods.
The zero value for Buffer is an empty buffer ready to use.  

```haxe
var _buf:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _lastRead:stdgo.bytes._Bytes.T_readOp
```


```haxe
var _off:stdgo.GoInt
```


### Buffer function new


```haxe
function new(?_buf:stdgo.Slice<stdgo.GoUInt8>, ?_off:Null<stdgo.GoInt>, ?_lastRead:Null<stdgo.bytes._Bytes.T_readOp>):Void
```


[\(view code\)](<./Bytes.hx#L128>)


### Buffer function \_empty


```haxe
function _empty():Bool
```



empty reports whether the unread portion of the buffer is empty.  

[\(view code\)](<./Bytes.hx#L2310>)


### Buffer function \_grow


```haxe
function _grow( _n:stdgo.GoInt):stdgo.GoInt
```



grow grows the buffer to guarantee space for n more bytes.
It returns the index where bytes should be written.
If the buffer can't grow it will panic with ErrTooLarge.  

[\(view code\)](<./Bytes.hx#L2219>)


### Buffer function \_readSlice


```haxe
function _readSlice( _delim:stdgo.GoByte):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoByte>;
}
```



readSlice is like ReadBytes but returns a reference to internal buffer data.  

[\(view code\)](<./Bytes.hx#L1927>)


### Buffer function \_tryGrowByReslice


```haxe
function _tryGrowByReslice( _n:stdgo.GoInt):{
	_1:Bool;
	_0:stdgo.GoInt;
}
```



tryGrowByReslice is a inlineable version of grow for the fast\-case where the
internal buffer only needs to be resliced.
It returns the index where bytes should be written and whether it succeeded.  

[\(view code\)](<./Bytes.hx#L2252>)


### Buffer function bytes


```haxe
function bytes():stdgo.Slice<stdgo.GoByte>
```



Bytes returns a slice of length b.Len\(\) holding the unread portion of the buffer.
The slice is valid for use only until the next buffer modification \(that is,
only until the next call to a method like Read, Write, Reset, or Truncate\).
The slice aliases the buffer content at least until the next buffer modification,
so immediate changes to the slice will affect the result of future reads.  

[\(view code\)](<./Bytes.hx#L2334>)


### Buffer function cap


```haxe
function cap():stdgo.GoInt
```



Cap returns the capacity of the buffer's underlying byte slice, that is, the
total space allocated for the buffer's data.  

[\(view code\)](<./Bytes.hx#L2295>)


### Buffer function grow


```haxe
function grow( _n:stdgo.GoInt):Void
```



Grow grows the buffer's capacity, if necessary, to guarantee space for
another n bytes. After Grow\(n\), at least n bytes can be written to the
buffer without another allocation.
If n is negative, Grow will panic.
If the buffer can't grow it will panic with ErrTooLarge.  

[\(view code\)](<./Bytes.hx#L2206>)


### Buffer function len


```haxe
function len():stdgo.GoInt
```



Len returns the number of bytes of the unread portion of the buffer;
b.Len\(\) == len\(b.Bytes\(\)\).  

[\(view code\)](<./Bytes.hx#L2303>)


### Buffer function next


```haxe
function next( _n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>
```



Next returns a slice containing the next n bytes from the buffer,
advancing the buffer as if the bytes had been returned by Read.
If there are fewer than n bytes in the buffer, Next returns the entire buffer.
The slice is only valid until the next call to a read or write method.  

[\(view code\)](<./Bytes.hx#L2037>)


### Buffer function read


```haxe
function read( _p:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



Read reads the next len\(p\) bytes from the buffer or until the buffer
is drained. The return value n is the number of bytes read. If the
buffer has no data to return, err is io.EOF \(unless len\(p\) is zero\);
otherwise it is nil.  

[\(view code\)](<./Bytes.hx#L2057>)


### Buffer function readByte


```haxe
function readByte():{
	_1:stdgo.Error;
	_0:stdgo.GoByte;
}
```



ReadByte reads and returns the next byte from the buffer.
If no byte is available, it returns error io.EOF.  

[\(view code\)](<./Bytes.hx#L2020>)


### Buffer function readBytes


```haxe
function readBytes( _delim:stdgo.GoByte):{
	_1:stdgo.Error;
	_0:stdgo.Slice<stdgo.GoByte>;
}
```



ReadBytes reads until the first occurrence of delim in the input,
returning a slice containing the data up to and including the delimiter.
If ReadBytes encounters an error before finding a delimiter,
it returns the data read before the error and the error itself \(often io.EOF\).
ReadBytes returns err \!= nil if and only if the returned data does not end in
delim.  

[\(view code\)](<./Bytes.hx#L1949>)


### Buffer function readFrom


```haxe
function readFrom( _r:stdgo.io.Reader):{
	_1:stdgo.Error;
	_0:stdgo.GoInt64;
}
```



ReadFrom reads data from r until EOF and appends it to the buffer, growing
the buffer as needed. The return value n is the number of bytes read. Any
error except io.EOF encountered during the read is also returned. If the
buffer becomes too large, ReadFrom will panic with ErrTooLarge.  

[\(view code\)](<./Bytes.hx#L2148>)


### Buffer function readRune


```haxe
function readRune():{
	_2:stdgo.Error;
	_1:stdgo.GoInt;
	_0:stdgo.GoRune;
}
```



ReadRune reads and returns the next UTF\-8\-encoded
Unicode code point from the buffer.
If no bytes are available, the error returned is io.EOF.
If the bytes are an erroneous UTF\-8 encoding, it
consumes one byte and returns U\+FFFD, 1.  

[\(view code\)](<./Bytes.hx#L1998>)


### Buffer function readString


```haxe
function readString( _delim:stdgo.GoByte):{
	_1:stdgo.Error;
	_0:stdgo.GoString;
}
```



ReadString reads until the first occurrence of delim in the input,
returning a string containing the data up to and including the delimiter.
If ReadString encounters an error before finding a delimiter,
it returns the data read before the error and the error itself \(often io.EOF\).
ReadString returns err \!= nil if and only if the returned data does not end
in delim.  

[\(view code\)](<./Bytes.hx#L1918>)


### Buffer function reset


```haxe
function reset():Void
```



Reset resets the buffer to be empty,
but it retains the underlying storage for use by future writes.
Reset is the same as Truncate\(0\).  

[\(view code\)](<./Bytes.hx#L2268>)


### Buffer function string


```haxe
function string():stdgo.GoString
```



String returns the contents of the unread portion of the buffer
as a string. If the Buffer is a nil pointer, it returns "\<nil\>".  


To build strings more efficiently, see the strings.Builder type.  

[\(view code\)](<./Bytes.hx#L2320>)


### Buffer function truncate


```haxe
function truncate( _n:stdgo.GoInt):Void
```



Truncate discards all but the first n unread bytes from the buffer
but continues to use the same allocated storage.
It panics if n is negative or greater than the length of the buffer.  

[\(view code\)](<./Bytes.hx#L2279>)


### Buffer function unreadByte


```haxe
function unreadByte():stdgo.Error
```



UnreadByte unreads the last byte returned by the most recent successful
read operation that read at least one byte. If a write has happened since
the last read, if the last read returned an error, or if the read read zero
bytes, UnreadByte returns an error.  

[\(view code\)](<./Bytes.hx#L1962>)


### Buffer function unreadRune


```haxe
function unreadRune():stdgo.Error
```



UnreadRune unreads the last rune returned by ReadRune.
If the most recent read or write operation on the buffer was
not a successful ReadRune, UnreadRune returns an error.  \(In this regard
it is stricter than UnreadByte, which will unread the last byte
from any read operation.\)  

[\(view code\)](<./Bytes.hx#L1980>)


### Buffer function write


```haxe
function write( _p:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



Write appends the contents of p to the buffer, growing the buffer as
needed. The return value n is the length of p; err is always nil. If the
buffer becomes too large, Write will panic with ErrTooLarge.  

[\(view code\)](<./Bytes.hx#L2189>)


### Buffer function writeByte


```haxe
function writeByte( _c:stdgo.GoByte):stdgo.Error
```



WriteByte appends the byte c to the buffer, growing the buffer as needed.
The returned error is always nil, but is included to match bufio.Writer's
WriteByte. If the buffer becomes too large, WriteByte will panic with
ErrTooLarge.  

[\(view code\)](<./Bytes.hx#L2102>)


### Buffer function writeRune


```haxe
function writeRune( _r:stdgo.GoRune):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



WriteRune appends the UTF\-8 encoding of Unicode code point r to the
buffer, returning its length and an error, which is always nil but is
included to match bufio.Writer's WriteRune. The buffer is grown as needed;
if it becomes too large, WriteRune will panic with ErrTooLarge.  

[\(view code\)](<./Bytes.hx#L2081>)


### Buffer function writeString


```haxe
function writeString( _s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



WriteString appends the contents of s to the buffer, growing the buffer as
needed. The return value n is the length of s; err is always nil. If the
buffer becomes too large, WriteString will panic with ErrTooLarge.  

[\(view code\)](<./Bytes.hx#L2174>)


### Buffer function writeTo


```haxe
function writeTo( _w:stdgo.io.Writer):{
	_1:stdgo.Error;
	_0:stdgo.GoInt64;
}
```



WriteTo writes data to w until the buffer is drained or an error occurs.
The return value n is the number of bytes written; it always fits into an
int, but it is int64 to match the io.WriterTo interface. Any error
encountered during the write is also returned.  

[\(view code\)](<./Bytes.hx#L2118>)


## class Reader



A Reader implements the io.Reader, io.ReaderAt, io.WriterTo, io.Seeker,
io.ByteScanner, and io.RuneScanner interfaces by reading from
a byte slice.
Unlike a Buffer, a Reader is read\-only and supports seeking.
The zero value for Reader operates like a Reader of an empty slice.  

```haxe
var _i:stdgo.GoInt64
```


```haxe
var _prevRune:stdgo.GoInt
```


```haxe
var _s:stdgo.Slice<stdgo.GoUInt8>
```


### Reader function new


```haxe
function new(?_s:stdgo.Slice<stdgo.GoUInt8>, ?_i:stdgo.GoInt64, ?_prevRune:Null<stdgo.GoInt>):Void
```


[\(view code\)](<./Bytes.hx#L151>)


### Reader function len


```haxe
function len():stdgo.GoInt
```



Len returns the number of bytes of the unread portion of the
slice.  

[\(view code\)](<./Bytes.hx#L2577>)


### Reader function read


```haxe
function read( _b:stdgo.Slice<stdgo.GoByte>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



Read implements the io.Reader interface.  

[\(view code\)](<./Bytes.hx#L2553>)


### Reader function readAt


```haxe
function readAt( _b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



ReadAt implements the io.ReaderAt interface.  

[\(view code\)](<./Bytes.hx#L2535>)


### Reader function readByte


```haxe
function readByte():{
	_1:stdgo.Error;
	_0:stdgo.GoByte;
}
```



ReadByte implements the io.ByteReader interface.  

[\(view code\)](<./Bytes.hx#L2522>)


### Reader function readRune


```haxe
function readRune():{
	_2:stdgo.Error;
	_1:stdgo.GoInt;
	_0:stdgo.GoRune;
}
```



ReadRune implements the io.RuneReader interface.  

[\(view code\)](<./Bytes.hx#L2484>)


### Reader function reset


```haxe
function reset( _b:stdgo.Slice<stdgo.GoByte>):Void
```



Reset resets the Reader to be reading from b.  

[\(view code\)](<./Bytes.hx#L2410>)


### Reader function seek


```haxe
function seek( _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoInt64;
}
```



Seek implements the io.Seeker interface.  

[\(view code\)](<./Bytes.hx#L2444>)


### Reader function size


```haxe
function size():stdgo.GoInt64
```



Size returns the original length of the underlying byte slice.
Size is the number of bytes available for reading via ReadAt.
The result is unaffected by any method calls except Reset.  

[\(view code\)](<./Bytes.hx#L2569>)


### Reader function unreadByte


```haxe
function unreadByte():stdgo.Error
```



UnreadByte complements ReadByte in implementing the io.ByteScanner interface.  

[\(view code\)](<./Bytes.hx#L2510>)


### Reader function unreadRune


```haxe
function unreadRune():stdgo.Error
```



UnreadRune complements ReadRune in implementing the io.RuneScanner interface.  

[\(view code\)](<./Bytes.hx#L2469>)


### Reader function writeTo


```haxe
function writeTo( _w:stdgo.io.Writer):{
	_1:stdgo.Error;
	_0:stdgo.GoInt64;
}
```



WriteTo implements the io.WriterTo interface.  

[\(view code\)](<./Bytes.hx#L2422>)


## class T\_fieldsFunc\_0\_\_\_localname\_\_\_span



A span is used to record a slice of s of the form s\[start:end\].
The start index is inclusive and the end index is exclusive.  

```haxe
var _end:stdgo.GoInt
```


```haxe
var _start:stdgo.GoInt
```


### T\_fieldsFunc\_0\_\_\_localname\_\_\_span function new


```haxe
function new(?_start:Null<stdgo.GoInt>, ?_end:Null<stdgo.GoInt>):Void
```


[\(view code\)](<./Bytes.hx#L760>)


