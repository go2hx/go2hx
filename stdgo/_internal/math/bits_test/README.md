# Module: `stdgo._internal.math.bits`

[(view library index)](../../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _testOnesCount(_t:stdgo.Ref<stdgo._internal.testing.T_>, _x:stdgo.GoUInt64, _want:stdgo.GoInt):Void`](<#function-_testonescount>)

- [`function _testReverse(_t:stdgo.Ref<stdgo._internal.testing.T_>, _x64:stdgo.GoUInt64, _want64:stdgo.GoUInt64):Void`](<#function-_testreverse>)

- [`function _testReverseBytes(_t:stdgo.Ref<stdgo._internal.testing.T_>, _x64:stdgo.GoUInt64, _want64:stdgo.GoUInt64):Void`](<#function-_testreversebytes>)

- [`function benchmarkAdd(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkadd>)

- [`function benchmarkAdd32(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkadd32>)

- [`function benchmarkAdd64(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkadd64>)

- [`function benchmarkAdd64multiple(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkadd64multiple>)

- [`function benchmarkDiv(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkdiv>)

- [`function benchmarkDiv32(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkdiv32>)

- [`function benchmarkDiv64(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkdiv64>)

- [`function benchmarkLeadingZeros(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkleadingzeros>)

- [`function benchmarkLeadingZeros16(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkleadingzeros16>)

- [`function benchmarkLeadingZeros32(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkleadingzeros32>)

- [`function benchmarkLeadingZeros64(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkleadingzeros64>)

- [`function benchmarkLeadingZeros8(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkleadingzeros8>)

- [`function benchmarkMul(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkmul>)

- [`function benchmarkMul32(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkmul32>)

- [`function benchmarkMul64(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkmul64>)

- [`function benchmarkOnesCount(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkonescount>)

- [`function benchmarkOnesCount16(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkonescount16>)

- [`function benchmarkOnesCount32(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkonescount32>)

- [`function benchmarkOnesCount64(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkonescount64>)

- [`function benchmarkOnesCount8(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkonescount8>)

- [`function benchmarkReverse(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkreverse>)

- [`function benchmarkReverse16(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkreverse16>)

- [`function benchmarkReverse32(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkreverse32>)

- [`function benchmarkReverse64(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkreverse64>)

- [`function benchmarkReverse8(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkreverse8>)

- [`function benchmarkReverseBytes(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkreversebytes>)

- [`function benchmarkReverseBytes16(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkreversebytes16>)

- [`function benchmarkReverseBytes32(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkreversebytes32>)

- [`function benchmarkReverseBytes64(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkreversebytes64>)

- [`function benchmarkRotateLeft(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkrotateleft>)

- [`function benchmarkRotateLeft16(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkrotateleft16>)

- [`function benchmarkRotateLeft32(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkrotateleft32>)

- [`function benchmarkRotateLeft64(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkrotateleft64>)

- [`function benchmarkRotateLeft8(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkrotateleft8>)

- [`function benchmarkSub(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksub>)

- [`function benchmarkSub32(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksub32>)

- [`function benchmarkSub64(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksub64>)

- [`function benchmarkSub64multiple(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksub64multiple>)

- [`function benchmarkTrailingZeros(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarktrailingzeros>)

- [`function benchmarkTrailingZeros16(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarktrailingzeros16>)

- [`function benchmarkTrailingZeros32(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarktrailingzeros32>)

- [`function benchmarkTrailingZeros64(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarktrailingzeros64>)

- [`function benchmarkTrailingZeros8(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarktrailingzeros8>)

- [`function exampleAdd32():Void`](<#function-exampleadd32>)

- [`function exampleAdd64():Void`](<#function-exampleadd64>)

- [`function exampleDiv32():Void`](<#function-examplediv32>)

- [`function exampleDiv64():Void`](<#function-examplediv64>)

- [`function exampleLeadingZeros16():Void`](<#function-exampleleadingzeros16>)

- [`function exampleLeadingZeros32():Void`](<#function-exampleleadingzeros32>)

- [`function exampleLeadingZeros64():Void`](<#function-exampleleadingzeros64>)

- [`function exampleLeadingZeros8():Void`](<#function-exampleleadingzeros8>)

- [`function exampleLen16():Void`](<#function-examplelen16>)

- [`function exampleLen32():Void`](<#function-examplelen32>)

- [`function exampleLen64():Void`](<#function-examplelen64>)

- [`function exampleLen8():Void`](<#function-examplelen8>)

- [`function exampleMul32():Void`](<#function-examplemul32>)

- [`function exampleMul64():Void`](<#function-examplemul64>)

- [`function exampleOnesCount():Void`](<#function-exampleonescount>)

- [`function exampleOnesCount16():Void`](<#function-exampleonescount16>)

- [`function exampleOnesCount32():Void`](<#function-exampleonescount32>)

- [`function exampleOnesCount64():Void`](<#function-exampleonescount64>)

- [`function exampleOnesCount8():Void`](<#function-exampleonescount8>)

- [`function exampleReverse16():Void`](<#function-examplereverse16>)

- [`function exampleReverse32():Void`](<#function-examplereverse32>)

- [`function exampleReverse64():Void`](<#function-examplereverse64>)

- [`function exampleReverse8():Void`](<#function-examplereverse8>)

- [`function exampleReverseBytes16():Void`](<#function-examplereversebytes16>)

- [`function exampleReverseBytes32():Void`](<#function-examplereversebytes32>)

- [`function exampleReverseBytes64():Void`](<#function-examplereversebytes64>)

- [`function exampleRotateLeft16():Void`](<#function-examplerotateleft16>)

- [`function exampleRotateLeft32():Void`](<#function-examplerotateleft32>)

- [`function exampleRotateLeft64():Void`](<#function-examplerotateleft64>)

- [`function exampleRotateLeft8():Void`](<#function-examplerotateleft8>)

- [`function exampleSub32():Void`](<#function-examplesub32>)

- [`function exampleSub64():Void`](<#function-examplesub64>)

- [`function exampleTrailingZeros16():Void`](<#function-exampletrailingzeros16>)

- [`function exampleTrailingZeros32():Void`](<#function-exampletrailingzeros32>)

- [`function exampleTrailingZeros64():Void`](<#function-exampletrailingzeros64>)

- [`function exampleTrailingZeros8():Void`](<#function-exampletrailingzeros8>)

- [`function testAdd64OverflowPanic(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testadd64overflowpanic>)

- [`function testAddSubUint(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testaddsubuint>)

- [`function testAddSubUint32(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testaddsubuint32>)

- [`function testAddSubUint64(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testaddsubuint64>)

- [`function testDiv32PanicOverflow(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdiv32panicoverflow>)

- [`function testDiv32PanicZero(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdiv32paniczero>)

- [`function testDiv64PanicOverflow(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdiv64panicoverflow>)

- [`function testDiv64PanicZero(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdiv64paniczero>)

- [`function testDivPanicOverflow(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdivpanicoverflow>)

- [`function testDivPanicZero(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdivpaniczero>)

- [`function testLeadingZeros(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testleadingzeros>)

- [`function testLen(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testlen>)

- [`function testMulDiv(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testmuldiv>)

- [`function testMulDiv32(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testmuldiv32>)

- [`function testMulDiv64(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testmuldiv64>)

- [`function testOnesCount(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testonescount>)

- [`function testRem32(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testrem32>)

- [`function testRem32Overflow(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testrem32overflow>)

- [`function testRem64(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testrem64>)

- [`function testRem64Overflow(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testrem64overflow>)

- [`function testReverse(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreverse>)

- [`function testReverseBytes(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreversebytes>)

- [`function testRotateLeft(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testrotateleft>)

- [`function testSub64OverflowPanic(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testsub64overflowpanic>)

- [`function testTrailingZeros(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testtrailingzeros>)

- [`function testUintSize(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testuintsize>)

- [`function main():Void`](<#function-main>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

- [typedef T\_\_struct\_2](<#typedef-t__struct_2>)

- [typedef T\_\_struct\_3](<#typedef-t__struct_3>)

- [typedef T\_\_struct\_4](<#typedef-t__struct_4>)

- [typedef T\_\_struct\_5](<#typedef-t__struct_5>)

- [typedef T\_\_struct\_6](<#typedef-t__struct_6>)

- [typedef T\_\_struct\_7](<#typedef-t__struct_7>)

- [typedef T\_entry](<#typedef-t_entry>)

# Constants


```haxe
import stdgo._internal.math.bits_test.Bits
```


```haxe
final __M:stdgo.GoUInt64 = ((4294967295i64 : stdgo.GoUInt64))
```


```haxe
final __M32:stdgo.GoUInt64 = ((4294967295i64 : stdgo.GoUInt64))
```


```haxe
final __M64:stdgo.GoUInt64 = ((-1i64 : stdgo.GoUInt64))
```


```haxe
final _divZeroError:stdgo.GoString = (("runtime error: integer divide by zero" : stdgo.GoString))
```


```haxe
final _overflowError:stdgo.GoString = (("runtime error: integer overflow" : stdgo.GoString))
```


# Variables


```haxe
import stdgo._internal.math.bits_test.Bits
```


```haxe
var _:Bool
```


```haxe
var _tab:stdgo.GoArray<stdgo._internal.math.bits_test.T_entry>
```


```haxe
var input:stdgo.GoUInt64
```


```haxe
var output:stdgo.GoInt
```


```haxe
var _:Bool
```


```haxe
var _benchmarks:stdgo.Slice<stdgo._internal.testing.InternalBenchmark>
```


```haxe
var _examples:stdgo.Slice<stdgo._internal.testing.InternalExample>
```


```haxe
var _fuzzTargets:stdgo.Slice<stdgo._internal.testing.InternalFuzzTarget>
```


```haxe
var _tests:stdgo.Slice<stdgo._internal.testing.InternalTest>
```


# Functions


```haxe
import stdgo._internal.math.bits_test.Bits
```


## function \_testOnesCount


```haxe
function _testOnesCount(_t:stdgo.Ref<stdgo._internal.testing.T_>, _x:stdgo.GoUInt64, _want:stdgo.GoInt):Void
```


[\(view code\)](<./Bits.hx#L431>)


## function \_testReverse


```haxe
function _testReverse(_t:stdgo.Ref<stdgo._internal.testing.T_>, _x64:stdgo.GoUInt64, _want64:stdgo.GoUInt64):Void
```


[\(view code\)](<./Bits.hx#L671>)


## function \_testReverseBytes


```haxe
function _testReverseBytes(_t:stdgo.Ref<stdgo._internal.testing.T_>, _x64:stdgo.GoUInt64, _want64:stdgo.GoUInt64):Void
```


[\(view code\)](<./Bits.hx#L767>)


## function benchmarkAdd


```haxe
function benchmarkAdd(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L1609>)


## function benchmarkAdd32


```haxe
function benchmarkAdd32(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L1624>)


## function benchmarkAdd64


```haxe
function benchmarkAdd64(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L1639>)


## function benchmarkAdd64multiple


```haxe
function benchmarkAdd64multiple(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L1654>)


## function benchmarkDiv


```haxe
function benchmarkDiv(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L1808>)


## function benchmarkDiv32


```haxe
function benchmarkDiv32(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L1823>)


## function benchmarkDiv64


```haxe
function benchmarkDiv64(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L1838>)


## function benchmarkLeadingZeros


```haxe
function benchmarkLeadingZeros(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L240>)


## function benchmarkLeadingZeros16


```haxe
function benchmarkLeadingZeros16(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L260>)


## function benchmarkLeadingZeros32


```haxe
function benchmarkLeadingZeros32(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L270>)


## function benchmarkLeadingZeros64


```haxe
function benchmarkLeadingZeros64(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L280>)


## function benchmarkLeadingZeros8


```haxe
function benchmarkLeadingZeros8(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L250>)


## function benchmarkMul


```haxe
function benchmarkMul(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L1763>)


## function benchmarkMul32


```haxe
function benchmarkMul32(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L1778>)


## function benchmarkMul64


```haxe
function benchmarkMul64(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L1793>)


## function benchmarkOnesCount


```haxe
function benchmarkOnesCount(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L469>)


## function benchmarkOnesCount16


```haxe
function benchmarkOnesCount16(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L489>)


## function benchmarkOnesCount32


```haxe
function benchmarkOnesCount32(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L499>)


## function benchmarkOnesCount64


```haxe
function benchmarkOnesCount64(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L509>)


## function benchmarkOnesCount8


```haxe
function benchmarkOnesCount8(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L479>)


## function benchmarkReverse


```haxe
function benchmarkReverse(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L711>)


## function benchmarkReverse16


```haxe
function benchmarkReverse16(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L731>)


## function benchmarkReverse32


```haxe
function benchmarkReverse32(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L741>)


## function benchmarkReverse64


```haxe
function benchmarkReverse64(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L751>)


## function benchmarkReverse8


```haxe
function benchmarkReverse8(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L721>)


## function benchmarkReverseBytes


```haxe
function benchmarkReverseBytes(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L801>)


## function benchmarkReverseBytes16


```haxe
function benchmarkReverseBytes16(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L811>)


## function benchmarkReverseBytes32


```haxe
function benchmarkReverseBytes32(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L821>)


## function benchmarkReverseBytes64


```haxe
function benchmarkReverseBytes64(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L831>)


## function benchmarkRotateLeft


```haxe
function benchmarkRotateLeft(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L591>)


## function benchmarkRotateLeft16


```haxe
function benchmarkRotateLeft16(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L611>)


## function benchmarkRotateLeft32


```haxe
function benchmarkRotateLeft32(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L621>)


## function benchmarkRotateLeft64


```haxe
function benchmarkRotateLeft64(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L631>)


## function benchmarkRotateLeft8


```haxe
function benchmarkRotateLeft8(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L601>)


## function benchmarkSub


```haxe
function benchmarkSub(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L1686>)


## function benchmarkSub32


```haxe
function benchmarkSub32(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L1701>)


## function benchmarkSub64


```haxe
function benchmarkSub64(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L1716>)


## function benchmarkSub64multiple


```haxe
function benchmarkSub64multiple(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L1731>)


## function benchmarkTrailingZeros


```haxe
function benchmarkTrailingZeros(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L353>)


## function benchmarkTrailingZeros16


```haxe
function benchmarkTrailingZeros16(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L373>)


## function benchmarkTrailingZeros32


```haxe
function benchmarkTrailingZeros32(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L383>)


## function benchmarkTrailingZeros64


```haxe
function benchmarkTrailingZeros64(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L393>)


## function benchmarkTrailingZeros8


```haxe
function benchmarkTrailingZeros8(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L363>)


## function exampleAdd32


```haxe
function exampleAdd32():Void
```


[\(view code\)](<./Bits.hx#L1853>)


## function exampleAdd64


```haxe
function exampleAdd64():Void
```


[\(view code\)](<./Bits.hx#L1874>)


## function exampleDiv32


```haxe
function exampleDiv32():Void
```


[\(view code\)](<./Bits.hx#L1969>)


## function exampleDiv64


```haxe
function exampleDiv64():Void
```


[\(view code\)](<./Bits.hx#L1985>)


## function exampleLeadingZeros16


```haxe
function exampleLeadingZeros16():Void
```


[\(view code\)](<./Bits.hx#L2004>)


## function exampleLeadingZeros32


```haxe
function exampleLeadingZeros32():Void
```


[\(view code\)](<./Bits.hx#L2007>)


## function exampleLeadingZeros64


```haxe
function exampleLeadingZeros64():Void
```


[\(view code\)](<./Bits.hx#L2010>)


## function exampleLeadingZeros8


```haxe
function exampleLeadingZeros8():Void
```


[\(view code\)](<./Bits.hx#L2001>)


## function exampleLen16


```haxe
function exampleLen16():Void
```


[\(view code\)](<./Bits.hx#L2091>)


## function exampleLen32


```haxe
function exampleLen32():Void
```


[\(view code\)](<./Bits.hx#L2094>)


## function exampleLen64


```haxe
function exampleLen64():Void
```


[\(view code\)](<./Bits.hx#L2097>)


## function exampleLen8


```haxe
function exampleLen8():Void
```


[\(view code\)](<./Bits.hx#L2088>)


## function exampleMul32


```haxe
function exampleMul32():Void
```


[\(view code\)](<./Bits.hx#L1937>)


## function exampleMul64


```haxe
function exampleMul64():Void
```


[\(view code\)](<./Bits.hx#L1953>)


## function exampleOnesCount


```haxe
function exampleOnesCount():Void
```


[\(view code\)](<./Bits.hx#L2025>)


## function exampleOnesCount16


```haxe
function exampleOnesCount16():Void
```


[\(view code\)](<./Bits.hx#L2031>)


## function exampleOnesCount32


```haxe
function exampleOnesCount32():Void
```


[\(view code\)](<./Bits.hx#L2034>)


## function exampleOnesCount64


```haxe
function exampleOnesCount64():Void
```


[\(view code\)](<./Bits.hx#L2037>)


## function exampleOnesCount8


```haxe
function exampleOnesCount8():Void
```


[\(view code\)](<./Bits.hx#L2028>)


## function exampleReverse16


```haxe
function exampleReverse16():Void
```


[\(view code\)](<./Bits.hx#L2064>)


## function exampleReverse32


```haxe
function exampleReverse32():Void
```


[\(view code\)](<./Bits.hx#L2068>)


## function exampleReverse64


```haxe
function exampleReverse64():Void
```


[\(view code\)](<./Bits.hx#L2072>)


## function exampleReverse8


```haxe
function exampleReverse8():Void
```


[\(view code\)](<./Bits.hx#L2060>)


## function exampleReverseBytes16


```haxe
function exampleReverseBytes16():Void
```


[\(view code\)](<./Bits.hx#L2076>)


## function exampleReverseBytes32


```haxe
function exampleReverseBytes32():Void
```


[\(view code\)](<./Bits.hx#L2080>)


## function exampleReverseBytes64


```haxe
function exampleReverseBytes64():Void
```


[\(view code\)](<./Bits.hx#L2084>)


## function exampleRotateLeft16


```haxe
function exampleRotateLeft16():Void
```


[\(view code\)](<./Bits.hx#L2045>)


## function exampleRotateLeft32


```haxe
function exampleRotateLeft32():Void
```


[\(view code\)](<./Bits.hx#L2050>)


## function exampleRotateLeft64


```haxe
function exampleRotateLeft64():Void
```


[\(view code\)](<./Bits.hx#L2055>)


## function exampleRotateLeft8


```haxe
function exampleRotateLeft8():Void
```


[\(view code\)](<./Bits.hx#L2040>)


## function exampleSub32


```haxe
function exampleSub32():Void
```


[\(view code\)](<./Bits.hx#L1895>)


## function exampleSub64


```haxe
function exampleSub64():Void
```


[\(view code\)](<./Bits.hx#L1916>)


## function exampleTrailingZeros16


```haxe
function exampleTrailingZeros16():Void
```


[\(view code\)](<./Bits.hx#L2016>)


## function exampleTrailingZeros32


```haxe
function exampleTrailingZeros32():Void
```


[\(view code\)](<./Bits.hx#L2019>)


## function exampleTrailingZeros64


```haxe
function exampleTrailingZeros64():Void
```


[\(view code\)](<./Bits.hx#L2022>)


## function exampleTrailingZeros8


```haxe
function exampleTrailingZeros8():Void
```


[\(view code\)](<./Bits.hx#L2013>)


## function testAdd64OverflowPanic


```haxe
function testAdd64OverflowPanic(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bits.hx#L994>)


## function testAddSubUint


```haxe
function testAddSubUint(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bits.hx#L895>)


## function testAddSubUint32


```haxe
function testAddSubUint32(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bits.hx#L932>)


## function testAddSubUint64


```haxe
function testAddSubUint64(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bits.hx#L957>)


## function testDiv32PanicOverflow


```haxe
function testDiv32PanicOverflow(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bits.hx#L1302>)


## function testDiv32PanicZero


```haxe
function testDiv32PanicZero(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bits.hx#L1452>)


## function testDiv64PanicOverflow


```haxe
function testDiv64PanicOverflow(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bits.hx#L1352>)


## function testDiv64PanicZero


```haxe
function testDiv64PanicZero(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bits.hx#L1502>)


## function testDivPanicOverflow


```haxe
function testDivPanicOverflow(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bits.hx#L1252>)


## function testDivPanicZero


```haxe
function testDivPanicZero(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bits.hx#L1402>)


## function testLeadingZeros


```haxe
function testLeadingZeros(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bits.hx#L174>)


## function testLen


```haxe
function testLen(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bits.hx#L841>)


## function testMulDiv


```haxe
function testMulDiv(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bits.hx#L1168>)


## function testMulDiv32


```haxe
function testMulDiv32(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bits.hx#L1200>)


## function testMulDiv64


```haxe
function testMulDiv64(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bits.hx#L1220>)


## function testOnesCount


```haxe
function testOnesCount(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bits.hx#L403>)


## function testRem32


```haxe
function testRem32(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bits.hx#L1552>)


## function testRem32Overflow


```haxe
function testRem32Overflow(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bits.hx#L1567>)


## function testRem64


```haxe
function testRem64(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bits.hx#L1582>)


## function testRem64Overflow


```haxe
function testRem64Overflow(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bits.hx#L1597>)


## function testReverse


```haxe
function testReverse(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bits.hx#L641>)


## function testReverseBytes


```haxe
function testReverseBytes(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bits.hx#L761>)


## function testRotateLeft


```haxe
function testRotateLeft(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bits.hx#L519>)


## function testSub64OverflowPanic


```haxe
function testSub64OverflowPanic(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bits.hx#L1081>)


## function testTrailingZeros


```haxe
function testTrailingZeros(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bits.hx#L290>)


## function testUintSize


```haxe
function testUintSize(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Bits.hx#L165>)


## function main


```haxe
function main():Void
```


[\(view code\)](<./Bits.hx#L113>)


# Typedefs


```haxe
import stdgo._internal.math.bits_test.*
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = {
	_x:stdgo.GoUInt64;
	_r:stdgo.GoUInt64;
};
```


## typedef T\_\_struct\_1


```haxe
typedef T__struct_1 = {
	_z:stdgo.GoUInt;
	_y:stdgo.GoUInt;
	_x:stdgo.GoUInt;
	_cout:stdgo.GoUInt;
	_c:stdgo.GoUInt;
};
```


## typedef T\_\_struct\_2


```haxe
typedef T__struct_2 = {
	_z:stdgo.GoUInt32;
	_y:stdgo.GoUInt32;
	_x:stdgo.GoUInt32;
	_cout:stdgo.GoUInt32;
	_c:stdgo.GoUInt32;
};
```


## typedef T\_\_struct\_3


```haxe
typedef T__struct_3 = {
	_z:stdgo.GoUInt64;
	_y:stdgo.GoUInt64;
	_x:stdgo.GoUInt64;
	_cout:stdgo.GoUInt64;
	_c:stdgo.GoUInt64;
};
```


## typedef T\_\_struct\_4


```haxe
typedef T__struct_4 = {
	_y:stdgo.GoUInt;
	_x:stdgo.GoUInt;
	_r:stdgo.GoUInt;
	_lo:stdgo.GoUInt;
	_hi:stdgo.GoUInt;
};
```


## typedef T\_\_struct\_5


```haxe
typedef T__struct_5 = {
	_y:stdgo.GoUInt32;
	_x:stdgo.GoUInt32;
	_r:stdgo.GoUInt32;
	_lo:stdgo.GoUInt32;
	_hi:stdgo.GoUInt32;
};
```


## typedef T\_\_struct\_6


```haxe
typedef T__struct_6 = {
	_y:stdgo.GoUInt64;
	_x:stdgo.GoUInt64;
	_r:stdgo.GoUInt64;
	_lo:stdgo.GoUInt64;
	_hi:stdgo.GoUInt64;
};
```


## typedef T\_\_struct\_7


```haxe
typedef T__struct_7 = {
	_y:stdgo.GoUInt64;
	_rem:stdgo.GoUInt64;
	_lo:stdgo.GoUInt64;
	_hi:stdgo.GoUInt64;
};
```


## typedef T\_entry


```haxe
typedef T_entry = {
	_pop:stdgo.GoInt;
	_ntz:stdgo.GoInt;
	_nlz:stdgo.GoInt;
};
```


