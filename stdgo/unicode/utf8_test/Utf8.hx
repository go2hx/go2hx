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
var _tests : Slice<stdgo.testing.Testing.InternalTest> = ((new Slice<stdgo.testing.Testing.InternalTest>(
((new stdgo.testing.Testing.InternalTest(((((("TestConstants" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.testConstants) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestFullRune" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.testFullRune) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestEncodeRune" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.testEncodeRune) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestAppendRune" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.testAppendRune) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestDecodeRune" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.testDecodeRune) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestDecodeSurrogateRune" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.testDecodeSurrogateRune) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestSequencing" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.testSequencing) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestRuntimeConversion" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.testRuntimeConversion) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestDecodeInvalidSequence" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.testDecodeInvalidSequence) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestNegativeRune" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.testNegativeRune) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestRuneCount" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.testRuneCount) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestRuneLen" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.testRuneLen) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestValid" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.testValid) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestValidRune" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.testValidRune) : stdgo.testing.Testing.InternalTest))) : Slice<stdgo.testing.Testing.InternalTest>));
var _benchmarks : Slice<stdgo.testing.Testing.InternalBenchmark> = ((new Slice<stdgo.testing.Testing.InternalBenchmark>(
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkRuneCountTenASCIIChars" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.benchmarkRuneCountTenASCIIChars) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkRuneCountTenJapaneseChars" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.benchmarkRuneCountTenJapaneseChars) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkRuneCountInStringTenASCIIChars" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.benchmarkRuneCountInStringTenASCIIChars) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkRuneCountInStringTenJapaneseChars" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.benchmarkRuneCountInStringTenJapaneseChars) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkValidTenASCIIChars" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.benchmarkValidTenASCIIChars) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkValidTenJapaneseChars" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.benchmarkValidTenJapaneseChars) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkValidStringTenASCIIChars" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.benchmarkValidStringTenASCIIChars) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkValidStringTenJapaneseChars" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.benchmarkValidStringTenJapaneseChars) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkEncodeASCIIRune" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.benchmarkEncodeASCIIRune) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkEncodeJapaneseRune" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.benchmarkEncodeJapaneseRune) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkAppendASCIIRune" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.benchmarkAppendASCIIRune) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkAppendJapaneseRune" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.benchmarkAppendJapaneseRune) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkDecodeASCIIRune" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.benchmarkDecodeASCIIRune) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkDecodeJapaneseRune" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.benchmarkDecodeJapaneseRune) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkFullRune" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.benchmarkFullRune) : stdgo.testing.Testing.InternalBenchmark))) : Slice<stdgo.testing.Testing.InternalBenchmark>));
var _fuzzTargets : Slice<stdgo.testing.Testing.InternalFuzzTarget> = ((new Slice<stdgo.testing.Testing.InternalFuzzTarget>() : Slice<stdgo.testing.Testing.InternalFuzzTarget>));
var _examples : Slice<stdgo.testing.Testing.InternalExample> = ((new Slice<stdgo.testing.Testing.InternalExample>(
((new stdgo.testing.Testing.InternalExample(((((("ExampleDecodeLastRune" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.exampleDecodeLastRune, ((((("界 3\n世 3\n  1\n, 1\no 1\nl 1\nl 1\ne 1\nH 1\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleDecodeLastRuneInString" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.exampleDecodeLastRuneInString, ((((("界 3\n世 3\n  1\n, 1\no 1\nl 1\nl 1\ne 1\nH 1\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleDecodeRune" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.exampleDecodeRune, ((((("H 1\ne 1\nl 1\nl 1\no 1\n, 1\n  1\n世 3\n界 3\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleDecodeRuneInString" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.exampleDecodeRuneInString, ((((("H 1\ne 1\nl 1\nl 1\no 1\n, 1\n  1\n世 3\n界 3\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleEncodeRune" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.exampleEncodeRune, ((((("[228 184 150]\n3\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleEncodeRune_outOfRange" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.exampleEncodeRune_outOfRange, ((((("0: [239 191 189] � 3\n1: [239 191 189] � 3\n2: [239 191 189] � 3\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleFullRune" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.exampleFullRune, ((((("true\nfalse\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleFullRuneInString" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.exampleFullRuneInString, ((((("true\nfalse\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleRuneCount" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.exampleRuneCount, ((((("bytes = 13\nrunes = 9\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleRuneCountInString" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.exampleRuneCountInString, ((((("bytes = 13\nrunes = 9\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleRuneLen" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.exampleRuneLen, ((((("1\n3\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleRuneStart" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.exampleRuneStart, ((((("true\ntrue\nfalse\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleValid" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.exampleValid, ((((("true\nfalse\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleValidRune" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.exampleValidRune, ((((("true\nfalse\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleValidString" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.exampleValidString, ((((("true\nfalse\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleAppendRune" : GoString))) : GoString)), stdgo.unicode.utf8_test.Utf8_test.exampleAppendRune, ((((("𐀀\ninit𐀀\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample))) : Slice<stdgo.testing.Testing.InternalExample>));
function main():Void {
        var _m = stdgo.testing.Testing.mainStart({
            final __self__ = new stdgo.testing.internal.testdeps.Testdeps.TestDeps_wrapper(((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)));
            __self__.checkCorpus = #if !macro function(_vals:Slice<AnyInterface>, _types:Slice<stdgo.reflect.Reflect.Type>):stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).checkCorpus(_vals, _types) #else null #end;
            __self__.coordinateFuzzing = #if !macro function(_timeout:stdgo.time.Time.Duration, _limit:GoInt64, _minimizeTimeout:stdgo.time.Time.Duration, _minimizeLimit:GoInt64, _parallel:GoInt, _seed:Slice<{ var parent : GoString; var path : GoString; var data : Slice<GoUInt8>; var values : Slice<AnyInterface>; var generation : GoInt; var isSeed : Bool; }>, _types:Slice<stdgo.reflect.Reflect.Type>, _corpusDir:GoString, _cacheDir:GoString):stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).coordinateFuzzing(_timeout, _limit, _minimizeTimeout, _minimizeLimit, _parallel, _seed, _types, _corpusDir, _cacheDir) #else null #end;
            __self__.importPath = #if !macro function():GoString return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).importPath() #else null #end;
            __self__.matchString = #if !macro function(_pat:GoString, _str:GoString):{ var _0 : Bool; var _1 : stdgo.Error; } return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).matchString(_pat, _str) #else null #end;
            __self__.readCorpus = #if !macro function(_dir:GoString, _types:Slice<stdgo.reflect.Reflect.Type>):{ var _0 : Slice<{ var parent : GoString; var path : GoString; var data : Slice<GoUInt8>; var values : Slice<AnyInterface>; var generation : GoInt; var isSeed : Bool; }>; var _1 : stdgo.Error; } return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).readCorpus(_dir, _types) #else null #end;
            __self__.resetCoverage = #if !macro function():Void ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).resetCoverage() #else null #end;
            __self__.runFuzzWorker = #if !macro function(_fn:({ var parent : GoString; var path : GoString; var data : Slice<GoUInt8>; var values : Slice<AnyInterface>; var generation : GoInt; var isSeed : Bool; }) -> stdgo.Error):stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).runFuzzWorker(_fn) #else null #end;
            __self__.setPanicOnExit0 = #if !macro function(_v:Bool):Void ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).setPanicOnExit0(_v) #else null #end;
            __self__.snapshotCoverage = #if !macro function():Void ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).snapshotCoverage() #else null #end;
            __self__.startCPUProfile = #if !macro function(_w:stdgo.io.Io.Writer):stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).startCPUProfile(_w) #else null #end;
            __self__.startTestLog = #if !macro function(_w:stdgo.io.Io.Writer):Void ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).startTestLog(_w) #else null #end;
            __self__.stopCPUProfile = #if !macro function():Void ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).stopCPUProfile() #else null #end;
            __self__.stopTestLog = #if !macro function():stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).stopTestLog() #else null #end;
            __self__.writeProfileTo = #if !macro function(_name:GoString, _w:stdgo.io.Io.Writer, _debug:GoInt):stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).writeProfileTo(_name, _w, _debug) #else null #end;
            __self__;
        }, _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ((((("unicode/utf8" : GoString))) : GoString));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
