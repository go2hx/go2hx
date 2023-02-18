# Module: `stdgo.math.bits`

[(view library index)](../../stdgo.md)


# Overview





# Index


- [Variables](<#variables>)

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

# Variables


```haxe
import stdgo.math.bits_test.Bits
```


```haxe
var _:Bool
```


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


# Functions


```haxe
import stdgo.math.bits_test.Bits
```


## function benchmarkAdd


```haxe
function benchmarkAdd(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L1677>)


## function benchmarkAdd32


```haxe
function benchmarkAdd32(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L1691>)


## function benchmarkAdd64


```haxe
function benchmarkAdd64(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L1705>)


## function benchmarkAdd64multiple


```haxe
function benchmarkAdd64multiple(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L1719>)


## function benchmarkDiv


```haxe
function benchmarkDiv(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L1867>)


## function benchmarkDiv32


```haxe
function benchmarkDiv32(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L1881>)


## function benchmarkDiv64


```haxe
function benchmarkDiv64(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L1895>)


## function benchmarkLeadingZeros


```haxe
function benchmarkLeadingZeros(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L292>)


## function benchmarkLeadingZeros16


```haxe
function benchmarkLeadingZeros16(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L312>)


## function benchmarkLeadingZeros32


```haxe
function benchmarkLeadingZeros32(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L322>)


## function benchmarkLeadingZeros64


```haxe
function benchmarkLeadingZeros64(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L332>)


## function benchmarkLeadingZeros8


```haxe
function benchmarkLeadingZeros8(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L302>)


## function benchmarkMul


```haxe
function benchmarkMul(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L1825>)


## function benchmarkMul32


```haxe
function benchmarkMul32(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L1839>)


## function benchmarkMul64


```haxe
function benchmarkMul64(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L1853>)


## function benchmarkOnesCount


```haxe
function benchmarkOnesCount(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L521>)


## function benchmarkOnesCount16


```haxe
function benchmarkOnesCount16(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L541>)


## function benchmarkOnesCount32


```haxe
function benchmarkOnesCount32(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L551>)


## function benchmarkOnesCount64


```haxe
function benchmarkOnesCount64(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L561>)


## function benchmarkOnesCount8


```haxe
function benchmarkOnesCount8(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L531>)


## function benchmarkReverse


```haxe
function benchmarkReverse(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L765>)


## function benchmarkReverse16


```haxe
function benchmarkReverse16(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L785>)


## function benchmarkReverse32


```haxe
function benchmarkReverse32(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L795>)


## function benchmarkReverse64


```haxe
function benchmarkReverse64(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L805>)


## function benchmarkReverse8


```haxe
function benchmarkReverse8(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L775>)


## function benchmarkReverseBytes


```haxe
function benchmarkReverseBytes(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L866>)


## function benchmarkReverseBytes16


```haxe
function benchmarkReverseBytes16(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L876>)


## function benchmarkReverseBytes32


```haxe
function benchmarkReverseBytes32(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L886>)


## function benchmarkReverseBytes64


```haxe
function benchmarkReverseBytes64(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L896>)


## function benchmarkRotateLeft


```haxe
function benchmarkRotateLeft(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L643>)


## function benchmarkRotateLeft16


```haxe
function benchmarkRotateLeft16(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L663>)


## function benchmarkRotateLeft32


```haxe
function benchmarkRotateLeft32(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L673>)


## function benchmarkRotateLeft64


```haxe
function benchmarkRotateLeft64(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L683>)


## function benchmarkRotateLeft8


```haxe
function benchmarkRotateLeft8(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L653>)


## function benchmarkSub


```haxe
function benchmarkSub(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L1751>)


## function benchmarkSub32


```haxe
function benchmarkSub32(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L1765>)


## function benchmarkSub64


```haxe
function benchmarkSub64(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L1779>)


## function benchmarkSub64multiple


```haxe
function benchmarkSub64multiple(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L1793>)


## function benchmarkTrailingZeros


```haxe
function benchmarkTrailingZeros(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L405>)


## function benchmarkTrailingZeros16


```haxe
function benchmarkTrailingZeros16(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L425>)


## function benchmarkTrailingZeros32


```haxe
function benchmarkTrailingZeros32(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L435>)


## function benchmarkTrailingZeros64


```haxe
function benchmarkTrailingZeros64(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L445>)


## function benchmarkTrailingZeros8


```haxe
function benchmarkTrailingZeros8(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Bits.hx#L415>)


## function exampleAdd32


```haxe
function exampleAdd32():Void
```





[\(view code\)](<./Bits.hx#L1909>)


## function exampleAdd64


```haxe
function exampleAdd64():Void
```





[\(view code\)](<./Bits.hx#L1930>)


## function exampleDiv32


```haxe
function exampleDiv32():Void
```





[\(view code\)](<./Bits.hx#L2025>)


## function exampleDiv64


```haxe
function exampleDiv64():Void
```





[\(view code\)](<./Bits.hx#L2041>)


## function exampleLeadingZeros16


```haxe
function exampleLeadingZeros16():Void
```





[\(view code\)](<./Bits.hx#L2060>)


## function exampleLeadingZeros32


```haxe
function exampleLeadingZeros32():Void
```





[\(view code\)](<./Bits.hx#L2063>)


## function exampleLeadingZeros64


```haxe
function exampleLeadingZeros64():Void
```





[\(view code\)](<./Bits.hx#L2066>)


## function exampleLeadingZeros8


```haxe
function exampleLeadingZeros8():Void
```





[\(view code\)](<./Bits.hx#L2057>)


## function exampleLen16


```haxe
function exampleLen16():Void
```





[\(view code\)](<./Bits.hx#L2147>)


## function exampleLen32


```haxe
function exampleLen32():Void
```





[\(view code\)](<./Bits.hx#L2150>)


## function exampleLen64


```haxe
function exampleLen64():Void
```





[\(view code\)](<./Bits.hx#L2153>)


## function exampleLen8


```haxe
function exampleLen8():Void
```





[\(view code\)](<./Bits.hx#L2144>)


## function exampleMul32


```haxe
function exampleMul32():Void
```





[\(view code\)](<./Bits.hx#L1993>)


## function exampleMul64


```haxe
function exampleMul64():Void
```





[\(view code\)](<./Bits.hx#L2009>)


## function exampleOnesCount


```haxe
function exampleOnesCount():Void
```





[\(view code\)](<./Bits.hx#L2081>)


## function exampleOnesCount16


```haxe
function exampleOnesCount16():Void
```





[\(view code\)](<./Bits.hx#L2087>)


## function exampleOnesCount32


```haxe
function exampleOnesCount32():Void
```





[\(view code\)](<./Bits.hx#L2090>)


## function exampleOnesCount64


```haxe
function exampleOnesCount64():Void
```





[\(view code\)](<./Bits.hx#L2093>)


## function exampleOnesCount8


```haxe
function exampleOnesCount8():Void
```





[\(view code\)](<./Bits.hx#L2084>)


## function exampleReverse16


```haxe
function exampleReverse16():Void
```





[\(view code\)](<./Bits.hx#L2120>)


## function exampleReverse32


```haxe
function exampleReverse32():Void
```





[\(view code\)](<./Bits.hx#L2124>)


## function exampleReverse64


```haxe
function exampleReverse64():Void
```





[\(view code\)](<./Bits.hx#L2128>)


## function exampleReverse8


```haxe
function exampleReverse8():Void
```





[\(view code\)](<./Bits.hx#L2116>)


## function exampleReverseBytes16


```haxe
function exampleReverseBytes16():Void
```





[\(view code\)](<./Bits.hx#L2132>)


## function exampleReverseBytes32


```haxe
function exampleReverseBytes32():Void
```





[\(view code\)](<./Bits.hx#L2136>)


## function exampleReverseBytes64


```haxe
function exampleReverseBytes64():Void
```





[\(view code\)](<./Bits.hx#L2140>)


## function exampleRotateLeft16


```haxe
function exampleRotateLeft16():Void
```





[\(view code\)](<./Bits.hx#L2101>)


## function exampleRotateLeft32


```haxe
function exampleRotateLeft32():Void
```





[\(view code\)](<./Bits.hx#L2106>)


## function exampleRotateLeft64


```haxe
function exampleRotateLeft64():Void
```





[\(view code\)](<./Bits.hx#L2111>)


## function exampleRotateLeft8


```haxe
function exampleRotateLeft8():Void
```





[\(view code\)](<./Bits.hx#L2096>)


## function exampleSub32


```haxe
function exampleSub32():Void
```





[\(view code\)](<./Bits.hx#L1951>)


## function exampleSub64


```haxe
function exampleSub64():Void
```





[\(view code\)](<./Bits.hx#L1972>)


## function exampleTrailingZeros16


```haxe
function exampleTrailingZeros16():Void
```





[\(view code\)](<./Bits.hx#L2072>)


## function exampleTrailingZeros32


```haxe
function exampleTrailingZeros32():Void
```





[\(view code\)](<./Bits.hx#L2075>)


## function exampleTrailingZeros64


```haxe
function exampleTrailingZeros64():Void
```





[\(view code\)](<./Bits.hx#L2078>)


## function exampleTrailingZeros8


```haxe
function exampleTrailingZeros8():Void
```





[\(view code\)](<./Bits.hx#L2069>)


## function testAdd64OverflowPanic


```haxe
function testAdd64OverflowPanic(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bits.hx#L1065>)


## function testAddSubUint


```haxe
function testAddSubUint(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bits.hx#L960>)


## function testAddSubUint32


```haxe
function testAddSubUint32(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bits.hx#L999>)


## function testAddSubUint64


```haxe
function testAddSubUint64(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bits.hx#L1026>)


## function testDiv32PanicOverflow


```haxe
function testDiv32PanicOverflow(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bits.hx#L1373>)


## function testDiv32PanicZero


```haxe
function testDiv32PanicZero(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bits.hx#L1523>)


## function testDiv64PanicOverflow


```haxe
function testDiv64PanicOverflow(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bits.hx#L1423>)


## function testDiv64PanicZero


```haxe
function testDiv64PanicZero(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bits.hx#L1573>)


## function testDivPanicOverflow


```haxe
function testDivPanicOverflow(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bits.hx#L1323>)


## function testDivPanicZero


```haxe
function testDivPanicZero(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bits.hx#L1473>)


## function testLeadingZeros


```haxe
function testLeadingZeros(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bits.hx#L226>)


## function testLen


```haxe
function testLen(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bits.hx#L906>)


## function testMulDiv


```haxe
function testMulDiv(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bits.hx#L1239>)


## function testMulDiv32


```haxe
function testMulDiv32(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bits.hx#L1271>)


## function testMulDiv64


```haxe
function testMulDiv64(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bits.hx#L1291>)


## function testOnesCount


```haxe
function testOnesCount(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bits.hx#L455>)


## function testRem32


```haxe
function testRem32(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bits.hx#L1623>)


## function testRem32Overflow


```haxe
function testRem32Overflow(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bits.hx#L1637>)


## function testRem64


```haxe
function testRem64(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bits.hx#L1651>)


## function testRem64Overflow


```haxe
function testRem64Overflow(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bits.hx#L1665>)


## function testReverse


```haxe
function testReverse(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bits.hx#L693>)


## function testReverseBytes


```haxe
function testReverseBytes(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bits.hx#L815>)


## function testRotateLeft


```haxe
function testRotateLeft(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bits.hx#L571>)


## function testSub64OverflowPanic


```haxe
function testSub64OverflowPanic(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bits.hx#L1152>)


## function testTrailingZeros


```haxe
function testTrailingZeros(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bits.hx#L342>)


## function testUintSize


```haxe
function testUintSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Bits.hx#L217>)


