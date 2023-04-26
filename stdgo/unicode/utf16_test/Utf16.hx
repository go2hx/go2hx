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
import stdgo.unicode.utf16.Utf16;
/**
    
    
    
**/
private var _tests = (new Slice<stdgo.testing.Testing.InternalTest>(7, 7, (new stdgo.testing.Testing.InternalTest(("TestConstants" : GoString), stdgo.unicode.utf16_test.Utf16_test.testConstants) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestEncode" : GoString), stdgo.unicode.utf16_test.Utf16_test.testEncode) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestAppendRune" : GoString), stdgo.unicode.utf16_test.Utf16_test.testAppendRune) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestEncodeRune" : GoString), stdgo.unicode.utf16_test.Utf16_test.testEncodeRune) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestDecode" : GoString), stdgo.unicode.utf16_test.Utf16_test.testDecode) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestDecodeRune" : GoString), stdgo.unicode.utf16_test.Utf16_test.testDecodeRune) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestIsSurrogate" : GoString), stdgo.unicode.utf16_test.Utf16_test.testIsSurrogate) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
private var _benchmarks = (new Slice<stdgo.testing.Testing.InternalBenchmark>(8, 8, (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDecodeValidASCII" : GoString), stdgo.unicode.utf16_test.Utf16_test.benchmarkDecodeValidASCII) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDecodeValidJapaneseChars" : GoString), stdgo.unicode.utf16_test.Utf16_test.benchmarkDecodeValidJapaneseChars) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDecodeRune" : GoString), stdgo.unicode.utf16_test.Utf16_test.benchmarkDecodeRune) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkEncodeValidASCII" : GoString), stdgo.unicode.utf16_test.Utf16_test.benchmarkEncodeValidASCII) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkEncodeValidJapaneseChars" : GoString), stdgo.unicode.utf16_test.Utf16_test.benchmarkEncodeValidJapaneseChars) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAppendRuneValidASCII" : GoString), stdgo.unicode.utf16_test.Utf16_test.benchmarkAppendRuneValidASCII) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAppendRuneValidJapaneseChars" : GoString), stdgo.unicode.utf16_test.Utf16_test.benchmarkAppendRuneValidJapaneseChars) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkEncodeRune" : GoString), stdgo.unicode.utf16_test.Utf16_test.benchmarkEncodeRune) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
private var _fuzzTargets = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
private var _examples = (new Slice<stdgo.testing.Testing.InternalExample>(0, 0) : Slice<stdgo.testing.Testing.InternalExample>);
private function main():Void {
        var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("unicode/utf16" : GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
