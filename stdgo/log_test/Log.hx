package stdgo.log_test;
import stdgo.log.Log;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(
9,
9,
(new stdgo.testing.Testing.InternalTest(("TestDefault" : stdgo.GoString)?.__copy__(), stdgo.log.Log.testDefault) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAll" : stdgo.GoString)?.__copy__(), stdgo.log.Log.testAll) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOutput" : stdgo.GoString)?.__copy__(), stdgo.log.Log.testOutput) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNonNewLogger" : stdgo.GoString)?.__copy__(), stdgo.log.Log.testNonNewLogger) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOutputRace" : stdgo.GoString)?.__copy__(), stdgo.log.Log.testOutputRace) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFlagAndPrefixSetting" : stdgo.GoString)?.__copy__(), stdgo.log.Log.testFlagAndPrefixSetting) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUTCFlag" : stdgo.GoString)?.__copy__(), stdgo.log.Log.testUTCFlag) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEmptyPrintCreatesLine" : stdgo.GoString)?.__copy__(), stdgo.log.Log.testEmptyPrintCreatesLine) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDiscard" : stdgo.GoString)?.__copy__(), stdgo.log.Log.testDiscard) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(5, 5, (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkItoa" : stdgo.GoString)?.__copy__(), stdgo.log.Log.benchmarkItoa) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkPrintln" : stdgo.GoString)?.__copy__(), stdgo.log.Log.benchmarkPrintln) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkPrintlnNoFlags" : stdgo.GoString)?.__copy__(), stdgo.log.Log.benchmarkPrintlnNoFlags) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkConcurrent" : stdgo.GoString)?.__copy__(), stdgo.log.Log.benchmarkConcurrent) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDiscard" : stdgo.GoString)?.__copy__(), stdgo.log.Log.benchmarkDiscard) : stdgo.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
var _fuzzTargets : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo.testing.Testing.InternalExample>(2, 2, (new stdgo.testing.Testing.InternalExample(("ExampleLogger" : stdgo.GoString)?.__copy__(), stdgo.log_test.Log_test.exampleLogger, ("logger: example_test.go:19: Hello, log file!\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleLogger_Output" : stdgo.GoString)?.__copy__(), stdgo.log_test.Log_test.exampleLogger_Output, ("INFO: example_test.go:36: Hello world\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample)) : stdgo.Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("log" : stdgo.GoString)?.__copy__();
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
