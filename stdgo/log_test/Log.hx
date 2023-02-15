package stdgo.log_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
/**
    
    
    
**/
private var _tests = (new Slice<stdgo.testing.Testing.InternalTest>(0, 0, (new stdgo.testing.Testing.InternalTest(("TestDefault" : GoString), stdgo.log.Log.testDefault) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestAll" : GoString), stdgo.log.Log.testAll) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestOutput" : GoString), stdgo.log.Log.testOutput) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestOutputRace" : GoString), stdgo.log.Log.testOutputRace) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestFlagAndPrefixSetting" : GoString), stdgo.log.Log.testFlagAndPrefixSetting) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestUTCFlag" : GoString), stdgo.log.Log.testUTCFlag) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestEmptyPrintCreatesLine" : GoString), stdgo.log.Log.testEmptyPrintCreatesLine) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestDiscard" : GoString), stdgo.log.Log.testDiscard) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
private var _benchmarks = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0, (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkItoa" : GoString), stdgo.log.Log.benchmarkItoa) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkPrintln" : GoString), stdgo.log.Log.benchmarkPrintln) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkPrintlnNoFlags" : GoString), stdgo.log.Log.benchmarkPrintlnNoFlags) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
private var _fuzzTargets = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
private var _examples = (new Slice<stdgo.testing.Testing.InternalExample>(0, 0, (new stdgo.testing.Testing.InternalExample(("ExampleLogger" : GoString), stdgo.log_test.Log_test.exampleLogger, ("logger: example_test.go:19: Hello, log file!\n" : GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleLogger_Output" : GoString), stdgo.log_test.Log_test.exampleLogger_Output, ("INFO: example_test.go:36: Hello world\n" : GoString), false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);
private function main():Void {
        var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("log" : GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
