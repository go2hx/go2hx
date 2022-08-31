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
var _tests : Slice<stdgo.testing.Testing.InternalTest> = (new Slice<stdgo.testing.Testing.InternalTest>(0, 0, (new stdgo.testing.Testing.InternalTest((Go.str("TestConstants") : GoString), stdgo.unicode.utf16_test.Utf16_test.testConstants) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest((Go.str("TestEncode") : GoString), stdgo.unicode.utf16_test.Utf16_test.testEncode) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest((Go.str("TestEncodeRune") : GoString), stdgo.unicode.utf16_test.Utf16_test.testEncodeRune) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest((Go.str("TestDecode") : GoString), stdgo.unicode.utf16_test.Utf16_test.testDecode) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest((Go.str("TestDecodeRune") : GoString), stdgo.unicode.utf16_test.Utf16_test.testDecodeRune) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest((Go.str("TestIsSurrogate") : GoString), stdgo.unicode.utf16_test.Utf16_test.testIsSurrogate) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);
var _benchmarks : Slice<stdgo.testing.Testing.InternalBenchmark> = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0, (new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkDecodeValidASCII") : GoString), stdgo.unicode.utf16_test.Utf16_test.benchmarkDecodeValidASCII) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkDecodeValidJapaneseChars") : GoString), stdgo.unicode.utf16_test.Utf16_test.benchmarkDecodeValidJapaneseChars) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkDecodeRune") : GoString), stdgo.unicode.utf16_test.Utf16_test.benchmarkDecodeRune) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkEncodeValidASCII") : GoString), stdgo.unicode.utf16_test.Utf16_test.benchmarkEncodeValidASCII) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkEncodeValidJapaneseChars") : GoString), stdgo.unicode.utf16_test.Utf16_test.benchmarkEncodeValidJapaneseChars) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkEncodeRune") : GoString), stdgo.unicode.utf16_test.Utf16_test.benchmarkEncodeRune) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);
var _fuzzTargets : Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);
var _examples : Slice<stdgo.testing.Testing.InternalExample> = (new Slice<stdgo.testing.Testing.InternalExample>(0, 0) : Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart({
            final __self__ = new stdgo.testing.internal.testdeps.Testdeps.TestDeps_wrapper((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps));
            __self__.checkCorpus = #if !macro function(__0:Slice<AnyInterface>, __1:Slice<stdgo.reflect.Reflect.Type>):stdgo.Error return (new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).checkCorpus(__0, __1) #else null #end;
            __self__.coordinateFuzzing = #if !macro function(__0:stdgo.time.Time.Duration, __1:GoInt64, __2:stdgo.time.Time.Duration, __3:GoInt64, __4:GoInt, __5:Slice<{ var parent : GoString; var path : GoString; var data : Slice<GoUInt8>; var values : Slice<AnyInterface>; var generation : GoInt; var isSeed : Bool; }>, __6:Slice<stdgo.reflect.Reflect.Type>, __7:GoString, __8:GoString):stdgo.Error return (new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).coordinateFuzzing(__0, __1, __2, __3, __4, __5, __6, __7, __8) #else null #end;
            __self__.importPath = #if !macro function():GoString return (new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).importPath() #else null #end;
            __self__.matchString = #if !macro function(_key:GoString, _value:GoString):{ var _0 : Bool; var _1 : stdgo.Error; } return (new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).matchString(_key, _value) #else null #end;
            __self__.readCorpus = #if !macro function(__0:GoString, __1:Slice<stdgo.reflect.Reflect.Type>):{ var _0 : Slice<{ var parent : GoString; var path : GoString; var data : Slice<GoUInt8>; var values : Slice<AnyInterface>; var generation : GoInt; var isSeed : Bool; }>; var _1 : stdgo.Error; } return (new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).readCorpus(__0, __1) #else null #end;
            __self__.resetCoverage = #if !macro function():Void (new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).resetCoverage() #else null #end;
            __self__.runFuzzWorker = #if !macro function(__0:({ var parent : GoString; var path : GoString; var data : Slice<GoUInt8>; var values : Slice<AnyInterface>; var generation : GoInt; var isSeed : Bool; }) -> stdgo.Error):stdgo.Error return (new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).runFuzzWorker(__0) #else null #end;
            __self__.setPanicOnExit0 = #if !macro function(__0:Bool):Void (new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).setPanicOnExit0(__0) #else null #end;
            __self__.snapshotCoverage = #if !macro function():Void (new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).snapshotCoverage() #else null #end;
            __self__.startCPUProfile = #if !macro function(__0:stdgo.io.Io.Writer):stdgo.Error return (new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).startCPUProfile(__0) #else null #end;
            __self__.startTestLog = #if !macro function(__0:stdgo.io.Io.Writer):Void (new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).startTestLog(__0) #else null #end;
            __self__.stopCPUProfile = #if !macro function():Void (new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).stopCPUProfile() #else null #end;
            __self__.stopTestLog = #if !macro function():stdgo.Error return (new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).stopTestLog() #else null #end;
            __self__.writeProfileTo = #if !macro function(__0:GoString, __1:stdgo.io.Io.Writer, __2:GoInt):stdgo.Error return (new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).writeProfileTo(__0, __1, __2) #else null #end;
            __self__;
        }, _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = (Go.str("unicode/utf16") : GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
