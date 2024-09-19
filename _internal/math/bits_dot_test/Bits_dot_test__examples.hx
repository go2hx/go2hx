package _internal.math.bits_dot_test;
import stdgo._internal.math.bits.Bits;
var _examples : stdgo.Slice<stdgo._internal.testing.Testing_InternalExample.InternalExample> = (new stdgo.Slice<stdgo._internal.testing.Testing_InternalExample.InternalExample>(36, 36, ...[
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleAdd32" : stdgo.GoString), _internal.math.bits_test.Bits_test_exampleAdd32.exampleAdd32, ("[33 12] + [21 23] = [54 35] (carry bit was 0)\n[1 2147483648] + [1 2147483648] = [3 0] (carry bit was 1)\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleAdd64" : stdgo.GoString), _internal.math.bits_test.Bits_test_exampleAdd64.exampleAdd64, ("[33 12] + [21 23] = [54 35] (carry bit was 0)\n[1 9223372036854775808] + [1 9223372036854775808] = [3 0] (carry bit was 1)\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleSub32" : stdgo.GoString), _internal.math.bits_test.Bits_test_exampleSub32.exampleSub32, ("[33 23] - [21 12] = [12 11] (carry bit was 0)\n[3 2147483647] - [1 2147483648] = [1 4294967295] (carry bit was 1)\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleSub64" : stdgo.GoString), _internal.math.bits_test.Bits_test_exampleSub64.exampleSub64, ("[33 23] - [21 12] = [12 11] (carry bit was 0)\n[3 9223372036854775807] - [1 9223372036854775808] = [1 18446744073709551615] (carry bit was 1)\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleMul32" : stdgo.GoString), _internal.math.bits_test.Bits_test_exampleMul32.exampleMul32, ("12 * 12 = [0 144]\n2147483648 * 2 = [1 0]\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleMul64" : stdgo.GoString), _internal.math.bits_test.Bits_test_exampleMul64.exampleMul64, ("12 * 12 = [0 144]\n9223372036854775808 * 2 = [1 0]\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleDiv32" : stdgo.GoString), _internal.math.bits_test.Bits_test_exampleDiv32.exampleDiv32, ("[0 6] / 3 = [2 0]\n[2 2147483648] / 2147483648 = [5 0]\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleDiv64" : stdgo.GoString), _internal.math.bits_test.Bits_test_exampleDiv64.exampleDiv64, ("[0 6] / 3 = [2 0]\n[2 9223372036854775808] / 9223372036854775808 = [5 0]\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleLeadingZeros8" : stdgo.GoString), _internal.math.bits_test.Bits_test_exampleLeadingZeros8.exampleLeadingZeros8, ("LeadingZeros8(00000001) = 7\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleLeadingZeros16" : stdgo.GoString), _internal.math.bits_test.Bits_test_exampleLeadingZeros16.exampleLeadingZeros16, ("LeadingZeros16(0000000000000001) = 15\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleLeadingZeros32" : stdgo.GoString), _internal.math.bits_test.Bits_test_exampleLeadingZeros32.exampleLeadingZeros32, ("LeadingZeros32(00000000000000000000000000000001) = 31\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleLeadingZeros64" : stdgo.GoString), _internal.math.bits_test.Bits_test_exampleLeadingZeros64.exampleLeadingZeros64, ("LeadingZeros64(0000000000000000000000000000000000000000000000000000000000000001) = 63\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleTrailingZeros8" : stdgo.GoString), _internal.math.bits_test.Bits_test_exampleTrailingZeros8.exampleTrailingZeros8, ("TrailingZeros8(00001110) = 1\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleTrailingZeros16" : stdgo.GoString), _internal.math.bits_test.Bits_test_exampleTrailingZeros16.exampleTrailingZeros16, ("TrailingZeros16(0000000000001110) = 1\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleTrailingZeros32" : stdgo.GoString), _internal.math.bits_test.Bits_test_exampleTrailingZeros32.exampleTrailingZeros32, ("TrailingZeros32(00000000000000000000000000001110) = 1\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleTrailingZeros64" : stdgo.GoString), _internal.math.bits_test.Bits_test_exampleTrailingZeros64.exampleTrailingZeros64, ("TrailingZeros64(0000000000000000000000000000000000000000000000000000000000001110) = 1\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleOnesCount" : stdgo.GoString), _internal.math.bits_test.Bits_test_exampleOnesCount.exampleOnesCount, ("OnesCount(1110) = 3\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleOnesCount8" : stdgo.GoString), _internal.math.bits_test.Bits_test_exampleOnesCount8.exampleOnesCount8, ("OnesCount8(00001110) = 3\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleOnesCount16" : stdgo.GoString), _internal.math.bits_test.Bits_test_exampleOnesCount16.exampleOnesCount16, ("OnesCount16(0000000000001110) = 3\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleOnesCount32" : stdgo.GoString), _internal.math.bits_test.Bits_test_exampleOnesCount32.exampleOnesCount32, ("OnesCount32(00000000000000000000000000001110) = 3\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleOnesCount64" : stdgo.GoString), _internal.math.bits_test.Bits_test_exampleOnesCount64.exampleOnesCount64, ("OnesCount64(0000000000000000000000000000000000000000000000000000000000001110) = 3\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleRotateLeft8" : stdgo.GoString), _internal.math.bits_test.Bits_test_exampleRotateLeft8.exampleRotateLeft8, ("00001111\n00111100\n11000011\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleRotateLeft16" : stdgo.GoString), _internal.math.bits_test.Bits_test_exampleRotateLeft16.exampleRotateLeft16, ("0000000000001111\n0000000000111100\n1100000000000011\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleRotateLeft32" : stdgo.GoString), _internal.math.bits_test.Bits_test_exampleRotateLeft32.exampleRotateLeft32, ("00000000000000000000000000001111\n00000000000000000000000000111100\n11000000000000000000000000000011\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleRotateLeft64" : stdgo.GoString), _internal.math.bits_test.Bits_test_exampleRotateLeft64.exampleRotateLeft64, ("0000000000000000000000000000000000000000000000000000000000001111\n0000000000000000000000000000000000000000000000000000000000111100\n1100000000000000000000000000000000000000000000000000000000000011\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleReverse8" : stdgo.GoString), _internal.math.bits_test.Bits_test_exampleReverse8.exampleReverse8, ("00010011\n11001000\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleReverse16" : stdgo.GoString), _internal.math.bits_test.Bits_test_exampleReverse16.exampleReverse16, ("0000000000010011\n1100100000000000\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleReverse32" : stdgo.GoString), _internal.math.bits_test.Bits_test_exampleReverse32.exampleReverse32, ("00000000000000000000000000010011\n11001000000000000000000000000000\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleReverse64" : stdgo.GoString), _internal.math.bits_test.Bits_test_exampleReverse64.exampleReverse64, ("0000000000000000000000000000000000000000000000000000000000010011\n1100100000000000000000000000000000000000000000000000000000000000\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleReverseBytes16" : stdgo.GoString), _internal.math.bits_test.Bits_test_exampleReverseBytes16.exampleReverseBytes16, ("0000000000001111\n0000111100000000\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleReverseBytes32" : stdgo.GoString), _internal.math.bits_test.Bits_test_exampleReverseBytes32.exampleReverseBytes32, ("00000000000000000000000000001111\n00001111000000000000000000000000\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleReverseBytes64" : stdgo.GoString), _internal.math.bits_test.Bits_test_exampleReverseBytes64.exampleReverseBytes64, ("0000000000000000000000000000000000000000000000000000000000001111\n0000111100000000000000000000000000000000000000000000000000000000\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleLen8" : stdgo.GoString), _internal.math.bits_test.Bits_test_exampleLen8.exampleLen8, ("Len8(00001000) = 4\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleLen16" : stdgo.GoString), _internal.math.bits_test.Bits_test_exampleLen16.exampleLen16, ("Len16(0000000000001000) = 4\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleLen32" : stdgo.GoString), _internal.math.bits_test.Bits_test_exampleLen32.exampleLen32, ("Len32(00000000000000000000000000001000) = 4\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample),
(new stdgo._internal.testing.Testing_InternalExample.InternalExample(("ExampleLen64" : stdgo.GoString), _internal.math.bits_test.Bits_test_exampleLen64.exampleLen64, ("Len64(0000000000000000000000000000000000000000000000000000000000001000) = 4\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing_InternalExample.InternalExample)].concat([for (i in 36 ... (36 > 36 ? 36 : 36 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing_InternalExample.InternalExample)])) : stdgo.Slice<stdgo._internal.testing.Testing_InternalExample.InternalExample>);