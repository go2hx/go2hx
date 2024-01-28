package stdgo.go.token_test;
import stdgo._internal.go.token.Token;
var _tests : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>(
14,
14,
(new stdgo._internal.testing.Testing.InternalTest(("TestNoPos" : stdgo.GoString), stdgo._internal.go.token.Token.testNoPos) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestPositions" : stdgo.GoString), stdgo._internal.go.token.Token.testPositions) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestLineInfo" : stdgo.GoString), stdgo._internal.go.token.Token.testLineInfo) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestFiles" : stdgo.GoString), stdgo._internal.go.token.Token.testFiles) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestFileSetPastEnd" : stdgo.GoString), stdgo._internal.go.token.Token.testFileSetPastEnd) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestFileSetCacheUnlikely" : stdgo.GoString), stdgo._internal.go.token.Token.testFileSetCacheUnlikely) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestFileSetRace" : stdgo.GoString), stdgo._internal.go.token.Token.testFileSetRace) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestFileSetRace2" : stdgo.GoString), stdgo._internal.go.token.Token.testFileSetRace2) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestPositionFor" : stdgo.GoString), stdgo._internal.go.token.Token.testPositionFor) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestLineStart" : stdgo.GoString), stdgo._internal.go.token.Token.testLineStart) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestRemoveFile" : stdgo.GoString), stdgo._internal.go.token.Token.testRemoveFile) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestFileAddLineColumnInfo" : stdgo.GoString), stdgo._internal.go.token.Token.testFileAddLineColumnInfo) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSerialization" : stdgo.GoString), stdgo._internal.go.token.Token.testSerialization) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestIsIdentifier" : stdgo.GoString), stdgo._internal.go.token.Token.testIsIdentifier) : stdgo._internal.testing.Testing.InternalTest)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>);
var _benchmarks : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>(1, 1, (new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkSearchInts" : stdgo.GoString), stdgo._internal.go.token.Token.benchmarkSearchInts) : stdgo._internal.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>);
var _fuzzTargets : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>);
var _examples : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>(1, 1, (new stdgo._internal.testing.Testing.InternalExample(("Example_retrievePositionInfo" : stdgo.GoString), stdgo._internal.go.token_test.Token_test.example_retrievePositionInfo, ("\nmain.go:3:1: import\nmain.go:5:1: import\nmain.go:1:5[main.go:8:1]: type\nmain.go:3:1[main.go:10:1]: const\nfake.go:42:11[main.go:13:1]: func\nfake.go:7:9[main.go:17:14]: func\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo._internal.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo._internal.testing.internal.testdeps.Testdeps.importPath = ("go/token" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
