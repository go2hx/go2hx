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

var _tests:Slice<stdgo.testing.Testing.InternalTest> = (new Slice<stdgo.testing.Testing.InternalTest>(0, 0,
	(new stdgo.testing.Testing.InternalTest((Go.str("TestParseBool") : GoString),
		stdgo.strconv_test.Strconv_test.testParseBool) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestFormatBool") : GoString),
		stdgo.strconv_test.Strconv_test.testFormatBool) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestAppendBool") : GoString),
		stdgo.strconv_test.Strconv_test.testAppendBool) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestParseComplex") : GoString),
		stdgo.strconv_test.Strconv_test.testParseComplex) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestParseComplexIncorrectBitSize") : GoString),
		stdgo.strconv_test.Strconv_test.testParseComplexIncorrectBitSize) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestParseFloatPrefix") : GoString),
		stdgo.strconv_test.Strconv_test.testParseFloatPrefix) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestAtof") : GoString), stdgo.strconv_test.Strconv_test.testAtof) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestAtofSlow") : GoString),
		stdgo.strconv_test.Strconv_test.testAtofSlow) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestAtofRandom") : GoString),
		stdgo.strconv_test.Strconv_test.testAtofRandom) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestRoundTrip") : GoString),
		stdgo.strconv_test.Strconv_test.testRoundTrip) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestRoundTrip32") : GoString),
		stdgo.strconv_test.Strconv_test.testRoundTrip32) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestParseFloatIncorrectBitSize") : GoString),
		stdgo.strconv_test.Strconv_test.testParseFloatIncorrectBitSize) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestParseUint32") : GoString),
		stdgo.strconv_test.Strconv_test.testParseUint32) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestParseUint64") : GoString),
		stdgo.strconv_test.Strconv_test.testParseUint64) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestParseUint64Base") : GoString),
		stdgo.strconv_test.Strconv_test.testParseUint64Base) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestParseInt32") : GoString),
		stdgo.strconv_test.Strconv_test.testParseInt32) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestParseInt64") : GoString),
		stdgo.strconv_test.Strconv_test.testParseInt64) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestParseInt64Base") : GoString),
		stdgo.strconv_test.Strconv_test.testParseInt64Base) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestParseUint") : GoString),
		stdgo.strconv_test.Strconv_test.testParseUint) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestParseInt") : GoString),
		stdgo.strconv_test.Strconv_test.testParseInt) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestAtoi") : GoString), stdgo.strconv_test.Strconv_test.testAtoi) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestParseIntBitSize") : GoString),
		stdgo.strconv_test.Strconv_test.testParseIntBitSize) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestParseUintBitSize") : GoString),
		stdgo.strconv_test.Strconv_test.testParseUintBitSize) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestParseIntBase") : GoString),
		stdgo.strconv_test.Strconv_test.testParseIntBase) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestParseUintBase") : GoString),
		stdgo.strconv_test.Strconv_test.testParseUintBase) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestNumError") : GoString),
		stdgo.strconv_test.Strconv_test.testNumError) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestNumErrorUnwrap") : GoString),
		stdgo.strconv_test.Strconv_test.testNumErrorUnwrap) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestFormatComplex") : GoString),
		stdgo.strconv_test.Strconv_test.testFormatComplex) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestFormatComplexInvalidBitSize") : GoString),
		stdgo.strconv_test.Strconv_test.testFormatComplexInvalidBitSize) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestDecimalShift") : GoString),
		stdgo.strconv_test.Strconv_test.testDecimalShift) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestDecimalRound") : GoString),
		stdgo.strconv_test.Strconv_test.testDecimalRound) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestDecimalRoundedInteger") : GoString),
		stdgo.strconv_test.Strconv_test.testDecimalRoundedInteger) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestFp") : GoString), stdgo.strconv_test.Strconv_test.testFp) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestFtoa") : GoString), stdgo.strconv_test.Strconv_test.testFtoa) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestFtoaPowersOfTwo") : GoString),
		stdgo.strconv_test.Strconv_test.testFtoaPowersOfTwo) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestFtoaRandom") : GoString),
		stdgo.strconv_test.Strconv_test.testFtoaRandom) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestFormatFloatInvalidBitSize") : GoString),
		stdgo.strconv_test.Strconv_test.testFormatFloatInvalidBitSize) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestMulByLog2Log10") : GoString),
		stdgo.strconv_test.Strconv_test.testMulByLog2Log10) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestMulByLog10Log2") : GoString),
		stdgo.strconv_test.Strconv_test.testMulByLog10Log2) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestItoa") : GoString), stdgo.strconv_test.Strconv_test.testItoa) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestUitoa") : GoString), stdgo.strconv_test.Strconv_test.testUitoa) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestFormatUintVarlen") : GoString),
		stdgo.strconv_test.Strconv_test.testFormatUintVarlen) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestIsPrint") : GoString),
		stdgo.strconv_test.Strconv_test.testIsPrint) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestIsGraphic") : GoString),
		stdgo.strconv_test.Strconv_test.testIsGraphic) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestQuote") : GoString), stdgo.strconv_test.Strconv_test.testQuote) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestQuoteToASCII") : GoString),
		stdgo.strconv_test.Strconv_test.testQuoteToASCII) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestQuoteToGraphic") : GoString),
		stdgo.strconv_test.Strconv_test.testQuoteToGraphic) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestQuoteRune") : GoString),
		stdgo.strconv_test.Strconv_test.testQuoteRune) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestQuoteRuneToASCII") : GoString),
		stdgo.strconv_test.Strconv_test.testQuoteRuneToASCII) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestQuoteRuneToGraphic") : GoString),
		stdgo.strconv_test.Strconv_test.testQuoteRuneToGraphic) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestCanBackquote") : GoString),
		stdgo.strconv_test.Strconv_test.testCanBackquote) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestUnquote") : GoString),
		stdgo.strconv_test.Strconv_test.testUnquote) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestUnquoteInvalidUTF8") : GoString),
		stdgo.strconv_test.Strconv_test.testUnquoteInvalidUTF8) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestCountMallocs") : GoString),
		stdgo.strconv_test.Strconv_test.testCountMallocs) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestErrorPrefixes") : GoString),
		stdgo.strconv_test.Strconv_test.testErrorPrefixes) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);

