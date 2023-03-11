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


[\(view code\)](<./Strconv.hx#L3430>)


## function benchmarkAppendInt


```haxe
function benchmarkAppendInt(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3567>)


## function benchmarkAppendIntSmall


```haxe
function benchmarkAppendIntSmall(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3616>)


## function benchmarkAppendQuote


```haxe
function benchmarkAppendQuote(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3741>)


## function benchmarkAppendQuoteRune


```haxe
function benchmarkAppendQuoteRune(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3749>)


## function benchmarkAppendUint


```haxe
function benchmarkAppendUint(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3590>)


## function benchmarkAppendUintVarlen


```haxe
function benchmarkAppendUintVarlen(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3627>)


## function benchmarkAtof32Decimal


```haxe
function benchmarkAtof32Decimal(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L2385>)


## function benchmarkAtof32Float


```haxe
function benchmarkAtof32Float(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L2393>)


## function benchmarkAtof32FloatExp


```haxe
function benchmarkAtof32FloatExp(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L2401>)


## function benchmarkAtof32Random


```haxe
function benchmarkAtof32Random(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L2409>)


## function benchmarkAtof32RandomLong


```haxe
function benchmarkAtof32RandomLong(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L2424>)


## function benchmarkAtof64Big


```haxe
function benchmarkAtof64Big(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L2338>)


## function benchmarkAtof64Decimal


```haxe
function benchmarkAtof64Decimal(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L2314>)


## function benchmarkAtof64Float


```haxe
function benchmarkAtof64Float(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L2322>)


## function benchmarkAtof64FloatExp


```haxe
function benchmarkAtof64FloatExp(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L2330>)


## function benchmarkAtof64RandomBits


```haxe
function benchmarkAtof64RandomBits(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L2346>)


## function benchmarkAtof64RandomFloats


```haxe
function benchmarkAtof64RandomFloats(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L2356>)


## function benchmarkAtof64RandomLongFloats


```haxe
function benchmarkAtof64RandomLongFloats(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L2366>)


## function benchmarkAtoi


```haxe
function benchmarkAtoi(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L2665>)


## function benchmarkFormatFloat


```haxe
function benchmarkFormatFloat(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3418>)


## function benchmarkFormatInt


```haxe
function benchmarkFormatInt(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3556>)


## function benchmarkFormatIntSmall


```haxe
function benchmarkFormatIntSmall(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3602>)


## function benchmarkFormatUint


```haxe
function benchmarkFormatUint(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3579>)


## function benchmarkParseInt


```haxe
function benchmarkParseInt(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L2642>)


## function benchmarkQuote


```haxe
function benchmarkQuote(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3725>)


## function benchmarkQuoteRune


```haxe
function benchmarkQuoteRune(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3733>)


## function benchmarkUnquoteEasy


```haxe
function benchmarkUnquoteEasy(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3864>)


## function benchmarkUnquoteHard


```haxe
function benchmarkUnquoteHard(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3872>)


## function exampleAppendBool


```haxe
function exampleAppendBool():Void
```


[\(view code\)](<./Strconv.hx#L2808>)


## function exampleAppendFloat


```haxe
function exampleAppendFloat():Void
```


[\(view code\)](<./Strconv.hx#L2813>)


## function exampleAppendInt


```haxe
function exampleAppendInt():Void
```


[\(view code\)](<./Strconv.hx#L2821>)


## function exampleAppendQuote


```haxe
function exampleAppendQuote():Void
```


[\(view code\)](<./Strconv.hx#L2829>)


## function exampleAppendQuoteRune


```haxe
function exampleAppendQuoteRune():Void
```


[\(view code\)](<./Strconv.hx#L2834>)


## function exampleAppendQuoteRuneToASCII


```haxe
function exampleAppendQuoteRuneToASCII():Void
```


[\(view code\)](<./Strconv.hx#L2839>)


## function exampleAppendQuoteToASCII


```haxe
function exampleAppendQuoteToASCII():Void
```


[\(view code\)](<./Strconv.hx#L2844>)


## function exampleAppendUint


```haxe
function exampleAppendUint():Void
```


[\(view code\)](<./Strconv.hx#L2849>)


## function exampleAtoi


```haxe
function exampleAtoi():Void
```


[\(view code\)](<./Strconv.hx#L2857>)


## function exampleCanBackquote


```haxe
function exampleCanBackquote():Void
```


[\(view code\)](<./Strconv.hx#L2866>)


## function exampleFormatBool


```haxe
function exampleFormatBool():Void
```


[\(view code\)](<./Strconv.hx#L2870>)


## function exampleFormatFloat


```haxe
function exampleFormatFloat():Void
```


[\(view code\)](<./Strconv.hx#L2875>)


## function exampleFormatInt


```haxe
function exampleFormatInt():Void
```


[\(view code\)](<./Strconv.hx#L2882>)


## function exampleFormatUint


```haxe
function exampleFormatUint():Void
```


[\(view code\)](<./Strconv.hx#L2889>)


## function exampleIsGraphic


```haxe
function exampleIsGraphic():Void
```


[\(view code\)](<./Strconv.hx#L2896>)


## function exampleIsPrint


```haxe
function exampleIsPrint():Void
```


[\(view code\)](<./Strconv.hx#L2904>)


## function exampleItoa


```haxe
function exampleItoa():Void
```


[\(view code\)](<./Strconv.hx#L2910>)


## function exampleNumError


```haxe
function exampleNumError():Void
```


[\(view code\)](<./Strconv.hx#L3095>)


## function exampleParseBool


```haxe
function exampleParseBool():Void
```


[\(view code\)](<./Strconv.hx#L2915>)


## function exampleParseFloat


```haxe
function exampleParseFloat():Void
```


[\(view code\)](<./Strconv.hx#L2924>)


## function exampleParseInt


```haxe
function exampleParseInt():Void
```


[\(view code\)](<./Strconv.hx#L2981>)


## function exampleParseUint


```haxe
function exampleParseUint():Void
```


[\(view code\)](<./Strconv.hx#L3009>)


## function exampleQuote


```haxe
function exampleQuote():Void
```


[\(view code\)](<./Strconv.hx#L3024>)


## function exampleQuoteRune


```haxe
function exampleQuoteRune():Void
```


[\(view code\)](<./Strconv.hx#L3028>)


## function exampleQuoteRuneToASCII


```haxe
function exampleQuoteRuneToASCII():Void
```


[\(view code\)](<./Strconv.hx#L3032>)


## function exampleQuoteRuneToGraphic


```haxe
function exampleQuoteRuneToGraphic():Void
```


[\(view code\)](<./Strconv.hx#L3036>)


## function exampleQuoteToASCII


```haxe
function exampleQuoteToASCII():Void
```


[\(view code\)](<./Strconv.hx#L3046>)


## function exampleQuoteToGraphic


```haxe
function exampleQuoteToGraphic():Void
```


[\(view code\)](<./Strconv.hx#L3050>)


## function exampleUnquote


```haxe
function exampleUnquote():Void
```


[\(view code\)](<./Strconv.hx#L3058>)


## function exampleUnquoteChar


```haxe
function exampleUnquoteChar():Void
```


[\(view code\)](<./Strconv.hx#L3086>)


## function testAllocationsFromBytes


```haxe
function testAllocationsFromBytes(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3901>)


## function testAppendBool


```haxe
function testAppendBool(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L1932>)


## function testAtof


```haxe
function testAtof(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2221>)


## function testAtofRandom


```haxe
function testAtofRandom(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2227>)


## function testAtofSlow


```haxe
function testAtofSlow(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2224>)


## function testAtoi


```haxe
function testAtoi(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2537>)


## function testCanBackquote


```haxe
function testCanBackquote(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3805>)


## function testCountMallocs


```haxe
function testCountMallocs(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3880>)


## function testDecimalRound


```haxe
function testDecimalRound(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2768>)


## function testDecimalRoundedInteger


```haxe
function testDecimalRoundedInteger(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2794>)


## function testDecimalShift


```haxe
function testDecimalShift(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2754>)


## function testErrorPrefixes


```haxe
function testErrorPrefixes(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3970>)


## function testFormatBool


```haxe
function testFormatBool(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L1922>)


## function testFormatComplex


```haxe
function testFormatComplex(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2691>)


## function testFormatComplexInvalidBitSize


```haxe
function testFormatComplexInvalidBitSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2711>)


## function testFormatFloatInvalidBitSize


```haxe
function testFormatFloatInvalidBitSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3375>)


## function testFormatUintVarlen


```haxe
function testFormatUintVarlen(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3548>)


## function testFp


```haxe
function testFp(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3193>)


## function testFtoa


```haxe
function testFtoa(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3291>)


## function testFtoaPowersOfTwo


```haxe
function testFtoaPowersOfTwo(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3317>)


## function testFtoaRandom


```haxe
function testFtoaRandom(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3346>)


## function testIsGraphic


```haxe
function testIsGraphic(_t:stdgo.Ref<stdgo.testing.T>):Void
```



Verify that our IsGraphic agrees with unicode.IsGraphic.  

[\(view code\)](<./Strconv.hx#L3662>)


## function testIsPrint


```haxe
function testIsPrint(_t:stdgo.Ref<stdgo.testing.T>):Void
```



Verify that our IsPrint agrees with unicode.IsPrint.  

[\(view code\)](<./Strconv.hx#L3644>)


## function testItoa


```haxe
function testItoa(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3467>)


## function testMulByLog10Log2


```haxe
function testMulByLog10Log2(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3455>)


## function testMulByLog2Log10


```haxe
function testMulByLog2Log10(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3443>)


## function testNumError


```haxe
function testNumError(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2625>)


## function testNumErrorUnwrap


```haxe
function testNumErrorUnwrap(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2636>)


## function testParseBool


```haxe
function testParseBool(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L1901>)


## function testParseComplex


```haxe
function testParseComplex(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L1940>)


## function testParseComplexIncorrectBitSize


```haxe
function testParseComplexIncorrectBitSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```



Issue 42297: allow ParseComplex\(s, not\_32\_or\_64\) for legacy reasons  

[\(view code\)](<./Strconv.hx#L2100>)


## function testParseFloatIncorrectBitSize


```haxe
function testParseFloatIncorrectBitSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```



Issue 42297: a lot of code in the wild accidentally calls ParseFloat\(s, 10\)
or ParseFloat\(s, 0\), so allow bitSize values other than 32 and 64.  

[\(view code\)](<./Strconv.hx#L2301>)


## function testParseFloatPrefix


```haxe
function testParseFloatPrefix(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2150>)


## function testParseInt


```haxe
function testParseInt(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2515>)


## function testParseInt32


```haxe
function testParseInt32(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2466>)


## function testParseInt64


```haxe
function testParseInt64(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2475>)


## function testParseInt64Base


```haxe
function testParseInt64Base(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2484>)


## function testParseIntBase


```haxe
function testParseIntBase(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2605>)


## function testParseIntBitSize


```haxe
function testParseIntBitSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2585>)


## function testParseUint


```haxe
function testParseUint(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2493>)


## function testParseUint32


```haxe
function testParseUint32(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2439>)


## function testParseUint64


```haxe
function testParseUint64(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2448>)


## function testParseUint64Base


```haxe
function testParseUint64Base(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2457>)


## function testParseUintBase


```haxe
function testParseUintBase(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2615>)


## function testParseUintBitSize


```haxe
function testParseUintBitSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2595>)


## function testQuote


```haxe
function testQuote(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3677>)


## function testQuoteRune


```haxe
function testQuoteRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3757>)


## function testQuoteRuneToASCII


```haxe
function testQuoteRuneToASCII(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3773>)


## function testQuoteRuneToGraphic


```haxe
function testQuoteRuneToGraphic(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3789>)


## function testQuoteToASCII


```haxe
function testQuoteToASCII(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3693>)


## function testQuoteToGraphic


```haxe
function testQuoteToGraphic(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3709>)


## function testRoundTrip


```haxe
function testRoundTrip(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L2239>)


## function testRoundTrip32


```haxe
function testRoundTrip32(_t:stdgo.Ref<stdgo.testing.T>):Void
```



TestRoundTrip32 tries a fraction of all finite positive float32 values.  

[\(view code\)](<./Strconv.hx#L2269>)


## function testUitoa


```haxe
function testUitoa(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3536>)


## function testUnquote


```haxe
function testUnquote(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Strconv.hx#L3815>)


## function testUnquoteInvalidUTF8


```haxe
function testUnquoteInvalidUTF8(_t:stdgo.Ref<stdgo.testing.T>):Void
```



Issue 23685: invalid UTF\-8 should not go through the fast path.  

[\(view code\)](<./Strconv.hx#L3829>)


