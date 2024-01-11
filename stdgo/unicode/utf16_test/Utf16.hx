package stdgo.unicode.utf16_test;
import stdgo.unicode.utf16.Utf16;
import stdgo.unicode.utf16.Utf16;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(8, 8, (new stdgo.testing.Testing.InternalTest(("TestConstants" : stdgo.GoString), stdgo.unicode.utf16_test.Utf16_test.testConstants) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestEncode" : stdgo.GoString), stdgo.unicode.utf16_test.Utf16_test.testEncode) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestAppendRune" : stdgo.GoString), stdgo.unicode.utf16_test.Utf16_test.testAppendRune) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestEncodeRune" : stdgo.GoString), stdgo.unicode.utf16_test.Utf16_test.testEncodeRune) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestAllocationsDecode" : stdgo.GoString), stdgo.unicode.utf16_test.Utf16_test.testAllocationsDecode) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestDecode" : stdgo.GoString), stdgo.unicode.utf16_test.Utf16_test.testDecode) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestDecodeRune" : stdgo.GoString), stdgo.unicode.utf16_test.Utf16_test.testDecodeRune) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestIsSurrogate" : stdgo.GoString), stdgo.unicode.utf16_test.Utf16_test.testIsSurrogate) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(8, 8, (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDecodeValidASCII" : stdgo.GoString), stdgo.unicode.utf16_test.Utf16_test.benchmarkDecodeValidASCII) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDecodeValidJapaneseChars" : stdgo.GoString), stdgo.unicode.utf16_test.Utf16_test.benchmarkDecodeValidJapaneseChars) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDecodeRune" : stdgo.GoString), stdgo.unicode.utf16_test.Utf16_test.benchmarkDecodeRune) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkEncodeValidASCII" : stdgo.GoString), stdgo.unicode.utf16_test.Utf16_test.benchmarkEncodeValidASCII) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkEncodeValidJapaneseChars" : stdgo.GoString), stdgo.unicode.utf16_test.Utf16_test.benchmarkEncodeValidJapaneseChars) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAppendRuneValidASCII" : stdgo.GoString), stdgo.unicode.utf16_test.Utf16_test.benchmarkAppendRuneValidASCII) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAppendRuneValidJapaneseChars" : stdgo.GoString), stdgo.unicode.utf16_test.Utf16_test.benchmarkAppendRuneValidJapaneseChars) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkEncodeRune" : stdgo.GoString), stdgo.unicode.utf16_test.Utf16_test.benchmarkEncodeRune) : stdgo.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
var _fuzzTargets : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo.testing.Testing.InternalExample>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("unicode/utf16" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
