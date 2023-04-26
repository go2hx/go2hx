# Module: `stdgo.fmt`

[(view library index)](../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

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

- [`function testAppend(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testappend>)

- [`function testAppendf(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testappendf>)

- [`function testAppendln(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testappendln>)

- [`function testBadVerbRecursion(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testbadverbrecursion>)

- [`function testBlank(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testblank>)

- [`function testBlankln(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testblankln>)

- [`function testComplexFormatting(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcomplexformatting>)

- [`function testCountMallocs(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcountmallocs>)

- [`function testEOF(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testeof>)

- [`function testEOFAllTypes(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testeofalltypes>)

- [`function testEOFAtEndOfInput(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testeofatendofinput>)

- [`function testEmptyMap(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testemptymap>)

- [`function testErrorf(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testerrorf>)

- [`function testFlagParser(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testflagparser>)

- [`function testFmtInterface(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testfmtinterface>)

- [`function testFormatString(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testformatstring>)

- [`function testFormatterFlags(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testformatterflags>)

- [`function testFormatterPrintln(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testformatterprintln>)

- [`function testHexByte(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testhexbyte>)

- [`function testHexBytes(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testhexbytes>)

- [`function testInf(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testinf>)

- [`function testIsSpace(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testisspace>)

- [`function testLineByLineFscanf(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testlinebylinefscanf>)

- [`function testMapPrinter(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testmapprinter>)

- [`function testMultiLine(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testmultiline>)

- [`function testNaN(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testnan>)

- [`function testNilDoesNotBecomeTyped(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testnildoesnotbecometyped>)

- [`function testPanics(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testpanics>)

- [`function testParsenum(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testparsenum>)

- [`function testReorder(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreorder>)

- [`function testScan(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testscan>)

- [`function testScanEmpty(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testscanempty>)

- [`function testScanInts(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testscanints>)

- [`function testScanMultiple(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testscanmultiple>)

- [`function testScanNewlinesAreSpaces(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testscannewlinesarespaces>)

- [`function testScanNotPointer(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testscannotpointer>)

- [`function testScanOverflow(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testscanoverflow>)

- [`function testScanStateCount(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testscanstatecount>)

- [`function testScanf(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testscanf>)

- [`function testScanfMulti(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testscanfmulti>)

- [`function testScanfNewlineMatchFormat(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testscanfnewlinematchformat>)

- [`function testScanln(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testscanln>)

- [`function testScanlnNewlinesTerminate(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testscanlnnewlinesterminate>)

- [`function testScanlnNoNewline(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testscanlnnonewline>)

- [`function testScanlnWithMiddleNewline(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testscanlnwithmiddlenewline>)

- [`function testSlicePrinter(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testsliceprinter>)

- [`function testSprintf(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testsprintf>)

- [`function testStringer(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-teststringer>)

- [`function testStructPrinter(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-teststructprinter>)

- [`function testUnreadRuneWithBufio(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testunreadrunewithbufio>)

- [`function testWidthAndPrecision(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testwidthandprecision>)

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

- [class T\_testNilDoesNotBecomeTyped\_0\_\_\_localname\_\_\_A](<#class-t_testnildoesnotbecometyped_0localnamea>)

  - [`function new():Void`](<#t_testnildoesnotbecometyped_0localnamea-function-new>)

- [class T\_testNilDoesNotBecomeTyped\_1\_\_\_localname\_\_\_B](<#class-t_testnildoesnotbecometyped_1localnameb>)

  - [`function new():Void`](<#t_testnildoesnotbecometyped_1localnameb-function-new>)

- [class T\_testStructPrinter\_0\_\_\_localname\_\_\_T](<#class-t_teststructprinter_0localnamet>)

  - [`function new(?_a:stdgo.GoString, ?_b:stdgo.GoString, ?_c:Null<stdgo.GoInt>):Void`](<#t_teststructprinter_0localnamet-function-new>)

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

- [typedef TwoLines](<#typedef-twolines>)

- [typedef Xs](<#typedef-xs>)

# Constants


```haxe
import stdgo.fmt_test.Fmt
```


```haxe
final no:stdgo.GoUInt64 = ((0i64 : GoUInt64))
```


# Variables


```haxe
import stdgo.fmt_test.Fmt
```


```haxe
var naN:stdgo.GoFloat64
```


```haxe
var _:Bool
```


# Functions


```haxe
import stdgo.fmt_test.Fmt
```


## function benchmarkFprintInt


```haxe
function benchmarkFprintInt(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L3087>)


## function benchmarkFprintIntNoAlloc


```haxe
function benchmarkFprintIntNoAlloc(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L3108>)


## function benchmarkFprintfBytes


```haxe
function benchmarkFprintfBytes(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L3097>)


## function benchmarkManyArgs


```haxe
function benchmarkManyArgs(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L3078>)


## function benchmarkScanInts


```haxe
function benchmarkScanInts(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L3990>)


## function benchmarkScanRecursiveInt


```haxe
function benchmarkScanRecursiveInt(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L4004>)


## function benchmarkScanRecursiveIntReaderWrapper


```haxe
function benchmarkScanRecursiveIntReaderWrapper(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L4018>)


## function benchmarkSprintfBoolean


```haxe
function benchmarkSprintfBoolean(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L3026>)


## function benchmarkSprintfBytes


```haxe
function benchmarkSprintfBytes(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L3048>)


## function benchmarkSprintfComplex


```haxe
function benchmarkSprintfComplex(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L3019>)


## function benchmarkSprintfEmpty


```haxe
function benchmarkSprintfEmpty(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2948>)


## function benchmarkSprintfFloat


```haxe
function benchmarkSprintfFloat(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L3012>)


## function benchmarkSprintfHexBytes


```haxe
function benchmarkSprintfHexBytes(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L3040>)


## function benchmarkSprintfHexString


```haxe
function benchmarkSprintfHexString(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L3033>)


## function benchmarkSprintfInt


```haxe
function benchmarkSprintfInt(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2991>)


## function benchmarkSprintfIntInt


```haxe
function benchmarkSprintfIntInt(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2998>)


## function benchmarkSprintfPadding


```haxe
function benchmarkSprintfPadding(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2941>)


## function benchmarkSprintfPrefixedInt


```haxe
function benchmarkSprintfPrefixedInt(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L3005>)


## function benchmarkSprintfQuoteString


```haxe
function benchmarkSprintfQuoteString(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2984>)


## function benchmarkSprintfSlowParsingPath


```haxe
function benchmarkSprintfSlowParsingPath(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2977>)


## function benchmarkSprintfString


```haxe
function benchmarkSprintfString(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2955>)


## function benchmarkSprintfStringer


```haxe
function benchmarkSprintfStringer(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L3056>)


## function benchmarkSprintfStructure


```haxe
function benchmarkSprintfStructure(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L3064>)


## function benchmarkSprintfTruncateBytes


```haxe
function benchmarkSprintfTruncateBytes(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2969>)


## function benchmarkSprintfTruncateString


```haxe
function benchmarkSprintfTruncateString(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Fmt.hx#L2962>)


## function exampleErrorf


```haxe
function exampleErrorf():Void
```



The Errorf function lets us use formatting features
to create descriptive error messages.  

[\(view code\)](<./Fmt.hx#L2663>)


## function exampleFprint


```haxe
function exampleFprint():Void
```


[\(view code\)](<./Fmt.hx#L2731>)


## function exampleFprintf


```haxe
function exampleFprintf():Void
```


[\(view code\)](<./Fmt.hx#L2747>)


## function exampleFprintln


```haxe
function exampleFprintln():Void
```


[\(view code\)](<./Fmt.hx#L2739>)


## function exampleFscanf


```haxe
function exampleFscanf():Void
```


[\(view code\)](<./Fmt.hx#L2668>)


## function exampleFscanln


```haxe
function exampleFscanln():Void
```


[\(view code\)](<./Fmt.hx#L2678>)


## function exampleGoStringer


```haxe
function exampleGoStringer():Void
```


[\(view code\)](<./Fmt.hx#L3438>)


## function examplePrint


```haxe
function examplePrint():Void
```


[\(view code\)](<./Fmt.hx#L2704>)


## function examplePrintf


```haxe
function examplePrintf():Void
```


[\(view code\)](<./Fmt.hx#L2712>)


## function examplePrintln


```haxe
function examplePrintln():Void
```


[\(view code\)](<./Fmt.hx#L2708>)


## function exampleSprint


```haxe
function exampleSprint():Void
```


[\(view code\)](<./Fmt.hx#L2716>)


## function exampleSprintf


```haxe
function exampleSprintf():Void
```


[\(view code\)](<./Fmt.hx#L2726>)


## function exampleSprintln


```haxe
function exampleSprintln():Void
```


[\(view code\)](<./Fmt.hx#L2721>)


## function exampleSscanf


```haxe
function exampleSscanf():Void
```


[\(view code\)](<./Fmt.hx#L2695>)


## function exampleStringer


```haxe
function exampleStringer():Void
```


[\(view code\)](<./Fmt.hx#L4252>)


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

[\(view code\)](<./Fmt.hx#L2781>)


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

[\(view code\)](<./Fmt.hx#L2763>)


## function testAppend


```haxe
function testAppend(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L3416>)


## function testAppendf


```haxe
function testAppendf(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L3405>)


## function testAppendln


```haxe
function testAppendln(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L3427>)


## function testBadVerbRecursion


```haxe
function testBadVerbRecursion(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L3326>)


## function testBlank


```haxe
function testBlank(_t:stdgo.Ref<stdgo.testing.T>):Void
```



TestBlank checks that Sprint \(and hence Print, Fprint\) puts spaces in the
right places, that is, between arg pairs in which neither is a string.  

[\(view code\)](<./Fmt.hx#L3267>)


## function testBlankln


```haxe
function testBlankln(_t:stdgo.Ref<stdgo.testing.T>):Void
```



TestBlankln checks that Sprintln \(and hence Println, Fprintln\) puts spaces in
the right places, that is, between all arg pairs.  

[\(view code\)](<./Fmt.hx#L3278>)


## function testComplexFormatting


```haxe
function testComplexFormatting(_t:stdgo.Ref<stdgo.testing.T>):Void
```



TestComplexFormatting checks that a complex always formats to the same
thing as if done by hand with two singleton prints.  

[\(view code\)](<./Fmt.hx#L2893>)


## function testCountMallocs


```haxe
function testCountMallocs(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L3119>)


## function testEOF


```haxe
function testEOF(_t:stdgo.Ref<stdgo.testing.T>):Void
```



TestEOF verifies that when we scan, we see at most EOF once per call to a
Scan function, and then only when it's really an EOF.  

[\(view code\)](<./Fmt.hx#L3727>)


## function testEOFAllTypes


```haxe
function testEOFAllTypes(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L3792>)


## function testEOFAtEndOfInput


```haxe
function testEOFAtEndOfInput(_t:stdgo.Ref<stdgo.testing.T>):Void
```



TestEOFAtEndOfInput verifies that we see an EOF error if we run out of input.
This was a buglet: we used to get "expected integer".  

[\(view code\)](<./Fmt.hx#L3760>)


## function testEmptyMap


```haxe
function testEmptyMap(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L3246>)


## function testErrorf


```haxe
function testErrorf(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L2604>)


## function testFlagParser


```haxe
function testFlagParser(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L3137>)


## function testFmtInterface


```haxe
function testFmtInterface(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L2821>)


## function testFormatString


```haxe
function testFormatString(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L4231>)


## function testFormatterFlags


```haxe
function testFormatterFlags(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L3388>)


## function testFormatterPrintln


```haxe
function testFormatterPrintln(_t:stdgo.Ref<stdgo.testing.T>):Void
```



TestFormatterPrintln checks Formatter with Sprint, Sprintln, Sprintf.  

[\(view code\)](<./Fmt.hx#L3288>)


## function testHexByte


```haxe
function testHexByte(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L4198>)


## function testHexBytes


```haxe
function testHexBytes(_t:stdgo.Ref<stdgo.testing.T>):Void
```



Issue 9124.
%x on bytes couldn't handle non\-space bytes terminating the scan.  

[\(view code\)](<./Fmt.hx#L4036>)


## function testInf


```haxe
function testInf(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L3571>)


## function testIsSpace


```haxe
function testIsSpace(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L3340>)


## function testLineByLineFscanf


```haxe
function testLineByLineFscanf(_t:stdgo.Ref<stdgo.testing.T>):Void
```



TestLineByLineFscanf tests that Fscanf does not read past newline. Issue
3481.  

[\(view code\)](<./Fmt.hx#L3882>)


## function testMapPrinter


```haxe
function testMapPrinter(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L3218>)


## function testMultiLine


```haxe
function testMultiLine(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L3835>)


## function testNaN


```haxe
function testNaN(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L3546>)


## function testNilDoesNotBecomeTyped


```haxe
function testNilDoesNotBecomeTyped(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L3377>)


## function testPanics


```haxe
function testPanics(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L3316>)


## function testParsenum


```haxe
function testParsenum(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L3396>)


## function testReorder


```haxe
function testReorder(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L2933>)


## function testScan


```haxe
function testScan(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L3473>)


## function testScanEmpty


```haxe
function testScanEmpty(_t:stdgo.Ref<stdgo.testing.T>):Void
```



Empty strings are not valid input when scanning a string.  

[\(view code\)](<./Fmt.hx#L3659>)


## function testScanInts


```haxe
function testScanInts(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L3960>)


## function testScanMultiple


```haxe
function testScanMultiple(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L3628>)


## function testScanNewlinesAreSpaces


```haxe
function testScanNewlinesAreSpaces(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L4097>)


## function testScanNotPointer


```haxe
function testScanNotPointer(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L3694>)


## function testScanOverflow


```haxe
function testScanOverflow(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L3517>)


## function testScanStateCount


```haxe
function testScanStateCount(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L3901>)


## function testScanf


```haxe
function testScanf(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L3487>)


## function testScanfMulti


```haxe
function testScanfMulti(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L3621>)


## function testScanfNewlineMatchFormat


```haxe
function testScanfNewlineMatchFormat(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L4126>)


## function testScanln


```haxe
function testScanln(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L3480>)


## function testScanlnNewlinesTerminate


```haxe
function testScanlnNewlinesTerminate(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L4110>)


## function testScanlnNoNewline


```haxe
function testScanlnNoNewline(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L3704>)


## function testScanlnWithMiddleNewline


```haxe
function testScanlnWithMiddleNewline(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L3713>)


## function testSlicePrinter


```haxe
function testSlicePrinter(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L3183>)


## function testSprintf


```haxe
function testSprintf(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L2836>)


## function testStringer


```haxe
function testStringer(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L4261>)


## function testStructPrinter


```haxe
function testStructPrinter(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L3165>)


## function testUnreadRuneWithBufio


```haxe
function testUnreadRuneWithBufio(_t:stdgo.Ref<stdgo.testing.T>):Void
```



TestUnreadRuneWithBufio verifies that, at least when using bufio, successive
calls to Fscan do not lose runes.  

[\(view code\)](<./Fmt.hx#L3812>)


## function testWidthAndPrecision


```haxe
function testWidthAndPrecision(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Fmt.hx#L3308>)


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


[\(view code\)](<./Fmt_test.hx#L1877>)


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


[\(view code\)](<./Fmt_test.hx#L2038>)


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


[\(view code\)](<./Fmt_test.hx#L2232>)


### Animal function string


```haxe
function string():stdgo.GoString
```



String makes Animal satisfy the Stringer interface.  

[\(view code\)](<./Fmt_test.hx#L4611>)


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


[\(view code\)](<./Fmt_test.hx#L1896>)


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


[\(view code\)](<./Fmt_test.hx#L1914>)


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


[\(view code\)](<./Fmt_test.hx#L2139>)


### IntString function scan


```haxe
function scan( _state:stdgo.fmt.ScanState, _verb:stdgo.GoRune):stdgo.Error
```


[\(view code\)](<./Fmt_test.hx#L4456>)


## class PanicF



PanicF is a type that panics in Format.  

```haxe
var _message:stdgo.AnyInterface
```


### PanicF function new


```haxe
function new(?_message:stdgo.AnyInterface):Void
```


[\(view code\)](<./Fmt_test.hx#L2004>)


### PanicF function format


```haxe
function format( _f:stdgo.fmt.State, _c:stdgo.GoRune):Void
```



Value receiver.  

[\(view code\)](<./Fmt_test.hx#L4387>)


## class PanicGo



PanicGo is a type that panics in GoString.  

```haxe
var _message:stdgo.AnyInterface
```


### PanicGo function new


```haxe
function new(?_message:stdgo.AnyInterface):Void
```


[\(view code\)](<./Fmt_test.hx#L1989>)


### PanicGo function goString


```haxe
function goString():stdgo.GoString
```



Value receiver.  

[\(view code\)](<./Fmt_test.hx#L4364>)


## class PanicS



PanicS is a type that panics in String.  

```haxe
var _message:stdgo.AnyInterface
```


### PanicS function new


```haxe
function new(?_message:stdgo.AnyInterface):Void
```


[\(view code\)](<./Fmt_test.hx#L1974>)


### PanicS function string


```haxe
function string():stdgo.GoString
```



Value receiver.  

[\(view code\)](<./Fmt_test.hx#L4341>)


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


[\(view code\)](<./Fmt_test.hx#L2057>)


### Person function goString


```haxe
function goString():stdgo.GoString
```



GoString makes Person satisfy the GoStringer interface.
The return value is valid Go code that can be used to reproduce the Person struct.  

[\(view code\)](<./Fmt_test.hx#L4436>)


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


[\(view code\)](<./Fmt_test.hx#L2020>)


### Recur function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Fmt_test.hx#L4404>)


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


[\(view code\)](<./Fmt_test.hx#L2192>)


### RecursiveInt function scan


```haxe
function scan( _state:stdgo.fmt.ScanState, _verb:stdgo.GoRune):stdgo.Error
```


[\(view code\)](<./Fmt_test.hx#L4530>)


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


[\(view code\)](<./Fmt_test.hx#L1931>)


## class SI


```haxe
var i:stdgo.AnyInterface
```


### SI function new


```haxe
function new(?i:stdgo.AnyInterface):Void
```


[\(view code\)](<./Fmt_test.hx#L1947>)


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


[\(view code\)](<./Fmt_test.hx#L2076>)


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


[\(view code\)](<./Fmt_test.hx#L2118>)


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


[\(view code\)](<./Fmt_test.hx#L2096>)


## class T\_testNilDoesNotBecomeTyped\_0\_\_\_localname\_\_\_A


### T\_testNilDoesNotBecomeTyped\_0\_\_\_localname\_\_\_A function new


```haxe
function new():Void
```


[\(view code\)](<./Fmt_test.hx#L3359>)


## class T\_testNilDoesNotBecomeTyped\_1\_\_\_localname\_\_\_B


### T\_testNilDoesNotBecomeTyped\_1\_\_\_localname\_\_\_B function new


```haxe
function new():Void
```


[\(view code\)](<./Fmt_test.hx#L3371>)


## class T\_testStructPrinter\_0\_\_\_localname\_\_\_T


```haxe
var _a:stdgo.GoString
```


```haxe
var _b:stdgo.GoString
```


```haxe
var _c:stdgo.GoInt
```


### T\_testStructPrinter\_0\_\_\_localname\_\_\_T function new


```haxe
function new(?_a:stdgo.GoString, ?_b:stdgo.GoString, ?_c:Null<stdgo.GoInt>):Void
```


[\(view code\)](<./Fmt_test.hx#L3155>)


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


## typedef TwoLines


```haxe
typedef TwoLines = stdgo.GoString;
```


## typedef Xs


```haxe
typedef Xs = stdgo.GoString;
```



Xs accepts any non\-empty run of the verb character  

