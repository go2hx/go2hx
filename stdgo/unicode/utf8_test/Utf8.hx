package stdgo.unicode.utf8_test;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

private var _tests:Slice<stdgo.testing.Testing.InternalTest> = (new Slice<stdgo.testing.Testing.InternalTest>(0, 0,
	(new stdgo.testing.Testing.InternalTest(Go.str("TestConstants"), stdgo.unicode.utf8_test.Utf8_test.testConstants) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestFullRune"), stdgo.unicode.utf8_test.Utf8_test.testFullRune) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestEncodeRune"), stdgo.unicode.utf8_test.Utf8_test.testEncodeRune) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestAppendRune"), stdgo.unicode.utf8_test.Utf8_test.testAppendRune) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestDecodeRune"), stdgo.unicode.utf8_test.Utf8_test.testDecodeRune) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestDecodeSurrogateRune"),
		stdgo.unicode.utf8_test.Utf8_test.testDecodeSurrogateRune) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSequencing"), stdgo.unicode.utf8_test.Utf8_test.testSequencing) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestRuntimeConversion"),
		stdgo.unicode.utf8_test.Utf8_test.testRuntimeConversion) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestDecodeInvalidSequence"),
		stdgo.unicode.utf8_test.Utf8_test.testDecodeInvalidSequence) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestNegativeRune"),
		stdgo.unicode.utf8_test.Utf8_test.testNegativeRune) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestRuneCount"), stdgo.unicode.utf8_test.Utf8_test.testRuneCount) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestRuneLen"), stdgo.unicode.utf8_test.Utf8_test.testRuneLen) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestValid"), stdgo.unicode.utf8_test.Utf8_test.testValid) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestValidRune"),
		stdgo.unicode.utf8_test.Utf8_test.testValidRune) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);

private var _benchmarks:Slice<stdgo.testing.Testing.InternalBenchmark> = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0,
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkRuneCountTenASCIIChars"),
		stdgo.unicode.utf8_test.Utf8_test.benchmarkRuneCountTenASCIIChars) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkRuneCountTenJapaneseChars"),
		stdgo.unicode.utf8_test.Utf8_test.benchmarkRuneCountTenJapaneseChars) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkRuneCountInStringTenASCIIChars"),
		stdgo.unicode.utf8_test.Utf8_test.benchmarkRuneCountInStringTenASCIIChars) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkRuneCountInStringTenJapaneseChars"),
		stdgo.unicode.utf8_test.Utf8_test.benchmarkRuneCountInStringTenJapaneseChars) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkValidTenASCIIChars"),
		stdgo.unicode.utf8_test.Utf8_test.benchmarkValidTenASCIIChars) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkValid100KASCIIChars"),
		stdgo.unicode.utf8_test.Utf8_test.benchmarkValid100KASCIIChars) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkValidTenJapaneseChars"),
		stdgo.unicode.utf8_test.Utf8_test.benchmarkValidTenJapaneseChars) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkValidLongMostlyASCII"),
		stdgo.unicode.utf8_test.Utf8_test.benchmarkValidLongMostlyASCII) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkValidLongJapanese"),
		stdgo.unicode.utf8_test.Utf8_test.benchmarkValidLongJapanese) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkValidStringTenASCIIChars"),
		stdgo.unicode.utf8_test.Utf8_test.benchmarkValidStringTenASCIIChars) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkValidString100KASCIIChars"),
		stdgo.unicode.utf8_test.Utf8_test.benchmarkValidString100KASCIIChars) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkValidStringTenJapaneseChars"),
		stdgo.unicode.utf8_test.Utf8_test.benchmarkValidStringTenJapaneseChars) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkValidStringLongMostlyASCII"),
		stdgo.unicode.utf8_test.Utf8_test.benchmarkValidStringLongMostlyASCII) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkValidStringLongJapanese"),
		stdgo.unicode.utf8_test.Utf8_test.benchmarkValidStringLongJapanese) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkEncodeASCIIRune"),
		stdgo.unicode.utf8_test.Utf8_test.benchmarkEncodeASCIIRune) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkEncodeJapaneseRune"),
		stdgo.unicode.utf8_test.Utf8_test.benchmarkEncodeJapaneseRune) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkAppendASCIIRune"),
		stdgo.unicode.utf8_test.Utf8_test.benchmarkAppendASCIIRune) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkAppendJapaneseRune"),
		stdgo.unicode.utf8_test.Utf8_test.benchmarkAppendJapaneseRune) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkDecodeASCIIRune"),
		stdgo.unicode.utf8_test.Utf8_test.benchmarkDecodeASCIIRune) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkDecodeJapaneseRune"),
		stdgo.unicode.utf8_test.Utf8_test.benchmarkDecodeJapaneseRune) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkFullRune"),
		stdgo.unicode.utf8_test.Utf8_test.benchmarkFullRune) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);