var _benchmarks:Slice<stdgo.testing.Testing.InternalBenchmark> = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0,
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkAtof64Decimal") : GoString),
		stdgo.strconv_test.Strconv_test.benchmarkAtof64Decimal) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkAtof64Float") : GoString),
		stdgo.strconv_test.Strconv_test.benchmarkAtof64Float) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkAtof64FloatExp") : GoString),
		stdgo.strconv_test.Strconv_test.benchmarkAtof64FloatExp) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkAtof64Big") : GoString),
		stdgo.strconv_test.Strconv_test.benchmarkAtof64Big) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkAtof64RandomBits") : GoString),
		stdgo.strconv_test.Strconv_test.benchmarkAtof64RandomBits) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkAtof64RandomFloats") : GoString),
		stdgo.strconv_test.Strconv_test.benchmarkAtof64RandomFloats) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkAtof64RandomLongFloats") : GoString),
		stdgo.strconv_test.Strconv_test.benchmarkAtof64RandomLongFloats) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkAtof32Decimal") : GoString),
		stdgo.strconv_test.Strconv_test.benchmarkAtof32Decimal) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkAtof32Float") : GoString),
		stdgo.strconv_test.Strconv_test.benchmarkAtof32Float) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkAtof32FloatExp") : GoString),
		stdgo.strconv_test.Strconv_test.benchmarkAtof32FloatExp) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkAtof32Random") : GoString),
		stdgo.strconv_test.Strconv_test.benchmarkAtof32Random) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkAtof32RandomLong") : GoString),
		stdgo.strconv_test.Strconv_test.benchmarkAtof32RandomLong) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkParseInt") : GoString),
		stdgo.strconv_test.Strconv_test.benchmarkParseInt) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkAtoi") : GoString),
		stdgo.strconv_test.Strconv_test.benchmarkAtoi) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkFormatFloat") : GoString),
		stdgo.strconv_test.Strconv_test.benchmarkFormatFloat) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkAppendFloat") : GoString),
		stdgo.strconv_test.Strconv_test.benchmarkAppendFloat) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkFormatInt") : GoString),
		stdgo.strconv_test.Strconv_test.benchmarkFormatInt) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkAppendInt") : GoString),
		stdgo.strconv_test.Strconv_test.benchmarkAppendInt) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkFormatUint") : GoString),
		stdgo.strconv_test.Strconv_test.benchmarkFormatUint) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkAppendUint") : GoString),
		stdgo.strconv_test.Strconv_test.benchmarkAppendUint) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkFormatIntSmall") : GoString),
		stdgo.strconv_test.Strconv_test.benchmarkFormatIntSmall) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkAppendIntSmall") : GoString),
		stdgo.strconv_test.Strconv_test.benchmarkAppendIntSmall) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkAppendUintVarlen") : GoString),
		stdgo.strconv_test.Strconv_test.benchmarkAppendUintVarlen) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkQuote") : GoString),
		stdgo.strconv_test.Strconv_test.benchmarkQuote) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkQuoteRune") : GoString),
		stdgo.strconv_test.Strconv_test.benchmarkQuoteRune) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkAppendQuote") : GoString),
		stdgo.strconv_test.Strconv_test.benchmarkAppendQuote) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkAppendQuoteRune") : GoString),
		stdgo.strconv_test.Strconv_test.benchmarkAppendQuoteRune) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkUnquoteEasy") : GoString),
		stdgo.strconv_test.Strconv_test.benchmarkUnquoteEasy) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkUnquoteHard") : GoString),
		stdgo.strconv_test.Strconv_test.benchmarkUnquoteHard) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);

