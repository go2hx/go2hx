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
import stdgo.math.bits.Bits;
/**
    
    
    
**/
private var _tests = (new Slice<stdgo.testing.Testing.InternalTest>(
0,
0,
(new stdgo.testing.Testing.InternalTest(("TestUintSize" : GoString), stdgo.math.bits_test.Bits_test.testUintSize) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLeadingZeros" : GoString), stdgo.math.bits_test.Bits_test.testLeadingZeros) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestTrailingZeros" : GoString), stdgo.math.bits_test.Bits_test.testTrailingZeros) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOnesCount" : GoString), stdgo.math.bits_test.Bits_test.testOnesCount) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRotateLeft" : GoString), stdgo.math.bits_test.Bits_test.testRotateLeft) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReverse" : GoString), stdgo.math.bits_test.Bits_test.testReverse) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReverseBytes" : GoString), stdgo.math.bits_test.Bits_test.testReverseBytes) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLen" : GoString), stdgo.math.bits_test.Bits_test.testLen) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAddSubUint" : GoString), stdgo.math.bits_test.Bits_test.testAddSubUint) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAddSubUint32" : GoString), stdgo.math.bits_test.Bits_test.testAddSubUint32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAddSubUint64" : GoString), stdgo.math.bits_test.Bits_test.testAddSubUint64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAdd64OverflowPanic" : GoString), stdgo.math.bits_test.Bits_test.testAdd64OverflowPanic) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSub64OverflowPanic" : GoString), stdgo.math.bits_test.Bits_test.testSub64OverflowPanic) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMulDiv" : GoString), stdgo.math.bits_test.Bits_test.testMulDiv) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMulDiv32" : GoString), stdgo.math.bits_test.Bits_test.testMulDiv32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMulDiv64" : GoString), stdgo.math.bits_test.Bits_test.testMulDiv64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDivPanicOverflow" : GoString), stdgo.math.bits_test.Bits_test.testDivPanicOverflow) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDiv32PanicOverflow" : GoString), stdgo.math.bits_test.Bits_test.testDiv32PanicOverflow) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDiv64PanicOverflow" : GoString), stdgo.math.bits_test.Bits_test.testDiv64PanicOverflow) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDivPanicZero" : GoString), stdgo.math.bits_test.Bits_test.testDivPanicZero) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDiv32PanicZero" : GoString), stdgo.math.bits_test.Bits_test.testDiv32PanicZero) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDiv64PanicZero" : GoString), stdgo.math.bits_test.Bits_test.testDiv64PanicZero) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRem32" : GoString), stdgo.math.bits_test.Bits_test.testRem32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRem32Overflow" : GoString), stdgo.math.bits_test.Bits_test.testRem32Overflow) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRem64" : GoString), stdgo.math.bits_test.Bits_test.testRem64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRem64Overflow" : GoString), stdgo.math.bits_test.Bits_test.testRem64Overflow) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
private var _benchmarks = (new Slice<stdgo.testing.Testing.InternalBenchmark>(
0,
0,
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLeadingZeros" : GoString), stdgo.math.bits_test.Bits_test.benchmarkLeadingZeros) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLeadingZeros8" : GoString), stdgo.math.bits_test.Bits_test.benchmarkLeadingZeros8) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLeadingZeros16" : GoString), stdgo.math.bits_test.Bits_test.benchmarkLeadingZeros16) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLeadingZeros32" : GoString), stdgo.math.bits_test.Bits_test.benchmarkLeadingZeros32) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLeadingZeros64" : GoString), stdgo.math.bits_test.Bits_test.benchmarkLeadingZeros64) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkTrailingZeros" : GoString), stdgo.math.bits_test.Bits_test.benchmarkTrailingZeros) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkTrailingZeros8" : GoString), stdgo.math.bits_test.Bits_test.benchmarkTrailingZeros8) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkTrailingZeros16" : GoString), stdgo.math.bits_test.Bits_test.benchmarkTrailingZeros16) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkTrailingZeros32" : GoString), stdgo.math.bits_test.Bits_test.benchmarkTrailingZeros32) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkTrailingZeros64" : GoString), stdgo.math.bits_test.Bits_test.benchmarkTrailingZeros64) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkOnesCount" : GoString), stdgo.math.bits_test.Bits_test.benchmarkOnesCount) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkOnesCount8" : GoString), stdgo.math.bits_test.Bits_test.benchmarkOnesCount8) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkOnesCount16" : GoString), stdgo.math.bits_test.Bits_test.benchmarkOnesCount16) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkOnesCount32" : GoString), stdgo.math.bits_test.Bits_test.benchmarkOnesCount32) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkOnesCount64" : GoString), stdgo.math.bits_test.Bits_test.benchmarkOnesCount64) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRotateLeft" : GoString), stdgo.math.bits_test.Bits_test.benchmarkRotateLeft) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRotateLeft8" : GoString), stdgo.math.bits_test.Bits_test.benchmarkRotateLeft8) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRotateLeft16" : GoString), stdgo.math.bits_test.Bits_test.benchmarkRotateLeft16) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRotateLeft32" : GoString), stdgo.math.bits_test.Bits_test.benchmarkRotateLeft32) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRotateLeft64" : GoString), stdgo.math.bits_test.Bits_test.benchmarkRotateLeft64) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReverse" : GoString), stdgo.math.bits_test.Bits_test.benchmarkReverse) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReverse8" : GoString), stdgo.math.bits_test.Bits_test.benchmarkReverse8) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReverse16" : GoString), stdgo.math.bits_test.Bits_test.benchmarkReverse16) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReverse32" : GoString), stdgo.math.bits_test.Bits_test.benchmarkReverse32) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReverse64" : GoString), stdgo.math.bits_test.Bits_test.benchmarkReverse64) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReverseBytes" : GoString), stdgo.math.bits_test.Bits_test.benchmarkReverseBytes) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReverseBytes16" : GoString), stdgo.math.bits_test.Bits_test.benchmarkReverseBytes16) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReverseBytes32" : GoString), stdgo.math.bits_test.Bits_test.benchmarkReverseBytes32) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReverseBytes64" : GoString), stdgo.math.bits_test.Bits_test.benchmarkReverseBytes64) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAdd" : GoString), stdgo.math.bits_test.Bits_test.benchmarkAdd) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAdd32" : GoString), stdgo.math.bits_test.Bits_test.benchmarkAdd32) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAdd64" : GoString), stdgo.math.bits_test.Bits_test.benchmarkAdd64) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAdd64multiple" : GoString), stdgo.math.bits_test.Bits_test.benchmarkAdd64multiple) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSub" : GoString), stdgo.math.bits_test.Bits_test.benchmarkSub) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSub32" : GoString), stdgo.math.bits_test.Bits_test.benchmarkSub32) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSub64" : GoString), stdgo.math.bits_test.Bits_test.benchmarkSub64) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSub64multiple" : GoString), stdgo.math.bits_test.Bits_test.benchmarkSub64multiple) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMul" : GoString), stdgo.math.bits_test.Bits_test.benchmarkMul) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMul32" : GoString), stdgo.math.bits_test.Bits_test.benchmarkMul32) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMul64" : GoString), stdgo.math.bits_test.Bits_test.benchmarkMul64) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDiv" : GoString), stdgo.math.bits_test.Bits_test.benchmarkDiv) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDiv32" : GoString), stdgo.math.bits_test.Bits_test.benchmarkDiv32) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDiv64" : GoString), stdgo.math.bits_test.Bits_test.benchmarkDiv64) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
private var _fuzzTargets = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
private var _examples = (new Slice<stdgo.testing.Testing.InternalExample>(
0,
0,
(new stdgo.testing.Testing.InternalExample(("ExampleAdd32" : GoString), stdgo.math.bits_test.Bits_test.exampleAdd32, ("[33 12] + [21 23] = [54 35] (carry bit was 0)\n[1 2147483648] + [1 2147483648] = [3 0] (carry bit was 1)\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleAdd64" : GoString), stdgo.math.bits_test.Bits_test.exampleAdd64, ("[33 12] + [21 23] = [54 35] (carry bit was 0)\n[1 9223372036854775808] + [1 9223372036854775808] = [3 0] (carry bit was 1)\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSub32" : GoString), stdgo.math.bits_test.Bits_test.exampleSub32, ("[33 23] - [21 12] = [12 11] (carry bit was 0)\n[3 2147483647] - [1 2147483648] = [1 4294967295] (carry bit was 1)\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSub64" : GoString), stdgo.math.bits_test.Bits_test.exampleSub64, ("[33 23] - [21 12] = [12 11] (carry bit was 0)\n[3 9223372036854775807] - [1 9223372036854775808] = [1 18446744073709551615] (carry bit was 1)\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleMul32" : GoString), stdgo.math.bits_test.Bits_test.exampleMul32, ("12 * 12 = [0 144]\n2147483648 * 2 = [1 0]\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleMul64" : GoString), stdgo.math.bits_test.Bits_test.exampleMul64, ("12 * 12 = [0 144]\n9223372036854775808 * 2 = [1 0]\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleDiv32" : GoString), stdgo.math.bits_test.Bits_test.exampleDiv32, ("[0 6] / 3 = [2 0]\n[2 2147483648] / 2147483648 = [5 0]\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleDiv64" : GoString), stdgo.math.bits_test.Bits_test.exampleDiv64, ("[0 6] / 3 = [2 0]\n[2 9223372036854775808] / 9223372036854775808 = [5 0]\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleLeadingZeros8" : GoString), stdgo.math.bits_test.Bits_test.exampleLeadingZeros8, ("LeadingZeros8(00000001) = 7\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleLeadingZeros16" : GoString), stdgo.math.bits_test.Bits_test.exampleLeadingZeros16, ("LeadingZeros16(0000000000000001) = 15\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleLeadingZeros32" : GoString), stdgo.math.bits_test.Bits_test.exampleLeadingZeros32, ("LeadingZeros32(00000000000000000000000000000001) = 31\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleLeadingZeros64" : GoString), stdgo.math.bits_test.Bits_test.exampleLeadingZeros64, ("LeadingZeros64(0000000000000000000000000000000000000000000000000000000000000001) = 63\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleTrailingZeros8" : GoString), stdgo.math.bits_test.Bits_test.exampleTrailingZeros8, ("TrailingZeros8(00001110) = 1\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleTrailingZeros16" : GoString), stdgo.math.bits_test.Bits_test.exampleTrailingZeros16, ("TrailingZeros16(0000000000001110) = 1\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleTrailingZeros32" : GoString), stdgo.math.bits_test.Bits_test.exampleTrailingZeros32, ("TrailingZeros32(00000000000000000000000000001110) = 1\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleTrailingZeros64" : GoString), stdgo.math.bits_test.Bits_test.exampleTrailingZeros64, ("TrailingZeros64(0000000000000000000000000000000000000000000000000000000000001110) = 1\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleOnesCount" : GoString), stdgo.math.bits_test.Bits_test.exampleOnesCount, ("OnesCount(1110) = 3\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleOnesCount8" : GoString), stdgo.math.bits_test.Bits_test.exampleOnesCount8, ("OnesCount8(00001110) = 3\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleOnesCount16" : GoString), stdgo.math.bits_test.Bits_test.exampleOnesCount16, ("OnesCount16(0000000000001110) = 3\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleOnesCount32" : GoString), stdgo.math.bits_test.Bits_test.exampleOnesCount32, ("OnesCount32(00000000000000000000000000001110) = 3\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleOnesCount64" : GoString), stdgo.math.bits_test.Bits_test.exampleOnesCount64, ("OnesCount64(0000000000000000000000000000000000000000000000000000000000001110) = 3\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRotateLeft8" : GoString), stdgo.math.bits_test.Bits_test.exampleRotateLeft8, ("00001111\n00111100\n11000011\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRotateLeft16" : GoString), stdgo.math.bits_test.Bits_test.exampleRotateLeft16, ("0000000000001111\n0000000000111100\n1100000000000011\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRotateLeft32" : GoString), stdgo.math.bits_test.Bits_test.exampleRotateLeft32, ("00000000000000000000000000001111\n00000000000000000000000000111100\n11000000000000000000000000000011\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRotateLeft64" : GoString), stdgo.math.bits_test.Bits_test.exampleRotateLeft64, ("0000000000000000000000000000000000000000000000000000000000001111\n0000000000000000000000000000000000000000000000000000000000111100\n1100000000000000000000000000000000000000000000000000000000000011\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleReverse8" : GoString), stdgo.math.bits_test.Bits_test.exampleReverse8, ("00010011\n11001000\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleReverse16" : GoString), stdgo.math.bits_test.Bits_test.exampleReverse16, ("0000000000010011\n1100100000000000\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleReverse32" : GoString), stdgo.math.bits_test.Bits_test.exampleReverse32, ("00000000000000000000000000010011\n11001000000000000000000000000000\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleReverse64" : GoString), stdgo.math.bits_test.Bits_test.exampleReverse64, ("0000000000000000000000000000000000000000000000000000000000010011\n1100100000000000000000000000000000000000000000000000000000000000\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleReverseBytes16" : GoString), stdgo.math.bits_test.Bits_test.exampleReverseBytes16, ("0000000000001111\n0000111100000000\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleReverseBytes32" : GoString), stdgo.math.bits_test.Bits_test.exampleReverseBytes32, ("00000000000000000000000000001111\n00001111000000000000000000000000\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleReverseBytes64" : GoString), stdgo.math.bits_test.Bits_test.exampleReverseBytes64, ("0000000000000000000000000000000000000000000000000000000000001111\n0000111100000000000000000000000000000000000000000000000000000000\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleLen8" : GoString), stdgo.math.bits_test.Bits_test.exampleLen8, ("Len8(00001000) = 4\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleLen16" : GoString), stdgo.math.bits_test.Bits_test.exampleLen16, ("Len16(0000000000001000) = 4\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleLen32" : GoString), stdgo.math.bits_test.Bits_test.exampleLen32, ("Len32(00000000000000000000000000001000) = 4\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleLen64" : GoString), stdgo.math.bits_test.Bits_test.exampleLen64, ("Len64(0000000000000000000000000000000000000000000000000000000000001000) = 4\n" : GoString), false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);
private function main():Void {
        var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("math/bits" : GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
