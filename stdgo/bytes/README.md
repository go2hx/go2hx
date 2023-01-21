# Module: `stdgo.bytes`

[(view library index)](../stdgo.md)


# Overview


Package bytes implements functions for the manipulation of byte slices.��// It is analogous to the facilities of the strings package. 


<details><summary>hl tests passed</summary>
<p>

```
=== RUN   TestNewBuffer
--- PASS: TestNewBuffer (0.00073695182800293)
=== RUN   TestNewBufferString
--- PASS: TestNewBufferString (0.00145506858825684)
=== RUN   TestBasicOperations
--- PASS: TestBasicOperations (0.00032496452331543)
=== RUN   TestLargeStringWrites
--- PASS: TestLargeStringWrites (0.168897151947021)
=== RUN   TestLargeByteWrites
--- PASS: TestLargeByteWrites (0.185061931610107)
=== RUN   TestLargeStringReads
--- PASS: TestLargeStringReads (0.0534601211547852)
=== RUN   TestLargeByteReads
--- PASS: TestLargeByteReads (0.0641078948974609)
=== RUN   TestMixedReadsAndWrites
--- PASS: TestMixedReadsAndWrites (0.324131011962891)
=== RUN   TestCapWithPreallocatedSlice
--- PASS: TestCapWithPreallocatedSlice (1.40666961669922e-05)
=== RUN   TestCapWithSliceAndWrittenData
--- PASS: TestCapWithSliceAndWrittenData (1.31130218505859e-05)
=== RUN   TestNil
--- PASS: TestNil (8.10623168945312e-06)
=== RUN   TestReadFrom
--- PASS: TestReadFrom (0.107943058013916)
=== RUN   TestReadFromPanicReader
--- PASS: TestReadFromPanicReader (0.000549077987670898)
=== RUN   TestReadFromNegativeReader
--- PASS: TestReadFromNegativeReader (0.000161886215209961)
=== RUN   TestWriteTo
--- PASS: TestWriteTo (0.0967698097229004)
=== RUN   TestRuneIO
--- PASS: TestRuneIO (0.0221049785614014)
=== RUN   TestWriteInvalidRune
--- PASS: TestWriteInvalidRune (6.41345977783203e-05)
=== RUN   TestNext
--- PASS: TestNext (0.000281095504760742)
=== RUN   TestReadBytes
--- PASS: TestReadBytes (9.60826873779297e-05)
=== RUN   TestReadString
--- PASS: TestReadString (5.88893890380859e-05)
=== RUN   TestGrow
bytes_test/Bytes_test.hx:2157: testGrow skip function
--- PASS: TestGrow (3.09944152832031e-05)
=== RUN   TestGrowOverflow
--- PASS: TestGrowOverflow (3.31401824951172e-05)
=== RUN   TestReadEmptyAtEOF
--- PASS: TestReadEmptyAtEOF (8.82148742675781e-06)
=== RUN   TestUnreadByte
--- PASS: TestUnreadByte (2.31266021728516e-05)
=== RUN   TestBufferGrowth
--- PASS: TestBufferGrowth (1.47918510437012)
=== RUN   TestEqual
--- PASS: TestEqual (1.09672546386719e-05)
=== RUN   TestEqualExhaustive
--- PASS: TestEqualExhaustive (0.122412919998169)
=== RUN   TestNotEqual
--- PASS: TestNotEqual (0.376662969589233)
=== RUN   TestIndex
--- PASS: TestIndex (0.00137710571289062)
=== RUN   TestLastIndex
--- PASS: TestLastIndex (6.98566436767578e-05)
=== RUN   TestIndexAny
--- PASS: TestIndexAny (0.000143051147460938)
=== RUN   TestLastIndexAny
--- PASS: TestLastIndexAny (0.00026702880859375)
=== RUN   TestIndexByte
--- PASS: TestIndexByte (3.19480895996094e-05)
=== RUN   TestLastIndexByte
--- PASS: TestLastIndexByte (2.47955322265625e-05)
=== RUN   TestIndexByteBig
--- PASS: TestIndexByteBig (0.0623400211334229)
=== RUN   TestIndexByteSmall
--- PASS: TestIndexByteSmall (0.13522481918335)
=== RUN   TestIndexRune
--- PASS: TestIndexRune (0.00015711784362793)
=== RUN   TestCountByte
--- PASS: TestCountByte (2.1844310760498)
=== RUN   TestCountByteNoMatch
--- PASS: TestCountByteNoMatch (0.728256940841675)
=== RUN   TestSplit
--- PASS: TestSplit (0.0012822151184082)
=== RUN   TestSplitAfter
--- PASS: TestSplitAfter (0.00157499313354492)
=== RUN   TestFields
--- PASS: TestFields (0.000163078308105469)
=== RUN   TestFieldsFunc
--- PASS: TestFieldsFunc (0.000241994857788086)
=== RUN   TestMap
--- PASS: TestMap (0.000240802764892578)
=== RUN   TestToUpper
--- PASS: TestToUpper (0.000281095504760742)
=== RUN   TestToLower
--- PASS: TestToLower (0.00023198127746582)
=== RUN   TestToValidUTF8
--- PASS: TestToValidUTF8 (0.000288963317871094)
=== RUN   TestTrimSpace
--- PASS: TestTrimSpace (0.000174999237060547)
=== RUN   TestRepeat
--- PASS: TestRepeat (3.00407409667969e-05)
=== RUN   TestRepeatCatchesOverflow
--- PASS: TestRepeatCatchesOverflow (0.000212192535400391)
=== RUN   TestRunes
--- PASS: TestRunes (9.70363616943359e-05)
=== RUN   TestTrim
--- PASS: TestTrim (0.00038909912109375)
=== RUN   TestTrimFunc
--- PASS: TestTrimFunc (0.000428915023803711)
=== RUN   TestIndexFunc
--- PASS: TestIndexFunc (0.000137090682983398)
=== RUN   TestReplace
--- PASS: TestReplace (0.000411033630371094)
=== RUN   TestTitle
--- PASS: TestTitle (0.000251054763793945)
=== RUN   TestToTitle
--- PASS: TestToTitle (9.98973846435547e-05)
=== RUN   TestEqualFold
--- PASS: TestEqualFold (0.000218868255615234)
=== RUN   TestCut
--- PASS: TestCut (2.288818359375e-05)
=== RUN   TestBufferGrowNegative
--- PASS: TestBufferGrowNegative (2.09808349609375e-05)
=== RUN   TestBufferTruncateNegative
--- PASS: TestBufferTruncateNegative (5.38825988769531e-05)
=== RUN   TestBufferTruncateOutOfRange
--- PASS: TestBufferTruncateOutOfRange (2.40802764892578e-05)
=== RUN   TestContains
--- PASS: TestContains (1.09672546386719e-05)
=== RUN   TestContainsAny
--- PASS: TestContainsAny (6.91413879394531e-05)
=== RUN   TestContainsRune
--- PASS: TestContainsRune (1.9073486328125e-05)
=== RUN   TestCompare
--- PASS: TestCompare (0.000651121139526367)
=== RUN   TestCompareIdenticalSlice
--- PASS: TestCompareIdenticalSlice (1.19209289550781e-05)
=== RUN   TestCompareBytes
bytes_test/Bytes_test.hx:4397: testCompareBytes skip function
--- PASS: TestCompareBytes (3.91006469726562e-05)
=== RUN   TestEndianBaseCompare
--- PASS: TestEndianBaseCompare (0.0930399894714355)
=== RUN   TestReader
--- PASS: TestReader (0.000134944915771484)
=== RUN   TestReadAfterBigSeek
--- PASS: TestReadAfterBigSeek (2.59876251220703e-05)
=== RUN   TestReaderAt
--- PASS: TestReaderAt (0.000144004821777344)
=== RUN   TestReaderAtConcurrent
--- PASS: TestReaderAtConcurrent (0.000620126724243164)
=== RUN   TestEmptyReaderConcurrent
--- PASS: TestEmptyReaderConcurrent (0.000663995742797852)
=== RUN   TestReaderWriteTo
--- PASS: TestReaderWriteTo (0.00399994850158691)
=== RUN   TestReaderLen
--- PASS: TestReaderLen (2.09808349609375e-05)
=== RUN   TestUnreadRuneError
--- PASS: TestUnreadRuneError (5.60283660888672e-05)
=== RUN   TestReaderDoubleUnreadRune
--- PASS: TestReaderDoubleUnreadRune (3.69548797607422e-05)
=== RUN   TestReaderCopyNothing
--- PASS: TestReaderCopyNothing (0.00404191017150879)
=== RUN   TestReaderLenSize
bytes_test/Bytes_test.hx:5525: testReaderLenSize skip function
--- PASS: TestReaderLenSize (4.31537628173828e-05)
=== RUN   TestReaderReset
--- PASS: TestReaderReset (6.103515625e-05)
=== RUN   TestReaderZero
--- PASS: TestReaderZero (5.69820404052734e-05)
```
</p>
</details>

<details><summary>interp tests failed</summary>
<p>