private var _fuzzTargets:Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0,
	0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);

private var _examples:Slice<stdgo.testing.Testing.InternalExample> = (new Slice<stdgo.testing.Testing.InternalExample>(0, 0,
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleDecodeLastRune"), stdgo.unicode.utf8_test.Utf8_test.exampleDecodeLastRune,
		Go.str("界 3\n世 3\n  1\n, 1\no 1\nl 1\nl 1\ne 1\nH 1\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleDecodeLastRuneInString"), stdgo.unicode.utf8_test.Utf8_test.exampleDecodeLastRuneInString,
		Go.str("界 3\n世 3\n  1\n, 1\no 1\nl 1\nl 1\ne 1\nH 1\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleDecodeRune"), stdgo.unicode.utf8_test.Utf8_test.exampleDecodeRune,
		Go.str("H 1\ne 1\nl 1\nl 1\no 1\n, 1\n  1\n世 3\n界 3\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleDecodeRuneInString"), stdgo.unicode.utf8_test.Utf8_test.exampleDecodeRuneInString,
		Go.str("H 1\ne 1\nl 1\nl 1\no 1\n, 1\n  1\n世 3\n界 3\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleEncodeRune"), stdgo.unicode.utf8_test.Utf8_test.exampleEncodeRune, Go.str("[228 184 150]\n3\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleEncodeRune_outOfRange"), stdgo.unicode.utf8_test.Utf8_test.exampleEncodeRune_outOfRange,
		Go.str("0: [239 191 189] � 3\n1: [239 191 189] � 3\n2: [239 191 189] � 3\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleFullRune"), stdgo.unicode.utf8_test.Utf8_test.exampleFullRune, Go.str("true\nfalse\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleFullRuneInString"), stdgo.unicode.utf8_test.Utf8_test.exampleFullRuneInString,
		Go.str("true\nfalse\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleRuneCount"), stdgo.unicode.utf8_test.Utf8_test.exampleRuneCount,
		Go.str("bytes = 13\nrunes = 9\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleRuneCountInString"), stdgo.unicode.utf8_test.Utf8_test.exampleRuneCountInString,
		Go.str("bytes = 13\nrunes = 9\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleRuneLen"), stdgo.unicode.utf8_test.Utf8_test.exampleRuneLen, Go.str("1\n3\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleRuneStart"), stdgo.unicode.utf8_test.Utf8_test.exampleRuneStart, Go.str("true\ntrue\nfalse\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleValid"), stdgo.unicode.utf8_test.Utf8_test.exampleValid, Go.str("true\nfalse\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleValidRune"), stdgo.unicode.utf8_test.Utf8_test.exampleValidRune, Go.str("true\nfalse\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleValidString"), stdgo.unicode.utf8_test.Utf8_test.exampleValidString, Go.str("true\nfalse\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleAppendRune"), stdgo.unicode.utf8_test.Utf8_test.exampleAppendRune, Go.str("𐀀\ninit𐀀\n"),
		false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);

function main():Void {
	var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)),
		_tests, _benchmarks,
		_fuzzTargets, _examples);
	Sys.exit(_m.run());
}

@:keep var _ = {
	try {
		stdgo.testing.internal.testdeps.Testdeps.importPath = Go.str("unicode/utf8");
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};
