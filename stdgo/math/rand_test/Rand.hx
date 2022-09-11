package stdgo.math.rand_test;

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
	(new stdgo.testing.Testing.InternalTest((Go.str("TestConcurrent") : GoString),
		stdgo.math.rand_test.Rand_test.testConcurrent) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestStandardNormalValues") : GoString),
		stdgo.math.rand_test.Rand_test.testStandardNormalValues) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestNonStandardNormalValues") : GoString),
		stdgo.math.rand_test.Rand_test.testNonStandardNormalValues) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestStandardExponentialValues") : GoString),
		stdgo.math.rand_test.Rand_test.testStandardExponentialValues) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestNonStandardExponentialValues") : GoString),
		stdgo.math.rand_test.Rand_test.testNonStandardExponentialValues) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestNormTables") : GoString),
		stdgo.math.rand_test.Rand_test.testNormTables) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestExpTables") : GoString),
		stdgo.math.rand_test.Rand_test.testExpTables) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestFloat32") : GoString),
		stdgo.math.rand_test.Rand_test.testFloat32) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestReadUniformity") : GoString),
		stdgo.math.rand_test.Rand_test.testReadUniformity) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestReadEmpty") : GoString),
		stdgo.math.rand_test.Rand_test.testReadEmpty) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestReadByOneByte") : GoString),
		stdgo.math.rand_test.Rand_test.testReadByOneByte) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestReadSeedReset") : GoString),
		stdgo.math.rand_test.Rand_test.testReadSeedReset) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestShuffleSmall") : GoString),
		stdgo.math.rand_test.Rand_test.testShuffleSmall) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestUniformFactorial") : GoString),
		stdgo.math.rand_test.Rand_test.testUniformFactorial) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestRegress") : GoString),
		stdgo.math.rand_test.Rand_test.testRegress) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);

private var _benchmarks:Slice<stdgo.testing.Testing.InternalBenchmark> = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0,
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkInt63Threadsafe") : GoString),
		stdgo.math.rand_test.Rand_test.benchmarkInt63Threadsafe) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkInt63ThreadsafeParallel") : GoString),
		stdgo.math.rand_test.Rand_test.benchmarkInt63ThreadsafeParallel) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkInt63Unthreadsafe") : GoString),
		stdgo.math.rand_test.Rand_test.benchmarkInt63Unthreadsafe) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkIntn1000") : GoString),
		stdgo.math.rand_test.Rand_test.benchmarkIntn1000) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkInt63n1000") : GoString),
		stdgo.math.rand_test.Rand_test.benchmarkInt63n1000) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkInt31n1000") : GoString),
		stdgo.math.rand_test.Rand_test.benchmarkInt31n1000) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkFloat32") : GoString),
		stdgo.math.rand_test.Rand_test.benchmarkFloat32) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkFloat64") : GoString),
		stdgo.math.rand_test.Rand_test.benchmarkFloat64) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkPerm3") : GoString),
		stdgo.math.rand_test.Rand_test.benchmarkPerm3) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkPerm30") : GoString),
		stdgo.math.rand_test.Rand_test.benchmarkPerm30) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkPerm30ViaShuffle") : GoString),
		stdgo.math.rand_test.Rand_test.benchmarkPerm30ViaShuffle) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkShuffleOverhead") : GoString),
		stdgo.math.rand_test.Rand_test.benchmarkShuffleOverhead) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkRead3") : GoString),
		stdgo.math.rand_test.Rand_test.benchmarkRead3) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkRead64") : GoString),
		stdgo.math.rand_test.Rand_test.benchmarkRead64) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkRead1000") : GoString),
		stdgo.math.rand_test.Rand_test.benchmarkRead1000) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);

private var _fuzzTargets:Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0,
	0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);

private var _examples:Slice<stdgo.testing.Testing.InternalExample> = (new Slice<stdgo.testing.Testing.InternalExample>(0, 0,
	(new stdgo.testing.Testing.InternalExample((Go.str("Example") : GoString), stdgo.math.rand_test.Rand_test.example,
		(Go.str("Magic 8-Ball says: As I see it yes\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("Example_rand") : GoString), stdgo.math.rand_test.Rand_test.example_rand,
		(Go.str("Float32     0.2635776           0.6358173           0.6718283\nFloat64     0.628605430454327   0.4504798828572669  0.9562755949377957\nExpFloat64  0.3362240648200941  1.4256072328483647  0.24354758816173044\nNormFloat64 0.17233959114940064 1.577014951434847   0.04259129641113857\nInt31       1501292890          1486668269          182840835\nInt63       3546343826724305832 5724354148158589552 5239846799706671610\nUint32      2760229429          296659907           1922395059\nIntn(10)    1                   2                   5\nInt31n(10)  4                   7                   8\nInt63n(10)  7                   6                   3\nPerm        [1 4 2 3 0]         [4 2 1 3 0]         [1 2 4 0 3]\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExamplePerm") : GoString), stdgo.math.rand_test.Rand_test.examplePerm,
		(Go.str("1\n2\n0\n") : GoString), true) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleShuffle") : GoString), stdgo.math.rand_test.Rand_test.exampleShuffle,
		(Go.str("[mouth my the of runs corners from ink]\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleShuffle_slicesInUnison") : GoString),
		stdgo.math.rand_test.Rand_test.exampleShuffle_slicesInUnison, (Go.str("C: 3\nD: 4\nA: 1\nE: 5\nB: 2\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleIntn") : GoString), stdgo.math.rand_test.Rand_test.exampleIntn,
		(Go.str("42\n76\n30\n") : GoString), false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);

function main():Void {
	var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)),
		_tests, _benchmarks,
		_fuzzTargets, _examples);
	Sys.exit(_m.run());
}

@:keep var _ = {
	try {
		stdgo.testing.internal.testdeps.Testdeps.importPath = (Go.str("math/rand") : GoString);
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};
