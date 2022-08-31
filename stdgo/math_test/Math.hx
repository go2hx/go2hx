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

var _tests:Slice<stdgo.testing.Testing.InternalTest> = (new Slice<stdgo.testing.Testing.InternalTest>(0, 0,
	(new stdgo.testing.Testing.InternalTest((Go.str("TestNaN") : GoString), stdgo.math_test.Math_test.testNaN) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestAcos") : GoString), stdgo.math_test.Math_test.testAcos) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestAcosh") : GoString), stdgo.math_test.Math_test.testAcosh) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestAsin") : GoString), stdgo.math_test.Math_test.testAsin) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestAsinh") : GoString), stdgo.math_test.Math_test.testAsinh) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestAtan") : GoString), stdgo.math_test.Math_test.testAtan) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestAtanh") : GoString), stdgo.math_test.Math_test.testAtanh) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestAtan2") : GoString), stdgo.math_test.Math_test.testAtan2) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestCbrt") : GoString), stdgo.math_test.Math_test.testCbrt) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestCeil") : GoString), stdgo.math_test.Math_test.testCeil) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestCopysign") : GoString), stdgo.math_test.Math_test.testCopysign) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestCos") : GoString), stdgo.math_test.Math_test.testCos) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestCosh") : GoString), stdgo.math_test.Math_test.testCosh) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestErf") : GoString), stdgo.math_test.Math_test.testErf) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestErfc") : GoString), stdgo.math_test.Math_test.testErfc) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestErfinv") : GoString), stdgo.math_test.Math_test.testErfinv) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestErfcinv") : GoString), stdgo.math_test.Math_test.testErfcinv) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestExp") : GoString), stdgo.math_test.Math_test.testExp) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestExpm1") : GoString), stdgo.math_test.Math_test.testExpm1) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestExp2") : GoString), stdgo.math_test.Math_test.testExp2) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestAbs") : GoString), stdgo.math_test.Math_test.testAbs) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestDim") : GoString), stdgo.math_test.Math_test.testDim) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestFloor") : GoString), stdgo.math_test.Math_test.testFloor) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestMax") : GoString), stdgo.math_test.Math_test.testMax) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestMin") : GoString), stdgo.math_test.Math_test.testMin) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestMod") : GoString), stdgo.math_test.Math_test.testMod) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestFrexp") : GoString), stdgo.math_test.Math_test.testFrexp) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestGamma") : GoString), stdgo.math_test.Math_test.testGamma) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestHypot") : GoString), stdgo.math_test.Math_test.testHypot) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestHypotGo") : GoString), stdgo.math_test.Math_test.testHypotGo) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestIlogb") : GoString), stdgo.math_test.Math_test.testIlogb) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestJ0") : GoString), stdgo.math_test.Math_test.testJ0) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestJ1") : GoString), stdgo.math_test.Math_test.testJ1) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestJn") : GoString), stdgo.math_test.Math_test.testJn) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestLdexp") : GoString), stdgo.math_test.Math_test.testLdexp) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestLgamma") : GoString), stdgo.math_test.Math_test.testLgamma) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestLog") : GoString), stdgo.math_test.Math_test.testLog) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestLogb") : GoString), stdgo.math_test.Math_test.testLogb) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestLog10") : GoString), stdgo.math_test.Math_test.testLog10) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestLog1p") : GoString), stdgo.math_test.Math_test.testLog1p) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestLog2") : GoString), stdgo.math_test.Math_test.testLog2) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestModf") : GoString), stdgo.math_test.Math_test.testModf) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestNextafter32") : GoString),
		stdgo.math_test.Math_test.testNextafter32) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestNextafter64") : GoString),
		stdgo.math_test.Math_test.testNextafter64) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestPow") : GoString), stdgo.math_test.Math_test.testPow) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestPow10") : GoString), stdgo.math_test.Math_test.testPow10) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestRemainder") : GoString),
		stdgo.math_test.Math_test.testRemainder) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestRound") : GoString), stdgo.math_test.Math_test.testRound) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestRoundToEven") : GoString),
		stdgo.math_test.Math_test.testRoundToEven) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestSignbit") : GoString), stdgo.math_test.Math_test.testSignbit) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestSin") : GoString), stdgo.math_test.Math_test.testSin) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestSincos") : GoString), stdgo.math_test.Math_test.testSincos) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestSinh") : GoString), stdgo.math_test.Math_test.testSinh) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestSqrt") : GoString), stdgo.math_test.Math_test.testSqrt) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestTan") : GoString), stdgo.math_test.Math_test.testTan) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestTanh") : GoString), stdgo.math_test.Math_test.testTanh) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestTrunc") : GoString), stdgo.math_test.Math_test.testTrunc) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestY0") : GoString), stdgo.math_test.Math_test.testY0) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestY1") : GoString), stdgo.math_test.Math_test.testY1) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestYn") : GoString), stdgo.math_test.Math_test.testYn) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestFMA") : GoString), stdgo.math_test.Math_test.testFMA) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestLargeCos") : GoString), stdgo.math_test.Math_test.testLargeCos) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestLargeSin") : GoString), stdgo.math_test.Math_test.testLargeSin) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestLargeSincos") : GoString),
		stdgo.math_test.Math_test.testLargeSincos) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestLargeTan") : GoString), stdgo.math_test.Math_test.testLargeTan) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestTrigReduce") : GoString),
		stdgo.math_test.Math_test.testTrigReduce) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestFloatMinMax") : GoString),
		stdgo.math_test.Math_test.testFloatMinMax) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestFloatMinima") : GoString),
		stdgo.math_test.Math_test.testFloatMinima) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestFloat32Sqrt") : GoString),
		stdgo.math_test.Math_test.testFloat32Sqrt) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestMaxUint") : GoString), stdgo.math_test.Math_test.testMaxUint) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestMaxInt") : GoString), stdgo.math_test.Math_test.testMaxInt) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestHugeCos") : GoString), stdgo.math_test.Math_test.testHugeCos) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestHugeSin") : GoString), stdgo.math_test.Math_test.testHugeSin) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestHugeSinCos") : GoString),
		stdgo.math_test.Math_test.testHugeSinCos) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestHugeTan") : GoString),
		stdgo.math_test.Math_test.testHugeTan) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);

