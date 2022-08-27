package stdgo.math.bits_test;
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
0,
0,
((new stdgo.testing.Testing.InternalTest(((Go.str("TestUintSize") : GoString)), stdgo.math.bits_test.Bits_test.testUintSize) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestLeadingZeros") : GoString)), stdgo.math.bits_test.Bits_test.testLeadingZeros) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestTrailingZeros") : GoString)), stdgo.math.bits_test.Bits_test.testTrailingZeros) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestOnesCount") : GoString)), stdgo.math.bits_test.Bits_test.testOnesCount) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestRotateLeft") : GoString)), stdgo.math.bits_test.Bits_test.testRotateLeft) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestReverse") : GoString)), stdgo.math.bits_test.Bits_test.testReverse) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestReverseBytes") : GoString)), stdgo.math.bits_test.Bits_test.testReverseBytes) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestLen") : GoString)), stdgo.math.bits_test.Bits_test.testLen) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestAddSubUint") : GoString)), stdgo.math.bits_test.Bits_test.testAddSubUint) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestAddSubUint32") : GoString)), stdgo.math.bits_test.Bits_test.testAddSubUint32) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestAddSubUint64") : GoString)), stdgo.math.bits_test.Bits_test.testAddSubUint64) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestAdd64OverflowPanic") : GoString)), stdgo.math.bits_test.Bits_test.testAdd64OverflowPanic) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestSub64OverflowPanic") : GoString)), stdgo.math.bits_test.Bits_test.testSub64OverflowPanic) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestMulDiv") : GoString)), stdgo.math.bits_test.Bits_test.testMulDiv) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestMulDiv32") : GoString)), stdgo.math.bits_test.Bits_test.testMulDiv32) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestMulDiv64") : GoString)), stdgo.math.bits_test.Bits_test.testMulDiv64) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestDivPanicOverflow") : GoString)), stdgo.math.bits_test.Bits_test.testDivPanicOverflow) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestDiv32PanicOverflow") : GoString)), stdgo.math.bits_test.Bits_test.testDiv32PanicOverflow) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestDiv64PanicOverflow") : GoString)), stdgo.math.bits_test.Bits_test.testDiv64PanicOverflow) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestDivPanicZero") : GoString)), stdgo.math.bits_test.Bits_test.testDivPanicZero) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestDiv32PanicZero") : GoString)), stdgo.math.bits_test.Bits_test.testDiv32PanicZero) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestDiv64PanicZero") : GoString)), stdgo.math.bits_test.Bits_test.testDiv64PanicZero) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestRem32") : GoString)), stdgo.math.bits_test.Bits_test.testRem32) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestRem32Overflow") : GoString)), stdgo.math.bits_test.Bits_test.testRem32Overflow) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestRem64") : GoString)), stdgo.math.bits_test.Bits_test.testRem64) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((Go.str("TestRem64Overflow") : GoString)), stdgo.math.bits_test.Bits_test.testRem64Overflow) : stdgo.testing.Testing.InternalTest))) : Slice<stdgo.testing.Testing.InternalTest>));
var _benchmarks : Slice<stdgo.testing.Testing.InternalBenchmark> = ((new Slice<stdgo.testing.Testing.InternalBenchmark>(
0,
0,
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkLeadingZeros") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkLeadingZeros) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkLeadingZeros8") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkLeadingZeros8) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkLeadingZeros16") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkLeadingZeros16) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkLeadingZeros32") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkLeadingZeros32) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkLeadingZeros64") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkLeadingZeros64) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkTrailingZeros") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkTrailingZeros) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkTrailingZeros8") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkTrailingZeros8) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkTrailingZeros16") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkTrailingZeros16) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkTrailingZeros32") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkTrailingZeros32) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkTrailingZeros64") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkTrailingZeros64) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkOnesCount") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkOnesCount) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkOnesCount8") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkOnesCount8) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkOnesCount16") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkOnesCount16) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkOnesCount32") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkOnesCount32) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkOnesCount64") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkOnesCount64) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkRotateLeft") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkRotateLeft) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkRotateLeft8") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkRotateLeft8) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkRotateLeft16") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkRotateLeft16) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkRotateLeft32") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkRotateLeft32) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkRotateLeft64") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkRotateLeft64) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkReverse") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkReverse) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkReverse8") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkReverse8) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkReverse16") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkReverse16) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkReverse32") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkReverse32) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkReverse64") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkReverse64) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkReverseBytes") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkReverseBytes) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkReverseBytes16") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkReverseBytes16) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkReverseBytes32") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkReverseBytes32) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkReverseBytes64") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkReverseBytes64) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkAdd") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkAdd) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkAdd32") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkAdd32) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkAdd64") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkAdd64) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkAdd64multiple") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkAdd64multiple) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkSub") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkSub) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkSub32") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkSub32) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkSub64") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkSub64) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkSub64multiple") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkSub64multiple) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkMul") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkMul) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkMul32") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkMul32) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkMul64") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkMul64) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkDiv") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkDiv) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkDiv32") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkDiv32) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((Go.str("BenchmarkDiv64") : GoString)), stdgo.math.bits_test.Bits_test.benchmarkDiv64) : stdgo.testing.Testing.InternalBenchmark))) : Slice<stdgo.testing.Testing.InternalBenchmark>));
var _fuzzTargets : Slice<stdgo.testing.Testing.InternalFuzzTarget> = ((new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>));
var _examples : Slice<stdgo.testing.Testing.InternalExample> = ((new Slice<stdgo.testing.Testing.InternalExample>(
0,
0,
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleAdd32") : GoString)), stdgo.math.bits_test.Bits_test.exampleAdd32, ((Go.str("[33 12] + [21 23] = [54 35] (carry bit was 0)\n[1 2147483648] + [1 2147483648] = [3 0] (carry bit was 1)\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleAdd64") : GoString)), stdgo.math.bits_test.Bits_test.exampleAdd64, ((Go.str("[33 12] + [21 23] = [54 35] (carry bit was 0)\n[1 9223372036854775808] + [1 9223372036854775808] = [3 0] (carry bit was 1)\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleSub32") : GoString)), stdgo.math.bits_test.Bits_test.exampleSub32, ((Go.str("[33 23] - [21 12] = [12 11] (carry bit was 0)\n[3 2147483647] - [1 2147483648] = [1 4294967295] (carry bit was 1)\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleSub64") : GoString)), stdgo.math.bits_test.Bits_test.exampleSub64, ((Go.str("[33 23] - [21 12] = [12 11] (carry bit was 0)\n[3 9223372036854775807] - [1 9223372036854775808] = [1 18446744073709551615] (carry bit was 1)\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleMul32") : GoString)), stdgo.math.bits_test.Bits_test.exampleMul32, ((Go.str("12 * 12 = [0 144]\n2147483648 * 2 = [1 0]\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleMul64") : GoString)), stdgo.math.bits_test.Bits_test.exampleMul64, ((Go.str("12 * 12 = [0 144]\n9223372036854775808 * 2 = [1 0]\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleDiv32") : GoString)), stdgo.math.bits_test.Bits_test.exampleDiv32, ((Go.str("[0 6] / 3 = [2 0]\n[2 2147483648] / 2147483648 = [5 0]\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleDiv64") : GoString)), stdgo.math.bits_test.Bits_test.exampleDiv64, ((Go.str("[0 6] / 3 = [2 0]\n[2 9223372036854775808] / 9223372036854775808 = [5 0]\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleLeadingZeros8") : GoString)), stdgo.math.bits_test.Bits_test.exampleLeadingZeros8, ((Go.str("LeadingZeros8(00000001) = 7\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleLeadingZeros16") : GoString)), stdgo.math.bits_test.Bits_test.exampleLeadingZeros16, ((Go.str("LeadingZeros16(0000000000000001) = 15\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleLeadingZeros32") : GoString)), stdgo.math.bits_test.Bits_test.exampleLeadingZeros32, ((Go.str("LeadingZeros32(00000000000000000000000000000001) = 31\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleLeadingZeros64") : GoString)), stdgo.math.bits_test.Bits_test.exampleLeadingZeros64, ((Go.str("LeadingZeros64(0000000000000000000000000000000000000000000000000000000000000001) = 63\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleTrailingZeros8") : GoString)), stdgo.math.bits_test.Bits_test.exampleTrailingZeros8, ((Go.str("TrailingZeros8(00001110) = 1\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleTrailingZeros16") : GoString)), stdgo.math.bits_test.Bits_test.exampleTrailingZeros16, ((Go.str("TrailingZeros16(0000000000001110) = 1\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleTrailingZeros32") : GoString)), stdgo.math.bits_test.Bits_test.exampleTrailingZeros32, ((Go.str("TrailingZeros32(00000000000000000000000000001110) = 1\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleTrailingZeros64") : GoString)), stdgo.math.bits_test.Bits_test.exampleTrailingZeros64, ((Go.str("TrailingZeros64(0000000000000000000000000000000000000000000000000000000000001110) = 1\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleOnesCount") : GoString)), stdgo.math.bits_test.Bits_test.exampleOnesCount, ((Go.str("OnesCount(1110) = 3\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleOnesCount8") : GoString)), stdgo.math.bits_test.Bits_test.exampleOnesCount8, ((Go.str("OnesCount8(00001110) = 3\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleOnesCount16") : GoString)), stdgo.math.bits_test.Bits_test.exampleOnesCount16, ((Go.str("OnesCount16(0000000000001110) = 3\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleOnesCount32") : GoString)), stdgo.math.bits_test.Bits_test.exampleOnesCount32, ((Go.str("OnesCount32(00000000000000000000000000001110) = 3\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleOnesCount64") : GoString)), stdgo.math.bits_test.Bits_test.exampleOnesCount64, ((Go.str("OnesCount64(0000000000000000000000000000000000000000000000000000000000001110) = 3\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleRotateLeft8") : GoString)), stdgo.math.bits_test.Bits_test.exampleRotateLeft8, ((Go.str("00001111\n00111100\n11000011\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleRotateLeft16") : GoString)), stdgo.math.bits_test.Bits_test.exampleRotateLeft16, ((Go.str("0000000000001111\n0000000000111100\n1100000000000011\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleRotateLeft32") : GoString)), stdgo.math.bits_test.Bits_test.exampleRotateLeft32, ((Go.str("00000000000000000000000000001111\n00000000000000000000000000111100\n11000000000000000000000000000011\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleRotateLeft64") : GoString)), stdgo.math.bits_test.Bits_test.exampleRotateLeft64, ((Go.str("0000000000000000000000000000000000000000000000000000000000001111\n0000000000000000000000000000000000000000000000000000000000111100\n1100000000000000000000000000000000000000000000000000000000000011\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleReverse8") : GoString)), stdgo.math.bits_test.Bits_test.exampleReverse8, ((Go.str("00010011\n11001000\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleReverse16") : GoString)), stdgo.math.bits_test.Bits_test.exampleReverse16, ((Go.str("0000000000010011\n1100100000000000\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleReverse32") : GoString)), stdgo.math.bits_test.Bits_test.exampleReverse32, ((Go.str("00000000000000000000000000010011\n11001000000000000000000000000000\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleReverse64") : GoString)), stdgo.math.bits_test.Bits_test.exampleReverse64, ((Go.str("0000000000000000000000000000000000000000000000000000000000010011\n1100100000000000000000000000000000000000000000000000000000000000\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleReverseBytes16") : GoString)), stdgo.math.bits_test.Bits_test.exampleReverseBytes16, ((Go.str("0000000000001111\n0000111100000000\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleReverseBytes32") : GoString)), stdgo.math.bits_test.Bits_test.exampleReverseBytes32, ((Go.str("00000000000000000000000000001111\n00001111000000000000000000000000\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleReverseBytes64") : GoString)), stdgo.math.bits_test.Bits_test.exampleReverseBytes64, ((Go.str("0000000000000000000000000000000000000000000000000000000000001111\n0000111100000000000000000000000000000000000000000000000000000000\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleLen8") : GoString)), stdgo.math.bits_test.Bits_test.exampleLen8, ((Go.str("Len8(00001000) = 4\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleLen16") : GoString)), stdgo.math.bits_test.Bits_test.exampleLen16, ((Go.str("Len16(0000000000001000) = 4\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleLen32") : GoString)), stdgo.math.bits_test.Bits_test.exampleLen32, ((Go.str("Len32(00000000000000000000000000001000) = 4\n") : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((Go.str("ExampleLen64") : GoString)), stdgo.math.bits_test.Bits_test.exampleLen64, ((Go.str("Len64(0000000000000000000000000000000000000000000000000000000000001000) = 4\n") : GoString)), false) : stdgo.testing.Testing.InternalExample))) : Slice<stdgo.testing.Testing.InternalExample>));
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
            __self__.setPanicOnExit0 = #if !macro function(__0:Bool):Void ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).setPanicOnExit0(__0) #else null #end;
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
            stdgo.testing.internal.testdeps.Testdeps.importPath = ((Go.str("math/bits") : GoString));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
