# Module: `stdgo._internal.fmt`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _args(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo.AnyInterface>`](<#function-_args>)

- [`function _check(_t:stdgo.Ref<stdgo._internal.testing.T_>, _got:stdgo.GoString, _want:stdgo.GoString):Void`](<#function-_check>)

- [`function _hideFromVet(_s:stdgo.GoString):stdgo.GoString`](<#function-_hidefromvet>)

- [`function _makeInts(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>`](<#function-_makeints>)

- [`function _mkState(_w:stdgo.GoInt, _p:stdgo.GoInt, _flags:stdgo.GoString):stdgo._internal.fmt_test.T_testState`](<#function-_mkstate>)

- [`function _presentInMap(_s:stdgo.GoString, _a:stdgo.Slice<stdgo.GoString>, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-_presentinmap>)

- [`function _scanInts(_r:stdgo.Ref<stdgo._internal.fmt_test.RecursiveInt>, _b:stdgo.Ref<stdgo._internal.bytes.Buffer>):stdgo.Error`](<#function-_scanints>)

- [`function _splitErr(_err:stdgo.Error):stdgo.Slice<stdgo.Error>`](<#function-_spliterr>)

- [`function _testScan(_t:stdgo.Ref<stdgo._internal.testing.T_>, _f:(), _scan:(_r:stdgo._internal.io.Reader, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}):Void`](<#function-_testscan>)

- [`function _testScanInts(_t:stdgo.Ref<stdgo._internal.testing.T_>, _scan:(:stdgo.Ref<stdgo._internal.fmt_test.RecursiveInt>, :stdgo.Ref<stdgo._internal.bytes.Buffer>):stdgo.Error):Void`](<#function-_testscanints>)

- [`function _testScanfMulti(_t:stdgo.Ref<stdgo._internal.testing.T_>, _f:()):Void`](<#function-_testscanfmulti>)

- [`function _verifyInf(_str:stdgo.GoString, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-_verifyinf>)

- [`function _verifyNaN(_str:stdgo.GoString, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-_verifynan>)

- [`function _zeroFill(_prefix:stdgo.GoString, _width:stdgo.GoInt, _suffix:stdgo.GoString):stdgo.GoString`](<#function-_zerofill>)

- [`function benchmarkFprintInt(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkfprintint>)

- [`function benchmarkFprintIntNoAlloc(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkfprintintnoalloc>)

- [`function benchmarkFprintfBytes(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkfprintfbytes>)

- [`function benchmarkManyArgs(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkmanyargs>)

- [`function benchmarkScanInts(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkscanints>)

- [`function benchmarkScanRecursiveInt(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkscanrecursiveint>)

- [`function benchmarkScanRecursiveIntReaderWrapper(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkscanrecursiveintreaderwrapper>)

- [`function benchmarkSprintfBoolean(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksprintfboolean>)

- [`function benchmarkSprintfBytes(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksprintfbytes>)

- [`function benchmarkSprintfComplex(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksprintfcomplex>)

- [`function benchmarkSprintfEmpty(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksprintfempty>)

- [`function benchmarkSprintfFloat(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksprintffloat>)

- [`function benchmarkSprintfHexBytes(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksprintfhexbytes>)

- [`function benchmarkSprintfHexString(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksprintfhexstring>)

- [`function benchmarkSprintfInt(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksprintfint>)

- [`function benchmarkSprintfIntInt(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksprintfintint>)

- [`function benchmarkSprintfPadding(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksprintfpadding>)

- [`function benchmarkSprintfPrefixedInt(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksprintfprefixedint>)

- [`function benchmarkSprintfQuoteString(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksprintfquotestring>)

- [`function benchmarkSprintfSlowParsingPath(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksprintfslowparsingpath>)

- [`function benchmarkSprintfString(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksprintfstring>)

- [`function benchmarkSprintfStringer(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksprintfstringer>)

- [`function benchmarkSprintfStructure(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksprintfstructure>)

- [`function benchmarkSprintfTruncateBytes(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksprintftruncatebytes>)

- [`function benchmarkSprintfTruncateString(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksprintftruncatestring>)

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

- [`function testAppend(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testappend>)

- [`function testAppendf(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testappendf>)

- [`function testAppendln(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testappendln>)

- [`function testBadVerbRecursion(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testbadverbrecursion>)

- [`function testBlank(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testblank>)

- [`function testBlankln(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testblankln>)

- [`function testComplexFormatting(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testcomplexformatting>)

- [`function testCountMallocs(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testcountmallocs>)

- [`function testEOF(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testeof>)

- [`function testEOFAllTypes(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testeofalltypes>)

- [`function testEOFAtEndOfInput(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testeofatendofinput>)

- [`function testEmptyMap(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testemptymap>)

- [`function testErrorf(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testerrorf>)

- [`function testFlagParser(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testflagparser>)

- [`function testFmtInterface(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testfmtinterface>)

- [`function testFormatString(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testformatstring>)

- [`function testFormatterFlags(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testformatterflags>)

- [`function testFormatterPrintln(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testformatterprintln>)

- [`function testHexByte(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testhexbyte>)

- [`function testHexBytes(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testhexbytes>)

- [`function testInf(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testinf>)

- [`function testIsSpace(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testisspace>)

- [`function testLineByLineFscanf(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testlinebylinefscanf>)

- [`function testMapPrinter(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testmapprinter>)

- [`function testMultiLine(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testmultiline>)

- [`function testNaN(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testnan>)

- [`function testNilDoesNotBecomeTyped(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testnildoesnotbecometyped>)

- [`function testPanics(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testpanics>)

- [`function testParsenum(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testparsenum>)

- [`function testReorder(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreorder>)

- [`function testScan(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testscan>)

- [`function testScanEmpty(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testscanempty>)

- [`function testScanInts(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testscanints>)

- [`function testScanMultiple(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testscanmultiple>)

- [`function testScanNewlinesAreSpaces(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testscannewlinesarespaces>)

- [`function testScanNotPointer(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testscannotpointer>)

- [`function testScanOverflow(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testscanoverflow>)

- [`function testScanStateCount(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testscanstatecount>)

- [`function testScanf(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testscanf>)

- [`function testScanfMulti(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testscanfmulti>)

- [`function testScanfNewlineMatchFormat(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testscanfnewlinematchformat>)

- [`function testScanln(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testscanln>)

- [`function testScanlnNewlinesTerminate(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testscanlnnewlinesterminate>)

- [`function testScanlnNoNewline(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testscanlnnonewline>)

- [`function testScanlnWithMiddleNewline(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testscanlnwithmiddlenewline>)

- [`function testSlicePrinter(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testsliceprinter>)

- [`function testSprintf(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testsprintf>)

- [`function testStringer(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-teststringer>)

- [`function testStructPrinter(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-teststructprinter>)

- [`function testUnreadRuneWithBufio(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testunreadrunewithbufio>)

- [`function testWidthAndPrecision(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testwidthandprecision>)

- [`function main():Void`](<#function-main>)

- [class A](<#class-a>)

  - [`function new(?_i:stdgo.GoInt, ?_j:stdgo.GoUInt, ?_s:stdgo.GoString, ?_x:stdgo.Slice<stdgo.GoInt>):Void`](<#a-function-new>)

- [class Address](<#class-address>)

  - [`function new(?city:stdgo.GoString, ?state:stdgo.GoString, ?country:stdgo.GoString):Void`](<#address-function-new>)

- [class Animal](<#class-animal>)

  - [`function new(?name:stdgo.GoString, ?age:stdgo.GoUInt):Void`](<#animal-function-new>)

  - [`function string():stdgo.GoString`](<#animal-function-string>)

- [class B](<#class-b>)

  - [`function new(?i:stdgo._internal.fmt_test.I, ?_j:stdgo.GoInt):Void`](<#b-function-new>)

- [class C](<#class-c>)

  - [`function new(?_i:stdgo.GoInt, ?b:stdgo._internal.fmt_test.B):Void`](<#c-function-new>)

- [class IntString](<#class-intstring>)

  - [`function new(?_i:stdgo.GoInt, ?_s:stdgo.GoString):Void`](<#intstring-function-new>)

  - [`function scan( _state:stdgo._internal.fmt.ScanState, _verb:stdgo.GoRune):stdgo.Error`](<#intstring-function-scan>)

- [class PanicF](<#class-panicf>)

  - [`function new(?_message:stdgo.AnyInterface):Void`](<#panicf-function-new>)

  - [`function format( _f:stdgo._internal.fmt.State, _c:stdgo.GoRune):Void`](<#panicf-function-format>)

- [class PanicGo](<#class-panicgo>)

  - [`function new(?_message:stdgo.AnyInterface):Void`](<#panicgo-function-new>)

  - [`function goString():stdgo.GoString`](<#panicgo-function-gostring>)

- [class PanicS](<#class-panics>)

  - [`function new(?_message:stdgo.AnyInterface):Void`](<#panics-function-new>)

  - [`function string():stdgo.GoString`](<#panics-function-string>)

- [class Person](<#class-person>)

  - [`function new(?name:stdgo.GoString, ?age:stdgo.GoUInt, ?addr:stdgo.Ref<stdgo._internal.fmt_test.Address>):Void`](<#person-function-new>)

  - [`function goString():stdgo.GoString`](<#person-function-gostring>)

- [class Recur](<#class-recur>)

  - [`function new(?_i:stdgo.GoInt, ?_failed:stdgo.Pointer<Bool>):Void`](<#recur-function-new>)

  - [`function string():stdgo.GoString`](<#recur-function-string>)

- [class RecursiveInt](<#class-recursiveint>)

  - [`function new(?_i:stdgo.GoInt, ?_next:stdgo.Ref<stdgo._internal.fmt_test.RecursiveInt>):Void`](<#recursiveint-function-new>)

  - [`function scan( _state:stdgo._internal.fmt.ScanState, _verb:stdgo.GoRune):stdgo.Error`](<#recursiveint-function-scan>)

- [class S](<#class-s>)

  - [`function new(?f:stdgo._internal.fmt_test.F, ?g:stdgo._internal.fmt_test.G):Void`](<#s-function-new>)

- [class SI](<#class-si>)

  - [`function new(?i:stdgo.AnyInterface):Void`](<#si-function-new>)

- [class ScanTest](<#class-scantest>)

  - [`function new(?_text:stdgo.GoString, ?_in:stdgo.AnyInterface, ?_out:stdgo.AnyInterface):Void`](<#scantest-function-new>)

- [class ScanfMultiTest](<#class-scanfmultitest>)

  - [`function new(?_format:stdgo.GoString, ?_text:stdgo.GoString, ?_in:stdgo.Slice<stdgo.AnyInterface>, ?_out:stdgo.Slice<stdgo.AnyInterface>, ?_err:stdgo.GoString):Void`](<#scanfmultitest-function-new>)

- [class ScanfTest](<#class-scanftest>)

  - [`function new(?_format:stdgo.GoString, ?_text:stdgo.GoString, ?_in:stdgo.AnyInterface, ?_out:stdgo.AnyInterface):Void`](<#scanftest-function-new>)

- [class T\_testNilDoesNotBecomeTyped\_\_\_localname\_\_\_A\_55372](<#class-t_testnildoesnotbecometypedlocalnamea_55372>)

  - [`function new():Void`](<#t_testnildoesnotbecometypedlocalnamea_55372-function-new>)

- [class T\_testNilDoesNotBecomeTyped\_\_\_localname\_\_\_B\_55389](<#class-t_testnildoesnotbecometypedlocalnameb_55389>)

  - [`function new():Void`](<#t_testnildoesnotbecometypedlocalnameb_55389-function-new>)

- [class T\_testStructPrinter\_\_\_localname\_\_\_T\_47832](<#class-t_teststructprinterlocalnamet_47832>)

  - [`function new(?_a:stdgo.GoString, ?_b:stdgo.GoString, ?_c:stdgo.GoInt):Void`](<#t_teststructprinterlocalnamet_47832-function-new>)

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
import stdgo._internal.fmt_test.Fmt
```


```haxe
final _appendResult:stdgo.GoString = (("hello world, 23" : stdgo.GoString))
```


```haxe
final _hello:stdgo.GoString = (("hello " : stdgo.GoString))
```


```haxe
final _intCount:stdgo.GoUInt64 = ((800i64 : stdgo.GoUInt64))
```


```haxe
final no:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


# Variables


```haxe
import stdgo._internal.fmt_test.Fmt
```


```haxe
var __1:stdgo._internal.bytes.Buffer
```


```haxe
var __2:stdgo._internal.fmt.State
```


```haxe
var _array:stdgo.GoArray<stdgo.GoInt>
```


```haxe
var _barray:stdgo.GoArray<stdgo._internal.fmt_test.T_renamedUint8>
```


```haxe
var _boolVal:Bool
```


```haxe
var _bslice:stdgo.Slice<stdgo._internal.fmt_test.T_renamedUint8>
```


```haxe
var _byteFormatterSlice:stdgo.Slice<stdgo._internal.fmt_test.T_byteFormatter>
```


```haxe
var _byteStringerSlice:stdgo.Slice<stdgo._internal.fmt_test.T_byteStringer>
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
var _eofTests:stdgo.Slice<stdgo._internal.fmt_test.T__struct_13>
```


```haxe
var _f:stdgo.GoFloat64
```


```haxe
var _flagtests:stdgo.Slice<stdgo._internal.fmt_test.T__struct_5>
```


```haxe
var _float32Val:stdgo.GoFloat32
```


```haxe
var _float64Val:stdgo.GoFloat64
```


```haxe
var _fmtTests:stdgo.Slice<stdgo._internal.fmt_test.T__struct_2>
```


```haxe
var _formatterFlagTests:stdgo.Slice<stdgo._internal.fmt_test.T__struct_9>
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
var _intStringVal:stdgo._internal.fmt_test.IntString
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
var _mallocBuf:stdgo._internal.bytes.Buffer
```


```haxe
var _mallocPointer:stdgo.Pointer<stdgo.GoInt>
```


```haxe
var _mallocTest:stdgo.Slice<stdgo._internal.fmt_test.T__struct_4>
```


```haxe
var _multiTests:stdgo.Slice<stdgo._internal.fmt_test.ScanfMultiTest>
```


```haxe
var _negInf:stdgo.GoFloat64
```


```haxe
var _overflowTests:stdgo.Slice<stdgo._internal.fmt_test.ScanTest>
```


```haxe
var _pValue:stdgo._internal.fmt_test.P
```


```haxe
var _panictests:stdgo.Slice<stdgo._internal.fmt_test.T__struct_8>
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
var _readers:stdgo.Slice<stdgo._internal.fmt_test.T__struct_11>
```


```haxe
var _recurCount:stdgo.GoInt
```


```haxe
var _renamedBoolVal:stdgo._internal.fmt_test.T_renamedBool
```


```haxe
var _renamedBytesVal:stdgo._internal.fmt_test.T_renamedBytes
```


```haxe
var _renamedComplex128Val:stdgo._internal.fmt_test.T_renamedComplex128
```


```haxe
var _renamedComplex64Val:stdgo._internal.fmt_test.T_renamedComplex64
```


```haxe
var _renamedFloat32Val:stdgo._internal.fmt_test.T_renamedFloat32
```


```haxe
var _renamedFloat64Val:stdgo._internal.fmt_test.T_renamedFloat64
```


```haxe
var _renamedInt16Val:stdgo._internal.fmt_test.T_renamedInt16
```


```haxe
var _renamedInt32Val:stdgo._internal.fmt_test.T_renamedInt32
```


```haxe
var _renamedInt64Val:stdgo._internal.fmt_test.T_renamedInt64
```


```haxe
var _renamedInt8Val:stdgo._internal.fmt_test.T_renamedInt8
```


```haxe
var _renamedIntVal:stdgo._internal.fmt_test.T_renamedInt
```


```haxe
var _renamedStringVal:stdgo._internal.fmt_test.T_renamedString
```


```haxe
var _renamedUint16Val:stdgo._internal.fmt_test.T_renamedUint16
```


```haxe
var _renamedUint32Val:stdgo._internal.fmt_test.T_renamedUint32
```


```haxe
var _renamedUint64Val:stdgo._internal.fmt_test.T_renamedUint64
```


```haxe
var _renamedUint8Val:stdgo._internal.fmt_test.T_renamedUint8
```


```haxe
var _renamedUintVal:stdgo._internal.fmt_test.T_renamedUint
```


```haxe
var _renamedUintptrVal:stdgo._internal.fmt_test.T_renamedUintptr
```


```haxe
var _reorderTests:stdgo.Slice<stdgo._internal.fmt_test.T__struct_3>
```


```haxe
var _runeVal:stdgo.GoRune
```


```haxe
var _s:stdgo.GoString
```


```haxe
var _scanTests:stdgo.Slice<stdgo._internal.fmt_test.ScanTest>
```


```haxe
var _scanfTests:stdgo.Slice<stdgo._internal.fmt_test.ScanfTest>
```


```haxe
var _slice:stdgo.Slice<stdgo.GoInt>
```


```haxe
var _startests:stdgo.Slice<stdgo._internal.fmt_test.T__struct_7>
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
var _x:stdgo._internal.fmt_test.Xs
```


```haxe
var _xVal:stdgo._internal.fmt_test.Xs
```


```haxe
var _y:stdgo._internal.fmt_test.Xs
```


```haxe
var _z:stdgo._internal.fmt_test.IntString
```


```haxe
var naN:stdgo.GoFloat64
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
import stdgo._internal.fmt_test.Fmt
```


## function \_args


```haxe
function _args(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo.AnyInterface>
```


[\(view code\)](<./Fmt.hx#L2662>)


## function \_check


```haxe
function _check(_t:stdgo.Ref<stdgo._internal.testing.T_>, _got:stdgo.GoString, _want:stdgo.GoString):Void
```


[\(view code\)](<./Fmt.hx#L3552>)


## function \_hideFromVet


```haxe
function _hideFromVet(_s:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Fmt.hx#L2708>)


## function \_makeInts


```haxe
function _makeInts(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Fmt.hx#L3262>)


## function \_mkState


```haxe
function _mkState(_w:stdgo.GoInt, _p:stdgo.GoInt, _flags:stdgo.GoString):stdgo._internal.fmt_test.T_testState
```


[\(view code\)](<./Fmt.hx#L3518>)


## function \_presentInMap


```haxe
function _presentInMap(_s:stdgo.GoString, _a:stdgo.Slice<stdgo.GoString>, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2569>)


## function \_scanInts


```haxe
function _scanInts(_r:stdgo.Ref<stdgo._internal.fmt_test.RecursiveInt>, _b:stdgo.Ref<stdgo._internal.bytes.Buffer>):stdgo.Error
```


[\(view code\)](<./Fmt.hx#L3235>)


## function \_splitErr


```haxe
function _splitErr(_err:stdgo.Error):stdgo.Slice<stdgo.Error>
```


[\(view code\)](<./Fmt.hx#L2050>)


## function \_testScan


```haxe
function _testScan(_t:stdgo.Ref<stdgo._internal.testing.T_>, _f:(), _scan:(_r:stdgo._internal.io.Reader, _a:haxe.Rest<stdgo.AnyInterface>):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}):Void
```


[\(view code\)](<./Fmt.hx#L2792>)


## function \_testScanInts


```haxe
function _testScanInts(_t:stdgo.Ref<stdgo._internal.testing.T_>, _scan:(:stdgo.Ref<stdgo._internal.fmt_test.RecursiveInt>, :stdgo.Ref<stdgo._internal.bytes.Buffer>):stdgo.Error):Void
```


[\(view code\)](<./Fmt.hx#L3284>)


## function \_testScanfMulti


```haxe
function _testScanfMulti(_t:stdgo.Ref<stdgo._internal.testing.T_>, _f:()):Void
```


[\(view code\)](<./Fmt.hx#L2924>)


## function \_verifyInf


```haxe
function _verifyInf(_str:stdgo.GoString, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2899>)


## function \_verifyNaN


```haxe
function _verifyNaN(_str:stdgo.GoString, _t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2878>)


## function \_zeroFill


```haxe
function _zeroFill(_prefix:stdgo.GoString, _width:stdgo.GoInt, _suffix:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Fmt.hx#L2211>)


## function benchmarkFprintInt


```haxe
function benchmarkFprintInt(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2462>)


## function benchmarkFprintIntNoAlloc


```haxe
function benchmarkFprintIntNoAlloc(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2483>)


## function benchmarkFprintfBytes


```haxe
function benchmarkFprintfBytes(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2472>)


## function benchmarkManyArgs


```haxe
function benchmarkManyArgs(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2453>)


## function benchmarkScanInts


```haxe
function benchmarkScanInts(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L3303>)


## function benchmarkScanRecursiveInt


```haxe
function benchmarkScanRecursiveInt(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L3317>)


## function benchmarkScanRecursiveIntReaderWrapper


```haxe
function benchmarkScanRecursiveIntReaderWrapper(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L3331>)


## function benchmarkSprintfBoolean


```haxe
function benchmarkSprintfBoolean(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2400>)


## function benchmarkSprintfBytes


```haxe
function benchmarkSprintfBytes(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2422>)


## function benchmarkSprintfComplex


```haxe
function benchmarkSprintfComplex(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2393>)


## function benchmarkSprintfEmpty


```haxe
function benchmarkSprintfEmpty(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2322>)


## function benchmarkSprintfFloat


```haxe
function benchmarkSprintfFloat(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2386>)


## function benchmarkSprintfHexBytes


```haxe
function benchmarkSprintfHexBytes(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2414>)


## function benchmarkSprintfHexString


```haxe
function benchmarkSprintfHexString(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2407>)


## function benchmarkSprintfInt


```haxe
function benchmarkSprintfInt(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2365>)


## function benchmarkSprintfIntInt


```haxe
function benchmarkSprintfIntInt(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2372>)


## function benchmarkSprintfPadding


```haxe
function benchmarkSprintfPadding(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2315>)


## function benchmarkSprintfPrefixedInt


```haxe
function benchmarkSprintfPrefixedInt(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2379>)


## function benchmarkSprintfQuoteString


```haxe
function benchmarkSprintfQuoteString(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2358>)


## function benchmarkSprintfSlowParsingPath


```haxe
function benchmarkSprintfSlowParsingPath(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2351>)


## function benchmarkSprintfString


```haxe
function benchmarkSprintfString(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2329>)


## function benchmarkSprintfStringer


```haxe
function benchmarkSprintfStringer(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2430>)


## function benchmarkSprintfStructure


```haxe
function benchmarkSprintfStructure(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2438>)


## function benchmarkSprintfTruncateBytes


```haxe
function benchmarkSprintfTruncateBytes(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2343>)


## function benchmarkSprintfTruncateString


```haxe
function benchmarkSprintfTruncateString(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2336>)


## function exampleErrorf


```haxe
function exampleErrorf():Void
```


[\(view code\)](<./Fmt.hx#L2063>)


## function exampleFprint


```haxe
function exampleFprint():Void
```


[\(view code\)](<./Fmt.hx#L2131>)


## function exampleFprintf


```haxe
function exampleFprintf():Void
```


[\(view code\)](<./Fmt.hx#L2147>)


## function exampleFprintln


```haxe
function exampleFprintln():Void
```


[\(view code\)](<./Fmt.hx#L2139>)


## function exampleFscanf


```haxe
function exampleFscanf():Void
```


[\(view code\)](<./Fmt.hx#L2068>)


## function exampleFscanln


```haxe
function exampleFscanln():Void
```


[\(view code\)](<./Fmt.hx#L2078>)


## function exampleGoStringer


```haxe
function exampleGoStringer():Void
```


[\(view code\)](<./Fmt.hx#L2786>)


## function examplePrint


```haxe
function examplePrint():Void
```


[\(view code\)](<./Fmt.hx#L2104>)


## function examplePrintf


```haxe
function examplePrintf():Void
```


[\(view code\)](<./Fmt.hx#L2112>)


## function examplePrintln


```haxe
function examplePrintln():Void
```


[\(view code\)](<./Fmt.hx#L2108>)


## function exampleSprint


```haxe
function exampleSprint():Void
```


[\(view code\)](<./Fmt.hx#L2116>)


## function exampleSprintf


```haxe
function exampleSprintf():Void
```


[\(view code\)](<./Fmt.hx#L2126>)


## function exampleSprintln


```haxe
function exampleSprintln():Void
```


[\(view code\)](<./Fmt.hx#L2121>)


## function exampleSscanf


```haxe
function exampleSscanf():Void
```


[\(view code\)](<./Fmt.hx#L2095>)


## function exampleStringer


```haxe
function exampleStringer():Void
```


[\(view code\)](<./Fmt.hx#L3548>)


## function example\_formats


```haxe
function example_formats():Void
```


[\(view code\)](<./Fmt.hx#L2162>)


## function example\_printers


```haxe
function example_printers():Void
```


[\(view code\)](<./Fmt.hx#L2155>)


## function testAppend


```haxe
function testAppend(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2764>)


## function testAppendf


```haxe
function testAppendf(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2753>)


## function testAppendln


```haxe
function testAppendln(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2775>)


## function testBadVerbRecursion


```haxe
function testBadVerbRecursion(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2684>)


## function testBlank


```haxe
function testBlank(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2632>)


## function testBlankln


```haxe
function testBlankln(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2639>)


## function testComplexFormatting


```haxe
function testComplexFormatting(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2267>)


## function testCountMallocs


```haxe
function testCountMallocs(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2494>)


## function testEOF


```haxe
function testEOF(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3057>)


## function testEOFAllTypes


```haxe
function testEOFAllTypes(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3118>)


## function testEOFAtEndOfInput


```haxe
function testEOFAtEndOfInput(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3086>)


## function testEmptyMap


```haxe
function testEmptyMap(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2614>)


## function testErrorf


```haxe
function testErrorf(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2010>)


## function testFlagParser


```haxe
function testFlagParser(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2512>)


## function testFmtInterface


```haxe
function testFmtInterface(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2203>)


## function testFormatString


```haxe
function testFormatString(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3539>)


## function testFormatterFlags


```haxe
function testFormatterFlags(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2736>)


## function testFormatterPrintln


```haxe
function testFormatterPrintln(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2646>)


## function testHexByte


```haxe
function testHexByte(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3505>)


## function testHexBytes


```haxe
function testHexBytes(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3345>)


## function testInf


```haxe
function testInf(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2919>)


## function testIsSpace


```haxe
function testIsSpace(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2698>)


## function testLineByLineFscanf


```haxe
function testLineByLineFscanf(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3200>)


## function testMapPrinter


```haxe
function testMapPrinter(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2584>)


## function testMultiLine


```haxe
function testMultiLine(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3157>)


## function testNaN


```haxe
function testNaN(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2894>)


## function testNilDoesNotBecomeTyped


```haxe
function testNilDoesNotBecomeTyped(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2725>)


## function testPanics


```haxe
function testPanics(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2674>)


## function testParsenum


```haxe
function testParsenum(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2744>)


## function testReorder


```haxe
function testReorder(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2307>)


## function testScan


```haxe
function testScan(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2821>)


## function testScanEmpty


```haxe
function testScanEmpty(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2993>)


## function testScanInts


```haxe
function testScanInts(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3273>)


## function testScanMultiple


```haxe
function testScanMultiple(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2965>)


## function testScanNewlinesAreSpaces


```haxe
function testScanNewlinesAreSpaces(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3406>)


## function testScanNotPointer


```haxe
function testScanNotPointer(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3028>)


## function testScanOverflow


```haxe
function testScanOverflow(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2865>)


## function testScanStateCount


```haxe
function testScanStateCount(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3219>)


## function testScanf


```haxe
function testScanf(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2835>)


## function testScanfMulti


```haxe
function testScanfMulti(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2958>)


## function testScanfNewlineMatchFormat


```haxe
function testScanfNewlineMatchFormat(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3435>)


## function testScanln


```haxe
function testScanln(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2828>)


## function testScanlnNewlinesTerminate


```haxe
function testScanlnNewlinesTerminate(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3419>)


## function testScanlnNoNewline


```haxe
function testScanlnNoNewline(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3038>)


## function testScanlnWithMiddleNewline


```haxe
function testScanlnWithMiddleNewline(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3047>)


## function testSlicePrinter


```haxe
function testSlicePrinter(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2553>)


## function testSprintf


```haxe
function testSprintf(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2214>)


## function testStringer


```haxe
function testStringer(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3557>)


## function testStructPrinter


```haxe
function testStructPrinter(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2535>)


## function testUnreadRuneWithBufio


```haxe
function testUnreadRuneWithBufio(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L3134>)


## function testWidthAndPrecision


```haxe
function testWidthAndPrecision(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Fmt.hx#L2666>)


## function main


```haxe
function main():Void
```


[\(view code\)](<./Fmt.hx#L101>)


# Classes


```haxe
import stdgo._internal.fmt_test.*
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
function new(?_i:stdgo.GoInt, ?_j:stdgo.GoUInt, ?_s:stdgo.GoString, ?_x:stdgo.Slice<stdgo.GoInt>):Void
```


[\(view code\)](<./Fmt_test.hx#L1392>)


## class Address


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


[\(view code\)](<./Fmt_test.hx#L1503>)


## class Animal


```haxe
var age:stdgo.GoUInt
```


```haxe
var name:stdgo.GoString
```


### Animal function new


```haxe
function new(?name:stdgo.GoString, ?age:stdgo.GoUInt):Void
```


[\(view code\)](<./Fmt_test.hx#L1644>)


### Animal function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Fmt_test.hx#L3889>)


## class B


```haxe
var _j:stdgo.GoInt
```


```haxe
var i:stdgo._internal.fmt_test.I
```


### B function new


```haxe
function new(?i:stdgo._internal.fmt_test.I, ?_j:stdgo.GoInt):Void
```


[\(view code\)](<./Fmt_test.hx#L1406>)


## class C


```haxe
var _i:stdgo.GoInt
```


```haxe
var b:stdgo._internal.fmt_test.B
```


### C function new


```haxe
function new(?_i:stdgo.GoInt, ?b:stdgo._internal.fmt_test.B):Void
```


[\(view code\)](<./Fmt_test.hx#L1419>)


## class IntString


```haxe
var _i:stdgo.GoInt
```


```haxe
var _s:stdgo.GoString
```


### IntString function new


```haxe
function new(?_i:stdgo.GoInt, ?_s:stdgo.GoString):Void
```


[\(view code\)](<./Fmt_test.hx#L1578>)


### IntString function scan


```haxe
function scan( _state:stdgo._internal.fmt.ScanState, _verb:stdgo.GoRune):stdgo.Error
```


[\(view code\)](<./Fmt_test.hx#L3732>)


## class PanicF


```haxe
var _message:stdgo.AnyInterface
```


### PanicF function new


```haxe
function new(?_message:stdgo.AnyInterface):Void
```


[\(view code\)](<./Fmt_test.hx#L1479>)


### PanicF function format


```haxe
function format( _f:stdgo._internal.fmt.State, _c:stdgo.GoRune):Void
```


[\(view code\)](<./Fmt_test.hx#L3668>)


## class PanicGo


```haxe
var _message:stdgo.AnyInterface
```


### PanicGo function new


```haxe
function new(?_message:stdgo.AnyInterface):Void
```


[\(view code\)](<./Fmt_test.hx#L1469>)


### PanicGo function goString


```haxe
function goString():stdgo.GoString
```


[\(view code\)](<./Fmt_test.hx#L3650>)


## class PanicS


```haxe
var _message:stdgo.AnyInterface
```


### PanicS function new


```haxe
function new(?_message:stdgo.AnyInterface):Void
```


[\(view code\)](<./Fmt_test.hx#L1459>)


### PanicS function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Fmt_test.hx#L3632>)


## class Person


```haxe
var addr:stdgo.Ref<stdgo._internal.fmt_test.Address>
```


```haxe
var age:stdgo.GoUInt
```


```haxe
var name:stdgo.GoString
```


### Person function new


```haxe
function new(?name:stdgo.GoString, ?age:stdgo.GoUInt, ?addr:stdgo.Ref<stdgo._internal.fmt_test.Address>):Void
```


[\(view code\)](<./Fmt_test.hx#L1517>)


### Person function goString


```haxe
function goString():stdgo.GoString
```


[\(view code\)](<./Fmt_test.hx#L3711>)


## class Recur


```haxe
var _failed:stdgo.Pointer<Bool>
```


```haxe
var _i:stdgo.GoInt
```


### Recur function new


```haxe
function new(?_i:stdgo.GoInt, ?_failed:stdgo.Pointer<Bool>):Void
```


[\(view code\)](<./Fmt_test.hx#L1490>)


### Recur function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Fmt_test.hx#L3686>)


## class RecursiveInt


```haxe
var _i:stdgo.GoInt
```


```haxe
var _next:stdgo.Ref<stdgo._internal.fmt_test.RecursiveInt>
```


### RecursiveInt function new


```haxe
function new(?_i:stdgo.GoInt, ?_next:stdgo.Ref<stdgo._internal.fmt_test.RecursiveInt>):Void
```


[\(view code\)](<./Fmt_test.hx#L1614>)


### RecursiveInt function scan


```haxe
function scan( _state:stdgo._internal.fmt.ScanState, _verb:stdgo.GoRune):stdgo.Error
```


[\(view code\)](<./Fmt_test.hx#L3809>)


## class S


```haxe
var f:stdgo._internal.fmt_test.F
```


```haxe
var g:stdgo._internal.fmt_test.G
```


### S function new


```haxe
function new(?f:stdgo._internal.fmt_test.F, ?g:stdgo._internal.fmt_test.G):Void
```


[\(view code\)](<./Fmt_test.hx#L1431>)


## class SI


```haxe
var i:stdgo.AnyInterface
```


### SI function new


```haxe
function new(?i:stdgo.AnyInterface):Void
```


[\(view code\)](<./Fmt_test.hx#L1442>)


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


[\(view code\)](<./Fmt_test.hx#L1531>)


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


[\(view code\)](<./Fmt_test.hx#L1563>)


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


[\(view code\)](<./Fmt_test.hx#L1546>)


## class T\_testNilDoesNotBecomeTyped\_\_\_localname\_\_\_A\_55372


### T\_testNilDoesNotBecomeTyped\_\_\_localname\_\_\_A\_55372 function new


```haxe
function new():Void
```


[\(view code\)](<./Fmt_test.hx#L2712>)


## class T\_testNilDoesNotBecomeTyped\_\_\_localname\_\_\_B\_55389


### T\_testNilDoesNotBecomeTyped\_\_\_localname\_\_\_B\_55389 function new


```haxe
function new():Void
```


[\(view code\)](<./Fmt_test.hx#L2719>)


## class T\_testStructPrinter\_\_\_localname\_\_\_T\_47832


```haxe
var _a:stdgo.GoString
```


```haxe
var _b:stdgo.GoString
```


```haxe
var _c:stdgo.GoInt
```


### T\_testStructPrinter\_\_\_localname\_\_\_T\_47832 function new


```haxe
function new(?_a:stdgo.GoString, ?_b:stdgo.GoString, ?_c:stdgo.GoInt):Void
```


[\(view code\)](<./Fmt_test.hx#L2525>)


# Typedefs


```haxe
import stdgo._internal.fmt_test.*
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
	{<reader> | stdgo._internal.io.Reader | meta:{<m>}};
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
	_val:stdgo._internal.fmt_test.SE;
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


