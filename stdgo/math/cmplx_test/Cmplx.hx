package stdgo.math.cmplx_test;

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
	(new stdgo.testing.Testing.InternalTest(Go.str("TestAbs"), stdgo.math.cmplx.Cmplx.testAbs) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestAcos"), stdgo.math.cmplx.Cmplx.testAcos) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestAcosh"), stdgo.math.cmplx.Cmplx.testAcosh) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestAsin"), stdgo.math.cmplx.Cmplx.testAsin) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestAsinh"), stdgo.math.cmplx.Cmplx.testAsinh) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestAtan"), stdgo.math.cmplx.Cmplx.testAtan) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestAtanh"), stdgo.math.cmplx.Cmplx.testAtanh) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestConj"), stdgo.math.cmplx.Cmplx.testConj) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCos"), stdgo.math.cmplx.Cmplx.testCos) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCosh"), stdgo.math.cmplx.Cmplx.testCosh) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestExp"), stdgo.math.cmplx.Cmplx.testExp) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestIsNaN"), stdgo.math.cmplx.Cmplx.testIsNaN) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestLog"), stdgo.math.cmplx.Cmplx.testLog) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestLog10"), stdgo.math.cmplx.Cmplx.testLog10) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestPolar"), stdgo.math.cmplx.Cmplx.testPolar) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestPow"), stdgo.math.cmplx.Cmplx.testPow) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestRect"), stdgo.math.cmplx.Cmplx.testRect) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSin"), stdgo.math.cmplx.Cmplx.testSin) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSinh"), stdgo.math.cmplx.Cmplx.testSinh) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSqrt"), stdgo.math.cmplx.Cmplx.testSqrt) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestTan"), stdgo.math.cmplx.Cmplx.testTan) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestTanh"), stdgo.math.cmplx.Cmplx.testTanh) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestInfiniteLoopIntanSeries"),
		stdgo.math.cmplx.Cmplx.testInfiniteLoopIntanSeries) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestTanHuge"),
		stdgo.math.cmplx.Cmplx.testTanHuge) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);

private var _benchmarks:Slice<stdgo.testing.Testing.InternalBenchmark> = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0,
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkAbs"), stdgo.math.cmplx.Cmplx.benchmarkAbs) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkAcos"), stdgo.math.cmplx.Cmplx.benchmarkAcos) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkAcosh"), stdgo.math.cmplx.Cmplx.benchmarkAcosh) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkAsin"), stdgo.math.cmplx.Cmplx.benchmarkAsin) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkAsinh"), stdgo.math.cmplx.Cmplx.benchmarkAsinh) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkAtan"), stdgo.math.cmplx.Cmplx.benchmarkAtan) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkAtanh"), stdgo.math.cmplx.Cmplx.benchmarkAtanh) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkConj"), stdgo.math.cmplx.Cmplx.benchmarkConj) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkCos"), stdgo.math.cmplx.Cmplx.benchmarkCos) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkCosh"), stdgo.math.cmplx.Cmplx.benchmarkCosh) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkExp"), stdgo.math.cmplx.Cmplx.benchmarkExp) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkLog"), stdgo.math.cmplx.Cmplx.benchmarkLog) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkLog10"), stdgo.math.cmplx.Cmplx.benchmarkLog10) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkPhase"), stdgo.math.cmplx.Cmplx.benchmarkPhase) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkPolar"), stdgo.math.cmplx.Cmplx.benchmarkPolar) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkPow"), stdgo.math.cmplx.Cmplx.benchmarkPow) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkRect"), stdgo.math.cmplx.Cmplx.benchmarkRect) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkSin"), stdgo.math.cmplx.Cmplx.benchmarkSin) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkSinh"), stdgo.math.cmplx.Cmplx.benchmarkSinh) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkSqrt"), stdgo.math.cmplx.Cmplx.benchmarkSqrt) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkTan"), stdgo.math.cmplx.Cmplx.benchmarkTan) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkTanh"),
		stdgo.math.cmplx.Cmplx.benchmarkTanh) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);

private var _fuzzTargets:Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0,
	0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);

private var _examples:Slice<stdgo.testing.Testing.InternalExample> = (new Slice<stdgo.testing.Testing.InternalExample>(0, 0,
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleAbs"), stdgo.math.cmplx_test.Cmplx_test.exampleAbs, Go.str("5.0\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleExp"), stdgo.math.cmplx_test.Cmplx_test.exampleExp, Go.str("(0.0+0.0i)\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExamplePolar"), stdgo.math.cmplx_test.Cmplx_test.examplePolar, Go.str("r: 2.0, θ: 0.5*π\n"),
		false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);

function main():Void {
	var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)),
		_tests, _benchmarks,
		_fuzzTargets, _examples);
	Sys.exit(_m.run());
}

@:keep var _ = {
	try {
		stdgo.testing.internal.testdeps.Testdeps.importPath = Go.str("math/cmplx");
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};
