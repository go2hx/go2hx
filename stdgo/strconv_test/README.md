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


 


[\(view code\)](<./Strconv.hx#L3061>)


## function \_benchmarkAtoi


```haxe
function _benchmarkAtoi(_b:stdgo.Ref<stdgo.testing.B>, _neg:stdgo.GoInt):Void
```


 


[\(view code\)](<./Strconv.hx#L3193>)


## function \_benchmarkParseInt


```haxe
function _benchmarkParseInt(_b:stdgo.Ref<stdgo.testing.B>, _neg:stdgo.GoInt):Void
```


 


[\(view code\)](<./Strconv.hx#L3160>)


## function \_bitSizeErrStub


```haxe
function _bitSizeErrStub(_name:stdgo.GoString, _bitSize:stdgo.GoInt):stdgo.Error
```


 


[\(view code\)](<./Strconv.hx#L3057>)


## function \_equalError


```haxe
function _equalError(_a:stdgo.Error, _b:stdgo.Error):Bool
```


 


[\(view code\)](<./Strconv.hx#L3069>)


## function \_fdiv


```haxe
function _fdiv(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):stdgo.GoFloat64
```


 


[\(view code\)](<./Strconv.hx#L3957>)


## function \_initAtof


```haxe
function _initAtof():Void
```


 


[\(view code\)](<./Strconv.hx#L2527>)


## function \_initAtofOnce


```haxe
function _initAtofOnce():Void
```


 


[\(view code\)](<./Strconv.hx#L2531>)


## function \_myatof32


```haxe
function _myatof32(_s:stdgo.GoString):{_1:Bool, _0:stdgo.GoFloat32}
```


Wrapper around strconv.ParseFloat\(x, 32\).  Handles dddddp\+ddd \(binary exponent\) itself, passes the rest on to strconv.ParseFloat. 


[\(view code\)](<./Strconv.hx#L3835>)


## function \_myatof64


```haxe
function _myatof64(_s:stdgo.GoString):{_1:Bool, _0:stdgo.GoFloat64}
```


Wrapper around strconv.ParseFloat\(x, 64\).  Handles dddddp\+ddd \(binary exponent\) itself, passes the rest on to strconv.ParseFloat. 


[\(view code\)](<./Strconv.hx#L3779>)


## function \_noErrStub


```haxe
function _noErrStub(_name:stdgo.GoString, _arg:stdgo.GoInt):stdgo.Error
```


 


[\(view code\)](<./Strconv.hx#L3065>)


## function \_pow2


```haxe
function _pow2(_i:stdgo.GoInt):stdgo.GoFloat64
```


 


[\(view code\)](<./Strconv.hx#L3764>)


## function \_testAtof


```haxe
function _testAtof(_t:stdgo.Ref<stdgo.testing.T>, _opt:Bool):Void
```


 


[\(view code\)](<./Strconv.hx#L2594>)


## function \_testUnquote


```haxe
function _testUnquote(_t:stdgo.Ref<stdgo.testing.T>, _in:stdgo.GoString, _want:stdgo.GoString, _wantErr:stdgo.Error):Void
```


 


[\(view code\)](<./Strconv.hx#L4526>)


## function benchmarkAppendFloat


```haxe
function benchmarkAppendFloat(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L4115>)


## function benchmarkAppendInt


```haxe
function benchmarkAppendInt(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L4224>)


## function benchmarkAppendIntSmall


```haxe
function benchmarkAppendIntSmall(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L4277>)


## function benchmarkAppendQuote


```haxe
function benchmarkAppendQuote(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L4414>)


## function benchmarkAppendQuoteRune


```haxe
function benchmarkAppendQuoteRune(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L4424>)


## function benchmarkAppendUint


```haxe
function benchmarkAppendUint(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L4249>)


## function benchmarkAppendUintVarlen


```haxe
function benchmarkAppendUintVarlen(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L4289>)


## function benchmarkAtof32Decimal


```haxe
function benchmarkAtof32Decimal(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L2832>)


## function benchmarkAtof32Float


```haxe
function benchmarkAtof32Float(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L2841>)


## function benchmarkAtof32FloatExp


```haxe
function benchmarkAtof32FloatExp(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L2850>)


## function benchmarkAtof32Random


```haxe
function benchmarkAtof32Random(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L2859>)


## function benchmarkAtof32RandomLong


```haxe
function benchmarkAtof32RandomLong(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L2875>)


## function benchmarkAtof64Big


```haxe
function benchmarkAtof64Big(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L2780>)


## function benchmarkAtof64Decimal


```haxe
function benchmarkAtof64Decimal(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L2753>)


## function benchmarkAtof64Float


```haxe
function benchmarkAtof64Float(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L2762>)


## function benchmarkAtof64FloatExp


```haxe
function benchmarkAtof64FloatExp(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L2771>)


## function benchmarkAtof64RandomBits


```haxe
function benchmarkAtof64RandomBits(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L2789>)


## function benchmarkAtof64RandomFloats


```haxe
function benchmarkAtof64RandomFloats(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L2800>)


## function benchmarkAtof64RandomLongFloats


```haxe
function benchmarkAtof64RandomLongFloats(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L2811>)


## function benchmarkAtoi


```haxe
function benchmarkAtoi(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L3184>)


## function benchmarkFormatFloat


```haxe
function benchmarkFormatFloat(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L4102>)


## function benchmarkFormatInt


```haxe
function benchmarkFormatInt(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L4212>)


## function benchmarkFormatIntSmall


```haxe
function benchmarkFormatIntSmall(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L4262>)


## function benchmarkFormatUint


```haxe
function benchmarkFormatUint(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L4237>)


## function benchmarkParseInt


```haxe
function benchmarkParseInt(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L3151>)


## function benchmarkQuote


```haxe
function benchmarkQuote(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L4396>)


## function benchmarkQuoteRune


```haxe
function benchmarkQuoteRune(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L4405>)


## function benchmarkUnquoteEasy


```haxe
function benchmarkUnquoteEasy(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L4560>)


## function benchmarkUnquoteHard


```haxe
function benchmarkUnquoteHard(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Strconv.hx#L4569>)


## function exampleAppendBool


```haxe
function exampleAppendBool():Void
```


 


[\(view code\)](<./Strconv.hx#L3392>)


## function exampleAppendFloat


```haxe
function exampleAppendFloat():Void
```


 


[\(view code\)](<./Strconv.hx#L3398>)


## function exampleAppendInt


```haxe
function exampleAppendInt():Void
```


 


[\(view code\)](<./Strconv.hx#L3407>)


## function exampleAppendQuote


```haxe
function exampleAppendQuote():Void
```


 


[\(view code\)](<./Strconv.hx#L3416>)


## function exampleAppendQuoteRune


```haxe
function exampleAppendQuoteRune():Void
```


 


[\(view code\)](<./Strconv.hx#L3422>)


## function exampleAppendQuoteRuneToASCII


```haxe
function exampleAppendQuoteRuneToASCII():Void
```


 


[\(view code\)](<./Strconv.hx#L3428>)


## function exampleAppendQuoteToASCII


```haxe
function exampleAppendQuoteToASCII():Void
```


 


[\(view code\)](<./Strconv.hx#L3434>)


## function exampleAppendUint


```haxe
function exampleAppendUint():Void
```


 


[\(view code\)](<./Strconv.hx#L3440>)


## function exampleAtoi


```haxe
function exampleAtoi():Void
```


 


[\(view code\)](<./Strconv.hx#L3449>)


## function exampleCanBackquote


```haxe
function exampleCanBackquote():Void
```


 


[\(view code\)](<./Strconv.hx#L3461>)


## function exampleFormatBool


```haxe
function exampleFormatBool():Void
```


 


[\(view code\)](<./Strconv.hx#L3466>)


## function exampleFormatFloat


```haxe
function exampleFormatFloat():Void
```


 


[\(view code\)](<./Strconv.hx#L3472>)


## function exampleFormatInt


```haxe
function exampleFormatInt():Void
```


 


[\(view code\)](<./Strconv.hx#L3480>)


## function exampleFormatUint


```haxe
function exampleFormatUint():Void
```


 


[\(view code\)](<./Strconv.hx#L3488>)


## function exampleIsGraphic


```haxe
function exampleIsGraphic():Void
```


 


[\(view code\)](<./Strconv.hx#L3496>)


## function exampleIsPrint


```haxe
function exampleIsPrint():Void
```


 


[\(view code\)](<./Strconv.hx#L3505>)


## function exampleItoa


```haxe
function exampleItoa():Void
```


 


[\(view code\)](<./Strconv.hx#L3512>)


## function exampleNumError


```haxe
function exampleNumError():Void
```


 


[\(view code\)](<./Strconv.hx#L3748>)


## function exampleParseBool


```haxe
function exampleParseBool():Void
```


 


[\(view code\)](<./Strconv.hx#L3518>)


## function exampleParseFloat


```haxe
function exampleParseFloat():Void
```


 


[\(view code\)](<./Strconv.hx#L3530>)


## function exampleParseInt


```haxe
function exampleParseInt():Void
```


 


[\(view code\)](<./Strconv.hx#L3606>)


## function exampleParseUint


```haxe
function exampleParseUint():Void
```


 


[\(view code\)](<./Strconv.hx#L3643>)


## function exampleQuote


```haxe
function exampleQuote():Void
```


 


[\(view code\)](<./Strconv.hx#L3663>)


## function exampleQuoteRune


```haxe
function exampleQuoteRune():Void
```


 


[\(view code\)](<./Strconv.hx#L3668>)


## function exampleQuoteRuneToASCII


```haxe
function exampleQuoteRuneToASCII():Void
```


 


[\(view code\)](<./Strconv.hx#L3673>)


## function exampleQuoteRuneToGraphic


```haxe
function exampleQuoteRuneToGraphic():Void
```


 


[\(view code\)](<./Strconv.hx#L3678>)


## function exampleQuoteToASCII


```haxe
function exampleQuoteToASCII():Void
```


 


[\(view code\)](<./Strconv.hx#L3689>)


## function exampleQuoteToGraphic


```haxe
function exampleQuoteToGraphic():Void
```


 


[\(view code\)](<./Strconv.hx#L3694>)


## function exampleUnquote


```haxe
function exampleUnquote():Void
```


 


[\(view code\)](<./Strconv.hx#L3703>)


## function exampleUnquoteChar


```haxe
function exampleUnquoteChar():Void
```


 


[\(view code\)](<./Strconv.hx#L3734>)


## function testAppendBool


```haxe
function testAppendBool(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L2274>)


## function testAtof


```haxe
function testAtof(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L2646>)


## function testAtofRandom


```haxe
function testAtofRandom(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L2654>)


## function testAtofSlow


```haxe
function testAtofSlow(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L2650>)


## function testAtoi


```haxe
function testAtoi(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L3021>)


## function testCanBackquote


```haxe
function testCanBackquote(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L4487>)


## function testCountMallocs


```haxe
function testCountMallocs(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L4578>)


## function testDecimalRound


```haxe
function testDecimalRound(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L3346>)


## function testDecimalRoundedInteger


```haxe
function testDecimalRoundedInteger(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L3376>)


## function testDecimalShift


```haxe
function testDecimalShift(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L3330>)


## function testErrorPrefixes


```haxe
function testErrorPrefixes(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L4600>)


## function testFormatBool


```haxe
function testFormatBool(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L2263>)


## function testFormatComplex


```haxe
function testFormatComplex(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L3222>)


## function testFormatComplexInvalidBitSize


```haxe
function testFormatComplexInvalidBitSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L3287>)


## function testFormatFloatInvalidBitSize


```haxe
function testFormatFloatInvalidBitSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L4059>)


## function testFormatUintVarlen


```haxe
function testFormatUintVarlen(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L4203>)


## function testFp


```haxe
function testFp(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L3870>)


## function testFtoa


```haxe
function testFtoa(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L3961>)


## function testFtoaPowersOfTwo


```haxe
function testFtoaPowersOfTwo(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L3995>)


## function testFtoaRandom


```haxe
function testFtoaRandom(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L4029>)


## function testIsGraphic


```haxe
function testIsGraphic(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Verify that our IsGraphic agrees with unicode.IsGraphic. 


[\(view code\)](<./Strconv.hx#L4326>)


## function testIsPrint


```haxe
function testIsPrint(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Verify that our IsPrint agrees with unicode.IsPrint. 


[\(view code\)](<./Strconv.hx#L4307>)


## function testItoa


```haxe
function testItoa(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L4155>)


## function testMulByLog10Log2


```haxe
function testMulByLog10Log2(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L4142>)


## function testMulByLog2Log10


```haxe
function testMulByLog2Log10(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L4129>)


## function testNumError


```haxe
function testNumError(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L3131>)


## function testNumErrorUnwrap


```haxe
function testNumErrorUnwrap(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L3144>)


## function testParseBool


```haxe
function testParseBool(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L2239>)


## function testParseComplex


```haxe
function testParseComplex(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L2284>)


## function testParseComplexIncorrectBitSize


```haxe
function testParseComplexIncorrectBitSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Issue 42297: allow ParseComplex\(s, not\_32\_or\_64\) for legacy reasons 


[\(view code\)](<./Strconv.hx#L2509>)


## function testParseFloatIncorrectBitSize


```haxe
function testParseFloatIncorrectBitSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Issue 42297: a lot of code in the wild accidentally calls ParseFloat\(s, 10\) or ParseFloat\(s, 0\), so allow bitSize values other than 32 and 64. 


[\(view code\)](<./Strconv.hx#L2736>)


## function testParseFloatPrefix


```haxe
function testParseFloatPrefix(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L2571>)


## function testParseInt


```haxe
function testParseInt(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L2995>)


## function testParseInt32


```haxe
function testParseInt32(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L2930>)


## function testParseInt64


```haxe
function testParseInt64(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L2943>)


## function testParseInt64Base


```haxe
function testParseInt64Base(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L2956>)


## function testParseIntBase


```haxe
function testParseIntBase(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L3105>)


## function testParseIntBitSize


```haxe
function testParseIntBitSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L3079>)


## function testParseUint


```haxe
function testParseUint(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L2969>)


## function testParseUint32


```haxe
function testParseUint32(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L2891>)


## function testParseUint64


```haxe
function testParseUint64(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L2904>)


## function testParseUint64Base


```haxe
function testParseUint64Base(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L2917>)


## function testParseUintBase


```haxe
function testParseUintBase(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L3118>)


## function testParseUintBitSize


```haxe
function testParseUintBitSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L3092>)


## function testQuote


```haxe
function testQuote(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L4342>)


## function testQuoteRune


```haxe
function testQuoteRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L4433>)


## function testQuoteRuneToASCII


```haxe
function testQuoteRuneToASCII(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L4451>)


## function testQuoteRuneToGraphic


```haxe
function testQuoteRuneToGraphic(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L4469>)


## function testQuoteToASCII


```haxe
function testQuoteToASCII(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L4360>)


## function testQuoteToGraphic


```haxe
function testQuoteToGraphic(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L4378>)


## function testRoundTrip


```haxe
function testRoundTrip(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L2665>)


## function testRoundTrip32


```haxe
function testRoundTrip32(_t:stdgo.Ref<stdgo.testing.T>):Void
```


TestRoundTrip32 tries a fraction of all finite positive float32 values. 


[\(view code\)](<./Strconv.hx#L2700>)


## function testUitoa


```haxe
function testUitoa(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L4188>)


## function testUnquote


```haxe
function testUnquote(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Strconv.hx#L4498>)


## function testUnquoteInvalidUTF8


```haxe
function testUnquoteInvalidUTF8(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Issue 23685: invalid UTF\-8 should not go through the fast path. 


[\(view code\)](<./Strconv.hx#L4513>)


## function main


```haxe
function main():Void
```


 


[\(view code\)](<./Strconv.hx#L227>)


