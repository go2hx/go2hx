package stdgo._internal.math.cmplx_test;
import stdgo._internal.math.cmplx.Cmplx;
var _tests : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>(24, 24, ...[
(new stdgo._internal.testing.Testing.InternalTest(("TestAbs" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.testAbs) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestAcos" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.testAcos) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestAcosh" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.testAcosh) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestAsin" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.testAsin) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestAsinh" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.testAsinh) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestAtan" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.testAtan) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestAtanh" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.testAtanh) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestConj" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.testConj) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCos" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.testCos) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCosh" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.testCosh) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestExp" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.testExp) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestIsNaN" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.testIsNaN) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestLog" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.testLog) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestLog10" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.testLog10) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestPolar" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.testPolar) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestPow" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.testPow) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestRect" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.testRect) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSin" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.testSin) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSinh" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.testSinh) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSqrt" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.testSqrt) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestTan" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.testTan) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestTanh" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.testTanh) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestInfiniteLoopIntanSeries" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.testInfiniteLoopIntanSeries) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestTanHuge" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.testTanHuge) : stdgo._internal.testing.Testing.InternalTest)].concat([for (i in 24 ... (24 > 24 ? 24 : 24 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalTest)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>);
var _benchmarks : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>(22, 22, ...[
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkAbs" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.benchmarkAbs) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkAcos" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.benchmarkAcos) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkAcosh" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.benchmarkAcosh) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkAsin" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.benchmarkAsin) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkAsinh" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.benchmarkAsinh) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkAtan" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.benchmarkAtan) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkAtanh" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.benchmarkAtanh) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkConj" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.benchmarkConj) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkCos" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.benchmarkCos) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkCosh" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.benchmarkCosh) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkExp" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.benchmarkExp) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkLog" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.benchmarkLog) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkLog10" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.benchmarkLog10) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkPhase" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.benchmarkPhase) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkPolar" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.benchmarkPolar) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkPow" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.benchmarkPow) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkRect" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.benchmarkRect) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkSin" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.benchmarkSin) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkSinh" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.benchmarkSinh) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkSqrt" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.benchmarkSqrt) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkTan" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.benchmarkTan) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkTanh" : stdgo.GoString), stdgo._internal.math.cmplx.Cmplx.benchmarkTanh) : stdgo._internal.testing.Testing.InternalBenchmark)].concat([for (i in 22 ... (22 > 22 ? 22 : 22 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalBenchmark)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>);
var _fuzzTargets : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalFuzzTarget)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>);
var _examples : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>(3, 3, ...[(new stdgo._internal.testing.Testing.InternalExample(("ExampleAbs" : stdgo.GoString), stdgo._internal.math.cmplx_test.Cmplx_test.exampleAbs, ("5.0\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample), (new stdgo._internal.testing.Testing.InternalExample(("ExampleExp" : stdgo.GoString), stdgo._internal.math.cmplx_test.Cmplx_test.exampleExp, ("(0.0+0.0i)\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample), (new stdgo._internal.testing.Testing.InternalExample(("ExamplePolar" : stdgo.GoString), stdgo._internal.math.cmplx_test.Cmplx_test.examplePolar, ("r: 2.0, θ: 0.5*π\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalExample)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo._internal.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo._internal.testing.internal.testdeps.Testdeps.importPath = ("math/cmplx" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
