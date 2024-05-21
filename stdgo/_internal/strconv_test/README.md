# Module: `stdgo._internal.strconv`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _baseErrStub(_name:stdgo.GoString, _base:stdgo.GoInt):stdgo.Error`](<#function-_baseerrstub>)

- [`function _benchmarkAtoi(_b:stdgo.Ref<stdgo._internal.testing.B>, _neg:stdgo.GoInt):Void`](<#function-_benchmarkatoi>)

- [`function _benchmarkParseInt(_b:stdgo.Ref<stdgo._internal.testing.B>, _neg:stdgo.GoInt):Void`](<#function-_benchmarkparseint>)

- [`function _bitSizeErrStub(_name:stdgo.GoString, _bitSize:stdgo.GoInt):stdgo.Error`](<#function-_bitsizeerrstub>)

- [`function _equalError(_a:stdgo.Error, _b:stdgo.Error):Bool`](<#function-_equalerror>)

- [`function _fdiv(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):stdgo.GoFloat64`](<#function-_fdiv>)

- [`function _initAtof():Void`](<#function-_initatof>)

- [`function _initAtofOnce():Void`](<#function-_initatofonce>)

- [`function _myatof32(_s:stdgo.GoString):{
	_1:Bool;
	_0:stdgo.GoFloat32;
}`](<#function-_myatof32>)

- [`function _myatof64(_s:stdgo.GoString):{
	_1:Bool;
	_0:stdgo.GoFloat64;
}`](<#function-_myatof64>)

- [`function _noErrStub(_name:stdgo.GoString, _arg:stdgo.GoInt):stdgo.Error`](<#function-_noerrstub>)

- [`function _pow2(_i:stdgo.GoInt):stdgo.GoFloat64`](<#function-_pow2>)

- [`function _testAtof(_t:stdgo.Ref<stdgo._internal.testing.T_>, _opt:Bool):Void`](<#function-_testatof>)

- [`function _testUnquote(_t:stdgo.Ref<stdgo._internal.testing.T_>, _in:stdgo.GoString, _want:stdgo.GoString, _wantErr:stdgo.Error):Void`](<#function-_testunquote>)

- [`function benchmarkAppendFloat(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkappendfloat>)

- [`function benchmarkAppendInt(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkappendint>)

- [`function benchmarkAppendIntSmall(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkappendintsmall>)

- [`function benchmarkAppendQuote(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkappendquote>)

- [`function benchmarkAppendQuoteRune(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkappendquoterune>)

- [`function benchmarkAppendUint(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkappenduint>)

- [`function benchmarkAppendUintVarlen(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkappenduintvarlen>)

- [`function benchmarkAtof32Decimal(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkatof32decimal>)

- [`function benchmarkAtof32Float(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkatof32float>)

- [`function benchmarkAtof32FloatExp(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkatof32floatexp>)

- [`function benchmarkAtof32Random(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkatof32random>)

- [`function benchmarkAtof32RandomLong(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkatof32randomlong>)

- [`function benchmarkAtof64Big(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkatof64big>)

- [`function benchmarkAtof64Decimal(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkatof64decimal>)

- [`function benchmarkAtof64Float(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkatof64float>)

- [`function benchmarkAtof64FloatExp(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkatof64floatexp>)

- [`function benchmarkAtof64RandomBits(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkatof64randombits>)

- [`function benchmarkAtof64RandomFloats(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkatof64randomfloats>)

- [`function benchmarkAtof64RandomLongFloats(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkatof64randomlongfloats>)

- [`function benchmarkAtoi(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkatoi>)

- [`function benchmarkFormatFloat(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkformatfloat>)

- [`function benchmarkFormatInt(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkformatint>)

- [`function benchmarkFormatIntSmall(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkformatintsmall>)

- [`function benchmarkFormatUint(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkformatuint>)

- [`function benchmarkParseInt(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkparseint>)

- [`function benchmarkQuote(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkquote>)

- [`function benchmarkQuoteRune(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkquoterune>)

- [`function benchmarkUnquoteEasy(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkunquoteeasy>)

- [`function benchmarkUnquoteHard(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkunquotehard>)

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

- [`function testAllocationsFromBytes(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testallocationsfrombytes>)

- [`function testAppendBool(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testappendbool>)

- [`function testAtof(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testatof>)

- [`function testAtofRandom(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testatofrandom>)

- [`function testAtofSlow(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testatofslow>)

- [`function testAtoi(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testatoi>)

- [`function testCanBackquote(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testcanbackquote>)

- [`function testCountMallocs(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testcountmallocs>)

- [`function testDecimalRound(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdecimalround>)

- [`function testDecimalRoundedInteger(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdecimalroundedinteger>)

- [`function testDecimalShift(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testdecimalshift>)

- [`function testErrorPrefixes(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testerrorprefixes>)

- [`function testFormatBool(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testformatbool>)

- [`function testFormatComplex(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testformatcomplex>)

- [`function testFormatComplexInvalidBitSize(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testformatcomplexinvalidbitsize>)

- [`function testFormatFloatInvalidBitSize(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testformatfloatinvalidbitsize>)

- [`function testFormatUintVarlen(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testformatuintvarlen>)

- [`function testFp(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testfp>)

- [`function testFtoa(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testftoa>)

- [`function testFtoaPowersOfTwo(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testftoapowersoftwo>)

- [`function testFtoaRandom(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testftoarandom>)

- [`function testIsGraphic(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testisgraphic>)

- [`function testIsPrint(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testisprint>)

- [`function testItoa(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testitoa>)

- [`function testMulByLog10Log2(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testmulbylog10log2>)

- [`function testMulByLog2Log10(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testmulbylog2log10>)

- [`function testNumError(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testnumerror>)

- [`function testNumErrorUnwrap(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testnumerrorunwrap>)

- [`function testParseBool(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testparsebool>)

- [`function testParseComplex(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testparsecomplex>)

- [`function testParseComplexIncorrectBitSize(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testparsecomplexincorrectbitsize>)

- [`function testParseFloatIncorrectBitSize(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testparsefloatincorrectbitsize>)

- [`function testParseFloatPrefix(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testparsefloatprefix>)

- [`function testParseInt(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testparseint>)

- [`function testParseInt32(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testparseint32>)

- [`function testParseInt64(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testparseint64>)

- [`function testParseInt64Base(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testparseint64base>)

- [`function testParseIntBase(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testparseintbase>)

- [`function testParseIntBitSize(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testparseintbitsize>)

- [`function testParseUint(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testparseuint>)

- [`function testParseUint32(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testparseuint32>)

- [`function testParseUint64(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testparseuint64>)

- [`function testParseUint64Base(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testparseuint64base>)

- [`function testParseUintBase(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testparseuintbase>)

- [`function testParseUintBitSize(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testparseuintbitsize>)

- [`function testQuote(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testquote>)

- [`function testQuoteRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testquoterune>)

- [`function testQuoteRuneToASCII(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testquoterunetoascii>)

- [`function testQuoteRuneToGraphic(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testquoterunetographic>)

- [`function testQuoteToASCII(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testquotetoascii>)

- [`function testQuoteToGraphic(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testquotetographic>)

- [`function testRoundTrip(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testroundtrip>)

- [`function testRoundTrip32(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testroundtrip32>)

- [`function testUitoa(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testuitoa>)

- [`function testUnquote(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testunquote>)

- [`function testUnquoteInvalidUTF8(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testunquoteinvalidutf8>)

- [`function main():Void`](<#function-main>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

- [typedef T\_\_struct\_2](<#typedef-t__struct_2>)

- [typedef T\_\_struct\_3](<#typedef-t__struct_3>)

- [typedef T\_\_struct\_4](<#typedef-t__struct_4>)

- [typedef T\_\_struct\_5](<#typedef-t__struct_5>)

- [typedef T\_\_struct\_6](<#typedef-t__struct_6>)

- [typedef T\_\_struct\_7](<#typedef-t__struct_7>)

- [typedef T\_\_struct\_8](<#typedef-t__struct_8>)

# Constants


```haxe
import stdgo._internal.strconv_test.Strconv
```


```haxe
final _above1e23:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final _below1e23:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


# Variables


```haxe
import stdgo._internal.strconv_test.Strconv
```


```haxe
var _:Bool
```


```haxe
var _appendBoolTests:stdgo.Slice<stdgo._internal.strconv_test.T_appendBoolTest>
```


```haxe
var _atobtests:stdgo.Slice<stdgo._internal.strconv_test.T_atobTest>
```


```haxe
var _atof32tests:stdgo.Slice<stdgo._internal.strconv_test.T_atofTest>
```


```haxe
var _atofOnce:stdgo._internal.sync.Once
```


```haxe
var _atofRandomTests:stdgo.Slice<stdgo._internal.strconv_test.T_atofSimpleTest>
```


```haxe
var _atoftests:stdgo.Slice<stdgo._internal.strconv_test.T_atofTest>
```


```haxe
var _benchQuoteBuf:stdgo.Slice<stdgo.GoByte>
```


```haxe
var _benchQuoteRuneBuf:stdgo.Slice<stdgo.GoByte>
```


```haxe
var _benchmarksRandomBits:stdgo.GoArray<stdgo.GoString>
```


```haxe
var _benchmarksRandomNormal:stdgo.GoArray<stdgo.GoString>
```


```haxe
var _boolString:stdgo.GoMap<Bool, stdgo.GoString>
```


```haxe
var _canbackquotetests:stdgo.Slice<stdgo._internal.strconv_test.T_canBackquoteTest>
```


```haxe
var _ftoaBenches:stdgo.Slice<stdgo._internal.strconv_test.T__struct_2>
```


```haxe
var _ftoatests:stdgo.Slice<stdgo._internal.strconv_test.T_ftoaTest>
```


```haxe
var _globalBuf:stdgo.GoArray<stdgo.GoByte>
```


```haxe
var _inf0m:stdgo.GoComplex128
```


```haxe
var _inf0p:stdgo.GoComplex128
```


```haxe
var _infm0:stdgo.GoComplex128
```


```haxe
var _infmm:stdgo.GoComplex128
```


```haxe
var _infmp:stdgo.GoComplex128
```


```haxe
var _infp0:stdgo.GoComplex128
```


```haxe
var _infpm:stdgo.GoComplex128
```


```haxe
var _infpp:stdgo.GoComplex128
```


```haxe
var _itob64tests:stdgo.Slice<stdgo._internal.strconv_test.T_itob64Test>
```


```haxe
var _mallocTest:stdgo.Slice<stdgo._internal.strconv_test.T__struct_5>
```


```haxe
var _misquoted:stdgo.Slice<stdgo.GoString>
```


```haxe
var _nextToOne:stdgo.GoString
```


```haxe
var _numErrorTests:stdgo.Slice<stdgo._internal.strconv_test.T_numErrorTest>
```


```haxe
var _oneMB:stdgo.Slice<stdgo.GoByte>
```


```haxe
var _parseBaseTests:stdgo.Slice<stdgo._internal.strconv_test.T_parseErrorTest>
```


```haxe
var _parseBitSizeTests:stdgo.Slice<stdgo._internal.strconv_test.T_parseErrorTest>
```


```haxe
var _parseInt32Tests:stdgo.Slice<stdgo._internal.strconv_test.T_parseInt32Test>
```


```haxe
var _parseInt64BaseTests:stdgo.Slice<stdgo._internal.strconv_test.T_parseInt64BaseTest>
```


```haxe
var _parseInt64Tests:stdgo.Slice<stdgo._internal.strconv_test.T_parseInt64Test>
```


```haxe
var _parseUint32Tests:stdgo.Slice<stdgo._internal.strconv_test.T_parseUint32Test>
```


```haxe
var _parseUint64BaseTests:stdgo.Slice<stdgo._internal.strconv_test.T_parseUint64BaseTest>
```


```haxe
var _parseUint64Tests:stdgo.Slice<stdgo._internal.strconv_test.T_parseUint64Test>
```


```haxe
var _quoterunetests:stdgo.Slice<stdgo._internal.strconv_test.T_quoteRuneTest>
```


```haxe
var _quotetests:stdgo.Slice<stdgo._internal.strconv_test.T_quoteTest>
```


```haxe
var _roundTripCases:stdgo.Slice<stdgo._internal.strconv_test.T__struct_0>
```


```haxe
var _roundinttests:stdgo.Slice<stdgo._internal.strconv_test.T_roundIntTest>
```


```haxe
var _roundtests:stdgo.Slice<stdgo._internal.strconv_test.T_roundTest>
```


```haxe
var _shifttests:stdgo.Slice<stdgo._internal.strconv_test.T_shiftTest>
```


```haxe
var _uitob64tests:stdgo.Slice<stdgo._internal.strconv_test.T_uitob64Test>
```


```haxe
var _unquotetests:stdgo.Slice<stdgo._internal.strconv_test.T_unQuoteTest>
```


```haxe
var _varlenUints:stdgo.Slice<stdgo._internal.strconv_test.T__struct_3>
```


```haxe
var benchSink:stdgo.GoInt
```


```haxe
var sink:stdgo._internal.strconv_test.T__struct_6
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
import stdgo._internal.strconv_test.Strconv
```


## function \_baseErrStub


```haxe
function _baseErrStub(_name:stdgo.GoString, _base:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Strconv.hx#L2127>)


## function \_benchmarkAtoi


```haxe
function _benchmarkAtoi(_b:stdgo.Ref<stdgo._internal.testing.B>, _neg:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L2230>)


## function \_benchmarkParseInt


```haxe
function _benchmarkParseInt(_b:stdgo.Ref<stdgo._internal.testing.B>, _neg:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L2207>)


## function \_bitSizeErrStub


```haxe
function _bitSizeErrStub(_name:stdgo.GoString, _bitSize:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Strconv.hx#L2124>)


## function \_equalError


```haxe
function _equalError(_a:stdgo.Error, _b:stdgo.Error):Bool
```


[\(view code\)](<./Strconv.hx#L2133>)


## function \_fdiv


```haxe
function _fdiv(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):stdgo.GoFloat64
```


[\(view code\)](<./Strconv.hx#L2822>)


## function \_initAtof


```haxe
function _initAtof():Void
```


[\(view code\)](<./Strconv.hx#L1675>)


## function \_initAtofOnce


```haxe
function _initAtofOnce():Void
```


[\(view code\)](<./Strconv.hx#L1678>)


## function \_myatof32


```haxe
function _myatof32(_s:stdgo.GoString):{
	_1:Bool;
	_0:stdgo.GoFloat32;
}
```


[\(view code\)](<./Strconv.hx#L2705>)


## function \_myatof64


```haxe
function _myatof64(_s:stdgo.GoString):{
	_1:Bool;
	_0:stdgo.GoFloat64;
}
```


[\(view code\)](<./Strconv.hx#L2663>)


## function \_noErrStub


```haxe
function _noErrStub(_name:stdgo.GoString, _arg:stdgo.GoInt):stdgo.Error
```


[\(view code\)](<./Strconv.hx#L2130>)


## function \_pow2


```haxe
function _pow2(_i:stdgo.GoInt):stdgo.GoFloat64
```


[\(view code\)](<./Strconv.hx#L2653>)


## function \_testAtof


```haxe
function _testAtof(_t:stdgo.Ref<stdgo._internal.testing.T_>, _opt:Bool):Void
```


[\(view code\)](<./Strconv.hx#L1741>)


## function \_testUnquote


```haxe
function _testUnquote(_t:stdgo.Ref<stdgo._internal.testing.T_>, _in:stdgo.GoString, _want:stdgo.GoString, _wantErr:stdgo.Error):Void
```


[\(view code\)](<./Strconv.hx#L3356>)


## function benchmarkAppendFloat


```haxe
function benchmarkAppendFloat(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L2963>)


## function benchmarkAppendInt


```haxe
function benchmarkAppendInt(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3097>)


## function benchmarkAppendIntSmall


```haxe
function benchmarkAppendIntSmall(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3146>)


## function benchmarkAppendQuote


```haxe
function benchmarkAppendQuote(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3265>)


## function benchmarkAppendQuoteRune


```haxe
function benchmarkAppendQuoteRune(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3273>)


## function benchmarkAppendUint


```haxe
function benchmarkAppendUint(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3120>)


## function benchmarkAppendUintVarlen


```haxe
function benchmarkAppendUintVarlen(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3157>)


## function benchmarkAtof32Decimal


```haxe
function benchmarkAtof32Decimal(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L1942>)


## function benchmarkAtof32Float


```haxe
function benchmarkAtof32Float(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L1950>)


## function benchmarkAtof32FloatExp


```haxe
function benchmarkAtof32FloatExp(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L1958>)


## function benchmarkAtof32Random


```haxe
function benchmarkAtof32Random(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L1966>)


## function benchmarkAtof32RandomLong


```haxe
function benchmarkAtof32RandomLong(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L1981>)


## function benchmarkAtof64Big


```haxe
function benchmarkAtof64Big(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L1895>)


## function benchmarkAtof64Decimal


```haxe
function benchmarkAtof64Decimal(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L1871>)


## function benchmarkAtof64Float


```haxe
function benchmarkAtof64Float(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L1879>)


## function benchmarkAtof64FloatExp


```haxe
function benchmarkAtof64FloatExp(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L1887>)


## function benchmarkAtof64RandomBits


```haxe
function benchmarkAtof64RandomBits(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L1903>)


## function benchmarkAtof64RandomFloats


```haxe
function benchmarkAtof64RandomFloats(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L1913>)


## function benchmarkAtof64RandomLongFloats


```haxe
function benchmarkAtof64RandomLongFloats(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L1923>)


## function benchmarkAtoi


```haxe
function benchmarkAtoi(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L2222>)


## function benchmarkFormatFloat


```haxe
function benchmarkFormatFloat(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L2951>)


## function benchmarkFormatInt


```haxe
function benchmarkFormatInt(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3086>)


## function benchmarkFormatIntSmall


```haxe
function benchmarkFormatIntSmall(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3132>)


## function benchmarkFormatUint


```haxe
function benchmarkFormatUint(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3109>)


## function benchmarkParseInt


```haxe
function benchmarkParseInt(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L2199>)


## function benchmarkQuote


```haxe
function benchmarkQuote(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3249>)


## function benchmarkQuoteRune


```haxe
function benchmarkQuoteRune(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3257>)


## function benchmarkUnquoteEasy


```haxe
function benchmarkUnquoteEasy(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3385>)


## function benchmarkUnquoteHard


```haxe
function benchmarkUnquoteHard(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Strconv.hx#L3393>)


## function exampleAppendBool


```haxe
function exampleAppendBool():Void
```


[\(view code\)](<./Strconv.hx#L2351>)


## function exampleAppendFloat


```haxe
function exampleAppendFloat():Void
```


[\(view code\)](<./Strconv.hx#L2356>)


## function exampleAppendInt


```haxe
function exampleAppendInt():Void
```


[\(view code\)](<./Strconv.hx#L2364>)


## function exampleAppendQuote


```haxe
function exampleAppendQuote():Void
```


[\(view code\)](<./Strconv.hx#L2372>)


## function exampleAppendQuoteRune


```haxe
function exampleAppendQuoteRune():Void
```


[\(view code\)](<./Strconv.hx#L2377>)


## function exampleAppendQuoteRuneToASCII


```haxe
function exampleAppendQuoteRuneToASCII():Void
```


[\(view code\)](<./Strconv.hx#L2382>)


## function exampleAppendQuoteToASCII


```haxe
function exampleAppendQuoteToASCII():Void
```


[\(view code\)](<./Strconv.hx#L2387>)


## function exampleAppendUint


```haxe
function exampleAppendUint():Void
```


[\(view code\)](<./Strconv.hx#L2392>)


## function exampleAtoi


```haxe
function exampleAtoi():Void
```


[\(view code\)](<./Strconv.hx#L2400>)


## function exampleCanBackquote


```haxe
function exampleCanBackquote():Void
```


[\(view code\)](<./Strconv.hx#L2409>)


## function exampleFormatBool


```haxe
function exampleFormatBool():Void
```


[\(view code\)](<./Strconv.hx#L2413>)


## function exampleFormatFloat


```haxe
function exampleFormatFloat():Void
```


[\(view code\)](<./Strconv.hx#L2418>)


## function exampleFormatInt


```haxe
function exampleFormatInt():Void
```


[\(view code\)](<./Strconv.hx#L2427>)


## function exampleFormatUint


```haxe
function exampleFormatUint():Void
```


[\(view code\)](<./Strconv.hx#L2434>)


## function exampleIsGraphic


```haxe
function exampleIsGraphic():Void
```


[\(view code\)](<./Strconv.hx#L2441>)


## function exampleIsPrint


```haxe
function exampleIsPrint():Void
```


[\(view code\)](<./Strconv.hx#L2449>)


## function exampleItoa


```haxe
function exampleItoa():Void
```


[\(view code\)](<./Strconv.hx#L2455>)


## function exampleNumError


```haxe
function exampleNumError():Void
```


[\(view code\)](<./Strconv.hx#L2640>)


## function exampleParseBool


```haxe
function exampleParseBool():Void
```


[\(view code\)](<./Strconv.hx#L2460>)


## function exampleParseFloat


```haxe
function exampleParseFloat():Void
```


[\(view code\)](<./Strconv.hx#L2469>)


## function exampleParseInt


```haxe
function exampleParseInt():Void
```


[\(view code\)](<./Strconv.hx#L2526>)


## function exampleParseUint


```haxe
function exampleParseUint():Void
```


[\(view code\)](<./Strconv.hx#L2554>)


## function exampleQuote


```haxe
function exampleQuote():Void
```


[\(view code\)](<./Strconv.hx#L2569>)


## function exampleQuoteRune


```haxe
function exampleQuoteRune():Void
```


[\(view code\)](<./Strconv.hx#L2573>)


## function exampleQuoteRuneToASCII


```haxe
function exampleQuoteRuneToASCII():Void
```


[\(view code\)](<./Strconv.hx#L2577>)


## function exampleQuoteRuneToGraphic


```haxe
function exampleQuoteRuneToGraphic():Void
```


[\(view code\)](<./Strconv.hx#L2581>)


## function exampleQuoteToASCII


```haxe
function exampleQuoteToASCII():Void
```


[\(view code\)](<./Strconv.hx#L2591>)


## function exampleQuoteToGraphic


```haxe
function exampleQuoteToGraphic():Void
```


[\(view code\)](<./Strconv.hx#L2595>)


## function exampleUnquote


```haxe
function exampleUnquote():Void
```


[\(view code\)](<./Strconv.hx#L2603>)


## function exampleUnquoteChar


```haxe
function exampleUnquoteChar():Void
```


[\(view code\)](<./Strconv.hx#L2631>)


## function testAllocationsFromBytes


```haxe
function testAllocationsFromBytes(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L3422>)


## function testAppendBool


```haxe
function testAppendBool(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L1499>)


## function testAtof


```haxe
function testAtof(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L1781>)


## function testAtofRandom


```haxe
function testAtofRandom(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L1791>)


## function testAtofSlow


```haxe
function testAtofSlow(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L1786>)


## function testAtoi


```haxe
function testAtoi(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L2094>)


## function testCanBackquote


```haxe
function testCanBackquote(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L3329>)


## function testCountMallocs


```haxe
function testCountMallocs(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L3401>)


## function testDecimalRound


```haxe
function testDecimalRound(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L2311>)


## function testDecimalRoundedInteger


```haxe
function testDecimalRoundedInteger(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L2337>)


## function testDecimalShift


```haxe
function testDecimalShift(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L2297>)


## function testErrorPrefixes


```haxe
function testErrorPrefixes(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L3491>)


## function testFormatBool


```haxe
function testFormatBool(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L1489>)


## function testFormatComplex


```haxe
function testFormatComplex(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L2248>)


## function testFormatComplexInvalidBitSize


```haxe
function testFormatComplexInvalidBitSize(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L2257>)


## function testFormatFloatInvalidBitSize


```haxe
function testFormatFloatInvalidBitSize(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L2911>)


## function testFormatUintVarlen


```haxe
function testFormatUintVarlen(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L3078>)


## function testFp


```haxe
function testFp(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L2730>)


## function testFtoa


```haxe
function testFtoa(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L2825>)


## function testFtoaPowersOfTwo


```haxe
function testFtoaPowersOfTwo(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L2851>)


## function testFtoaRandom


```haxe
function testFtoaRandom(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L2880>)


## function testIsGraphic


```haxe
function testIsGraphic(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L3186>)


## function testIsPrint


```haxe
function testIsPrint(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L3171>)


## function testItoa


```haxe
function testItoa(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L3000>)


## function testMulByLog10Log2


```haxe
function testMulByLog10Log2(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L2988>)


## function testMulByLog2Log10


```haxe
function testMulByLog2Log10(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L2976>)


## function testNumError


```haxe
function testNumError(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L2182>)


## function testNumErrorUnwrap


```haxe
function testNumErrorUnwrap(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L2193>)


## function testParseBool


```haxe
function testParseBool(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L1468>)


## function testParseComplex


```haxe
function testParseComplex(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L1507>)


## function testParseComplexIncorrectBitSize


```haxe
function testParseComplexIncorrectBitSize(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L1662>)


## function testParseFloatIncorrectBitSize


```haxe
function testParseFloatIncorrectBitSize(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L1858>)


## function testParseFloatPrefix


```haxe
function testParseFloatPrefix(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L1712>)


## function testParseInt


```haxe
function testParseInt(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L2072>)


## function testParseInt32


```haxe
function testParseInt32(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L2023>)


## function testParseInt64


```haxe
function testParseInt64(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L2032>)


## function testParseInt64Base


```haxe
function testParseInt64Base(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L2041>)


## function testParseIntBase


```haxe
function testParseIntBase(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L2162>)


## function testParseIntBitSize


```haxe
function testParseIntBitSize(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L2142>)


## function testParseUint


```haxe
function testParseUint(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L2050>)


## function testParseUint32


```haxe
function testParseUint32(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L1996>)


## function testParseUint64


```haxe
function testParseUint64(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L2005>)


## function testParseUint64Base


```haxe
function testParseUint64Base(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L2014>)


## function testParseUintBase


```haxe
function testParseUintBase(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L2172>)


## function testParseUintBitSize


```haxe
function testParseUintBitSize(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L2152>)


## function testQuote


```haxe
function testQuote(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L3201>)


## function testQuoteRune


```haxe
function testQuoteRune(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L3281>)


## function testQuoteRuneToASCII


```haxe
function testQuoteRuneToASCII(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L3297>)


## function testQuoteRuneToGraphic


```haxe
function testQuoteRuneToGraphic(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L3313>)


## function testQuoteToASCII


```haxe
function testQuoteToASCII(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L3217>)


## function testQuoteToGraphic


```haxe
function testQuoteToGraphic(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L3233>)


## function testRoundTrip


```haxe
function testRoundTrip(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L1803>)


## function testRoundTrip32


```haxe
function testRoundTrip32(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L1830>)


## function testUitoa


```haxe
function testUitoa(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L3066>)


## function testUnquote


```haxe
function testUnquote(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L3339>)


## function testUnquoteInvalidUTF8


```haxe
function testUnquoteInvalidUTF8(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Strconv.hx#L3350>)


## function main


```haxe
function main():Void
```


[\(view code\)](<./Strconv.hx#L123>)


# Typedefs


```haxe
import stdgo._internal.strconv_test.*
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = {
	_s:stdgo.GoString;
	_f:stdgo.GoFloat64;
};
```


## typedef T\_\_struct\_1


```haxe
typedef T__struct_1 = {
	_prec:stdgo.GoInt;
	_out:stdgo.GoString;
	_fmt:stdgo.GoUInt8;
	_c:stdgo.GoComplex128;
	_bitSize:stdgo.GoInt;
};
```


## typedef T\_\_struct\_2


```haxe
typedef T__struct_2 = {
	_prec:stdgo.GoInt;
	_name:stdgo.GoString;
	_fmt:stdgo.GoUInt8;
	_float:stdgo.GoFloat64;
	_bitSize:stdgo.GoInt;
};
```


## typedef T\_\_struct\_3


```haxe
typedef T__struct_3 = {
	_out:stdgo.GoString;
	_in:stdgo.GoUInt64;
};
```


## typedef T\_\_struct\_4


```haxe
typedef T__struct_4 = {
	_wantErr:stdgo.Error;
	_want:stdgo.GoString;	// one of:
	_in:stdgo.GoString;
};
```


## typedef T\_\_struct\_5


```haxe
typedef T__struct_5 = {
	public function _fn():Void;
	_desc:stdgo.GoString;
	_count:stdgo.GoInt;
};
```


## typedef T\_\_struct\_6


```haxe
typedef T__struct_6 = {
	uint64:stdgo.GoUInt64;
	int_:stdgo.GoInt;
	int64:stdgo.GoInt64;
	float64:stdgo.GoFloat64;
	error:stdgo.Error;
	complex128:stdgo.GoComplex128;
	bytes:stdgo.Slice<stdgo.GoUInt8>;
	bool_:Bool;
};
```


## typedef T\_\_struct\_7


```haxe
typedef T__struct_7 = {
	string:stdgo.Slice<stdgo.GoUInt8>;
	number:stdgo.Slice<stdgo.GoUInt8>;
	buffer:stdgo.Slice<stdgo.GoUInt8>;
	bool_:stdgo.Slice<stdgo.GoUInt8>;
};
```


## typedef T\_\_struct\_8


```haxe
typedef T__struct_8 = {
	_want:stdgo.GoString;
	_err:stdgo.Error;
};
```


