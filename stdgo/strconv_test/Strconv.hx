package stdgo.strconv_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
import stdgo.strconv.Strconv;
/**
    
    
    
**/
private var _tests = (new Slice<stdgo.testing.Testing.InternalTest>(
56,
56,
(new stdgo.testing.Testing.InternalTest(("TestParseBool" : GoString), stdgo.strconv_test.Strconv_test.testParseBool) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFormatBool" : GoString), stdgo.strconv_test.Strconv_test.testFormatBool) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAppendBool" : GoString), stdgo.strconv_test.Strconv_test.testAppendBool) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseComplex" : GoString), stdgo.strconv_test.Strconv_test.testParseComplex) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseComplexIncorrectBitSize" : GoString), stdgo.strconv_test.Strconv_test.testParseComplexIncorrectBitSize) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseFloatPrefix" : GoString), stdgo.strconv_test.Strconv_test.testParseFloatPrefix) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAtof" : GoString), stdgo.strconv_test.Strconv_test.testAtof) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAtofSlow" : GoString), stdgo.strconv_test.Strconv_test.testAtofSlow) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAtofRandom" : GoString), stdgo.strconv_test.Strconv_test.testAtofRandom) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRoundTrip" : GoString), stdgo.strconv_test.Strconv_test.testRoundTrip) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRoundTrip32" : GoString), stdgo.strconv_test.Strconv_test.testRoundTrip32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseFloatIncorrectBitSize" : GoString), stdgo.strconv_test.Strconv_test.testParseFloatIncorrectBitSize) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseUint32" : GoString), stdgo.strconv_test.Strconv_test.testParseUint32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseUint64" : GoString), stdgo.strconv_test.Strconv_test.testParseUint64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseUint64Base" : GoString), stdgo.strconv_test.Strconv_test.testParseUint64Base) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseInt32" : GoString), stdgo.strconv_test.Strconv_test.testParseInt32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseInt64" : GoString), stdgo.strconv_test.Strconv_test.testParseInt64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseInt64Base" : GoString), stdgo.strconv_test.Strconv_test.testParseInt64Base) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseUint" : GoString), stdgo.strconv_test.Strconv_test.testParseUint) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseInt" : GoString), stdgo.strconv_test.Strconv_test.testParseInt) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAtoi" : GoString), stdgo.strconv_test.Strconv_test.testAtoi) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseIntBitSize" : GoString), stdgo.strconv_test.Strconv_test.testParseIntBitSize) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseUintBitSize" : GoString), stdgo.strconv_test.Strconv_test.testParseUintBitSize) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseIntBase" : GoString), stdgo.strconv_test.Strconv_test.testParseIntBase) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseUintBase" : GoString), stdgo.strconv_test.Strconv_test.testParseUintBase) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNumError" : GoString), stdgo.strconv_test.Strconv_test.testNumError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNumErrorUnwrap" : GoString), stdgo.strconv_test.Strconv_test.testNumErrorUnwrap) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFormatComplex" : GoString), stdgo.strconv_test.Strconv_test.testFormatComplex) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFormatComplexInvalidBitSize" : GoString), stdgo.strconv_test.Strconv_test.testFormatComplexInvalidBitSize) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecimalShift" : GoString), stdgo.strconv_test.Strconv_test.testDecimalShift) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecimalRound" : GoString), stdgo.strconv_test.Strconv_test.testDecimalRound) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecimalRoundedInteger" : GoString), stdgo.strconv_test.Strconv_test.testDecimalRoundedInteger) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFp" : GoString), stdgo.strconv_test.Strconv_test.testFp) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFtoa" : GoString), stdgo.strconv_test.Strconv_test.testFtoa) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFtoaPowersOfTwo" : GoString), stdgo.strconv_test.Strconv_test.testFtoaPowersOfTwo) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFtoaRandom" : GoString), stdgo.strconv_test.Strconv_test.testFtoaRandom) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFormatFloatInvalidBitSize" : GoString), stdgo.strconv_test.Strconv_test.testFormatFloatInvalidBitSize) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMulByLog2Log10" : GoString), stdgo.strconv_test.Strconv_test.testMulByLog2Log10) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMulByLog10Log2" : GoString), stdgo.strconv_test.Strconv_test.testMulByLog10Log2) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestItoa" : GoString), stdgo.strconv_test.Strconv_test.testItoa) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUitoa" : GoString), stdgo.strconv_test.Strconv_test.testUitoa) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFormatUintVarlen" : GoString), stdgo.strconv_test.Strconv_test.testFormatUintVarlen) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIsPrint" : GoString), stdgo.strconv_test.Strconv_test.testIsPrint) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIsGraphic" : GoString), stdgo.strconv_test.Strconv_test.testIsGraphic) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestQuote" : GoString), stdgo.strconv_test.Strconv_test.testQuote) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestQuoteToASCII" : GoString), stdgo.strconv_test.Strconv_test.testQuoteToASCII) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestQuoteToGraphic" : GoString), stdgo.strconv_test.Strconv_test.testQuoteToGraphic) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestQuoteRune" : GoString), stdgo.strconv_test.Strconv_test.testQuoteRune) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestQuoteRuneToASCII" : GoString), stdgo.strconv_test.Strconv_test.testQuoteRuneToASCII) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestQuoteRuneToGraphic" : GoString), stdgo.strconv_test.Strconv_test.testQuoteRuneToGraphic) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCanBackquote" : GoString), stdgo.strconv_test.Strconv_test.testCanBackquote) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnquote" : GoString), stdgo.strconv_test.Strconv_test.testUnquote) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnquoteInvalidUTF8" : GoString), stdgo.strconv_test.Strconv_test.testUnquoteInvalidUTF8) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCountMallocs" : GoString), stdgo.strconv_test.Strconv_test.testCountMallocs) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAllocationsFromBytes" : GoString), stdgo.strconv_test.Strconv_test.testAllocationsFromBytes) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestErrorPrefixes" : GoString), stdgo.strconv_test.Strconv_test.testErrorPrefixes) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
private var _benchmarks = (new Slice<stdgo.testing.Testing.InternalBenchmark>(
29,
29,
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAtof64Decimal" : GoString), stdgo.strconv_test.Strconv_test.benchmarkAtof64Decimal) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAtof64Float" : GoString), stdgo.strconv_test.Strconv_test.benchmarkAtof64Float) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAtof64FloatExp" : GoString), stdgo.strconv_test.Strconv_test.benchmarkAtof64FloatExp) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAtof64Big" : GoString), stdgo.strconv_test.Strconv_test.benchmarkAtof64Big) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAtof64RandomBits" : GoString), stdgo.strconv_test.Strconv_test.benchmarkAtof64RandomBits) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAtof64RandomFloats" : GoString), stdgo.strconv_test.Strconv_test.benchmarkAtof64RandomFloats) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAtof64RandomLongFloats" : GoString), stdgo.strconv_test.Strconv_test.benchmarkAtof64RandomLongFloats) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAtof32Decimal" : GoString), stdgo.strconv_test.Strconv_test.benchmarkAtof32Decimal) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAtof32Float" : GoString), stdgo.strconv_test.Strconv_test.benchmarkAtof32Float) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAtof32FloatExp" : GoString), stdgo.strconv_test.Strconv_test.benchmarkAtof32FloatExp) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAtof32Random" : GoString), stdgo.strconv_test.Strconv_test.benchmarkAtof32Random) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAtof32RandomLong" : GoString), stdgo.strconv_test.Strconv_test.benchmarkAtof32RandomLong) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkParseInt" : GoString), stdgo.strconv_test.Strconv_test.benchmarkParseInt) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAtoi" : GoString), stdgo.strconv_test.Strconv_test.benchmarkAtoi) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkFormatFloat" : GoString), stdgo.strconv_test.Strconv_test.benchmarkFormatFloat) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAppendFloat" : GoString), stdgo.strconv_test.Strconv_test.benchmarkAppendFloat) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkFormatInt" : GoString), stdgo.strconv_test.Strconv_test.benchmarkFormatInt) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAppendInt" : GoString), stdgo.strconv_test.Strconv_test.benchmarkAppendInt) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkFormatUint" : GoString), stdgo.strconv_test.Strconv_test.benchmarkFormatUint) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAppendUint" : GoString), stdgo.strconv_test.Strconv_test.benchmarkAppendUint) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkFormatIntSmall" : GoString), stdgo.strconv_test.Strconv_test.benchmarkFormatIntSmall) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAppendIntSmall" : GoString), stdgo.strconv_test.Strconv_test.benchmarkAppendIntSmall) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAppendUintVarlen" : GoString), stdgo.strconv_test.Strconv_test.benchmarkAppendUintVarlen) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkQuote" : GoString), stdgo.strconv_test.Strconv_test.benchmarkQuote) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkQuoteRune" : GoString), stdgo.strconv_test.Strconv_test.benchmarkQuoteRune) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAppendQuote" : GoString), stdgo.strconv_test.Strconv_test.benchmarkAppendQuote) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAppendQuoteRune" : GoString), stdgo.strconv_test.Strconv_test.benchmarkAppendQuoteRune) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkUnquoteEasy" : GoString), stdgo.strconv_test.Strconv_test.benchmarkUnquoteEasy) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkUnquoteHard" : GoString), stdgo.strconv_test.Strconv_test.benchmarkUnquoteHard) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
private var _fuzzTargets = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
private var _examples = (new Slice<stdgo.testing.Testing.InternalExample>(
30,
30,
(new stdgo.testing.Testing.InternalExample(("ExampleAppendBool" : GoString), stdgo.strconv_test.Strconv_test.exampleAppendBool, ("bool:true\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleAppendFloat" : GoString), stdgo.strconv_test.Strconv_test.exampleAppendFloat, ("float32:3.1415927E+00\nfloat64:3.1415926535E+00\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleAppendInt" : GoString), stdgo.strconv_test.Strconv_test.exampleAppendInt, ("int (base 10):-42\nint (base 16):-2a\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleAppendQuote" : GoString), stdgo.strconv_test.Strconv_test.exampleAppendQuote, ("quote:\"\\\"Fran & Freddie\'s Diner\\\"\"\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleAppendQuoteRune" : GoString), stdgo.strconv_test.Strconv_test.exampleAppendQuoteRune, ("rune:\'☺\'\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleAppendQuoteRuneToASCII" : GoString), stdgo.strconv_test.Strconv_test.exampleAppendQuoteRuneToASCII, ("rune (ascii):\'\\u263a\'\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleAppendQuoteToASCII" : GoString), stdgo.strconv_test.Strconv_test.exampleAppendQuoteToASCII, ("quote (ascii):\"\\\"Fran & Freddie\'s Diner\\\"\"\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleAppendUint" : GoString), stdgo.strconv_test.Strconv_test.exampleAppendUint, ("uint (base 10):42\nuint (base 16):2a\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleAtoi" : GoString), stdgo.strconv_test.Strconv_test.exampleAtoi, ("int, 10\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleCanBackquote" : GoString), stdgo.strconv_test.Strconv_test.exampleCanBackquote, ("true\nfalse\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleFormatBool" : GoString), stdgo.strconv_test.Strconv_test.exampleFormatBool, ("string, true\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleFormatFloat" : GoString), stdgo.strconv_test.Strconv_test.exampleFormatFloat, ("string, 3.1415927E+00\nstring, 3.1415926535E+00\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleFormatInt" : GoString), stdgo.strconv_test.Strconv_test.exampleFormatInt, ("string, -42\nstring, -2a\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleFormatUint" : GoString), stdgo.strconv_test.Strconv_test.exampleFormatUint, ("string, 42\nstring, 2a\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleIsGraphic" : GoString), stdgo.strconv_test.Strconv_test.exampleIsGraphic, ("true\ntrue\nfalse\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleIsPrint" : GoString), stdgo.strconv_test.Strconv_test.exampleIsPrint, ("true\nfalse\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleItoa" : GoString), stdgo.strconv_test.Strconv_test.exampleItoa, ("string, 10\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleParseBool" : GoString), stdgo.strconv_test.Strconv_test.exampleParseBool, ("bool, true\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleParseFloat" : GoString), stdgo.strconv_test.Strconv_test.exampleParseFloat, ("float64, 3.1415927410125732\nfloat64, 3.1415926535\nfloat64, NaN\nfloat64, NaN\nfloat64, +Inf\nfloat64, +Inf\nfloat64, -Inf\nfloat64, -0\nfloat64, 0\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleParseInt" : GoString), stdgo.strconv_test.Strconv_test.exampleParseInt, ("int64, -354634382\nint64, -3546343826724305832\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleParseUint" : GoString), stdgo.strconv_test.Strconv_test.exampleParseUint, ("uint64, 42\nuint64, 42\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleQuote" : GoString), stdgo.strconv_test.Strconv_test.exampleQuote, ("\"\\\"Fran & Freddie\'s Diner\\t☺\\\"\"\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleQuoteRune" : GoString), stdgo.strconv_test.Strconv_test.exampleQuoteRune, ("\'☺\'\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleQuoteRuneToASCII" : GoString), stdgo.strconv_test.Strconv_test.exampleQuoteRuneToASCII, ("\'\\u263a\'\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleQuoteRuneToGraphic" : GoString), stdgo.strconv_test.Strconv_test.exampleQuoteRuneToGraphic, ("\'☺\'\n\'☺\'\n\'\\n\'\n\'\\t\'\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleQuoteToASCII" : GoString), stdgo.strconv_test.Strconv_test.exampleQuoteToASCII, ("\"\\\"Fran & Freddie\'s Diner\\t\\u263a\\\"\"\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleQuoteToGraphic" : GoString), stdgo.strconv_test.Strconv_test.exampleQuoteToGraphic, ("\"☺\"\n\"This is a ☺\\t\\n\"\n\"\\\" This is a ☺ \\\\n \\\"\"\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleUnquote" : GoString), stdgo.strconv_test.Strconv_test.exampleUnquote, ("\"\", invalid syntax\n\"The string must be either double-quoted\", <nil>\n\"or backquoted.\", <nil>\n\"☺\", <nil>\n\"\", invalid syntax\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleUnquoteChar" : GoString), stdgo.strconv_test.Strconv_test.exampleUnquoteChar, ("value: \"\nmultibyte: false\ntail: Fran & Freddie\'s Diner\\\"\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleNumError" : GoString), stdgo.strconv_test.Strconv_test.exampleNumError, ("Func: ParseFloat\nNum: Not a number\nErr: invalid syntax\nstrconv.ParseFloat: parsing \"Not a number\": invalid syntax\n" : GoString), false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);
private function main():Void {
        var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("strconv" : GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
