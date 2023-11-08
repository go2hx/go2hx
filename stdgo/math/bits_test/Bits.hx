package stdgo.math.bits_test;
import stdgo.math.bits.Bits;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(
26,
26,
(new stdgo.testing.Testing.InternalTest(("TestUintSize" : stdgo.GoString), stdgo.math.bits_test.Bits_test.testUintSize) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLeadingZeros" : stdgo.GoString), stdgo.math.bits_test.Bits_test.testLeadingZeros) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestTrailingZeros" : stdgo.GoString), stdgo.math.bits_test.Bits_test.testTrailingZeros) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOnesCount" : stdgo.GoString), stdgo.math.bits_test.Bits_test.testOnesCount) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRotateLeft" : stdgo.GoString), stdgo.math.bits_test.Bits_test.testRotateLeft) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReverse" : stdgo.GoString), stdgo.math.bits_test.Bits_test.testReverse) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReverseBytes" : stdgo.GoString), stdgo.math.bits_test.Bits_test.testReverseBytes) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLen" : stdgo.GoString), stdgo.math.bits_test.Bits_test.testLen) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAddSubUint" : stdgo.GoString), stdgo.math.bits_test.Bits_test.testAddSubUint) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAddSubUint32" : stdgo.GoString), stdgo.math.bits_test.Bits_test.testAddSubUint32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAddSubUint64" : stdgo.GoString), stdgo.math.bits_test.Bits_test.testAddSubUint64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAdd64OverflowPanic" : stdgo.GoString), stdgo.math.bits_test.Bits_test.testAdd64OverflowPanic) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSub64OverflowPanic" : stdgo.GoString), stdgo.math.bits_test.Bits_test.testSub64OverflowPanic) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMulDiv" : stdgo.GoString), stdgo.math.bits_test.Bits_test.testMulDiv) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMulDiv32" : stdgo.GoString), stdgo.math.bits_test.Bits_test.testMulDiv32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMulDiv64" : stdgo.GoString), stdgo.math.bits_test.Bits_test.testMulDiv64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDivPanicOverflow" : stdgo.GoString), stdgo.math.bits_test.Bits_test.testDivPanicOverflow) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDiv32PanicOverflow" : stdgo.GoString), stdgo.math.bits_test.Bits_test.testDiv32PanicOverflow) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDiv64PanicOverflow" : stdgo.GoString), stdgo.math.bits_test.Bits_test.testDiv64PanicOverflow) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDivPanicZero" : stdgo.GoString), stdgo.math.bits_test.Bits_test.testDivPanicZero) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDiv32PanicZero" : stdgo.GoString), stdgo.math.bits_test.Bits_test.testDiv32PanicZero) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDiv64PanicZero" : stdgo.GoString), stdgo.math.bits_test.Bits_test.testDiv64PanicZero) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRem32" : stdgo.GoString), stdgo.math.bits_test.Bits_test.testRem32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRem32Overflow" : stdgo.GoString), stdgo.math.bits_test.Bits_test.testRem32Overflow) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRem64" : stdgo.GoString), stdgo.math.bits_test.Bits_test.testRem64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRem64Overflow" : stdgo.GoString), stdgo.math.bits_test.Bits_test.testRem64Overflow) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(
43,
43,
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLeadingZeros" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkLeadingZeros) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLeadingZeros8" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkLeadingZeros8) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLeadingZeros16" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkLeadingZeros16) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLeadingZeros32" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkLeadingZeros32) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLeadingZeros64" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkLeadingZeros64) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkTrailingZeros" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkTrailingZeros) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkTrailingZeros8" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkTrailingZeros8) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkTrailingZeros16" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkTrailingZeros16) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkTrailingZeros32" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkTrailingZeros32) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkTrailingZeros64" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkTrailingZeros64) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkOnesCount" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkOnesCount) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkOnesCount8" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkOnesCount8) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkOnesCount16" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkOnesCount16) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkOnesCount32" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkOnesCount32) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkOnesCount64" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkOnesCount64) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRotateLeft" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkRotateLeft) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRotateLeft8" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkRotateLeft8) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRotateLeft16" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkRotateLeft16) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRotateLeft32" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkRotateLeft32) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRotateLeft64" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkRotateLeft64) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReverse" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkReverse) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReverse8" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkReverse8) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReverse16" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkReverse16) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReverse32" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkReverse32) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReverse64" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkReverse64) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReverseBytes" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkReverseBytes) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReverseBytes16" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkReverseBytes16) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReverseBytes32" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkReverseBytes32) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReverseBytes64" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkReverseBytes64) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAdd" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkAdd) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAdd32" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkAdd32) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAdd64" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkAdd64) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAdd64multiple" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkAdd64multiple) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSub" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkSub) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSub32" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkSub32) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSub64" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkSub64) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSub64multiple" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkSub64multiple) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMul" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkMul) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMul32" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkMul32) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMul64" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkMul64) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDiv" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkDiv) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDiv32" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkDiv32) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDiv64" : stdgo.GoString), stdgo.math.bits_test.Bits_test.benchmarkDiv64) : stdgo.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
var _fuzzTargets : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo.testing.Testing.InternalExample>(
36,
36,
(new stdgo.testing.Testing.InternalExample(("ExampleAdd32" : stdgo.GoString), stdgo.math.bits_test.Bits_test.exampleAdd32, ("[33 12] + [21 23] = [54 35] (carry bit was 0)\n[1 2147483648] + [1 2147483648] = [3 0] (carry bit was 1)\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleAdd64" : stdgo.GoString), stdgo.math.bits_test.Bits_test.exampleAdd64, ("[33 12] + [21 23] = [54 35] (carry bit was 0)\n[1 9223372036854775808] + [1 9223372036854775808] = [3 0] (carry bit was 1)\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSub32" : stdgo.GoString), stdgo.math.bits_test.Bits_test.exampleSub32, ("[33 23] - [21 12] = [12 11] (carry bit was 0)\n[3 2147483647] - [1 2147483648] = [1 4294967295] (carry bit was 1)\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSub64" : stdgo.GoString), stdgo.math.bits_test.Bits_test.exampleSub64, ("[33 23] - [21 12] = [12 11] (carry bit was 0)\n[3 9223372036854775807] - [1 9223372036854775808] = [1 18446744073709551615] (carry bit was 1)\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleMul32" : stdgo.GoString), stdgo.math.bits_test.Bits_test.exampleMul32, ("12 * 12 = [0 144]\n2147483648 * 2 = [1 0]\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleMul64" : stdgo.GoString), stdgo.math.bits_test.Bits_test.exampleMul64, ("12 * 12 = [0 144]\n9223372036854775808 * 2 = [1 0]\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleDiv32" : stdgo.GoString), stdgo.math.bits_test.Bits_test.exampleDiv32, ("[0 6] / 3 = [2 0]\n[2 2147483648] / 2147483648 = [5 0]\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleDiv64" : stdgo.GoString), stdgo.math.bits_test.Bits_test.exampleDiv64, ("[0 6] / 3 = [2 0]\n[2 9223372036854775808] / 9223372036854775808 = [5 0]\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleLeadingZeros8" : stdgo.GoString), stdgo.math.bits_test.Bits_test.exampleLeadingZeros8, ("LeadingZeros8(00000001) = 7\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleLeadingZeros16" : stdgo.GoString), stdgo.math.bits_test.Bits_test.exampleLeadingZeros16, ("LeadingZeros16(0000000000000001) = 15\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleLeadingZeros32" : stdgo.GoString), stdgo.math.bits_test.Bits_test.exampleLeadingZeros32, ("LeadingZeros32(00000000000000000000000000000001) = 31\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleLeadingZeros64" : stdgo.GoString), stdgo.math.bits_test.Bits_test.exampleLeadingZeros64, ("LeadingZeros64(0000000000000000000000000000000000000000000000000000000000000001) = 63\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleTrailingZeros8" : stdgo.GoString), stdgo.math.bits_test.Bits_test.exampleTrailingZeros8, ("TrailingZeros8(00001110) = 1\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleTrailingZeros16" : stdgo.GoString), stdgo.math.bits_test.Bits_test.exampleTrailingZeros16, ("TrailingZeros16(0000000000001110) = 1\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleTrailingZeros32" : stdgo.GoString), stdgo.math.bits_test.Bits_test.exampleTrailingZeros32, ("TrailingZeros32(00000000000000000000000000001110) = 1\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleTrailingZeros64" : stdgo.GoString), stdgo.math.bits_test.Bits_test.exampleTrailingZeros64, ("TrailingZeros64(0000000000000000000000000000000000000000000000000000000000001110) = 1\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleOnesCount" : stdgo.GoString), stdgo.math.bits_test.Bits_test.exampleOnesCount, ("OnesCount(1110) = 3\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleOnesCount8" : stdgo.GoString), stdgo.math.bits_test.Bits_test.exampleOnesCount8, ("OnesCount8(00001110) = 3\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleOnesCount16" : stdgo.GoString), stdgo.math.bits_test.Bits_test.exampleOnesCount16, ("OnesCount16(0000000000001110) = 3\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleOnesCount32" : stdgo.GoString), stdgo.math.bits_test.Bits_test.exampleOnesCount32, ("OnesCount32(00000000000000000000000000001110) = 3\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleOnesCount64" : stdgo.GoString), stdgo.math.bits_test.Bits_test.exampleOnesCount64, ("OnesCount64(0000000000000000000000000000000000000000000000000000000000001110) = 3\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRotateLeft8" : stdgo.GoString), stdgo.math.bits_test.Bits_test.exampleRotateLeft8, ("00001111\n00111100\n11000011\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRotateLeft16" : stdgo.GoString), stdgo.math.bits_test.Bits_test.exampleRotateLeft16, ("0000000000001111\n0000000000111100\n1100000000000011\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRotateLeft32" : stdgo.GoString), stdgo.math.bits_test.Bits_test.exampleRotateLeft32, ("00000000000000000000000000001111\n00000000000000000000000000111100\n11000000000000000000000000000011\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRotateLeft64" : stdgo.GoString), stdgo.math.bits_test.Bits_test.exampleRotateLeft64, ("0000000000000000000000000000000000000000000000000000000000001111\n0000000000000000000000000000000000000000000000000000000000111100\n1100000000000000000000000000000000000000000000000000000000000011\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleReverse8" : stdgo.GoString), stdgo.math.bits_test.Bits_test.exampleReverse8, ("00010011\n11001000\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleReverse16" : stdgo.GoString), stdgo.math.bits_test.Bits_test.exampleReverse16, ("0000000000010011\n1100100000000000\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleReverse32" : stdgo.GoString), stdgo.math.bits_test.Bits_test.exampleReverse32, ("00000000000000000000000000010011\n11001000000000000000000000000000\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleReverse64" : stdgo.GoString), stdgo.math.bits_test.Bits_test.exampleReverse64, ("0000000000000000000000000000000000000000000000000000000000010011\n1100100000000000000000000000000000000000000000000000000000000000\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleReverseBytes16" : stdgo.GoString), stdgo.math.bits_test.Bits_test.exampleReverseBytes16, ("0000000000001111\n0000111100000000\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleReverseBytes32" : stdgo.GoString), stdgo.math.bits_test.Bits_test.exampleReverseBytes32, ("00000000000000000000000000001111\n00001111000000000000000000000000\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleReverseBytes64" : stdgo.GoString), stdgo.math.bits_test.Bits_test.exampleReverseBytes64, ("0000000000000000000000000000000000000000000000000000000000001111\n0000111100000000000000000000000000000000000000000000000000000000\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleLen8" : stdgo.GoString), stdgo.math.bits_test.Bits_test.exampleLen8, ("Len8(00001000) = 4\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleLen16" : stdgo.GoString), stdgo.math.bits_test.Bits_test.exampleLen16, ("Len16(0000000000001000) = 4\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleLen32" : stdgo.GoString), stdgo.math.bits_test.Bits_test.exampleLen32, ("Len32(00000000000000000000000000001000) = 4\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleLen64" : stdgo.GoString), stdgo.math.bits_test.Bits_test.exampleLen64, ("Len64(0000000000000000000000000000000000000000000000000000000000001000) = 4\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample)) : stdgo.Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("math/bits" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
