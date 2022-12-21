# Module: `stdgo.strconv`

[(view library index)](../stdgo.md)


# Overview


 


# Index


- [Variables](<#variables>)

- [`function _baseErrStub(_name:stdgo.GoString, _base:stdgo.GoInt):stdgo.Error`](<#function-_baseerrstub>)

- [`function _benchmarkAtoi(_b:stdgo.Ref<stdgo.testing.B>, _neg:stdgo.GoInt):Void`](<#function-_benchmarkatoi>)

- [`function _benchmarkParseInt(_b:stdgo.Ref<stdgo.testing.B>, _neg:stdgo.GoInt):Void`](<#function-_benchmarkparseint>)

- [`function _bitSizeErrStub(_name:stdgo.GoString, _bitSize:stdgo.GoInt):stdgo.Error`](<#function-_bitsizeerrstub>)

- [`function _equalError(_a:stdgo.Error, _b:stdgo.Error):Bool`](<#function-_equalerror>)

- [`function _fdiv(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):stdgo.GoFloat64`](<#function-_fdiv>)

- [`function _initAtof():Void`](<#function-_initatof>)

- [`function _initAtofOnce():Void`](<#function-_initatofonce>)

- [`function _myatof32(_s:stdgo.GoString):{_1:Bool, _0:stdgo.GoFloat32}`](<#function-_myatof32>)

- [`function _myatof64(_s:stdgo.GoString):{_1:Bool, _0:stdgo.GoFloat64}`](<#function-_myatof64>)

- [`function _noErrStub(_name:stdgo.GoString, _arg:stdgo.GoInt):stdgo.Error`](<#function-_noerrstub>)

- [`function _pow2(_i:stdgo.GoInt):stdgo.GoFloat64`](<#function-_pow2>)

- [`function _testAtof(_t:stdgo.Ref<stdgo.testing.T>, _opt:Bool):Void`](<#function-_testatof>)

- [`function _testUnquote(_t:stdgo.Ref<stdgo.testing.T>, _in:stdgo.GoString, _want:stdgo.GoString, _wantErr:stdgo.Error):Void`](<#function-_testunquote>)

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

- [`function main():Void`](<#function-main>)

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
var _:Bool
```


# Functions


```haxe
import stdgo.strconv_test.Strconv
```


## function \_baseErrStub


```haxe
function _baseErrStub(_name:stdgo.GoString, _base:stdgo.GoInt):stdgo.Error
```


 


[\(view code\)](<./Strconv.hx#L3215>)


## function \_benchmarkAtoi


```haxe
function _benchmarkAtoi(_b:stdgo.Ref<stdgo.testing.B>, _neg:stdgo.GoInt):Void
```


 


[\(view code\)](<./Strconv.hx#L3347>)


## function \_benchmarkParseInt


```haxe
function _benchmarkParseInt(_b:stdgo.Ref<stdgo.testing.B>, _neg:stdgo.GoInt):Void
```


 


[\(view code\)](<./Strconv.hx#L3314>)


## function \_bitSizeErrStub


```haxe
function _bitSizeErrStub(_name:stdgo.GoString, _bitSize:stdgo.GoInt):stdgo.Error
```


 


[\(view code\)](<./Strconv.hx#L3211>)


## function \_equalError


```haxe
function _equalError(_a:stdgo.Error, _b:stdgo.Error):Bool
```


 


[\(view code\)](<./Strconv.hx#L3223>)


## function \_fdiv


```haxe
function _fdiv(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):stdgo.GoFloat64
```


 


[\(view code\)](<./Strconv.hx#L4111>)


## function \_initAtof


```haxe
function _initAtof():Void
```


 


[\(view code\)](<./Strconv.hx#L2681>)


## function \_initAtofOnce


```haxe
function _initAtofOnce():Void
```


 


[\(view code\)](<./Strconv.hx#L2685>)


## function \_myatof32


```haxe
function _myatof32(_s:stdgo.GoString):{_1:Bool, _0:stdgo.GoFloat32}
```


Wrapper around strconv.ParseFloat\(x, 32\).  Handles dddddp\+ddd \(binary exponent\)��// itself, passes the rest on to strconv.ParseFloat. 


[\(view code\)](<./Strconv.hx#L3989>)


## function \_myatof64


```haxe
function _myatof64(_s:stdgo.GoString):{_1:Bool, _0:stdgo.GoFloat64}
```


Wrapper around strconv.ParseFloat\(x, 64\).  Handles dddddp\+ddd \(binary exponent\)��// itself, passes the rest on to strconv.ParseFloat. 


[\(view code\)](<./Strconv.hx#L3933>)


## function \_noErrStub


```haxe
function _noErrStub(_name:stdgo.GoString, _arg:stdgo.GoInt):stdgo.Error
```


 


[\(view code\)](<./Strconv.hx#L3219>)


## function \_pow2


```haxe
function _pow2(_i:stdgo.GoInt):stdgo.GoFloat64
```


 


[\(view code\)](<./Strconv.hx#L3918>)


## function \_testAtof


```haxe
function _testAtof(_t:stdgo.Ref<stdgo.testing.T>, _opt:Bool):Void
```


 


[\(view code\)](<./Strconv.hx#L2748>)


## function \_testUnquote


```haxe
function _testUnquote(_t:stdgo.Ref<stdgo.testing.T>, _in:stdgo.GoString, _want:stdgo.GoString, _wantErr:stdgo.Error):Void
```


 


[\(view code\)](<./Strconv.hx#L4677>)


## function benchmarkAppendFloat


```haxe
function benchmarkAppendFloat(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L4269>)


## function benchmarkAppendInt


```haxe
function benchmarkAppendInt(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L4378>)


## function benchmarkAppendIntSmall


```haxe
function benchmarkAppendIntSmall(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L4431>)


## function benchmarkAppendQuote


```haxe
function benchmarkAppendQuote(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L4568>)


## function benchmarkAppendQuoteRune


```haxe
function benchmarkAppendQuoteRune(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L4578>)


## function benchmarkAppendUint


```haxe
function benchmarkAppendUint(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L4403>)


## function benchmarkAppendUintVarlen


```haxe
function benchmarkAppendUintVarlen(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L4443>)


## function benchmarkAtof32Decimal


```haxe
function benchmarkAtof32Decimal(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L2986>)


## function benchmarkAtof32Float


```haxe
function benchmarkAtof32Float(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L2995>)


## function benchmarkAtof32FloatExp


```haxe
function benchmarkAtof32FloatExp(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L3004>)


## function benchmarkAtof32Random


```haxe
function benchmarkAtof32Random(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L3013>)


## function benchmarkAtof32RandomLong


```haxe
function benchmarkAtof32RandomLong(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L3029>)


## function benchmarkAtof64Big


```haxe
function benchmarkAtof64Big(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L2934>)


## function benchmarkAtof64Decimal


```haxe
function benchmarkAtof64Decimal(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L2907>)


## function benchmarkAtof64Float


```haxe
function benchmarkAtof64Float(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L2916>)


## function benchmarkAtof64FloatExp


```haxe
function benchmarkAtof64FloatExp(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L2925>)


## function benchmarkAtof64RandomBits


```haxe
function benchmarkAtof64RandomBits(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L2943>)


## function benchmarkAtof64RandomFloats


```haxe
function benchmarkAtof64RandomFloats(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L2954>)


## function benchmarkAtof64RandomLongFloats


```haxe
function benchmarkAtof64RandomLongFloats(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L2965>)


## function benchmarkAtoi


```haxe
function benchmarkAtoi(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L3338>)


## function benchmarkFormatFloat


```haxe
function benchmarkFormatFloat(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L4256>)


## function benchmarkFormatInt


```haxe
function benchmarkFormatInt(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L4366>)


## function benchmarkFormatIntSmall


```haxe
function benchmarkFormatIntSmall(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L4416>)


## function benchmarkFormatUint


```haxe
function benchmarkFormatUint(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L4391>)


## function benchmarkParseInt


```haxe
function benchmarkParseInt(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L3305>)


## function benchmarkQuote


```haxe
function benchmarkQuote(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L4550>)


## function benchmarkQuoteRune


```haxe
function benchmarkQuoteRune(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L4559>)


## function benchmarkUnquoteEasy


```haxe
function benchmarkUnquoteEasy(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L4711>)


## function benchmarkUnquoteHard


```haxe
function benchmarkUnquoteHard(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L4720>)


## function exampleAppendBool


```haxe
function exampleAppendBool():Void
```


 


[\(view code\)](<./Strconv.hx#L3546>)


## function exampleAppendFloat


```haxe
function exampleAppendFloat():Void
```


 


[\(view code\)](<./Strconv.hx#L3552>)


## function exampleAppendInt


```haxe
function exampleAppendInt():Void
```


 


[\(view code\)](<./Strconv.hx#L3561>)


## function exampleAppendQuote


```haxe
function exampleAppendQuote():Void
```


 


[\(view code\)](<./Strconv.hx#L3570>)


## function exampleAppendQuoteRune


```haxe
function exampleAppendQuoteRune():Void
```


 


[\(view code\)](<./Strconv.hx#L3576>)


## function exampleAppendQuoteRuneToASCII


```haxe
function exampleAppendQuoteRuneToASCII():Void
```


 


[\(view code\)](<./Strconv.hx#L3582>)


## function exampleAppendQuoteToASCII


```haxe
function exampleAppendQuoteToASCII():Void
```


 


[\(view code\)](<./Strconv.hx#L3588>)


## function exampleAppendUint


```haxe
function exampleAppendUint():Void
```


 


[\(view code\)](<./Strconv.hx#L3594>)


## function exampleAtoi


```haxe
function exampleAtoi():Void
```


 


[\(view code\)](<./Strconv.hx#L3603>)


## function exampleCanBackquote


```haxe
function exampleCanBackquote():Void
```


 


[\(view code\)](<./Strconv.hx#L3615>)


## function exampleFormatBool


```haxe
function exampleFormatBool():Void
```


 


[\(view code\)](<./Strconv.hx#L3620>)


## function exampleFormatFloat


```haxe
function exampleFormatFloat():Void
```


 


[\(view code\)](<./Strconv.hx#L3626>)


## function exampleFormatInt


```haxe
function exampleFormatInt():Void
```


 


[\(view code\)](<./Strconv.hx#L3634>)


## function exampleFormatUint


```haxe
function exampleFormatUint():Void
```


 


[\(view code\)](<./Strconv.hx#L3642>)


## function exampleIsGraphic


```haxe
function exampleIsGraphic():Void
```


 


[\(view code\)](<./Strconv.hx#L3650>)


## function exampleIsPrint


```haxe
function exampleIsPrint():Void
```


 


[\(view code\)](<./Strconv.hx#L3659>)


## function exampleItoa


```haxe
function exampleItoa():Void
```


 


[\(view code\)](<./Strconv.hx#L3666>)


## function exampleNumError


```haxe
function exampleNumError():Void
```


 


[\(view code\)](<./Strconv.hx#L3902>)


## function exampleParseBool


```haxe
function exampleParseBool():Void
```


 


[\(view code\)](<./Strconv.hx#L3672>)


## function exampleParseFloat


```haxe
function exampleParseFloat():Void
```


 


[\(view code\)](<./Strconv.hx#L3684>)


## function exampleParseInt


```haxe
function exampleParseInt():Void
```


 


[\(view code\)](<./Strconv.hx#L3760>)


## function exampleParseUint


```haxe
function exampleParseUint():Void
```


 


[\(view code\)](<./Strconv.hx#L3797>)


## function exampleQuote


```haxe
function exampleQuote():Void
```


 


[\(view code\)](<./Strconv.hx#L3817>)


## function exampleQuoteRune


```haxe
function exampleQuoteRune():Void
```


 


[\(view code\)](<./Strconv.hx#L3822>)


## function exampleQuoteRuneToASCII


```haxe
function exampleQuoteRuneToASCII():Void
```


 


[\(view code\)](<./Strconv.hx#L3827>)


## function exampleQuoteRuneToGraphic


```haxe
function exampleQuoteRuneToGraphic():Void
```


 


[\(view code\)](<./Strconv.hx#L3832>)


## function exampleQuoteToASCII


```haxe
function exampleQuoteToASCII():Void
```


 


[\(view code\)](<./Strconv.hx#L3843>)


## function exampleQuoteToGraphic


```haxe
function exampleQuoteToGraphic():Void
```


 


[\(view code\)](<./Strconv.hx#L3848>)


## function exampleUnquote


```haxe
function exampleUnquote():Void
```


 


[\(view code\)](<./Strconv.hx#L3857>)


## function exampleUnquoteChar


```haxe
function exampleUnquoteChar():Void
```


 


[\(view code\)](<./Strconv.hx#L3888>)


## function testAppendBool


```haxe
function testAppendBool(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L2391>)


## function testAtof


```haxe
function testAtof(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L2800>)


## function testAtofRandom


```haxe
function testAtofRandom(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L2808>)


## function testAtofSlow


```haxe
function testAtofSlow(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L2804>)


## function testAtoi


```haxe
function testAtoi(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L3175>)


## function testCanBackquote


```haxe
function testCanBackquote(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L4641>)


## function testCountMallocs


```haxe
function testCountMallocs(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L4729>)


## function testDecimalRound


```haxe
function testDecimalRound(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L3500>)


## function testDecimalRoundedInteger


```haxe
function testDecimalRoundedInteger(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L3530>)


## function testDecimalShift


```haxe
function testDecimalShift(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L3484>)


## function testErrorPrefixes


```haxe
function testErrorPrefixes(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L4751>)


## function testFormatBool


```haxe
function testFormatBool(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L2380>)


## function testFormatComplex


```haxe
function testFormatComplex(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L3376>)


## function testFormatComplexInvalidBitSize


```haxe
function testFormatComplexInvalidBitSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L3441>)


## function testFormatFloatInvalidBitSize


```haxe
function testFormatFloatInvalidBitSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L4213>)


## function testFormatUintVarlen


```haxe
function testFormatUintVarlen(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L4357>)


## function testFp


```haxe
function testFp(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L4024>)


## function testFtoa


```haxe
function testFtoa(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L4115>)


## function testFtoaPowersOfTwo


```haxe
function testFtoaPowersOfTwo(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L4149>)


## function testFtoaRandom


```haxe
function testFtoaRandom(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L4183>)


## function testIsGraphic


```haxe
function testIsGraphic(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Verify that our IsGraphic agrees with unicode.IsGraphic. 


[\(view code\)](<./Strconv.hx#L4480>)


## function testIsPrint


```haxe
function testIsPrint(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Verify that our IsPrint agrees with unicode.IsPrint. 


[\(view code\)](<./Strconv.hx#L4461>)


## function testItoa


```haxe
function testItoa(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L4309>)


## function testMulByLog10Log2


```haxe
function testMulByLog10Log2(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L4296>)


## function testMulByLog2Log10


```haxe
function testMulByLog2Log10(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L4283>)


## function testNumError


```haxe
function testNumError(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L3285>)


## function testNumErrorUnwrap


```haxe
function testNumErrorUnwrap(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L3298>)


## function testParseBool


```haxe
function testParseBool(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L2356>)


## function testParseComplex


```haxe
function testParseComplex(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L2401>)


## function testParseComplexIncorrectBitSize


```haxe
function testParseComplexIncorrectBitSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Issue 42297: allow ParseComplex\(s, not\_32\_or\_64\) for legacy reasons 


[\(view code\)](<./Strconv.hx#L2663>)


## function testParseFloatIncorrectBitSize


```haxe
function testParseFloatIncorrectBitSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Issue 42297: a lot of code in the wild accidentally calls ParseFloat\(s, 10\)��// or ParseFloat\(s, 0\), so allow bitSize values other than 32 and 64. 


[\(view code\)](<./Strconv.hx#L2890>)


## function testParseFloatPrefix


```haxe
function testParseFloatPrefix(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L2725>)


## function testParseInt


```haxe
function testParseInt(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L3149>)


## function testParseInt32


```haxe
function testParseInt32(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L3084>)


## function testParseInt64


```haxe
function testParseInt64(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L3097>)


## function testParseInt64Base


```haxe
function testParseInt64Base(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L3110>)


## function testParseIntBase


```haxe
function testParseIntBase(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L3259>)


## function testParseIntBitSize


```haxe
function testParseIntBitSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L3233>)


## function testParseUint


```haxe
function testParseUint(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L3123>)


## function testParseUint32


```haxe
function testParseUint32(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L3045>)


## function testParseUint64


```haxe
function testParseUint64(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L3058>)


## function testParseUint64Base


```haxe
function testParseUint64Base(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L3071>)


## function testParseUintBase


```haxe
function testParseUintBase(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L3272>)


## function testParseUintBitSize


```haxe
function testParseUintBitSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L3246>)


## function testQuote


```haxe
function testQuote(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L4496>)


## function testQuoteRune


```haxe
function testQuoteRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L4587>)


## function testQuoteRuneToASCII


```haxe
function testQuoteRuneToASCII(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L4605>)


## function testQuoteRuneToGraphic


```haxe
function testQuoteRuneToGraphic(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L4623>)


## function testQuoteToASCII


```haxe
function testQuoteToASCII(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L4514>)


## function testQuoteToGraphic


```haxe
function testQuoteToGraphic(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L4532>)


## function testRoundTrip


```haxe
function testRoundTrip(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L2819>)


## function testRoundTrip32


```haxe
function testRoundTrip32(_t:stdgo.Ref<stdgo.testing.T>):Void
```


TestRoundTrip32 tries a fraction of all finite positive float32 values. 


[\(view code\)](<./Strconv.hx#L2854>)


## function testUitoa


```haxe
function testUitoa(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L4342>)


## function testUnquote


```haxe
function testUnquote(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L4652>)


## function testUnquoteInvalidUTF8


```haxe
function testUnquoteInvalidUTF8(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Issue 23685: invalid UTF\-8 should not go through the fast path. 


[\(view code\)](<./Strconv.hx#L4667>)


## function main


```haxe
function main():Void
```


 


[\(view code\)](<./Strconv.hx#L227>)