var _benchmarks:Slice<stdgo.testing.Testing.InternalBenchmark> = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0,
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkAcos") : GoString),
		stdgo.math_test.Math_test.benchmarkAcos) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkAcosh") : GoString),
		stdgo.math_test.Math_test.benchmarkAcosh) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkAsin") : GoString),
		stdgo.math_test.Math_test.benchmarkAsin) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkAsinh") : GoString),
		stdgo.math_test.Math_test.benchmarkAsinh) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkAtan") : GoString),
		stdgo.math_test.Math_test.benchmarkAtan) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkAtanh") : GoString),
		stdgo.math_test.Math_test.benchmarkAtanh) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkAtan2") : GoString),
		stdgo.math_test.Math_test.benchmarkAtan2) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkCbrt") : GoString),
		stdgo.math_test.Math_test.benchmarkCbrt) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkCeil") : GoString),
		stdgo.math_test.Math_test.benchmarkCeil) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkCopysign") : GoString),
		stdgo.math_test.Math_test.benchmarkCopysign) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkCos") : GoString),
		stdgo.math_test.Math_test.benchmarkCos) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkCosh") : GoString),
		stdgo.math_test.Math_test.benchmarkCosh) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkErf") : GoString),
		stdgo.math_test.Math_test.benchmarkErf) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkErfc") : GoString),
		stdgo.math_test.Math_test.benchmarkErfc) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkErfinv") : GoString),
		stdgo.math_test.Math_test.benchmarkErfinv) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkErfcinv") : GoString),
		stdgo.math_test.Math_test.benchmarkErfcinv) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkExp") : GoString),
		stdgo.math_test.Math_test.benchmarkExp) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkExpGo") : GoString),
		stdgo.math_test.Math_test.benchmarkExpGo) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkExpm1") : GoString),
		stdgo.math_test.Math_test.benchmarkExpm1) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkExp2") : GoString),
		stdgo.math_test.Math_test.benchmarkExp2) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkExp2Go") : GoString),
		stdgo.math_test.Math_test.benchmarkExp2Go) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkAbs") : GoString),
		stdgo.math_test.Math_test.benchmarkAbs) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkDim") : GoString),
		stdgo.math_test.Math_test.benchmarkDim) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkFloor") : GoString),
		stdgo.math_test.Math_test.benchmarkFloor) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkMax") : GoString),
		stdgo.math_test.Math_test.benchmarkMax) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkMin") : GoString),
		stdgo.math_test.Math_test.benchmarkMin) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkMod") : GoString),
		stdgo.math_test.Math_test.benchmarkMod) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkFrexp") : GoString),
		stdgo.math_test.Math_test.benchmarkFrexp) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkGamma") : GoString),
		stdgo.math_test.Math_test.benchmarkGamma) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkHypot") : GoString),
		stdgo.math_test.Math_test.benchmarkHypot) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkHypotGo") : GoString),
		stdgo.math_test.Math_test.benchmarkHypotGo) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkIlogb") : GoString),
		stdgo.math_test.Math_test.benchmarkIlogb) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkJ0") : GoString),
		stdgo.math_test.Math_test.benchmarkJ0) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkJ1") : GoString),
		stdgo.math_test.Math_test.benchmarkJ1) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkJn") : GoString),
		stdgo.math_test.Math_test.benchmarkJn) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkLdexp") : GoString),
		stdgo.math_test.Math_test.benchmarkLdexp) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkLgamma") : GoString),
		stdgo.math_test.Math_test.benchmarkLgamma) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkLog") : GoString),
		stdgo.math_test.Math_test.benchmarkLog) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkLogb") : GoString),
		stdgo.math_test.Math_test.benchmarkLogb) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkLog1p") : GoString),
		stdgo.math_test.Math_test.benchmarkLog1p) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkLog10") : GoString),
		stdgo.math_test.Math_test.benchmarkLog10) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkLog2") : GoString),
		stdgo.math_test.Math_test.benchmarkLog2) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkModf") : GoString),
		stdgo.math_test.Math_test.benchmarkModf) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkNextafter32") : GoString),
		stdgo.math_test.Math_test.benchmarkNextafter32) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkNextafter64") : GoString),
		stdgo.math_test.Math_test.benchmarkNextafter64) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkPowInt") : GoString),
		stdgo.math_test.Math_test.benchmarkPowInt) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkPowFrac") : GoString),
		stdgo.math_test.Math_test.benchmarkPowFrac) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkPow10Pos") : GoString),
		stdgo.math_test.Math_test.benchmarkPow10Pos) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkPow10Neg") : GoString),
		stdgo.math_test.Math_test.benchmarkPow10Neg) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkRound") : GoString),
		stdgo.math_test.Math_test.benchmarkRound) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkRoundToEven") : GoString),
		stdgo.math_test.Math_test.benchmarkRoundToEven) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkRemainder") : GoString),
		stdgo.math_test.Math_test.benchmarkRemainder) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkSignbit") : GoString),
		stdgo.math_test.Math_test.benchmarkSignbit) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkSin") : GoString),
		stdgo.math_test.Math_test.benchmarkSin) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkSincos") : GoString),
		stdgo.math_test.Math_test.benchmarkSincos) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkSinh") : GoString),
		stdgo.math_test.Math_test.benchmarkSinh) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkSqrtIndirect") : GoString),
		stdgo.math_test.Math_test.benchmarkSqrtIndirect) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkSqrtLatency") : GoString),
		stdgo.math_test.Math_test.benchmarkSqrtLatency) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkSqrtIndirectLatency") : GoString),
		stdgo.math_test.Math_test.benchmarkSqrtIndirectLatency) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkSqrtGoLatency") : GoString),
		stdgo.math_test.Math_test.benchmarkSqrtGoLatency) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkSqrtPrime") : GoString),
		stdgo.math_test.Math_test.benchmarkSqrtPrime) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkTan") : GoString),
		stdgo.math_test.Math_test.benchmarkTan) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkTanh") : GoString),
		stdgo.math_test.Math_test.benchmarkTanh) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkTrunc") : GoString),
		stdgo.math_test.Math_test.benchmarkTrunc) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkY0") : GoString),
		stdgo.math_test.Math_test.benchmarkY0) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkY1") : GoString),
		stdgo.math_test.Math_test.benchmarkY1) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkYn") : GoString),
		stdgo.math_test.Math_test.benchmarkYn) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkFloat64bits") : GoString),
		stdgo.math_test.Math_test.benchmarkFloat64bits) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkFloat64frombits") : GoString),
		stdgo.math_test.Math_test.benchmarkFloat64frombits) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkFloat32bits") : GoString),
		stdgo.math_test.Math_test.benchmarkFloat32bits) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkFloat32frombits") : GoString),
		stdgo.math_test.Math_test.benchmarkFloat32frombits) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkFMA") : GoString),
		stdgo.math_test.Math_test.benchmarkFMA) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);

