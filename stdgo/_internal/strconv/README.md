# Module: `stdgo._internal.strconv`

[(view library index)](../../stdgo.md)


# Overview


stdgo/_internal/internal/Macro.macro.hx:54: non hxb types:,397

# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _appendEscapedRune(_buf:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune, _quote:stdgo.GoByte, asciionly:Bool, _graphicOnly:Bool):stdgo.Slice<stdgo.GoByte>`](<#function-_appendescapedrune>)

- [`function _appendQuotedRuneWith(_buf:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune, _quote:stdgo.GoByte, asciionly:Bool, _graphicOnly:Bool):stdgo.Slice<stdgo.GoByte>`](<#function-_appendquotedrunewith>)

- [`function _appendQuotedWith(_buf:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString, _quote:stdgo.GoByte, asciionly:Bool, _graphicOnly:Bool):stdgo.Slice<stdgo.GoByte>`](<#function-_appendquotedwith>)

- [`function _atof32(_s:stdgo.GoString):{
	_2:stdgo.Error;
	_1:stdgo.GoInt;
	_0:stdgo.GoFloat32;
}`](<#function-_atof32>)

- [`function _atof32exact(_mantissa:stdgo.GoUInt64, _exp:stdgo.GoInt, _neg:Bool):{
	_1:Bool;
	_0:stdgo.GoFloat32;
}`](<#function-_atof32exact>)

- [`function _atof64(_s:stdgo.GoString):{
	_2:stdgo.Error;
	_1:stdgo.GoInt;
	_0:stdgo.GoFloat64;
}`](<#function-_atof64>)

- [`function _atof64exact(_mantissa:stdgo.GoUInt64, _exp:stdgo.GoInt, _neg:Bool):{
	_1:Bool;
	_0:stdgo.GoFloat64;
}`](<#function-_atof64exact>)

- [`function _atofHex(_s:stdgo.GoString, _flt:stdgo.Ref<stdgo._internal.strconv.T_floatInfo>, _mantissa:stdgo.GoUInt64, _exp:stdgo.GoInt, _neg:Bool, _trunc:Bool):{
	_1:stdgo.Error;
	_0:stdgo.GoFloat64;
}`](<#function-_atofhex>)

- [`function _baseError(_fn:stdgo.GoString, _str:stdgo.GoString, _base:stdgo.GoInt):stdgo.Ref<stdgo._internal.strconv.NumError>`](<#function-_baseerror>)

- [`function _bigFtoa(_dst:stdgo.Slice<stdgo.GoByte>, _prec:stdgo.GoInt, _fmt:stdgo.GoByte, _neg:Bool, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo._internal.strconv.T_floatInfo>):stdgo.Slice<stdgo.GoByte>`](<#function-_bigftoa>)

- [`function _bitSizeError(_fn:stdgo.GoString, _str:stdgo.GoString, _bitSize:stdgo.GoInt):stdgo.Ref<stdgo._internal.strconv.NumError>`](<#function-_bitsizeerror>)

- [`function _bsearch16(_a:stdgo.Slice<stdgo.GoUInt16>, _x:stdgo.GoUInt16):stdgo.GoInt`](<#function-_bsearch16>)

- [`function _bsearch32(_a:stdgo.Slice<stdgo.GoUInt32>, _x:stdgo.GoUInt32):stdgo.GoInt`](<#function-_bsearch32>)

- [`function _cloneString(_x:stdgo.GoString):stdgo.GoString`](<#function-_clonestring>)

- [`function _commonPrefixLenIgnoreCase(_s:stdgo.GoString, _prefix:stdgo.GoString):stdgo.GoInt`](<#function-_commonprefixlenignorecase>)

- [`function _computeBounds(_mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo._internal.strconv.T_floatInfo>):{
	_3:stdgo.GoInt;
	_2:stdgo.GoUInt64;
	_1:stdgo.GoUInt64;
	_0:stdgo.GoUInt64;
}`](<#function-_computebounds>)

- [`function _contains(_s:stdgo.GoString, _c:stdgo.GoByte):Bool`](<#function-_contains>)

- [`function _convErr(_err:stdgo.Error, _s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Error;
}`](<#function-_converr>)

- [`function _digitZero(_dst:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt`](<#function-_digitzero>)

- [`function _divisibleByPower5(_m:stdgo.GoUInt64, _k:stdgo.GoInt):Bool`](<#function-_divisiblebypower5>)

- [`function _divmod1e9(_x:stdgo.GoUInt64):{
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}`](<#function-_divmod1e9>)

- [`function _eiselLemire32(_man:stdgo.GoUInt64, _exp10:stdgo.GoInt, _neg:Bool):{
	_1:Bool;
	_0:stdgo.GoFloat32;
}`](<#function-_eisellemire32>)

- [`function _eiselLemire64(_man:stdgo.GoUInt64, _exp10:stdgo.GoInt, _neg:Bool):{
	_1:Bool;
	_0:stdgo.GoFloat64;
}`](<#function-_eisellemire64>)

- [`function _fmtB(_dst:stdgo.Slice<stdgo.GoByte>, _neg:Bool, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo._internal.strconv.T_floatInfo>):stdgo.Slice<stdgo.GoByte>`](<#function-_fmtb>)

- [`function _fmtE(_dst:stdgo.Slice<stdgo.GoByte>, _neg:Bool, _d:stdgo._internal.strconv.T_decimalSlice, _prec:stdgo.GoInt, _fmt:stdgo.GoByte):stdgo.Slice<stdgo.GoByte>`](<#function-_fmte>)

- [`function _fmtF(_dst:stdgo.Slice<stdgo.GoByte>, _neg:Bool, _d:stdgo._internal.strconv.T_decimalSlice, _prec:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>`](<#function-_fmtf>)

- [`function _fmtX(_dst:stdgo.Slice<stdgo.GoByte>, _prec:stdgo.GoInt, _fmt:stdgo.GoByte, _neg:Bool, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo._internal.strconv.T_floatInfo>):stdgo.Slice<stdgo.GoByte>`](<#function-_fmtx>)

- [`function _formatBits(_dst:stdgo.Slice<stdgo.GoByte>, _u:stdgo.GoUInt64, _base:stdgo.GoInt, _neg:Bool, _append_:Bool):{
	_1:stdgo.GoString;
	_0:stdgo.Slice<stdgo.GoByte>;
}`](<#function-_formatbits>)

- [`function _formatDecimal(_d:stdgo.Ref<stdgo._internal.strconv.T_decimalSlice>, _m:stdgo.GoUInt64, _trunc:Bool, _roundUp:Bool, _prec:stdgo.GoInt):Void`](<#function-_formatdecimal>)

- [`function _formatDigits(_dst:stdgo.Slice<stdgo.GoByte>, _shortest:Bool, _neg:Bool, _digs:stdgo._internal.strconv.T_decimalSlice, _prec:stdgo.GoInt, _fmt:stdgo.GoByte):stdgo.Slice<stdgo.GoByte>`](<#function-_formatdigits>)

- [`function _genericFtoa(_dst:stdgo.Slice<stdgo.GoByte>, _val:stdgo.GoFloat64, _fmt:stdgo.GoByte, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>`](<#function-_genericftoa>)

- [`function _index(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoInt`](<#function-_index>)

- [`function _isInGraphicList(_r:stdgo.GoRune):Bool`](<#function-_isingraphiclist>)

- [`function _isPowerOfTwo(_x:stdgo.GoInt):Bool`](<#function-_ispoweroftwo>)

- [`function _leftShift(_a:stdgo.Ref<stdgo._internal.strconv.T_decimal>, _k:stdgo.GoUInt):Void`](<#function-_leftshift>)

- [`function _lower(_c:stdgo.GoByte):stdgo.GoByte`](<#function-_lower>)

- [`function _max(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt`](<#function-_max>)

- [`function _min(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt`](<#function-_min>)

- [`function _mulByLog10Log2(_x:stdgo.GoInt):stdgo.GoInt`](<#function-_mulbylog10log2>)

- [`function _mulByLog2Log10(_x:stdgo.GoInt):stdgo.GoInt`](<#function-_mulbylog2log10>)

- [`function _mult128bitPow10(_m:stdgo.GoUInt64, _e2:stdgo.GoInt, _q:stdgo.GoInt):{
	_2:Bool;
	_1:stdgo.GoInt;
	_0:stdgo.GoUInt64;
}`](<#function-_mult128bitpow10>)

- [`function _mult64bitPow10(_m:stdgo.GoUInt32, _e2:stdgo.GoInt, _q:stdgo.GoInt):{
	_2:Bool;
	_1:stdgo.GoInt;
	_0:stdgo.GoUInt32;
}`](<#function-_mult64bitpow10>)

- [`function _parseFloatPrefix(_s:stdgo.GoString, _bitSize:stdgo.GoInt):{
	_2:stdgo.Error;
	_1:stdgo.GoInt;
	_0:stdgo.GoFloat64;
}`](<#function-_parsefloatprefix>)

- [`function _prefixIsLessThan(_b:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):Bool`](<#function-_prefixislessthan>)

- [`function _quoteRuneWith(_r:stdgo.GoRune, _quote:stdgo.GoByte, asciionly:Bool, _graphicOnly:Bool):stdgo.GoString`](<#function-_quoterunewith>)

- [`function _quoteWith(_s:stdgo.GoString, _quote:stdgo.GoByte, asciionly:Bool, _graphicOnly:Bool):stdgo.GoString`](<#function-_quotewith>)

- [`function _rangeError(_fn:stdgo.GoString, _str:stdgo.GoString):stdgo.Ref<stdgo._internal.strconv.NumError>`](<#function-_rangeerror>)

- [`function _readFloat(_s:stdgo.GoString):{
	_6:Bool;
	_5:stdgo.GoInt;
	_4:Bool;
	_3:Bool;
	_2:Bool;
	_1:stdgo.GoInt;
	_0:stdgo.GoUInt64;
}`](<#function-_readfloat>)

- [`function _rightShift(_a:stdgo.Ref<stdgo._internal.strconv.T_decimal>, _k:stdgo.GoUInt):Void`](<#function-_rightshift>)

- [`function _roundShortest(_d:stdgo.Ref<stdgo._internal.strconv.T_decimal>, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo._internal.strconv.T_floatInfo>):Void`](<#function-_roundshortest>)

- [`function _ryuDigits(_d:stdgo.Ref<stdgo._internal.strconv.T_decimalSlice>, _lower:stdgo.GoUInt64, _central:stdgo.GoUInt64, _upper:stdgo.GoUInt64, _c0:Bool, _cup:Bool):Void`](<#function-_ryudigits>)

- [`function _ryuDigits32(_d:stdgo.Ref<stdgo._internal.strconv.T_decimalSlice>, _lower:stdgo.GoUInt32, _central:stdgo.GoUInt32, _upper:stdgo.GoUInt32, _c0:Bool, _cup:Bool, _endindex:stdgo.GoInt):Void`](<#function-_ryudigits32>)

- [`function _ryuFtoaFixed32(_d:stdgo.Ref<stdgo._internal.strconv.T_decimalSlice>, _mant:stdgo.GoUInt32, _exp:stdgo.GoInt, _prec:stdgo.GoInt):Void`](<#function-_ryuftoafixed32>)

- [`function _ryuFtoaFixed64(_d:stdgo.Ref<stdgo._internal.strconv.T_decimalSlice>, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _prec:stdgo.GoInt):Void`](<#function-_ryuftoafixed64>)

- [`function _ryuFtoaShortest(_d:stdgo.Ref<stdgo._internal.strconv.T_decimalSlice>, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo._internal.strconv.T_floatInfo>):Void`](<#function-_ryuftoashortest>)

- [`function _shouldRoundUp(_a:stdgo.Ref<stdgo._internal.strconv.T_decimal>, _nd:stdgo.GoInt):Bool`](<#function-_shouldroundup>)

- [`function _small(_i:stdgo.GoInt):stdgo.GoString`](<#function-_small>)

- [`function _special(_s:stdgo.GoString):{
	_2:Bool;
	_1:stdgo.GoInt;
	_0:stdgo.GoFloat64;
}`](<#function-_special>)

- [`function _syntaxError(_fn:stdgo.GoString, _str:stdgo.GoString):stdgo.Ref<stdgo._internal.strconv.NumError>`](<#function-_syntaxerror>)

- [`function _trim(_a:stdgo.Ref<stdgo._internal.strconv.T_decimal>):Void`](<#function-_trim>)

- [`function _underscoreOK(_s:stdgo.GoString):Bool`](<#function-_underscoreok>)

- [`function _unhex(_b:stdgo.GoByte):{
	_1:Bool;
	_0:stdgo.GoRune;
}`](<#function-_unhex>)

- [`function _unquote(_in:stdgo.GoString, _unescape:Bool):{
	_2:stdgo.Error;
	_1:stdgo.GoString;
	_0:stdgo.GoString;
}`](<#function-_unquote>)

- [`function appendBool(_dst:stdgo.Slice<stdgo.GoByte>, _b:Bool):stdgo.Slice<stdgo.GoByte>`](<#function-appendbool>)

- [`function appendFloat(_dst:stdgo.Slice<stdgo.GoByte>, _f:stdgo.GoFloat64, _fmt:stdgo.GoByte, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>`](<#function-appendfloat>)

- [`function appendInt(_dst:stdgo.Slice<stdgo.GoByte>, _i:stdgo.GoInt64, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>`](<#function-appendint>)

- [`function appendQuote(_dst:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoByte>`](<#function-appendquote>)

- [`function appendQuoteRune(_dst:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.Slice<stdgo.GoByte>`](<#function-appendquoterune>)

- [`function appendQuoteRuneToASCII(_dst:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.Slice<stdgo.GoByte>`](<#function-appendquoterunetoascii>)

- [`function appendQuoteRuneToGraphic(_dst:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.Slice<stdgo.GoByte>`](<#function-appendquoterunetographic>)

- [`function appendQuoteToASCII(_dst:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoByte>`](<#function-appendquotetoascii>)

- [`function appendQuoteToGraphic(_dst:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoByte>`](<#function-appendquotetographic>)

- [`function appendUint(_dst:stdgo.Slice<stdgo.GoByte>, _i:stdgo.GoUInt64, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>`](<#function-appenduint>)

- [`function atoi(_s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}`](<#function-atoi>)

- [`function baseError(:stdgo.GoString, :stdgo.GoString, :stdgo.GoInt):stdgo.Ref<stdgo._internal.strconv.NumError>`](<#function-baseerror>)

- [`function bitSizeError(:stdgo.GoString, :stdgo.GoString, :stdgo.GoInt):stdgo.Ref<stdgo._internal.strconv.NumError>`](<#function-bitsizeerror>)

- [`function canBackquote(_s:stdgo.GoString):Bool`](<#function-canbackquote>)

- [`function formatBool(_b:Bool):stdgo.GoString`](<#function-formatbool>)

- [`function formatComplex(_c:stdgo.GoComplex128, _fmt:stdgo.GoByte, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):stdgo.GoString`](<#function-formatcomplex>)

- [`function formatFloat(_f:stdgo.GoFloat64, _fmt:stdgo.GoByte, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):stdgo.GoString`](<#function-formatfloat>)

- [`function formatInt(_i:stdgo.GoInt64, _base:stdgo.GoInt):stdgo.GoString`](<#function-formatint>)

- [`function formatUint(_i:stdgo.GoUInt64, _base:stdgo.GoInt):stdgo.GoString`](<#function-formatuint>)

- [`function isGraphic(_r:stdgo.GoRune):Bool`](<#function-isgraphic>)

- [`function isPrint(_r:stdgo.GoRune):Bool`](<#function-isprint>)

- [`function itoa(_i:stdgo.GoInt):stdgo.GoString`](<#function-itoa>)

- [`function mulByLog10Log2(_x:stdgo.GoInt):stdgo.GoInt`](<#function-mulbylog10log2>)

- [`function mulByLog2Log10(_x:stdgo.GoInt):stdgo.GoInt`](<#function-mulbylog2log10>)

- [`function newDecimal(_i:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.strconv.T_decimal>`](<#function-newdecimal>)

- [`function parseBool(_str:stdgo.GoString):{
	_1:stdgo.Error;
	_0:Bool;
}`](<#function-parsebool>)

- [`function parseComplex(_s:stdgo.GoString, _bitSize:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoComplex128;
}`](<#function-parsecomplex>)

- [`function parseFloat(_s:stdgo.GoString, _bitSize:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoFloat64;
}`](<#function-parsefloat>)

- [`function parseFloatPrefix(_s:stdgo.GoString, _bitSize:stdgo.GoInt):{
	_2:stdgo.Error;
	_1:stdgo.GoInt;
	_0:stdgo.GoFloat64;
}`](<#function-parsefloatprefix>)

- [`function parseInt(_s:stdgo.GoString, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoInt64;
}`](<#function-parseint>)

- [`function parseUint(_s:stdgo.GoString, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoUInt64;
}`](<#function-parseuint>)

- [`function quote(_s:stdgo.GoString):stdgo.GoString`](<#function-quote>)

- [`function quoteRune(_r:stdgo.GoRune):stdgo.GoString`](<#function-quoterune>)

- [`function quoteRuneToASCII(_r:stdgo.GoRune):stdgo.GoString`](<#function-quoterunetoascii>)

- [`function quoteRuneToGraphic(_r:stdgo.GoRune):stdgo.GoString`](<#function-quoterunetographic>)

- [`function quoteToASCII(_s:stdgo.GoString):stdgo.GoString`](<#function-quotetoascii>)

- [`function quoteToGraphic(_s:stdgo.GoString):stdgo.GoString`](<#function-quotetographic>)

- [`function quotedPrefix(_s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.GoString;
}`](<#function-quotedprefix>)

- [`function setOptimize(_b:Bool):Bool`](<#function-setoptimize>)

- [`function unquote(_s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.GoString;
}`](<#function-unquote>)

- [`function unquoteChar(_s:stdgo.GoString, _quote:stdgo.GoByte):{
	_3:stdgo.Error;
	_2:stdgo.GoString;
	_1:Bool;
	_0:stdgo.GoRune;
}`](<#function-unquotechar>)

- [class NumError](<#class-numerror>)

  - [`function new(?func:stdgo.GoString, ?num:stdgo.GoString, ?err:Null<stdgo.Error>):Void`](<#numerror-function-new>)

  - [`function error():stdgo.GoString`](<#numerror-function-error>)

  - [`function unwrap():stdgo.Error`](<#numerror-function-unwrap>)

# Examples


- [`exampleAppendBool`](<#exampleappendbool>)

- [`exampleAppendFloat`](<#exampleappendfloat>)

- [`exampleAppendInt`](<#exampleappendint>)

- [`exampleAppendQuote`](<#exampleappendquote>)

- [`exampleAppendQuoteRune`](<#exampleappendquoterune>)

- [`exampleAppendQuoteRuneToASCII`](<#exampleappendquoterunetoascii>)

- [`exampleAppendQuoteToASCII`](<#exampleappendquotetoascii>)

- [`exampleAppendUint`](<#exampleappenduint>)

- [`exampleAtoi`](<#exampleatoi>)

- [`exampleCanBackquote`](<#examplecanbackquote>)

- [`exampleFormatBool`](<#exampleformatbool>)

- [`exampleFormatFloat`](<#exampleformatfloat>)

- [`exampleFormatInt`](<#exampleformatint>)

- [`exampleFormatUint`](<#exampleformatuint>)

- [`exampleIsGraphic`](<#exampleisgraphic>)

- [`exampleIsPrint`](<#exampleisprint>)

- [`exampleItoa`](<#exampleitoa>)

- [`exampleParseBool`](<#exampleparsebool>)

- [`exampleParseFloat`](<#exampleparsefloat>)

- [`exampleParseInt`](<#exampleparseint>)

- [`exampleParseUint`](<#exampleparseuint>)

- [`exampleQuote`](<#examplequote>)

- [`exampleQuoteRune`](<#examplequoterune>)

- [`exampleQuoteRuneToASCII`](<#examplequoterunetoascii>)

- [`exampleQuoteRuneToGraphic`](<#examplequoterunetographic>)

- [`exampleQuoteToASCII`](<#examplequotetoascii>)

- [`exampleQuoteToGraphic`](<#examplequotetographic>)

- [`exampleUnquote`](<#exampleunquote>)

- [`exampleUnquoteChar`](<#exampleunquotechar>)

# Constants


```haxe
import stdgo._internal.strconv.Strconv
```


```haxe
final _detailedPowersOfTenMaxExp10:stdgo.GoUInt64 = ((347i64 : stdgo.GoUInt64))
```


```haxe
final _detailedPowersOfTenMinExp10:stdgo.GoUInt64 = ((0i64 : stdgo.GoUInt64))
```


```haxe
final _digits:stdgo.GoString = (("0123456789abcdefghijklmnopqrstuvwxyz" : stdgo.GoString))
```


```haxe
final _fastSmalls:Bool = true
```


```haxe
final _fnParseComplex:stdgo.GoString = (("ParseComplex" : stdgo.GoString))
```


```haxe
final _fnParseFloat:stdgo.GoString = (("ParseFloat" : stdgo.GoString))
```


```haxe
final _host32bit:Bool = true
```


```haxe
final _intSize:stdgo.GoUInt64 = ((32i64 : stdgo.GoUInt64))
```


```haxe
final _lowerhex:stdgo.GoString = (("0123456789abcdef" : stdgo.GoString))
```


```haxe
final _maxShift:stdgo.GoUInt64 = ((28i64 : stdgo.GoUInt64))
```


```haxe
final _maxUint64:stdgo.GoUInt64 = ((-1i64 : stdgo.GoUInt64))
```


```haxe
final _nSmalls:stdgo.GoUInt64 = ((100i64 : stdgo.GoUInt64))
```


```haxe
final _smallsString:stdgo.GoString = (("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : stdgo.GoString))
```


```haxe
final _uintSize:stdgo.GoUInt64 = ((32i64 : stdgo.GoUInt64))
```


```haxe
final _upperhex:stdgo.GoString = (("0123456789ABCDEF" : stdgo.GoString))
```


```haxe
final intSize:stdgo.GoUInt64 = ((32i64 : stdgo.GoUInt64))
```


# Variables


```haxe
import stdgo._internal.strconv.Strconv
```


```haxe
var _detailedPowersOfTen:stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt64>>
```


```haxe
var _float32info:stdgo._internal.strconv.T_floatInfo
```


```haxe
var _float32pow10:stdgo.Slice<stdgo.GoFloat32>
```


```haxe
var _float64info:stdgo._internal.strconv.T_floatInfo
```


```haxe
var _float64pow10:stdgo.Slice<stdgo.GoFloat64>
```


```haxe
var _isGraphic:stdgo.Slice<stdgo.GoUInt16>
```


```haxe
var _isNotPrint16:stdgo.Slice<stdgo.GoUInt16>
```


```haxe
var _isNotPrint32:stdgo.Slice<stdgo.GoUInt16>
```


```haxe
var _isPrint16:stdgo.Slice<stdgo.GoUInt16>
```


```haxe
var _isPrint32:stdgo.Slice<stdgo.GoUInt32>
```


```haxe
var _leftcheats:stdgo.Slice<stdgo._internal.strconv.T_leftCheat>
```


```haxe
var _optimize:Bool
```


```haxe
var _powtab:stdgo.Slice<stdgo.GoInt>
```


```haxe
var _uint64pow10:stdgo.GoArray<stdgo.GoUInt64>
```


```haxe
var errRange:stdgo.Error
```


```haxe
var errSyntax:stdgo.Error
```


# Functions


```haxe
import stdgo._internal.strconv.Strconv
```


## function \_appendEscapedRune


```haxe
function _appendEscapedRune(_buf:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune, _quote:stdgo.GoByte, asciionly:Bool, _graphicOnly:Bool):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Strconv.hx#L4162>)


## function \_appendQuotedRuneWith


```haxe
function _appendQuotedRuneWith(_buf:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune, _quote:stdgo.GoByte, asciionly:Bool, _graphicOnly:Bool):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Strconv.hx#L4153>)


## function \_appendQuotedWith


```haxe
function _appendQuotedWith(_buf:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString, _quote:stdgo.GoByte, asciionly:Bool, _graphicOnly:Bool):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Strconv.hx#L4122>)


## function \_atof32


```haxe
function _atof32(_s:stdgo.GoString):{
	_2:stdgo.Error;
	_1:stdgo.GoInt;
	_0:stdgo.GoFloat32;
}
```


[\(view code\)](<./Strconv.hx#L2549>)


## function \_atof32exact


```haxe
function _atof32exact(_mantissa:stdgo.GoUInt64, _exp:stdgo.GoInt, _neg:Bool):{
	_1:Bool;
	_0:stdgo.GoFloat32;
}
```


[\(view code\)](<./Strconv.hx#L2475>)


## function \_atof64


```haxe
function _atof64(_s:stdgo.GoString):{
	_2:stdgo.Error;
	_1:stdgo.GoInt;
	_0:stdgo.GoFloat64;
}
```


[\(view code\)](<./Strconv.hx#L2596>)


## function \_atof64exact


```haxe
function _atof64exact(_mantissa:stdgo.GoUInt64, _exp:stdgo.GoInt, _neg:Bool):{
	_1:Bool;
	_0:stdgo.GoFloat64;
}
```


[\(view code\)](<./Strconv.hx#L2450>)


## function \_atofHex


```haxe
function _atofHex(_s:stdgo.GoString, _flt:stdgo.Ref<stdgo._internal.strconv.T_floatInfo>, _mantissa:stdgo.GoUInt64, _exp:stdgo.GoInt, _neg:Bool, _trunc:Bool):{
	_1:stdgo.Error;
	_0:stdgo.GoFloat64;
}
```


[\(view code\)](<./Strconv.hx#L2500>)


## function \_baseError


```haxe
function _baseError(_fn:stdgo.GoString, _str:stdgo.GoString, _base:stdgo.GoInt):stdgo.Ref<stdgo._internal.strconv.NumError>
```


[\(view code\)](<./Strconv.hx#L2669>)


## function \_bigFtoa


```haxe
function _bigFtoa(_dst:stdgo.Slice<stdgo.GoByte>, _prec:stdgo.GoInt, _fmt:stdgo.GoByte, _neg:Bool, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo._internal.strconv.T_floatInfo>):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Strconv.hx#L3205>)


## function \_bitSizeError


```haxe
function _bitSizeError(_fn:stdgo.GoString, _str:stdgo.GoString, _bitSize:stdgo.GoInt):stdgo.Ref<stdgo._internal.strconv.NumError>
```


[\(view code\)](<./Strconv.hx#L2672>)


## function \_bsearch16


```haxe
function _bsearch16(_a:stdgo.Slice<stdgo.GoUInt16>, _x:stdgo.GoUInt16):stdgo.GoInt
```


[\(view code\)](<./Strconv.hx#L4572>)


## function \_bsearch32


```haxe
function _bsearch32(_a:stdgo.Slice<stdgo.GoUInt32>, _x:stdgo.GoUInt32):stdgo.GoInt
```


[\(view code\)](<./Strconv.hx#L4584>)


## function \_cloneString


```haxe
function _cloneString(_x:stdgo.GoString):stdgo.GoString
```


[\(view code\)](<./Strconv.hx#L2660>)


## function \_commonPrefixLenIgnoreCase


```haxe
function _commonPrefixLenIgnoreCase(_s:stdgo.GoString, _prefix:stdgo.GoString):stdgo.GoInt
```


[\(view code\)](<./Strconv.hx#L2229>)


## function \_computeBounds


```haxe
function _computeBounds(_mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo._internal.strconv.T_floatInfo>):{
	_3:stdgo.GoInt;
	_2:stdgo.GoUInt64;
	_1:stdgo.GoUInt64;
	_0:stdgo.GoUInt64;
}
```


[\(view code\)](<./Strconv.hx#L3794>)


## function \_contains


```haxe
function _contains(_s:stdgo.GoString, _c:stdgo.GoByte):Bool
```


[\(view code\)](<./Strconv.hx#L4113>)


## function \_convErr


```haxe
function _convErr(_err:stdgo.Error, _s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Error;
}
```


[\(view code\)](<./Strconv.hx#L2136>)


## function \_digitZero


```haxe
function _digitZero(_dst:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt
```


[\(view code\)](<./Strconv.hx#L2874>)


## function \_divisibleByPower5


```haxe
function _divisibleByPower5(_m:stdgo.GoUInt64, _k:stdgo.GoInt):Bool
```


[\(view code\)](<./Strconv.hx#L3947>)


## function \_divmod1e9


```haxe
function _divmod1e9(_x:stdgo.GoUInt64):{
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```


[\(view code\)](<./Strconv.hx#L3962>)


## function \_eiselLemire32


```haxe
function _eiselLemire32(_man:stdgo.GoUInt64, _exp10:stdgo.GoInt, _neg:Bool):{
	_1:Bool;
	_0:stdgo.GoFloat32;
}
```


[\(view code\)](<./Strconv.hx#L3051>)


## function \_eiselLemire64


```haxe
function _eiselLemire64(_man:stdgo.GoUInt64, _exp10:stdgo.GoInt, _neg:Bool):{
	_1:Bool;
	_0:stdgo.GoFloat64;
}
```


[\(view code\)](<./Strconv.hx#L2998>)


## function \_fmtB


```haxe
function _fmtB(_dst:stdgo.Slice<stdgo.GoByte>, _neg:Bool, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo._internal.strconv.T_floatInfo>):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Strconv.hx#L3413>)


## function \_fmtE


```haxe
function _fmtE(_dst:stdgo.Slice<stdgo.GoByte>, _neg:Bool, _d:stdgo._internal.strconv.T_decimalSlice, _prec:stdgo.GoInt, _fmt:stdgo.GoByte):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Strconv.hx#L3340>)


## function \_fmtF


```haxe
function _fmtF(_dst:stdgo.Slice<stdgo.GoByte>, _neg:Bool, _d:stdgo._internal.strconv.T_decimalSlice, _prec:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Strconv.hx#L3382>)


## function \_fmtX


```haxe
function _fmtX(_dst:stdgo.Slice<stdgo.GoByte>, _prec:stdgo.GoInt, _fmt:stdgo.GoByte, _neg:Bool, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo._internal.strconv.T_floatInfo>):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Strconv.hx#L3432>)


## function \_formatBits


```haxe
function _formatBits(_dst:stdgo.Slice<stdgo.GoByte>, _u:stdgo.GoUInt64, _base:stdgo.GoInt, _neg:Bool, _append_:Bool):{
	_1:stdgo.GoString;
	_0:stdgo.Slice<stdgo.GoByte>;
}
```


[\(view code\)](<./Strconv.hx#L4032>)


## function \_formatDecimal


```haxe
function _formatDecimal(_d:stdgo.Ref<stdgo._internal.strconv.T_decimalSlice>, _m:stdgo.GoUInt64, _trunc:Bool, _roundUp:Bool, _prec:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L3607>)


## function \_formatDigits


```haxe
function _formatDigits(_dst:stdgo.Slice<stdgo.GoByte>, _shortest:Bool, _neg:Bool, _digs:stdgo._internal.strconv.T_decimalSlice, _prec:stdgo.GoInt, _fmt:stdgo.GoByte):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Strconv.hx#L3242>)


## function \_genericFtoa


```haxe
function _genericFtoa(_dst:stdgo.Slice<stdgo.GoByte>, _val:stdgo.GoFloat64, _fmt:stdgo.GoByte, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Strconv.hx#L3110>)


## function \_index


```haxe
function _index(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoInt
```


[\(view code\)](<./Strconv.hx#L2860>)


## function \_isInGraphicList


```haxe
function _isInGraphicList(_r:stdgo.GoRune):Bool
```


[\(view code\)](<./Strconv.hx#L4633>)


## function \_isPowerOfTwo


```haxe
function _isPowerOfTwo(_x:stdgo.GoInt):Bool
```


[\(view code\)](<./Strconv.hx#L4110>)


## function \_leftShift


```haxe
function _leftShift(_a:stdgo.Ref<stdgo._internal.strconv.T_decimal>, _k:stdgo.GoUInt):Void
```


[\(view code\)](<./Strconv.hx#L2945>)


## function \_lower


```haxe
function _lower(_c:stdgo.GoByte):stdgo.GoByte
```


[\(view code\)](<./Strconv.hx#L2657>)


## function \_max


```haxe
function _max(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Strconv.hx#L3506>)


## function \_min


```haxe
function _min(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Strconv.hx#L3500>)


## function \_mulByLog10Log2


```haxe
function _mulByLog10Log2(_x:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Strconv.hx#L3791>)


## function \_mulByLog2Log10


```haxe
function _mulByLog2Log10(_x:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Strconv.hx#L3788>)


## function \_mult128bitPow10


```haxe
function _mult128bitPow10(_m:stdgo.GoUInt64, _e2:stdgo.GoInt, _q:stdgo.GoInt):{
	_2:Bool;
	_1:stdgo.GoInt;
	_0:stdgo.GoUInt64;
}
```


[\(view code\)](<./Strconv.hx#L3928>)


## function \_mult64bitPow10


```haxe
function _mult64bitPow10(_m:stdgo.GoUInt32, _e2:stdgo.GoInt, _q:stdgo.GoInt):{
	_2:Bool;
	_1:stdgo.GoInt;
	_0:stdgo.GoUInt32;
}
```


[\(view code\)](<./Strconv.hx#L3912>)


## function \_parseFloatPrefix


```haxe
function _parseFloatPrefix(_s:stdgo.GoString, _bitSize:stdgo.GoInt):{
	_2:stdgo.Error;
	_1:stdgo.GoInt;
	_0:stdgo.GoFloat64;
}
```


[\(view code\)](<./Strconv.hx#L2650>)


## function \_prefixIsLessThan


```haxe
function _prefixIsLessThan(_b:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):Bool
```


[\(view code\)](<./Strconv.hx#L2931>)


## function \_quoteRuneWith


```haxe
function _quoteRuneWith(_r:stdgo.GoRune, _quote:stdgo.GoByte, asciionly:Bool, _graphicOnly:Bool):stdgo.GoString
```


[\(view code\)](<./Strconv.hx#L4119>)


## function \_quoteWith


```haxe
function _quoteWith(_s:stdgo.GoString, _quote:stdgo.GoByte, asciionly:Bool, _graphicOnly:Bool):stdgo.GoString
```


[\(view code\)](<./Strconv.hx#L4116>)


## function \_rangeError


```haxe
function _rangeError(_fn:stdgo.GoString, _str:stdgo.GoString):stdgo.Ref<stdgo._internal.strconv.NumError>
```


[\(view code\)](<./Strconv.hx#L2666>)


## function \_readFloat


```haxe
function _readFloat(_s:stdgo.GoString):{
	_6:Bool;
	_5:stdgo.GoInt;
	_4:Bool;
	_3:Bool;
	_2:Bool;
	_1:stdgo.GoInt;
	_0:stdgo.GoUInt64;
}
```


[\(view code\)](<./Strconv.hx#L2297>)


## function \_rightShift


```haxe
function _rightShift(_a:stdgo.Ref<stdgo._internal.strconv.T_decimal>, _k:stdgo.GoUInt):Void
```


[\(view code\)](<./Strconv.hx#L2888>)


## function \_roundShortest


```haxe
function _roundShortest(_d:stdgo.Ref<stdgo._internal.strconv.T_decimal>, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo._internal.strconv.T_floatInfo>):Void
```


[\(view code\)](<./Strconv.hx#L3272>)


## function \_ryuDigits


```haxe
function _ryuDigits(_d:stdgo.Ref<stdgo._internal.strconv.T_decimalSlice>, _lower:stdgo.GoUInt64, _central:stdgo.GoUInt64, _upper:stdgo.GoUInt64, _c0:Bool, _cup:Bool):Void
```


[\(view code\)](<./Strconv.hx#L3820>)


## function \_ryuDigits32


```haxe
function _ryuDigits32(_d:stdgo.Ref<stdgo._internal.strconv.T_decimalSlice>, _lower:stdgo.GoUInt32, _central:stdgo.GoUInt32, _upper:stdgo.GoUInt32, _c0:Bool, _cup:Bool, _endindex:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L3859>)


## function \_ryuFtoaFixed32


```haxe
function _ryuFtoaFixed32(_d:stdgo.Ref<stdgo._internal.strconv.T_decimalSlice>, _mant:stdgo.GoUInt32, _exp:stdgo.GoInt, _prec:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L3512>)


## function \_ryuFtoaFixed64


```haxe
function _ryuFtoaFixed64(_d:stdgo.Ref<stdgo._internal.strconv.T_decimalSlice>, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _prec:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L3561>)


## function \_ryuFtoaShortest


```haxe
function _ryuFtoaShortest(_d:stdgo.Ref<stdgo._internal.strconv.T_decimalSlice>, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo._internal.strconv.T_floatInfo>):Void
```


[\(view code\)](<./Strconv.hx#L3671>)


## function \_shouldRoundUp


```haxe
function _shouldRoundUp(_a:stdgo.Ref<stdgo._internal.strconv.T_decimal>, _nd:stdgo.GoInt):Bool
```


[\(view code\)](<./Strconv.hx#L2986>)


## function \_small


```haxe
function _small(_i:stdgo.GoInt):stdgo.GoString
```


[\(view code\)](<./Strconv.hx#L4026>)


## function \_special


```haxe
function _special(_s:stdgo.GoString):{
	_2:Bool;
	_1:stdgo.GoInt;
	_0:stdgo.GoFloat64;
}
```


[\(view code\)](<./Strconv.hx#L2248>)


## function \_syntaxError


```haxe
function _syntaxError(_fn:stdgo.GoString, _str:stdgo.GoString):stdgo.Ref<stdgo._internal.strconv.NumError>
```


[\(view code\)](<./Strconv.hx#L2663>)


## function \_trim


```haxe
function _trim(_a:stdgo.Ref<stdgo._internal.strconv.T_decimal>):Void
```


[\(view code\)](<./Strconv.hx#L2880>)


## function \_underscoreOK


```haxe
function _underscoreOK(_s:stdgo.GoString):Bool
```


[\(view code\)](<./Strconv.hx#L2829>)


## function \_unhex


```haxe
function _unhex(_b:stdgo.GoByte):{
	_1:Bool;
	_0:stdgo.GoRune;
}
```


[\(view code\)](<./Strconv.hx#L4312>)


## function \_unquote


```haxe
function _unquote(_in:stdgo.GoString, _unescape:Bool):{
	_2:stdgo.Error;
	_1:stdgo.GoString;
	_0:stdgo.GoString;
}
```


[\(view code\)](<./Strconv.hx#L4472>)


## function appendBool


```haxe
function appendBool(_dst:stdgo.Slice<stdgo.GoByte>, _b:Bool):stdgo.Slice<stdgo.GoByte>
```


### exampleAppendBool


<details><summary></summary>
<p>


```haxe
function exampleAppendBool():Void {
        var _b = (("bool:" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        _b = stdgo._internal.strconv.Strconv.appendBool(_b, true);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((_b : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L2130>)


## function appendFloat


```haxe
function appendFloat(_dst:stdgo.Slice<stdgo.GoByte>, _f:stdgo.GoFloat64, _fmt:stdgo.GoByte, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>
```


### exampleAppendFloat


<details><summary></summary>
<p>


```haxe
function exampleAppendFloat():Void {
        var _b32 = (("float32:" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        _b32 = stdgo._internal.strconv.Strconv.appendFloat(_b32, (3.1415926535 : stdgo.GoFloat64), (69 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (32 : stdgo.GoInt));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((_b32 : stdgo.GoString)));
        var _b64 = (("float64:" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        _b64 = stdgo._internal.strconv.Strconv.appendFloat(_b64, (3.1415926535 : stdgo.GoFloat64), (69 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (64 : stdgo.GoInt));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((_b64 : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L3107>)


## function appendInt


```haxe
function appendInt(_dst:stdgo.Slice<stdgo.GoByte>, _i:stdgo.GoInt64, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>
```


### exampleAppendInt


<details><summary></summary>
<p>


```haxe
function exampleAppendInt():Void {
        var _b10 = (("int (base 10):" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        _b10 = stdgo._internal.strconv.Strconv.appendInt(_b10, (-42i64 : stdgo.GoInt64), (10 : stdgo.GoInt));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((_b10 : stdgo.GoString)));
        var _b16 = (("int (base 16):" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        _b16 = stdgo._internal.strconv.Strconv.appendInt(_b16, (-42i64 : stdgo.GoInt64), (16 : stdgo.GoInt));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((_b16 : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4006>)


## function appendQuote


```haxe
function appendQuote(_dst:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoByte>
```


### exampleAppendQuote


<details><summary></summary>
<p>


```haxe
function exampleAppendQuote():Void {
        var _b = (("quote:" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        _b = stdgo._internal.strconv.Strconv.appendQuote(_b, ("\"Fran & Freddie\'s Diner\"" : stdgo.GoString));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((_b : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4260>)


## function appendQuoteRune


```haxe
function appendQuoteRune(_dst:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.Slice<stdgo.GoByte>
```


### exampleAppendQuoteRune


<details><summary></summary>
<p>


```haxe
function exampleAppendQuoteRune():Void {
        var _b = (("rune:" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        _b = stdgo._internal.strconv.Strconv.appendQuoteRune(_b, (9786 : stdgo.GoInt32));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((_b : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4278>)


## function appendQuoteRuneToASCII


```haxe
function appendQuoteRuneToASCII(_dst:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.Slice<stdgo.GoByte>
```


### exampleAppendQuoteRuneToASCII


<details><summary></summary>
<p>


```haxe
function exampleAppendQuoteRuneToASCII():Void {
        var _b = (("rune (ascii):" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        _b = stdgo._internal.strconv.Strconv.appendQuoteRuneToASCII(_b, (9786 : stdgo.GoInt32));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((_b : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4284>)


## function appendQuoteRuneToGraphic


```haxe
function appendQuoteRuneToGraphic(_dst:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Strconv.hx#L4290>)


## function appendQuoteToASCII


```haxe
function appendQuoteToASCII(_dst:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoByte>
```


### exampleAppendQuoteToASCII


<details><summary></summary>
<p>


```haxe
function exampleAppendQuoteToASCII():Void {
        var _b = (("quote (ascii):" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        _b = stdgo._internal.strconv.Strconv.appendQuoteToASCII(_b, ("\"Fran & Freddie\'s Diner\"" : stdgo.GoString));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((_b : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4266>)


## function appendQuoteToGraphic


```haxe
function appendQuoteToGraphic(_dst:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Strconv.hx#L4272>)


## function appendUint


```haxe
function appendUint(_dst:stdgo.Slice<stdgo.GoByte>, _i:stdgo.GoUInt64, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>
```


### exampleAppendUint


<details><summary></summary>
<p>


```haxe
function exampleAppendUint():Void {
        var _b10 = (("uint (base 10):" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        _b10 = stdgo._internal.strconv.Strconv.appendUint(_b10, (42i64 : stdgo.GoUInt64), (10 : stdgo.GoInt));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((_b10 : stdgo.GoString)));
        var _b16 = (("uint (base 16):" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        _b16 = stdgo._internal.strconv.Strconv.appendUint(_b16, (42i64 : stdgo.GoUInt64), (16 : stdgo.GoInt));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((_b16 : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4016>)


## function atoi


```haxe
function atoi(_s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```


### exampleAtoi


<details><summary></summary>
<p>


```haxe
function exampleAtoi():Void {
        var _v:stdgo.GoString = ("10" : stdgo.GoString);
        {
            var __tmp__ = stdgo._internal.strconv.Strconv.atoi(_v?.__copy__()), _s:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo._internal.fmt.Fmt.printf(("%T, %v" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L2792>)


## function baseError


```haxe
function baseError(:stdgo.GoString, :stdgo.GoString, :stdgo.GoInt):stdgo.Ref<stdgo._internal.strconv.NumError>
```


[\(view code\)](<./Strconv.hx#L2040>)


## function bitSizeError


```haxe
function bitSizeError(:stdgo.GoString, :stdgo.GoString, :stdgo.GoInt):stdgo.Ref<stdgo._internal.strconv.NumError>
```


[\(view code\)](<./Strconv.hx#L2039>)


## function canBackquote


```haxe
function canBackquote(_s:stdgo.GoString):Bool
```


### exampleCanBackquote


<details><summary></summary>
<p>


```haxe
function exampleCanBackquote():Void {
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strconv.Strconv.canBackquote(("Fran & Freddie\'s Diner ☺" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.strconv.Strconv.canBackquote(("`can\'t backquote this`" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4293>)


## function formatBool


```haxe
function formatBool(_b:Bool):stdgo.GoString
```


### exampleFormatBool


<details><summary></summary>
<p>


```haxe
function exampleFormatBool():Void {
        var _v:Bool = true;
        var _s:stdgo.GoString = stdgo._internal.strconv.Strconv.formatBool(_v)?.__copy__();
        stdgo._internal.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L2124>)


## function formatComplex


```haxe
function formatComplex(_c:stdgo.GoComplex128, _fmt:stdgo.GoByte, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):stdgo.GoString
```


[\(view code\)](<./Strconv.hx#L2863>)


## function formatFloat


```haxe
function formatFloat(_f:stdgo.GoFloat64, _fmt:stdgo.GoByte, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):stdgo.GoString
```


### exampleFormatFloat


<details><summary></summary>
<p>


```haxe
function exampleFormatFloat():Void {
        var _v:stdgo.GoFloat64 = (3.1415926535 : stdgo.GoFloat64);
        var _s32:stdgo.GoString = stdgo._internal.strconv.Strconv.formatFloat(_v, (69 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (32 : stdgo.GoInt))?.__copy__();
        stdgo._internal.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s32), stdgo.Go.toInterface(_s32));
        var _s64:stdgo.GoString = stdgo._internal.strconv.Strconv.formatFloat(_v, (69 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (64 : stdgo.GoInt))?.__copy__();
        stdgo._internal.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s64), stdgo.Go.toInterface(_s64));
        var _fmt64:stdgo.GoString = stdgo._internal.strconv.Strconv.formatFloat(_v, (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (64 : stdgo.GoInt))?.__copy__();
        stdgo._internal.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_fmt64), stdgo.Go.toInterface(_fmt64));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L3104>)


## function formatInt


```haxe
function formatInt(_i:stdgo.GoInt64, _base:stdgo.GoInt):stdgo.GoString
```


### exampleFormatInt


<details><summary></summary>
<p>


```haxe
function exampleFormatInt():Void {
        var _v:stdgo.GoInt64 = (-42i64 : stdgo.GoInt64);
        var _s10:stdgo.GoString = stdgo._internal.strconv.Strconv.formatInt(_v, (10 : stdgo.GoInt))?.__copy__();
        stdgo._internal.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s10), stdgo.Go.toInterface(_s10));
        var _s16:stdgo.GoString = stdgo._internal.strconv.Strconv.formatInt(_v, (16 : stdgo.GoInt))?.__copy__();
        stdgo._internal.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s16), stdgo.Go.toInterface(_s16));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L3996>)


## function formatUint


```haxe
function formatUint(_i:stdgo.GoUInt64, _base:stdgo.GoInt):stdgo.GoString
```


### exampleFormatUint


<details><summary></summary>
<p>


```haxe
function exampleFormatUint():Void {
        var _v:stdgo.GoUInt64 = (42i64 : stdgo.GoUInt64);
        var _s10:stdgo.GoString = stdgo._internal.strconv.Strconv.formatUint(_v, (10 : stdgo.GoInt))?.__copy__();
        stdgo._internal.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s10), stdgo.Go.toInterface(_s10));
        var _s16:stdgo.GoString = stdgo._internal.strconv.Strconv.formatUint(_v, (16 : stdgo.GoInt))?.__copy__();
        stdgo._internal.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s16), stdgo.Go.toInterface(_s16));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L3989>)


## function isGraphic


```haxe
function isGraphic(_r:stdgo.GoRune):Bool
```


### exampleIsGraphic


<details><summary></summary>
<p>


```haxe
function exampleIsGraphic():Void {
        var _shamrock:Bool = stdgo._internal.strconv.Strconv.isGraphic((9752 : stdgo.GoInt32));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_shamrock));
        var _a:Bool = stdgo._internal.strconv.Strconv.isGraphic((97 : stdgo.GoInt32));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_a));
        var _bel:Bool = stdgo._internal.strconv.Strconv.isGraphic((7 : stdgo.GoInt32));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_bel));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4627>)


## function isPrint


```haxe
function isPrint(_r:stdgo.GoRune):Bool
```


### exampleIsPrint


<details><summary></summary>
<p>


```haxe
function exampleIsPrint():Void {
        var _c:Bool = stdgo._internal.strconv.Strconv.isPrint((9786 : stdgo.GoInt32));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_c));
        var _bel:Bool = stdgo._internal.strconv.Strconv.isPrint((7 : stdgo.GoInt32));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_bel));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4596>)


## function itoa


```haxe
function itoa(_i:stdgo.GoInt):stdgo.GoString
```


### exampleItoa


<details><summary></summary>
<p>


```haxe
function exampleItoa():Void {
        var _i:stdgo.GoInt = (10 : stdgo.GoInt);
        var _s:stdgo.GoString = stdgo._internal.strconv.Strconv.itoa(_i)?.__copy__();
        stdgo._internal.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4003>)


## function mulByLog10Log2


```haxe
function mulByLog10Log2(_x:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Strconv.hx#L3986>)


## function mulByLog2Log10


```haxe
function mulByLog2Log10(_x:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Strconv.hx#L3983>)


## function newDecimal


```haxe
function newDecimal(_i:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.strconv.T_decimal>
```


[\(view code\)](<./Strconv.hx#L3970>)


## function parseBool


```haxe
function parseBool(_str:stdgo.GoString):{
	_1:stdgo.Error;
	_0:Bool;
}
```


### exampleParseBool


<details><summary></summary>
<p>


```haxe
function exampleParseBool():Void {
        var _v:stdgo.GoString = ("true" : stdgo.GoString);
        {
            var __tmp__ = stdgo._internal.strconv.Strconv.parseBool(_v?.__copy__()), _s:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo._internal.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L2113>)


## function parseComplex


```haxe
function parseComplex(_s:stdgo.GoString, _bitSize:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoComplex128;
}
```


[\(view code\)](<./Strconv.hx#L2154>)


## function parseFloat


```haxe
function parseFloat(_s:stdgo.GoString, _bitSize:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoFloat64;
}
```


### exampleParseFloat


<details><summary></summary>
<p>


```haxe
function exampleParseFloat():Void {
        var _v:stdgo.GoString = ("3.1415926535" : stdgo.GoString);
        {
            var __tmp__ = stdgo._internal.strconv.Strconv.parseFloat(_v?.__copy__(), (32 : stdgo.GoInt)), _s:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo._internal.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo._internal.strconv.Strconv.parseFloat(_v?.__copy__(), (64 : stdgo.GoInt)), _s:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo._internal.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo._internal.strconv.Strconv.parseFloat(("NaN" : stdgo.GoString), (32 : stdgo.GoInt)), _s:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo._internal.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo._internal.strconv.Strconv.parseFloat(("nan" : stdgo.GoString), (32 : stdgo.GoInt)), _s:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo._internal.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo._internal.strconv.Strconv.parseFloat(("inf" : stdgo.GoString), (32 : stdgo.GoInt)), _s:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo._internal.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo._internal.strconv.Strconv.parseFloat(("+Inf" : stdgo.GoString), (32 : stdgo.GoInt)), _s:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo._internal.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo._internal.strconv.Strconv.parseFloat(("-Inf" : stdgo.GoString), (32 : stdgo.GoInt)), _s:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo._internal.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo._internal.strconv.Strconv.parseFloat(("-0" : stdgo.GoString), (32 : stdgo.GoInt)), _s:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo._internal.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo._internal.strconv.Strconv.parseFloat(("+0" : stdgo.GoString), (32 : stdgo.GoInt)), _s:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo._internal.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L2643>)


## function parseFloatPrefix


```haxe
function parseFloatPrefix(_s:stdgo.GoString, _bitSize:stdgo.GoInt):{
	_2:stdgo.Error;
	_1:stdgo.GoInt;
	_0:stdgo.GoFloat64;
}
```


[\(view code\)](<./Strconv.hx#L3980>)


## function parseInt


```haxe
function parseInt(_s:stdgo.GoString, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoInt64;
}
```


### exampleParseInt


<details><summary></summary>
<p>


```haxe
function exampleParseInt():Void {
        var _v32:stdgo.GoString = ("-354634382" : stdgo.GoString);
        {
            var __tmp__ = stdgo._internal.strconv.Strconv.parseInt(_v32?.__copy__(), (10 : stdgo.GoInt), (32 : stdgo.GoInt)), _s:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo._internal.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo._internal.strconv.Strconv.parseInt(_v32?.__copy__(), (16 : stdgo.GoInt), (32 : stdgo.GoInt)), _s:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo._internal.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        var _v64:stdgo.GoString = ("-3546343826724305832" : stdgo.GoString);
        {
            var __tmp__ = stdgo._internal.strconv.Strconv.parseInt(_v64?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _s:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo._internal.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo._internal.strconv.Strconv.parseInt(_v64?.__copy__(), (16 : stdgo.GoInt), (64 : stdgo.GoInt)), _s:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo._internal.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L2751>)


## function parseUint


```haxe
function parseUint(_s:stdgo.GoString, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoUInt64;
}
```


### exampleParseUint


<details><summary></summary>
<p>


```haxe
function exampleParseUint():Void {
        var _v:stdgo.GoString = ("42" : stdgo.GoString);
        {
            var __tmp__ = stdgo._internal.strconv.Strconv.parseUint(_v?.__copy__(), (10 : stdgo.GoInt), (32 : stdgo.GoInt)), _s:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo._internal.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo._internal.strconv.Strconv.parseUint(_v?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _s:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo._internal.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L2675>)


## function quote


```haxe
function quote(_s:stdgo.GoString):stdgo.GoString
```


### exampleQuote


<details><summary></summary>
<p>


```haxe
function exampleQuote():Void {
        var _s:stdgo.GoString = stdgo._internal.strconv.Strconv.quote(("\"Fran & Freddie\'s Diner\t☺\"" : stdgo.GoString))?.__copy__();
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_s));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4257>)


## function quoteRune


```haxe
function quoteRune(_r:stdgo.GoRune):stdgo.GoString
```


### exampleQuoteRune


<details><summary></summary>
<p>


```haxe
function exampleQuoteRune():Void {
        var _s:stdgo.GoString = stdgo._internal.strconv.Strconv.quoteRune((9786 : stdgo.GoInt32))?.__copy__();
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_s));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4275>)


## function quoteRuneToASCII


```haxe
function quoteRuneToASCII(_r:stdgo.GoRune):stdgo.GoString
```


### exampleQuoteRuneToASCII


<details><summary></summary>
<p>


```haxe
function exampleQuoteRuneToASCII():Void {
        var _s:stdgo.GoString = stdgo._internal.strconv.Strconv.quoteRuneToASCII((9786 : stdgo.GoInt32))?.__copy__();
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_s));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4281>)


## function quoteRuneToGraphic


```haxe
function quoteRuneToGraphic(_r:stdgo.GoRune):stdgo.GoString
```


### exampleQuoteRuneToGraphic


<details><summary></summary>
<p>


```haxe
function exampleQuoteRuneToGraphic():Void {
        var _s:stdgo.GoString = stdgo._internal.strconv.Strconv.quoteRuneToGraphic((9786 : stdgo.GoInt32))?.__copy__();
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_s));
        _s = stdgo._internal.strconv.Strconv.quoteRuneToGraphic((9786 : stdgo.GoInt32))?.__copy__();
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_s));
        _s = stdgo._internal.strconv.Strconv.quoteRuneToGraphic((10 : stdgo.GoInt32))?.__copy__();
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_s));
        _s = stdgo._internal.strconv.Strconv.quoteRuneToGraphic((9 : stdgo.GoInt32))?.__copy__();
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_s));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4287>)


## function quoteToASCII


```haxe
function quoteToASCII(_s:stdgo.GoString):stdgo.GoString
```


### exampleQuoteToASCII


<details><summary></summary>
<p>


```haxe
function exampleQuoteToASCII():Void {
        var _s:stdgo.GoString = stdgo._internal.strconv.Strconv.quoteToASCII(("\"Fran & Freddie\'s Diner\t☺\"" : stdgo.GoString))?.__copy__();
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_s));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4263>)


## function quoteToGraphic


```haxe
function quoteToGraphic(_s:stdgo.GoString):stdgo.GoString
```


### exampleQuoteToGraphic


<details><summary></summary>
<p>


```haxe
function exampleQuoteToGraphic():Void {
        var _s:stdgo.GoString = stdgo._internal.strconv.Strconv.quoteToGraphic(("☺" : stdgo.GoString))?.__copy__();
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_s));
        _s = stdgo._internal.strconv.Strconv.quoteToGraphic(("This is a ☺\t\n" : stdgo.GoString))?.__copy__();
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_s));
        _s = stdgo._internal.strconv.Strconv.quoteToGraphic(("\" This is a ☺ \\n \"" : stdgo.GoString))?.__copy__();
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_s));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4269>)


## function quotedPrefix


```haxe
function quotedPrefix(_s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.GoString;
}
```


[\(view code\)](<./Strconv.hx#L4461>)


## function setOptimize


```haxe
function setOptimize(_b:Bool):Bool
```


[\(view code\)](<./Strconv.hx#L3975>)


## function unquote


```haxe
function unquote(_s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.GoString;
}
```


### exampleUnquote


<details><summary></summary>
<p>


```haxe
function exampleUnquote():Void {
        var __tmp__ = stdgo._internal.strconv.Strconv.unquote(("You can\'t unquote a string without quotes" : stdgo.GoString)), _s:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        stdgo._internal.fmt.Fmt.printf(("%q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_err));
        {
            var __tmp__ = stdgo._internal.strconv.Strconv.unquote(("\"The string must be either double-quoted\"" : stdgo.GoString));
            _s = __tmp__._0?.__copy__();
            _err = __tmp__._1;
        };
        stdgo._internal.fmt.Fmt.printf(("%q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_err));
        {
            var __tmp__ = stdgo._internal.strconv.Strconv.unquote(("`or backquoted.`" : stdgo.GoString));
            _s = __tmp__._0?.__copy__();
            _err = __tmp__._1;
        };
        stdgo._internal.fmt.Fmt.printf(("%q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_err));
        {
            var __tmp__ = stdgo._internal.strconv.Strconv.unquote(("\'☺\'" : stdgo.GoString));
            _s = __tmp__._0?.__copy__();
            _err = __tmp__._1;
        };
        stdgo._internal.fmt.Fmt.printf(("%q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_err));
        {
            var __tmp__ = stdgo._internal.strconv.Strconv.unquote(("\'☹☹\'" : stdgo.GoString));
            _s = __tmp__._0?.__copy__();
            _err = __tmp__._1;
        };
        stdgo._internal.fmt.Fmt.printf(("%q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_err));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4465>)


## function unquoteChar


```haxe
function unquoteChar(_s:stdgo.GoString, _quote:stdgo.GoByte):{
	_3:stdgo.Error;
	_2:stdgo.GoString;
	_1:Bool;
	_0:stdgo.GoRune;
}
```


### exampleUnquoteChar


<details><summary></summary>
<p>


```haxe
function exampleUnquoteChar():Void {
        var __tmp__ = stdgo._internal.strconv.Strconv.unquoteChar(("\\\"Fran & Freddie\'s Diner\\\"" : stdgo.GoString), (34 : stdgo.GoUInt8)), _v:stdgo.GoInt32 = __tmp__._0, _mb:Bool = __tmp__._1, _t:stdgo.GoString = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        if (_err != null) {
            stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("value:" : stdgo.GoString)), stdgo.Go.toInterface((_v : stdgo.GoString)));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("multibyte:" : stdgo.GoString)), stdgo.Go.toInterface(_mb));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("tail:" : stdgo.GoString)), stdgo.Go.toInterface(_t));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4324>)


# Classes


```haxe
import stdgo._internal.strconv.*
```


## class NumError


```haxe
var err:stdgo.Error
```


```haxe
var func:stdgo.GoString
```


```haxe
var num:stdgo.GoString
```


### NumError function new


```haxe
function new(?func:stdgo.GoString, ?num:stdgo.GoString, ?err:Null<stdgo.Error>):Void
```


[\(view code\)](<./Strconv.hx#L2045>)


### NumError function error


```haxe
function error():stdgo.GoString
```


[\(view code\)](<./Strconv.hx#L4661>)


### NumError function unwrap


```haxe
function unwrap():stdgo.Error
```


[\(view code\)](<./Strconv.hx#L4656>)


