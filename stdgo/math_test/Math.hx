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
var _tests : Slice<stdgo.testing.Testing.InternalTest> = ((new Slice<stdgo.testing.Testing.InternalTest>(
((new stdgo.testing.Testing.InternalTest(((((("TestNaN" : GoString))) : GoString)), stdgo.math_test.Math_test.testNaN) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestAcos" : GoString))) : GoString)), stdgo.math_test.Math_test.testAcos) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestAcosh" : GoString))) : GoString)), stdgo.math_test.Math_test.testAcosh) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestAsin" : GoString))) : GoString)), stdgo.math_test.Math_test.testAsin) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestAsinh" : GoString))) : GoString)), stdgo.math_test.Math_test.testAsinh) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestAtan" : GoString))) : GoString)), stdgo.math_test.Math_test.testAtan) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestAtanh" : GoString))) : GoString)), stdgo.math_test.Math_test.testAtanh) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestAtan2" : GoString))) : GoString)), stdgo.math_test.Math_test.testAtan2) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestCbrt" : GoString))) : GoString)), stdgo.math_test.Math_test.testCbrt) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestCeil" : GoString))) : GoString)), stdgo.math_test.Math_test.testCeil) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestCopysign" : GoString))) : GoString)), stdgo.math_test.Math_test.testCopysign) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestCos" : GoString))) : GoString)), stdgo.math_test.Math_test.testCos) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestCosh" : GoString))) : GoString)), stdgo.math_test.Math_test.testCosh) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestErf" : GoString))) : GoString)), stdgo.math_test.Math_test.testErf) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestErfc" : GoString))) : GoString)), stdgo.math_test.Math_test.testErfc) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestErfinv" : GoString))) : GoString)), stdgo.math_test.Math_test.testErfinv) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestErfcinv" : GoString))) : GoString)), stdgo.math_test.Math_test.testErfcinv) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestExp" : GoString))) : GoString)), stdgo.math_test.Math_test.testExp) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestExpm1" : GoString))) : GoString)), stdgo.math_test.Math_test.testExpm1) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestExp2" : GoString))) : GoString)), stdgo.math_test.Math_test.testExp2) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestAbs" : GoString))) : GoString)), stdgo.math_test.Math_test.testAbs) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestDim" : GoString))) : GoString)), stdgo.math_test.Math_test.testDim) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestFloor" : GoString))) : GoString)), stdgo.math_test.Math_test.testFloor) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestMax" : GoString))) : GoString)), stdgo.math_test.Math_test.testMax) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestMin" : GoString))) : GoString)), stdgo.math_test.Math_test.testMin) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestMod" : GoString))) : GoString)), stdgo.math_test.Math_test.testMod) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestFrexp" : GoString))) : GoString)), stdgo.math_test.Math_test.testFrexp) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestGamma" : GoString))) : GoString)), stdgo.math_test.Math_test.testGamma) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestHypot" : GoString))) : GoString)), stdgo.math_test.Math_test.testHypot) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestHypotGo" : GoString))) : GoString)), stdgo.math_test.Math_test.testHypotGo) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestIlogb" : GoString))) : GoString)), stdgo.math_test.Math_test.testIlogb) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestJ0" : GoString))) : GoString)), stdgo.math_test.Math_test.testJ0) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestJ1" : GoString))) : GoString)), stdgo.math_test.Math_test.testJ1) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestJn" : GoString))) : GoString)), stdgo.math_test.Math_test.testJn) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestLdexp" : GoString))) : GoString)), stdgo.math_test.Math_test.testLdexp) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestLgamma" : GoString))) : GoString)), stdgo.math_test.Math_test.testLgamma) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestLog" : GoString))) : GoString)), stdgo.math_test.Math_test.testLog) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestLogb" : GoString))) : GoString)), stdgo.math_test.Math_test.testLogb) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestLog10" : GoString))) : GoString)), stdgo.math_test.Math_test.testLog10) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestLog1p" : GoString))) : GoString)), stdgo.math_test.Math_test.testLog1p) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestLog2" : GoString))) : GoString)), stdgo.math_test.Math_test.testLog2) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestModf" : GoString))) : GoString)), stdgo.math_test.Math_test.testModf) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestNextafter32" : GoString))) : GoString)), stdgo.math_test.Math_test.testNextafter32) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestNextafter64" : GoString))) : GoString)), stdgo.math_test.Math_test.testNextafter64) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestPow" : GoString))) : GoString)), stdgo.math_test.Math_test.testPow) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestPow10" : GoString))) : GoString)), stdgo.math_test.Math_test.testPow10) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestRemainder" : GoString))) : GoString)), stdgo.math_test.Math_test.testRemainder) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestRound" : GoString))) : GoString)), stdgo.math_test.Math_test.testRound) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestRoundToEven" : GoString))) : GoString)), stdgo.math_test.Math_test.testRoundToEven) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestSignbit" : GoString))) : GoString)), stdgo.math_test.Math_test.testSignbit) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestSin" : GoString))) : GoString)), stdgo.math_test.Math_test.testSin) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestSincos" : GoString))) : GoString)), stdgo.math_test.Math_test.testSincos) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestSinh" : GoString))) : GoString)), stdgo.math_test.Math_test.testSinh) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestSqrt" : GoString))) : GoString)), stdgo.math_test.Math_test.testSqrt) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestTan" : GoString))) : GoString)), stdgo.math_test.Math_test.testTan) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestTanh" : GoString))) : GoString)), stdgo.math_test.Math_test.testTanh) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestTrunc" : GoString))) : GoString)), stdgo.math_test.Math_test.testTrunc) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestY0" : GoString))) : GoString)), stdgo.math_test.Math_test.testY0) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestY1" : GoString))) : GoString)), stdgo.math_test.Math_test.testY1) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestYn" : GoString))) : GoString)), stdgo.math_test.Math_test.testYn) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestFMA" : GoString))) : GoString)), stdgo.math_test.Math_test.testFMA) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestLargeCos" : GoString))) : GoString)), stdgo.math_test.Math_test.testLargeCos) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestLargeSin" : GoString))) : GoString)), stdgo.math_test.Math_test.testLargeSin) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestLargeSincos" : GoString))) : GoString)), stdgo.math_test.Math_test.testLargeSincos) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestLargeTan" : GoString))) : GoString)), stdgo.math_test.Math_test.testLargeTan) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestTrigReduce" : GoString))) : GoString)), stdgo.math_test.Math_test.testTrigReduce) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestFloatMinMax" : GoString))) : GoString)), stdgo.math_test.Math_test.testFloatMinMax) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestFloatMinima" : GoString))) : GoString)), stdgo.math_test.Math_test.testFloatMinima) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestFloat32Sqrt" : GoString))) : GoString)), stdgo.math_test.Math_test.testFloat32Sqrt) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestMaxUint" : GoString))) : GoString)), stdgo.math_test.Math_test.testMaxUint) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestMaxInt" : GoString))) : GoString)), stdgo.math_test.Math_test.testMaxInt) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestHugeCos" : GoString))) : GoString)), stdgo.math_test.Math_test.testHugeCos) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestHugeSin" : GoString))) : GoString)), stdgo.math_test.Math_test.testHugeSin) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestHugeSinCos" : GoString))) : GoString)), stdgo.math_test.Math_test.testHugeSinCos) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestHugeTan" : GoString))) : GoString)), stdgo.math_test.Math_test.testHugeTan) : stdgo.testing.Testing.InternalTest))) : Slice<stdgo.testing.Testing.InternalTest>));
var _benchmarks : Slice<stdgo.testing.Testing.InternalBenchmark> = ((new Slice<stdgo.testing.Testing.InternalBenchmark>(
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkAcos" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkAcos) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkAcosh" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkAcosh) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkAsin" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkAsin) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkAsinh" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkAsinh) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkAtan" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkAtan) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkAtanh" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkAtanh) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkAtan2" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkAtan2) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkCbrt" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkCbrt) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkCeil" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkCeil) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkCopysign" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkCopysign) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkCos" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkCos) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkCosh" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkCosh) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkErf" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkErf) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkErfc" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkErfc) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkErfinv" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkErfinv) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkErfcinv" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkErfcinv) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkExp" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkExp) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkExpGo" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkExpGo) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkExpm1" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkExpm1) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkExp2" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkExp2) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkExp2Go" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkExp2Go) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkAbs" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkAbs) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkDim" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkDim) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkFloor" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkFloor) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkMax" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkMax) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkMin" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkMin) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkMod" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkMod) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkFrexp" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkFrexp) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkGamma" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkGamma) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkHypot" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkHypot) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkHypotGo" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkHypotGo) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkIlogb" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkIlogb) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkJ0" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkJ0) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkJ1" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkJ1) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkJn" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkJn) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkLdexp" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkLdexp) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkLgamma" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkLgamma) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkLog" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkLog) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkLogb" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkLogb) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkLog1p" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkLog1p) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkLog10" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkLog10) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkLog2" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkLog2) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkModf" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkModf) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkNextafter32" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkNextafter32) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkNextafter64" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkNextafter64) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkPowInt" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkPowInt) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkPowFrac" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkPowFrac) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkPow10Pos" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkPow10Pos) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkPow10Neg" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkPow10Neg) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkRound" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkRound) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkRoundToEven" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkRoundToEven) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkRemainder" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkRemainder) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkSignbit" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkSignbit) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkSin" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkSin) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkSincos" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkSincos) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkSinh" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkSinh) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkSqrtIndirect" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkSqrtIndirect) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkSqrtLatency" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkSqrtLatency) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkSqrtIndirectLatency" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkSqrtIndirectLatency) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkSqrtGoLatency" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkSqrtGoLatency) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkSqrtPrime" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkSqrtPrime) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkTan" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkTan) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkTanh" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkTanh) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkTrunc" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkTrunc) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkY0" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkY0) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkY1" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkY1) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkYn" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkYn) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkFloat64bits" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkFloat64bits) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkFloat64frombits" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkFloat64frombits) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkFloat32bits" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkFloat32bits) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkFloat32frombits" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkFloat32frombits) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkFMA" : GoString))) : GoString)), stdgo.math_test.Math_test.benchmarkFMA) : stdgo.testing.Testing.InternalBenchmark))) : Slice<stdgo.testing.Testing.InternalBenchmark>));
var _fuzzTargets : Slice<stdgo.testing.Testing.InternalFuzzTarget> = ((new Slice<stdgo.testing.Testing.InternalFuzzTarget>() : Slice<stdgo.testing.Testing.InternalFuzzTarget>));
var _examples : Slice<stdgo.testing.Testing.InternalExample> = ((new Slice<stdgo.testing.Testing.InternalExample>(
((new stdgo.testing.Testing.InternalExample(((((("ExampleAcos" : GoString))) : GoString)), stdgo.math_test.Math_test.exampleAcos, ((((("0.00\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleAcosh" : GoString))) : GoString)), stdgo.math_test.Math_test.exampleAcosh, ((((("0.00\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleAsin" : GoString))) : GoString)), stdgo.math_test.Math_test.exampleAsin, ((((("0.00\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleAsinh" : GoString))) : GoString)), stdgo.math_test.Math_test.exampleAsinh, ((((("0.00\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleAtan" : GoString))) : GoString)), stdgo.math_test.Math_test.exampleAtan, ((((("0.00\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleAtan2" : GoString))) : GoString)), stdgo.math_test.Math_test.exampleAtan2, ((((("0.00\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleAtanh" : GoString))) : GoString)), stdgo.math_test.Math_test.exampleAtanh, ((((("0.00\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleCopysign" : GoString))) : GoString)), stdgo.math_test.Math_test.exampleCopysign, ((((("-3.20\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleCos" : GoString))) : GoString)), stdgo.math_test.Math_test.exampleCos, ((((("0.00\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleCosh" : GoString))) : GoString)), stdgo.math_test.Math_test.exampleCosh, ((((("1.00\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleSin" : GoString))) : GoString)), stdgo.math_test.Math_test.exampleSin, ((((("0.00\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleSincos" : GoString))) : GoString)), stdgo.math_test.Math_test.exampleSincos, ((((("0.00, 1.00\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleSinh" : GoString))) : GoString)), stdgo.math_test.Math_test.exampleSinh, ((((("0.00\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleTan" : GoString))) : GoString)), stdgo.math_test.Math_test.exampleTan, ((((("0.00\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleTanh" : GoString))) : GoString)), stdgo.math_test.Math_test.exampleTanh, ((((("0.00\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleSqrt" : GoString))) : GoString)), stdgo.math_test.Math_test.exampleSqrt, ((((("5.0\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleCeil" : GoString))) : GoString)), stdgo.math_test.Math_test.exampleCeil, ((((("2.0\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleFloor" : GoString))) : GoString)), stdgo.math_test.Math_test.exampleFloor, ((((("1.0\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExamplePow" : GoString))) : GoString)), stdgo.math_test.Math_test.examplePow, ((((("8.0\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExamplePow10" : GoString))) : GoString)), stdgo.math_test.Math_test.examplePow10, ((((("100.0\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleRound" : GoString))) : GoString)), stdgo.math_test.Math_test.exampleRound, ((((("11.0\n-11.0\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleRoundToEven" : GoString))) : GoString)), stdgo.math_test.Math_test.exampleRoundToEven, ((((("12.0\n12.0\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleLog" : GoString))) : GoString)), stdgo.math_test.Math_test.exampleLog, ((((("0.0\n1.0\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleLog2" : GoString))) : GoString)), stdgo.math_test.Math_test.exampleLog2, ((((("8.0\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleLog10" : GoString))) : GoString)), stdgo.math_test.Math_test.exampleLog10, ((((("2.0\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleRemainder" : GoString))) : GoString)), stdgo.math_test.Math_test.exampleRemainder, ((((("10.0\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleMod" : GoString))) : GoString)), stdgo.math_test.Math_test.exampleMod, ((((("3.0\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleAbs" : GoString))) : GoString)), stdgo.math_test.Math_test.exampleAbs, ((((("2.0\n2.0\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleDim" : GoString))) : GoString)), stdgo.math_test.Math_test.exampleDim, ((((("6.00\n0.00\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleExp" : GoString))) : GoString)), stdgo.math_test.Math_test.exampleExp, ((((("2.72\n7.39\n0.37\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleExp2" : GoString))) : GoString)), stdgo.math_test.Math_test.exampleExp2, ((((("2.00\n0.12\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleExpm1" : GoString))) : GoString)), stdgo.math_test.Math_test.exampleExpm1, ((((("0.010050\n-0.632121\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleTrunc" : GoString))) : GoString)), stdgo.math_test.Math_test.exampleTrunc, ((((("3.00\n-1.00\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleCbrt" : GoString))) : GoString)), stdgo.math_test.Math_test.exampleCbrt, ((((("2.00\n3.00\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleModf" : GoString))) : GoString)), stdgo.math_test.Math_test.exampleModf, ((((("3.00, 0.14\n-2.00, -0.71\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample))) : Slice<stdgo.testing.Testing.InternalExample>));
function main():Void {
        var _m = stdgo.testing.Testing.mainStart({
            final __self__ = new stdgo.testing.internal.testdeps.Testdeps.TestDeps_wrapper(((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)));
            __self__.checkCorpus = #if !macro function(__0:Slice<AnyInterface>, __1:Slice<stdgo.reflect.Reflect.Type>):stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).checkCorpus(__0, __1) #else null #end;
            __self__.coordinateFuzzing = #if !macro function(__0:stdgo.time.Time.Duration, __1:GoInt64, __2:stdgo.time.Time.Duration, __3:GoInt64, __4:GoInt, __5:Slice<{ var parent : GoString; var path : GoString; var data : Slice<GoUInt8>; var values : Slice<AnyInterface>; var generation : GoInt; var isSeed : Bool; }>, __6:Slice<stdgo.reflect.Reflect.Type>, __7:GoString, __8:GoString):stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).coordinateFuzzing(__0, __1, __2, __3, __4, __5, __6, __7, __8) #else null #end;
            __self__.importPath = #if !macro function():GoString return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).importPath() #else null #end;
            __self__.matchString = #if !macro function(_key:GoString, _value:GoString):{ var _0 : Bool; var _1 : stdgo.Error; } return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).matchString(_key, _value) #else null #end;
            __self__.readCorpus = #if !macro function(__0:GoString, __1:Slice<stdgo.reflect.Reflect.Type>):{ var _0 : Slice<{ var parent : GoString; var path : GoString; var data : Slice<GoUInt8>; var values : Slice<AnyInterface>; var generation : GoInt; var isSeed : Bool; }>; var _1 : stdgo.Error; } return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).readCorpus(__0, __1) #else null #end;
            __self__.resetCoverage = #if !macro function():Void ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).resetCoverage() #else null #end;
            __self__.runFuzzWorker = #if !macro function(__0:({ var parent : GoString; var path : GoString; var data : Slice<GoUInt8>; var values : Slice<AnyInterface>; var generation : GoInt; var isSeed : Bool; }) -> stdgo.Error):stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).runFuzzWorker(__0) #else null #end;
            __self__.setPanicOnExit0 = #if !macro function(_is:Bool):Void ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).setPanicOnExit0(_is) #else null #end;
            __self__.snapshotCoverage = #if !macro function():Void ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).snapshotCoverage() #else null #end;
            __self__.startCPUProfile = #if !macro function(__0:stdgo.io.Io.Writer):stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).startCPUProfile(__0) #else null #end;
            __self__.startTestLog = #if !macro function(__0:stdgo.io.Io.Writer):Void ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).startTestLog(__0) #else null #end;
            __self__.stopCPUProfile = #if !macro function():Void ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).stopCPUProfile() #else null #end;
            __self__.stopTestLog = #if !macro function():stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).stopTestLog() #else null #end;
            __self__.writeProfileTo = #if !macro function(__0:GoString, __1:stdgo.io.Io.Writer, __2:GoInt):stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).writeProfileTo(__0, __1, __2) #else null #end;
            __self__;
        }, _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ((((("math" : GoString))) : GoString));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
