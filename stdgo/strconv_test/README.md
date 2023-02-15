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

- [class T\_appendBoolTest](<#class-t_appendbooltest>)

  - [`function new(?_b:Bool, ?_in:stdgo.Slice<stdgo.GoUInt8>, ?_out:stdgo.Slice<stdgo.GoUInt8>):Void`](<#t_appendbooltest-function-new>)

- [class T\_atobTest](<#class-t_atobtest>)

  - [`function new(?_in:stdgo.GoString, ?_out:Bool, ?_err:Null<stdgo.Error>):Void`](<#t_atobtest-function-new>)

- [class T\_atocTest](<#class-t_atoctest>)

  - [`function new(?_in:stdgo.GoString, ?_out:stdgo.GoComplex128, ?_err:Null<stdgo.Error>):Void`](<#t_atoctest-function-new>)

- [class T\_atofSimpleTest](<#class-t_atofsimpletest>)

  - [`function new(?_x:stdgo.GoFloat64, ?_s:stdgo.GoString):Void`](<#t_atofsimpletest-function-new>)

- [class T\_atofTest](<#class-t_atoftest>)

  - [`function new(?_in:stdgo.GoString, ?_out:stdgo.GoString, ?_err:Null<stdgo.Error>):Void`](<#t_atoftest-function-new>)

- [class T\_benchCase](<#class-t_benchcase>)

  - [`function new(?_name:stdgo.GoString, ?_num:stdgo.GoInt64):Void`](<#t_benchcase-function-new>)

- [class T\_canBackquoteTest](<#class-t_canbackquotetest>)

  - [`function new(?_in:stdgo.GoString, ?_out:Bool):Void`](<#t_canbackquotetest-function-new>)

- [class T\_ftoaTest](<#class-t_ftoatest>)

  - [`function new(?_f:stdgo.GoFloat64, ?_fmt:stdgo.GoUInt8, ?_prec:Null<stdgo.GoInt>, ?_s:stdgo.GoString):Void`](<#t_ftoatest-function-new>)

- [class T\_itob64Test](<#class-t_itob64test>)

  - [`function new(?_in:stdgo.GoInt64, ?_base:Null<stdgo.GoInt>, ?_out:stdgo.GoString):Void`](<#t_itob64test-function-new>)

- [class T\_numErrorTest](<#class-t_numerrortest>)

  - [`function new(?_num:stdgo.GoString, ?_want:stdgo.GoString):Void`](<#t_numerrortest-function-new>)

- [class T\_parseErrorTest](<#class-t_parseerrortest>)

  - [`function _errStub(:stdgo.GoString, :stdgo.GoInt):stdgo.Error`](<#t_parseerrortest-function-_errstub>)

  - [`function new(?_arg:Null<stdgo.GoInt>, ?_errStub:(:stdgo.GoString, :stdgo.GoInt):stdgo.Error):Void`](<#t_parseerrortest-function-new>)

- [class T\_parseInt32Test](<#class-t_parseint32test>)

  - [`function new(?_in:stdgo.GoString, ?_out:stdgo.GoInt32, ?_err:Null<stdgo.Error>):Void`](<#t_parseint32test-function-new>)

- [class T\_parseInt64BaseTest](<#class-t_parseint64basetest>)

  - [`function new(?_in:stdgo.GoString, ?_base:Null<stdgo.GoInt>, ?_out:stdgo.GoInt64, ?_err:Null<stdgo.Error>):Void`](<#t_parseint64basetest-function-new>)

- [class T\_parseInt64Test](<#class-t_parseint64test>)

  - [`function new(?_in:stdgo.GoString, ?_out:stdgo.GoInt64, ?_err:Null<stdgo.Error>):Void`](<#t_parseint64test-function-new>)

- [class T\_parseUint32Test](<#class-t_parseuint32test>)

  - [`function new(?_in:stdgo.GoString, ?_out:stdgo.GoUInt32, ?_err:Null<stdgo.Error>):Void`](<#t_parseuint32test-function-new>)

- [class T\_parseUint64BaseTest](<#class-t_parseuint64basetest>)

  - [`function new(?_in:stdgo.GoString, ?_base:Null<stdgo.GoInt>, ?_out:stdgo.GoUInt64, ?_err:Null<stdgo.Error>):Void`](<#t_parseuint64basetest-function-new>)

- [class T\_parseUint64Test](<#class-t_parseuint64test>)

  - [`function new(?_in:stdgo.GoString, ?_out:stdgo.GoUInt64, ?_err:Null<stdgo.Error>):Void`](<#t_parseuint64test-function-new>)

- [class T\_quoteRuneTest](<#class-t_quoterunetest>)

  - [`function new(?_in:stdgo.GoInt32, ?_out:stdgo.GoString, ?_ascii:stdgo.GoString, ?_graphic:stdgo.GoString):Void`](<#t_quoterunetest-function-new>)

- [class T\_quoteTest](<#class-t_quotetest>)

  - [`function new(?_in:stdgo.GoString, ?_out:stdgo.GoString, ?_ascii:stdgo.GoString, ?_graphic:stdgo.GoString):Void`](<#t_quotetest-function-new>)

- [class T\_roundIntTest](<#class-t_roundinttest>)

  - [`function new(?_i:stdgo.GoUInt64, ?_shift:Null<stdgo.GoInt>, ?_int:stdgo.GoUInt64):Void`](<#t_roundinttest-function-new>)

- [class T\_roundTest](<#class-t_roundtest>)

  - [`function new(?_i:stdgo.GoUInt64, ?_nd:Null<stdgo.GoInt>, ?_down:stdgo.GoString, ?_round:stdgo.GoString, ?_up:stdgo.GoString, ?_int:stdgo.GoUInt64):Void`](<#t_roundtest-function-new>)

- [class T\_shiftTest](<#class-t_shifttest>)

  - [`function new(?_i:stdgo.GoUInt64, ?_shift:Null<stdgo.GoInt>, ?_out:stdgo.GoString):Void`](<#t_shifttest-function-new>)

- [class T\_uitob64Test](<#class-t_uitob64test>)

  - [`function new(?_in:stdgo.GoUInt64, ?_base:Null<stdgo.GoInt>, ?_out:stdgo.GoString):Void`](<#t_uitob64test-function-new>)

- [class T\_unQuoteTest](<#class-t_unquotetest>)

  - [`function new(?_in:stdgo.GoString, ?_out:stdgo.GoString):Void`](<#t_unquotetest-function-new>)

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





[\(view code\)](<./Strconv.hx#L3401>)


## function benchmarkAppendInt


```haxe
function benchmarkAppendInt(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strconv.hx#L3534>)


## function benchmarkAppendIntSmall


```haxe
function benchmarkAppendIntSmall(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strconv.hx#L3583>)


## function benchmarkAppendQuote


```haxe
function benchmarkAppendQuote(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strconv.hx#L3708>)


## function benchmarkAppendQuoteRune


```haxe
function benchmarkAppendQuoteRune(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strconv.hx#L3716>)


## function benchmarkAppendUint


```haxe
function benchmarkAppendUint(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strconv.hx#L3557>)


## function benchmarkAppendUintVarlen


```haxe
function benchmarkAppendUintVarlen(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strconv.hx#L3594>)


## function benchmarkAtof32Decimal


```haxe
function benchmarkAtof32Decimal(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strconv.hx#L2380>)


## function benchmarkAtof32Float


```haxe
function benchmarkAtof32Float(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strconv.hx#L2388>)


## function benchmarkAtof32FloatExp


```haxe
function benchmarkAtof32FloatExp(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strconv.hx#L2396>)


## function benchmarkAtof32Random


```haxe
function benchmarkAtof32Random(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strconv.hx#L2404>)


## function benchmarkAtof32RandomLong


```haxe
function benchmarkAtof32RandomLong(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strconv.hx#L2419>)


## function benchmarkAtof64Big


```haxe
function benchmarkAtof64Big(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strconv.hx#L2333>)


## function benchmarkAtof64Decimal


```haxe
function benchmarkAtof64Decimal(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strconv.hx#L2309>)


## function benchmarkAtof64Float


```haxe
function benchmarkAtof64Float(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strconv.hx#L2317>)


## function benchmarkAtof64FloatExp


```haxe
function benchmarkAtof64FloatExp(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strconv.hx#L2325>)


## function benchmarkAtof64RandomBits


```haxe
function benchmarkAtof64RandomBits(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strconv.hx#L2341>)


## function benchmarkAtof64RandomFloats


```haxe
function benchmarkAtof64RandomFloats(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strconv.hx#L2351>)


## function benchmarkAtof64RandomLongFloats


```haxe
function benchmarkAtof64RandomLongFloats(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strconv.hx#L2361>)


## function benchmarkAtoi


```haxe
function benchmarkAtoi(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strconv.hx#L2651>)


## function benchmarkFormatFloat


```haxe
function benchmarkFormatFloat(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strconv.hx#L3389>)


## function benchmarkFormatInt


```haxe
function benchmarkFormatInt(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strconv.hx#L3523>)


## function benchmarkFormatIntSmall


```haxe
function benchmarkFormatIntSmall(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strconv.hx#L3569>)


## function benchmarkFormatUint


```haxe
function benchmarkFormatUint(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strconv.hx#L3546>)


## function benchmarkParseInt


```haxe
function benchmarkParseInt(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strconv.hx#L2628>)


## function benchmarkQuote


```haxe
function benchmarkQuote(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strconv.hx#L3692>)


## function benchmarkQuoteRune


```haxe
function benchmarkQuoteRune(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strconv.hx#L3700>)


## function benchmarkUnquoteEasy


```haxe
function benchmarkUnquoteEasy(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strconv.hx#L3831>)


## function benchmarkUnquoteHard


```haxe
function benchmarkUnquoteHard(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Strconv.hx#L3839>)


## function exampleAppendBool


```haxe
function exampleAppendBool():Void
```





[\(view code\)](<./Strconv.hx#L2790>)


## function exampleAppendFloat


```haxe
function exampleAppendFloat():Void
```





[\(view code\)](<./Strconv.hx#L2795>)


## function exampleAppendInt


```haxe
function exampleAppendInt():Void
```





[\(view code\)](<./Strconv.hx#L2803>)


## function exampleAppendQuote


```haxe
function exampleAppendQuote():Void
```





[\(view code\)](<./Strconv.hx#L2811>)


## function exampleAppendQuoteRune


```haxe
function exampleAppendQuoteRune():Void
```





[\(view code\)](<./Strconv.hx#L2816>)


## function exampleAppendQuoteRuneToASCII


```haxe
function exampleAppendQuoteRuneToASCII():Void
```





[\(view code\)](<./Strconv.hx#L2821>)


## function exampleAppendQuoteToASCII


```haxe
function exampleAppendQuoteToASCII():Void
```





[\(view code\)](<./Strconv.hx#L2826>)


## function exampleAppendUint


```haxe
function exampleAppendUint():Void
```





[\(view code\)](<./Strconv.hx#L2831>)


## function exampleAtoi


```haxe
function exampleAtoi():Void
```





[\(view code\)](<./Strconv.hx#L2839>)


## function exampleCanBackquote


```haxe
function exampleCanBackquote():Void
```





[\(view code\)](<./Strconv.hx#L2848>)


## function exampleFormatBool


```haxe
function exampleFormatBool():Void
```





[\(view code\)](<./Strconv.hx#L2852>)


## function exampleFormatFloat


```haxe
function exampleFormatFloat():Void
```





[\(view code\)](<./Strconv.hx#L2857>)


## function exampleFormatInt


```haxe
function exampleFormatInt():Void
```





[\(view code\)](<./Strconv.hx#L2864>)


## function exampleFormatUint


```haxe
function exampleFormatUint():Void
```





[\(view code\)](<./Strconv.hx#L2871>)


## function exampleIsGraphic


```haxe
function exampleIsGraphic():Void
```





[\(view code\)](<./Strconv.hx#L2878>)


## function exampleIsPrint


```haxe
function exampleIsPrint():Void
```





[\(view code\)](<./Strconv.hx#L2886>)


## function exampleItoa


```haxe
function exampleItoa():Void
```





[\(view code\)](<./Strconv.hx#L2892>)


## function exampleNumError


```haxe
function exampleNumError():Void
```





[\(view code\)](<./Strconv.hx#L3077>)


## function exampleParseBool


```haxe
function exampleParseBool():Void
```





[\(view code\)](<./Strconv.hx#L2897>)


## function exampleParseFloat


```haxe
function exampleParseFloat():Void
```





[\(view code\)](<./Strconv.hx#L2906>)


## function exampleParseInt


```haxe
function exampleParseInt():Void
```





[\(view code\)](<./Strconv.hx#L2963>)


## function exampleParseUint


```haxe
function exampleParseUint():Void
```





[\(view code\)](<./Strconv.hx#L2991>)


## function exampleQuote


```haxe
function exampleQuote():Void
```





[\(view code\)](<./Strconv.hx#L3006>)


## function exampleQuoteRune


```haxe
function exampleQuoteRune():Void
```





[\(view code\)](<./Strconv.hx#L3010>)


## function exampleQuoteRuneToASCII


```haxe
function exampleQuoteRuneToASCII():Void
```





[\(view code\)](<./Strconv.hx#L3014>)


## function exampleQuoteRuneToGraphic


```haxe
function exampleQuoteRuneToGraphic():Void
```





[\(view code\)](<./Strconv.hx#L3018>)


## function exampleQuoteToASCII


```haxe
function exampleQuoteToASCII():Void
```





[\(view code\)](<./Strconv.hx#L3028>)


## function exampleQuoteToGraphic


```haxe
function exampleQuoteToGraphic():Void
```





[\(view code\)](<./Strconv.hx#L3032>)


## function exampleUnquote


```haxe
function exampleUnquote():Void
```





[\(view code\)](<./Strconv.hx#L3040>)


## function exampleUnquoteChar


```haxe
function exampleUnquoteChar():Void
```





[\(view code\)](<./Strconv.hx#L3068>)


## function testAllocationsFromBytes


```haxe
function testAllocationsFromBytes(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L3868>)


## function testAppendBool


```haxe
function testAppendBool(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L1931>)


## function testAtof


```haxe
function testAtof(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L2220>)


## function testAtofRandom


```haxe
function testAtofRandom(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L2226>)


## function testAtofSlow


```haxe
function testAtofSlow(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L2223>)


## function testAtoi


```haxe
function testAtoi(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L2526>)


## function testCanBackquote


```haxe
function testCanBackquote(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L3772>)


## function testCountMallocs


```haxe
function testCountMallocs(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L3847>)


## function testDecimalRound


```haxe
function testDecimalRound(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L2750>)


## function testDecimalRoundedInteger


```haxe
function testDecimalRoundedInteger(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L2776>)


## function testDecimalShift


```haxe
function testDecimalShift(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L2736>)


## function testErrorPrefixes


```haxe
function testErrorPrefixes(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L3937>)


## function testFormatBool


```haxe
function testFormatBool(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L1921>)


## function testFormatComplex


```haxe
function testFormatComplex(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L2677>)


## function testFormatComplexInvalidBitSize


```haxe
function testFormatComplexInvalidBitSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L2697>)


## function testFormatFloatInvalidBitSize


```haxe
function testFormatFloatInvalidBitSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L3350>)


## function testFormatUintVarlen


```haxe
function testFormatUintVarlen(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L3515>)


## function testFp


```haxe
function testFp(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L3175>)


## function testFtoa


```haxe
function testFtoa(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L3266>)


## function testFtoaPowersOfTwo


```haxe
function testFtoaPowersOfTwo(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L3292>)


## function testFtoaRandom


```haxe
function testFtoaRandom(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L3321>)


## function testIsGraphic


```haxe
function testIsGraphic(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Verify that our IsGraphic agrees with unicode.IsGraphic.  



[\(view code\)](<./Strconv.hx#L3629>)


## function testIsPrint


```haxe
function testIsPrint(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Verify that our IsPrint agrees with unicode.IsPrint.  



[\(view code\)](<./Strconv.hx#L3611>)


## function testItoa


```haxe
function testItoa(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L3438>)


## function testMulByLog10Log2


```haxe
function testMulByLog10Log2(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L3426>)


## function testMulByLog2Log10


```haxe
function testMulByLog2Log10(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L3414>)


## function testNumError


```haxe
function testNumError(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L2611>)


## function testNumErrorUnwrap


```haxe
function testNumErrorUnwrap(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L2622>)


## function testParseBool


```haxe
function testParseBool(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L1900>)


## function testParseComplex


```haxe
function testParseComplex(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L1939>)


## function testParseComplexIncorrectBitSize


```haxe
function testParseComplexIncorrectBitSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Issue 42297: allow ParseComplex\(s, not\_32\_or\_64\) for legacy reasons  



[\(view code\)](<./Strconv.hx#L2099>)


## function testParseFloatIncorrectBitSize


```haxe
function testParseFloatIncorrectBitSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Issue 42297: a lot of code in the wild accidentally calls ParseFloat\(s, 10\)  
or ParseFloat\(s, 0\), so allow bitSize values other than 32 and 64.  



[\(view code\)](<./Strconv.hx#L2296>)


## function testParseFloatPrefix


```haxe
function testParseFloatPrefix(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L2149>)


## function testParseInt


```haxe
function testParseInt(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L2507>)


## function testParseInt32


```haxe
function testParseInt32(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L2461>)


## function testParseInt64


```haxe
function testParseInt64(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L2470>)


## function testParseInt64Base


```haxe
function testParseInt64Base(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L2479>)


## function testParseIntBase


```haxe
function testParseIntBase(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L2591>)


## function testParseIntBitSize


```haxe
function testParseIntBitSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L2571>)


## function testParseUint


```haxe
function testParseUint(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L2488>)


## function testParseUint32


```haxe
function testParseUint32(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L2434>)


## function testParseUint64


```haxe
function testParseUint64(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L2443>)


## function testParseUint64Base


```haxe
function testParseUint64Base(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L2452>)


## function testParseUintBase


```haxe
function testParseUintBase(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L2601>)


## function testParseUintBitSize


```haxe
function testParseUintBitSize(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L2581>)


## function testQuote


```haxe
function testQuote(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L3644>)


## function testQuoteRune


```haxe
function testQuoteRune(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L3724>)


## function testQuoteRuneToASCII


```haxe
function testQuoteRuneToASCII(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L3740>)


## function testQuoteRuneToGraphic


```haxe
function testQuoteRuneToGraphic(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L3756>)


## function testQuoteToASCII


```haxe
function testQuoteToASCII(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L3660>)


## function testQuoteToGraphic


```haxe
function testQuoteToGraphic(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L3676>)


## function testRoundTrip


```haxe
function testRoundTrip(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L2234>)


## function testRoundTrip32


```haxe
function testRoundTrip32(_t:stdgo.Ref<stdgo.testing.T>):Void
```


TestRoundTrip32 tries a fraction of all finite positive float32 values.  



[\(view code\)](<./Strconv.hx#L2264>)


## function testUitoa


```haxe
function testUitoa(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L3503>)


## function testUnquote


```haxe
function testUnquote(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Strconv.hx#L3782>)


## function testUnquoteInvalidUTF8


```haxe
function testUnquoteInvalidUTF8(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Issue 23685: invalid UTF\-8 should not go through the fast path.  



[\(view code\)](<./Strconv.hx#L3796>)


# Classes


```haxe
import stdgo.strconv_test.*
```


## class T\_appendBoolTest





```haxe
var _b:Bool
```


```haxe
var _in:stdgo.Slice<stdgo.GoUInt8>
```


```haxe
var _out:stdgo.Slice<stdgo.GoUInt8>
```


### T\_appendBoolTest function new


```haxe
function new(?_b:Bool, ?_in:stdgo.Slice<stdgo.GoUInt8>, ?_out:stdgo.Slice<stdgo.GoUInt8>):Void
```





[\(view code\)](<./Strconv_test.hx#L1305>)


## class T\_atobTest





```haxe
var _err:stdgo.Error
```


```haxe
var _in:stdgo.GoString
```


```haxe
var _out:Bool
```


### T\_atobTest function new


```haxe
function new(?_in:stdgo.GoString, ?_out:Bool, ?_err:Null<stdgo.Error>):Void
```





[\(view code\)](<./Strconv_test.hx#L1286>)


## class T\_atocTest





```haxe
var _err:stdgo.Error
```


```haxe
var _in:stdgo.GoString
```


```haxe
var _out:stdgo.GoComplex128
```


### T\_atocTest function new


```haxe
function new(?_in:stdgo.GoString, ?_out:stdgo.GoComplex128, ?_err:Null<stdgo.Error>):Void
```





[\(view code\)](<./Strconv_test.hx#L1324>)


## class T\_atofSimpleTest





```haxe
var _s:stdgo.GoString
```


```haxe
var _x:stdgo.GoFloat64
```


### T\_atofSimpleTest function new


```haxe
function new(?_x:stdgo.GoFloat64, ?_s:stdgo.GoString):Void
```





[\(view code\)](<./Strconv_test.hx#L1361>)


## class T\_atofTest





```haxe
var _err:stdgo.Error
```


```haxe
var _in:stdgo.GoString
```


```haxe
var _out:stdgo.GoString
```


### T\_atofTest function new


```haxe
function new(?_in:stdgo.GoString, ?_out:stdgo.GoString, ?_err:Null<stdgo.Error>):Void
```





[\(view code\)](<./Strconv_test.hx#L1343>)


## class T\_benchCase





```haxe
var _name:stdgo.GoString
```


```haxe
var _num:stdgo.GoInt64
```


### T\_benchCase function new


```haxe
function new(?_name:stdgo.GoString, ?_num:stdgo.GoInt64):Void
```





[\(view code\)](<./Strconv_test.hx#L1530>)


## class T\_canBackquoteTest





```haxe
var _in:stdgo.GoString
```


```haxe
var _out:Bool
```


### T\_canBackquoteTest function new


```haxe
function new(?_in:stdgo.GoString, ?_out:Bool):Void
```





[\(view code\)](<./Strconv_test.hx#L1711>)


## class T\_ftoaTest





```haxe
var _f:stdgo.GoFloat64
```


```haxe
var _fmt:stdgo.GoUInt8
```


```haxe
var _prec:stdgo.GoInt
```


```haxe
var _s:stdgo.GoString
```


### T\_ftoaTest function new


```haxe
function new(?_f:stdgo.GoFloat64, ?_fmt:stdgo.GoUInt8, ?_prec:Null<stdgo.GoInt>, ?_s:stdgo.GoString):Void
```





[\(view code\)](<./Strconv_test.hx#L1612>)


## class T\_itob64Test





```haxe
var _base:stdgo.GoInt
```


```haxe
var _in:stdgo.GoInt64
```


```haxe
var _out:stdgo.GoString
```


### T\_itob64Test function new


```haxe
function new(?_in:stdgo.GoInt64, ?_base:Null<stdgo.GoInt>, ?_out:stdgo.GoString):Void
```





[\(view code\)](<./Strconv_test.hx#L1632>)


## class T\_numErrorTest





```haxe
var _num:stdgo.GoString
```


```haxe
var _want:stdgo.GoString
```


### T\_numErrorTest function new


```haxe
function new(?_num:stdgo.GoString, ?_want:stdgo.GoString):Void
```





[\(view code\)](<./Strconv_test.hx#L1496>)


## class T\_parseErrorTest





```haxe
var _arg:stdgo.GoInt
```


### T\_parseErrorTest function \_errStub


```haxe
function _errStub(:stdgo.GoString, :stdgo.GoInt):stdgo.Error
```





### T\_parseErrorTest function new


```haxe
function new(?_arg:Null<stdgo.GoInt>, ?_errStub:(:stdgo.GoString, :stdgo.GoInt):stdgo.Error):Void
```





[\(view code\)](<./Strconv_test.hx#L1513>)


## class T\_parseInt32Test





```haxe
var _err:stdgo.Error
```


```haxe
var _in:stdgo.GoString
```


```haxe
var _out:stdgo.GoInt32
```


### T\_parseInt32Test function new


```haxe
function new(?_in:stdgo.GoString, ?_out:stdgo.GoInt32, ?_err:Null<stdgo.Error>):Void
```





[\(view code\)](<./Strconv_test.hx#L1478>)


## class T\_parseInt64BaseTest





```haxe
var _base:stdgo.GoInt
```


```haxe
var _err:stdgo.Error
```


```haxe
var _in:stdgo.GoString
```


```haxe
var _out:stdgo.GoInt64
```


### T\_parseInt64BaseTest function new


```haxe
function new(?_in:stdgo.GoString, ?_base:Null<stdgo.GoInt>, ?_out:stdgo.GoInt64, ?_err:Null<stdgo.Error>):Void
```





[\(view code\)](<./Strconv_test.hx#L1439>)


## class T\_parseInt64Test





```haxe
var _err:stdgo.Error
```


```haxe
var _in:stdgo.GoString
```


```haxe
var _out:stdgo.GoInt64
```


### T\_parseInt64Test function new


```haxe
function new(?_in:stdgo.GoString, ?_out:stdgo.GoInt64, ?_err:Null<stdgo.Error>):Void
```





[\(view code\)](<./Strconv_test.hx#L1419>)


## class T\_parseUint32Test





```haxe
var _err:stdgo.Error
```


```haxe
var _in:stdgo.GoString
```


```haxe
var _out:stdgo.GoUInt32
```


### T\_parseUint32Test function new


```haxe
function new(?_in:stdgo.GoString, ?_out:stdgo.GoUInt32, ?_err:Null<stdgo.Error>):Void
```





[\(view code\)](<./Strconv_test.hx#L1459>)


## class T\_parseUint64BaseTest





```haxe
var _base:stdgo.GoInt
```


```haxe
var _err:stdgo.Error
```


```haxe
var _in:stdgo.GoString
```


```haxe
var _out:stdgo.GoUInt64
```


### T\_parseUint64BaseTest function new


```haxe
function new(?_in:stdgo.GoString, ?_base:Null<stdgo.GoInt>, ?_out:stdgo.GoUInt64, ?_err:Null<stdgo.Error>):Void
```





[\(view code\)](<./Strconv_test.hx#L1399>)


## class T\_parseUint64Test





```haxe
var _err:stdgo.Error
```


```haxe
var _in:stdgo.GoString
```


```haxe
var _out:stdgo.GoUInt64
```


### T\_parseUint64Test function new


```haxe
function new(?_in:stdgo.GoString, ?_out:stdgo.GoUInt64, ?_err:Null<stdgo.Error>):Void
```





[\(view code\)](<./Strconv_test.hx#L1379>)


## class T\_quoteRuneTest





```haxe
var _ascii:stdgo.GoString
```


```haxe
var _graphic:stdgo.GoString
```


```haxe
var _in:stdgo.GoInt32
```


```haxe
var _out:stdgo.GoString
```


### T\_quoteRuneTest function new


```haxe
function new(?_in:stdgo.GoInt32, ?_out:stdgo.GoString, ?_ascii:stdgo.GoString, ?_graphic:stdgo.GoString):Void
```





[\(view code\)](<./Strconv_test.hx#L1692>)


## class T\_quoteTest





```haxe
var _ascii:stdgo.GoString
```


```haxe
var _graphic:stdgo.GoString
```


```haxe
var _in:stdgo.GoString
```


```haxe
var _out:stdgo.GoString
```


### T\_quoteTest function new


```haxe
function new(?_in:stdgo.GoString, ?_out:stdgo.GoString, ?_ascii:stdgo.GoString, ?_graphic:stdgo.GoString):Void
```





[\(view code\)](<./Strconv_test.hx#L1671>)


## class T\_roundIntTest





```haxe
var _i:stdgo.GoUInt64
```


```haxe
var _int:stdgo.GoUInt64
```


```haxe
var _shift:stdgo.GoInt
```


### T\_roundIntTest function new


```haxe
function new(?_i:stdgo.GoUInt64, ?_shift:Null<stdgo.GoInt>, ?_int:stdgo.GoUInt64):Void
```





[\(view code\)](<./Strconv_test.hx#L1592>)


## class T\_roundTest





```haxe
var _down:stdgo.GoString
```


```haxe
var _i:stdgo.GoUInt64
```


```haxe
var _int:stdgo.GoUInt64
```


```haxe
var _nd:stdgo.GoInt
```


```haxe
var _round:stdgo.GoString
```


```haxe
var _up:stdgo.GoString
```


### T\_roundTest function new


```haxe
function new(?_i:stdgo.GoUInt64, ?_nd:Null<stdgo.GoInt>, ?_down:stdgo.GoString, ?_round:stdgo.GoString, ?_up:stdgo.GoString, ?_int:stdgo.GoUInt64):Void
```





[\(view code\)](<./Strconv_test.hx#L1570>)


## class T\_shiftTest





```haxe
var _i:stdgo.GoUInt64
```


```haxe
var _out:stdgo.GoString
```


```haxe
var _shift:stdgo.GoInt
```


### T\_shiftTest function new


```haxe
function new(?_i:stdgo.GoUInt64, ?_shift:Null<stdgo.GoInt>, ?_out:stdgo.GoString):Void
```





[\(view code\)](<./Strconv_test.hx#L1548>)


## class T\_uitob64Test





```haxe
var _base:stdgo.GoInt
```


```haxe
var _in:stdgo.GoUInt64
```


```haxe
var _out:stdgo.GoString
```


### T\_uitob64Test function new


```haxe
function new(?_in:stdgo.GoUInt64, ?_base:Null<stdgo.GoInt>, ?_out:stdgo.GoString):Void
```





[\(view code\)](<./Strconv_test.hx#L1651>)


## class T\_unQuoteTest





```haxe
var _in:stdgo.GoString
```


```haxe
var _out:stdgo.GoString
```


### T\_unQuoteTest function new


```haxe
function new(?_in:stdgo.GoString, ?_out:stdgo.GoString):Void
```





[\(view code\)](<./Strconv_test.hx#L1728>)