```
Invalid_argument("index out of bounds")
=== RUN   TestNewBuffer
--- PASS: TestNewBuffer (0.010089874267578125)
=== RUN   TestNewBufferString
--- PASS: TestNewBufferString (0.0165150165557861328)
=== RUN   TestBasicOperations
--- PASS: TestBasicOperations (0.001708984375)
=== RUN   TestLargeStringWrites
--- PASS: TestLargeStringWrites (1.72703003883361816)
=== RUN   TestLargeByteWrites
--- PASS: TestLargeByteWrites (1.77502608299255371)
=== RUN   TestLargeStringReads
--- PASS: TestLargeStringReads (0.294024944305419922)
=== RUN   TestLargeByteReads
--- PASS: TestLargeByteReads (0.295627117156982422)
=== RUN   TestMixedReadsAndWrites
--- PASS: TestMixedReadsAndWrites (1.31942605972290039)
=== RUN   TestCapWithPreallocatedSlice
--- PASS: TestCapWithPreallocatedSlice (1.59740447998046875e-05)
=== RUN   TestCapWithSliceAndWrittenData
--- PASS: TestCapWithSliceAndWrittenData (2.50339508056640625e-05)
=== RUN   TestNil
--- PASS: TestNil (1.1920928955078125e-05)
=== RUN   TestReadFrom
--- PASS: TestReadFrom (0.417567014694213867)
=== RUN   TestReadFromPanicReader
--- PASS: TestReadFromPanicReader (0.00090694427490234375)
=== RUN   TestReadFromNegativeReader
--- PASS: TestReadFromNegativeReader (0.000568866729736328125)
=== RUN   TestWriteTo
--- PASS: TestWriteTo (0.358042001724243164)
=== RUN   TestRuneIO
--- PASS: TestRuneIO (0.102895021438598633)
=== RUN   TestWriteInvalidRune
--- PASS: TestWriteInvalidRune (0.000190973281860351562)
=== RUN   TestNext
--- PASS: TestNext (0.00128602981567382812)
=== RUN   TestReadBytes
--- PASS: TestReadBytes (0.000333070755004882812)
=== RUN   TestReadString
--- PASS: TestReadString (0.000241994857788085938)
=== RUN   TestGrow
bytes_test/Bytes_test.hx:2157: testGrow skip function
--- PASS: TestGrow (1.78813934326171875e-05)
=== RUN   TestGrowOverflow
--- PASS: TestGrowOverflow (5.60283660888671875e-05)
=== RUN   TestReadEmptyAtEOF
--- PASS: TestReadEmptyAtEOF (1.1920928955078125e-05)
=== RUN   TestUnreadByte
--- PASS: TestUnreadByte (6.4849853515625e-05)
=== RUN   TestBufferGrowth
--- PASS: TestBufferGrowth (5.95647215843200684)
=== RUN   TestEqual
--- PASS: TestEqual (1.2874603271484375e-05)
=== RUN   TestEqualExhaustive
--- PASS: TestEqualExhaustive (0.580357074737548828)
=== RUN   TestNotEqual
--- PASS: TestNotEqual (2.73705410957336426)
=== RUN   TestIndex
--- PASS: TestIndex (0.00871396064758300781)
=== RUN   TestLastIndex
--- PASS: TestLastIndex (0.000377178192138671875)
=== RUN   TestIndexAny
--- PASS: TestIndexAny (0.001007080078125)
=== RUN   TestLastIndexAny
--- PASS: TestLastIndexAny (0.00112700462341308594)
=== RUN   TestIndexByte
--- PASS: TestIndexByte (0.000198125839233398438)
=== RUN   TestLastIndexByte
--- PASS: TestLastIndexByte (9.08374786376953125e-05)
=== RUN   TestIndexByteBig
--- PASS: TestIndexByteBig (0.923868894577026367)
=== RUN   TestIndexByteSmall
--- PASS: TestIndexByteSmall (0.868391990661621094)
=== RUN   TestIndexRune
--- PASS: TestIndexRune (0.000843048095703125)
=== RUN   TestCountByte
--- PASS: TestCountByte (22.5754468441009521)
=== RUN   TestCountByteNoMatch
--- PASS: TestCountByteNoMatch (4.01038098335266113)
=== RUN   TestSplit
--- PASS: TestSplit (0.00419402122497558594)
=== RUN   TestSplitAfter
--- PASS: TestSplitAfter (0.00420498847961425781)
=== RUN   TestFields
--- PASS: TestFields (0.00112509727478027344)
=== RUN   TestFieldsFunc
--- PASS: TestFieldsFunc (0.00110292434692382812)
=== RUN   TestMap
--- PASS: TestMap (0.00168895721435546875)
=== RUN   TestToUpper
--- PASS: TestToUpper (0.00160503387451171875)
=== RUN   TestToLower
--- PASS: TestToLower (0.00141215324401855469)
=== RUN   TestToValidUTF8
--- PASS: TestToValidUTF8 (0.00136399269104003906)
=== RUN   TestTrimSpace
--- PASS: TestTrimSpace (0.00133800506591796875)
=== RUN   TestRepeat
--- PASS: TestRepeat (0.000169992446899414062)
=== RUN   TestRepeatCatchesOverflow
--- PASS: TestRepeatCatchesOverflow (0.000566005706787109375)
=== RUN   TestRunes
--- PASS: TestRunes (0.000734806060791015625)
=== RUN   TestTrim
--- PASS: TestTrim (0.00202584266662597656)
=== RUN   TestTrimFunc
--- PASS: TestTrimFunc (0.0033740997314453125)
=== RUN   TestIndexFunc
--- PASS: TestIndexFunc (0.00101709365844726562)
=== RUN   TestReplace
--- PASS: TestReplace (0.0025119781494140625)
=== RUN   TestTitle
--- PASS: TestTitle (0.00109696388244628906)
=== RUN   TestToTitle
--- PASS: TestToTitle (0.000598907470703125)
=== RUN   TestEqualFold
--- PASS: TestEqualFold (0.00140213966369628906)
=== RUN   TestCut
--- PASS: TestCut (9.89437103271484375e-05)
=== RUN   TestBufferGrowNegative
--- PASS: TestBufferGrowNegative (3.0994415283203125e-05)
=== RUN   TestBufferTruncateNegative
--- PASS: TestBufferTruncateNegative (2.002716064453125e-05)
=== RUN   TestBufferTruncateOutOfRange
--- PASS: TestBufferTruncateOutOfRange (4.1961669921875e-05)
=== RUN   TestContains
--- PASS: TestContains (4.482269287109375e-05)
=== RUN   TestContainsAny
--- PASS: TestContainsAny (0.000458002090454101562)
=== RUN   TestContainsRune
--- PASS: TestContainsRune (0.000115156173706054688)
=== RUN   TestCompare
--- PASS: TestCompare (0.00272607803344726562)
=== RUN   TestCompareIdenticalSlice
--- PASS: TestCompareIdenticalSlice (3.0994415283203125e-05)
=== RUN   TestCompareBytes
bytes_test/Bytes_test.hx:4397: testCompareBytes skip function
--- PASS: TestCompareBytes (1.50203704833984375e-05)
=== RUN   TestEndianBaseCompare
--- PASS: TestEndianBaseCompare (0.267302036285400391)
=== RUN   TestReader
--- PASS: TestReader (0.000528097152709960938)
=== RUN   TestReadAfterBigSeek
--- PASS: TestReadAfterBigSeek (7.41481781005859375e-05)
=== RUN   TestReaderAt
--- PASS: TestReaderAt (0.0002899169921875)
=== RUN   TestReaderAtConcurrent
--- PASS: TestReaderAtConcurrent (0.000766038894653320312)
=== RUN   TestEmptyReaderConcurrent
--- PASS: TestEmptyReaderConcurrent (0.00153493881225585938)
=== RUN   TestReaderWriteTo
--- PASS: TestReaderWriteTo (0.0214509963989257812)
=== RUN   TestReaderLen
--- PASS: TestReaderLen (8.487701416015625e-05)
=== RUN   TestUnreadRuneError
--- PASS: TestUnreadRuneError (0.00020313262939453125)
=== RUN   TestReaderDoubleUnreadRune
--- PASS: TestReaderDoubleUnreadRune (2.9087066650390625e-05)
=== RUN   TestReaderCopyNothing
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

- [`function _containsRune(_s:stdgo.GoString, _r:stdgo.GoRune):Bool`](<#function-_containsrune>)

- [`function _explode(_s:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>`](<#function-_explode>)

- [`function _genSplit(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>, _sepSave:stdgo.GoInt, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>`](<#function-_gensplit>)

- [`function _growSlice(_b:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>`](<#function-_growslice>)

- [`function _indexBytePortable(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.GoInt`](<#function-_indexbyteportable>)

- [`function _indexFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool, _truth:Bool):stdgo.GoInt`](<#function-_indexfunc>)

- [`function _isSeparator(_r:stdgo.GoRune):Bool`](<#function-_isseparator>)

- [`function _lastIndexFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool, _truth:Bool):stdgo.GoInt`](<#function-_lastindexfunc>)

- [`function _makeASCIISet(_chars:stdgo.GoString):{_1:Bool, _0:stdgo.bytes._Bytes.T_asciiSet}`](<#function-_makeasciiset>)

- [`function _trimLeftASCII(_s:stdgo.Slice<stdgo.GoByte>, _as:stdgo.Ref<stdgo.bytes._Bytes.T_asciiSet>):stdgo.Slice<stdgo.GoByte>`](<#function-_trimleftascii>)

- [`function _trimLeftByte(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.Slice<stdgo.GoByte>`](<#function-_trimleftbyte>)

- [`function _trimLeftUnicode(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoByte>`](<#function-_trimleftunicode>)

- [`function _trimRightASCII(_s:stdgo.Slice<stdgo.GoByte>, _as:stdgo.Ref<stdgo.bytes._Bytes.T_asciiSet>):stdgo.Slice<stdgo.GoByte>`](<#function-_trimrightascii>)

- [`function _trimRightByte(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.Slice<stdgo.GoByte>`](<#function-_trimrightbyte>)

- [`function _trimRightUnicode(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoByte>`](<#function-_trimrightunicode>)

- [`function compare(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt`](<#function-compare>)

- [`function contains(_b:stdgo.Slice<stdgo.GoByte>, _subslice:stdgo.Slice<stdgo.GoByte>):Bool`](<#function-contains>)

- [`function containsAny(_b:stdgo.Slice<stdgo.GoByte>, _chars:stdgo.GoString):Bool`](<#function-containsany>)

- [`function containsRune(_b:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):Bool`](<#function-containsrune>)

- [`function count(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt`](<#function-count>)

- [`function cut(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):{_2:Bool, _1:stdgo.Slice<stdgo.GoByte>, _0:stdgo.Slice<stdgo.GoByte>}`](<#function-cut>)

- [`function equal(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):Bool`](<#function-equal>)

- [`function equalFold(_s:stdgo.Slice<stdgo.GoByte>, _t:stdgo.Slice<stdgo.GoByte>):Bool`](<#function-equalfold>)

- [`function fields(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>`](<#function-fields>)

- [`function fieldsFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:()):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>`](<#function-fieldsfunc>)

- [`function hasPrefix(_s:stdgo.Slice<stdgo.GoByte>, _prefix:stdgo.Slice<stdgo.GoByte>):Bool`](<#function-hasprefix>)

- [`function hasSuffix(_s:stdgo.Slice<stdgo.GoByte>, _suffix:stdgo.Slice<stdgo.GoByte>):Bool`](<#function-hassuffix>)

- [`function index(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt`](<#function-index>)

- [`function indexAny(_s:stdgo.Slice<stdgo.GoByte>, _chars:stdgo.GoString):stdgo.GoInt`](<#function-indexany>)

- [`function indexByte(_b:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.GoInt`](<#function-indexbyte>)

- [`function indexBytePortable(:stdgo.Slice<stdgo.GoUInt8>, :stdgo.GoUInt8):stdgo.GoInt`](<#function-indexbyteportable>)

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

  - [`function _readSlice( _delim:stdgo.GoByte):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoByte>}`](<#buffer-function-_readslice>)

  - [`function _tryGrowByReslice( _n:stdgo.GoInt):{_1:Bool, _0:stdgo.GoInt}`](<#buffer-function-_trygrowbyreslice>)

  - [`function bytes():stdgo.Slice<stdgo.GoByte>`](<#buffer-function-bytes>)

  - [`function cap():stdgo.GoInt`](<#buffer-function-cap>)

  - [`function grow( _n:stdgo.GoInt):Void`](<#buffer-function-grow>)

  - [`function len():stdgo.GoInt`](<#buffer-function-len>)

  - [`function next( _n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>`](<#buffer-function-next>)

  - [`function read( _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#buffer-function-read>)

  - [`function readByte():{_1:stdgo.Error, _0:stdgo.GoByte}`](<#buffer-function-readbyte>)

  - [`function readBytes( _delim:stdgo.GoByte):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoByte>}`](<#buffer-function-readbytes>)

  - [`function readFrom( _r:stdgo.io.Reader):{_1:stdgo.Error, _0:stdgo.GoInt64}`](<#buffer-function-readfrom>)

  - [`function readRune():{_2:stdgo.Error, _1:stdgo.GoInt, _0:stdgo.GoRune}`](<#buffer-function-readrune>)

  - [`function readString( _delim:stdgo.GoByte):{_1:stdgo.Error, _0:stdgo.GoString}`](<#buffer-function-readstring>)

  - [`function reset():Void`](<#buffer-function-reset>)

  - [`function string():stdgo.GoString`](<#buffer-function-string>)

  - [`function truncate( _n:stdgo.GoInt):Void`](<#buffer-function-truncate>)

  - [`function unreadByte():stdgo.Error`](<#buffer-function-unreadbyte>)

  - [`function unreadRune():stdgo.Error`](<#buffer-function-unreadrune>)

  - [`function write( _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#buffer-function-write>)

  - [`function writeByte( _c:stdgo.GoByte):stdgo.Error`](<#buffer-function-writebyte>)

  - [`function writeRune( _r:stdgo.GoRune):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#buffer-function-writerune>)

  - [`function writeString( _s:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#buffer-function-writestring>)

  - [`function writeTo( _w:stdgo.io.Writer):{_1:stdgo.Error, _0:stdgo.GoInt64}`](<#buffer-function-writeto>)

- [class Buffer\_static\_extension](<#class-buffer_static_extension>)

  - [`function _empty():Bool`](<#buffer_static_extension-function-_empty>)

  - [`function _grow( _n:stdgo.GoInt):stdgo.GoInt`](<#buffer_static_extension-function-_grow>)

  - [`function _readSlice( _delim:stdgo.GoByte):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoByte>}`](<#buffer_static_extension-function-_readslice>)

  - [`function _tryGrowByReslice( _n:stdgo.GoInt):{_1:Bool, _0:stdgo.GoInt}`](<#buffer_static_extension-function-_trygrowbyreslice>)

  - [`function bytes():stdgo.Slice<stdgo.GoByte>`](<#buffer_static_extension-function-bytes>)

  - [`function cap():stdgo.GoInt`](<#buffer_static_extension-function-cap>)

  - [`function grow( _n:stdgo.GoInt):Void`](<#buffer_static_extension-function-grow>)

  - [`function len():stdgo.GoInt`](<#buffer_static_extension-function-len>)

  - [`function next( _n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>`](<#buffer_static_extension-function-next>)

  - [`function read( _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#buffer_static_extension-function-read>)

  - [`function readByte():{_1:stdgo.Error, _0:stdgo.GoByte}`](<#buffer_static_extension-function-readbyte>)

  - [`function readBytes( _delim:stdgo.GoByte):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoByte>}`](<#buffer_static_extension-function-readbytes>)

  - [`function readFrom( _r:stdgo.io.Reader):{_1:stdgo.Error, _0:stdgo.GoInt64}`](<#buffer_static_extension-function-readfrom>)

  - [`function readRune():{_2:stdgo.Error, _1:stdgo.GoInt, _0:stdgo.GoRune}`](<#buffer_static_extension-function-readrune>)

  - [`function readString( _delim:stdgo.GoByte):{_1:stdgo.Error, _0:stdgo.GoString}`](<#buffer_static_extension-function-readstring>)

  - [`function reset():Void`](<#buffer_static_extension-function-reset>)

  - [`function string():stdgo.GoString`](<#buffer_static_extension-function-string>)

  - [`function truncate( _n:stdgo.GoInt):Void`](<#buffer_static_extension-function-truncate>)

  - [`function unreadByte():stdgo.Error`](<#buffer_static_extension-function-unreadbyte>)

  - [`function unreadRune():stdgo.Error`](<#buffer_static_extension-function-unreadrune>)

  - [`function write( _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#buffer_static_extension-function-write>)

  - [`function writeByte( _c:stdgo.GoByte):stdgo.Error`](<#buffer_static_extension-function-writebyte>)

  - [`function writeRune( _r:stdgo.GoRune):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#buffer_static_extension-function-writerune>)

  - [`function writeString( _s:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#buffer_static_extension-function-writestring>)

  - [`function writeTo( _w:stdgo.io.Writer):{_1:stdgo.Error, _0:stdgo.GoInt64}`](<#buffer_static_extension-function-writeto>)

- [class Reader](<#class-reader>)

  - [`function new(?_s:stdgo.Slice<stdgo.GoUInt8>, ?_i:stdgo.GoInt64, ?_prevRune:Null<stdgo.GoInt>):Void`](<#reader-function-new>)

  - [`function len():stdgo.GoInt`](<#reader-function-len>)

  - [`function read( _b:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#reader-function-read>)

  - [`function readAt( _b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#reader-function-readat>)

  - [`function readByte():{_1:stdgo.Error, _0:stdgo.GoByte}`](<#reader-function-readbyte>)

  - [`function readRune():{_2:stdgo.Error, _1:stdgo.GoInt, _0:stdgo.GoRune}`](<#reader-function-readrune>)

  - [`function reset( _b:stdgo.Slice<stdgo.GoByte>):Void`](<#reader-function-reset>)

  - [`function seek( _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{_1:stdgo.Error, _0:stdgo.GoInt64}`](<#reader-function-seek>)

  - [`function size():stdgo.GoInt64`](<#reader-function-size>)

  - [`function unreadByte():stdgo.Error`](<#reader-function-unreadbyte>)

  - [`function unreadRune():stdgo.Error`](<#reader-function-unreadrune>)

  - [`function writeTo( _w:stdgo.io.Writer):{_1:stdgo.Error, _0:stdgo.GoInt64}`](<#reader-function-writeto>)

- [class Reader\_static\_extension](<#class-reader_static_extension>)

  - [`function len():stdgo.GoInt`](<#reader_static_extension-function-len>)

  - [`function read( _b:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#reader_static_extension-function-read>)

  - [`function readAt( _b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#reader_static_extension-function-readat>)

  - [`function readByte():{_1:stdgo.Error, _0:stdgo.GoByte}`](<#reader_static_extension-function-readbyte>)

  - [`function readRune():{_2:stdgo.Error, _1:stdgo.GoInt, _0:stdgo.GoRune}`](<#reader_static_extension-function-readrune>)

  - [`function reset( _b:stdgo.Slice<stdgo.GoByte>):Void`](<#reader_static_extension-function-reset>)

  - [`function seek( _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{_1:stdgo.Error, _0:stdgo.GoInt64}`](<#reader_static_extension-function-seek>)

  - [`function size():stdgo.GoInt64`](<#reader_static_extension-function-size>)

  - [`function unreadByte():stdgo.Error`](<#reader_static_extension-function-unreadbyte>)

  - [`function unreadRune():stdgo.Error`](<#reader_static_extension-function-unreadrune>)

  - [`function writeTo( _w:stdgo.io.Writer):{_1:stdgo.Error, _0:stdgo.GoInt64}`](<#reader_static_extension-function-writeto>)

- [class T\_asciiSet\_static\_extension](<#class-t_asciiset_static_extension>)

  - [`function _contains(_as:stdgo.Ref<stdgo.bytes._Bytes.T_asciiSet>, _c:stdgo.GoByte):Bool`](<#t_asciiset_static_extension-function-_contains>)

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
final minRead:stdgo.GoUInt64 = (("512" : GoUInt64))
```


MinRead is the minimum slice size passed to a Read call by��// Buffer.ReadFrom. As long as the Buffer has at least MinRead bytes beyond��// what is required to hold the contents of r, ReadFrom will not grow the��// underlying buffer. 


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


## function \_containsRune


```haxe
function _containsRune(_s:stdgo.GoString, _r:stdgo.GoRune):Bool
```


containsRune is a simplified version of strings.ContainsRune��// to avoid importing the strings package.��// We avoid bytes.ContainsRune to avoid allocating a temporary copy of s. 


[\(view code\)](<./Bytes.hx#L1315>)


## function \_explode


```haxe
function _explode(_s:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>
```


explode splits s into a slice of UTF\-8 sequences, one per Unicode code point \(still slices of bytes\),��// up to a maximum of n byte slices. Invalid UTF\-8 sequences are chopped into individual bytes. 


[\(view code\)](<./Bytes.hx#L293>)


## function \_genSplit


```haxe
function _genSplit(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>, _sepSave:stdgo.GoInt, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>
```


Generic split: splits after each instance of sep,��// including sepSave bytes of sep in the subslices. 


[\(view code\)](<./Bytes.hx#L664>)


## function \_growSlice


```haxe
function _growSlice(_b:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>
```


growSlice grows b by n, preserving the original content of b.��// If the allocation fails, it panics with ErrTooLarge. 


[\(view code\)](<./Bytes.hx#L192>)


## function \_indexBytePortable


```haxe
function _indexBytePortable(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.GoInt
```


 


[\(view code\)](<./Bytes.hx#L367>)


## function \_indexFunc


```haxe
function _indexFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool, _truth:Bool):stdgo.GoInt
```


indexFunc is the same as IndexFunc except that if��// truth==false, the sense of the predicate function is��// inverted. 


[\(view code\)](<./Bytes.hx#L1241>)


## function \_isSeparator


```haxe
function _isSeparator(_r:stdgo.GoRune):Bool
```


isSeparator reports whether the rune could mark a word boundary.��// TODO: update when package unicode captures more of the properties. 


[\(view code\)](<./Bytes.hx#L1121>)


## function \_lastIndexFunc


```haxe
function _lastIndexFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool, _truth:Bool):stdgo.GoInt
```


lastIndexFunc is the same as LastIndexFunc except that if��// truth==false, the sense of the predicate function is��// inverted. 


[\(view code\)](<./Bytes.hx#L1266>)


## function \_makeASCIISet


```haxe
function _makeASCIISet(_chars:stdgo.GoString):{_1:Bool, _0:stdgo.bytes._Bytes.T_asciiSet}
```


makeASCIISet creates a set of ASCII characters and reports whether all��// characters in chars are ASCII. 


[\(view code\)](<./Bytes.hx#L1294>)


## function \_trimLeftASCII


```haxe
function _trimLeftASCII(_s:stdgo.Slice<stdgo.GoByte>, _as:stdgo.Ref<stdgo.bytes._Bytes.T_asciiSet>):stdgo.Slice<stdgo.GoByte>
```


 


[\(view code\)](<./Bytes.hx#L1384>)


## function \_trimLeftByte


```haxe
function _trimLeftByte(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.Slice<stdgo.GoByte>
```


 


[\(view code\)](<./Bytes.hx#L1374>)


## function \_trimLeftUnicode


```haxe
function _trimLeftUnicode(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoByte>
```


 


[\(view code\)](<./Bytes.hx#L1397>)


## function \_trimRightASCII


```haxe
function _trimRightASCII(_s:stdgo.Slice<stdgo.GoByte>, _as:stdgo.Ref<stdgo.bytes._Bytes.T_asciiSet>):stdgo.Slice<stdgo.GoByte>
```


 


[\(view code\)](<./Bytes.hx#L1450>)


## function \_trimRightByte


```haxe
function _trimRightByte(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.Slice<stdgo.GoByte>
```


 


[\(view code\)](<./Bytes.hx#L1443>)


## function \_trimRightUnicode


```haxe
function _trimRightUnicode(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoByte>
```


 


[\(view code\)](<./Bytes.hx#L1460>)


## function compare


```haxe
function compare(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt
```


Compare returns an integer comparing two byte slices lexicographically.��// The result will be 0 if a == b, \-1 if a \< b, and \+1 if a \> b.��// A nil argument is equivalent to an empty slice. 


### exampleCompare


<details><summary></summary>
<p>


```haxe
function exampleCompare():Void {
	var _0:Slice<GoByte> = (null : Slice<GoUInt8>),
		_1:Slice<GoByte> = (null : Slice<GoUInt8>),
		_b:Slice<GoByte> = _1,
		_a:Slice<GoByte> = _0;
	if (stdgo.bytes.Bytes.compare(_a, _b) < (0:GoInt)) {};
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


[\(view code\)](<./Bytes.hx#L285>)


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
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.contains((Go.str("seafood") : Slice<GoByte>), (Go.str("foo") : Slice<GoByte>))));
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.contains((Go.str("seafood") : Slice<GoByte>), (Go.str("bar") : Slice<GoByte>))));
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.contains((Go.str("seafood") : Slice<GoByte>), (Go.str() : Slice<GoByte>))));
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.contains((Go.str() : Slice<GoByte>), (Go.str() : Slice<GoByte>))));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L342>)


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
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.containsAny((Go.str("I like seafood.") : Slice<GoByte>), Go.str("fÄo!"))));
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.containsAny((Go.str("I like seafood.") : Slice<GoByte>), Go.str("去是伟大的."))));
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.containsAny((Go.str("I like seafood.") : Slice<GoByte>), Go.str())));
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.containsAny((Go.str() : Slice<GoByte>), Go.str())));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L349>)


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
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.containsRune((Go.str("I like seafood.") : Slice<GoByte>), (102 : GoInt32))));
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.containsRune((Go.str("I like seafood.") : Slice<GoByte>), (246 : GoInt32))));
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.containsRune((Go.str("去是伟大的!") : Slice<GoByte>), (22823 : GoInt32))));
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.containsRune((Go.str("去是伟大的!") : Slice<GoByte>), (33 : GoInt32))));
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.containsRune((Go.str() : Slice<GoByte>), (64 : GoInt32))));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L356>)


## function count


```haxe
function count(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt
```


Count counts the number of non\-overlapping instances of sep in s.��// If sep is an empty slice, Count returns 1 \+ the number of UTF\-8\-encoded code points in s. 


### exampleCount


<details><summary></summary>
<p>


```haxe
function exampleCount():Void {
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.count((Go.str("cheese") : Slice<GoByte>), (Go.str("e") : Slice<GoByte>))));
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.count((Go.str("five") : Slice<GoByte>), (Go.str() : Slice<GoByte>))));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L321>)


## function cut


```haxe
function cut(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):{_2:Bool, _1:stdgo.Slice<stdgo.GoByte>, _0:stdgo.Slice<stdgo.GoByte>}
```


Cut slices s around the first instance of sep,��// returning the text before and after sep.��// The found result reports whether sep appears in s.��// If sep does not appear in s, cut returns s, nil, false.��//��// Cut returns slices of the original slice s, not copies. 


### exampleCut


<details><summary></summary>
<p>


```haxe
function exampleCut():Void {
	var _show:(GoString, GoString) -> Void = function(_s:GoString, _sep:GoString):Void {
		var __tmp__ = stdgo.bytes.Bytes.cut((_s : Slice<GoByte>),
			(_sep : Slice<GoByte>)), _before:Slice<GoUInt8> = __tmp__._0, _after:Slice<GoUInt8> = __tmp__._1, _found:Bool = __tmp__._2;
		stdgo.fmt.Fmt.printf(Go.str("Cut(%q, %q) = %q, %q, %v\n"), Go.toInterface(_s), Go.toInterface(_sep), Go.toInterface(_before), Go.toInterface(_after),
			Go.toInterface(_found));
	};
	_show(Go.str("Gopher"), Go.str("Go"));
	_show(Go.str("Gopher"), Go.str("ph"));
	_show(Go.str("Gopher"), Go.str("er"));
	_show(Go.str("Gopher"), Go.str("Badger"));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1751>)


## function equal


```haxe
function equal(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):Bool
```


Equal reports whether a and b��// are the same length and contain the same bytes.��// A nil argument is equivalent to an empty slice. 


### exampleEqual


<details><summary></summary>
<p>


```haxe
function exampleEqual():Void {
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.equal((Go.str("Go") : Slice<GoByte>), (Go.str("Go") : Slice<GoByte>))));
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.equal((Go.str("Go") : Slice<GoByte>), (Go.str("C++") : Slice<GoByte>))));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L276>)


## function equalFold


```haxe
function equalFold(_s:stdgo.Slice<stdgo.GoByte>, _t:stdgo.Slice<stdgo.GoByte>):Bool
```


EqualFold reports whether s and t, interpreted as UTF\-8 strings,��// are equal under simple Unicode case\-folding, which is a more general��// form of case\-insensitivity. 


### exampleEqualFold


<details><summary></summary>
<p>


```haxe
function exampleEqualFold():Void {
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.equalFold((Go.str("Go") : Slice<GoByte>), (Go.str("go") : Slice<GoByte>))));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1595>)


## function fields


```haxe
function fields(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>
```


Fields interprets s as a sequence of UTF\-8\-encoded code points.��// It splits the slice s around each instance of one or more consecutive white space��// characters, as defined by unicode.IsSpace, returning a slice of subslices of s or an��// empty slice if s contains only white space. 


### exampleFields


<details><summary></summary>
<p>


```haxe
function exampleFields():Void {
	stdgo.fmt.Fmt.printf(Go.str("Fields are: %q"), Go.toInterface(stdgo.bytes.Bytes.fields((Go.str("  foo bar  baz   ") : Slice<GoByte>))));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L751>)


## function fieldsFunc


```haxe
function fieldsFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:()):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>
```


FieldsFunc interprets s as a sequence of UTF\-8\-encoded code points.��// It splits the slice s at each run of code points c satisfying f\(c\) and��// returns a slice of subslices of s. If all code points in s satisfy f\(c\), or��// len\(s\) == 0, an empty slice is returned.��//��// FieldsFunc makes no guarantees about the order in which it calls f\(c\)��// and assumes that f always returns the same value for a given c. 


### exampleFieldsFunc


<details><summary></summary>
<p>


```haxe
function exampleFieldsFunc():Void {
	var _f:GoInt32->Bool = function(_c:GoRune):Bool {
		return !stdgo.unicode.Unicode.isLetter(_c) && !stdgo.unicode.Unicode.isNumber(_c);
	};
	stdgo.fmt.Fmt.printf(Go.str("Fields are: %q"), Go.toInterface(stdgo.bytes.Bytes.fieldsFunc((Go.str("  foo1;bar2,baz3...") : Slice<GoByte>), _f)));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L827>)


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
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.hasPrefix((Go.str("Gopher") : Slice<GoByte>), (Go.str("Go") : Slice<GoByte>))));
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.hasPrefix((Go.str("Gopher") : Slice<GoByte>), (Go.str("C") : Slice<GoByte>))));
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.hasPrefix((Go.str("Gopher") : Slice<GoByte>), (Go.str() : Slice<GoByte>))));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L893>)


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
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.hasSuffix((Go.str("Amigo") : Slice<GoByte>), (Go.str("go") : Slice<GoByte>))));
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.hasSuffix((Go.str("Amigo") : Slice<GoByte>), (Go.str("O") : Slice<GoByte>))));
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.hasSuffix((Go.str("Amigo") : Slice<GoByte>), (Go.str("Ami") : Slice<GoByte>))));
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.hasSuffix((Go.str("Amigo") : Slice<GoByte>), (Go.str() : Slice<GoByte>))));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L900>)


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
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.index((Go.str("chicken") : Slice<GoByte>), (Go.str("ken") : Slice<GoByte>))));
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.index((Go.str("chicken") : Slice<GoByte>), (Go.str("dmr") : Slice<GoByte>))));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1669>)


## function indexAny


```haxe
function indexAny(_s:stdgo.Slice<stdgo.GoByte>, _chars:stdgo.GoString):stdgo.GoInt
```


IndexAny interprets s as a sequence of UTF\-8\-encoded Unicode code points.��// It returns the byte index of the first occurrence in s of any of the Unicode��// code points in chars. It returns \-1 if chars is empty or if there is no code��// point in common. 


### exampleIndexAny


<details><summary></summary>
<p>


```haxe
function exampleIndexAny():Void {
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.indexAny((Go.str("chicken") : Slice<GoByte>), Go.str("aeiouy"))));
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.indexAny((Go.str("crwth") : Slice<GoByte>), Go.str("aeiouy"))));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L475>)


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
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.indexByte((Go.str("chicken") : Slice<GoByte>), ((107 : GoUInt8) : GoByte))));
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.indexByte((Go.str("chicken") : Slice<GoByte>), ((103 : GoUInt8) : GoByte))));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L363>)


## function indexBytePortable


```haxe
function indexBytePortable(:stdgo.Slice<stdgo.GoUInt8>, :stdgo.GoUInt8):stdgo.GoInt
```


Export func for testing 


[\(view code\)](<./Bytes.hx#L41>)


## function indexFunc


```haxe
function indexFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):stdgo.GoInt
```


IndexFunc interprets s as a sequence of UTF\-8\-encoded code points.��// It returns the byte index in s of the first Unicode��// code point satisfying f\(c\), or \-1 if none do. 


### exampleIndexFunc


<details><summary></summary>
<p>


```haxe
function exampleIndexFunc():Void {
	var _f:GoInt32->Bool = function(_c:GoRune):Bool {
		return stdgo.unicode.Unicode.is_(stdgo.unicode.Unicode.han, _c);
	};
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.indexFunc((Go.str("Hello, 世界") : Slice<GoByte>), _f)));
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.indexFunc((Go.str("Hello, world") : Slice<GoByte>), _f)));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1223>)


## function indexRune


```haxe
function indexRune(_s:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.GoInt
```


IndexRune interprets s as a sequence of UTF\-8\-encoded code points.��// It returns the byte index of the first occurrence in s of the given rune.��// It returns \-1 if rune is not present in s.��// If r is utf8.RuneError, it returns the first instance of any��// invalid UTF\-8 byte sequence. 


### exampleIndexRune


<details><summary></summary>
<p>


```haxe
function exampleIndexRune():Void {
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.indexRune((Go.str("chicken") : Slice<GoByte>), (107 : GoInt32))));
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.indexRune((Go.str("chicken") : Slice<GoByte>), (100 : GoInt32))));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L443>)


## function join


```haxe
function join(_s:stdgo.Slice<stdgo.Slice<stdgo.GoByte>>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```


Join concatenates the elements of s to create a new byte slice. The separator��// sep is placed between elements in the resulting slice. 


### exampleJoin


<details><summary></summary>
<p>


```haxe
function exampleJoin():Void {
	var _s = (new Slice<Slice<GoUInt8>>(0, 0, (Go.str("foo") : Slice<GoByte>), (Go.str("bar") : Slice<GoByte>),
		(Go.str("baz") : Slice<GoByte>)) : Slice<Slice<GoUInt8>>);
	stdgo.fmt.Fmt.printf(Go.str("%s"), Go.toInterface(stdgo.bytes.Bytes.join(_s, (Go.str(", ") : Slice<GoByte>))));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L870>)


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
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.index((Go.str("go gopher") : Slice<GoByte>), (Go.str("go") : Slice<GoByte>))));
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.lastIndex((Go.str("go gopher") : Slice<GoByte>), (Go.str("go") : Slice<GoByte>))));
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.lastIndex((Go.str("go gopher") : Slice<GoByte>), (Go.str("rodent") : Slice<GoByte>))));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L379>)


## function lastIndexAny


```haxe
function lastIndexAny(_s:stdgo.Slice<stdgo.GoByte>, _chars:stdgo.GoString):stdgo.GoInt
```


LastIndexAny interprets s as a sequence of UTF\-8\-encoded Unicode code��// points. It returns the byte index of the last occurrence in s of any of��// the Unicode code points in chars. It returns \-1 if chars is empty or if��// there is no code point in common. 


### exampleLastIndexAny


<details><summary></summary>
<p>


```haxe
function exampleLastIndexAny():Void {
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.lastIndexAny((Go.str("go gopher") : Slice<GoByte>), Go.str("MüQp"))));
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.lastIndexAny((Go.str("go 地鼠") : Slice<GoByte>), Go.str("地大"))));
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.lastIndexAny((Go.str("go gopher") : Slice<GoByte>), Go.str("z,!."))));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L564>)


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
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.lastIndexByte((Go.str("go gopher") : Slice<GoByte>), ((103 : GoUInt8) : GoByte))));
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.lastIndexByte((Go.str("go gopher") : Slice<GoByte>), ((114 : GoUInt8) : GoByte))));
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.lastIndexByte((Go.str("go gopher") : Slice<GoByte>), ((122 : GoUInt8) : GoByte))));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L424>)


## function lastIndexFunc


```haxe
function lastIndexFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):stdgo.GoInt
```


LastIndexFunc interprets s as a sequence of UTF\-8\-encoded code points.��// It returns the byte index in s of the last Unicode��// code point satisfying f\(c\), or \-1 if none do. 


### exampleLastIndexFunc


<details><summary></summary>
<p>


```haxe
function exampleLastIndexFunc():Void {
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.lastIndexFunc((Go.str("go gopher!") : Slice<GoByte>), stdgo.unicode.Unicode.isLetter)));
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.lastIndexFunc((Go.str("go gopher!") : Slice<GoByte>), stdgo.unicode.Unicode.isPunct)));
	stdgo.fmt.Fmt.println(Go.toInterface(stdgo.bytes.Bytes.lastIndexFunc((Go.str("go gopher!") : Slice<GoByte>), stdgo.unicode.Unicode.isNumber)));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1232>)


## function map


```haxe
function map(_mapping:(_r:stdgo.GoRune):stdgo.GoRune, _s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```


Map returns a copy of the byte slice s with all its characters modified��// according to the mapping function. If mapping returns a negative value, the character is��// dropped from the byte slice with no replacement. The characters in s and the��// output are interpreted as UTF\-8\-encoded code points. 


[\(view code\)](<./Bytes.hx#L910>)


## function newBuffer


```haxe
function newBuffer(_buf:stdgo.Slice<stdgo.GoByte>):stdgo.Ref<stdgo.bytes.Buffer>
```


NewBuffer creates and initializes a new Buffer using buf as its��// initial contents. The new Buffer takes ownership of buf, and the��// caller should not use buf after this call. NewBuffer is intended to��// prepare a Buffer to read existing data. It can also be used to set��// the initial size of the internal buffer for writing. To do that,��// buf should have the desired capacity but a length of zero.��//��// In most cases, new\(Buffer\) \(or just declaring a Buffer variable\) is��// sufficient to initialize a Buffer. 


[\(view code\)](<./Bytes.hx#L255>)


## function newBufferString


```haxe
function newBufferString(_s:stdgo.GoString):stdgo.Ref<stdgo.bytes.Buffer>
```


NewBufferString creates and initializes a new Buffer using string s as its��// initial contents. It is intended to prepare a buffer to read an existing��// string.��//��// In most cases, new\(Buffer\) \(or just declaring a Buffer variable\) is��// sufficient to initialize a Buffer. 


[\(view code\)](<./Bytes.hx#L267>)


## function newReader


```haxe
function newReader(_b:stdgo.Slice<stdgo.GoByte>):stdgo.Ref<stdgo.bytes.Reader>
```


NewReader returns a new Reader reading from b. 


[\(view code\)](<./Bytes.hx#L1767>)


## function repeat


```haxe
function repeat(_b:stdgo.Slice<stdgo.GoByte>, _count:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>
```


Repeat returns a new byte slice consisting of count copies of b.��//��// It panics if count is negative or if��// the result of \(len\(b\) \* count\) overflows. 


### exampleRepeat


<details><summary></summary>
<p>


```haxe
function exampleRepeat():Void {
	stdgo.fmt.Fmt.printf(Go.str("ba%s"), Go.toInterface(stdgo.bytes.Bytes.repeat((Go.str("na") : Slice<GoByte>), (2 : GoInt))));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L952>)


## function replace


```haxe
function replace(_s:stdgo.Slice<stdgo.GoByte>, _old:stdgo.Slice<stdgo.GoByte>, _new:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>
```


Replace returns a copy of the slice s with the first n��// non\-overlapping instances of old replaced by new.��// If old is empty, it matches at the beginning of the slice��// and after each UTF\-8 sequence, yielding up to k\+1 replacements��// for a k\-rune slice.��// If n \< 0, there is no limit on the number of replacements. 


### exampleReplace


<details><summary></summary>
<p>


```haxe
function exampleReplace():Void {
	stdgo.fmt.Fmt.printf(Go.str("%s\n"),
		Go.toInterface(stdgo.bytes.Bytes.replace((Go.str("oink oink oink") : Slice<GoByte>), (Go.str("k") : Slice<GoByte>), (Go.str("ky") : Slice<GoByte>),
			(2 : GoInt))));
	stdgo.fmt.Fmt.printf(Go.str("%s\n"),
		Go.toInterface(stdgo.bytes.Bytes.replace((Go.str("oink oink oink") : Slice<GoByte>), (Go.str("oink") : Slice<GoByte>),
			(Go.str("moo") : Slice<GoByte>), (-1 : GoInt))));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1540>)


## function replaceAll


```haxe
function replaceAll(_s:stdgo.Slice<stdgo.GoByte>, _old:stdgo.Slice<stdgo.GoByte>, _new:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```


ReplaceAll returns a copy of the slice s with all��// non\-overlapping instances of old replaced by new.��// If old is empty, it matches at the beginning of the slice��// and after each UTF\-8 sequence, yielding up to k\+1 replacements��// for a k\-rune slice. 


### exampleReplaceAll


<details><summary></summary>
<p>


```haxe
function exampleReplaceAll():Void {
	stdgo.fmt.Fmt.printf(Go.str("%s\n"),
		Go.toInterface(stdgo.bytes.Bytes.replaceAll((Go.str("oink oink oink") : Slice<GoByte>), (Go.str("oink") : Slice<GoByte>),
			(Go.str("moo") : Slice<GoByte>))));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1586>)


## function runes


```haxe
function runes(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoRune>
```


Runes interprets s as a sequence of UTF\-8\-encoded code points.��// It returns a slice of runes \(Unicode code points\) equivalent to s. 


### exampleRunes


<details><summary></summary>
<p>


```haxe
function exampleRunes():Void {
	var _rs = stdgo.bytes.Bytes.runes((Go.str("go gopher") : Slice<GoByte>));
	for (_0 => _r in _rs) {
		stdgo.fmt.Fmt.printf(Go.str("%#U\n"), Go.toInterface(_r));
	};
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1516>)


## function split


```haxe
function split(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>
```


Split slices s into all subslices separated by sep and returns a slice of��// the subslices between those separators.��// If sep is empty, Split splits after each UTF\-8 sequence.��// It is equivalent to SplitN with a count of \-1.��//��// To split around the first instance of a separator, see Cut. 


### exampleSplit


<details><summary></summary>
<p>


```haxe
function exampleSplit():Void {
	stdgo.fmt.Fmt.printf(Go.str("%q\n"), Go.toInterface(stdgo.bytes.Bytes.split((Go.str("a,b,c") : Slice<GoByte>), (Go.str(",") : Slice<GoByte>))));
	stdgo.fmt.Fmt.printf(Go.str("%q\n"),
		Go.toInterface(stdgo.bytes.Bytes.split((Go.str("a man a plan a canal panama") : Slice<GoByte>), (Go.str("a ") : Slice<GoByte>))));
	stdgo.fmt.Fmt.printf(Go.str("%q\n"), Go.toInterface(stdgo.bytes.Bytes.split((Go.str(" xyz ") : Slice<GoByte>), (Go.str() : Slice<GoByte>))));
	stdgo.fmt.Fmt.printf(Go.str("%q\n"), Go.toInterface(stdgo.bytes.Bytes.split((Go.str() : Slice<GoByte>), (Go.str("Bernardo O\'Higgins") : Slice<GoByte>))));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L731>)


## function splitAfter


```haxe
function splitAfter(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>
```


SplitAfter slices s into all subslices after each instance of sep and��// returns a slice of those subslices.��// If sep is empty, SplitAfter splits after each UTF\-8 sequence.��// It is equivalent to SplitAfterN with a count of \-1. 


### exampleSplitAfter


<details><summary></summary>
<p>


```haxe
function exampleSplitAfter():Void {
	stdgo.fmt.Fmt.printf(Go.str("%q\n"), Go.toInterface(stdgo.bytes.Bytes.splitAfter((Go.str("a,b,c") : Slice<GoByte>), (Go.str(",") : Slice<GoByte>))));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L741>)


## function splitAfterN


```haxe
function splitAfterN(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>
```


SplitAfterN slices s into subslices after each instance of sep and��// returns a slice of those subslices.��// If sep is empty, SplitAfterN splits after each UTF\-8 sequence.��// The count determines the number of subslices to return:��//��//�n \> 0: at most n subslices; the last subslice will be the unsplit remainder.��//�n == 0: the result is nil \(zero subslices\)��//�n \< 0: all subslices 


### exampleSplitAfterN


<details><summary></summary>
<p>


```haxe
function exampleSplitAfterN():Void {
	stdgo.fmt.Fmt.printf(Go.str("%q\n"),
		Go.toInterface(stdgo.bytes.Bytes.splitAfterN((Go.str("a,b,c") : Slice<GoByte>), (Go.str(",") : Slice<GoByte>), (2 : GoInt))));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L719>)


## function splitN


```haxe
function splitN(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoByte>>
```


SplitN slices s into subslices separated by sep and returns a slice of��// the subslices between those separators.��// If sep is empty, SplitN splits after each UTF\-8 sequence.��// The count determines the number of subslices to return:��//��//�n \> 0: at most n subslices; the last subslice will be the unsplit remainder.��//�n == 0: the result is nil \(zero subslices\)��//�n \< 0: all subslices��//��// To split around the first instance of a separator, see Cut. 


### exampleSplitN


<details><summary></summary>
<p>


```haxe
function exampleSplitN():Void {
	stdgo.fmt.Fmt.printf(Go.str("%q\n"),
		Go.toInterface(stdgo.bytes.Bytes.splitN((Go.str("a,b,c") : Slice<GoByte>), (Go.str(",") : Slice<GoByte>), (2 : GoInt))));
	var _z = stdgo.bytes.Bytes.splitN((Go.str("a,b,c") : Slice<GoByte>), (Go.str(",") : Slice<GoByte>), (0 : GoInt));
	stdgo.fmt.Fmt.printf(Go.str("%q (nil = %v)\n"), Go.toInterface(_z), Go.toInterface(_z == null));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L705>)


## function title


```haxe
function title(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```


Title treats s as UTF\-8\-encoded bytes and returns a copy with all Unicode letters that begin��// words mapped to their title case.��//��// Deprecated: The rule Title uses for word boundaries does not handle Unicode��// punctuation properly. Use golang.org/x/text/cases instead. 


### exampleTitle


<details><summary></summary>
<p>


```haxe
function exampleTitle():Void {
	stdgo.fmt.Fmt.printf(Go.str("%s"), Go.toInterface(stdgo.bytes.Bytes.title((Go.str("her royal highness") : Slice<GoByte>))));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1147>)


## function toLower


```haxe
function toLower(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```


ToLower returns a copy of the byte slice s with all Unicode letters mapped to��// their lower case. 


### exampleToLower


<details><summary></summary>
<p>


```haxe
function exampleToLower():Void {
	stdgo.fmt.Fmt.printf(Go.str("%s"), Go.toInterface(stdgo.bytes.Bytes.toLower((Go.str("Gopher") : Slice<GoByte>))));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1014>)


## function toLowerSpecial


```haxe
function toLowerSpecial(_c:stdgo.unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```


ToLowerSpecial treats s as UTF\-8\-encoded bytes and returns a copy with all the Unicode letters mapped to their��// lower case, giving priority to the special casing rules. 


### exampleToLowerSpecial


<details><summary></summary>
<p>


```haxe
function exampleToLowerSpecial():Void {
	var _str = (Go.str("AHOJ VÝVOJÁRİ GOLANG") : Slice<GoByte>);
	var _totitle = stdgo.bytes.Bytes.toLowerSpecial(stdgo.unicode.Unicode.azeriCase, _str);
	stdgo.fmt.Fmt.println(Go.toInterface(Go.str("Original : ") + (_str : GoString)));
	stdgo.fmt.Fmt.println(Go.toInterface(Go.str("ToLower : ") + (_totitle : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1069>)


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
	stdgo.fmt.Fmt.printf(Go.str("%s\n"), Go.toInterface(stdgo.bytes.Bytes.toTitle((Go.str("loud noises") : Slice<GoByte>))));
	stdgo.fmt.Fmt.printf(Go.str("%s\n"), Go.toInterface(stdgo.bytes.Bytes.toTitle((Go.str("хлеб") : Slice<GoByte>))));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1053>)


## function toTitleSpecial


```haxe
function toTitleSpecial(_c:stdgo.unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```


ToTitleSpecial treats s as UTF\-8\-encoded bytes and returns a copy with all the Unicode letters mapped to their��// title case, giving priority to the special casing rules. 


### exampleToTitleSpecial


<details><summary></summary>
<p>


```haxe
function exampleToTitleSpecial():Void {
	var _str = (Go.str("ahoj vývojári golang") : Slice<GoByte>);
	var _totitle = stdgo.bytes.Bytes.toTitleSpecial(stdgo.unicode.Unicode.azeriCase, _str);
	stdgo.fmt.Fmt.println(Go.toInterface(Go.str("Original : ") + (_str : GoString)));
	stdgo.fmt.Fmt.println(Go.toInterface(Go.str("ToTitle : ") + (_totitle : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1077>)


## function toUpper


```haxe
function toUpper(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```


ToUpper returns a copy of the byte slice s with all Unicode letters mapped to��// their upper case. 


### exampleToUpper


<details><summary></summary>
<p>


```haxe
function exampleToUpper():Void {
	stdgo.fmt.Fmt.printf(Go.str("%s"), Go.toInterface(stdgo.bytes.Bytes.toUpper((Go.str("Gopher") : Slice<GoByte>))));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L974>)


## function toUpperSpecial


```haxe
function toUpperSpecial(_c:stdgo.unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```


ToUpperSpecial treats s as UTF\-8\-encoded bytes and returns a copy with all the Unicode letters mapped to their��// upper case, giving priority to the special casing rules. 


### exampleToUpperSpecial


<details><summary></summary>
<p>


```haxe
function exampleToUpperSpecial():Void {
	var _str = (Go.str("ahoj vývojári golang") : Slice<GoByte>);
	var _totitle = stdgo.bytes.Bytes.toUpperSpecial(stdgo.unicode.Unicode.azeriCase, _str);
	stdgo.fmt.Fmt.println(Go.toInterface(Go.str("Original : ") + (_str : GoString)));
	stdgo.fmt.Fmt.println(Go.toInterface(Go.str("ToUpper : ") + (_totitle : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1061>)


## function toValidUTF8


```haxe
function toValidUTF8(_s:stdgo.Slice<stdgo.GoByte>, _replacement:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```


ToValidUTF8 treats s as UTF\-8\-encoded bytes and returns a copy with each run of bytes��// representing invalid UTF\-8 replaced with the bytes in replacement, which may be empty. 


[\(view code\)](<./Bytes.hx#L1085>)


## function trim


```haxe
function trim(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoByte>
```


Trim returns a subslice of s by slicing off all leading and��// trailing UTF\-8\-encoded code points contained in cutset. 


### exampleTrim


<details><summary></summary>
<p>


```haxe
function exampleTrim():Void {
	stdgo.fmt.Fmt.printf(Go.str("[%q]"), Go.toInterface(stdgo.bytes.Bytes.trim((Go.str(" !!! Achtung! Achtung! !!! ") : Slice<GoByte>), Go.str("! "))));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1328>)


## function trimFunc


```haxe
function trimFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):stdgo.Slice<stdgo.GoByte>
```


TrimFunc returns a subslice of s by slicing off all leading and trailing��// UTF\-8\-encoded code points c that satisfy f\(c\). 


### exampleTrimFunc


<details><summary></summary>
<p>


```haxe
function exampleTrimFunc():Void {
	stdgo.fmt.Fmt.println(Go.toInterface((stdgo.bytes.Bytes.trimFunc((Go.str("go-gopher!") : Slice<GoByte>), stdgo.unicode.Unicode.isLetter) : GoString)));
	stdgo.fmt.Fmt.println(Go.toInterface((stdgo.bytes.Bytes.trimFunc((Go.str("\"go-gopher!\"") : Slice<GoByte>), stdgo.unicode.Unicode.isLetter) : GoString)));
	stdgo.fmt.Fmt.println(Go.toInterface((stdgo.bytes.Bytes.trimFunc((Go.str("go-gopher!") : Slice<GoByte>), stdgo.unicode.Unicode.isPunct) : GoString)));
	stdgo.fmt.Fmt.println(Go.toInterface((stdgo.bytes.Bytes.trimFunc((Go.str("1234go-gopher!567") : Slice<GoByte>),
		stdgo.unicode.Unicode.isNumber) : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1192>)


## function trimLeft


```haxe
function trimLeft(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoByte>
```


TrimLeft returns a subslice of s by slicing off all leading��// UTF\-8\-encoded code points contained in cutset. 


### exampleTrimLeft


<details><summary></summary>
<p>


```haxe
function exampleTrimLeft():Void {
	stdgo.fmt.Fmt.print(Go.toInterface((stdgo.bytes.Bytes.trimLeft((Go.str("453gopher8257") : Slice<GoByte>), Go.str("0123456789")) : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1353>)


## function trimLeftFunc


```haxe
function trimLeftFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):stdgo.Slice<stdgo.GoByte>
```


TrimLeftFunc treats s as UTF\-8\-encoded bytes and returns a subslice of s by slicing off��// all leading UTF\-8\-encoded code points c that satisfy f\(c\). 


### exampleTrimLeftFunc


<details><summary></summary>
<p>


```haxe
function exampleTrimLeftFunc():Void {
	stdgo.fmt.Fmt.println(Go.toInterface((stdgo.bytes.Bytes.trimLeftFunc((Go.str("go-gopher") : Slice<GoByte>), stdgo.unicode.Unicode.isLetter) : GoString)));
	stdgo.fmt.Fmt.println(Go.toInterface((stdgo.bytes.Bytes.trimLeftFunc((Go.str("go-gopher!") : Slice<GoByte>), stdgo.unicode.Unicode.isPunct) : GoString)));
	stdgo.fmt.Fmt.println(Go.toInterface((stdgo.bytes.Bytes.trimLeftFunc((Go.str("1234go-gopher!567") : Slice<GoByte>),
		stdgo.unicode.Unicode.isNumber) : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1163>)


## function trimPrefix


```haxe
function trimPrefix(_s:stdgo.Slice<stdgo.GoByte>, _prefix:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```


TrimPrefix returns s without the provided leading prefix string.��// If s doesn't start with prefix, s is returned unchanged. 


### exampleTrimPrefix


<details><summary></summary>
<p>


```haxe
function exampleTrimPrefix():Void {
	var _b:Slice<GoUInt8> = (Go.str("Goodbye,, world!") : Slice<GoByte>);
	_b = stdgo.bytes.Bytes.trimPrefix(_b, (Go.str("Goodbye,") : Slice<GoByte>));
	_b = stdgo.bytes.Bytes.trimPrefix(_b, (Go.str("See ya,") : Slice<GoByte>));
	stdgo.fmt.Fmt.printf(Go.str("Hello%s"), Go.toInterface(_b));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1200>)


## function trimRight


```haxe
function trimRight(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoByte>
```


TrimRight returns a subslice of s by slicing off all trailing��// UTF\-8\-encoded code points that are contained in cutset. 


### exampleTrimRight


<details><summary></summary>
<p>


```haxe
function exampleTrimRight():Void {
	stdgo.fmt.Fmt.print(Go.toInterface((stdgo.bytes.Bytes.trimRight((Go.str("453gopher8257") : Slice<GoByte>), Go.str("0123456789")) : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1425>)


## function trimRightFunc


```haxe
function trimRightFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune):Bool):stdgo.Slice<stdgo.GoByte>
```


TrimRightFunc returns a subslice of s by slicing off all trailing��// UTF\-8\-encoded code points c that satisfy f\(c\). 


### exampleTrimRightFunc


<details><summary></summary>
<p>


```haxe
function exampleTrimRightFunc():Void {
	stdgo.fmt.Fmt.println(Go.toInterface((stdgo.bytes.Bytes.trimRightFunc((Go.str("go-gopher") : Slice<GoByte>), stdgo.unicode.Unicode.isLetter) : GoString)));
	stdgo.fmt.Fmt.println(Go.toInterface((stdgo.bytes.Bytes.trimRightFunc((Go.str("go-gopher!") : Slice<GoByte>), stdgo.unicode.Unicode.isPunct) : GoString)));
	stdgo.fmt.Fmt.println(Go.toInterface((stdgo.bytes.Bytes.trimRightFunc((Go.str("1234go-gopher!567") : Slice<GoByte>),
		stdgo.unicode.Unicode.isNumber) : GoString)));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1175>)


## function trimSpace


```haxe
function trimSpace(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```


TrimSpace returns a subslice of s by slicing off all leading and��// trailing white space, as defined by Unicode. 


### exampleTrimSpace


<details><summary></summary>
<p>


```haxe
function exampleTrimSpace():Void {
	stdgo.fmt.Fmt.printf(Go.str("%s"), Go.toInterface(stdgo.bytes.Bytes.trimSpace((Go.str(" \t\n a lone gopher \n\t\r\n") : Slice<GoByte>))));
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1485>)


## function trimSuffix


```haxe
function trimSuffix(_s:stdgo.Slice<stdgo.GoByte>, _suffix:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>
```


TrimSuffix returns s without the provided trailing suffix string.��// If s doesn't end with suffix, s is returned unchanged. 


### exampleTrimSuffix


<details><summary></summary>
<p>


```haxe
function exampleTrimSuffix():Void {
	var _b:Slice<GoUInt8> = (Go.str("Hello, goodbye, etc!") : Slice<GoByte>);
	_b = stdgo.bytes.Bytes.trimSuffix(_b, (Go.str("goodbye, etc!") : Slice<GoByte>));
	_b = stdgo.bytes.Bytes.trimSuffix(_b, (Go.str("gopher") : Slice<GoByte>));
	_b = _b.__appendref__(...stdgo.bytes.Bytes.trimSuffix((Go.str("world!") : Slice<GoByte>), (Go.str("x!") : Slice<GoByte>)).__toArray__());
	stdgo.os.Os.stdout.write(_b);
}
```


</p>
</details>


[\(view code\)](<./Bytes.hx#L1211>)


# Classes


```haxe
import stdgo.bytes.*
```


## class Buffer


A Buffer is a variable\-sized buffer of bytes with Read and Write methods.��// The zero value for Buffer is an empty buffer ready to use. 


```haxe
var _buf:stdgo.Slice<stdgo.GoUInt8>
```


contents are the bytes buf\[off : len\(buf\)\] 


```haxe
var _lastRead:stdgo.bytes._Bytes.T_readOp
```


last read operation, so that Unread\* can work correctly. 


```haxe
var _off:stdgo.GoInt
```


read at &buf\[off\], write at &buf\[len\(buf\)\] 


### Buffer function new


```haxe
function new(?_buf:stdgo.Slice<stdgo.GoUInt8>, ?_off:Null<stdgo.GoInt>, ?_lastRead:Null<stdgo.bytes._Bytes.T_readOp>):Void
```


 


[\(view code\)](<./Bytes.hx#L114>)


### Buffer function \_empty


```haxe
function _empty():Bool
```


empty reports whether the unread portion of the buffer is empty. 


[\(view code\)](<./Bytes.hx#L2475>)


### Buffer function \_grow


```haxe
function _grow( _n:stdgo.GoInt):stdgo.GoInt
```


grow grows the buffer to guarantee space for n more bytes.���// It returns the index where bytes should be written.���// If the buffer can't grow it will panic with ErrTooLarge. 


[\(view code\)](<./Bytes.hx#L2376>)


### Buffer function \_readSlice


```haxe
function _readSlice( _delim:stdgo.GoByte):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoByte>}
```


readSlice is like ReadBytes but returns a reference to internal buffer data. 


[\(view code\)](<./Bytes.hx#L2048>)


### Buffer function \_tryGrowByReslice


```haxe
function _tryGrowByReslice( _n:stdgo.GoInt):{_1:Bool, _0:stdgo.GoInt}
```


tryGrowByReslice is a inlineable version of grow for the fast\-case where the���// internal buffer only needs to be resliced.���// It returns the index where bytes should be written and whether it succeeded. 


[\(view code\)](<./Bytes.hx#L2412>)


### Buffer function bytes


```haxe
function bytes():stdgo.Slice<stdgo.GoByte>
```


Bytes returns a slice of length b.Len\(\) holding the unread portion of the buffer.���// The slice is valid for use only until the next buffer modification \(that is,���// only until the next call to a method like Read, Write, Reset, or Truncate\).���// The slice aliases the buffer content at least until the next buffer modification,���// so immediate changes to the slice will affect the result of future reads. 


[\(view code\)](<./Bytes.hx#L2501>)


### Buffer function cap


```haxe
function cap():stdgo.GoInt
```


Cap returns the capacity of the buffer's underlying byte slice, that is, the���// total space allocated for the buffer's data. 


[\(view code\)](<./Bytes.hx#L2458>)


### Buffer function grow


```haxe
function grow( _n:stdgo.GoInt):Void
```


Grow grows the buffer's capacity, if necessary, to guarantee space for���// another n bytes. After Grow\(n\), at least n bytes can be written to the���// buffer without another allocation.���// If n is negative, Grow will panic.���// If the buffer can't grow it will panic with ErrTooLarge. 


[\(view code\)](<./Bytes.hx#L2362>)


### Buffer function len


```haxe
function len():stdgo.GoInt
```


Len returns the number of bytes of the unread portion of the buffer;���// b.Len\(\) == len\(b.Bytes\(\)\). 


[\(view code\)](<./Bytes.hx#L2467>)


### Buffer function next


```haxe
function next( _n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>
```


Next returns a slice containing the next n bytes from the buffer,���// advancing the buffer as if the bytes had been returned by Read.���// If there are fewer than n bytes in the buffer, Next returns the entire buffer.���// The slice is only valid until the next call to a read or write method. 


[\(view code\)](<./Bytes.hx#L2172>)


### Buffer function read


```haxe
function read( _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


Read reads the next len\(p\) bytes from the buffer or until the buffer���// is drained. The return value n is the number of bytes read. If the���// buffer has no data to return, err is io.EOF \(unless len\(p\) is zero\);���// otherwise it is nil. 


[\(view code\)](<./Bytes.hx#L2193>)


### Buffer function readByte


```haxe
function readByte():{_1:stdgo.Error, _0:stdgo.GoByte}
```


ReadByte reads and returns the next byte from the buffer.���// If no byte is available, it returns error io.EOF. 


[\(view code\)](<./Bytes.hx#L2154>)


### Buffer function readBytes


```haxe
function readBytes( _delim:stdgo.GoByte):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoByte>}
```


ReadBytes reads until the first occurrence of delim in the input,���// returning a slice containing the data up to and including the delimiter.���// If ReadBytes encounters an error before finding a delimiter,���// it returns the data read before the error and the error itself \(often io.EOF\).���// ReadBytes returns err \!= nil if and only if the returned data does not end in���// delim. 


[\(view code\)](<./Bytes.hx#L2072>)


### Buffer function readFrom


```haxe
function readFrom( _r:stdgo.io.Reader):{_1:stdgo.Error, _0:stdgo.GoInt64}
```


ReadFrom reads data from r until EOF and appends it to the buffer, growing���// the buffer as needed. The return value n is the number of bytes read. Any���// error except io.EOF encountered during the read is also returned. If the���// buffer becomes too large, ReadFrom will panic with ErrTooLarge. 


[\(view code\)](<./Bytes.hx#L2295>)


### Buffer function readRune


```haxe
function readRune():{_2:stdgo.Error, _1:stdgo.GoInt, _0:stdgo.GoRune}
```


ReadRune reads and returns the next UTF\-8\-encoded���// Unicode code point from the buffer.���// If no bytes are available, the error returned is io.EOF.���// If the bytes are an erroneous UTF\-8 encoding, it���// consumes one byte and returns U\+FFFD, 1. 


[\(view code\)](<./Bytes.hx#L2127>)


### Buffer function readString


```haxe
function readString( _delim:stdgo.GoByte):{_1:stdgo.Error, _0:stdgo.GoString}
```


ReadString reads until the first occurrence of delim in the input,���// returning a string containing the data up to and including the delimiter.���// If ReadString encounters an error before finding a delimiter,���// it returns the data read before the error and the error itself \(often io.EOF\).���// ReadString returns err \!= nil if and only if the returned data does not end���// in delim. 


[\(view code\)](<./Bytes.hx#L2036>)


### Buffer function reset


```haxe
function reset():Void
```


Reset resets the buffer to be empty,���// but it retains the underlying storage for use by future writes.���// Reset is the same as Truncate\(0\). 


[\(view code\)](<./Bytes.hx#L2429>)


### Buffer function string


```haxe
function string():stdgo.GoString
```


String returns the contents of the unread portion of the buffer���// as a string. If the Buffer is a nil pointer, it returns "\<nil\>".���//���// To build strings more efficiently, see the strings.Builder type. 


[\(view code\)](<./Bytes.hx#L2486>)


### Buffer function truncate


```haxe
function truncate( _n:stdgo.GoInt):Void
```


Truncate discards all but the first n unread bytes from the buffer���// but continues to use the same allocated storage.���// It panics if n is negative or greater than the length of the buffer. 


[\(view code\)](<./Bytes.hx#L2441>)


### Buffer function unreadByte


```haxe
function unreadByte():stdgo.Error
```


UnreadByte unreads the last byte returned by the most recent successful���// read operation that read at least one byte. If a write has happened since���// the last read, if the last read returned an error, or if the read read zero���// bytes, UnreadByte returns an error. 


[\(view code\)](<./Bytes.hx#L2089>)


### Buffer function unreadRune


```haxe
function unreadRune():stdgo.Error
```


UnreadRune unreads the last rune returned by ReadRune.���// If the most recent read or write operation on the buffer was���// not a successful ReadRune, UnreadRune returns an error.  \(In this regard���// it is stricter than UnreadByte, which will unread the last byte���// from any read operation.\) 


[\(view code\)](<./Bytes.hx#L2108>)


### Buffer function write


```haxe
function write( _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


Write appends the contents of p to the buffer, growing the buffer as���// needed. The return value n is the length of p; err is always nil. If the���// buffer becomes too large, Write will panic with ErrTooLarge. 


[\(view code\)](<./Bytes.hx#L2342>)


### Buffer function writeByte


```haxe
function writeByte( _c:stdgo.GoByte):stdgo.Error
```


WriteByte appends the byte c to the buffer, growing the buffer as needed.���// The returned error is always nil, but is included to match bufio.Writer's���// WriteByte. If the buffer becomes too large, WriteByte will panic with���// ErrTooLarge. 


[\(view code\)](<./Bytes.hx#L2243>)


### Buffer function writeRune


```haxe
function writeRune( _r:stdgo.GoRune):{_1:stdgo.Error, _0:stdgo.GoInt}
```


WriteRune appends the UTF\-8 encoding of Unicode code point r to the���// buffer, returning its length and an error, which is always nil but is���// included to match bufio.Writer's WriteRune. The buffer is grown as needed;���// if it becomes too large, WriteRune will panic with ErrTooLarge. 


[\(view code\)](<./Bytes.hx#L2218>)


### Buffer function writeString


```haxe
function writeString( _s:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.GoInt}
```


WriteString appends the contents of s to the buffer, growing the buffer as���// needed. The return value n is the length of s; err is always nil. If the���// buffer becomes too large, WriteString will panic with ErrTooLarge. 


[\(view code\)](<./Bytes.hx#L2324>)


### Buffer function writeTo


```haxe
function writeTo( _w:stdgo.io.Writer):{_1:stdgo.Error, _0:stdgo.GoInt64}
```


WriteTo writes data to w until the buffer is drained or an error occurs.���// The return value n is the number of bytes written; it always fits into an���// int, but it is int64 to match the io.WriterTo interface. Any error���// encountered during the write is also returned. 


[\(view code\)](<./Bytes.hx#L2262>)


## class Buffer\_static\_extension


 


### Buffer\_static\_extension function \_empty


```haxe
function _empty():Bool
```


empty reports whether the unread portion of the buffer is empty. 


[\(view code\)](<./Bytes.hx#L2475>)


### Buffer\_static\_extension function \_grow


```haxe
function _grow( _n:stdgo.GoInt):stdgo.GoInt
```


grow grows the buffer to guarantee space for n more bytes.���// It returns the index where bytes should be written.���// If the buffer can't grow it will panic with ErrTooLarge. 


[\(view code\)](<./Bytes.hx#L2376>)


### Buffer\_static\_extension function \_readSlice


```haxe
function _readSlice( _delim:stdgo.GoByte):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoByte>}
```


readSlice is like ReadBytes but returns a reference to internal buffer data. 


[\(view code\)](<./Bytes.hx#L2048>)


### Buffer\_static\_extension function \_tryGrowByReslice


```haxe
function _tryGrowByReslice( _n:stdgo.GoInt):{_1:Bool, _0:stdgo.GoInt}
```


tryGrowByReslice is a inlineable version of grow for the fast\-case where the���// internal buffer only needs to be resliced.���// It returns the index where bytes should be written and whether it succeeded. 


[\(view code\)](<./Bytes.hx#L2412>)


### Buffer\_static\_extension function bytes


```haxe
function bytes():stdgo.Slice<stdgo.GoByte>
```


Bytes returns a slice of length b.Len\(\) holding the unread portion of the buffer.���// The slice is valid for use only until the next buffer modification \(that is,���// only until the next call to a method like Read, Write, Reset, or Truncate\).���// The slice aliases the buffer content at least until the next buffer modification,���// so immediate changes to the slice will affect the result of future reads. 


[\(view code\)](<./Bytes.hx#L2501>)


### Buffer\_static\_extension function cap


```haxe
function cap():stdgo.GoInt
```


Cap returns the capacity of the buffer's underlying byte slice, that is, the���// total space allocated for the buffer's data. 


[\(view code\)](<./Bytes.hx#L2458>)


### Buffer\_static\_extension function grow


```haxe
function grow( _n:stdgo.GoInt):Void
```


Grow grows the buffer's capacity, if necessary, to guarantee space for���// another n bytes. After Grow\(n\), at least n bytes can be written to the���// buffer without another allocation.���// If n is negative, Grow will panic.���// If the buffer can't grow it will panic with ErrTooLarge. 


[\(view code\)](<./Bytes.hx#L2362>)


### Buffer\_static\_extension function len


```haxe
function len():stdgo.GoInt
```


Len returns the number of bytes of the unread portion of the buffer;���// b.Len\(\) == len\(b.Bytes\(\)\). 


[\(view code\)](<./Bytes.hx#L2467>)


### Buffer\_static\_extension function next


```haxe
function next( _n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>
```


Next returns a slice containing the next n bytes from the buffer,���// advancing the buffer as if the bytes had been returned by Read.���// If there are fewer than n bytes in the buffer, Next returns the entire buffer.���// The slice is only valid until the next call to a read or write method. 


[\(view code\)](<./Bytes.hx#L2172>)


### Buffer\_static\_extension function read


```haxe
function read( _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


Read reads the next len\(p\) bytes from the buffer or until the buffer���// is drained. The return value n is the number of bytes read. If the���// buffer has no data to return, err is io.EOF \(unless len\(p\) is zero\);���// otherwise it is nil. 


[\(view code\)](<./Bytes.hx#L2193>)


### Buffer\_static\_extension function readByte


```haxe
function readByte():{_1:stdgo.Error, _0:stdgo.GoByte}
```


ReadByte reads and returns the next byte from the buffer.���// If no byte is available, it returns error io.EOF. 


[\(view code\)](<./Bytes.hx#L2154>)


### Buffer\_static\_extension function readBytes


```haxe
function readBytes( _delim:stdgo.GoByte):{_1:stdgo.Error, _0:stdgo.Slice<stdgo.GoByte>}
```


ReadBytes reads until the first occurrence of delim in the input,���// returning a slice containing the data up to and including the delimiter.���// If ReadBytes encounters an error before finding a delimiter,���// it returns the data read before the error and the error itself \(often io.EOF\).���// ReadBytes returns err \!= nil if and only if the returned data does not end in���// delim. 


[\(view code\)](<./Bytes.hx#L2072>)


### Buffer\_static\_extension function readFrom


```haxe
function readFrom( _r:stdgo.io.Reader):{_1:stdgo.Error, _0:stdgo.GoInt64}
```


ReadFrom reads data from r until EOF and appends it to the buffer, growing���// the buffer as needed. The return value n is the number of bytes read. Any���// error except io.EOF encountered during the read is also returned. If the���// buffer becomes too large, ReadFrom will panic with ErrTooLarge. 


[\(view code\)](<./Bytes.hx#L2295>)


### Buffer\_static\_extension function readRune


```haxe
function readRune():{_2:stdgo.Error, _1:stdgo.GoInt, _0:stdgo.GoRune}
```


ReadRune reads and returns the next UTF\-8\-encoded���// Unicode code point from the buffer.���// If no bytes are available, the error returned is io.EOF.���// If the bytes are an erroneous UTF\-8 encoding, it���// consumes one byte and returns U\+FFFD, 1. 


[\(view code\)](<./Bytes.hx#L2127>)


### Buffer\_static\_extension function readString


```haxe
function readString( _delim:stdgo.GoByte):{_1:stdgo.Error, _0:stdgo.GoString}
```


ReadString reads until the first occurrence of delim in the input,���// returning a string containing the data up to and including the delimiter.���// If ReadString encounters an error before finding a delimiter,���// it returns the data read before the error and the error itself \(often io.EOF\).���// ReadString returns err \!= nil if and only if the returned data does not end���// in delim. 


[\(view code\)](<./Bytes.hx#L2036>)


### Buffer\_static\_extension function reset


```haxe
function reset():Void
```


Reset resets the buffer to be empty,���// but it retains the underlying storage for use by future writes.���// Reset is the same as Truncate\(0\). 


[\(view code\)](<./Bytes.hx#L2429>)


### Buffer\_static\_extension function string


```haxe
function string():stdgo.GoString
```


String returns the contents of the unread portion of the buffer���// as a string. If the Buffer is a nil pointer, it returns "\<nil\>".���//���// To build strings more efficiently, see the strings.Builder type. 


[\(view code\)](<./Bytes.hx#L2486>)


### Buffer\_static\_extension function truncate


```haxe
function truncate( _n:stdgo.GoInt):Void
```


Truncate discards all but the first n unread bytes from the buffer���// but continues to use the same allocated storage.���// It panics if n is negative or greater than the length of the buffer. 


[\(view code\)](<./Bytes.hx#L2441>)


### Buffer\_static\_extension function unreadByte


```haxe
function unreadByte():stdgo.Error
```


UnreadByte unreads the last byte returned by the most recent successful���// read operation that read at least one byte. If a write has happened since���// the last read, if the last read returned an error, or if the read read zero���// bytes, UnreadByte returns an error. 


[\(view code\)](<./Bytes.hx#L2089>)


### Buffer\_static\_extension function unreadRune


```haxe
function unreadRune():stdgo.Error
```


UnreadRune unreads the last rune returned by ReadRune.���// If the most recent read or write operation on the buffer was���// not a successful ReadRune, UnreadRune returns an error.  \(In this regard���// it is stricter than UnreadByte, which will unread the last byte���// from any read operation.\) 


[\(view code\)](<./Bytes.hx#L2108>)


### Buffer\_static\_extension function write


```haxe
function write( _p:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


Write appends the contents of p to the buffer, growing the buffer as���// needed. The return value n is the length of p; err is always nil. If the���// buffer becomes too large, Write will panic with ErrTooLarge. 


[\(view code\)](<./Bytes.hx#L2342>)


### Buffer\_static\_extension function writeByte


```haxe
function writeByte( _c:stdgo.GoByte):stdgo.Error
```


WriteByte appends the byte c to the buffer, growing the buffer as needed.���// The returned error is always nil, but is included to match bufio.Writer's���// WriteByte. If the buffer becomes too large, WriteByte will panic with���// ErrTooLarge. 


[\(view code\)](<./Bytes.hx#L2243>)


### Buffer\_static\_extension function writeRune


```haxe
function writeRune( _r:stdgo.GoRune):{_1:stdgo.Error, _0:stdgo.GoInt}
```


WriteRune appends the UTF\-8 encoding of Unicode code point r to the���// buffer, returning its length and an error, which is always nil but is���// included to match bufio.Writer's WriteRune. The buffer is grown as needed;���// if it becomes too large, WriteRune will panic with ErrTooLarge. 


[\(view code\)](<./Bytes.hx#L2218>)


### Buffer\_static\_extension function writeString


```haxe
function writeString( _s:stdgo.GoString):{_1:stdgo.Error, _0:stdgo.GoInt}
```


WriteString appends the contents of s to the buffer, growing the buffer as���// needed. The return value n is the length of s; err is always nil. If the���// buffer becomes too large, WriteString will panic with ErrTooLarge. 


[\(view code\)](<./Bytes.hx#L2324>)


### Buffer\_static\_extension function writeTo


```haxe
function writeTo( _w:stdgo.io.Writer):{_1:stdgo.Error, _0:stdgo.GoInt64}
```


WriteTo writes data to w until the buffer is drained or an error occurs.���// The return value n is the number of bytes written; it always fits into an���// int, but it is int64 to match the io.WriterTo interface. Any error���// encountered during the write is also returned. 


[\(view code\)](<./Bytes.hx#L2262>)


## class Reader


A Reader implements the io.Reader, io.ReaderAt, io.WriterTo, io.Seeker,��// io.ByteScanner, and io.RuneScanner interfaces by reading from��// a byte slice.��// Unlike a Buffer, a Reader is read\-only and supports seeking.��// The zero value for Reader operates like a Reader of an empty slice. 


```haxe
var _i:stdgo.GoInt64
```


current reading index 


```haxe
var _prevRune:stdgo.GoInt
```


index of previous rune; or \< 0 


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


Len returns the number of bytes of the unread portion of the���// slice. 


[\(view code\)](<./Bytes.hx#L2784>)


### Reader function read


```haxe
function read( _b:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


Read implements the io.Reader interface. 


[\(view code\)](<./Bytes.hx#L2758>)


### Reader function readAt


```haxe
function readAt( _b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{_1:stdgo.Error, _0:stdgo.GoInt}
```


ReadAt implements the io.ReaderAt interface. 


[\(view code\)](<./Bytes.hx#L2739>)


### Reader function readByte


```haxe
function readByte():{_1:stdgo.Error, _0:stdgo.GoByte}
```


ReadByte implements the io.ByteReader interface. 


[\(view code\)](<./Bytes.hx#L2725>)


### Reader function readRune


```haxe
function readRune():{_2:stdgo.Error, _1:stdgo.GoInt, _0:stdgo.GoRune}
```


ReadRune implements the io.RuneReader interface. 


[\(view code\)](<./Bytes.hx#L2683>)


### Reader function reset


```haxe
function reset( _b:stdgo.Slice<stdgo.GoByte>):Void
```


Reset resets the Reader to be reading from b. 


[\(view code\)](<./Bytes.hx#L2606>)


### Reader function seek


```haxe
function seek( _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{_1:stdgo.Error, _0:stdgo.GoInt64}
```


Seek implements the io.Seeker interface. 


[\(view code\)](<./Bytes.hx#L2644>)


### Reader function size


```haxe
function size():stdgo.GoInt64
```


Size returns the original length of the underlying byte slice.���// Size is the number of bytes available for reading via ReadAt.���// The result is unaffected by any method calls except Reset. 


[\(view code\)](<./Bytes.hx#L2775>)


### Reader function unreadByte


```haxe
function unreadByte():stdgo.Error
```


UnreadByte complements ReadByte in implementing the io.ByteScanner interface. 


[\(view code\)](<./Bytes.hx#L2712>)


### Reader function unreadRune


```haxe
function unreadRune():stdgo.Error
```


UnreadRune complements ReadRune in implementing the io.RuneScanner interface. 


[\(view code\)](<./Bytes.hx#L2667>)


### Reader function writeTo


```haxe
function writeTo( _w:stdgo.io.Writer):{_1:stdgo.Error, _0:stdgo.GoInt64}
```


WriteTo implements the io.WriterTo interface. 


[\(view code\)](<./Bytes.hx#L2619>)


## class Reader\_static\_extension


 


### Reader\_static\_extension function len


```haxe
function len():stdgo.GoInt
```


Len returns the number of bytes of the unread portion of the���// slice. 


[\(view code\)](<./Bytes.hx#L2784>)


### Reader\_static\_extension function read


```haxe
function read( _b:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


Read implements the io.Reader interface. 


[\(view code\)](<./Bytes.hx#L2758>)


### Reader\_static\_extension function readAt


```haxe
function readAt( _b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{_1:stdgo.Error, _0:stdgo.GoInt}
```


ReadAt implements the io.ReaderAt interface. 


[\(view code\)](<./Bytes.hx#L2739>)


### Reader\_static\_extension function readByte


```haxe
function readByte():{_1:stdgo.Error, _0:stdgo.GoByte}
```


ReadByte implements the io.ByteReader interface. 


[\(view code\)](<./Bytes.hx#L2725>)


### Reader\_static\_extension function readRune


```haxe
function readRune():{_2:stdgo.Error, _1:stdgo.GoInt, _0:stdgo.GoRune}
```


ReadRune implements the io.RuneReader interface. 


[\(view code\)](<./Bytes.hx#L2683>)


### Reader\_static\_extension function reset


```haxe
function reset( _b:stdgo.Slice<stdgo.GoByte>):Void
```


Reset resets the Reader to be reading from b. 


[\(view code\)](<./Bytes.hx#L2606>)


### Reader\_static\_extension function seek


```haxe
function seek( _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{_1:stdgo.Error, _0:stdgo.GoInt64}
```


Seek implements the io.Seeker interface. 


[\(view code\)](<./Bytes.hx#L2644>)


### Reader\_static\_extension function size


```haxe
function size():stdgo.GoInt64
```


Size returns the original length of the underlying byte slice.���// Size is the number of bytes available for reading via ReadAt.���// The result is unaffected by any method calls except Reset. 


[\(view code\)](<./Bytes.hx#L2775>)


### Reader\_static\_extension function unreadByte


```haxe
function unreadByte():stdgo.Error
```


UnreadByte complements ReadByte in implementing the io.ByteScanner interface. 


[\(view code\)](<./Bytes.hx#L2712>)


### Reader\_static\_extension function unreadRune


```haxe
function unreadRune():stdgo.Error
```


UnreadRune complements ReadRune in implementing the io.RuneScanner interface. 


[\(view code\)](<./Bytes.hx#L2667>)


### Reader\_static\_extension function writeTo


```haxe
function writeTo( _w:stdgo.io.Writer):{_1:stdgo.Error, _0:stdgo.GoInt64}
```


WriteTo implements the io.WriterTo interface. 


[\(view code\)](<./Bytes.hx#L2619>)


## class T\_asciiSet\_static\_extension


 


### T\_asciiSet\_static\_extension function \_contains


```haxe
function _contains(_as:stdgo.Ref<stdgo.bytes._Bytes.T_asciiSet>, _c:stdgo.GoByte):Bool
```


contains reports whether c is inside the set. 


[\(view code\)](<./Bytes.hx#L2819>)


