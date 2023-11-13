package stdgo.os.exec_test;
import stdgo.os.exec.Exec;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(
32,
32,
(new stdgo.testing.Testing.InternalTest(("TestDedupEnv" : stdgo.GoString)?.__copy__(), stdgo.os.exec.Exec.testDedupEnv) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPrefixSuffixSaver" : stdgo.GoString)?.__copy__(), stdgo.os.exec.Exec.testPrefixSuffixSaver) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLookPathNotFound" : stdgo.GoString)?.__copy__(), stdgo.os.exec.Exec.testLookPathNotFound) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLookPath" : stdgo.GoString)?.__copy__(), stdgo.os.exec_test.Exec_test.testLookPath) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEcho" : stdgo.GoString)?.__copy__(), stdgo.os.exec_test.Exec_test.testEcho) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCommandRelativeName" : stdgo.GoString)?.__copy__(), stdgo.os.exec_test.Exec_test.testCommandRelativeName) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCatStdin" : stdgo.GoString)?.__copy__(), stdgo.os.exec_test.Exec_test.testCatStdin) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEchoFileRace" : stdgo.GoString)?.__copy__(), stdgo.os.exec_test.Exec_test.testEchoFileRace) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCatGoodAndBadFile" : stdgo.GoString)?.__copy__(), stdgo.os.exec_test.Exec_test.testCatGoodAndBadFile) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNoExistExecutable" : stdgo.GoString)?.__copy__(), stdgo.os.exec_test.Exec_test.testNoExistExecutable) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestExitStatus" : stdgo.GoString)?.__copy__(), stdgo.os.exec_test.Exec_test.testExitStatus) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestExitCode" : stdgo.GoString)?.__copy__(), stdgo.os.exec_test.Exec_test.testExitCode) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPipes" : stdgo.GoString)?.__copy__(), stdgo.os.exec_test.Exec_test.testPipes) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStdinClose" : stdgo.GoString)?.__copy__(), stdgo.os.exec_test.Exec_test.testStdinClose) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStdinCloseRace" : stdgo.GoString)?.__copy__(), stdgo.os.exec_test.Exec_test.testStdinCloseRace) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPipeLookPathLeak" : stdgo.GoString)?.__copy__(), stdgo.os.exec_test.Exec_test.testPipeLookPathLeak) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestExtraFiles" : stdgo.GoString)?.__copy__(), stdgo.os.exec_test.Exec_test.testExtraFiles) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestExtraFilesRace" : stdgo.GoString)?.__copy__(), stdgo.os.exec_test.Exec_test.testExtraFilesRace) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIgnorePipeErrorOnSuccess" : stdgo.GoString)?.__copy__(), stdgo.os.exec_test.Exec_test.testIgnorePipeErrorOnSuccess) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestClosePipeOnCopyError" : stdgo.GoString)?.__copy__(), stdgo.os.exec_test.Exec_test.testClosePipeOnCopyError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOutputStderrCapture" : stdgo.GoString)?.__copy__(), stdgo.os.exec_test.Exec_test.testOutputStderrCapture) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestContext" : stdgo.GoString)?.__copy__(), stdgo.os.exec_test.Exec_test.testContext) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestContextCancel" : stdgo.GoString)?.__copy__(), stdgo.os.exec_test.Exec_test.testContextCancel) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDedupEnvEcho" : stdgo.GoString)?.__copy__(), stdgo.os.exec_test.Exec_test.testDedupEnvEcho) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEnvNULCharacter" : stdgo.GoString)?.__copy__(), stdgo.os.exec_test.Exec_test.testEnvNULCharacter) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestString" : stdgo.GoString)?.__copy__(), stdgo.os.exec_test.Exec_test.testString) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStringPathNotResolved" : stdgo.GoString)?.__copy__(), stdgo.os.exec_test.Exec_test.testStringPathNotResolved) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNoPath" : stdgo.GoString)?.__copy__(), stdgo.os.exec_test.Exec_test.testNoPath) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDoubleStartLeavesPipesOpen" : stdgo.GoString)?.__copy__(), stdgo.os.exec_test.Exec_test.testDoubleStartLeavesPipesOpen) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWaitInterrupt" : stdgo.GoString)?.__copy__(), stdgo.os.exec_test.Exec_test.testWaitInterrupt) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCancelErrors" : stdgo.GoString)?.__copy__(), stdgo.os.exec_test.Exec_test.testCancelErrors) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestConcurrentExec" : stdgo.GoString)?.__copy__(), stdgo.os.exec_test.Exec_test.testConcurrentExec) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(1, 1, (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkExecHostname" : stdgo.GoString)?.__copy__(), stdgo.os.exec.Exec.benchmarkExecHostname) : stdgo.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
var _fuzzTargets : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo.testing.Testing.InternalExample>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        stdgo.os.exec_test.Exec_test.testMain(_m);
        Sys.exit((stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_m))).elem().fieldByName(("exitCode" : stdgo.GoString)?.__copy__()).int_() : stdgo.StdGoTypes.GoInt));
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("os/exec" : stdgo.GoString)?.__copy__();
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
