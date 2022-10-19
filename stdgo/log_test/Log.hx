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

private var _tests:Slice<stdgo.testing.Testing.InternalTest> = (new Slice<stdgo.testing.Testing.InternalTest>(0, 0,
	(new stdgo.testing.Testing.InternalTest(Go.str("TestDefault"), stdgo.log.Log.testDefault) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestAll"), stdgo.log.Log.testAll) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestOutput"), stdgo.log.Log.testOutput) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestOutputRace"), stdgo.log.Log.testOutputRace) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestFlagAndPrefixSetting"), stdgo.log.Log.testFlagAndPrefixSetting) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestUTCFlag"), stdgo.log.Log.testUTCFlag) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestEmptyPrintCreatesLine"),
		stdgo.log.Log.testEmptyPrintCreatesLine) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestDiscard"),
		stdgo.log.Log.testDiscard) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);

private var _benchmarks:Slice<stdgo.testing.Testing.InternalBenchmark> = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0,
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkItoa"), stdgo.log.Log.benchmarkItoa) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkPrintln"), stdgo.log.Log.benchmarkPrintln) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkPrintlnNoFlags"),
		stdgo.log.Log.benchmarkPrintlnNoFlags) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);

private var _fuzzTargets:Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0,
	0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);

private var _examples:Slice<stdgo.testing.Testing.InternalExample> = (new Slice<stdgo.testing.Testing.InternalExample>(0, 0,
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleLogger"), stdgo.log_test.Log_test.exampleLogger,
		Go.str("logger: example_test.go:19: Hello, log file!\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleLogger_Output"), stdgo.log_test.Log_test.exampleLogger_Output,
		Go.str("INFO: example_test.go:36: Hello world\n"), false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);

function main():Void {
	var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)),
		_tests, _benchmarks,
		_fuzzTargets, _examples);
	Sys.exit(_m.run());
}

@:keep var _ = {
	try {
		stdgo.testing.internal.testdeps.Testdeps.importPath = Go.str("log");
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};
