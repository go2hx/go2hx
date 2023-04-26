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
import stdgo.unicode.utf8.Utf8;
/**
    
    
    
**/
private var _tests = (new Slice<stdgo.testing.Testing.InternalTest>(
14,
14,
(new stdgo.testing.Testing.InternalTest(("TestConstants" : GoString), stdgo.unicode.utf8_test.Utf8_test.testConstants) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFullRune" : GoString), stdgo.unicode.utf8_test.Utf8_test.testFullRune) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEncodeRune" : GoString), stdgo.unicode.utf8_test.Utf8_test.testEncodeRune) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAppendRune" : GoString), stdgo.unicode.utf8_test.Utf8_test.testAppendRune) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecodeRune" : GoString), stdgo.unicode.utf8_test.Utf8_test.testDecodeRune) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecodeSurrogateRune" : GoString), stdgo.unicode.utf8_test.Utf8_test.testDecodeSurrogateRune) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSequencing" : GoString), stdgo.unicode.utf8_test.Utf8_test.testSequencing) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRuntimeConversion" : GoString), stdgo.unicode.utf8_test.Utf8_test.testRuntimeConversion) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecodeInvalidSequence" : GoString), stdgo.unicode.utf8_test.Utf8_test.testDecodeInvalidSequence) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNegativeRune" : GoString), stdgo.unicode.utf8_test.Utf8_test.testNegativeRune) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRuneCount" : GoString), stdgo.unicode.utf8_test.Utf8_test.testRuneCount) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRuneLen" : GoString), stdgo.unicode.utf8_test.Utf8_test.testRuneLen) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestValid" : GoString), stdgo.unicode.utf8_test.Utf8_test.testValid) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestValidRune" : GoString), stdgo.unicode.utf8_test.Utf8_test.testValidRune) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
private var _benchmarks = (new Slice<stdgo.testing.Testing.InternalBenchmark>(
21,
21,
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRuneCountTenASCIIChars" : GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkRuneCountTenASCIIChars) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRuneCountTenJapaneseChars" : GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkRuneCountTenJapaneseChars) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRuneCountInStringTenASCIIChars" : GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkRuneCountInStringTenASCIIChars) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRuneCountInStringTenJapaneseChars" : GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkRuneCountInStringTenJapaneseChars) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkValidTenASCIIChars" : GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkValidTenASCIIChars) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkValid100KASCIIChars" : GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkValid100KASCIIChars) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkValidTenJapaneseChars" : GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkValidTenJapaneseChars) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkValidLongMostlyASCII" : GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkValidLongMostlyASCII) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkValidLongJapanese" : GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkValidLongJapanese) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkValidStringTenASCIIChars" : GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkValidStringTenASCIIChars) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkValidString100KASCIIChars" : GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkValidString100KASCIIChars) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkValidStringTenJapaneseChars" : GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkValidStringTenJapaneseChars) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkValidStringLongMostlyASCII" : GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkValidStringLongMostlyASCII) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkValidStringLongJapanese" : GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkValidStringLongJapanese) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkEncodeASCIIRune" : GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkEncodeASCIIRune) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkEncodeJapaneseRune" : GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkEncodeJapaneseRune) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAppendASCIIRune" : GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkAppendASCIIRune) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAppendJapaneseRune" : GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkAppendJapaneseRune) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDecodeASCIIRune" : GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkDecodeASCIIRune) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDecodeJapaneseRune" : GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkDecodeJapaneseRune) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkFullRune" : GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkFullRune) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
private var _fuzzTargets = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
private var _examples = (new Slice<stdgo.testing.Testing.InternalExample>(
16,
16,
(new stdgo.testing.Testing.InternalExample(("ExampleDecodeLastRune" : GoString), stdgo.unicode.utf8_test.Utf8_test.exampleDecodeLastRune, ("界 3\n世 3\n  1\n, 1\no 1\nl 1\nl 1\ne 1\nH 1\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleDecodeLastRuneInString" : GoString), stdgo.unicode.utf8_test.Utf8_test.exampleDecodeLastRuneInString, ("界 3\n世 3\n  1\n, 1\no 1\nl 1\nl 1\ne 1\nH 1\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleDecodeRune" : GoString), stdgo.unicode.utf8_test.Utf8_test.exampleDecodeRune, ("H 1\ne 1\nl 1\nl 1\no 1\n, 1\n  1\n世 3\n界 3\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleDecodeRuneInString" : GoString), stdgo.unicode.utf8_test.Utf8_test.exampleDecodeRuneInString, ("H 1\ne 1\nl 1\nl 1\no 1\n, 1\n  1\n世 3\n界 3\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleEncodeRune" : GoString), stdgo.unicode.utf8_test.Utf8_test.exampleEncodeRune, ("[228 184 150]\n3\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleEncodeRune_outOfRange" : GoString), stdgo.unicode.utf8_test.Utf8_test.exampleEncodeRune_outOfRange, ("0: [239 191 189] � 3\n1: [239 191 189] � 3\n2: [239 191 189] � 3\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleFullRune" : GoString), stdgo.unicode.utf8_test.Utf8_test.exampleFullRune, ("true\nfalse\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleFullRuneInString" : GoString), stdgo.unicode.utf8_test.Utf8_test.exampleFullRuneInString, ("true\nfalse\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRuneCount" : GoString), stdgo.unicode.utf8_test.Utf8_test.exampleRuneCount, ("bytes = 13\nrunes = 9\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRuneCountInString" : GoString), stdgo.unicode.utf8_test.Utf8_test.exampleRuneCountInString, ("bytes = 13\nrunes = 9\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRuneLen" : GoString), stdgo.unicode.utf8_test.Utf8_test.exampleRuneLen, ("1\n3\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRuneStart" : GoString), stdgo.unicode.utf8_test.Utf8_test.exampleRuneStart, ("true\ntrue\nfalse\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleValid" : GoString), stdgo.unicode.utf8_test.Utf8_test.exampleValid, ("true\nfalse\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleValidRune" : GoString), stdgo.unicode.utf8_test.Utf8_test.exampleValidRune, ("true\nfalse\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleValidString" : GoString), stdgo.unicode.utf8_test.Utf8_test.exampleValidString, ("true\nfalse\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleAppendRune" : GoString), stdgo.unicode.utf8_test.Utf8_test.exampleAppendRune, ("𐀀\ninit𐀀\n" : GoString), false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);
private function main():Void {
        var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("unicode/utf8" : GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
