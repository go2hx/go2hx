package stdgo.go.token_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
import stdgo.go.token.Token;
/**
    
    
    
**/
private var _tests = (new Slice<stdgo.testing.Testing.InternalTest>(
0,
0,
(new stdgo.testing.Testing.InternalTest(("TestNoPos" : GoString), stdgo.go.token.Token.testNoPos) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPositions" : GoString), stdgo.go.token.Token.testPositions) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLineInfo" : GoString), stdgo.go.token.Token.testLineInfo) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFiles" : GoString), stdgo.go.token.Token.testFiles) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFileSetPastEnd" : GoString), stdgo.go.token.Token.testFileSetPastEnd) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFileSetCacheUnlikely" : GoString), stdgo.go.token.Token.testFileSetCacheUnlikely) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFileSetRace" : GoString), stdgo.go.token.Token.testFileSetRace) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFileSetRace2" : GoString), stdgo.go.token.Token.testFileSetRace2) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPositionFor" : GoString), stdgo.go.token.Token.testPositionFor) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLineStart" : GoString), stdgo.go.token.Token.testLineStart) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRemoveFile" : GoString), stdgo.go.token.Token.testRemoveFile) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFileAddLineColumnInfo" : GoString), stdgo.go.token.Token.testFileAddLineColumnInfo) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSerialization" : GoString), stdgo.go.token.Token.testSerialization) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIsIdentifier" : GoString), stdgo.go.token.Token.testIsIdentifier) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
private var _benchmarks = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0, (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSearchInts" : GoString), stdgo.go.token.Token.benchmarkSearchInts) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
private var _fuzzTargets = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
private var _examples = (new Slice<stdgo.testing.Testing.InternalExample>(0, 0, (new stdgo.testing.Testing.InternalExample(("Example_retrievePositionInfo" : GoString), stdgo.go.token_test.Token_test.example_retrievePositionInfo, ("\nmain.go:3:1: import\nmain.go:5:1: import\nmain.go:1:5[main.go:8:1]: type\nmain.go:3:1[main.go:10:1]: const\nfake.go:42:11[main.go:13:1]: func\nfake.go:7:9[main.go:17:14]: func\n" : GoString), false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);
private function main():Void {
        var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("go/token" : GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
