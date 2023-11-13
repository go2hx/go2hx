package stdgo.go.token_test;
import stdgo.go.token.Token;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(
14,
14,
(new stdgo.testing.Testing.InternalTest(("TestNoPos" : stdgo.GoString)?.__copy__(), stdgo.go.token.Token.testNoPos) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPositions" : stdgo.GoString)?.__copy__(), stdgo.go.token.Token.testPositions) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLineInfo" : stdgo.GoString)?.__copy__(), stdgo.go.token.Token.testLineInfo) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFiles" : stdgo.GoString)?.__copy__(), stdgo.go.token.Token.testFiles) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFileSetPastEnd" : stdgo.GoString)?.__copy__(), stdgo.go.token.Token.testFileSetPastEnd) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFileSetCacheUnlikely" : stdgo.GoString)?.__copy__(), stdgo.go.token.Token.testFileSetCacheUnlikely) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFileSetRace" : stdgo.GoString)?.__copy__(), stdgo.go.token.Token.testFileSetRace) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFileSetRace2" : stdgo.GoString)?.__copy__(), stdgo.go.token.Token.testFileSetRace2) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPositionFor" : stdgo.GoString)?.__copy__(), stdgo.go.token.Token.testPositionFor) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLineStart" : stdgo.GoString)?.__copy__(), stdgo.go.token.Token.testLineStart) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRemoveFile" : stdgo.GoString)?.__copy__(), stdgo.go.token.Token.testRemoveFile) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFileAddLineColumnInfo" : stdgo.GoString)?.__copy__(), stdgo.go.token.Token.testFileAddLineColumnInfo) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSerialization" : stdgo.GoString)?.__copy__(), stdgo.go.token.Token.testSerialization) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIsIdentifier" : stdgo.GoString)?.__copy__(), stdgo.go.token.Token.testIsIdentifier) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(1, 1, (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSearchInts" : stdgo.GoString)?.__copy__(), stdgo.go.token.Token.benchmarkSearchInts) : stdgo.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
var _fuzzTargets : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo.testing.Testing.InternalExample>(1, 1, (new stdgo.testing.Testing.InternalExample(("Example_retrievePositionInfo" : stdgo.GoString)?.__copy__(), stdgo.go.token_test.Token_test.example_retrievePositionInfo, ("\nmain.go:3:1: import\nmain.go:5:1: import\nmain.go:1:5[main.go:8:1]: type\nmain.go:3:1[main.go:10:1]: const\nfake.go:42:11[main.go:13:1]: func\nfake.go:7:9[main.go:17:14]: func\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample)) : stdgo.Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("go/token" : stdgo.GoString)?.__copy__();
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
