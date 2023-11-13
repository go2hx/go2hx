package stdgo.strconv_test;
import stdgo.strconv.Strconv;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(
56,
56,
(new stdgo.testing.Testing.InternalTest(("TestParseBool" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testParseBool) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFormatBool" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testFormatBool) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAppendBool" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testAppendBool) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseComplex" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testParseComplex) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseComplexIncorrectBitSize" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testParseComplexIncorrectBitSize) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseFloatPrefix" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testParseFloatPrefix) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAtof" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testAtof) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAtofSlow" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testAtofSlow) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAtofRandom" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testAtofRandom) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRoundTrip" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testRoundTrip) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRoundTrip32" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testRoundTrip32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseFloatIncorrectBitSize" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testParseFloatIncorrectBitSize) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseUint32" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testParseUint32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseUint64" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testParseUint64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseUint64Base" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testParseUint64Base) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseInt32" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testParseInt32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseInt64" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testParseInt64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseInt64Base" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testParseInt64Base) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseUint" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testParseUint) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseInt" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testParseInt) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAtoi" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testAtoi) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseIntBitSize" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testParseIntBitSize) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseUintBitSize" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testParseUintBitSize) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseIntBase" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testParseIntBase) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseUintBase" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testParseUintBase) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNumError" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testNumError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNumErrorUnwrap" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testNumErrorUnwrap) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFormatComplex" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testFormatComplex) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFormatComplexInvalidBitSize" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testFormatComplexInvalidBitSize) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecimalShift" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testDecimalShift) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecimalRound" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testDecimalRound) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecimalRoundedInteger" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testDecimalRoundedInteger) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFp" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testFp) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFtoa" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testFtoa) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFtoaPowersOfTwo" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testFtoaPowersOfTwo) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFtoaRandom" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testFtoaRandom) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFormatFloatInvalidBitSize" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testFormatFloatInvalidBitSize) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMulByLog2Log10" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testMulByLog2Log10) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMulByLog10Log2" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testMulByLog10Log2) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestItoa" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testItoa) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUitoa" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testUitoa) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFormatUintVarlen" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testFormatUintVarlen) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIsPrint" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testIsPrint) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIsGraphic" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testIsGraphic) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestQuote" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testQuote) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestQuoteToASCII" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testQuoteToASCII) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestQuoteToGraphic" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testQuoteToGraphic) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestQuoteRune" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testQuoteRune) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestQuoteRuneToASCII" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testQuoteRuneToASCII) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestQuoteRuneToGraphic" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testQuoteRuneToGraphic) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCanBackquote" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testCanBackquote) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnquote" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testUnquote) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnquoteInvalidUTF8" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testUnquoteInvalidUTF8) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCountMallocs" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testCountMallocs) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAllocationsFromBytes" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testAllocationsFromBytes) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestErrorPrefixes" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.testErrorPrefixes) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(
29,
29,
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAtof64Decimal" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.benchmarkAtof64Decimal) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAtof64Float" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.benchmarkAtof64Float) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAtof64FloatExp" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.benchmarkAtof64FloatExp) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAtof64Big" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.benchmarkAtof64Big) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAtof64RandomBits" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.benchmarkAtof64RandomBits) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAtof64RandomFloats" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.benchmarkAtof64RandomFloats) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAtof64RandomLongFloats" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.benchmarkAtof64RandomLongFloats) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAtof32Decimal" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.benchmarkAtof32Decimal) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAtof32Float" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.benchmarkAtof32Float) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAtof32FloatExp" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.benchmarkAtof32FloatExp) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAtof32Random" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.benchmarkAtof32Random) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAtof32RandomLong" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.benchmarkAtof32RandomLong) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkParseInt" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.benchmarkParseInt) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAtoi" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.benchmarkAtoi) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkFormatFloat" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.benchmarkFormatFloat) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAppendFloat" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.benchmarkAppendFloat) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkFormatInt" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.benchmarkFormatInt) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAppendInt" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.benchmarkAppendInt) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkFormatUint" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.benchmarkFormatUint) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAppendUint" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.benchmarkAppendUint) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkFormatIntSmall" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.benchmarkFormatIntSmall) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAppendIntSmall" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.benchmarkAppendIntSmall) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAppendUintVarlen" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.benchmarkAppendUintVarlen) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkQuote" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.benchmarkQuote) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkQuoteRune" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.benchmarkQuoteRune) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAppendQuote" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.benchmarkAppendQuote) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAppendQuoteRune" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.benchmarkAppendQuoteRune) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkUnquoteEasy" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.benchmarkUnquoteEasy) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkUnquoteHard" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.benchmarkUnquoteHard) : stdgo.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
var _fuzzTargets : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo.testing.Testing.InternalExample>(
30,
30,
(new stdgo.testing.Testing.InternalExample(("ExampleAppendBool" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.exampleAppendBool, ("bool:true\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleAppendFloat" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.exampleAppendFloat, ("float32:3.1415927E+00\nfloat64:3.1415926535E+00\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleAppendInt" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.exampleAppendInt, ("int (base 10):-42\nint (base 16):-2a\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleAppendQuote" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.exampleAppendQuote, ("quote:\"\\\"Fran & Freddie\'s Diner\\\"\"\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleAppendQuoteRune" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.exampleAppendQuoteRune, ("rune:\'☺\'\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleAppendQuoteRuneToASCII" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.exampleAppendQuoteRuneToASCII, ("rune (ascii):\'\\u263a\'\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleAppendQuoteToASCII" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.exampleAppendQuoteToASCII, ("quote (ascii):\"\\\"Fran & Freddie\'s Diner\\\"\"\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleAppendUint" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.exampleAppendUint, ("uint (base 10):42\nuint (base 16):2a\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleAtoi" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.exampleAtoi, ("int, 10\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleCanBackquote" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.exampleCanBackquote, ("true\nfalse\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleFormatBool" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.exampleFormatBool, ("string, true\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleFormatFloat" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.exampleFormatFloat, ("string, 3.1415927E+00\nstring, 3.1415926535E+00\nstring, 3.1415926535\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleFormatInt" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.exampleFormatInt, ("string, -42\nstring, -2a\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleFormatUint" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.exampleFormatUint, ("string, 42\nstring, 2a\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleIsGraphic" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.exampleIsGraphic, ("true\ntrue\nfalse\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleIsPrint" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.exampleIsPrint, ("true\nfalse\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleItoa" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.exampleItoa, ("string, 10\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleParseBool" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.exampleParseBool, ("bool, true\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleParseFloat" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.exampleParseFloat, ("float64, 3.1415927410125732\nfloat64, 3.1415926535\nfloat64, NaN\nfloat64, NaN\nfloat64, +Inf\nfloat64, +Inf\nfloat64, -Inf\nfloat64, -0\nfloat64, 0\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleParseInt" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.exampleParseInt, ("int64, -354634382\nint64, -3546343826724305832\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleParseUint" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.exampleParseUint, ("uint64, 42\nuint64, 42\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleQuote" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.exampleQuote, ("\"\\\"Fran & Freddie\'s Diner\\t☺\\\"\"\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleQuoteRune" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.exampleQuoteRune, ("\'☺\'\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleQuoteRuneToASCII" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.exampleQuoteRuneToASCII, ("\'\\u263a\'\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleQuoteRuneToGraphic" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.exampleQuoteRuneToGraphic, ("\'☺\'\n\'☺\'\n\'\\n\'\n\'\\t\'\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleQuoteToASCII" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.exampleQuoteToASCII, ("\"\\\"Fran & Freddie\'s Diner\\t\\u263a\\\"\"\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleQuoteToGraphic" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.exampleQuoteToGraphic, ("\"☺\"\n\"This is a ☺\\t\\n\"\n\"\\\" This is a ☺ \\\\n \\\"\"\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleUnquote" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.exampleUnquote, ("\"\", invalid syntax\n\"The string must be either double-quoted\", <nil>\n\"or backquoted.\", <nil>\n\"☺\", <nil>\n\"\", invalid syntax\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleUnquoteChar" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.exampleUnquoteChar, ("value: \"\nmultibyte: false\ntail: Fran & Freddie\'s Diner\\\"\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleNumError" : stdgo.GoString)?.__copy__(), stdgo.strconv_test.Strconv_test.exampleNumError, ("Func: ParseFloat\nNum: Not a number\nErr: invalid syntax\nstrconv.ParseFloat: parsing \"Not a number\": invalid syntax\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample)) : stdgo.Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("strconv" : stdgo.GoString)?.__copy__();
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
