package stdgo.crypto.rand_test;

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
	(new stdgo.testing.Testing.InternalTest(("TestRead" : GoString), stdgo.crypto.rand.Rand.testRead) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestReadEmpty" : GoString), stdgo.crypto.rand.Rand.testReadEmpty) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestPrimeSmall" : GoString),
		stdgo.crypto.rand_test.Rand_test.testPrimeSmall) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestPrimeBitsLt2" : GoString),
		stdgo.crypto.rand_test.Rand_test.testPrimeBitsLt2) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestPrimeNondeterministic" : GoString),
		stdgo.crypto.rand_test.Rand_test.testPrimeNondeterministic) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestInt" : GoString), stdgo.crypto.rand_test.Rand_test.testInt) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIntReads" : GoString), stdgo.crypto.rand_test.Rand_test.testIntReads) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIntMask" : GoString), stdgo.crypto.rand_test.Rand_test.testIntMask) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIntEmptyMaxPanics" : GoString),
		stdgo.crypto.rand_test.Rand_test.testIntEmptyMaxPanics) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIntNegativeMaxPanics" : GoString),
		stdgo.crypto.rand_test.Rand_test.testIntNegativeMaxPanics) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);

private var _benchmarks:Slice<stdgo.testing.Testing.InternalBenchmark> = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0,
	(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkPrime" : GoString),
		stdgo.crypto.rand_test.Rand_test.benchmarkPrime) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);

private var _fuzzTargets:Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0,
	0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);

private var _examples:Slice<stdgo.testing.Testing.InternalExample> = (new Slice<stdgo.testing.Testing.InternalExample>(0, 0,
	(new stdgo.testing.Testing.InternalExample(("ExampleRead" : GoString), stdgo.crypto.rand_test.Rand_test.exampleRead, ("false\n" : GoString),
		false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);

private function main():Void {
	var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)),
		_tests, _benchmarks,
		_fuzzTargets, _examples);
	Sys.exit(_m.run());
}

@:keep var _ = {
	try {
		stdgo.testing.internal.testdeps.Testdeps.importPath = ("crypto/rand" : GoString);
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};