var _fuzzTargets:Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0,
	0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);

var _examples:Slice<stdgo.testing.Testing.InternalExample> = (new Slice<stdgo.testing.Testing.InternalExample>(0, 0,
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleAppendBool") : GoString), stdgo.strconv_test.Strconv_test.exampleAppendBool,
		(Go.str("bool:true\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleAppendFloat") : GoString), stdgo.strconv_test.Strconv_test.exampleAppendFloat,
		(Go.str("float32:3.1415927E+00\nfloat64:3.1415926535E+00\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleAppendInt") : GoString), stdgo.strconv_test.Strconv_test.exampleAppendInt,
		(Go.str("int (base 10):-42\nint (base 16):-2a\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleAppendQuote") : GoString), stdgo.strconv_test.Strconv_test.exampleAppendQuote,
		(Go.str("quote:\"\\\"Fran & Freddie\'s Diner\\\"\"\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleAppendQuoteRune") : GoString), stdgo.strconv_test.Strconv_test.exampleAppendQuoteRune,
		(Go.str("rune:\'☺\'\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleAppendQuoteRuneToASCII") : GoString),
		stdgo.strconv_test.Strconv_test.exampleAppendQuoteRuneToASCII, (Go.str("rune (ascii):\'\\u263a\'\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleAppendQuoteToASCII") : GoString), stdgo.strconv_test.Strconv_test.exampleAppendQuoteToASCII,
		(Go.str("quote (ascii):\"\\\"Fran & Freddie\'s Diner\\\"\"\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleAppendUint") : GoString), stdgo.strconv_test.Strconv_test.exampleAppendUint,
		(Go.str("uint (base 10):42\nuint (base 16):2a\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleAtoi") : GoString), stdgo.strconv_test.Strconv_test.exampleAtoi,
		(Go.str("int, 10\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleCanBackquote") : GoString), stdgo.strconv_test.Strconv_test.exampleCanBackquote,
		(Go.str("true\nfalse\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleFormatBool") : GoString), stdgo.strconv_test.Strconv_test.exampleFormatBool,
		(Go.str("string, true\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleFormatFloat") : GoString), stdgo.strconv_test.Strconv_test.exampleFormatFloat,
		(Go.str("string, 3.1415927E+00\nstring, 3.1415926535E+00\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleFormatInt") : GoString), stdgo.strconv_test.Strconv_test.exampleFormatInt,
		(Go.str("string, -42\nstring, -2a\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleFormatUint") : GoString), stdgo.strconv_test.Strconv_test.exampleFormatUint,
		(Go.str("string, 42\nstring, 2a\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleIsGraphic") : GoString), stdgo.strconv_test.Strconv_test.exampleIsGraphic,
		(Go.str("true\ntrue\nfalse\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleIsPrint") : GoString), stdgo.strconv_test.Strconv_test.exampleIsPrint,
		(Go.str("true\nfalse\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleItoa") : GoString), stdgo.strconv_test.Strconv_test.exampleItoa,
		(Go.str("string, 10\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleParseBool") : GoString), stdgo.strconv_test.Strconv_test.exampleParseBool,
		(Go.str("bool, true\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleParseFloat") : GoString), stdgo.strconv_test.Strconv_test.exampleParseFloat,
		(Go.str("float64, 3.1415927410125732\nfloat64, 3.1415926535\nfloat64, NaN\nfloat64, NaN\nfloat64, +Inf\nfloat64, +Inf\nfloat64, -Inf\nfloat64, -0\nfloat64, 0\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleParseInt") : GoString), stdgo.strconv_test.Strconv_test.exampleParseInt,
		(Go.str("int64, -354634382\nint64, -3546343826724305832\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleParseUint") : GoString), stdgo.strconv_test.Strconv_test.exampleParseUint,
		(Go.str("uint64, 42\nuint64, 42\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleQuote") : GoString), stdgo.strconv_test.Strconv_test.exampleQuote,
		(Go.str("\"\\\"Fran & Freddie\'s Diner\\t☺\\\"\"\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleQuoteRune") : GoString), stdgo.strconv_test.Strconv_test.exampleQuoteRune,
		(Go.str("\'☺\'\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleQuoteRuneToASCII") : GoString), stdgo.strconv_test.Strconv_test.exampleQuoteRuneToASCII,
		(Go.str("\'\\u263a\'\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleQuoteRuneToGraphic") : GoString), stdgo.strconv_test.Strconv_test.exampleQuoteRuneToGraphic,
		(Go.str("\'☺\'\n\'☺\'\n\'\\n\'\n\'\\t\'\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleQuoteToASCII") : GoString), stdgo.strconv_test.Strconv_test.exampleQuoteToASCII,
		(Go.str("\"\\\"Fran & Freddie\'s Diner\\t\\u263a\\\"\"\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleQuoteToGraphic") : GoString), stdgo.strconv_test.Strconv_test.exampleQuoteToGraphic,
		(Go.str("\"☺\"\n\"This is a ☺\\t\\n\"\n\"\\\" This is a ☺ \\\\n \\\"\"\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleUnquote") : GoString), stdgo.strconv_test.Strconv_test.exampleUnquote,
		(Go.str("\"\", invalid syntax\n\"The string must be either double-quoted\", <nil>\n\"or backquoted.\", <nil>\n\"☺\", <nil>\n\"\", invalid syntax\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleUnquoteChar") : GoString), stdgo.strconv_test.Strconv_test.exampleUnquoteChar,
		(Go.str("value: \"\nmultibyte: false\ntail: Fran & Freddie\'s Diner\\\"\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleNumError") : GoString), stdgo.strconv_test.Strconv_test.exampleNumError,
		(Go.str("Func: ParseFloat\nNum: Not a number\nErr: invalid syntax\nstrconv.ParseFloat: parsing \"Not a number\": invalid syntax\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);

function main():Void {
	var _m = stdgo.testing.Testing.mainStart({
		final __self__ = new stdgo.testing.internal.testdeps.Testdeps.TestDeps_wrapper((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps));
		__self__.checkCorpus = #if !macro function(__0:Slice<AnyInterface>,
				__1:Slice<stdgo.reflect.Reflect.Type>):stdgo.Error return
				(new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).checkCorpus(__0,
					__1) #else null #end;
		__self__.coordinateFuzzing = #if !macro function(__0:stdgo.time.Time.Duration, __1:GoInt64, __2:stdgo.time.Time.Duration, __3:GoInt64, __4:GoInt,
				__5:Slice<{
				var parent:GoString;
				var path:GoString;
				var data:Slice<GoUInt8>;
				var values:Slice<AnyInterface>;
				var generation:GoInt;
				var isSeed:Bool;
			}>,
				__6:Slice<stdgo.reflect.Reflect.Type>, __7:GoString,
				__8:GoString):stdgo.Error return (new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)
				.coordinateFuzzing(__0, __1, __2, __3, __4, __5, __6, __7, __8) #else null #end;
		__self__.importPath = #if !macro function():GoString return
			(new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).importPath() #else null #end;
		__self__.matchString = #if !macro function(_fn:GoString, _str:GoString):{var _0:Bool; var _1:stdgo.Error;}
			return (new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).matchString(_fn,
				_str) #else null #end;
		__self__.readCorpus = #if !macro function(__0:GoString, __1:Slice<stdgo.reflect.Reflect.Type>):{var _0:Slice<{
			var parent:GoString;
			var path:GoString;
			var data:Slice<GoUInt8>;
			var values:Slice<AnyInterface>;
			var generation:GoInt;
			var isSeed:Bool;
		}>; var _1:stdgo.Error;}
			return (new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).readCorpus(__0,
				__1) #else null #end;
		__self__.resetCoverage = #if !macro function():Void(new stdgo.testing.internal.testdeps.Testdeps.TestDeps()
			:stdgo.testing.internal.testdeps.Testdeps.TestDeps).resetCoverage() #else null #end;
		__self__.runFuzzWorker = #if !macro function(__0:({
			var parent:GoString;
			var path:GoString;
			var data:Slice<GoUInt8>;
			var values:Slice<AnyInterface>;
			var generation:GoInt;
			var isSeed:Bool;
		}) -> stdgo.Error):stdgo.Error return (new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)
			.runFuzzWorker(__0) #else null #end;
		__self__.setPanicOnExit0 = #if !macro function(_b:Bool):Void(new stdgo.testing.internal.testdeps.Testdeps.TestDeps()
			:stdgo.testing.internal.testdeps.Testdeps.TestDeps).setPanicOnExit0(_b) #else null #end;
		__self__.snapshotCoverage = #if !macro function():Void(new stdgo.testing.internal.testdeps.Testdeps.TestDeps()
			:stdgo.testing.internal.testdeps.Testdeps.TestDeps).snapshotCoverage() #else null #end;
		__self__.startCPUProfile = #if !macro function(__0:stdgo.io.Io.Writer):stdgo.Error return
			(new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).startCPUProfile(__0) #else null #end;
		__self__.startTestLog = #if !macro function(__0:stdgo.io.Io.Writer):Void(new stdgo.testing.internal.testdeps.Testdeps.TestDeps()
			:stdgo.testing.internal.testdeps.Testdeps.TestDeps).startTestLog(__0) #else null #end;
		__self__.stopCPUProfile = #if !macro function():Void(new stdgo.testing.internal.testdeps.Testdeps.TestDeps()
			:stdgo.testing.internal.testdeps.Testdeps.TestDeps).stopCPUProfile() #else null #end;
		__self__.stopTestLog = #if !macro function():stdgo.Error return
			(new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).stopTestLog() #else null #end;
		__self__.writeProfileTo = #if !macro function(__0:GoString, __1:stdgo.io.Io.Writer,
				__2:GoInt):stdgo.Error return (new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)
				.writeProfileTo(__0, __1, __2) #else null #end;
		__self__;
	}, _tests, _benchmarks, _fuzzTargets, _examples);
	Sys.exit(_m.run());
}

@:keep var _ = {
	try {
		stdgo.testing.internal.testdeps.Testdeps.importPath = (Go.str("strconv") : GoString);
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};
