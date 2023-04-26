# Module: `stdgo.strconv`

[(view library index)](../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function benchmarkAppendFloat(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkappendfloat>)

- [`function benchmarkAppendInt(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkappendint>)

- [`function benchmarkAppendIntSmall(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkappendintsmall>)

- [`function benchmarkAppendQuote(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkappendquote>)

- [`function benchmarkAppendQuoteRune(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkappendquoterune>)

- [`function benchmarkAppendUint(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkappenduint>)

- [`function benchmarkAppendUintVarlen(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkappenduintvarlen>)

- [`function benchmarkAtof32Decimal(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkatof32decimal>)

- [`function benchmarkAtof32Float(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkatof32float>)

- [`function benchmarkAtof32FloatExp(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkatof32floatexp>)

- [`function benchmarkAtof32Random(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkatof32random>)

- [`function benchmarkAtof32RandomLong(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkatof32randomlong>)

- [`function benchmarkAtof64Big(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkatof64big>)

- [`function benchmarkAtof64Decimal(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkatof64decimal>)

- [`function benchmarkAtof64Float(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkatof64float>)

- [`function benchmarkAtof64FloatExp(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkatof64floatexp>)

- [`function benchmarkAtof64RandomBits(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkatof64randombits>)

- [`function benchmarkAtof64RandomFloats(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkatof64randomfloats>)

- [`function benchmarkAtof64RandomLongFloats(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkatof64randomlongfloats>)

- [`function benchmarkAtoi(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkatoi>)

- [`function benchmarkFormatFloat(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkformatfloat>)

- [`function benchmarkFormatInt(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkformatint>)

- [`function benchmarkFormatIntSmall(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkformatintsmall>)

- [`function benchmarkFormatUint(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkformatuint>)

- [`function benchmarkParseInt(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkparseint>)

- [`function benchmarkQuote(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkquote>)

- [`function benchmarkQuoteRune(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkquoterune>)

- [`function benchmarkUnquoteEasy(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkunquoteeasy>)

- [`function benchmarkUnquoteHard(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkunquotehard>)

- [`function exampleAppendBool():Void`](<#function-exampleappendbool>)

- [`function exampleAppendFloat():Void`](<#function-exampleappendfloat>)

- [`function exampleAppendInt():Void`](<#function-exampleappendint>)

- [`function exampleAppendQuote():Void`](<#function-exampleappendquote>)

- [`function exampleAppendQuoteRune():Void`](<#function-exampleappendquoterune>)

- [`function exampleAppendQuoteRuneToASCII():Void`](<#function-exampleappendquoterunetoascii>)

- [`function exampleAppendQuoteToASCII():Void`](<#function-exampleappendquotetoascii>)

- [`function exampleAppendUint():Void`](<#function-exampleappenduint>)

- [`function exampleAtoi():Void`](<#function-exampleatoi>)

- [`function exampleCanBackquote():Void`](<#function-examplecanbackquote>)

- [`function exampleFormatBool():Void`](<#function-exampleformatbool>)

- [`function exampleFormatFloat():Void`](<#function-exampleformatfloat>)

- [`function exampleFormatInt():Void`](<#function-exampleformatint>)

- [`function exampleFormatUint():Void`](<#function-exampleformatuint>)

- [`function exampleIsGraphic():Void`](<#function-exampleisgraphic>)

- [`function exampleIsPrint():Void`](<#function-exampleisprint>)

- [`function exampleItoa():Void`](<#function-exampleitoa>)

- [`function exampleNumError():Void`](<#function-examplenumerror>)

- [`function exampleParseBool():Void`](<#function-exampleparsebool>)

- [`function exampleParseFloat():Void`](<#function-exampleparsefloat>)

- [`function exampleParseInt():Void`](<#function-exampleparseint>)

- [`function exampleParseUint():Void`](<#function-exampleparseuint>)

- [`function exampleQuote():Void`](<#function-examplequote>)

- [`function exampleQuoteRune():Void`](<#function-examplequoterune>)

- [`function exampleQuoteRuneToASCII():Void`](<#function-examplequoterunetoascii>)

- [`function exampleQuoteRuneToGraphic():Void`](<#function-examplequoterunetographic>)

- [`function exampleQuoteToASCII():Void`](<#function-examplequotetoascii>)

- [`function exampleQuoteToGraphic():Void`](<#function-examplequotetographic>)

- [`function exampleUnquote():Void`](<#function-exampleunquote>)

- [`function exampleUnquoteChar():Void`](<#function-exampleunquotechar>)

- [`function testAllocationsFromBytes(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testallocationsfrombytes>)

- [`function testAppendBool(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testappendbool>)

- [`function testAtof(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testatof>)

- [`function testAtofRandom(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testatofrandom>)

- [`function testAtofSlow(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testatofslow>)

- [`function testAtoi(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testatoi>)

- [`function testCanBackquote(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcanbackquote>)

- [`function testCountMallocs(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcountmallocs>)

- [`function testDecimalRound(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdecimalround>)

- [`function testDecimalRoundedInteger(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdecimalroundedinteger>)

- [`function testDecimalShift(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testdecimalshift>)

- [`function testErrorPrefixes(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testerrorprefixes>)

- [`function testFormatBool(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testformatbool>)

- [`function testFormatComplex(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testformatcomplex>)

- [`function testFormatComplexInvalidBitSize(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testformatcomplexinvalidbitsize>)

- [`function testFormatFloatInvalidBitSize(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testformatfloatinvalidbitsize>)

- [`function testFormatUintVarlen(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testformatuintvarlen>)

- [`function testFp(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testfp>)

- [`function testFtoa(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testftoa>)

- [`function testFtoaPowersOfTwo(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testftoapowersoftwo>)

- [`function testFtoaRandom(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testftoarandom>)

- [`function testIsGraphic(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testisgraphic>)

- [`function testIsPrint(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testisprint>)

- [`function testItoa(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testitoa>)

- [`function testMulByLog10Log2(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testmulbylog10log2>)

- [`function testMulByLog2Log10(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testmulbylog2log10>)

- [`function testNumError(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testnumerror>)

- [`function testNumErrorUnwrap(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testnumerrorunwrap>)

- [`function testParseBool(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testparsebool>)

- [`function testParseComplex(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testparsecomplex>)

- [`function testParseComplexIncorrectBitSize(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testparsecomplexincorrectbitsize>)

- [`function testParseFloatIncorrectBitSize(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testparsefloatincorrectbitsize>)

- [`function testParseFloatPrefix(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testparsefloatprefix>)

- [`function testParseInt(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testparseint>)

- [`function testParseInt32(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testparseint32>)

- [`function testParseInt64(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testparseint64>)

- [`function testParseInt64Base(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testparseint64base>)

- [`function testParseIntBase(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testparseintbase>)

- [`function testParseIntBitSize(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testparseintbitsize>)

- [`function testParseUint(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testparseuint>)

- [`function testParseUint32(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testparseuint32>)

- [`function testParseUint64(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testparseuint64>)

- [`function testParseUint64Base(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testparseuint64base>)

- [`function testParseUintBase(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testparseuintbase>)

- [`function testParseUintBitSize(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testparseuintbitsize>)

- [`function testQuote(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testquote>)

- [`function testQuoteRune(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testquoterune>)

- [`function testQuoteRuneToASCII(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testquoterunetoascii>)

- [`function testQuoteRuneToGraphic(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testquoterunetographic>)

- [`function testQuoteToASCII(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testquotetoascii>)

- [`function testQuoteToGraphic(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testquotetographic>)

- [`function testRoundTrip(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testroundtrip>)

- [`function testRoundTrip32(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testroundtrip32>)

- [`function testUitoa(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testuitoa>)

- [`function testUnquote(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testunquote>)

- [`function testUnquoteInvalidUTF8(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testunquoteinvalidutf8>)

# Variables


```haxe
import stdgo.strconv_test.Strconv
```


```haxe
var _:Bool
```


```haxe
var benchSink:stdgo.GoInt
```



make sure compiler cannot optimize away benchmarks  

```haxe
var sink:stdgo.strconv_test._Strconv_test.T__struct_6
```



Sink makes sure the compiler cannot optimize away the benchmarks.  

```haxe
var _:Bool
```


# Functions


```haxe
import stdgo.strconv_test.Strconv
```


## function benchmarkAppendFloat


```haxe
function benchmarkAppendFloat(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3432>)


## function benchmarkAppendInt


```haxe
function benchmarkAppendInt(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3569>)


## function benchmarkAppendIntSmall


```haxe
function benchmarkAppendIntSmall(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3618>)


## function benchmarkAppendQuote


```haxe
function benchmarkAppendQuote(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3743>)


## function benchmarkAppendQuoteRune


```haxe
function benchmarkAppendQuoteRune(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3751>)


## function benchmarkAppendUint


```haxe
function benchmarkAppendUint(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3592>)


## function benchmarkAppendUintVarlen


```haxe
function benchmarkAppendUintVarlen(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3629>)


## function benchmarkAtof32Decimal


```haxe
function benchmarkAtof32Decimal(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L2387>)


## function benchmarkAtof32Float


```haxe
function benchmarkAtof32Float(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L2395>)


## function benchmarkAtof32FloatExp


```haxe
function benchmarkAtof32FloatExp(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L2403>)


## function benchmarkAtof32Random


```haxe
function benchmarkAtof32Random(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L2411>)


## function benchmarkAtof32RandomLong


```haxe
function benchmarkAtof32RandomLong(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L2426>)


## function benchmarkAtof64Big


```haxe
function benchmarkAtof64Big(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L2340>)


## function benchmarkAtof64Decimal


```haxe
function benchmarkAtof64Decimal(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L2316>)


## function benchmarkAtof64Float


```haxe
function benchmarkAtof64Float(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L2324>)


## function benchmarkAtof64FloatExp


```haxe
function benchmarkAtof64FloatExp(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L2332>)


## function benchmarkAtof64RandomBits


```haxe
function benchmarkAtof64RandomBits(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L2348>)


## function benchmarkAtof64RandomFloats


```haxe
function benchmarkAtof64RandomFloats(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L2358>)


## function benchmarkAtof64RandomLongFloats


```haxe
function benchmarkAtof64RandomLongFloats(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L2368>)


## function benchmarkAtoi


```haxe
function benchmarkAtoi(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L2667>)


## function benchmarkFormatFloat


```haxe
function benchmarkFormatFloat(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3420>)


## function benchmarkFormatInt


```haxe
function benchmarkFormatInt(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3558>)


## function benchmarkFormatIntSmall


```haxe
function benchmarkFormatIntSmall(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3604>)


## function benchmarkFormatUint


```haxe
function benchmarkFormatUint(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3581>)


## function benchmarkParseInt


```haxe
function benchmarkParseInt(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L2644>)


## function benchmarkQuote


```haxe
function benchmarkQuote(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3727>)


## function benchmarkQuoteRune


```haxe
function benchmarkQuoteRune(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3735>)


## function benchmarkUnquoteEasy


```haxe
function benchmarkUnquoteEasy(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3866>)


## function benchmarkUnquoteHard


```haxe
function benchmarkUnquoteHard(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3874>)


## function exampleAppendBool


```haxe
function exampleAppendBool():Void
```


[\(view code\)](<./Strconv.hx#L2810>)


## function exampleAppendFloat


```haxe
function exampleAppendFloat():Void
```


[\(view code\)](<./Strconv.hx#L2815>)


## function exampleAppendInt


```haxe
function exampleAppendInt():Void
```


[\(view code\)](<./Strconv.hx#L2823>)


## function exampleAppendQuote


```haxe
function exampleAppendQuote():Void
```


[\(view code\)](<./Strconv.hx#L2831>)


## function exampleAppendQuoteRune


```haxe
function exampleAppendQuoteRune():Void
```


[\(view code\)](<./Strconv.hx#L2836>)


## function exampleAppendQuoteRuneToASCII


```haxe
function exampleAppendQuoteRuneToASCII():Void
```


[\(view code\)](<./Strconv.hx#L2841>)


## function exampleAppendQuoteToASCII


```haxe
function exampleAppendQuoteToASCII():Void
```


[\(view code\)](<./Strconv.hx#L2846>)


## function exampleAppendUint


```haxe
function exampleAppendUint():Void
```


[\(view code\)](<./Strconv.hx#L2851>)


## function exampleAtoi


```haxe
function exampleAtoi():Void
```


[\(view code\)](<./Strconv.hx#L2859>)


## function exampleCanBackquote


```haxe
function exampleCanBackquote():Void
```


[\(view code\)](<./Strconv.hx#L2868>)


## function exampleFormatBool


```haxe
function exampleFormatBool():Void
```


[\(view code\)](<./Strconv.hx#L2872>)


## function exampleFormatFloat


```haxe
function exampleFormatFloat():Void
```


[\(view code\)](<./Strconv.hx#L2877>)


## function exampleFormatInt


```haxe
function exampleFormatInt():Void
```


[\(view code\)](<./Strconv.hx#L2884>)


## function exampleFormatUint


```haxe
function exampleFormatUint():Void
```


[\(view code\)](<./Strconv.hx#L2891>)


## function exampleIsGraphic


```haxe
function exampleIsGraphic():Void
```


[\(view code\)](<./Strconv.hx#L2898>)


## function exampleIsPrint


```haxe
function exampleIsPrint():Void
```


[\(view code\)](<./Strconv.hx#L2906>)


## function exampleItoa


```haxe
function exampleItoa():Void
```


[\(view code\)](<./Strconv.hx#L2912>)


## function exampleNumError


```haxe
function exampleNumError():Void
```


[\(view code\)](<./Strconv.hx#L3097>)


## function exampleParseBool


```haxe
function exampleParseBool():Void
```


[\(view code\)](<./Strconv.hx#L2917>)


## function exampleParseFloat


```haxe
function exampleParseFloat():Void
```


[\(view code\)](<./Strconv.hx#L2926>)


## function exampleParseInt


```haxe
function exampleParseInt():Void
```


[\(view code\)](<./Strconv.hx#L2983>)


## function exampleParseUint


```haxe
function exampleParseUint():Void
```


[\(view code\)](<./Strconv.hx#L3011>)


## function exampleQuote


```haxe
function exampleQuote():Void
```


[\(view code\)](<./Strconv.hx#L3026>)


## function exampleQuoteRune


```haxe
function exampleQuoteRune():Void
```


[\(view code\)](<./Strconv.hx#L3030>)


## function exampleQuoteRuneToASCII


```haxe
function exampleQuoteRuneToASCII():Void
```


[\(view code\)](<./Strconv.hx#L3034>)


## function exampleQuoteRuneToGraphic


```haxe
function exampleQuoteRuneToGraphic():Void
```


[\(view code\)](<./Strconv.hx#L3038>)


## function exampleQuoteToASCII


```haxe
function exampleQuoteToASCII():Void
```


[\(view code\)](<./Strconv.hx#L3048>)


## function exampleQuoteToGraphic


```haxe
function exampleQuoteToGraphic():Void
```


[\(view code\)](<./Strconv.hx#L3052>)


## function exampleUnquote


```haxe
function exampleUnquote():Void
```


[\(view code\)](<./Strconv.hx#L3060>)


## function exampleUnquoteChar


```haxe
function exampleUnquoteChar():Void
```


[\(view code\)](<./Strconv.hx#L3088>)


## function testAllocationsFromBytes


```haxe
function testAllocationsFromBytes(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3903>)


## function testAppendBool


```haxe
function testAppendBool(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L1934>)


## function testAtof


```haxe
function testAtof(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2223>)


## function testAtofRandom


```haxe
function testAtofRandom(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2229>)


## function testAtofSlow


```haxe
function testAtofSlow(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2226>)


## function testAtoi


```haxe
function testAtoi(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2539>)


## function testCanBackquote


```haxe
function testCanBackquote(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3807>)


## function testCountMallocs


```haxe
function testCountMallocs(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3882>)


## function testDecimalRound


```haxe
function testDecimalRound(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2770>)


## function testDecimalRoundedInteger


```haxe
function testDecimalRoundedInteger(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2796>)


## function testDecimalShift


```haxe
function testDecimalShift(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2756>)


## function testErrorPrefixes


```haxe
function testErrorPrefixes(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3972>)


## function testFormatBool


```haxe
function testFormatBool(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L1924>)


## function testFormatComplex


```haxe
function testFormatComplex(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2693>)


## function testFormatComplexInvalidBitSize


```haxe
function testFormatComplexInvalidBitSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2713>)


## function testFormatFloatInvalidBitSize


```haxe
function testFormatFloatInvalidBitSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3377>)


## function testFormatUintVarlen


```haxe
function testFormatUintVarlen(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3550>)


## function testFp


```haxe
function testFp(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3195>)


## function testFtoa


```haxe
function testFtoa(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3293>)


## function testFtoaPowersOfTwo


```haxe
function testFtoaPowersOfTwo(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3319>)


## function testFtoaRandom


```haxe
function testFtoaRandom(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3348>)


## function testIsGraphic


```haxe
function testIsGraphic(_t:stdgo.Ref<stdgo.testing.T>):Void
```



Verify that our IsGraphic agrees with unicode.IsGraphic.  

[\(view code\)](<./Strconv.hx#L3664>)


## function testIsPrint


```haxe
function testIsPrint(_t:stdgo.Ref<stdgo.testing.T>):Void
```



Verify that our IsPrint agrees with unicode.IsPrint.  

[\(view code\)](<./Strconv.hx#L3646>)


## function testItoa


```haxe
function testItoa(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3469>)


## function testMulByLog10Log2


```haxe
function testMulByLog10Log2(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3457>)


## function testMulByLog2Log10


```haxe
function testMulByLog2Log10(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3445>)


## function testNumError


```haxe
function testNumError(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2627>)


## function testNumErrorUnwrap


```haxe
function testNumErrorUnwrap(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2638>)


## function testParseBool


```haxe
function testParseBool(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L1903>)


## function testParseComplex


```haxe
function testParseComplex(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L1942>)


## function testParseComplexIncorrectBitSize


```haxe
function testParseComplexIncorrectBitSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```



Issue 42297: allow ParseComplex\(s, not\_32\_or\_64\) for legacy reasons  

[\(view code\)](<./Strconv.hx#L2102>)


## function testParseFloatIncorrectBitSize


```haxe
function testParseFloatIncorrectBitSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```



Issue 42297: a lot of code in the wild accidentally calls ParseFloat\(s, 10\)
or ParseFloat\(s, 0\), so allow bitSize values other than 32 and 64.  

[\(view code\)](<./Strconv.hx#L2303>)


## function testParseFloatPrefix


```haxe
function testParseFloatPrefix(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2152>)


## function testParseInt


```haxe
function testParseInt(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2517>)


## function testParseInt32


```haxe
function testParseInt32(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2468>)


## function testParseInt64


```haxe
function testParseInt64(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2477>)


## function testParseInt64Base


```haxe
function testParseInt64Base(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2486>)


## function testParseIntBase


```haxe
function testParseIntBase(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2607>)


## function testParseIntBitSize


```haxe
function testParseIntBitSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2587>)


## function testParseUint


```haxe
function testParseUint(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2495>)


## function testParseUint32


```haxe
function testParseUint32(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2441>)


## function testParseUint64


```haxe
function testParseUint64(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2450>)


## function testParseUint64Base


```haxe
function testParseUint64Base(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2459>)


## function testParseUintBase


```haxe
function testParseUintBase(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2617>)


## function testParseUintBitSize


```haxe
function testParseUintBitSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2597>)


## function testQuote


```haxe
function testQuote(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3679>)


## function testQuoteRune


```haxe
function testQuoteRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3759>)


## function testQuoteRuneToASCII


```haxe
function testQuoteRuneToASCII(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3775>)


## function testQuoteRuneToGraphic


```haxe
function testQuoteRuneToGraphic(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3791>)


## function testQuoteToASCII


```haxe
function testQuoteToASCII(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3695>)


## function testQuoteToGraphic


```haxe
function testQuoteToGraphic(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3711>)


## function testRoundTrip


```haxe
function testRoundTrip(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2241>)


## function testRoundTrip32


```haxe
function testRoundTrip32(_t:stdgo.Ref<stdgo.testing.T>):Void
```



TestRoundTrip32 tries a fraction of all finite positive float32 values.  

[\(view code\)](<./Strconv.hx#L2271>)


## function testUitoa


```haxe
function testUitoa(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3538>)


## function testUnquote


```haxe
function testUnquote(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3817>)


## function testUnquoteInvalidUTF8


```haxe
function testUnquoteInvalidUTF8(_t:stdgo.Ref<stdgo.testing.T>):Void
```



Issue 23685: invalid UTF\-8 should not go through the fast path.  

[\(view code\)](<./Strconv.hx#L3831>)


