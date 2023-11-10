# Module: `stdgo.math.bits`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _testOnesCount(_t:stdgo.Ref<stdgo.testing.T>, _x:stdgo.GoUInt64, _want:stdgo.GoInt):Void`](<#function-_testonescount>)

- [`function _testReverse(_t:stdgo.Ref<stdgo.testing.T>, _x64:stdgo.GoUInt64, _want64:stdgo.GoUInt64):Void`](<#function-_testreverse>)

- [`function _testReverseBytes(_t:stdgo.Ref<stdgo.testing.T>, _x64:stdgo.GoUInt64, _want64:stdgo.GoUInt64):Void`](<#function-_testreversebytes>)

- [`function benchmarkAdd(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkadd>)

- [`function benchmarkAdd32(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkadd32>)

- [`function benchmarkAdd64(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkadd64>)

- [`function benchmarkAdd64multiple(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkadd64multiple>)

- [`function benchmarkDiv(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkdiv>)

- [`function benchmarkDiv32(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkdiv32>)

- [`function benchmarkDiv64(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkdiv64>)

- [`function benchmarkLeadingZeros(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkleadingzeros>)

- [`function benchmarkLeadingZeros16(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkleadingzeros16>)

- [`function benchmarkLeadingZeros32(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkleadingzeros32>)

- [`function benchmarkLeadingZeros64(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkleadingzeros64>)

- [`function benchmarkLeadingZeros8(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkleadingzeros8>)

- [`function benchmarkMul(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkmul>)

- [`function benchmarkMul32(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkmul32>)

- [`function benchmarkMul64(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkmul64>)

- [`function benchmarkOnesCount(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkonescount>)

- [`function benchmarkOnesCount16(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkonescount16>)

- [`function benchmarkOnesCount32(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkonescount32>)

- [`function benchmarkOnesCount64(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkonescount64>)

- [`function benchmarkOnesCount8(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkonescount8>)

- [`function benchmarkReverse(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkreverse>)

- [`function benchmarkReverse16(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkreverse16>)

- [`function benchmarkReverse32(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkreverse32>)

- [`function benchmarkReverse64(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkreverse64>)

- [`function benchmarkReverse8(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkreverse8>)

- [`function benchmarkReverseBytes(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkreversebytes>)

- [`function benchmarkReverseBytes16(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkreversebytes16>)

- [`function benchmarkReverseBytes32(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkreversebytes32>)

- [`function benchmarkReverseBytes64(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkreversebytes64>)

- [`function benchmarkRotateLeft(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkrotateleft>)

- [`function benchmarkRotateLeft16(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkrotateleft16>)

- [`function benchmarkRotateLeft32(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkrotateleft32>)

- [`function benchmarkRotateLeft64(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkrotateleft64>)

- [`function benchmarkRotateLeft8(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkrotateleft8>)

- [`function benchmarkSub(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksub>)

- [`function benchmarkSub32(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksub32>)

- [`function benchmarkSub64(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksub64>)

- [`function benchmarkSub64multiple(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksub64multiple>)

- [`function benchmarkTrailingZeros(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarktrailingzeros>)

- [`function benchmarkTrailingZeros16(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarktrailingzeros16>)

- [`function benchmarkTrailingZeros32(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarktrailingzeros32>)

- [`function benchmarkTrailingZeros64(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarktrailingzeros64>)

- [`function benchmarkTrailingZeros8(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarktrailingzeros8>)

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

- [`function testAdd64OverflowPanic(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testadd64overflowpanic>)

- [`function testAddSubUint(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testaddsubuint>)

- [`function testAddSubUint32(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testaddsubuint32>)

- [`function testAddSubUint64(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testaddsubuint64>)

- [`function testDiv32PanicOverflow(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdiv32panicoverflow>)

- [`function testDiv32PanicZero(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdiv32paniczero>)

- [`function testDiv64PanicOverflow(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdiv64panicoverflow>)

- [`function testDiv64PanicZero(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdiv64paniczero>)

- [`function testDivPanicOverflow(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdivpanicoverflow>)

- [`function testDivPanicZero(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdivpaniczero>)

- [`function testLeadingZeros(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testleadingzeros>)

- [`function testLen(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testlen>)

- [`function testMulDiv(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testmuldiv>)

- [`function testMulDiv32(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testmuldiv32>)

- [`function testMulDiv64(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testmuldiv64>)

- [`function testOnesCount(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testonescount>)

- [`function testRem32(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testrem32>)

- [`function testRem32Overflow(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testrem32overflow>)

- [`function testRem64(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testrem64>)

- [`function testRem64Overflow(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testrem64overflow>)

- [`function testReverse(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreverse>)

- [`function testReverseBytes(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreversebytes>)

- [`function testRotateLeft(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testrotateleft>)

- [`function testSub64OverflowPanic(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testsub64overflowpanic>)

- [`function testTrailingZeros(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testtrailingzeros>)

- [`function testUintSize(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testuintsize>)

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
import stdgo.math.bits_test.Bits
```


```haxe
final __M:stdgo.GoUInt64 = ((4294967295i64 : stdgo.StdGoTypes.GoUInt64))
```


```haxe
final __M32:stdgo.GoUInt64 = ((4294967295i64 : stdgo.StdGoTypes.GoUInt64))
```


```haxe
final __M64:stdgo.GoUInt64 = ((-1i64 : stdgo.StdGoTypes.GoUInt64))
```


```haxe
final _divZeroError:stdgo.GoString = (("runtime error: integer divide by zero" : stdgo.GoString))
```


```haxe
final _overflowError:stdgo.GoString = (("runtime error: integer overflow" : stdgo.GoString))
```


# Variables


```haxe
import stdgo.math.bits_test.Bits
```


```haxe
var _:Bool
```


```haxe
var _tab:stdgo.GoArray<stdgo.math.bits_test.T_entry>
```



tab contains results for all uint8 values  

```haxe
var input:stdgo.GoUInt64
```



Exported \(global\) variable serving as input for some
of the benchmarks to ensure side\-effect free calls
are not optimized away.  

```haxe
var output:stdgo.GoInt
```



Exported \(global\) variable to store function results
during benchmarking to ensure side\-effect free calls
are not optimized away.  

```haxe
var _:Bool
```


```haxe
var _benchmarks:stdgo.Slice<stdgo.testing.InternalBenchmark>
```


```haxe
var _examples:stdgo.Slice<stdgo.testing.InternalExample>
```


```haxe
var _fuzzTargets:stdgo.Slice<stdgo.testing.InternalFuzzTarget>
```


```haxe
var _tests:stdgo.Slice<stdgo.testing.InternalTest>
```


# Functions


```haxe
import stdgo.math.bits_test.Bits
```


## function \_testOnesCount


```haxe
function _testOnesCount(_t:stdgo.Ref<stdgo.testing.T>, _x:stdgo.GoUInt64, _want:stdgo.GoInt):Void
```


[\(view code\)](<./Bits.hx#L475>)


## function \_testReverse


```haxe
function _testReverse(_t:stdgo.Ref<stdgo.testing.T>, _x64:stdgo.GoUInt64, _want64:stdgo.GoUInt64):Void
```


[\(view code\)](<./Bits.hx#L717>)


## function \_testReverseBytes


```haxe
function _testReverseBytes(_t:stdgo.Ref<stdgo.testing.T>, _x64:stdgo.GoUInt64, _want64:stdgo.GoUInt64):Void
```


[\(view code\)](<./Bits.hx#L824>)


## function benchmarkAdd


```haxe
function benchmarkAdd(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L1693>)


## function benchmarkAdd32


```haxe
function benchmarkAdd32(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L1707>)


## function benchmarkAdd64


```haxe
function benchmarkAdd64(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L1721>)


## function benchmarkAdd64multiple


```haxe
function benchmarkAdd64multiple(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L1735>)


## function benchmarkDiv


```haxe
function benchmarkDiv(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L1883>)


## function benchmarkDiv32


```haxe
function benchmarkDiv32(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L1897>)


## function benchmarkDiv64


```haxe
function benchmarkDiv64(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L1911>)


## function benchmarkLeadingZeros


```haxe
function benchmarkLeadingZeros(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L284>)


## function benchmarkLeadingZeros16


```haxe
function benchmarkLeadingZeros16(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L304>)


## function benchmarkLeadingZeros32


```haxe
function benchmarkLeadingZeros32(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L314>)


## function benchmarkLeadingZeros64


```haxe
function benchmarkLeadingZeros64(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L324>)


## function benchmarkLeadingZeros8


```haxe
function benchmarkLeadingZeros8(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L294>)


## function benchmarkMul


```haxe
function benchmarkMul(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L1841>)


## function benchmarkMul32


```haxe
function benchmarkMul32(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L1855>)


## function benchmarkMul64


```haxe
function benchmarkMul64(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L1869>)


## function benchmarkOnesCount


```haxe
function benchmarkOnesCount(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L513>)


## function benchmarkOnesCount16


```haxe
function benchmarkOnesCount16(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L533>)


## function benchmarkOnesCount32


```haxe
function benchmarkOnesCount32(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L543>)


## function benchmarkOnesCount64


```haxe
function benchmarkOnesCount64(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L553>)


## function benchmarkOnesCount8


```haxe
function benchmarkOnesCount8(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L523>)


## function benchmarkReverse


```haxe
function benchmarkReverse(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L757>)


## function benchmarkReverse16


```haxe
function benchmarkReverse16(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L777>)


## function benchmarkReverse32


```haxe
function benchmarkReverse32(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L787>)


## function benchmarkReverse64


```haxe
function benchmarkReverse64(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L797>)


## function benchmarkReverse8


```haxe
function benchmarkReverse8(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L767>)


## function benchmarkReverseBytes


```haxe
function benchmarkReverseBytes(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L858>)


## function benchmarkReverseBytes16


```haxe
function benchmarkReverseBytes16(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L868>)


## function benchmarkReverseBytes32


```haxe
function benchmarkReverseBytes32(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L878>)


## function benchmarkReverseBytes64


```haxe
function benchmarkReverseBytes64(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L888>)


## function benchmarkRotateLeft


```haxe
function benchmarkRotateLeft(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L635>)


## function benchmarkRotateLeft16


```haxe
function benchmarkRotateLeft16(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L655>)


## function benchmarkRotateLeft32


```haxe
function benchmarkRotateLeft32(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L665>)


## function benchmarkRotateLeft64


```haxe
function benchmarkRotateLeft64(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L675>)


## function benchmarkRotateLeft8


```haxe
function benchmarkRotateLeft8(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L645>)


## function benchmarkSub


```haxe
function benchmarkSub(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L1767>)


## function benchmarkSub32


```haxe
function benchmarkSub32(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L1781>)


## function benchmarkSub64


```haxe
function benchmarkSub64(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L1795>)


## function benchmarkSub64multiple


```haxe
function benchmarkSub64multiple(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L1809>)


## function benchmarkTrailingZeros


```haxe
function benchmarkTrailingZeros(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L397>)


## function benchmarkTrailingZeros16


```haxe
function benchmarkTrailingZeros16(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L417>)


## function benchmarkTrailingZeros32


```haxe
function benchmarkTrailingZeros32(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L427>)


## function benchmarkTrailingZeros64


```haxe
function benchmarkTrailingZeros64(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L437>)


## function benchmarkTrailingZeros8


```haxe
function benchmarkTrailingZeros8(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Bits.hx#L407>)


## function exampleAdd32


```haxe
function exampleAdd32():Void
```


[\(view code\)](<./Bits.hx#L1925>)


## function exampleAdd64


```haxe
function exampleAdd64():Void
```


[\(view code\)](<./Bits.hx#L1946>)


## function exampleDiv32


```haxe
function exampleDiv32():Void
```


[\(view code\)](<./Bits.hx#L2041>)


## function exampleDiv64


```haxe
function exampleDiv64():Void
```


[\(view code\)](<./Bits.hx#L2057>)


## function exampleLeadingZeros16


```haxe
function exampleLeadingZeros16():Void
```


[\(view code\)](<./Bits.hx#L2076>)


## function exampleLeadingZeros32


```haxe
function exampleLeadingZeros32():Void
```


[\(view code\)](<./Bits.hx#L2079>)


## function exampleLeadingZeros64


```haxe
function exampleLeadingZeros64():Void
```


[\(view code\)](<./Bits.hx#L2082>)


## function exampleLeadingZeros8


```haxe
function exampleLeadingZeros8():Void
```


[\(view code\)](<./Bits.hx#L2073>)


## function exampleLen16


```haxe
function exampleLen16():Void
```


[\(view code\)](<./Bits.hx#L2163>)


## function exampleLen32


```haxe
function exampleLen32():Void
```


[\(view code\)](<./Bits.hx#L2166>)


## function exampleLen64


```haxe
function exampleLen64():Void
```


[\(view code\)](<./Bits.hx#L2169>)


## function exampleLen8


```haxe
function exampleLen8():Void
```


[\(view code\)](<./Bits.hx#L2160>)


## function exampleMul32


```haxe
function exampleMul32():Void
```


[\(view code\)](<./Bits.hx#L2009>)


## function exampleMul64


```haxe
function exampleMul64():Void
```


[\(view code\)](<./Bits.hx#L2025>)


## function exampleOnesCount


```haxe
function exampleOnesCount():Void
```


[\(view code\)](<./Bits.hx#L2097>)


## function exampleOnesCount16


```haxe
function exampleOnesCount16():Void
```


[\(view code\)](<./Bits.hx#L2103>)


## function exampleOnesCount32


```haxe
function exampleOnesCount32():Void
```


[\(view code\)](<./Bits.hx#L2106>)


## function exampleOnesCount64


```haxe
function exampleOnesCount64():Void
```


[\(view code\)](<./Bits.hx#L2109>)


## function exampleOnesCount8


```haxe
function exampleOnesCount8():Void
```


[\(view code\)](<./Bits.hx#L2100>)


## function exampleReverse16


```haxe
function exampleReverse16():Void
```


[\(view code\)](<./Bits.hx#L2136>)


## function exampleReverse32


```haxe
function exampleReverse32():Void
```


[\(view code\)](<./Bits.hx#L2140>)


## function exampleReverse64


```haxe
function exampleReverse64():Void
```


[\(view code\)](<./Bits.hx#L2144>)


## function exampleReverse8


```haxe
function exampleReverse8():Void
```


[\(view code\)](<./Bits.hx#L2132>)


## function exampleReverseBytes16


```haxe
function exampleReverseBytes16():Void
```


[\(view code\)](<./Bits.hx#L2148>)


## function exampleReverseBytes32


```haxe
function exampleReverseBytes32():Void
```


[\(view code\)](<./Bits.hx#L2152>)


## function exampleReverseBytes64


```haxe
function exampleReverseBytes64():Void
```


[\(view code\)](<./Bits.hx#L2156>)


## function exampleRotateLeft16


```haxe
function exampleRotateLeft16():Void
```


[\(view code\)](<./Bits.hx#L2117>)


## function exampleRotateLeft32


```haxe
function exampleRotateLeft32():Void
```


[\(view code\)](<./Bits.hx#L2122>)


## function exampleRotateLeft64


```haxe
function exampleRotateLeft64():Void
```


[\(view code\)](<./Bits.hx#L2127>)


## function exampleRotateLeft8


```haxe
function exampleRotateLeft8():Void
```


[\(view code\)](<./Bits.hx#L2112>)


## function exampleSub32


```haxe
function exampleSub32():Void
```


[\(view code\)](<./Bits.hx#L1967>)


## function exampleSub64


```haxe
function exampleSub64():Void
```


[\(view code\)](<./Bits.hx#L1988>)


## function exampleTrailingZeros16


```haxe
function exampleTrailingZeros16():Void
```


[\(view code\)](<./Bits.hx#L2088>)


## function exampleTrailingZeros32


```haxe
function exampleTrailingZeros32():Void
```


[\(view code\)](<./Bits.hx#L2091>)


## function exampleTrailingZeros64


```haxe
function exampleTrailingZeros64():Void
```


[\(view code\)](<./Bits.hx#L2094>)


## function exampleTrailingZeros8


```haxe
function exampleTrailingZeros8():Void
```


[\(view code\)](<./Bits.hx#L2085>)


## function testAdd64OverflowPanic


```haxe
function testAdd64OverflowPanic(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bits.hx#L1057>)


## function testAddSubUint


```haxe
function testAddSubUint(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bits.hx#L952>)


## function testAddSubUint32


```haxe
function testAddSubUint32(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bits.hx#L991>)


## function testAddSubUint64


```haxe
function testAddSubUint64(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bits.hx#L1018>)


## function testDiv32PanicOverflow


```haxe
function testDiv32PanicOverflow(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bits.hx#L1374>)


## function testDiv32PanicZero


```haxe
function testDiv32PanicZero(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bits.hx#L1533>)


## function testDiv64PanicOverflow


```haxe
function testDiv64PanicOverflow(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bits.hx#L1427>)


## function testDiv64PanicZero


```haxe
function testDiv64PanicZero(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bits.hx#L1586>)


## function testDivPanicOverflow


```haxe
function testDivPanicOverflow(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bits.hx#L1321>)


## function testDivPanicZero


```haxe
function testDivPanicZero(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bits.hx#L1480>)


## function testLeadingZeros


```haxe
function testLeadingZeros(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bits.hx#L218>)


## function testLen


```haxe
function testLen(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bits.hx#L898>)


## function testMulDiv


```haxe
function testMulDiv(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bits.hx#L1237>)


## function testMulDiv32


```haxe
function testMulDiv32(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bits.hx#L1269>)


## function testMulDiv64


```haxe
function testMulDiv64(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bits.hx#L1289>)


## function testOnesCount


```haxe
function testOnesCount(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bits.hx#L447>)


## function testRem32


```haxe
function testRem32(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bits.hx#L1639>)


## function testRem32Overflow


```haxe
function testRem32Overflow(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bits.hx#L1653>)


## function testRem64


```haxe
function testRem64(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bits.hx#L1667>)


## function testRem64Overflow


```haxe
function testRem64Overflow(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bits.hx#L1681>)


## function testReverse


```haxe
function testReverse(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bits.hx#L685>)


## function testReverseBytes


```haxe
function testReverseBytes(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bits.hx#L807>)


## function testRotateLeft


```haxe
function testRotateLeft(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bits.hx#L563>)


## function testSub64OverflowPanic


```haxe
function testSub64OverflowPanic(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bits.hx#L1147>)


## function testTrailingZeros


```haxe
function testTrailingZeros(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bits.hx#L334>)


## function testUintSize


```haxe
function testUintSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Bits.hx#L209>)


## function main


```haxe
function main():Void
```


[\(view code\)](<./Bits.hx#L138>)


# Typedefs


```haxe
import stdgo.math.bits_test.*
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


