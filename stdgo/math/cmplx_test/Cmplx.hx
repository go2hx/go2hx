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
var _tests : Slice<stdgo.testing.Testing.InternalTest> = ((new Slice<stdgo.testing.Testing.InternalTest>(
((new stdgo.testing.Testing.InternalTest(((("TestAbs" : GoString))), math.cmplx.Cmplx.testAbs) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestAcos" : GoString))), math.cmplx.Cmplx.testAcos) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestAcosh" : GoString))), math.cmplx.Cmplx.testAcosh) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestAsin" : GoString))), math.cmplx.Cmplx.testAsin) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestAsinh" : GoString))), math.cmplx.Cmplx.testAsinh) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestAtan" : GoString))), math.cmplx.Cmplx.testAtan) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestAtanh" : GoString))), math.cmplx.Cmplx.testAtanh) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestConj" : GoString))), math.cmplx.Cmplx.testConj) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestCos" : GoString))), math.cmplx.Cmplx.testCos) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestCosh" : GoString))), math.cmplx.Cmplx.testCosh) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestExp" : GoString))), math.cmplx.Cmplx.testExp) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestIsNaN" : GoString))), math.cmplx.Cmplx.testIsNaN) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestLog" : GoString))), math.cmplx.Cmplx.testLog) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestLog10" : GoString))), math.cmplx.Cmplx.testLog10) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestPolar" : GoString))), math.cmplx.Cmplx.testPolar) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestPow" : GoString))), math.cmplx.Cmplx.testPow) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestRect" : GoString))), math.cmplx.Cmplx.testRect) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestSin" : GoString))), math.cmplx.Cmplx.testSin) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestSinh" : GoString))), math.cmplx.Cmplx.testSinh) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestSqrt" : GoString))), math.cmplx.Cmplx.testSqrt) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestTan" : GoString))), math.cmplx.Cmplx.testTan) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestTanh" : GoString))), math.cmplx.Cmplx.testTanh) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestInfiniteLoopIntanSeries" : GoString))), math.cmplx.Cmplx.testInfiniteLoopIntanSeries) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestTanHuge" : GoString))), math.cmplx.Cmplx.testTanHuge) : stdgo.testing.Testing.InternalTest))) : Slice<stdgo.testing.Testing.InternalTest>));
var _benchmarks : Slice<stdgo.testing.Testing.InternalBenchmark> = ((new Slice<stdgo.testing.Testing.InternalBenchmark>(
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkAbs" : GoString))), math.cmplx.Cmplx.benchmarkAbs) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkAcos" : GoString))), math.cmplx.Cmplx.benchmarkAcos) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkAcosh" : GoString))), math.cmplx.Cmplx.benchmarkAcosh) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkAsin" : GoString))), math.cmplx.Cmplx.benchmarkAsin) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkAsinh" : GoString))), math.cmplx.Cmplx.benchmarkAsinh) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkAtan" : GoString))), math.cmplx.Cmplx.benchmarkAtan) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkAtanh" : GoString))), math.cmplx.Cmplx.benchmarkAtanh) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkConj" : GoString))), math.cmplx.Cmplx.benchmarkConj) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkCos" : GoString))), math.cmplx.Cmplx.benchmarkCos) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkCosh" : GoString))), math.cmplx.Cmplx.benchmarkCosh) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkExp" : GoString))), math.cmplx.Cmplx.benchmarkExp) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkLog" : GoString))), math.cmplx.Cmplx.benchmarkLog) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkLog10" : GoString))), math.cmplx.Cmplx.benchmarkLog10) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkPhase" : GoString))), math.cmplx.Cmplx.benchmarkPhase) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkPolar" : GoString))), math.cmplx.Cmplx.benchmarkPolar) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkPow" : GoString))), math.cmplx.Cmplx.benchmarkPow) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkRect" : GoString))), math.cmplx.Cmplx.benchmarkRect) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkSin" : GoString))), math.cmplx.Cmplx.benchmarkSin) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkSinh" : GoString))), math.cmplx.Cmplx.benchmarkSinh) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkSqrt" : GoString))), math.cmplx.Cmplx.benchmarkSqrt) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkTan" : GoString))), math.cmplx.Cmplx.benchmarkTan) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkTanh" : GoString))), math.cmplx.Cmplx.benchmarkTanh) : stdgo.testing.Testing.InternalBenchmark))) : Slice<stdgo.testing.Testing.InternalBenchmark>));
var _fuzzTargets : Slice<stdgo.testing.Testing.InternalFuzzTarget> = ((new Slice<stdgo.testing.Testing.InternalFuzzTarget>() : Slice<stdgo.testing.Testing.InternalFuzzTarget>));
var _examples : Slice<stdgo.testing.Testing.InternalExample> = ((new Slice<stdgo.testing.Testing.InternalExample>(((new stdgo.testing.Testing.InternalExample(((("ExampleAbs" : GoString))), stdgo.math.cmplx_test.Cmplx_test.exampleAbs, ((("5.0\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("ExampleExp" : GoString))), stdgo.math.cmplx_test.Cmplx_test.exampleExp, ((("(0.0+0.0i)\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("ExamplePolar" : GoString))), stdgo.math.cmplx_test.Cmplx_test.examplePolar, ((("r: 2.0, θ: 0.5*π\n" : GoString))), false) : stdgo.testing.Testing.InternalExample))) : Slice<stdgo.testing.Testing.InternalExample>));
function main():Void {
        var _m:Ref<stdgo.testing.Testing.M> = stdgo.testing.Testing.mainStart(((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        stdgo.os.Os.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ((("math/cmplx" : GoString)));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
