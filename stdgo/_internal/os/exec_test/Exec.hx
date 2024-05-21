package stdgo._internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
var _tests : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>(32, 32, ...[
(new stdgo._internal.testing.Testing.InternalTest(("TestDedupEnv" : stdgo.GoString), stdgo._internal.os.exec.Exec.testDedupEnv) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestPrefixSuffixSaver" : stdgo.GoString), stdgo._internal.os.exec.Exec.testPrefixSuffixSaver) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestLookPathNotFound" : stdgo.GoString), stdgo._internal.os.exec.Exec.testLookPathNotFound) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestLookPath" : stdgo.GoString), stdgo._internal.os.exec_test.Exec_test.testLookPath) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestEcho" : stdgo.GoString), stdgo._internal.os.exec_test.Exec_test.testEcho) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCommandRelativeName" : stdgo.GoString), stdgo._internal.os.exec_test.Exec_test.testCommandRelativeName) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCatStdin" : stdgo.GoString), stdgo._internal.os.exec_test.Exec_test.testCatStdin) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestEchoFileRace" : stdgo.GoString), stdgo._internal.os.exec_test.Exec_test.testEchoFileRace) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCatGoodAndBadFile" : stdgo.GoString), stdgo._internal.os.exec_test.Exec_test.testCatGoodAndBadFile) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestNoExistExecutable" : stdgo.GoString), stdgo._internal.os.exec_test.Exec_test.testNoExistExecutable) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestExitStatus" : stdgo.GoString), stdgo._internal.os.exec_test.Exec_test.testExitStatus) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestExitCode" : stdgo.GoString), stdgo._internal.os.exec_test.Exec_test.testExitCode) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestPipes" : stdgo.GoString), stdgo._internal.os.exec_test.Exec_test.testPipes) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestStdinClose" : stdgo.GoString), stdgo._internal.os.exec_test.Exec_test.testStdinClose) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestStdinCloseRace" : stdgo.GoString), stdgo._internal.os.exec_test.Exec_test.testStdinCloseRace) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestPipeLookPathLeak" : stdgo.GoString), stdgo._internal.os.exec_test.Exec_test.testPipeLookPathLeak) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestExtraFiles" : stdgo.GoString), stdgo._internal.os.exec_test.Exec_test.testExtraFiles) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestExtraFilesRace" : stdgo.GoString), stdgo._internal.os.exec_test.Exec_test.testExtraFilesRace) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestIgnorePipeErrorOnSuccess" : stdgo.GoString), stdgo._internal.os.exec_test.Exec_test.testIgnorePipeErrorOnSuccess) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestClosePipeOnCopyError" : stdgo.GoString), stdgo._internal.os.exec_test.Exec_test.testClosePipeOnCopyError) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestOutputStderrCapture" : stdgo.GoString), stdgo._internal.os.exec_test.Exec_test.testOutputStderrCapture) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestContext" : stdgo.GoString), stdgo._internal.os.exec_test.Exec_test.testContext) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestContextCancel" : stdgo.GoString), stdgo._internal.os.exec_test.Exec_test.testContextCancel) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestDedupEnvEcho" : stdgo.GoString), stdgo._internal.os.exec_test.Exec_test.testDedupEnvEcho) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestEnvNULCharacter" : stdgo.GoString), stdgo._internal.os.exec_test.Exec_test.testEnvNULCharacter) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestString" : stdgo.GoString), stdgo._internal.os.exec_test.Exec_test.testString) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestStringPathNotResolved" : stdgo.GoString), stdgo._internal.os.exec_test.Exec_test.testStringPathNotResolved) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestNoPath" : stdgo.GoString), stdgo._internal.os.exec_test.Exec_test.testNoPath) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestDoubleStartLeavesPipesOpen" : stdgo.GoString), stdgo._internal.os.exec_test.Exec_test.testDoubleStartLeavesPipesOpen) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWaitInterrupt" : stdgo.GoString), stdgo._internal.os.exec_test.Exec_test.testWaitInterrupt) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCancelErrors" : stdgo.GoString), stdgo._internal.os.exec_test.Exec_test.testCancelErrors) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestConcurrentExec" : stdgo.GoString), stdgo._internal.os.exec_test.Exec_test.testConcurrentExec) : stdgo._internal.testing.Testing.InternalTest)].concat([for (i in 32 ... (32 > 32 ? 32 : 32 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalTest)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>);
var _benchmarks : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>(1, 1, ...[(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkExecHostname" : stdgo.GoString), stdgo._internal.os.exec.Exec.benchmarkExecHostname) : stdgo._internal.testing.Testing.InternalBenchmark)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalBenchmark)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>);
var _fuzzTargets : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalFuzzTarget)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>);
var _examples : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalExample)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo._internal.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        stdgo._internal.os.exec_test.Exec_test.testMain(_m);
        Sys.exit((stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_m))).elem().fieldByName(("exitCode" : stdgo.GoString)).int_() : stdgo.GoInt));
    }
@:keep var _ = {
        try {
            stdgo._internal.testing.internal.testdeps.Testdeps.importPath = ("os/exec" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
