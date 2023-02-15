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
/**
    
    
    
**/
private var _tests = (new Slice<stdgo.testing.Testing.InternalTest>(
0,
0,
(new stdgo.testing.Testing.InternalTest(("TestAbs" : GoString), stdgo.math.cmplx.Cmplx.testAbs) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAcos" : GoString), stdgo.math.cmplx.Cmplx.testAcos) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAcosh" : GoString), stdgo.math.cmplx.Cmplx.testAcosh) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAsin" : GoString), stdgo.math.cmplx.Cmplx.testAsin) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAsinh" : GoString), stdgo.math.cmplx.Cmplx.testAsinh) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAtan" : GoString), stdgo.math.cmplx.Cmplx.testAtan) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAtanh" : GoString), stdgo.math.cmplx.Cmplx.testAtanh) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestConj" : GoString), stdgo.math.cmplx.Cmplx.testConj) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCos" : GoString), stdgo.math.cmplx.Cmplx.testCos) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCosh" : GoString), stdgo.math.cmplx.Cmplx.testCosh) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestExp" : GoString), stdgo.math.cmplx.Cmplx.testExp) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIsNaN" : GoString), stdgo.math.cmplx.Cmplx.testIsNaN) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLog" : GoString), stdgo.math.cmplx.Cmplx.testLog) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLog10" : GoString), stdgo.math.cmplx.Cmplx.testLog10) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPolar" : GoString), stdgo.math.cmplx.Cmplx.testPolar) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPow" : GoString), stdgo.math.cmplx.Cmplx.testPow) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRect" : GoString), stdgo.math.cmplx.Cmplx.testRect) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSin" : GoString), stdgo.math.cmplx.Cmplx.testSin) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSinh" : GoString), stdgo.math.cmplx.Cmplx.testSinh) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSqrt" : GoString), stdgo.math.cmplx.Cmplx.testSqrt) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestTan" : GoString), stdgo.math.cmplx.Cmplx.testTan) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestTanh" : GoString), stdgo.math.cmplx.Cmplx.testTanh) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestInfiniteLoopIntanSeries" : GoString), stdgo.math.cmplx.Cmplx.testInfiniteLoopIntanSeries) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestTanHuge" : GoString), stdgo.math.cmplx.Cmplx.testTanHuge) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
private var _benchmarks = (new Slice<stdgo.testing.Testing.InternalBenchmark>(
0,
0,
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAbs" : GoString), stdgo.math.cmplx.Cmplx.benchmarkAbs) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAcos" : GoString), stdgo.math.cmplx.Cmplx.benchmarkAcos) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAcosh" : GoString), stdgo.math.cmplx.Cmplx.benchmarkAcosh) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAsin" : GoString), stdgo.math.cmplx.Cmplx.benchmarkAsin) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAsinh" : GoString), stdgo.math.cmplx.Cmplx.benchmarkAsinh) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAtan" : GoString), stdgo.math.cmplx.Cmplx.benchmarkAtan) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAtanh" : GoString), stdgo.math.cmplx.Cmplx.benchmarkAtanh) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkConj" : GoString), stdgo.math.cmplx.Cmplx.benchmarkConj) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCos" : GoString), stdgo.math.cmplx.Cmplx.benchmarkCos) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCosh" : GoString), stdgo.math.cmplx.Cmplx.benchmarkCosh) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkExp" : GoString), stdgo.math.cmplx.Cmplx.benchmarkExp) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLog" : GoString), stdgo.math.cmplx.Cmplx.benchmarkLog) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLog10" : GoString), stdgo.math.cmplx.Cmplx.benchmarkLog10) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkPhase" : GoString), stdgo.math.cmplx.Cmplx.benchmarkPhase) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkPolar" : GoString), stdgo.math.cmplx.Cmplx.benchmarkPolar) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkPow" : GoString), stdgo.math.cmplx.Cmplx.benchmarkPow) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRect" : GoString), stdgo.math.cmplx.Cmplx.benchmarkRect) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSin" : GoString), stdgo.math.cmplx.Cmplx.benchmarkSin) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSinh" : GoString), stdgo.math.cmplx.Cmplx.benchmarkSinh) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSqrt" : GoString), stdgo.math.cmplx.Cmplx.benchmarkSqrt) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkTan" : GoString), stdgo.math.cmplx.Cmplx.benchmarkTan) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkTanh" : GoString), stdgo.math.cmplx.Cmplx.benchmarkTanh) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
private var _fuzzTargets = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
private var _examples = (new Slice<stdgo.testing.Testing.InternalExample>(0, 0, (new stdgo.testing.Testing.InternalExample(("ExampleAbs" : GoString), stdgo.math.cmplx_test.Cmplx_test.exampleAbs, ("5.0\n" : GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleExp" : GoString), stdgo.math.cmplx_test.Cmplx_test.exampleExp, ("(0.0+0.0i)\n" : GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExamplePolar" : GoString), stdgo.math.cmplx_test.Cmplx_test.examplePolar, ("r: 2.0, θ: 0.5*π\n" : GoString), false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);
private function main():Void {
        var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("math/cmplx" : GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
