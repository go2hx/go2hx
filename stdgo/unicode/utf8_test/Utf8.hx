package stdgo.unicode.utf8_test;
import stdgo.unicode.utf8.Utf8;
import stdgo.unicode.utf8.Utf8;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(
14,
14,
(new stdgo.testing.Testing.InternalTest(("TestConstants" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.testConstants) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFullRune" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.testFullRune) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEncodeRune" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.testEncodeRune) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAppendRune" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.testAppendRune) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecodeRune" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.testDecodeRune) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecodeSurrogateRune" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.testDecodeSurrogateRune) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSequencing" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.testSequencing) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRuntimeConversion" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.testRuntimeConversion) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecodeInvalidSequence" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.testDecodeInvalidSequence) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNegativeRune" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.testNegativeRune) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRuneCount" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.testRuneCount) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRuneLen" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.testRuneLen) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestValid" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.testValid) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestValidRune" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.testValidRune) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(
21,
21,
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRuneCountTenASCIIChars" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkRuneCountTenASCIIChars) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRuneCountTenJapaneseChars" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkRuneCountTenJapaneseChars) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRuneCountInStringTenASCIIChars" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkRuneCountInStringTenASCIIChars) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRuneCountInStringTenJapaneseChars" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkRuneCountInStringTenJapaneseChars) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkValidTenASCIIChars" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkValidTenASCIIChars) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkValid100KASCIIChars" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkValid100KASCIIChars) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkValidTenJapaneseChars" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkValidTenJapaneseChars) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkValidLongMostlyASCII" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkValidLongMostlyASCII) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkValidLongJapanese" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkValidLongJapanese) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkValidStringTenASCIIChars" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkValidStringTenASCIIChars) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkValidString100KASCIIChars" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkValidString100KASCIIChars) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkValidStringTenJapaneseChars" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkValidStringTenJapaneseChars) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkValidStringLongMostlyASCII" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkValidStringLongMostlyASCII) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkValidStringLongJapanese" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkValidStringLongJapanese) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkEncodeASCIIRune" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkEncodeASCIIRune) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkEncodeJapaneseRune" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkEncodeJapaneseRune) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAppendASCIIRune" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkAppendASCIIRune) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAppendJapaneseRune" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkAppendJapaneseRune) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDecodeASCIIRune" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkDecodeASCIIRune) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDecodeJapaneseRune" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkDecodeJapaneseRune) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkFullRune" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.benchmarkFullRune) : stdgo.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
var _fuzzTargets : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo.testing.Testing.InternalExample>(
16,
16,
(new stdgo.testing.Testing.InternalExample(("ExampleDecodeLastRune" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.exampleDecodeLastRune, ("界 3\n世 3\n  1\n, 1\no 1\nl 1\nl 1\ne 1\nH 1\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleDecodeLastRuneInString" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.exampleDecodeLastRuneInString, ("界 3\n世 3\n  1\n, 1\no 1\nl 1\nl 1\ne 1\nH 1\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleDecodeRune" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.exampleDecodeRune, ("H 1\ne 1\nl 1\nl 1\no 1\n, 1\n  1\n世 3\n界 3\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleDecodeRuneInString" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.exampleDecodeRuneInString, ("H 1\ne 1\nl 1\nl 1\no 1\n, 1\n  1\n世 3\n界 3\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleEncodeRune" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.exampleEncodeRune, ("[228 184 150]\n3\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleEncodeRune_outOfRange" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.exampleEncodeRune_outOfRange, ("0: [239 191 189] � 3\n1: [239 191 189] � 3\n2: [239 191 189] � 3\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleFullRune" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.exampleFullRune, ("true\nfalse\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleFullRuneInString" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.exampleFullRuneInString, ("true\nfalse\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRuneCount" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.exampleRuneCount, ("bytes = 13\nrunes = 9\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRuneCountInString" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.exampleRuneCountInString, ("bytes = 13\nrunes = 9\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRuneLen" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.exampleRuneLen, ("1\n3\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRuneStart" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.exampleRuneStart, ("true\ntrue\nfalse\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleValid" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.exampleValid, ("true\nfalse\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleValidRune" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.exampleValidRune, ("true\nfalse\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleValidString" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.exampleValidString, ("true\nfalse\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleAppendRune" : stdgo.GoString), stdgo.unicode.utf8_test.Utf8_test.exampleAppendRune, ("𐀀\ninit𐀀\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample)) : stdgo.Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("unicode/utf8" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
