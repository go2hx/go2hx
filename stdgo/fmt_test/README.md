# Module: `stdgo.fmt`

[(view library index)](../stdgo.md)


# Overview


 


# Index


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

- [class A\_testNilDoesNotBecomeTyped\_0](<#class-a_testnildoesnotbecometyped_0>)

  - [`function new():Void`](<#a_testnildoesnotbecometyped_0-function-new>)

- [class Address](<#class-address>)

  - [`function new(?city:stdgo.GoString, ?state:stdgo.GoString, ?country:stdgo.GoString):Void`](<#address-function-new>)

- [class Animal](<#class-animal>)

  - [`function new(?name:stdgo.GoString, ?age:Null<stdgo.GoUInt>):Void`](<#animal-function-new>)

  - [`function string():stdgo.GoString`](<#animal-function-string>)

- [class Animal\_static\_extension](<#class-animal_static_extension>)

  - [`function string():stdgo.GoString`](<#animal_static_extension-function-string>)

- [class B](<#class-b>)

  - [`function new(?i:Null<stdgo.fmt_test.I>, ?_j:Null<stdgo.GoInt>):Void`](<#b-function-new>)

- [class B\_testNilDoesNotBecomeTyped\_1](<#class-b_testnildoesnotbecometyped_1>)

  - [`function new():Void`](<#b_testnildoesnotbecometyped_1-function-new>)

- [class C](<#class-c>)

  - [`function new(?_i:Null<stdgo.GoInt>, ?b:stdgo.fmt_test.B):Void`](<#c-function-new>)

- [class C\_static\_extension](<#class-c_static_extension>)

- [class F\_static\_extension](<#class-f_static_extension>)

  - [`function format(_f:stdgo.fmt_test.F, _s:stdgo.fmt.State, _c:stdgo.GoRune):Void`](<#f_static_extension-function-format>)

- [class G\_static\_extension](<#class-g_static_extension>)

  - [`function goString():stdgo.GoString`](<#g_static_extension-function-gostring>)

- [class I\_static\_extension](<#class-i_static_extension>)

  - [`function string():stdgo.GoString`](<#i_static_extension-function-string>)

- [class IntString](<#class-intstring>)

  - [`function new(?_i:Null<stdgo.GoInt>, ?_s:stdgo.GoString):Void`](<#intstring-function-new>)

  - [`function scan( _state:stdgo.fmt.ScanState, _verb:stdgo.GoRune):stdgo.Error`](<#intstring-function-scan>)

- [class IntString\_static\_extension](<#class-intstring_static_extension>)

  - [`function scan( _state:stdgo.fmt.ScanState, _verb:stdgo.GoRune):stdgo.Error`](<#intstring_static_extension-function-scan>)

- [class P\_static\_extension](<#class-p_static_extension>)

  - [`function string( _p:stdgo.Pointer<stdgo.fmt_test.P>):stdgo.GoString`](<#p_static_extension-function-string>)

- [class PanicF](<#class-panicf>)

  - [`function new(?_message:stdgo.AnyInterface):Void`](<#panicf-function-new>)

  - [`function format( _f:stdgo.fmt.State, _c:stdgo.GoRune):Void`](<#panicf-function-format>)

- [class PanicF\_static\_extension](<#class-panicf_static_extension>)

  - [`function format( _f:stdgo.fmt.State, _c:stdgo.GoRune):Void`](<#panicf_static_extension-function-format>)

- [class PanicGo](<#class-panicgo>)

  - [`function new(?_message:stdgo.AnyInterface):Void`](<#panicgo-function-new>)

  - [`function goString():stdgo.GoString`](<#panicgo-function-gostring>)

- [class PanicGo\_static\_extension](<#class-panicgo_static_extension>)

  - [`function goString():stdgo.GoString`](<#panicgo_static_extension-function-gostring>)

- [class PanicS](<#class-panics>)

  - [`function new(?_message:stdgo.AnyInterface):Void`](<#panics-function-new>)

  - [`function string():stdgo.GoString`](<#panics-function-string>)

- [class PanicS\_static\_extension](<#class-panics_static_extension>)

  - [`function string():stdgo.GoString`](<#panics_static_extension-function-string>)

- [class Person](<#class-person>)

  - [`function new(?name:stdgo.GoString, ?age:Null<stdgo.GoUInt>, ?addr:stdgo.Ref<stdgo.fmt_test.Address>):Void`](<#person-function-new>)

  - [`function goString():stdgo.GoString`](<#person-function-gostring>)

- [class Person\_static\_extension](<#class-person_static_extension>)

  - [`function goString():stdgo.GoString`](<#person_static_extension-function-gostring>)

- [class Recur](<#class-recur>)

  - [`function new(?_i:Null<stdgo.GoInt>, ?_failed:stdgo.Pointer<Bool>):Void`](<#recur-function-new>)

  - [`function string():stdgo.GoString`](<#recur-function-string>)

- [class Recur\_static\_extension](<#class-recur_static_extension>)

  - [`function string():stdgo.GoString`](<#recur_static_extension-function-string>)

- [class RecursiveInt](<#class-recursiveint>)

  - [`function new(?_i:Null<stdgo.GoInt>, ?_next:stdgo.Ref<stdgo.fmt_test.RecursiveInt>):Void`](<#recursiveint-function-new>)

  - [`function scan( _state:stdgo.fmt.ScanState, _verb:stdgo.GoRune):stdgo.Error`](<#recursiveint-function-scan>)

- [class RecursiveInt\_static\_extension](<#class-recursiveint_static_extension>)

  - [`function scan( _state:stdgo.fmt.ScanState, _verb:stdgo.GoRune):stdgo.Error`](<#recursiveint_static_extension-function-scan>)

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

- [class TB\_static\_extension](<#class-tb_static_extension>)

  - [`function string():stdgo.GoString`](<#tb_static_extension-function-string>)

- [class TF32\_static\_extension](<#class-tf32_static_extension>)

  - [`function string():stdgo.GoString`](<#tf32_static_extension-function-string>)

- [class TF64\_static\_extension](<#class-tf64_static_extension>)

  - [`function string():stdgo.GoString`](<#tf64_static_extension-function-string>)

- [class TF\_static\_extension](<#class-tf_static_extension>)

  - [`function string():stdgo.GoString`](<#tf_static_extension-function-string>)

- [class TI16\_static\_extension](<#class-ti16_static_extension>)

  - [`function string():stdgo.GoString`](<#ti16_static_extension-function-string>)

- [class TI32\_static\_extension](<#class-ti32_static_extension>)

  - [`function string():stdgo.GoString`](<#ti32_static_extension-function-string>)

- [class TI64\_static\_extension](<#class-ti64_static_extension>)

  - [`function string():stdgo.GoString`](<#ti64_static_extension-function-string>)

- [class TI8\_static\_extension](<#class-ti8_static_extension>)

  - [`function string():stdgo.GoString`](<#ti8_static_extension-function-string>)

- [class TI\_static\_extension](<#class-ti_static_extension>)

  - [`function string():stdgo.GoString`](<#ti_static_extension-function-string>)

- [class TS\_static\_extension](<#class-ts_static_extension>)

  - [`function string():stdgo.GoString`](<#ts_static_extension-function-string>)

- [class TU16\_static\_extension](<#class-tu16_static_extension>)

  - [`function string():stdgo.GoString`](<#tu16_static_extension-function-string>)

- [class TU32\_static\_extension](<#class-tu32_static_extension>)

  - [`function string():stdgo.GoString`](<#tu32_static_extension-function-string>)

- [class TU64\_static\_extension](<#class-tu64_static_extension>)

  - [`function string():stdgo.GoString`](<#tu64_static_extension-function-string>)

- [class TU8\_static\_extension](<#class-tu8_static_extension>)

  - [`function string():stdgo.GoString`](<#tu8_static_extension-function-string>)

- [class TUI\_static\_extension](<#class-tui_static_extension>)

  - [`function string():stdgo.GoString`](<#tui_static_extension-function-string>)

- [class TU\_static\_extension](<#class-tu_static_extension>)

  - [`function string():stdgo.GoString`](<#tu_static_extension-function-string>)

- [class T\_\_struct\_0\_static\_extension](<#class-t__struct_0_static_extension>)

- [class T\_\_struct\_10\_static\_extension](<#class-t__struct_10_static_extension>)

- [class T\_\_struct\_11\_static\_extension](<#class-t__struct_11_static_extension>)

- [class T\_\_struct\_12\_static\_extension](<#class-t__struct_12_static_extension>)

  - [`function read(__self__:stdgo.fmt_test._Fmt_test.T__struct_12, __0:stdgo.Slice<stdgo.GoUInt8>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t__struct_12_static_extension-function-read>)

- [class T\_\_struct\_13\_static\_extension](<#class-t__struct_13_static_extension>)

- [class T\_\_struct\_14\_static\_extension](<#class-t__struct_14_static_extension>)

- [class T\_\_struct\_15\_static\_extension](<#class-t__struct_15_static_extension>)

- [class T\_\_struct\_16\_static\_extension](<#class-t__struct_16_static_extension>)

- [class T\_\_struct\_1\_static\_extension](<#class-t__struct_1_static_extension>)

- [class T\_\_struct\_2\_static\_extension](<#class-t__struct_2_static_extension>)

- [class T\_\_struct\_3\_static\_extension](<#class-t__struct_3_static_extension>)

- [class T\_\_struct\_4\_static\_extension](<#class-t__struct_4_static_extension>)

- [class T\_\_struct\_5\_static\_extension](<#class-t__struct_5_static_extension>)

- [class T\_\_struct\_6\_static\_extension](<#class-t__struct_6_static_extension>)

- [class T\_\_struct\_7\_static\_extension](<#class-t__struct_7_static_extension>)

- [class T\_\_struct\_8\_static\_extension](<#class-t__struct_8_static_extension>)

- [class T\_\_struct\_9\_static\_extension](<#class-t__struct_9_static_extension>)

- [class T\_byteFormatter\_static\_extension](<#class-t_byteformatter_static_extension>)

  - [`function format(_:stdgo.fmt_test._Fmt_test.T_byteFormatter, _f:stdgo.fmt.State, _0:stdgo.GoRune):Void`](<#t_byteformatter_static_extension-function-format>)

- [class T\_byteStringer\_static\_extension](<#class-t_bytestringer_static_extension>)

  - [`function string(_:stdgo.fmt_test._Fmt_test.T_byteStringer):stdgo.GoString`](<#t_bytestringer_static_extension-function-string>)

- [class T\_eofCounter\_static\_extension](<#class-t_eofcounter_static_extension>)

  - [`function read(_ec:stdgo.Ref<stdgo.fmt_test._Fmt_test.T_eofCounter>, _b:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}`](<#t_eofcounter_static_extension-function-read>)

- [class T\_errString\_static\_extension](<#class-t_errstring_static_extension>)

  - [`function error(_e:stdgo.fmt_test._Fmt_test.T_errString):stdgo.GoString`](<#t_errstring_static_extension-function-error>)

- [class T\_flagPrinter\_static\_extension](<#class-t_flagprinter_static_extension>)

  - [`function format(_:stdgo.fmt_test._Fmt_test.T_flagPrinter, _f:stdgo.fmt.State, _c:stdgo.GoRune):Void`](<#t_flagprinter_static_extension-function-format>)

- [class T\_hexBytes\_static\_extension](<#class-t_hexbytes_static_extension>)

  - [`function scan(_h:stdgo.Ref<stdgo.fmt_test._Fmt_test.T_hexBytes>, _ss:stdgo.fmt.ScanState, _verb:stdgo.GoRune):stdgo.Error`](<#t_hexbytes_static_extension-function-scan>)

- [class T\_runeScanner\_static\_extension](<#class-t_runescanner_static_extension>)

  - [`function scan(_rs:stdgo.Ref<stdgo.fmt_test._Fmt_test.T_runeScanner>, _state:stdgo.fmt.ScanState, _verb:stdgo.GoRune):stdgo.Error`](<#t_runescanner_static_extension-function-scan>)

- [class T\_testStructPrinter\_0](<#class-t_teststructprinter_0>)

  - [`function new(?_a:stdgo.GoString, ?_b:stdgo.GoString, ?_c:Null<stdgo.GoInt>):Void`](<#t_teststructprinter_0-function-new>)

- [class T\_writeStringFormatter\_static\_extension](<#class-t_writestringformatter_static_extension>)

  - [`function format(_sf:stdgo.fmt_test._Fmt_test.T_writeStringFormatter, _f:stdgo.fmt.State, _c:stdgo.GoRune):Void`](<#t_writestringformatter_static_extension-function-format>)

- [class TwoLines\_static\_extension](<#class-twolines_static_extension>)

  - [`function scan( _t:stdgo.Pointer<stdgo.fmt_test.TwoLines>, _state:stdgo.fmt.ScanState, _verb:stdgo.GoRune):stdgo.Error`](<#twolines_static_extension-function-scan>)

- [class Xs\_static\_extension](<#class-xs_static_extension>)

  - [`function scan( _x:stdgo.Pointer<stdgo.fmt_test.Xs>, _state:stdgo.fmt.ScanState, _verb:stdgo.GoRune):stdgo.Error`](<#xs_static_extension-function-scan>)

- [typedef F](<#typedef-f>)

  - [`function format( _f:stdgo.fmt.State, _c:stdgo.GoRune):Void`](<#f-function-format>)

- [typedef G](<#typedef-g>)

  - [`function goString():stdgo.GoString`](<#g-function-gostring>)

- [typedef I](<#typedef-i>)

  - [`function string():stdgo.GoString`](<#i-function-string>)

- [typedef P](<#typedef-p>)

  - [`function string( _p:stdgo.Pointer<stdgo.fmt_test.P>):stdgo.GoString`](<#p-function-string>)

- [typedef SE](<#typedef-se>)

- [typedef TB](<#typedef-tb>)

  - [`function string():stdgo.GoString`](<#tb-function-string>)

- [typedef TF](<#typedef-tf>)

  - [`function string():stdgo.GoString`](<#tf-function-string>)

- [typedef TF32](<#typedef-tf32>)

  - [`function string():stdgo.GoString`](<#tf32-function-string>)

- [typedef TF64](<#typedef-tf64>)

  - [`function string():stdgo.GoString`](<#tf64-function-string>)

- [typedef TI](<#typedef-ti>)

  - [`function string():stdgo.GoString`](<#ti-function-string>)

- [typedef TI16](<#typedef-ti16>)

  - [`function string():stdgo.GoString`](<#ti16-function-string>)

- [typedef TI32](<#typedef-ti32>)

  - [`function string():stdgo.GoString`](<#ti32-function-string>)

- [typedef TI64](<#typedef-ti64>)

  - [`function string():stdgo.GoString`](<#ti64-function-string>)

- [typedef TI8](<#typedef-ti8>)

  - [`function string():stdgo.GoString`](<#ti8-function-string>)

- [typedef TS](<#typedef-ts>)

  - [`function string():stdgo.GoString`](<#ts-function-string>)

- [typedef TU](<#typedef-tu>)

  - [`function string():stdgo.GoString`](<#tu-function-string>)

- [typedef TU16](<#typedef-tu16>)

  - [`function string():stdgo.GoString`](<#tu16-function-string>)

- [typedef TU32](<#typedef-tu32>)

  - [`function string():stdgo.GoString`](<#tu32-function-string>)

- [typedef TU64](<#typedef-tu64>)

  - [`function string():stdgo.GoString`](<#tu64-function-string>)

- [typedef TU8](<#typedef-tu8>)

  - [`function string():stdgo.GoString`](<#tu8-function-string>)

- [typedef TUI](<#typedef-tui>)

  - [`function string():stdgo.GoString`](<#tui-function-string>)

- [typedef TwoLines](<#typedef-twolines>)

  - [`function scan( _t:stdgo.Pointer<stdgo.fmt_test.TwoLines>, _state:stdgo.fmt.ScanState, _verb:stdgo.GoRune):stdgo.Error`](<#twolines-function-scan>)

- [typedef Xs](<#typedef-xs>)

  - [`function scan( _x:stdgo.Pointer<stdgo.fmt_test.Xs>, _state:stdgo.fmt.ScanState, _verb:stdgo.GoRune):stdgo.Error`](<#xs-function-scan>)

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


 


[\(view code\)](<./Fmt.hx#L3504>)


## function benchmarkFprintIntNoAlloc


```haxe
function benchmarkFprintIntNoAlloc(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Fmt.hx#L3527>)


## function benchmarkFprintfBytes


```haxe
function benchmarkFprintfBytes(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Fmt.hx#L3515>)


## function benchmarkManyArgs


```haxe
function benchmarkManyArgs(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Fmt.hx#L3492>)


## function benchmarkScanInts


```haxe
function benchmarkScanInts(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Fmt.hx#L4586>)


## function benchmarkScanRecursiveInt


```haxe
function benchmarkScanRecursiveInt(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Fmt.hx#L4601>)


## function benchmarkScanRecursiveIntReaderWrapper


```haxe
function benchmarkScanRecursiveIntReaderWrapper(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Fmt.hx#L4616>)


## function benchmarkSprintfBoolean


```haxe
function benchmarkSprintfBoolean(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Fmt.hx#L3433>)


## function benchmarkSprintfBytes


```haxe
function benchmarkSprintfBytes(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Fmt.hx#L3458>)


## function benchmarkSprintfComplex


```haxe
function benchmarkSprintfComplex(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Fmt.hx#L3425>)


## function benchmarkSprintfEmpty


```haxe
function benchmarkSprintfEmpty(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Fmt.hx#L3344>)


## function benchmarkSprintfFloat


```haxe
function benchmarkSprintfFloat(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Fmt.hx#L3417>)


## function benchmarkSprintfHexBytes


```haxe
function benchmarkSprintfHexBytes(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Fmt.hx#L3449>)


## function benchmarkSprintfHexString


```haxe
function benchmarkSprintfHexString(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Fmt.hx#L3441>)


## function benchmarkSprintfInt


```haxe
function benchmarkSprintfInt(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Fmt.hx#L3393>)


## function benchmarkSprintfIntInt


```haxe
function benchmarkSprintfIntInt(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Fmt.hx#L3401>)


## function benchmarkSprintfPadding


```haxe
function benchmarkSprintfPadding(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Fmt.hx#L3336>)


## function benchmarkSprintfPrefixedInt


```haxe
function benchmarkSprintfPrefixedInt(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Fmt.hx#L3409>)


## function benchmarkSprintfQuoteString


```haxe
function benchmarkSprintfQuoteString(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Fmt.hx#L3385>)


## function benchmarkSprintfSlowParsingPath


```haxe
function benchmarkSprintfSlowParsingPath(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Fmt.hx#L3377>)


## function benchmarkSprintfString


```haxe
function benchmarkSprintfString(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Fmt.hx#L3352>)


## function benchmarkSprintfStringer


```haxe
function benchmarkSprintfStringer(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Fmt.hx#L3467>)


## function benchmarkSprintfStructure


```haxe
function benchmarkSprintfStructure(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Fmt.hx#L3476>)


## function benchmarkSprintfTruncateBytes


```haxe
function benchmarkSprintfTruncateBytes(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Fmt.hx#L3368>)


## function benchmarkSprintfTruncateString


```haxe
function benchmarkSprintfTruncateString(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Fmt.hx#L3360>)


## function exampleErrorf


```haxe
function exampleErrorf():Void
```


The Errorf function lets us use formatting features  to create descriptive error messages. 


[\(view code\)](<./Fmt.hx#L2990>)


## function exampleFprint


```haxe
function exampleFprint():Void
```


 


[\(view code\)](<./Fmt.hx#L3086>)


## function exampleFprintf


```haxe
function exampleFprintf():Void
```


 


[\(view code\)](<./Fmt.hx#L3110>)


## function exampleFprintln


```haxe
function exampleFprintln():Void
```


 


[\(view code\)](<./Fmt.hx#L3098>)


## function exampleFscanf


```haxe
function exampleFscanf():Void
```


 


[\(view code\)](<./Fmt.hx#L2996>)


## function exampleFscanln


```haxe
function exampleFscanln():Void
```


 


[\(view code\)](<./Fmt.hx#L3015>)


## function exampleGoStringer


```haxe
function exampleGoStringer():Void
```


 


[\(view code\)](<./Fmt.hx#L3932>)


## function examplePrint


```haxe
function examplePrint():Void
```


 


[\(view code\)](<./Fmt.hx#L3049>)


## function examplePrintf


```haxe
function examplePrintf():Void
```


 


[\(view code\)](<./Fmt.hx#L3061>)


## function examplePrintln


```haxe
function examplePrintln():Void
```


 


[\(view code\)](<./Fmt.hx#L3055>)


## function exampleSprint


```haxe
function exampleSprint():Void
```


 


[\(view code\)](<./Fmt.hx#L3066>)


## function exampleSprintf


```haxe
function exampleSprintf():Void
```


 


[\(view code\)](<./Fmt.hx#L3080>)


## function exampleSprintln


```haxe
function exampleSprintln():Void
```


 


[\(view code\)](<./Fmt.hx#L3073>)


## function exampleSscanf


```haxe
function exampleSscanf():Void
```


 


[\(view code\)](<./Fmt.hx#L3036>)


## function exampleStringer


```haxe
function exampleStringer():Void
```


 


[\(view code\)](<./Fmt.hx#L5062>)


## function example\_formats


```haxe
function example_formats():Void
```


These examples demonstrate the basics of printing using a format string. Printf,  Sprintf, and Fprintf all take a format string that specifies how to format the  subsequent arguments. For example, %d \(we call that a 'verb'\) says to print the  corresponding argument, which must be an integer \(or something containing an  integer, such as a slice of ints\) in decimal. The verb %v \('v' for 'value'\)  always formats the argument in its default form, just how Print or Println would  show it. The special verb %T \('T' for 'Type'\) prints the type of the argument  rather than its value. The examples are not exhaustive; see the package comment  for all the details. 


[\(view code\)](<./Fmt.hx#L3154>)


## function example\_printers


```haxe
function example_printers():Void
```


Print, Println, and Printf lay out their arguments differently. In this example  we can compare their behaviors. Println always adds blanks between the items it  prints, while Print adds blanks only between non\-string arguments and Printf  does exactly what it is told.  Sprint, Sprintln, Sprintf, Fprint, Fprintln, and Fprintf behave the same as  their corresponding Print, Println, and Printf functions shown here. 


[\(view code\)](<./Fmt.hx#L3130>)


## function testAppend


```haxe
function testAppend(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L3908>)


## function testAppendf


```haxe
function testAppendf(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L3896>)


## function testAppendln


```haxe
function testAppendln(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L3920>)


## function testBadVerbRecursion


```haxe
function testBadVerbRecursion(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L3763>)


## function testBlank


```haxe
function testBlank(_t:stdgo.Ref<stdgo.testing.T>):Void
```


TestBlank checks that Sprint \(and hence Print, Fprint\) puts spaces in the  right places, that is, between arg pairs in which neither is a string. 


[\(view code\)](<./Fmt.hx#L3698>)


## function testBlankln


```haxe
function testBlankln(_t:stdgo.Ref<stdgo.testing.T>):Void
```


TestBlankln checks that Sprintln \(and hence Println, Fprintln\) puts spaces in  the right places, that is, between all arg pairs. 


[\(view code\)](<./Fmt.hx#L3711>)


## function testComplexFormatting


```haxe
function testComplexFormatting(_t:stdgo.Ref<stdgo.testing.T>):Void
```


TestComplexFormatting checks that a complex always formats to the same  thing as if done by hand with two singleton prints. 


[\(view code\)](<./Fmt.hx#L3284>)


## function testCountMallocs


```haxe
function testCountMallocs(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L3539>)


## function testEOF


```haxe
function testEOF(_t:stdgo.Ref<stdgo.testing.T>):Void
```


TestEOF verifies that when we scan, we see at most EOF once per call to a  Scan function, and then only when it's really an EOF. 


[\(view code\)](<./Fmt.hx#L4276>)


## function testEOFAllTypes


```haxe
function testEOFAllTypes(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L4351>)


## function testEOFAtEndOfInput


```haxe
function testEOFAtEndOfInput(_t:stdgo.Ref<stdgo.testing.T>):Void
```


TestEOFAtEndOfInput verifies that we see an EOF error if we run out of input.  This was a buglet: we used to get "expected integer". 


[\(view code\)](<./Fmt.hx#L4313>)


## function testEmptyMap


```haxe
function testEmptyMap(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L3678>)


## function testErrorf


```haxe
function testErrorf(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L2932>)


## function testFlagParser


```haxe
function testFlagParser(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L3561>)


## function testFmtInterface


```haxe
function testFmtInterface(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L3205>)


## function testFormatterFlags


```haxe
function testFormatterFlags(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L3830>)


## function testFormatterPrintln


```haxe
function testFormatterPrintln(_t:stdgo.Ref<stdgo.testing.T>):Void
```


TestFormatterPrintln checks Formatter with Sprint, Sprintln, Sprintf. 


[\(view code\)](<./Fmt.hx#L3723>)


## function testHexByte


```haxe
function testHexByte(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L5046>)


## function testHexBytes


```haxe
function testHexBytes(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Issue 9124.  %x on bytes couldn't handle non\-space bytes terminating the scan. 


[\(view code\)](<./Fmt.hx#L4635>)


## function testInf


```haxe
function testInf(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L4095>)


## function testIsSpace


```haxe
function testIsSpace(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L3778>)


## function testLineByLineFscanf


```haxe
function testLineByLineFscanf(_t:stdgo.Ref<stdgo.testing.T>):Void
```


TestLineByLineFscanf tests that Fscanf does not read past newline. Issue  3481. 


[\(view code\)](<./Fmt.hx#L4454>)


## function testMapPrinter


```haxe
function testMapPrinter(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L3652>)


## function testMultiLine


```haxe
function testMultiLine(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L4404>)


## function testNaN


```haxe
function testNaN(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L4063>)


## function testNilDoesNotBecomeTyped


```haxe
function testNilDoesNotBecomeTyped(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L3816>)


## function testPanics


```haxe
function testPanics(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L3754>)


## function testParsenum


```haxe
function testParsenum(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L3839>)


## function testReorder


```haxe
function testReorder(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L3326>)


## function testScan


```haxe
function testScan(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L3975>)


## function testScanEmpty


```haxe
function testScanEmpty(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Empty strings are not valid input when scanning a string. 


[\(view code\)](<./Fmt.hx#L4190>)


## function testScanInts


```haxe
function testScanInts(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L4554>)


## function testScanMultiple


```haxe
function testScanMultiple(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L4156>)


## function testScanNewlinesAreSpaces


```haxe
function testScanNewlinesAreSpaces(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L4704>)


## function testScanNotPointer


```haxe
function testScanNotPointer(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L4231>)


## function testScanOverflow


```haxe
function testScanOverflow(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L4026>)


## function testScanStateCount


```haxe
function testScanStateCount(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L4479>)


## function testScanf


```haxe
function testScanf(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L3991>)


## function testScanfMulti


```haxe
function testScanfMulti(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L4148>)


## function testScanfNewlineMatchFormat


```haxe
function testScanfNewlineMatchFormat(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L4771>)


## function testScanln


```haxe
function testScanln(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L3983>)


## function testScanlnNewlinesTerminate


```haxe
function testScanlnNewlinesTerminate(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L4728>)


## function testScanlnNoNewline


```haxe
function testScanlnNoNewline(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L4244>)


## function testScanlnWithMiddleNewline


```haxe
function testScanlnWithMiddleNewline(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L4256>)


## function testSlicePrinter


```haxe
function testSlicePrinter(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L3615>)


## function testSprintf


```haxe
function testSprintf(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L3222>)


## function testStringer


```haxe
function testStringer(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L5073>)


## function testStructPrinter


```haxe
function testStructPrinter(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L3593>)


## function testUnreadRuneWithBufio


```haxe
function testUnreadRuneWithBufio(_t:stdgo.Ref<stdgo.testing.T>):Void
```


TestUnreadRuneWithBufio verifies that, at least when using bufio, successive  calls to Fscan do not lose runes. 


[\(view code\)](<./Fmt.hx#L4378>)


## function testWidthAndPrecision


```haxe
function testWidthAndPrecision(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Fmt.hx#L3745>)


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


 


[\(view code\)](<./Fmt_test.hx#L2058>)


## class A\_testNilDoesNotBecomeTyped\_0


 


### A\_testNilDoesNotBecomeTyped\_0 function new


```haxe
function new():Void
```


 


[\(view code\)](<./Fmt_test.hx#L3795>)


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


 


[\(view code\)](<./Fmt_test.hx#L2246>)


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


 


[\(view code\)](<./Fmt_test.hx#L2461>)


### Animal function string


```haxe
function string():stdgo.GoString
```


String makes Animal satisfy the Stringer interface. 


[\(view code\)](<./Fmt_test.hx#L5511>)


## class Animal\_static\_extension


 


### Animal\_static\_extension function string


```haxe
function string():stdgo.GoString
```


String makes Animal satisfy the Stringer interface. 


[\(view code\)](<./Fmt_test.hx#L5511>)


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


 


[\(view code\)](<./Fmt_test.hx#L2081>)


## class B\_testNilDoesNotBecomeTyped\_1


 


### B\_testNilDoesNotBecomeTyped\_1 function new


```haxe
function new():Void
```


 


[\(view code\)](<./Fmt_test.hx#L3806>)


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


 


[\(view code\)](<./Fmt_test.hx#L2101>)


## class C\_static\_extension


 


## class F\_static\_extension


 


### F\_static\_extension function format


```haxe
function format(_f:stdgo.fmt_test.F, _s:stdgo.fmt.State, _c:stdgo.GoRune):Void
```


 


[\(view code\)](<./Fmt_test.hx#L5589>)


## class G\_static\_extension


 


### G\_static\_extension function goString


```haxe
function goString():stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L5615>)


## class I\_static\_extension


 


### I\_static\_extension function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L5563>)


## class IntString


IntString accepts an integer followed immediately by a string.  It tests the embedding of a scan within a scan. 


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


 


[\(view code\)](<./Fmt_test.hx#L2371>)


### IntString function scan


```haxe
function scan( _state:stdgo.fmt.ScanState, _verb:stdgo.GoRune):stdgo.Error
```


 


[\(view code\)](<./Fmt_test.hx#L5351>)


## class IntString\_static\_extension


 


### IntString\_static\_extension function scan


```haxe
function scan( _state:stdgo.fmt.ScanState, _verb:stdgo.GoRune):stdgo.Error
```


 


[\(view code\)](<./Fmt_test.hx#L5351>)


## class P\_static\_extension


 


### P\_static\_extension function string


```haxe
function string( _p:stdgo.Pointer<stdgo.fmt_test.P>):stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L5643>)


## class PanicF


PanicF is a type that panics in Format. 


```haxe
var _message:stdgo.AnyInterface
```


### PanicF function new


```haxe
function new(?_message:stdgo.AnyInterface):Void
```


 


[\(view code\)](<./Fmt_test.hx#L2206>)


### PanicF function format


```haxe
function format( _f:stdgo.fmt.State, _c:stdgo.GoRune):Void
```


Value receiver. 


[\(view code\)](<./Fmt_test.hx#L5254>)


## class PanicF\_static\_extension


 


### PanicF\_static\_extension function format


```haxe
function format( _f:stdgo.fmt.State, _c:stdgo.GoRune):Void
```


Value receiver. 


[\(view code\)](<./Fmt_test.hx#L5254>)


## class PanicGo


PanicGo is a type that panics in GoString. 


```haxe
var _message:stdgo.AnyInterface
```


### PanicGo function new


```haxe
function new(?_message:stdgo.AnyInterface):Void
```


 


[\(view code\)](<./Fmt_test.hx#L2187>)


### PanicGo function goString


```haxe
function goString():stdgo.GoString
```


Value receiver. 


[\(view code\)](<./Fmt_test.hx#L5222>)


## class PanicGo\_static\_extension


 


### PanicGo\_static\_extension function goString


```haxe
function goString():stdgo.GoString
```


Value receiver. 


[\(view code\)](<./Fmt_test.hx#L5222>)


## class PanicS


PanicS is a type that panics in String. 


```haxe
var _message:stdgo.AnyInterface
```


### PanicS function new


```haxe
function new(?_message:stdgo.AnyInterface):Void
```


 


[\(view code\)](<./Fmt_test.hx#L2168>)


### PanicS function string


```haxe
function string():stdgo.GoString
```


Value receiver. 


[\(view code\)](<./Fmt_test.hx#L5190>)


## class PanicS\_static\_extension


 


### PanicS\_static\_extension function string


```haxe
function string():stdgo.GoString
```


Value receiver. 


[\(view code\)](<./Fmt_test.hx#L5190>)


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


 


[\(view code\)](<./Fmt_test.hx#L2271>)


### Person function goString


```haxe
function goString():stdgo.GoString
```


GoString makes Person satisfy the GoStringer interface.   The return value is valid Go code that can be used to reproduce the Person struct. 


[\(view code\)](<./Fmt_test.hx#L5321>)


## class Person\_static\_extension


 


### Person\_static\_extension function goString


```haxe
function goString():stdgo.GoString
```


GoString makes Person satisfy the GoStringer interface.   The return value is valid Go code that can be used to reproduce the Person struct. 


[\(view code\)](<./Fmt_test.hx#L5321>)


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


 


[\(view code\)](<./Fmt_test.hx#L2223>)


### Recur function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L5280>)


## class Recur\_static\_extension


 


### Recur\_static\_extension function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L5280>)


## class RecursiveInt


RecursiveInt accepts a string matching %d.%d.%d....  and parses it into a linked list.  It allows us to benchmark recursive descent style scanners. 


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


 


[\(view code\)](<./Fmt_test.hx#L2439>)


### RecursiveInt function scan


```haxe
function scan( _state:stdgo.fmt.ScanState, _verb:stdgo.GoRune):stdgo.Error
```


 


[\(view code\)](<./Fmt_test.hx#L5459>)


## class RecursiveInt\_static\_extension


 


### RecursiveInt\_static\_extension function scan


```haxe
function scan( _state:stdgo.fmt.ScanState, _verb:stdgo.GoRune):stdgo.Error
```


 


[\(view code\)](<./Fmt_test.hx#L5459>)


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


 


[\(view code\)](<./Fmt_test.hx#L2120>)


## class SI


 


```haxe
var i:stdgo.AnyInterface
```


### SI function new


```haxe
function new(?i:stdgo.AnyInterface):Void
```


 


[\(view code\)](<./Fmt_test.hx#L2138>)


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


 


[\(view code\)](<./Fmt_test.hx#L2293>)


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


 


[\(view code\)](<./Fmt_test.hx#L2342>)


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


 


[\(view code\)](<./Fmt_test.hx#L2316>)


## class TB\_static\_extension


 


### TB\_static\_extension function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L6247>)


## class TF32\_static\_extension


 


### TF32\_static\_extension function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L6195>)


## class TF64\_static\_extension


 


### TF64\_static\_extension function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L6221>)


## class TF\_static\_extension


 


### TF\_static\_extension function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L6169>)


## class TI16\_static\_extension


 


### TI16\_static\_extension function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L5935>)


## class TI32\_static\_extension


 


### TI32\_static\_extension function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L5961>)


## class TI64\_static\_extension


 


### TI64\_static\_extension function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L5987>)


## class TI8\_static\_extension


 


### TI8\_static\_extension function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L5909>)


## class TI\_static\_extension


 


### TI\_static\_extension function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L5883>)


## class TS\_static\_extension


 


### TS\_static\_extension function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L6273>)


## class TU16\_static\_extension


 


### TU16\_static\_extension function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L6065>)


## class TU32\_static\_extension


 


### TU32\_static\_extension function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L6091>)


## class TU64\_static\_extension


 


### TU64\_static\_extension function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L6117>)


## class TU8\_static\_extension


 


### TU8\_static\_extension function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L6039>)


## class TUI\_static\_extension


 


### TUI\_static\_extension function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L6143>)


## class TU\_static\_extension


 


### TU\_static\_extension function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L6013>)


## class T\_\_struct\_0\_static\_extension


 


## class T\_\_struct\_10\_static\_extension


 


## class T\_\_struct\_11\_static\_extension


 


## class T\_\_struct\_12\_static\_extension


 


### T\_\_struct\_12\_static\_extension function read


```haxe
function read(__self__:stdgo.fmt_test._Fmt_test.T__struct_12, __0:stdgo.Slice<stdgo.GoUInt8>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Fmt_test.hx#L2773>)


## class T\_\_struct\_13\_static\_extension


 


## class T\_\_struct\_14\_static\_extension


 


## class T\_\_struct\_15\_static\_extension


 


## class T\_\_struct\_16\_static\_extension


 


## class T\_\_struct\_1\_static\_extension


 


## class T\_\_struct\_2\_static\_extension


 


## class T\_\_struct\_3\_static\_extension


 


## class T\_\_struct\_4\_static\_extension


 


## class T\_\_struct\_5\_static\_extension


 


## class T\_\_struct\_6\_static\_extension


 


## class T\_\_struct\_7\_static\_extension


 


## class T\_\_struct\_8\_static\_extension


 


## class T\_\_struct\_9\_static\_extension


 


## class T\_byteFormatter\_static\_extension


 


### T\_byteFormatter\_static\_extension function format


```haxe
function format(_:stdgo.fmt_test._Fmt_test.T_byteFormatter, _f:stdgo.fmt.State, _0:stdgo.GoRune):Void
```


 


[\(view code\)](<./Fmt_test.hx#L5695>)


## class T\_byteStringer\_static\_extension


 


### T\_byteStringer\_static\_extension function string


```haxe
function string(_:stdgo.fmt_test._Fmt_test.T_byteStringer):stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L5669>)


## class T\_eofCounter\_static\_extension


 


### T\_eofCounter\_static\_extension function read


```haxe
function read(_ec:stdgo.Ref<stdgo.fmt_test._Fmt_test.T_eofCounter>, _b:stdgo.Slice<stdgo.GoByte>):{_1:stdgo.Error, _0:stdgo.GoInt}
```


 


[\(view code\)](<./Fmt_test.hx#L5392>)


## class T\_errString\_static\_extension


 


### T\_errString\_static\_extension function error


```haxe
function error(_e:stdgo.fmt_test._Fmt_test.T_errString):stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L5537>)


## class T\_flagPrinter\_static\_extension


 


### T\_flagPrinter\_static\_extension function format


```haxe
function format(_:stdgo.fmt_test._Fmt_test.T_flagPrinter, _f:stdgo.fmt.State, _c:stdgo.GoRune):Void
```


 


[\(view code\)](<./Fmt_test.hx#L5132>)


## class T\_hexBytes\_static\_extension


 


### T\_hexBytes\_static\_extension function scan


```haxe
function scan(_h:stdgo.Ref<stdgo.fmt_test._Fmt_test.T_hexBytes>, _ss:stdgo.fmt.ScanState, _verb:stdgo.GoRune):stdgo.Error
```


 


[\(view code\)](<./Fmt_test.hx#L5849>)


## class T\_runeScanner\_static\_extension


 


### T\_runeScanner\_static\_extension function scan


```haxe
function scan(_rs:stdgo.Ref<stdgo.fmt_test._Fmt_test.T_runeScanner>, _state:stdgo.fmt.ScanState, _verb:stdgo.GoRune):stdgo.Error
```


 


[\(view code\)](<./Fmt_test.hx#L5427>)


## class T\_testStructPrinter\_0


 


```haxe
var _a:stdgo.GoString
```


```haxe
var _b:stdgo.GoString
```


```haxe
var _c:stdgo.GoInt
```


### T\_testStructPrinter\_0 function new


```haxe
function new(?_a:stdgo.GoString, ?_b:stdgo.GoString, ?_c:Null<stdgo.GoInt>):Void
```


 


[\(view code\)](<./Fmt_test.hx#L3576>)


## class T\_writeStringFormatter\_static\_extension


 


### T\_writeStringFormatter\_static\_extension function format


```haxe
function format(_sf:stdgo.fmt_test._Fmt_test.T_writeStringFormatter, _f:stdgo.fmt.State, _c:stdgo.GoRune):Void
```


 


[\(view code\)](<./Fmt_test.hx#L5721>)


## class TwoLines\_static\_extension


 


### TwoLines\_static\_extension function scan


```haxe
function scan( _t:stdgo.Pointer<stdgo.fmt_test.TwoLines>, _state:stdgo.fmt.ScanState, _verb:stdgo.GoRune):stdgo.Error
```


Scan attempts to read two lines into the object. Scanln should prevent this   because it stops at newline; Scan and Scanf should be fine. 


[\(view code\)](<./Fmt_test.hx#L5805>)


## class Xs\_static\_extension


 


### Xs\_static\_extension function scan


```haxe
function scan( _x:stdgo.Pointer<stdgo.fmt_test.Xs>, _state:stdgo.fmt.ScanState, _verb:stdgo.GoRune):stdgo.Error
```


 


[\(view code\)](<./Fmt_test.hx#L5758>)


# Typedefs


```haxe
import stdgo.fmt_test.*
```


## typedef F


```haxe
typedef F = var t:{<>}
```


 


### F function format


```haxe
function format( _f:stdgo.fmt.State, _c:stdgo.GoRune):Void
```


Value receiver. 


[\(view code\)](<./Fmt_test.hx#L5254>)


## typedef G


```haxe
typedef G = var t:{<>}
```


 


### G function goString


```haxe
function goString():stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L5615>)


## typedef I


```haxe
typedef I = var t:{<>}
```


 


### I function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L5563>)


## typedef P


```haxe
typedef P = var t:{<>}
```


P is a type with a String method with pointer receiver for testing %p. 


### P function string


```haxe
function string( _p:stdgo.Pointer<stdgo.fmt_test.P>):stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L5643>)


## typedef SE


```haxe
typedef SE = var x:stdgo.AnyInterface
```


 


## typedef TB


```haxe
typedef TB = var x:{<>}
```


 


### TB function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L6247>)


## typedef TF


```haxe
typedef TF = var x:{<>}
```


 


### TF function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L6169>)


## typedef TF32


```haxe
typedef TF32 = var x:{<>}
```


 


### TF32 function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L6195>)


## typedef TF64


```haxe
typedef TF64 = var x:{<>}
```


 


### TF64 function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L6221>)


## typedef TI


```haxe
typedef TI = var t:{<>}
```


 


### TI function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L5883>)


## typedef TI16


```haxe
typedef TI16 = var x:{<>}
```


 


### TI16 function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L5935>)


## typedef TI32


```haxe
typedef TI32 = var x:{<>}
```


 


### TI32 function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L5961>)


## typedef TI64


```haxe
typedef TI64 = var x:{<>}
```


 


### TI64 function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L5987>)


## typedef TI8


```haxe
typedef TI8 = var x:{<>}
```


 


### TI8 function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L5909>)


## typedef TS


```haxe
typedef TS = var x:{<>}
```


 


### TS function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L6273>)


## typedef TU


```haxe
typedef TU = var t:{<>}
```


 


### TU function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L6013>)


## typedef TU16


```haxe
typedef TU16 = var x:{<>}
```


 


### TU16 function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L6065>)


## typedef TU32


```haxe
typedef TU32 = var x:{<>}
```


 


### TU32 function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L6091>)


## typedef TU64


```haxe
typedef TU64 = var x:{<>}
```


 


### TU64 function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L6117>)


## typedef TU8


```haxe
typedef TU8 = var x:{<>}
```


 


### TU8 function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L6039>)


## typedef TUI


```haxe
typedef TUI = var x:{<>}
```


 


### TUI function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Fmt_test.hx#L6143>)


## typedef TwoLines


```haxe
typedef TwoLines = var x:{<>}
```


 


### TwoLines function scan


```haxe
function scan( _t:stdgo.Pointer<stdgo.fmt_test.TwoLines>, _state:stdgo.fmt.ScanState, _verb:stdgo.GoRune):stdgo.Error
```


Scan attempts to read two lines into the object. Scanln should prevent this   because it stops at newline; Scan and Scanf should be fine. 


[\(view code\)](<./Fmt_test.hx#L5805>)


## typedef Xs


```haxe
typedef Xs = var x:{<>}
```


Xs accepts any non\-empty run of the verb character 


### Xs function scan


```haxe
function scan( _x:stdgo.Pointer<stdgo.fmt_test.Xs>, _state:stdgo.fmt.ScanState, _verb:stdgo.GoRune):stdgo.Error
```


 


[\(view code\)](<./Fmt_test.hx#L5758>)


