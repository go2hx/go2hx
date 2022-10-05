package stdgo.unicode.utf16_test;

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
	(new stdgo.testing.Testing.InternalTest(Go.str("TestConstants"), stdgo.unicode.utf16_test.Utf16_test.testConstants) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestEncode"), stdgo.unicode.utf16_test.Utf16_test.testEncode) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestEncodeRune"),
		stdgo.unicode.utf16_test.Utf16_test.testEncodeRune) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestDecode"), stdgo.unicode.utf16_test.Utf16_test.testDecode) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestDecodeRune"),
		stdgo.unicode.utf16_test.Utf16_test.testDecodeRune) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestIsSurrogate"),
		stdgo.unicode.utf16_test.Utf16_test.testIsSurrogate) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);

private var _benchmarks:Slice<stdgo.testing.Testing.InternalBenchmark> = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0,
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkDecodeValidASCII"),
		stdgo.unicode.utf16_test.Utf16_test.benchmarkDecodeValidASCII) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkDecodeValidJapaneseChars"),
		stdgo.unicode.utf16_test.Utf16_test.benchmarkDecodeValidJapaneseChars) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkDecodeRune"),
		stdgo.unicode.utf16_test.Utf16_test.benchmarkDecodeRune) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkEncodeValidASCII"),
		stdgo.unicode.utf16_test.Utf16_test.benchmarkEncodeValidASCII) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkEncodeValidJapaneseChars"),
		stdgo.unicode.utf16_test.Utf16_test.benchmarkEncodeValidJapaneseChars) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkEncodeRune"),
		stdgo.unicode.utf16_test.Utf16_test.benchmarkEncodeRune) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);

private var _fuzzTargets:Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0,
	0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);

private var _examples:Slice<stdgo.testing.Testing.InternalExample> = (new Slice<stdgo.testing.Testing.InternalExample>(0,
	0) : Slice<stdgo.testing.Testing.InternalExample>);

function main():Void {
	var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)),
		_tests, _benchmarks,
		_fuzzTargets, _examples);
	Sys.exit(_m.run());
}

@:keep var _ = {
	try {
		stdgo.testing.internal.testdeps.Testdeps.importPath = Go.str("unicode/utf16");
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};