var _fuzzTargets:Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0,
	0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);

var _examples:Slice<stdgo.testing.Testing.InternalExample> = (new Slice<stdgo.testing.Testing.InternalExample>(0, 0,
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleAcos") : GoString), stdgo.math_test.Math_test.exampleAcos, (Go.str("0.00\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleAcosh") : GoString), stdgo.math_test.Math_test.exampleAcosh, (Go.str("0.00\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleAsin") : GoString), stdgo.math_test.Math_test.exampleAsin, (Go.str("0.00\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleAsinh") : GoString), stdgo.math_test.Math_test.exampleAsinh, (Go.str("0.00\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleAtan") : GoString), stdgo.math_test.Math_test.exampleAtan, (Go.str("0.00\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleAtan2") : GoString), stdgo.math_test.Math_test.exampleAtan2, (Go.str("0.00\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleAtanh") : GoString), stdgo.math_test.Math_test.exampleAtanh, (Go.str("0.00\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleCopysign") : GoString), stdgo.math_test.Math_test.exampleCopysign,
		(Go.str("-3.20\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleCos") : GoString), stdgo.math_test.Math_test.exampleCos, (Go.str("0.00\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleCosh") : GoString), stdgo.math_test.Math_test.exampleCosh, (Go.str("1.00\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleSin") : GoString), stdgo.math_test.Math_test.exampleSin, (Go.str("0.00\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleSincos") : GoString), stdgo.math_test.Math_test.exampleSincos,
		(Go.str("0.00, 1.00\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleSinh") : GoString), stdgo.math_test.Math_test.exampleSinh, (Go.str("0.00\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleTan") : GoString), stdgo.math_test.Math_test.exampleTan, (Go.str("0.00\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleTanh") : GoString), stdgo.math_test.Math_test.exampleTanh, (Go.str("0.00\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleSqrt") : GoString), stdgo.math_test.Math_test.exampleSqrt, (Go.str("5.0\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleCeil") : GoString), stdgo.math_test.Math_test.exampleCeil, (Go.str("2.0\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleFloor") : GoString), stdgo.math_test.Math_test.exampleFloor, (Go.str("1.0\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExamplePow") : GoString), stdgo.math_test.Math_test.examplePow, (Go.str("8.0\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExamplePow10") : GoString), stdgo.math_test.Math_test.examplePow10, (Go.str("100.0\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleRound") : GoString), stdgo.math_test.Math_test.exampleRound,
		(Go.str("11.0\n-11.0\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleRoundToEven") : GoString), stdgo.math_test.Math_test.exampleRoundToEven,
		(Go.str("12.0\n12.0\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleLog") : GoString), stdgo.math_test.Math_test.exampleLog, (Go.str("0.0\n1.0\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleLog2") : GoString), stdgo.math_test.Math_test.exampleLog2, (Go.str("8.0\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleLog10") : GoString), stdgo.math_test.Math_test.exampleLog10, (Go.str("2.0\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleRemainder") : GoString), stdgo.math_test.Math_test.exampleRemainder,
		(Go.str("10.0\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleMod") : GoString), stdgo.math_test.Math_test.exampleMod, (Go.str("3.0\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleAbs") : GoString), stdgo.math_test.Math_test.exampleAbs, (Go.str("2.0\n2.0\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleDim") : GoString), stdgo.math_test.Math_test.exampleDim, (Go.str("6.00\n0.00\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleExp") : GoString), stdgo.math_test.Math_test.exampleExp,
		(Go.str("2.72\n7.39\n0.37\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleExp2") : GoString), stdgo.math_test.Math_test.exampleExp2, (Go.str("2.00\n0.12\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleExpm1") : GoString), stdgo.math_test.Math_test.exampleExpm1,
		(Go.str("0.010050\n-0.632121\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleTrunc") : GoString), stdgo.math_test.Math_test.exampleTrunc,
		(Go.str("3.00\n-1.00\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleCbrt") : GoString), stdgo.math_test.Math_test.exampleCbrt, (Go.str("2.00\n3.00\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleModf") : GoString), stdgo.math_test.Math_test.exampleModf,
		(Go.str("3.00, 0.14\n-2.00, -0.71\n") : GoString), false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);

function main():Void {
	var _m = stdgo.testing.Testing.mainStart({
		final __self__ = new stdgo.testing.internal.testdeps.Testdeps.TestDeps_wrapper((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps));
		__self__.checkCorpus = #if !macro function(__0:Slice<AnyInterface>,
				__1:Slice<stdgo.reflect.Reflect.Type>):stdgo.Error return
				(new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).checkCorpus(__0,
					__1) #else null #end;
		__self__.coordinateFuzzing = #if !macro function(__0:stdgo.time.Time.Duration, __1:GoInt64, __2:stdgo.time.Time.Duration, __3:GoInt64, __4:GoInt,
				__5:Slice<{
				var parent:GoString;
				var path:GoString;
				var data:Slice<GoUInt8>;
				var values:Slice<AnyInterface>;
				var generation:GoInt;
				var isSeed:Bool;
			}>,
				__6:Slice<stdgo.reflect.Reflect.Type>, __7:GoString,
				__8:GoString):stdgo.Error return (new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)
				.coordinateFuzzing(__0, __1, __2, __3, __4, __5, __6, __7, __8) #else null #end;
		__self__.importPath = #if !macro function():GoString return
			(new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).importPath() #else null #end;
		__self__.matchString = #if !macro function(_key:GoString, _value:GoString):{var _0:Bool; var _1:stdgo.Error;}
			return (new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).matchString(_key,
				_value) #else null #end;
		__self__.readCorpus = #if !macro function(__0:GoString, __1:Slice<stdgo.reflect.Reflect.Type>):{var _0:Slice<{
			var parent:GoString;
			var path:GoString;
			var data:Slice<GoUInt8>;
			var values:Slice<AnyInterface>;
			var generation:GoInt;
			var isSeed:Bool;
		}>; var _1:stdgo.Error;}
			return (new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).readCorpus(__0,
				__1) #else null #end;
		__self__.resetCoverage = #if !macro function():Void(new stdgo.testing.internal.testdeps.Testdeps.TestDeps()
			:stdgo.testing.internal.testdeps.Testdeps.TestDeps).resetCoverage() #else null #end;
		__self__.runFuzzWorker = #if !macro function(__0:({
			var parent:GoString;
			var path:GoString;
			var data:Slice<GoUInt8>;
			var values:Slice<AnyInterface>;
			var generation:GoInt;
			var isSeed:Bool;
		}) -> stdgo.Error):stdgo.Error return (new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)
			.runFuzzWorker(__0) #else null #end;
		__self__.setPanicOnExit0 = #if !macro function(_is:Bool):Void(new stdgo.testing.internal.testdeps.Testdeps.TestDeps()
			:stdgo.testing.internal.testdeps.Testdeps.TestDeps).setPanicOnExit0(_is) #else null #end;
		__self__.snapshotCoverage = #if !macro function():Void(new stdgo.testing.internal.testdeps.Testdeps.TestDeps()
			:stdgo.testing.internal.testdeps.Testdeps.TestDeps).snapshotCoverage() #else null #end;
		__self__.startCPUProfile = #if !macro function(__0:stdgo.io.Io.Writer):stdgo.Error return
			(new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).startCPUProfile(__0) #else null #end;
		__self__.startTestLog = #if !macro function(__0:stdgo.io.Io.Writer):Void(new stdgo.testing.internal.testdeps.Testdeps.TestDeps()
			:stdgo.testing.internal.testdeps.Testdeps.TestDeps).startTestLog(__0) #else null #end;
		__self__.stopCPUProfile = #if !macro function():Void(new stdgo.testing.internal.testdeps.Testdeps.TestDeps()
			:stdgo.testing.internal.testdeps.Testdeps.TestDeps).stopCPUProfile() #else null #end;
		__self__.stopTestLog = #if !macro function():stdgo.Error return
			(new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).stopTestLog() #else null #end;
		__self__.writeProfileTo = #if !macro function(__0:GoString, __1:stdgo.io.Io.Writer,
				__2:GoInt):stdgo.Error return (new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)
				.writeProfileTo(__0, __1, __2) #else null #end;
		__self__;
	}, _tests, _benchmarks, _fuzzTargets, _examples);
	Sys.exit(_m.run());
}

@:keep var _ = {
	try {
		stdgo.testing.internal.testdeps.Testdeps.importPath = (Go.str("math") : GoString);
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};
