# Module: `stdgo.fmt`

[(view library index)](../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _args(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo.AnyInterface>`](<#function-_args>)

- [`function _check(_t:stdgo.Ref<stdgo.testing.T_>, _got:stdgo.GoString, _want:stdgo.GoString):Void`](<#function-_check>)

- [`function _hideFromVet(_s:stdgo.GoString):stdgo.GoString`](<#function-_hidefromvet>)

- [`function _makeInts(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>`](<#function-_makeints>)

- [`function _mkState(_w:stdgo.GoInt, _p:stdgo.GoInt, _flags:stdgo.GoString):stdgo.fmt_test.T_testState`](<#function-_mkstate>)

- [`function _presentInMap(_s:stdgo.GoString, _a:stdgo.Slice<stdgo.GoString>, _t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-_presentinmap>)

- [`function _scanInts(_r:stdgo.Ref<stdgo.fmt_test.RecursiveInt>, _b:stdgo.Ref<stdgo.bytes.Buffer>):stdgo.Error`](<#function-_scanints>)

- [`function _splitErr(_err:stdgo.Error):stdgo.Slice<stdgo.Error>`](<#function-_spliterr>)

- [`function _testScan(_t:stdgo.Ref<stdgo.testing.T_>, _f:(), _scan:(_r:stdgo.io.Reader, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}):Void`](<#function-_testscan>)

- [`function _testScanInts(_t:stdgo.Ref<stdgo.testing.T_>, _scan:(:stdgo.Ref<stdgo.fmt_test.RecursiveInt>, :stdgo.Ref<stdgo.bytes.Buffer>):stdgo.Error):Void`](<#function-_testscanints>)

- [`function _testScanfMulti(_t:stdgo.Ref<stdgo.testing.T_>, _f:()):Void`](<#function-_testscanfmulti>)

- [`function _verifyInf(_str:stdgo.GoString, _t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-_verifyinf>)

- [`function _verifyNaN(_str:stdgo.GoString, _t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-_verifynan>)

- [`function _zeroFill(_prefix:stdgo.GoString, _width:stdgo.GoInt, _suffix:stdgo.GoString):stdgo.GoString`](<#function-_zerofill>)

- [`function benchmarkFprintInt(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkfprintint>)

- [`function benchmarkFprintIntNoAlloc(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkfprintintnoalloc>)

- [`function benchmarkFprintfBytes(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkfprintfbytes>)

- [`function benchmarkManyArgs(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkmanyargs>)

- [`function benchmarkScanInts(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkscanints>)

- [`function benchmarkScanRecursiveInt(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkscanrecursiveint>)

- [`function benchmarkScanRecursiveIntReaderWrapper(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkscanrecursiveintreaderwrapper>)

- [`function benchmarkSprintfBoolean(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksprintfboolean>)

- [`function benchmarkSprintfBytes(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksprintfbytes>)

- [`function benchmarkSprintfComplex(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksprintfcomplex>)

- [`function benchmarkSprintfEmpty(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksprintfempty>)

- [`function benchmarkSprintfFloat(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksprintffloat>)

- [`function benchmarkSprintfHexBytes(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksprintfhexbytes>)

- [`function benchmarkSprintfHexString(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksprintfhexstring>)

- [`function benchmarkSprintfInt(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksprintfint>)

- [`function benchmarkSprintfIntInt(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksprintfintint>)

- [`function benchmarkSprintfPadding(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksprintfpadding>)

- [`function benchmarkSprintfPrefixedInt(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksprintfprefixedint>)

- [`function benchmarkSprintfQuoteString(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksprintfquotestring>)

- [`function benchmarkSprintfSlowParsingPath(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksprintfslowparsingpath>)

- [`function benchmarkSprintfString(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksprintfstring>)

- [`function benchmarkSprintfStringer(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksprintfstringer>)

- [`function benchmarkSprintfStructure(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksprintfstructure>)

- [`function benchmarkSprintfTruncateBytes(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksprintftruncatebytes>)

- [`function benchmarkSprintfTruncateString(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksprintftruncatestring>)

- [`function exampleErrorf():Void`](<#function-exampleerrorf>)

- [`function exampleFprint():Void`](<#function-examplefprint>)

- [`function exampleFprintf():Void`](<#function-examplefprintf>)

- [`function exampleFprintln():Void`](<#function-examplefprintln>)

- [`function exampleFscanf():Void`](<#function-examplefscanf>)

- [`function exampleFscanln():Void`](<#function-examplefscanln>)

- [`function exampleGoStringer():Void`](<#function-examplegostringer>)

- [`function examplePrint():Void`](<#function-exampleprint>)

- [`function examplePrintf():Void`](<#function-exampleprintf>)

- [`function examplePrintln():Void`](<#function-exampleprintln>)

- [`function exampleSprint():Void`](<#function-examplesprint>)

- [`function exampleSprintf():Void`](<#function-examplesprintf>)

- [`function exampleSprintln():Void`](<#function-examplesprintln>)

- [`function exampleSscanf():Void`](<#function-examplesscanf>)

- [`function exampleStringer():Void`](<#function-examplestringer>)

- [`function example_formats():Void`](<#function-example_formats>)

- [`function example_printers():Void`](<#function-example_printers>)

- [`function testAppend(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testappend>)

- [`function testAppendf(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testappendf>)

- [`function testAppendln(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testappendln>)

- [`function testBadVerbRecursion(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testbadverbrecursion>)

- [`function testBlank(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testblank>)

- [`function testBlankln(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testblankln>)

- [`function testComplexFormatting(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcomplexformatting>)

- [`function testCountMallocs(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testcountmallocs>)

- [`function testEOF(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testeof>)

- [`function testEOFAllTypes(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testeofalltypes>)

- [`function testEOFAtEndOfInput(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testeofatendofinput>)

- [`function testEmptyMap(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testemptymap>)

- [`function testErrorf(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testerrorf>)

- [`function testFlagParser(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testflagparser>)

- [`function testFmtInterface(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testfmtinterface>)

- [`function testFormatString(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testformatstring>)

- [`function testFormatterFlags(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testformatterflags>)

- [`function testFormatterPrintln(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testformatterprintln>)

- [`function testHexByte(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testhexbyte>)

- [`function testHexBytes(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testhexbytes>)

- [`function testInf(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testinf>)

- [`function testIsSpace(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testisspace>)

- [`function testLineByLineFscanf(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testlinebylinefscanf>)

- [`function testMapPrinter(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testmapprinter>)

- [`function testMultiLine(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testmultiline>)

- [`function testNaN(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testnan>)

- [`function testNilDoesNotBecomeTyped(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testnildoesnotbecometyped>)

- [`function testPanics(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testpanics>)

- [`function testParsenum(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testparsenum>)

- [`function testReorder(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testreorder>)

- [`function testScan(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testscan>)

- [`function testScanEmpty(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testscanempty>)

- [`function testScanInts(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testscanints>)

- [`function testScanMultiple(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testscanmultiple>)

- [`function testScanNewlinesAreSpaces(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testscannewlinesarespaces>)

- [`function testScanNotPointer(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testscannotpointer>)

- [`function testScanOverflow(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testscanoverflow>)

- [`function testScanStateCount(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testscanstatecount>)

- [`function testScanf(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testscanf>)

- [`function testScanfMulti(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testscanfmulti>)

- [`function testScanfNewlineMatchFormat(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testscanfnewlinematchformat>)

- [`function testScanln(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testscanln>)

- [`function testScanlnNewlinesTerminate(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testscanlnnewlinesterminate>)

- [`function testScanlnNoNewline(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testscanlnnonewline>)

- [`function testScanlnWithMiddleNewline(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testscanlnwithmiddlenewline>)

- [`function testSlicePrinter(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testsliceprinter>)

- [`function testSprintf(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testsprintf>)

- [`function testStringer(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-teststringer>)

- [`function testStructPrinter(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-teststructprinter>)

- [`function testUnreadRuneWithBufio(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testunreadrunewithbufio>)

- [`function testWidthAndPrecision(_t:stdgo.Ref<stdgo.testing.T_>):Void`](<#function-testwidthandprecision>)

- [`function main():Void`](<#function-main>)

- [class A](<#class-a>)

  - [`function new(?_i:Null<stdgo.GoInt>, ?_j:Null<stdgo.GoUInt>, ?_s:stdgo.GoString, ?_x:stdgo.Slice<stdgo.GoInt>):Void`](<#a-function-new>)

- [class Address](<#class-address>)

  - [`function new(?city:stdgo.GoString, ?state:stdgo.GoString, ?country:stdgo.GoString):Void`](<#address-function-new>)

- [class Animal](<#class-animal>)

  - [`function new(?name:stdgo.GoString, ?age:Null<stdgo.GoUInt>):Void`](<#animal-function-new>)

  - [`function string():stdgo.GoString`](<#animal-function-string>)

- [class B](<#class-b>)

  - [`function new(?i:Null<stdgo.fmt_test.I>, ?_j:Null<stdgo.GoInt>):Void`](<#b-function-new>)

- [class C](<#class-c>)

  - [`function new(?_i:Null<stdgo.GoInt>, ?b:stdgo.fmt_test.B):Void`](<#c-function-new>)

- [class IntString](<#class-intstring>)

  - [`function new(?_i:Null<stdgo.GoInt>, ?_s:stdgo.GoString):Void`](<#intstring-function-new>)

  - [`function scan( _state:stdgo.fmt.ScanState, _verb:stdgo.GoRune):stdgo.Error`](<#intstring-function-scan>)

- [class PanicF](<#class-panicf>)

  - [`function new(?_message:stdgo.AnyInterface):Void`](<#panicf-function-new>)

  - [`function format( _f:stdgo.fmt.State, _c:stdgo.GoRune):Void`](<#panicf-function-format>)

- [class PanicGo](<#class-panicgo>)

  - [`function new(?_message:stdgo.AnyInterface):Void`](<#panicgo-function-new>)

  - [`function goString():stdgo.GoString`](<#panicgo-function-gostring>)

- [class PanicS](<#class-panics>)

  - [`function new(?_message:stdgo.AnyInterface):Void`](<#panics-function-new>)

  - [`function string():stdgo.GoString`](<#panics-function-string>)

- [class Person](<#class-person>)

  - [`function new(?name:stdgo.GoString, ?age:Null<stdgo.GoUInt>, ?addr:stdgo.Ref<stdgo.fmt_test.Address>):Void`](<#person-function-new>)

  - [`function goString():stdgo.GoString`](<#person-function-gostring>)

- [class Recur](<#class-recur>)

  - [`function new(?_i:Null<stdgo.GoInt>, ?_failed:stdgo.Pointer<Bool>):Void`](<#recur-function-new>)

  - [`function string():stdgo.GoString`](<#recur-function-string>)

- [class RecursiveInt](<#class-recursiveint>)

  - [`function new(?_i:Null<stdgo.GoInt>, ?_next:stdgo.Ref<stdgo.fmt_test.RecursiveInt>):Void`](<#recursiveint-function-new>)

  - [`function scan( _state:stdgo.fmt.ScanState, _verb:stdgo.GoRune):stdgo.Error`](<#recursiveint-function-scan>)

- [class S](<#class-s>)

  - [`function new(?f:Null<stdgo.fmt_test.F>, ?g:Null<stdgo.fmt_test.G>):Void`](<#s-function-new>)

- [class SI](<#class-si>)

  - [`function new(?i:stdgo.AnyInterface):Void`](<#si-function-new>)

- [class ScanTest](<#class-scantest>)

  - [`function new(?_text:stdgo.GoString, ?_in:stdgo.AnyInterface, ?_out:stdgo.AnyInterface):Void`](<#scantest-function-new>)

- [class ScanfMultiTest](<#class-scanfmultitest>)

  - [`function new(?_format:stdgo.GoString, ?_text:stdgo.GoString, ?_in:stdgo.Slice<stdgo.AnyInterface>, ?_out:stdgo.Slice<stdgo.AnyInterface>, ?_err:stdgo.GoString):Void`](<#scanfmultitest-function-new>)

- [class ScanfTest](<#class-scanftest>)

  - [`function new(?_format:stdgo.GoString, ?_text:stdgo.GoString, ?_in:stdgo.AnyInterface, ?_out:stdgo.AnyInterface):Void`](<#scanftest-function-new>)

- [class T\_testNilDoesNotBecomeTyped\_37\_\_\_localname\_\_\_A](<#class-t_testnildoesnotbecometyped_37localnamea>)

  - [`function new():Void`](<#t_testnildoesnotbecometyped_37localnamea-function-new>)

- [class T\_testNilDoesNotBecomeTyped\_38\_\_\_localname\_\_\_B](<#class-t_testnildoesnotbecometyped_38localnameb>)

  - [`function new():Void`](<#t_testnildoesnotbecometyped_38localnameb-function-new>)

- [class T\_testStructPrinter\_36\_\_\_localname\_\_\_T](<#class-t_teststructprinter_36localnamet>)

  - [`function new(?_a:stdgo.GoString, ?_b:stdgo.GoString, ?_c:Null<stdgo.GoInt>):Void`](<#t_teststructprinter_36localnamet-function-new>)

- [typedef F](<#typedef-f>)

- [typedef G](<#typedef-g>)

- [typedef I](<#typedef-i>)

- [typedef P](<#typedef-p>)

- [typedef SE](<#typedef-se>)

- [typedef TB](<#typedef-tb>)

- [typedef TF](<#typedef-tf>)

- [typedef TF32](<#typedef-tf32>)

- [typedef TF64](<#typedef-tf64>)

- [typedef TI](<#typedef-ti>)

- [typedef TI16](<#typedef-ti16>)

- [typedef TI32](<#typedef-ti32>)

- [typedef TI64](<#typedef-ti64>)

- [typedef TI8](<#typedef-ti8>)

- [typedef TS](<#typedef-ts>)

- [typedef TU](<#typedef-tu>)

- [typedef TU16](<#typedef-tu16>)

- [typedef TU32](<#typedef-tu32>)

- [typedef TU64](<#typedef-tu64>)

- [typedef TU8](<#typedef-tu8>)

- [typedef TUI](<#typedef-tui>)

- [typedef T\_\_interface\_0](<#typedef-t__interface_0>)

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

- [typedef T\_byteFormatter](<#typedef-t_byteformatter>)

- [typedef T\_byteStringer](<#typedef-t_bytestringer>)

- [typedef T\_errString](<#typedef-t_errstring>)

- [typedef T\_hexBytes](<#typedef-t_hexbytes>)

- [typedef T\_renamedBool](<#typedef-t_renamedbool>)

- [typedef T\_renamedBytes](<#typedef-t_renamedbytes>)

- [typedef T\_renamedComplex128](<#typedef-t_renamedcomplex128>)

- [typedef T\_renamedComplex64](<#typedef-t_renamedcomplex64>)

- [typedef T\_renamedFloat32](<#typedef-t_renamedfloat32>)

- [typedef T\_renamedFloat64](<#typedef-t_renamedfloat64>)

- [typedef T\_renamedInt](<#typedef-t_renamedint>)

- [typedef T\_renamedInt16](<#typedef-t_renamedint16>)

- [typedef T\_renamedInt32](<#typedef-t_renamedint32>)

- [typedef T\_renamedInt64](<#typedef-t_renamedint64>)

- [typedef T\_renamedInt8](<#typedef-t_renamedint8>)

- [typedef T\_renamedString](<#typedef-t_renamedstring>)

- [typedef T\_renamedUint](<#typedef-t_renameduint>)

- [typedef T\_renamedUint16](<#typedef-t_renameduint16>)

- [typedef T\_renamedUint32](<#typedef-t_renameduint32>)

- [typedef T\_renamedUint64](<#typedef-t_renameduint64>)

- [typedef T\_renamedUint8](<#typedef-t_renameduint8>)

- [typedef T\_renamedUintptr](<#typedef-t_renameduintptr>)

- [typedef T\_writeStringFormatter](<#typedef-t_writestringformatter>)

- [typedef TwoLines](<#typedef-twolines>)

- [typedef Xs](<#typedef-xs>)

# Constants


```haxe
import stdgo.fmt_test.Fmt
```


```haxe
final _appendResult:stdgo.GoString = (("hello world, 23" : stdgo.GoString))
```


```haxe
final _hello:stdgo.GoString = (("hello " : stdgo.GoString))
```


```haxe
final _intCount:stdgo.GoUInt64 = ((800i64 : stdgo.StdGoTypes.GoUInt64))
```



800 is small enough to not overflow the stack when using gccgo on a
platform that does not support split stack.  

```haxe
final no:stdgo.GoUInt64 = ((0i64 : stdgo.StdGoTypes.GoUInt64))
```


# Variables


```haxe
import stdgo.fmt_test.Fmt
```


```haxe
var __1:stdgo.bytes.Buffer
```


```haxe
var __2:stdgo.fmt.State
```


```haxe
var _array:stdgo.GoArray<stdgo.GoInt>
```


```haxe
var _barray:stdgo.GoArray<stdgo.fmt_test.T_renamedUint8>
```


```haxe
var _boolVal:Bool
```


```haxe
var _bslice:stdgo.Slice<stdgo.fmt_test.T_renamedUint8>
```


```haxe
var _byteFormatterSlice:stdgo.Slice<stdgo.fmt_test.T_byteFormatter>
```


```haxe
var _byteStringerSlice:stdgo.Slice<stdgo.fmt_test.T_byteStringer>
```


```haxe
var _bytesVal:stdgo.Slice<stdgo.GoByte>
```


```haxe
var _c:stdgo.GoComplex128
```


```haxe
var _complex128Val:stdgo.GoComplex128
```


```haxe
var _complex64Val:stdgo.GoComplex64
```


```haxe
var _eofTests:stdgo.Slice<stdgo.fmt_test.T__struct_13>
```


```haxe
var _f:stdgo.GoFloat64
```


```haxe
var _flagtests:stdgo.Slice<stdgo.fmt_test.T__struct_5>
```


```haxe
var _float32Val:stdgo.GoFloat32
```


```haxe
var _float64Val:stdgo.GoFloat64
```


```haxe
var _fmtTests:stdgo.Slice<stdgo.fmt_test.T__struct_2>
```


```haxe
var _formatterFlagTests:stdgo.Slice<stdgo.fmt_test.T__struct_9>
```


```haxe
var _i:stdgo.GoInt
```


```haxe
var _iarray:stdgo.GoArray<stdgo.AnyInterface>
```


```haxe
var _int16Val:stdgo.GoInt16
```


```haxe
var _int32Val:stdgo.GoInt32
```


```haxe
var _int64Val:stdgo.GoInt64
```


```haxe
var _int8Val:stdgo.GoInt8
```


```haxe
var _intStringVal:stdgo.fmt_test.IntString
```


```haxe
var _intVal:stdgo.GoInt
```


```haxe
var _intVar:stdgo.GoInt
```


```haxe
var _islice:stdgo.Slice<stdgo.AnyInterface>
```


```haxe
var _j:stdgo.GoInt
```


```haxe
var _k:stdgo.GoInt
```


```haxe
var _mallocBuf:stdgo.bytes.Buffer
```


```haxe
var _mallocPointer:stdgo.Pointer<stdgo.GoInt>
```



A pointer so we know the interface value won't allocate.  

```haxe
var _mallocTest:stdgo.Slice<stdgo.fmt_test.T__struct_4>
```


```haxe
var _multiTests:stdgo.Slice<stdgo.fmt_test.ScanfMultiTest>
```


```haxe
var _negInf:stdgo.GoFloat64
```


```haxe
var _overflowTests:stdgo.Slice<stdgo.fmt_test.ScanTest>
```


```haxe
var _pValue:stdgo.fmt_test.P
```


```haxe
var _panictests:stdgo.Slice<stdgo.fmt_test.T__struct_8>
```


```haxe
var _posInf:stdgo.GoFloat64
```


```haxe
var _r1:stdgo.GoRune
```


```haxe
var _r2:stdgo.GoRune
```


```haxe
var _r3:stdgo.GoRune
```


```haxe
var _readers:stdgo.Slice<stdgo.fmt_test.T__struct_11>
```


```haxe
var _recurCount:stdgo.GoInt
```



recurCount tests that erroneous String routine doesn't cause fatal recursion.  

```haxe
var _renamedBoolVal:stdgo.fmt_test.T_renamedBool
```


```haxe
var _renamedBytesVal:stdgo.fmt_test.T_renamedBytes
```


```haxe
var _renamedComplex128Val:stdgo.fmt_test.T_renamedComplex128
```


```haxe
var _renamedComplex64Val:stdgo.fmt_test.T_renamedComplex64
```


```haxe
var _renamedFloat32Val:stdgo.fmt_test.T_renamedFloat32
```


```haxe
var _renamedFloat64Val:stdgo.fmt_test.T_renamedFloat64
```


```haxe
var _renamedInt16Val:stdgo.fmt_test.T_renamedInt16
```


```haxe
var _renamedInt32Val:stdgo.fmt_test.T_renamedInt32
```


```haxe
var _renamedInt64Val:stdgo.fmt_test.T_renamedInt64
```


```haxe
var _renamedInt8Val:stdgo.fmt_test.T_renamedInt8
```


```haxe
var _renamedIntVal:stdgo.fmt_test.T_renamedInt
```


```haxe
var _renamedStringVal:stdgo.fmt_test.T_renamedString
```


```haxe
var _renamedUint16Val:stdgo.fmt_test.T_renamedUint16
```


```haxe
var _renamedUint32Val:stdgo.fmt_test.T_renamedUint32
```


```haxe
var _renamedUint64Val:stdgo.fmt_test.T_renamedUint64
```


```haxe
var _renamedUint8Val:stdgo.fmt_test.T_renamedUint8
```


```haxe
var _renamedUintVal:stdgo.fmt_test.T_renamedUint
```


```haxe
var _renamedUintptrVal:stdgo.fmt_test.T_renamedUintptr
```


```haxe
var _reorderTests:stdgo.Slice<stdgo.fmt_test.T__struct_3>
```


```haxe
var _runeVal:stdgo.GoRune
```


```haxe
var _s:stdgo.GoString
```


```haxe
var _scanTests:stdgo.Slice<stdgo.fmt_test.ScanTest>
```


```haxe
var _scanfTests:stdgo.Slice<stdgo.fmt_test.ScanfTest>
```


```haxe
var _slice:stdgo.Slice<stdgo.GoInt>
```


```haxe
var _startests:stdgo.Slice<stdgo.fmt_test.T__struct_7>
```


```haxe
var _stringVal:stdgo.GoString
```


```haxe
var _t:stdgo.GoString
```


```haxe
var _truth:Bool
```


```haxe
var _uint16Val:stdgo.GoUInt16
```


```haxe
var _uint32Val:stdgo.GoUInt32
```


```haxe
var _uint64Val:stdgo.GoUInt64
```


```haxe
var _uint8Val:stdgo.GoUInt8
```


```haxe
var _uintVal:stdgo.GoUInt
```


```haxe
var _uintptrVal:stdgo.GoUIntptr
```


```haxe
var _x:stdgo.fmt_test.Xs
```


```haxe
var _xVal:stdgo.fmt_test.Xs
```


```haxe
var _y:stdgo.fmt_test.Xs
```


```haxe
var _z:stdgo.fmt_test.IntString
```


```haxe
var naN:stdgo.GoFloat64
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
import stdgo.fmt_test.Fmt
```


## function \_args


```haxe
function _args(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo.AnyInterface>
```


[\(view code\)](<./Fmt.hx#L3306>)


## function \_check


```haxe
function _check(_t:stdgo.Ref<stdgo.testing.T_>, _got:stdgo.GoString, _want:stdgo.GoString):Void
```


[\(view code\)](<./Fmt.hx#L4259>)


## function \_hideFromVet


```haxe
function _hideFromVet(_s:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Fmt.hx#L3352>)


## function \_makeInts


```haxe
function _makeInts(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Fmt.hx#L3951>)


## function \_mkState


```haxe
function _mkState(_w:stdgo.GoInt, _p:stdgo.GoInt, _flags:stdgo.GoString):stdgo.fmt_test.T_testState
```


[\(view code\)](<./Fmt.hx#L4213>)


## function \_presentInMap


```haxe
function _presentInMap(_s:stdgo.GoString, _a:stdgo.Slice<stdgo.GoString>, _t:stdgo.Ref<stdgo.testing.T_>):Void
```



presentInMap checks map printing using substrings so we don't depend on the
print order.  

[\(view code\)](<./Fmt.hx#L3202>)


## function \_scanInts


```haxe
function _scanInts(_r:stdgo.Ref<stdgo.fmt_test.RecursiveInt>, _b:stdgo.Ref<stdgo.bytes.Buffer>):stdgo.Error
```



scanInts performs the same scanning task as RecursiveInt.Scan
but without recurring through scanner, so we can compare
performance more directly.  

[\(view code\)](<./Fmt.hx#L3924>)


## function \_splitErr


```haxe
function _splitErr(_err:stdgo.Error):stdgo.Slice<stdgo.Error>
```


[\(view code\)](<./Fmt.hx#L2643>)


## function \_testScan


```haxe
function _testScan(_t:stdgo.Ref<stdgo.testing.T_>, _f:(), _scan:(_r:stdgo.io.Reader, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}):Void
```


[\(view code\)](<./Fmt.hx#L3446>)


## function \_testScanInts


```haxe
function _testScanInts(_t:stdgo.Ref<stdgo.testing.T_>, _scan:(:stdgo.Ref<stdgo.fmt_test.RecursiveInt>, :stdgo.Ref<stdgo.bytes.Buffer>):stdgo.Error):Void
```


[\(view code\)](<./Fmt.hx#L3973>)


## function \_testScanfMulti


```haxe
function _testScanfMulti(_t:stdgo.Ref<stdgo.testing.T_>, _f:()):Void
```


[\(view code\)](<./Fmt.hx#L3589>)


## function \_verifyInf


```haxe
function _verifyInf(_str:stdgo.GoString, _t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3553>)


## function \_verifyNaN


```haxe
function _verifyNaN(_str:stdgo.GoString, _t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3532>)


## function \_zeroFill


```haxe
function _zeroFill(_prefix:stdgo.GoString, _width:stdgo.GoInt, _suffix:stdgo.GoString):stdgo.GoString
```



zeroFill generates zero\-filled strings of the specified width. The length
of the suffix \(but not the prefix\) is compensated for in the width calculation.  

[\(view code\)](<./Fmt.hx#L2831>)


## function benchmarkFprintInt


```haxe
function benchmarkFprintInt(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L3086>)


## function benchmarkFprintIntNoAlloc


```haxe
function benchmarkFprintIntNoAlloc(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L3107>)


## function benchmarkFprintfBytes


```haxe
function benchmarkFprintfBytes(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L3096>)


## function benchmarkManyArgs


```haxe
function benchmarkManyArgs(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L3077>)


## function benchmarkScanInts


```haxe
function benchmarkScanInts(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L3992>)


## function benchmarkScanRecursiveInt


```haxe
function benchmarkScanRecursiveInt(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L4006>)


## function benchmarkScanRecursiveIntReaderWrapper


```haxe
function benchmarkScanRecursiveIntReaderWrapper(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L4020>)


## function benchmarkSprintfBoolean


```haxe
function benchmarkSprintfBoolean(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L3024>)


## function benchmarkSprintfBytes


```haxe
function benchmarkSprintfBytes(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L3046>)


## function benchmarkSprintfComplex


```haxe
function benchmarkSprintfComplex(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L3017>)


## function benchmarkSprintfEmpty


```haxe
function benchmarkSprintfEmpty(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2946>)


## function benchmarkSprintfFloat


```haxe
function benchmarkSprintfFloat(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L3010>)


## function benchmarkSprintfHexBytes


```haxe
function benchmarkSprintfHexBytes(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L3038>)


## function benchmarkSprintfHexString


```haxe
function benchmarkSprintfHexString(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L3031>)


## function benchmarkSprintfInt


```haxe
function benchmarkSprintfInt(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2989>)


## function benchmarkSprintfIntInt


```haxe
function benchmarkSprintfIntInt(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2996>)


## function benchmarkSprintfPadding


```haxe
function benchmarkSprintfPadding(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2939>)


## function benchmarkSprintfPrefixedInt


```haxe
function benchmarkSprintfPrefixedInt(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L3003>)


## function benchmarkSprintfQuoteString


```haxe
function benchmarkSprintfQuoteString(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2982>)


## function benchmarkSprintfSlowParsingPath


```haxe
function benchmarkSprintfSlowParsingPath(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2975>)


## function benchmarkSprintfString


```haxe
function benchmarkSprintfString(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2953>)


## function benchmarkSprintfStringer


```haxe
function benchmarkSprintfStringer(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L3054>)


## function benchmarkSprintfStructure


```haxe
function benchmarkSprintfStructure(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L3062>)


## function benchmarkSprintfTruncateBytes


```haxe
function benchmarkSprintfTruncateBytes(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2967>)


## function benchmarkSprintfTruncateString


```haxe
function benchmarkSprintfTruncateString(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2960>)


## function exampleErrorf


```haxe
function exampleErrorf():Void
```



The Errorf function lets us use formatting features
to create descriptive error messages.  

[\(view code\)](<./Fmt.hx#L2660>)


## function exampleFprint


```haxe
function exampleFprint():Void
```


[\(view code\)](<./Fmt.hx#L2728>)


## function exampleFprintf


```haxe
function exampleFprintf():Void
```


[\(view code\)](<./Fmt.hx#L2744>)


## function exampleFprintln


```haxe
function exampleFprintln():Void
```


[\(view code\)](<./Fmt.hx#L2736>)


## function exampleFscanf


```haxe
function exampleFscanf():Void
```


[\(view code\)](<./Fmt.hx#L2665>)


## function exampleFscanln


```haxe
function exampleFscanln():Void
```


[\(view code\)](<./Fmt.hx#L2675>)


## function exampleGoStringer


```haxe
function exampleGoStringer():Void
```


[\(view code\)](<./Fmt.hx#L3440>)


## function examplePrint


```haxe
function examplePrint():Void
```


[\(view code\)](<./Fmt.hx#L2701>)


## function examplePrintf


```haxe
function examplePrintf():Void
```


[\(view code\)](<./Fmt.hx#L2709>)


## function examplePrintln


```haxe
function examplePrintln():Void
```


[\(view code\)](<./Fmt.hx#L2705>)


## function exampleSprint


```haxe
function exampleSprint():Void
```


[\(view code\)](<./Fmt.hx#L2713>)


## function exampleSprintf


```haxe
function exampleSprintf():Void
```


[\(view code\)](<./Fmt.hx#L2723>)


## function exampleSprintln


```haxe
function exampleSprintln():Void
```


[\(view code\)](<./Fmt.hx#L2718>)


## function exampleSscanf


```haxe
function exampleSscanf():Void
```


[\(view code\)](<./Fmt.hx#L2692>)


## function exampleStringer


```haxe
function exampleStringer():Void
```


[\(view code\)](<./Fmt.hx#L4255>)


## function example\_formats


```haxe
function example_formats():Void
```



These examples demonstrate the basics of printing using a format string. Printf,
Sprintf, and Fprintf all take a format string that specifies how to format the
subsequent arguments. For example, %d \(we call that a 'verb'\) says to print the
corresponding argument, which must be an integer \(or something containing an
integer, such as a slice of ints\) in decimal. The verb %v \('v' for 'value'\)
always formats the argument in its default form, just how Print or Println would
show it. The special verb %T \('T' for 'Type'\) prints the type of the argument
rather than its value. The examples are not exhaustive; see the package comment
for all the details.  

[\(view code\)](<./Fmt.hx#L2778>)


## function example\_printers


```haxe
function example_printers():Void
```



Print, Println, and Printf lay out their arguments differently. In this example
we can compare their behaviors. Println always adds blanks between the items it
prints, while Print adds blanks only between non\-string arguments and Printf
does exactly what it is told.
Sprint, Sprintln, Sprintf, Fprint, Fprintln, and Fprintf behave the same as
their corresponding Print, Println, and Printf functions shown here.  

[\(view code\)](<./Fmt.hx#L2760>)


## function testAppend


```haxe
function testAppend(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3418>)


## function testAppendf


```haxe
function testAppendf(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3407>)


## function testAppendln


```haxe
function testAppendln(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3429>)


## function testBadVerbRecursion


```haxe
function testBadVerbRecursion(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3328>)


## function testBlank


```haxe
function testBlank(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



TestBlank checks that Sprint \(and hence Print, Fprint\) puts spaces in the
right places, that is, between arg pairs in which neither is a string.  

[\(view code\)](<./Fmt.hx#L3269>)


## function testBlankln


```haxe
function testBlankln(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



TestBlankln checks that Sprintln \(and hence Println, Fprintln\) puts spaces in
the right places, that is, between all arg pairs.  

[\(view code\)](<./Fmt.hx#L3280>)


## function testComplexFormatting


```haxe
function testComplexFormatting(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



TestComplexFormatting checks that a complex always formats to the same
thing as if done by hand with two singleton prints.  

[\(view code\)](<./Fmt.hx#L2891>)


## function testCountMallocs


```haxe
function testCountMallocs(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3118>)


## function testEOF


```haxe
function testEOF(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



TestEOF verifies that when we scan, we see at most EOF once per call to a
Scan function, and then only when it's really an EOF.  

[\(view code\)](<./Fmt.hx#L3729>)


## function testEOFAllTypes


```haxe
function testEOFAllTypes(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3794>)


## function testEOFAtEndOfInput


```haxe
function testEOFAtEndOfInput(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



TestEOFAtEndOfInput verifies that we see an EOF error if we run out of input.
This was a buglet: we used to get "expected integer".  

[\(view code\)](<./Fmt.hx#L3762>)


## function testEmptyMap


```haxe
function testEmptyMap(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3247>)


## function testErrorf


```haxe
function testErrorf(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2601>)


## function testFlagParser


```haxe
function testFlagParser(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3136>)


## function testFmtInterface


```haxe
function testFmtInterface(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2819>)


## function testFormatString


```haxe
function testFormatString(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L4234>)


## function testFormatterFlags


```haxe
function testFormatterFlags(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3390>)


## function testFormatterPrintln


```haxe
function testFormatterPrintln(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



TestFormatterPrintln checks Formatter with Sprint, Sprintln, Sprintf.  

[\(view code\)](<./Fmt.hx#L3290>)


## function testHexByte


```haxe
function testHexByte(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L4200>)


## function testHexBytes


```haxe
function testHexBytes(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



Issue 9124.
%x on bytes couldn't handle non\-space bytes terminating the scan.  

[\(view code\)](<./Fmt.hx#L4038>)


## function testInf


```haxe
function testInf(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3573>)


## function testIsSpace


```haxe
function testIsSpace(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3342>)


## function testLineByLineFscanf


```haxe
function testLineByLineFscanf(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



TestLineByLineFscanf tests that Fscanf does not read past newline. Issue
3481.  

[\(view code\)](<./Fmt.hx#L3884>)


## function testMapPrinter


```haxe
function testMapPrinter(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3217>)


## function testMultiLine


```haxe
function testMultiLine(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3837>)


## function testNaN


```haxe
function testNaN(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3548>)


## function testNilDoesNotBecomeTyped


```haxe
function testNilDoesNotBecomeTyped(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3379>)


## function testPanics


```haxe
function testPanics(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3318>)


## function testParsenum


```haxe
function testParsenum(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3398>)


## function testReorder


```haxe
function testReorder(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2931>)


## function testScan


```haxe
function testScan(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3475>)


## function testScanEmpty


```haxe
function testScanEmpty(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



Empty strings are not valid input when scanning a string.  

[\(view code\)](<./Fmt.hx#L3661>)


## function testScanInts


```haxe
function testScanInts(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3962>)


## function testScanMultiple


```haxe
function testScanMultiple(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3630>)


## function testScanNewlinesAreSpaces


```haxe
function testScanNewlinesAreSpaces(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L4099>)


## function testScanNotPointer


```haxe
function testScanNotPointer(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3696>)


## function testScanOverflow


```haxe
function testScanOverflow(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3519>)


## function testScanStateCount


```haxe
function testScanStateCount(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3903>)


## function testScanf


```haxe
function testScanf(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3489>)


## function testScanfMulti


```haxe
function testScanfMulti(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3623>)


## function testScanfNewlineMatchFormat


```haxe
function testScanfNewlineMatchFormat(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L4128>)


## function testScanln


```haxe
function testScanln(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3482>)


## function testScanlnNewlinesTerminate


```haxe
function testScanlnNewlinesTerminate(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L4112>)


## function testScanlnNoNewline


```haxe
function testScanlnNoNewline(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3706>)


## function testScanlnWithMiddleNewline


```haxe
function testScanlnWithMiddleNewline(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3715>)


## function testSlicePrinter


```haxe
function testSlicePrinter(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3182>)


## function testSprintf


```haxe
function testSprintf(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2834>)


## function testStringer


```haxe
function testStringer(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L4264>)


## function testStructPrinter


```haxe
function testStructPrinter(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3164>)


## function testUnreadRuneWithBufio


```haxe
function testUnreadRuneWithBufio(_t:stdgo.Ref<stdgo.testing.T_>):Void
```



TestUnreadRuneWithBufio verifies that, at least when using bufio, successive
calls to Fscan do not lose runes.  

[\(view code\)](<./Fmt.hx#L3814>)


## function testWidthAndPrecision


```haxe
function testWidthAndPrecision(_t:stdgo.Ref<stdgo.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3310>)


## function main


```haxe
function main():Void
```


[\(view code\)](<./Fmt.hx#L126>)


# Classes


```haxe
import stdgo.fmt_test.*
```


## class A


```haxe
var _i:stdgo.GoInt
```


```haxe
var _j:stdgo.GoUInt
```


```haxe
var _s:stdgo.GoString
```


```haxe
var _x:stdgo.Slice<stdgo.GoInt>
```


### A function new


```haxe
function new(?_i:Null<stdgo.GoInt>, ?_j:Null<stdgo.GoUInt>, ?_s:stdgo.GoString, ?_x:stdgo.Slice<stdgo.GoInt>):Void
```


[\(view code\)](<./Fmt_test.hx#L1874>)


## class Address



Address has a City, State and a Country.  

```haxe
var city:stdgo.GoString
```


```haxe
var country:stdgo.GoString
```


```haxe
var state:stdgo.GoString
```


### Address function new


```haxe
function new(?city:stdgo.GoString, ?state:stdgo.GoString, ?country:stdgo.GoString):Void
```


[\(view code\)](<./Fmt_test.hx#L2035>)


## class Animal



Animal has a Name and an Age to represent an animal.  

```haxe
var age:stdgo.GoUInt
```


```haxe
var name:stdgo.GoString
```


### Animal function new


```haxe
function new(?name:stdgo.GoString, ?age:Null<stdgo.GoUInt>):Void
```


[\(view code\)](<./Fmt_test.hx#L2229>)


### Animal function string


```haxe
function string():stdgo.GoString
```



String makes Animal satisfy the Stringer interface.  

[\(view code\)](<./Fmt_test.hx#L4628>)


## class B


```haxe
var _j:stdgo.GoInt
```


```haxe
var i:stdgo.fmt_test.I
```


### B function new


```haxe
function new(?i:Null<stdgo.fmt_test.I>, ?_j:Null<stdgo.GoInt>):Void
```


[\(view code\)](<./Fmt_test.hx#L1893>)


## class C


```haxe
var _i:stdgo.GoInt
```


```haxe
var b:stdgo.fmt_test.B
```


### C function new


```haxe
function new(?_i:Null<stdgo.GoInt>, ?b:stdgo.fmt_test.B):Void
```


[\(view code\)](<./Fmt_test.hx#L1911>)


## class IntString



IntString accepts an integer followed immediately by a string.
It tests the embedding of a scan within a scan.  

```haxe
var _i:stdgo.GoInt
```


```haxe
var _s:stdgo.GoString
```


### IntString function new


```haxe
function new(?_i:Null<stdgo.GoInt>, ?_s:stdgo.GoString):Void
```


[\(view code\)](<./Fmt_test.hx#L2136>)


### IntString function scan


```haxe
function scan( _state:stdgo.fmt.ScanState, _verb:stdgo.GoRune):stdgo.Error
```


[\(view code\)](<./Fmt_test.hx#L4465>)


## class PanicF



PanicF is a type that panics in Format.  

```haxe
var _message:stdgo.AnyInterface
```


### PanicF function new


```haxe
function new(?_message:stdgo.AnyInterface):Void
```


[\(view code\)](<./Fmt_test.hx#L2001>)


### PanicF function format


```haxe
function format( _f:stdgo.fmt.State, _c:stdgo.GoRune):Void
```



Value receiver.  

[\(view code\)](<./Fmt_test.hx#L4393>)


## class PanicGo



PanicGo is a type that panics in GoString.  

```haxe
var _message:stdgo.AnyInterface
```


### PanicGo function new


```haxe
function new(?_message:stdgo.AnyInterface):Void
```


[\(view code\)](<./Fmt_test.hx#L1986>)


### PanicGo function goString


```haxe
function goString():stdgo.GoString
```



Value receiver.  

[\(view code\)](<./Fmt_test.hx#L4369>)


## class PanicS



PanicS is a type that panics in String.  

```haxe
var _message:stdgo.AnyInterface
```


### PanicS function new


```haxe
function new(?_message:stdgo.AnyInterface):Void
```


[\(view code\)](<./Fmt_test.hx#L1971>)


### PanicS function string


```haxe
function string():stdgo.GoString
```



Value receiver.  

[\(view code\)](<./Fmt_test.hx#L4345>)


## class Person



Person has a Name, Age and Address.  

```haxe
var addr:stdgo.Ref<stdgo.fmt_test.Address>
```


```haxe
var age:stdgo.GoUInt
```


```haxe
var name:stdgo.GoString
```


### Person function new


```haxe
function new(?name:stdgo.GoString, ?age:Null<stdgo.GoUInt>, ?addr:stdgo.Ref<stdgo.fmt_test.Address>):Void
```


[\(view code\)](<./Fmt_test.hx#L2054>)


### Person function goString


```haxe
function goString():stdgo.GoString
```



GoString makes Person satisfy the GoStringer interface.
The return value is valid Go code that can be used to reproduce the Person struct.  

[\(view code\)](<./Fmt_test.hx#L4444>)


## class Recur


```haxe
var _failed:stdgo.Pointer<Bool>
```


```haxe
var _i:stdgo.GoInt
```


### Recur function new


```haxe
function new(?_i:Null<stdgo.GoInt>, ?_failed:stdgo.Pointer<Bool>):Void
```


[\(view code\)](<./Fmt_test.hx#L2017>)


### Recur function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Fmt_test.hx#L4411>)


## class RecursiveInt



RecursiveInt accepts a string matching %d.%d.%d....
and parses it into a linked list.
It allows us to benchmark recursive descent style scanners.  

```haxe
var _i:stdgo.GoInt
```


```haxe
var _next:stdgo.Ref<stdgo.fmt_test.RecursiveInt>
```


### RecursiveInt function new


```haxe
function new(?_i:Null<stdgo.GoInt>, ?_next:stdgo.Ref<stdgo.fmt_test.RecursiveInt>):Void
```


[\(view code\)](<./Fmt_test.hx#L2189>)


### RecursiveInt function scan


```haxe
function scan( _state:stdgo.fmt.ScanState, _verb:stdgo.GoRune):stdgo.Error
```


[\(view code\)](<./Fmt_test.hx#L4542>)


## class S


```haxe
var f:stdgo.fmt_test.F
```


```haxe
var g:stdgo.fmt_test.G
```


### S function new


```haxe
function new(?f:Null<stdgo.fmt_test.F>, ?g:Null<stdgo.fmt_test.G>):Void
```


[\(view code\)](<./Fmt_test.hx#L1928>)


## class SI


```haxe
var i:stdgo.AnyInterface
```


### SI function new


```haxe
function new(?i:stdgo.AnyInterface):Void
```


[\(view code\)](<./Fmt_test.hx#L1944>)


## class ScanTest


```haxe
var _in:stdgo.AnyInterface
```


```haxe
var _out:stdgo.AnyInterface
```


```haxe
var _text:stdgo.GoString
```


### ScanTest function new


```haxe
function new(?_text:stdgo.GoString, ?_in:stdgo.AnyInterface, ?_out:stdgo.AnyInterface):Void
```


[\(view code\)](<./Fmt_test.hx#L2073>)


## class ScanfMultiTest


```haxe
var _err:stdgo.GoString
```


```haxe
var _format:stdgo.GoString
```


```haxe
var _in:stdgo.Slice<stdgo.AnyInterface>
```


```haxe
var _out:stdgo.Slice<stdgo.AnyInterface>
```


```haxe
var _text:stdgo.GoString
```


### ScanfMultiTest function new


```haxe
function new(?_format:stdgo.GoString, ?_text:stdgo.GoString, ?_in:stdgo.Slice<stdgo.AnyInterface>, ?_out:stdgo.Slice<stdgo.AnyInterface>, ?_err:stdgo.GoString):Void
```


[\(view code\)](<./Fmt_test.hx#L2115>)


## class ScanfTest


```haxe
var _format:stdgo.GoString
```


```haxe
var _in:stdgo.AnyInterface
```


```haxe
var _out:stdgo.AnyInterface
```


```haxe
var _text:stdgo.GoString
```


### ScanfTest function new


```haxe
function new(?_format:stdgo.GoString, ?_text:stdgo.GoString, ?_in:stdgo.AnyInterface, ?_out:stdgo.AnyInterface):Void
```


[\(view code\)](<./Fmt_test.hx#L2093>)


## class T\_testNilDoesNotBecomeTyped\_37\_\_\_localname\_\_\_A


### T\_testNilDoesNotBecomeTyped\_37\_\_\_localname\_\_\_A function new


```haxe
function new():Void
```


[\(view code\)](<./Fmt_test.hx#L3361>)


## class T\_testNilDoesNotBecomeTyped\_38\_\_\_localname\_\_\_B


### T\_testNilDoesNotBecomeTyped\_38\_\_\_localname\_\_\_B function new


```haxe
function new():Void
```


[\(view code\)](<./Fmt_test.hx#L3373>)


## class T\_testStructPrinter\_36\_\_\_localname\_\_\_T


```haxe
var _a:stdgo.GoString
```


```haxe
var _b:stdgo.GoString
```


```haxe
var _c:stdgo.GoInt
```


### T\_testStructPrinter\_36\_\_\_localname\_\_\_T function new


```haxe
function new(?_a:stdgo.GoString, ?_b:stdgo.GoString, ?_c:Null<stdgo.GoInt>):Void
```


[\(view code\)](<./Fmt_test.hx#L3154>)


# Typedefs


```haxe
import stdgo.fmt_test.*
```


## typedef F


```haxe
typedef F = stdgo.GoInt;
```


## typedef G


```haxe
typedef G = stdgo.GoInt;
```


## typedef I


```haxe
typedef I = stdgo.GoInt;
```


## typedef P


```haxe
typedef P = stdgo.GoInt;
```



P is a type with a String method with pointer receiver for testing %p.  

## typedef SE


```haxe
typedef SE = stdgo.Slice<stdgo.AnyInterface>;
```


## typedef TB


```haxe
typedef TB = Bool;
```


## typedef TF


```haxe
typedef TF = stdgo.GoFloat64;
```


## typedef TF32


```haxe
typedef TF32 = stdgo.GoFloat32;
```


## typedef TF64


```haxe
typedef TF64 = stdgo.GoFloat64;
```


## typedef TI


```haxe
typedef TI = stdgo.GoInt;
```


## typedef TI16


```haxe
typedef TI16 = stdgo.GoInt16;
```


## typedef TI32


```haxe
typedef TI32 = stdgo.GoInt32;
```


## typedef TI64


```haxe
typedef TI64 = stdgo.GoInt64;
```


## typedef TI8


```haxe
typedef TI8 = stdgo.GoInt8;
```


## typedef TS


```haxe
typedef TS = stdgo.GoString;
```


## typedef TU


```haxe
typedef TU = stdgo.GoUInt;
```


## typedef TU16


```haxe
typedef TU16 = stdgo.GoUInt16;
```


## typedef TU32


```haxe
typedef TU32 = stdgo.GoUInt32;
```


## typedef TU64


```haxe
typedef TU64 = stdgo.GoUInt64;
```


## typedef TU8


```haxe
typedef TU8 = stdgo.GoUInt8;
```


## typedef TUI


```haxe
typedef TUI = stdgo.GoUIntptr;
```


## typedef T\_\_interface\_0


```haxe
typedef T__interface_0 = {
	public function unwrap():stdgo.Slice<stdgo.Error>;
};
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = {
	_wantUnwrap:stdgo.Error;
	_wantText:stdgo.GoString;
	_wantSplit:stdgo.Slice<stdgo.Error>;
	_err:stdgo.Error;
};
```


## typedef T\_\_struct\_1


```haxe
typedef T__struct_1 = {
	name:stdgo.GoString;
	age:stdgo.GoInt;
};
```


## typedef T\_\_struct\_10


```haxe
typedef T__struct_10 = {
	_start:stdgo.GoInt;
	_s:stdgo.GoString;
	_num:stdgo.GoInt;
	_newi:stdgo.GoInt;
	_isnum:Bool;
	_end:stdgo.GoInt;
};
```


## typedef T\_\_struct\_11


```haxe
typedef T__struct_11 = {
	_name:stdgo.GoString;
	public function _f();
};
```


## typedef T\_\_struct\_12


```haxe
typedef T__struct_12 = {
	{<reader> | stdgo.io.Reader | meta:{<m>}};
};
```


## typedef T\_\_struct\_13


```haxe
typedef T__struct_13 = {
	_v:stdgo.AnyInterface;
	_format:stdgo.GoString;
};
```


## typedef T\_\_struct\_14


```haxe
typedef T__struct_14 = {
	_text:stdgo.GoString;
	_name:stdgo.GoString;
	_count:stdgo.GoInt;
};
```


## typedef T\_\_struct\_15


```haxe
typedef T__struct_15 = {
	_text:stdgo.GoString;
	_ok:Bool;
	_name:stdgo.GoString;
	_count:stdgo.GoInt;
};
```


## typedef T\_\_struct\_16


```haxe
typedef T__struct_16 = {
	_text:stdgo.GoString;
	_ok:Bool;
	_name:stdgo.GoString;
	_format:stdgo.GoString;
	_count:stdgo.GoInt;
};
```


## typedef T\_\_struct\_17


```haxe
typedef T__struct_17 = {
	_width:stdgo.GoInt;
	_result:stdgo.GoString;
	_prec:stdgo.GoInt;
	_flags:stdgo.GoString;
};
```


## typedef T\_\_struct\_2


```haxe
typedef T__struct_2 = {
	_val:stdgo.AnyInterface;
	_out:stdgo.GoString;
	_fmt:stdgo.GoString;
};
```


## typedef T\_\_struct\_3


```haxe
typedef T__struct_3 = {
	_val:stdgo.fmt_test.SE;
	_out:stdgo.GoString;
	_fmt:stdgo.GoString;
};
```


## typedef T\_\_struct\_4


```haxe
typedef T__struct_4 = {
	public function _fn():Void;
	_desc:stdgo.GoString;
	_count:stdgo.GoInt;
};
```


## typedef T\_\_struct\_5


```haxe
typedef T__struct_5 = {
	_out:stdgo.GoString;
	_in:stdgo.GoString;
};
```


## typedef T\_\_struct\_6


```haxe
typedef T__struct_6 = {
	_out:stdgo.GoString;
	_fmt:stdgo.GoString;
};
```


## typedef T\_\_struct\_7


```haxe
typedef T__struct_7 = {
	_out:stdgo.GoString;
	_in:stdgo.Slice<stdgo.AnyInterface>;
	_fmt:stdgo.GoString;
};
```


## typedef T\_\_struct\_8


```haxe
typedef T__struct_8 = {
	_out:stdgo.GoString;
	_in:stdgo.AnyInterface;
	_fmt:stdgo.GoString;
};
```


## typedef T\_\_struct\_9


```haxe
typedef T__struct_9 = {
	_val:stdgo.AnyInterface;
	_out:stdgo.GoString;
	_in:stdgo.GoString;
};
```


## typedef T\_byteFormatter


```haxe
typedef T_byteFormatter = stdgo.GoUInt8;
```


## typedef T\_byteStringer


```haxe
typedef T_byteStringer = stdgo.GoUInt8;
```


## typedef T\_errString


```haxe
typedef T_errString = stdgo.GoString;
```


## typedef T\_hexBytes


```haxe
typedef T_hexBytes = stdgo.GoArray<stdgo.GoUInt8>;
```


## typedef T\_renamedBool


```haxe
typedef T_renamedBool = Bool;
```


## typedef T\_renamedBytes


```haxe
typedef T_renamedBytes = stdgo.Slice<stdgo.GoUInt8>;
```


## typedef T\_renamedComplex128


```haxe
typedef T_renamedComplex128 = stdgo.GoComplex128;
```


## typedef T\_renamedComplex64


```haxe
typedef T_renamedComplex64 = stdgo.GoComplex64;
```


## typedef T\_renamedFloat32


```haxe
typedef T_renamedFloat32 = stdgo.GoFloat32;
```


## typedef T\_renamedFloat64


```haxe
typedef T_renamedFloat64 = stdgo.GoFloat64;
```


## typedef T\_renamedInt


```haxe
typedef T_renamedInt = stdgo.GoInt;
```


## typedef T\_renamedInt16


```haxe
typedef T_renamedInt16 = stdgo.GoInt16;
```


## typedef T\_renamedInt32


```haxe
typedef T_renamedInt32 = stdgo.GoInt32;
```


## typedef T\_renamedInt64


```haxe
typedef T_renamedInt64 = stdgo.GoInt64;
```


## typedef T\_renamedInt8


```haxe
typedef T_renamedInt8 = stdgo.GoInt8;
```


## typedef T\_renamedString


```haxe
typedef T_renamedString = stdgo.GoString;
```


## typedef T\_renamedUint


```haxe
typedef T_renamedUint = stdgo.GoUInt;
```


## typedef T\_renamedUint16


```haxe
typedef T_renamedUint16 = stdgo.GoUInt16;
```


## typedef T\_renamedUint32


```haxe
typedef T_renamedUint32 = stdgo.GoUInt32;
```


## typedef T\_renamedUint64


```haxe
typedef T_renamedUint64 = stdgo.GoUInt64;
```


## typedef T\_renamedUint8


```haxe
typedef T_renamedUint8 = stdgo.GoUInt8;
```


## typedef T\_renamedUintptr


```haxe
typedef T_renamedUintptr = stdgo.GoUIntptr;
```


## typedef T\_writeStringFormatter


```haxe
typedef T_writeStringFormatter = stdgo.GoString;
```


## typedef TwoLines


```haxe
typedef TwoLines = stdgo.GoString;
```


## typedef Xs


```haxe
typedef Xs = stdgo.GoString;
```



Xs accepts any non\-empty run of the verb character  

