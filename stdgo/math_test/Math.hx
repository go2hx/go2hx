package stdgo.math_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
import stdgo.math.Math;
/**
    
    
    
**/
private var _tests = (new Slice<stdgo.testing.Testing.InternalTest>(
0,
0,
(new stdgo.testing.Testing.InternalTest(("TestNaN" : GoString), stdgo.math_test.Math_test.testNaN) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAcos" : GoString), stdgo.math_test.Math_test.testAcos) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAcosh" : GoString), stdgo.math_test.Math_test.testAcosh) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAsin" : GoString), stdgo.math_test.Math_test.testAsin) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAsinh" : GoString), stdgo.math_test.Math_test.testAsinh) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAtan" : GoString), stdgo.math_test.Math_test.testAtan) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAtanh" : GoString), stdgo.math_test.Math_test.testAtanh) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAtan2" : GoString), stdgo.math_test.Math_test.testAtan2) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCbrt" : GoString), stdgo.math_test.Math_test.testCbrt) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCeil" : GoString), stdgo.math_test.Math_test.testCeil) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCopysign" : GoString), stdgo.math_test.Math_test.testCopysign) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCos" : GoString), stdgo.math_test.Math_test.testCos) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCosh" : GoString), stdgo.math_test.Math_test.testCosh) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestErf" : GoString), stdgo.math_test.Math_test.testErf) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestErfc" : GoString), stdgo.math_test.Math_test.testErfc) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestErfinv" : GoString), stdgo.math_test.Math_test.testErfinv) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestErfcinv" : GoString), stdgo.math_test.Math_test.testErfcinv) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestExp" : GoString), stdgo.math_test.Math_test.testExp) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestExpm1" : GoString), stdgo.math_test.Math_test.testExpm1) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestExp2" : GoString), stdgo.math_test.Math_test.testExp2) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAbs" : GoString), stdgo.math_test.Math_test.testAbs) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDim" : GoString), stdgo.math_test.Math_test.testDim) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFloor" : GoString), stdgo.math_test.Math_test.testFloor) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMax" : GoString), stdgo.math_test.Math_test.testMax) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMin" : GoString), stdgo.math_test.Math_test.testMin) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMod" : GoString), stdgo.math_test.Math_test.testMod) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFrexp" : GoString), stdgo.math_test.Math_test.testFrexp) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestGamma" : GoString), stdgo.math_test.Math_test.testGamma) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestHypot" : GoString), stdgo.math_test.Math_test.testHypot) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestHypotGo" : GoString), stdgo.math_test.Math_test.testHypotGo) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIlogb" : GoString), stdgo.math_test.Math_test.testIlogb) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestJ0" : GoString), stdgo.math_test.Math_test.testJ0) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestJ1" : GoString), stdgo.math_test.Math_test.testJ1) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestJn" : GoString), stdgo.math_test.Math_test.testJn) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLdexp" : GoString), stdgo.math_test.Math_test.testLdexp) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLgamma" : GoString), stdgo.math_test.Math_test.testLgamma) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLog" : GoString), stdgo.math_test.Math_test.testLog) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLogb" : GoString), stdgo.math_test.Math_test.testLogb) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLog10" : GoString), stdgo.math_test.Math_test.testLog10) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLog1p" : GoString), stdgo.math_test.Math_test.testLog1p) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLog2" : GoString), stdgo.math_test.Math_test.testLog2) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestModf" : GoString), stdgo.math_test.Math_test.testModf) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNextafter32" : GoString), stdgo.math_test.Math_test.testNextafter32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNextafter64" : GoString), stdgo.math_test.Math_test.testNextafter64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPow" : GoString), stdgo.math_test.Math_test.testPow) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPow10" : GoString), stdgo.math_test.Math_test.testPow10) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRemainder" : GoString), stdgo.math_test.Math_test.testRemainder) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRound" : GoString), stdgo.math_test.Math_test.testRound) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRoundToEven" : GoString), stdgo.math_test.Math_test.testRoundToEven) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSignbit" : GoString), stdgo.math_test.Math_test.testSignbit) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSin" : GoString), stdgo.math_test.Math_test.testSin) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSincos" : GoString), stdgo.math_test.Math_test.testSincos) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSinh" : GoString), stdgo.math_test.Math_test.testSinh) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSqrt" : GoString), stdgo.math_test.Math_test.testSqrt) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestTan" : GoString), stdgo.math_test.Math_test.testTan) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestTanh" : GoString), stdgo.math_test.Math_test.testTanh) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestTrunc" : GoString), stdgo.math_test.Math_test.testTrunc) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestY0" : GoString), stdgo.math_test.Math_test.testY0) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestY1" : GoString), stdgo.math_test.Math_test.testY1) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestYn" : GoString), stdgo.math_test.Math_test.testYn) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFMA" : GoString), stdgo.math_test.Math_test.testFMA) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLargeCos" : GoString), stdgo.math_test.Math_test.testLargeCos) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLargeSin" : GoString), stdgo.math_test.Math_test.testLargeSin) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLargeSincos" : GoString), stdgo.math_test.Math_test.testLargeSincos) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLargeTan" : GoString), stdgo.math_test.Math_test.testLargeTan) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestTrigReduce" : GoString), stdgo.math_test.Math_test.testTrigReduce) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFloatMinMax" : GoString), stdgo.math_test.Math_test.testFloatMinMax) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFloatMinima" : GoString), stdgo.math_test.Math_test.testFloatMinima) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFloat32Sqrt" : GoString), stdgo.math_test.Math_test.testFloat32Sqrt) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMaxUint" : GoString), stdgo.math_test.Math_test.testMaxUint) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMaxInt" : GoString), stdgo.math_test.Math_test.testMaxInt) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestHugeCos" : GoString), stdgo.math_test.Math_test.testHugeCos) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestHugeSin" : GoString), stdgo.math_test.Math_test.testHugeSin) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestHugeSinCos" : GoString), stdgo.math_test.Math_test.testHugeSinCos) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestHugeTan" : GoString), stdgo.math_test.Math_test.testHugeTan) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
private var _benchmarks = (new Slice<stdgo.testing.Testing.InternalBenchmark>(
0,
0,
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAcos" : GoString), stdgo.math_test.Math_test.benchmarkAcos) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAcosh" : GoString), stdgo.math_test.Math_test.benchmarkAcosh) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAsin" : GoString), stdgo.math_test.Math_test.benchmarkAsin) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAsinh" : GoString), stdgo.math_test.Math_test.benchmarkAsinh) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAtan" : GoString), stdgo.math_test.Math_test.benchmarkAtan) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAtanh" : GoString), stdgo.math_test.Math_test.benchmarkAtanh) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAtan2" : GoString), stdgo.math_test.Math_test.benchmarkAtan2) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCbrt" : GoString), stdgo.math_test.Math_test.benchmarkCbrt) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCeil" : GoString), stdgo.math_test.Math_test.benchmarkCeil) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCopysign" : GoString), stdgo.math_test.Math_test.benchmarkCopysign) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCos" : GoString), stdgo.math_test.Math_test.benchmarkCos) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCosh" : GoString), stdgo.math_test.Math_test.benchmarkCosh) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkErf" : GoString), stdgo.math_test.Math_test.benchmarkErf) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkErfc" : GoString), stdgo.math_test.Math_test.benchmarkErfc) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkErfinv" : GoString), stdgo.math_test.Math_test.benchmarkErfinv) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkErfcinv" : GoString), stdgo.math_test.Math_test.benchmarkErfcinv) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkExp" : GoString), stdgo.math_test.Math_test.benchmarkExp) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkExpGo" : GoString), stdgo.math_test.Math_test.benchmarkExpGo) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkExpm1" : GoString), stdgo.math_test.Math_test.benchmarkExpm1) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkExp2" : GoString), stdgo.math_test.Math_test.benchmarkExp2) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkExp2Go" : GoString), stdgo.math_test.Math_test.benchmarkExp2Go) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAbs" : GoString), stdgo.math_test.Math_test.benchmarkAbs) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDim" : GoString), stdgo.math_test.Math_test.benchmarkDim) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkFloor" : GoString), stdgo.math_test.Math_test.benchmarkFloor) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMax" : GoString), stdgo.math_test.Math_test.benchmarkMax) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMin" : GoString), stdgo.math_test.Math_test.benchmarkMin) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMod" : GoString), stdgo.math_test.Math_test.benchmarkMod) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkFrexp" : GoString), stdgo.math_test.Math_test.benchmarkFrexp) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkGamma" : GoString), stdgo.math_test.Math_test.benchmarkGamma) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkHypot" : GoString), stdgo.math_test.Math_test.benchmarkHypot) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkHypotGo" : GoString), stdgo.math_test.Math_test.benchmarkHypotGo) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkIlogb" : GoString), stdgo.math_test.Math_test.benchmarkIlogb) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkJ0" : GoString), stdgo.math_test.Math_test.benchmarkJ0) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkJ1" : GoString), stdgo.math_test.Math_test.benchmarkJ1) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkJn" : GoString), stdgo.math_test.Math_test.benchmarkJn) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLdexp" : GoString), stdgo.math_test.Math_test.benchmarkLdexp) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLgamma" : GoString), stdgo.math_test.Math_test.benchmarkLgamma) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLog" : GoString), stdgo.math_test.Math_test.benchmarkLog) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLogb" : GoString), stdgo.math_test.Math_test.benchmarkLogb) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLog1p" : GoString), stdgo.math_test.Math_test.benchmarkLog1p) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLog10" : GoString), stdgo.math_test.Math_test.benchmarkLog10) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLog2" : GoString), stdgo.math_test.Math_test.benchmarkLog2) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkModf" : GoString), stdgo.math_test.Math_test.benchmarkModf) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkNextafter32" : GoString), stdgo.math_test.Math_test.benchmarkNextafter32) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkNextafter64" : GoString), stdgo.math_test.Math_test.benchmarkNextafter64) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkPowInt" : GoString), stdgo.math_test.Math_test.benchmarkPowInt) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkPowFrac" : GoString), stdgo.math_test.Math_test.benchmarkPowFrac) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkPow10Pos" : GoString), stdgo.math_test.Math_test.benchmarkPow10Pos) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkPow10Neg" : GoString), stdgo.math_test.Math_test.benchmarkPow10Neg) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRound" : GoString), stdgo.math_test.Math_test.benchmarkRound) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRoundToEven" : GoString), stdgo.math_test.Math_test.benchmarkRoundToEven) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRemainder" : GoString), stdgo.math_test.Math_test.benchmarkRemainder) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSignbit" : GoString), stdgo.math_test.Math_test.benchmarkSignbit) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSin" : GoString), stdgo.math_test.Math_test.benchmarkSin) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSincos" : GoString), stdgo.math_test.Math_test.benchmarkSincos) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSinh" : GoString), stdgo.math_test.Math_test.benchmarkSinh) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSqrtIndirect" : GoString), stdgo.math_test.Math_test.benchmarkSqrtIndirect) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSqrtLatency" : GoString), stdgo.math_test.Math_test.benchmarkSqrtLatency) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSqrtIndirectLatency" : GoString), stdgo.math_test.Math_test.benchmarkSqrtIndirectLatency) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSqrtGoLatency" : GoString), stdgo.math_test.Math_test.benchmarkSqrtGoLatency) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSqrtPrime" : GoString), stdgo.math_test.Math_test.benchmarkSqrtPrime) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkTan" : GoString), stdgo.math_test.Math_test.benchmarkTan) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkTanh" : GoString), stdgo.math_test.Math_test.benchmarkTanh) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkTrunc" : GoString), stdgo.math_test.Math_test.benchmarkTrunc) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkY0" : GoString), stdgo.math_test.Math_test.benchmarkY0) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkY1" : GoString), stdgo.math_test.Math_test.benchmarkY1) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkYn" : GoString), stdgo.math_test.Math_test.benchmarkYn) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkFloat64bits" : GoString), stdgo.math_test.Math_test.benchmarkFloat64bits) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkFloat64frombits" : GoString), stdgo.math_test.Math_test.benchmarkFloat64frombits) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkFloat32bits" : GoString), stdgo.math_test.Math_test.benchmarkFloat32bits) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkFloat32frombits" : GoString), stdgo.math_test.Math_test.benchmarkFloat32frombits) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkFMA" : GoString), stdgo.math_test.Math_test.benchmarkFMA) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
private var _fuzzTargets = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
private var _examples = (new Slice<stdgo.testing.Testing.InternalExample>(
0,
0,
(new stdgo.testing.Testing.InternalExample(("ExampleAcos" : GoString), stdgo.math_test.Math_test.exampleAcos, ("0.00\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleAcosh" : GoString), stdgo.math_test.Math_test.exampleAcosh, ("0.00\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleAsin" : GoString), stdgo.math_test.Math_test.exampleAsin, ("0.00\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleAsinh" : GoString), stdgo.math_test.Math_test.exampleAsinh, ("0.00\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleAtan" : GoString), stdgo.math_test.Math_test.exampleAtan, ("0.00\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleAtan2" : GoString), stdgo.math_test.Math_test.exampleAtan2, ("0.00\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleAtanh" : GoString), stdgo.math_test.Math_test.exampleAtanh, ("0.00\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleCopysign" : GoString), stdgo.math_test.Math_test.exampleCopysign, ("-3.20\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleCos" : GoString), stdgo.math_test.Math_test.exampleCos, ("0.00\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleCosh" : GoString), stdgo.math_test.Math_test.exampleCosh, ("1.00\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSin" : GoString), stdgo.math_test.Math_test.exampleSin, ("0.00\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSincos" : GoString), stdgo.math_test.Math_test.exampleSincos, ("0.00, 1.00\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSinh" : GoString), stdgo.math_test.Math_test.exampleSinh, ("0.00\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleTan" : GoString), stdgo.math_test.Math_test.exampleTan, ("0.00\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleTanh" : GoString), stdgo.math_test.Math_test.exampleTanh, ("0.00\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSqrt" : GoString), stdgo.math_test.Math_test.exampleSqrt, ("5.0\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleCeil" : GoString), stdgo.math_test.Math_test.exampleCeil, ("2.0\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleFloor" : GoString), stdgo.math_test.Math_test.exampleFloor, ("1.0\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExamplePow" : GoString), stdgo.math_test.Math_test.examplePow, ("8.0\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExamplePow10" : GoString), stdgo.math_test.Math_test.examplePow10, ("100.0\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRound" : GoString), stdgo.math_test.Math_test.exampleRound, ("11.0\n-11.0\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRoundToEven" : GoString), stdgo.math_test.Math_test.exampleRoundToEven, ("12.0\n12.0\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleLog" : GoString), stdgo.math_test.Math_test.exampleLog, ("0.0\n1.0\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleLog2" : GoString), stdgo.math_test.Math_test.exampleLog2, ("8.0\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleLog10" : GoString), stdgo.math_test.Math_test.exampleLog10, ("2.0\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRemainder" : GoString), stdgo.math_test.Math_test.exampleRemainder, ("10.0\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleMod" : GoString), stdgo.math_test.Math_test.exampleMod, ("3.0\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleAbs" : GoString), stdgo.math_test.Math_test.exampleAbs, ("2.0\n2.0\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleDim" : GoString), stdgo.math_test.Math_test.exampleDim, ("6.00\n0.00\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleExp" : GoString), stdgo.math_test.Math_test.exampleExp, ("2.72\n7.39\n0.37\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleExp2" : GoString), stdgo.math_test.Math_test.exampleExp2, ("2.00\n0.12\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleExpm1" : GoString), stdgo.math_test.Math_test.exampleExpm1, ("0.010050\n-0.632121\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleTrunc" : GoString), stdgo.math_test.Math_test.exampleTrunc, ("3.00\n-1.00\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleCbrt" : GoString), stdgo.math_test.Math_test.exampleCbrt, ("2.00\n3.00\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleModf" : GoString), stdgo.math_test.Math_test.exampleModf, ("3.00, 0.14\n-2.00, -0.71\n" : GoString), false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);
private function main():Void {
        var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("math" : GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
