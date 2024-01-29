# Module: `stdgo.strconv`

[(view library index)](../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _appendEscapedRune(_buf:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune, _quote:stdgo.GoByte, asciionly:Bool, _graphicOnly:Bool):Void`](<#function-_appendescapedrune>)

- [`function _appendQuotedRuneWith(_buf:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune, _quote:stdgo.GoByte, asciionly:Bool, _graphicOnly:Bool):Void`](<#function-_appendquotedrunewith>)

- [`function _appendQuotedWith(_buf:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString, _quote:stdgo.GoByte, asciionly:Bool, _graphicOnly:Bool):Void`](<#function-_appendquotedwith>)

- [`function _atof32(_s:stdgo.GoString):Void`](<#function-_atof32>)

- [`function _atof32exact(_mantissa:stdgo.GoUInt64, _exp:stdgo.GoInt, _neg:Bool):Void`](<#function-_atof32exact>)

- [`function _atof64(_s:stdgo.GoString):Void`](<#function-_atof64>)

- [`function _atof64exact(_mantissa:stdgo.GoUInt64, _exp:stdgo.GoInt, _neg:Bool):Void`](<#function-_atof64exact>)

- [`function _atofHex(_s:stdgo.GoString, _flt:stdgo.Ref<stdgo.strconv.T_floatInfo>, _mantissa:stdgo.GoUInt64, _exp:stdgo.GoInt, _neg:Bool, _trunc:Bool):Void`](<#function-_atofhex>)

- [`function _baseError(_fn:stdgo.GoString, _str:stdgo.GoString, _base:stdgo.GoInt):Void`](<#function-_baseerror>)

- [`function _bigFtoa(_dst:stdgo.Slice<stdgo.GoByte>, _prec:stdgo.GoInt, _fmt:stdgo.GoByte, _neg:Bool, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo.strconv.T_floatInfo>):Void`](<#function-_bigftoa>)

- [`function _bitSizeError(_fn:stdgo.GoString, _str:stdgo.GoString, _bitSize:stdgo.GoInt):Void`](<#function-_bitsizeerror>)

- [`function _bsearch16(_a:stdgo.Slice<stdgo.GoUInt16>, _x:stdgo.GoUInt16):Void`](<#function-_bsearch16>)

- [`function _bsearch32(_a:stdgo.Slice<stdgo.GoUInt32>, _x:stdgo.GoUInt32):Void`](<#function-_bsearch32>)

- [`function _cloneString(_x:stdgo.GoString):Void`](<#function-_clonestring>)

- [`function _commonPrefixLenIgnoreCase(_s:stdgo.GoString, _prefix:stdgo.GoString):Void`](<#function-_commonprefixlenignorecase>)

- [`function _computeBounds(_mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo.strconv.T_floatInfo>):Void`](<#function-_computebounds>)

- [`function _contains(_s:stdgo.GoString, _c:stdgo.GoByte):Void`](<#function-_contains>)

- [`function _convErr(_err:stdgo.Error, _s:stdgo.GoString):Void`](<#function-_converr>)

- [`function _digitZero(_dst:stdgo.Slice<stdgo.GoByte>):Void`](<#function-_digitzero>)

- [`function _divisibleByPower5(_m:stdgo.GoUInt64, _k:stdgo.GoInt):Void`](<#function-_divisiblebypower5>)

- [`function _divmod1e9(_x:stdgo.GoUInt64):Void`](<#function-_divmod1e9>)

- [`function _eiselLemire32(_man:stdgo.GoUInt64, _exp10:stdgo.GoInt, _neg:Bool):Void`](<#function-_eisellemire32>)

- [`function _eiselLemire64(_man:stdgo.GoUInt64, _exp10:stdgo.GoInt, _neg:Bool):Void`](<#function-_eisellemire64>)

- [`function _fmtB(_dst:stdgo.Slice<stdgo.GoByte>, _neg:Bool, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo.strconv.T_floatInfo>):Void`](<#function-_fmtb>)

- [`function _fmtE(_dst:stdgo.Slice<stdgo.GoByte>, _neg:Bool, _d:stdgo.strconv.T_decimalSlice, _prec:stdgo.GoInt, _fmt:stdgo.GoByte):Void`](<#function-_fmte>)

- [`function _fmtF(_dst:stdgo.Slice<stdgo.GoByte>, _neg:Bool, _d:stdgo.strconv.T_decimalSlice, _prec:stdgo.GoInt):Void`](<#function-_fmtf>)

- [`function _fmtX(_dst:stdgo.Slice<stdgo.GoByte>, _prec:stdgo.GoInt, _fmt:stdgo.GoByte, _neg:Bool, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo.strconv.T_floatInfo>):Void`](<#function-_fmtx>)

- [`function _formatBits(_dst:stdgo.Slice<stdgo.GoByte>, _u:stdgo.GoUInt64, _base:stdgo.GoInt, _neg:Bool, _append_:Bool):Void`](<#function-_formatbits>)

- [`function _formatDecimal(_d:stdgo.Ref<stdgo.strconv.T_decimalSlice>, _m:stdgo.GoUInt64, _trunc:Bool, _roundUp:Bool, _prec:stdgo.GoInt):Void`](<#function-_formatdecimal>)

- [`function _formatDigits(_dst:stdgo.Slice<stdgo.GoByte>, _shortest:Bool, _neg:Bool, _digs:stdgo.strconv.T_decimalSlice, _prec:stdgo.GoInt, _fmt:stdgo.GoByte):Void`](<#function-_formatdigits>)

- [`function _genericFtoa(_dst:stdgo.Slice<stdgo.GoByte>, _val:stdgo.GoFloat64, _fmt:stdgo.GoByte, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):Void`](<#function-_genericftoa>)

- [`function _index(_s:stdgo.GoString, _c:stdgo.GoByte):Void`](<#function-_index>)

- [`function _isInGraphicList(_r:stdgo.GoRune):Void`](<#function-_isingraphiclist>)

- [`function _isPowerOfTwo(_x:stdgo.GoInt):Void`](<#function-_ispoweroftwo>)

- [`function _leftShift(_a:stdgo.Ref<stdgo.strconv.T_decimal>, _k:stdgo.GoUInt):Void`](<#function-_leftshift>)

- [`function _lower(_c:stdgo.GoByte):Void`](<#function-_lower>)

- [`function _max(_a:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_max>)

- [`function _min(_a:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_min>)

- [`function _mulByLog10Log2(_x:stdgo.GoInt):Void`](<#function-_mulbylog10log2>)

- [`function _mulByLog2Log10(_x:stdgo.GoInt):Void`](<#function-_mulbylog2log10>)

- [`function _mult128bitPow10(_m:stdgo.GoUInt64, _e2:stdgo.GoInt, _q:stdgo.GoInt):Void`](<#function-_mult128bitpow10>)

- [`function _mult64bitPow10(_m:stdgo.GoUInt32, _e2:stdgo.GoInt, _q:stdgo.GoInt):Void`](<#function-_mult64bitpow10>)

- [`function _parseFloatPrefix(_s:stdgo.GoString, _bitSize:stdgo.GoInt):Void`](<#function-_parsefloatprefix>)

- [`function _prefixIsLessThan(_b:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):Void`](<#function-_prefixislessthan>)

- [`function _quoteRuneWith(_r:stdgo.GoRune, _quote:stdgo.GoByte, asciionly:Bool, _graphicOnly:Bool):Void`](<#function-_quoterunewith>)

- [`function _quoteWith(_s:stdgo.GoString, _quote:stdgo.GoByte, asciionly:Bool, _graphicOnly:Bool):Void`](<#function-_quotewith>)

- [`function _rangeError(_fn:stdgo.GoString, _str:stdgo.GoString):Void`](<#function-_rangeerror>)

- [`function _readFloat(_s:stdgo.GoString):Void`](<#function-_readfloat>)

- [`function _rightShift(_a:stdgo.Ref<stdgo.strconv.T_decimal>, _k:stdgo.GoUInt):Void`](<#function-_rightshift>)

- [`function _roundShortest(_d:stdgo.Ref<stdgo.strconv.T_decimal>, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo.strconv.T_floatInfo>):Void`](<#function-_roundshortest>)

- [`function _ryuDigits(_d:stdgo.Ref<stdgo.strconv.T_decimalSlice>, _lower:stdgo.GoUInt64, _central:stdgo.GoUInt64, _upper:stdgo.GoUInt64, _c0:Bool, _cup:Bool):Void`](<#function-_ryudigits>)

- [`function _ryuDigits32(_d:stdgo.Ref<stdgo.strconv.T_decimalSlice>, _lower:stdgo.GoUInt32, _central:stdgo.GoUInt32, _upper:stdgo.GoUInt32, _c0:Bool, _cup:Bool, _endindex:stdgo.GoInt):Void`](<#function-_ryudigits32>)

- [`function _ryuFtoaFixed32(_d:stdgo.Ref<stdgo.strconv.T_decimalSlice>, _mant:stdgo.GoUInt32, _exp:stdgo.GoInt, _prec:stdgo.GoInt):Void`](<#function-_ryuftoafixed32>)

- [`function _ryuFtoaFixed64(_d:stdgo.Ref<stdgo.strconv.T_decimalSlice>, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _prec:stdgo.GoInt):Void`](<#function-_ryuftoafixed64>)

- [`function _ryuFtoaShortest(_d:stdgo.Ref<stdgo.strconv.T_decimalSlice>, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo.strconv.T_floatInfo>):Void`](<#function-_ryuftoashortest>)

- [`function _shouldRoundUp(_a:stdgo.Ref<stdgo.strconv.T_decimal>, _nd:stdgo.GoInt):Void`](<#function-_shouldroundup>)

- [`function _small(_i:stdgo.GoInt):Void`](<#function-_small>)

- [`function _special(_s:stdgo.GoString):Void`](<#function-_special>)

- [`function _syntaxError(_fn:stdgo.GoString, _str:stdgo.GoString):Void`](<#function-_syntaxerror>)

- [`function _trim(_a:stdgo.Ref<stdgo.strconv.T_decimal>):Void`](<#function-_trim>)

- [`function _underscoreOK(_s:stdgo.GoString):Void`](<#function-_underscoreok>)

- [`function _unhex(_b:stdgo.GoByte):Void`](<#function-_unhex>)

- [`function _unquote(_in:stdgo.GoString, _unescape:Bool):Void`](<#function-_unquote>)

- [`function appendBool(_dst:stdgo.Slice<stdgo.GoByte>, _b:Bool):Void`](<#function-appendbool>)

- [`function appendFloat(_dst:stdgo.Slice<stdgo.GoByte>, _f:stdgo.GoFloat64, _fmt:stdgo.GoByte, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):Void`](<#function-appendfloat>)

- [`function appendInt(_dst:stdgo.Slice<stdgo.GoByte>, _i:stdgo.GoInt64, _base:stdgo.GoInt):Void`](<#function-appendint>)

- [`function appendQuote(_dst:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):Void`](<#function-appendquote>)

- [`function appendQuoteRune(_dst:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):Void`](<#function-appendquoterune>)

- [`function appendQuoteRuneToASCII(_dst:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):Void`](<#function-appendquoterunetoascii>)

- [`function appendQuoteRuneToGraphic(_dst:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):Void`](<#function-appendquoterunetographic>)

- [`function appendQuoteToASCII(_dst:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):Void`](<#function-appendquotetoascii>)

- [`function appendQuoteToGraphic(_dst:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):Void`](<#function-appendquotetographic>)

- [`function appendUint(_dst:stdgo.Slice<stdgo.GoByte>, _i:stdgo.GoUInt64, _base:stdgo.GoInt):Void`](<#function-appenduint>)

- [`function atoi(_s:stdgo.GoString):Void`](<#function-atoi>)

- [`function canBackquote(_s:stdgo.GoString):Void`](<#function-canbackquote>)

- [`function formatBool(_b:Bool):Void`](<#function-formatbool>)

- [`function formatComplex(_c:stdgo.GoComplex128, _fmt:stdgo.GoByte, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):Void`](<#function-formatcomplex>)

- [`function formatFloat(_f:stdgo.GoFloat64, _fmt:stdgo.GoByte, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):Void`](<#function-formatfloat>)

- [`function formatInt(_i:stdgo.GoInt64, _base:stdgo.GoInt):Void`](<#function-formatint>)

- [`function formatUint(_i:stdgo.GoUInt64, _base:stdgo.GoInt):Void`](<#function-formatuint>)

- [`function isGraphic(_r:stdgo.GoRune):Void`](<#function-isgraphic>)

- [`function isPrint(_r:stdgo.GoRune):Void`](<#function-isprint>)

- [`function itoa(_i:stdgo.GoInt):Void`](<#function-itoa>)

- [`function mulByLog10Log2(_x:stdgo.GoInt):Void`](<#function-mulbylog10log2>)

- [`function mulByLog2Log10(_x:stdgo.GoInt):Void`](<#function-mulbylog2log10>)

- [`function newDecimal(_i:stdgo.GoUInt64):Void`](<#function-newdecimal>)

- [`function parseBool(_str:stdgo.GoString):Void`](<#function-parsebool>)

- [`function parseComplex(_s:stdgo.GoString, _bitSize:stdgo.GoInt):Void`](<#function-parsecomplex>)

- [`function parseFloat(_s:stdgo.GoString, _bitSize:stdgo.GoInt):Void`](<#function-parsefloat>)

- [`function parseFloatPrefix(_s:stdgo.GoString, _bitSize:stdgo.GoInt):Void`](<#function-parsefloatprefix>)

- [`function parseInt(_s:stdgo.GoString, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):Void`](<#function-parseint>)

- [`function parseUint(_s:stdgo.GoString, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):Void`](<#function-parseuint>)

- [`function quote(_s:stdgo.GoString):Void`](<#function-quote>)

- [`function quoteRune(_r:stdgo.GoRune):Void`](<#function-quoterune>)

- [`function quoteRuneToASCII(_r:stdgo.GoRune):Void`](<#function-quoterunetoascii>)

- [`function quoteRuneToGraphic(_r:stdgo.GoRune):Void`](<#function-quoterunetographic>)

- [`function quoteToASCII(_s:stdgo.GoString):Void`](<#function-quotetoascii>)

- [`function quoteToGraphic(_s:stdgo.GoString):Void`](<#function-quotetographic>)

- [`function quotedPrefix(_s:stdgo.GoString):Void`](<#function-quotedprefix>)

- [`function setOptimize(_b:Bool):Void`](<#function-setoptimize>)

- [`function unquote(_s:stdgo.GoString):Void`](<#function-unquote>)

- [`function unquoteChar(_s:stdgo.GoString, _quote:stdgo.GoByte):Void`](<#function-unquotechar>)

- [typedef NumError](<#typedef-numerror>)

- [typedef NumError\_asInterface](<#typedef-numerror_asinterface>)

- [typedef NumError\_static\_extension](<#typedef-numerror_static_extension>)

- [typedef T\_decimal](<#typedef-t_decimal>)

- [typedef T\_decimalSlice](<#typedef-t_decimalslice>)

- [typedef T\_decimal\_asInterface](<#typedef-t_decimal_asinterface>)

- [typedef T\_decimal\_static\_extension](<#typedef-t_decimal_static_extension>)

- [typedef T\_floatInfo](<#typedef-t_floatinfo>)

- [typedef T\_leftCheat](<#typedef-t_leftcheat>)

# Variables


```haxe
import stdgo.strconv.Strconv
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var _detailedPowersOfTen:Dynamic
```


```haxe
var _detailedPowersOfTenMaxExp10:Dynamic
```


```haxe
var _detailedPowersOfTenMinExp10:Dynamic
```


```haxe
var _digits:Dynamic
```


```haxe
var _fastSmalls:Dynamic
```


```haxe
var _float32info:Dynamic
```


```haxe
var _float32pow10:Dynamic
```


```haxe
var _float64info:Dynamic
```


```haxe
var _float64pow10:Dynamic
```


```haxe
var _fnParseComplex:Dynamic
```


```haxe
var _fnParseFloat:Dynamic
```


```haxe
var _host32bit:Dynamic
```


```haxe
var _intSize:Dynamic
```


```haxe
var _isGraphic:Dynamic
```


```haxe
var _isNotPrint16:Dynamic
```


```haxe
var _isNotPrint32:Dynamic
```


```haxe
var _isPrint16:Dynamic
```


```haxe
var _isPrint32:Dynamic
```


```haxe
var _leftcheats:Dynamic
```


```haxe
var _lowerhex:Dynamic
```


```haxe
var _maxShift:Dynamic
```


```haxe
var _maxUint64:Dynamic
```


```haxe
var _nSmalls:Dynamic
```


```haxe
var _optimize:Dynamic
```


```haxe
var _powtab:Dynamic
```


```haxe
var _smallsString:Dynamic
```


```haxe
var _uint64pow10:Dynamic
```


```haxe
var _uintSize:Dynamic
```


```haxe
var _upperhex:Dynamic
```


```haxe
var baseError:Dynamic
```


```haxe
var bitSizeError:Dynamic
```


```haxe
var errRange:Dynamic
```


```haxe
var errSyntax:Dynamic
```


```haxe
var intSize:Dynamic
```


# Functions


```haxe
import stdgo.strconv.Strconv
```


## function \_appendEscapedRune


```haxe
function _appendEscapedRune(_buf:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune, _quote:stdgo.GoByte, asciionly:Bool, _graphicOnly:Bool):Void
```


[\(view code\)](<./Strconv.hx#L120>)


## function \_appendQuotedRuneWith


```haxe
function _appendQuotedRuneWith(_buf:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune, _quote:stdgo.GoByte, asciionly:Bool, _graphicOnly:Bool):Void
```


[\(view code\)](<./Strconv.hx#L119>)


## function \_appendQuotedWith


```haxe
function _appendQuotedWith(_buf:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString, _quote:stdgo.GoByte, asciionly:Bool, _graphicOnly:Bool):Void
```


[\(view code\)](<./Strconv.hx#L118>)


## function \_atof32


```haxe
function _atof32(_s:stdgo.GoString):Void
```


[\(view code\)](<./Strconv.hx#L53>)


## function \_atof32exact


```haxe
function _atof32exact(_mantissa:stdgo.GoUInt64, _exp:stdgo.GoInt, _neg:Bool):Void
```


[\(view code\)](<./Strconv.hx#L51>)


## function \_atof64


```haxe
function _atof64(_s:stdgo.GoString):Void
```


[\(view code\)](<./Strconv.hx#L54>)


## function \_atof64exact


```haxe
function _atof64exact(_mantissa:stdgo.GoUInt64, _exp:stdgo.GoInt, _neg:Bool):Void
```


[\(view code\)](<./Strconv.hx#L50>)


## function \_atofHex


```haxe
function _atofHex(_s:stdgo.GoString, _flt:stdgo.Ref<stdgo.strconv.T_floatInfo>, _mantissa:stdgo.GoUInt64, _exp:stdgo.GoInt, _neg:Bool, _trunc:Bool):Void
```


[\(view code\)](<./Strconv.hx#L52>)


## function \_baseError


```haxe
function _baseError(_fn:stdgo.GoString, _str:stdgo.GoString, _base:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L61>)


## function \_bigFtoa


```haxe
function _bigFtoa(_dst:stdgo.Slice<stdgo.GoByte>, _prec:stdgo.GoInt, _fmt:stdgo.GoByte, _neg:Bool, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo.strconv.T_floatInfo>):Void
```


[\(view code\)](<./Strconv.hx#L80>)


## function \_bitSizeError


```haxe
function _bitSizeError(_fn:stdgo.GoString, _str:stdgo.GoString, _bitSize:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L62>)


## function \_bsearch16


```haxe
function _bsearch16(_a:stdgo.Slice<stdgo.GoUInt16>, _x:stdgo.GoUInt16):Void
```


[\(view code\)](<./Strconv.hx#L139>)


## function \_bsearch32


```haxe
function _bsearch32(_a:stdgo.Slice<stdgo.GoUInt32>, _x:stdgo.GoUInt32):Void
```


[\(view code\)](<./Strconv.hx#L140>)


## function \_cloneString


```haxe
function _cloneString(_x:stdgo.GoString):Void
```


[\(view code\)](<./Strconv.hx#L58>)


## function \_commonPrefixLenIgnoreCase


```haxe
function _commonPrefixLenIgnoreCase(_s:stdgo.GoString, _prefix:stdgo.GoString):Void
```


[\(view code\)](<./Strconv.hx#L47>)


## function \_computeBounds


```haxe
function _computeBounds(_mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo.strconv.T_floatInfo>):Void
```


[\(view code\)](<./Strconv.hx#L95>)


## function \_contains


```haxe
function _contains(_s:stdgo.GoString, _c:stdgo.GoByte):Void
```


[\(view code\)](<./Strconv.hx#L115>)


## function \_convErr


```haxe
function _convErr(_err:stdgo.Error, _s:stdgo.GoString):Void
```


[\(view code\)](<./Strconv.hx#L45>)


## function \_digitZero


```haxe
function _digitZero(_dst:stdgo.Slice<stdgo.GoByte>):Void
```


[\(view code\)](<./Strconv.hx#L69>)


## function \_divisibleByPower5


```haxe
function _divisibleByPower5(_m:stdgo.GoUInt64, _k:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L100>)


## function \_divmod1e9


```haxe
function _divmod1e9(_x:stdgo.GoUInt64):Void
```


[\(view code\)](<./Strconv.hx#L101>)


## function \_eiselLemire32


```haxe
function _eiselLemire32(_man:stdgo.GoUInt64, _exp10:stdgo.GoInt, _neg:Bool):Void
```


[\(view code\)](<./Strconv.hx#L76>)


## function \_eiselLemire64


```haxe
function _eiselLemire64(_man:stdgo.GoUInt64, _exp10:stdgo.GoInt, _neg:Bool):Void
```


[\(view code\)](<./Strconv.hx#L75>)


## function \_fmtB


```haxe
function _fmtB(_dst:stdgo.Slice<stdgo.GoByte>, _neg:Bool, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo.strconv.T_floatInfo>):Void
```


[\(view code\)](<./Strconv.hx#L85>)


## function \_fmtE


```haxe
function _fmtE(_dst:stdgo.Slice<stdgo.GoByte>, _neg:Bool, _d:stdgo.strconv.T_decimalSlice, _prec:stdgo.GoInt, _fmt:stdgo.GoByte):Void
```


[\(view code\)](<./Strconv.hx#L83>)


## function \_fmtF


```haxe
function _fmtF(_dst:stdgo.Slice<stdgo.GoByte>, _neg:Bool, _d:stdgo.strconv.T_decimalSlice, _prec:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L84>)


## function \_fmtX


```haxe
function _fmtX(_dst:stdgo.Slice<stdgo.GoByte>, _prec:stdgo.GoInt, _fmt:stdgo.GoByte, _neg:Bool, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo.strconv.T_floatInfo>):Void
```


[\(view code\)](<./Strconv.hx#L86>)


## function \_formatBits


```haxe
function _formatBits(_dst:stdgo.Slice<stdgo.GoByte>, _u:stdgo.GoUInt64, _base:stdgo.GoInt, _neg:Bool, _append_:Bool):Void
```


[\(view code\)](<./Strconv.hx#L113>)


## function \_formatDecimal


```haxe
function _formatDecimal(_d:stdgo.Ref<stdgo.strconv.T_decimalSlice>, _m:stdgo.GoUInt64, _trunc:Bool, _roundUp:Bool, _prec:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L91>)


## function \_formatDigits


```haxe
function _formatDigits(_dst:stdgo.Slice<stdgo.GoByte>, _shortest:Bool, _neg:Bool, _digs:stdgo.strconv.T_decimalSlice, _prec:stdgo.GoInt, _fmt:stdgo.GoByte):Void
```


[\(view code\)](<./Strconv.hx#L81>)


## function \_genericFtoa


```haxe
function _genericFtoa(_dst:stdgo.Slice<stdgo.GoByte>, _val:stdgo.GoFloat64, _fmt:stdgo.GoByte, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L79>)


## function \_index


```haxe
function _index(_s:stdgo.GoString, _c:stdgo.GoByte):Void
```


[\(view code\)](<./Strconv.hx#L67>)


## function \_isInGraphicList


```haxe
function _isInGraphicList(_r:stdgo.GoRune):Void
```


[\(view code\)](<./Strconv.hx#L143>)


## function \_isPowerOfTwo


```haxe
function _isPowerOfTwo(_x:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L114>)


## function \_leftShift


```haxe
function _leftShift(_a:stdgo.Ref<stdgo.strconv.T_decimal>, _k:stdgo.GoUInt):Void
```


[\(view code\)](<./Strconv.hx#L73>)


## function \_lower


```haxe
function _lower(_c:stdgo.GoByte):Void
```


[\(view code\)](<./Strconv.hx#L57>)


## function \_max


```haxe
function _max(_a:stdgo.GoInt, _b:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L88>)


## function \_min


```haxe
function _min(_a:stdgo.GoInt, _b:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L87>)


## function \_mulByLog10Log2


```haxe
function _mulByLog10Log2(_x:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L94>)


## function \_mulByLog2Log10


```haxe
function _mulByLog2Log10(_x:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L93>)


## function \_mult128bitPow10


```haxe
function _mult128bitPow10(_m:stdgo.GoUInt64, _e2:stdgo.GoInt, _q:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L99>)


## function \_mult64bitPow10


```haxe
function _mult64bitPow10(_m:stdgo.GoUInt32, _e2:stdgo.GoInt, _q:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L98>)


## function \_parseFloatPrefix


```haxe
function _parseFloatPrefix(_s:stdgo.GoString, _bitSize:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L56>)


## function \_prefixIsLessThan


```haxe
function _prefixIsLessThan(_b:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):Void
```


[\(view code\)](<./Strconv.hx#L72>)


## function \_quoteRuneWith


```haxe
function _quoteRuneWith(_r:stdgo.GoRune, _quote:stdgo.GoByte, asciionly:Bool, _graphicOnly:Bool):Void
```


[\(view code\)](<./Strconv.hx#L117>)


## function \_quoteWith


```haxe
function _quoteWith(_s:stdgo.GoString, _quote:stdgo.GoByte, asciionly:Bool, _graphicOnly:Bool):Void
```


[\(view code\)](<./Strconv.hx#L116>)


## function \_rangeError


```haxe
function _rangeError(_fn:stdgo.GoString, _str:stdgo.GoString):Void
```


[\(view code\)](<./Strconv.hx#L60>)


## function \_readFloat


```haxe
function _readFloat(_s:stdgo.GoString):Void
```


[\(view code\)](<./Strconv.hx#L49>)


## function \_rightShift


```haxe
function _rightShift(_a:stdgo.Ref<stdgo.strconv.T_decimal>, _k:stdgo.GoUInt):Void
```


[\(view code\)](<./Strconv.hx#L71>)


## function \_roundShortest


```haxe
function _roundShortest(_d:stdgo.Ref<stdgo.strconv.T_decimal>, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo.strconv.T_floatInfo>):Void
```


[\(view code\)](<./Strconv.hx#L82>)


## function \_ryuDigits


```haxe
function _ryuDigits(_d:stdgo.Ref<stdgo.strconv.T_decimalSlice>, _lower:stdgo.GoUInt64, _central:stdgo.GoUInt64, _upper:stdgo.GoUInt64, _c0:Bool, _cup:Bool):Void
```


[\(view code\)](<./Strconv.hx#L96>)


## function \_ryuDigits32


```haxe
function _ryuDigits32(_d:stdgo.Ref<stdgo.strconv.T_decimalSlice>, _lower:stdgo.GoUInt32, _central:stdgo.GoUInt32, _upper:stdgo.GoUInt32, _c0:Bool, _cup:Bool, _endindex:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L97>)


## function \_ryuFtoaFixed32


```haxe
function _ryuFtoaFixed32(_d:stdgo.Ref<stdgo.strconv.T_decimalSlice>, _mant:stdgo.GoUInt32, _exp:stdgo.GoInt, _prec:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L89>)


## function \_ryuFtoaFixed64


```haxe
function _ryuFtoaFixed64(_d:stdgo.Ref<stdgo.strconv.T_decimalSlice>, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _prec:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L90>)


## function \_ryuFtoaShortest


```haxe
function _ryuFtoaShortest(_d:stdgo.Ref<stdgo.strconv.T_decimalSlice>, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo.strconv.T_floatInfo>):Void
```


[\(view code\)](<./Strconv.hx#L92>)


## function \_shouldRoundUp


```haxe
function _shouldRoundUp(_a:stdgo.Ref<stdgo.strconv.T_decimal>, _nd:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L74>)


## function \_small


```haxe
function _small(_i:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L112>)


## function \_special


```haxe
function _special(_s:stdgo.GoString):Void
```


[\(view code\)](<./Strconv.hx#L48>)


## function \_syntaxError


```haxe
function _syntaxError(_fn:stdgo.GoString, _str:stdgo.GoString):Void
```


[\(view code\)](<./Strconv.hx#L59>)


## function \_trim


```haxe
function _trim(_a:stdgo.Ref<stdgo.strconv.T_decimal>):Void
```


[\(view code\)](<./Strconv.hx#L70>)


## function \_underscoreOK


```haxe
function _underscoreOK(_s:stdgo.GoString):Void
```


[\(view code\)](<./Strconv.hx#L66>)


## function \_unhex


```haxe
function _unhex(_b:stdgo.GoByte):Void
```


[\(view code\)](<./Strconv.hx#L134>)


## function \_unquote


```haxe
function _unquote(_in:stdgo.GoString, _unescape:Bool):Void
```


[\(view code\)](<./Strconv.hx#L138>)


## function appendBool


```haxe
function appendBool(_dst:stdgo.Slice<stdgo.GoByte>, _b:Bool):Void
```


[\(view code\)](<./Strconv.hx#L44>)


## function appendFloat


```haxe
function appendFloat(_dst:stdgo.Slice<stdgo.GoByte>, _f:stdgo.GoFloat64, _fmt:stdgo.GoByte, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L78>)


## function appendInt


```haxe
function appendInt(_dst:stdgo.Slice<stdgo.GoByte>, _i:stdgo.GoInt64, _base:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L110>)


## function appendQuote


```haxe
function appendQuote(_dst:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):Void
```


[\(view code\)](<./Strconv.hx#L122>)


## function appendQuoteRune


```haxe
function appendQuoteRune(_dst:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):Void
```


[\(view code\)](<./Strconv.hx#L128>)


## function appendQuoteRuneToASCII


```haxe
function appendQuoteRuneToASCII(_dst:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):Void
```


[\(view code\)](<./Strconv.hx#L130>)


## function appendQuoteRuneToGraphic


```haxe
function appendQuoteRuneToGraphic(_dst:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):Void
```


[\(view code\)](<./Strconv.hx#L132>)


## function appendQuoteToASCII


```haxe
function appendQuoteToASCII(_dst:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):Void
```


[\(view code\)](<./Strconv.hx#L124>)


## function appendQuoteToGraphic


```haxe
function appendQuoteToGraphic(_dst:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):Void
```


[\(view code\)](<./Strconv.hx#L126>)


## function appendUint


```haxe
function appendUint(_dst:stdgo.Slice<stdgo.GoByte>, _i:stdgo.GoUInt64, _base:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L111>)


## function atoi


```haxe
function atoi(_s:stdgo.GoString):Void
```


[\(view code\)](<./Strconv.hx#L65>)


## function canBackquote


```haxe
function canBackquote(_s:stdgo.GoString):Void
```


[\(view code\)](<./Strconv.hx#L133>)


## function formatBool


```haxe
function formatBool(_b:Bool):Void
```


[\(view code\)](<./Strconv.hx#L43>)


## function formatComplex


```haxe
function formatComplex(_c:stdgo.GoComplex128, _fmt:stdgo.GoByte, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L68>)


## function formatFloat


```haxe
function formatFloat(_f:stdgo.GoFloat64, _fmt:stdgo.GoByte, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L77>)


## function formatInt


```haxe
function formatInt(_i:stdgo.GoInt64, _base:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L108>)


## function formatUint


```haxe
function formatUint(_i:stdgo.GoUInt64, _base:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L107>)


## function isGraphic


```haxe
function isGraphic(_r:stdgo.GoRune):Void
```


[\(view code\)](<./Strconv.hx#L142>)


## function isPrint


```haxe
function isPrint(_r:stdgo.GoRune):Void
```


[\(view code\)](<./Strconv.hx#L141>)


## function itoa


```haxe
function itoa(_i:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L109>)


## function mulByLog10Log2


```haxe
function mulByLog10Log2(_x:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L106>)


## function mulByLog2Log10


```haxe
function mulByLog2Log10(_x:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L105>)


## function newDecimal


```haxe
function newDecimal(_i:stdgo.GoUInt64):Void
```


[\(view code\)](<./Strconv.hx#L102>)


## function parseBool


```haxe
function parseBool(_str:stdgo.GoString):Void
```


[\(view code\)](<./Strconv.hx#L42>)


## function parseComplex


```haxe
function parseComplex(_s:stdgo.GoString, _bitSize:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L46>)


## function parseFloat


```haxe
function parseFloat(_s:stdgo.GoString, _bitSize:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L55>)


## function parseFloatPrefix


```haxe
function parseFloatPrefix(_s:stdgo.GoString, _bitSize:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L104>)


## function parseInt


```haxe
function parseInt(_s:stdgo.GoString, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L64>)


## function parseUint


```haxe
function parseUint(_s:stdgo.GoString, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):Void
```


[\(view code\)](<./Strconv.hx#L63>)


## function quote


```haxe
function quote(_s:stdgo.GoString):Void
```


[\(view code\)](<./Strconv.hx#L121>)


## function quoteRune


```haxe
function quoteRune(_r:stdgo.GoRune):Void
```


[\(view code\)](<./Strconv.hx#L127>)


## function quoteRuneToASCII


```haxe
function quoteRuneToASCII(_r:stdgo.GoRune):Void
```


[\(view code\)](<./Strconv.hx#L129>)


## function quoteRuneToGraphic


```haxe
function quoteRuneToGraphic(_r:stdgo.GoRune):Void
```


[\(view code\)](<./Strconv.hx#L131>)


## function quoteToASCII


```haxe
function quoteToASCII(_s:stdgo.GoString):Void
```


[\(view code\)](<./Strconv.hx#L123>)


## function quoteToGraphic


```haxe
function quoteToGraphic(_s:stdgo.GoString):Void
```


[\(view code\)](<./Strconv.hx#L125>)


## function quotedPrefix


```haxe
function quotedPrefix(_s:stdgo.GoString):Void
```


[\(view code\)](<./Strconv.hx#L136>)


## function setOptimize


```haxe
function setOptimize(_b:Bool):Void
```


[\(view code\)](<./Strconv.hx#L103>)


## function unquote


```haxe
function unquote(_s:stdgo.GoString):Void
```


[\(view code\)](<./Strconv.hx#L137>)


## function unquoteChar


```haxe
function unquoteChar(_s:stdgo.GoString, _quote:stdgo.GoByte):Void
```


[\(view code\)](<./Strconv.hx#L135>)


# Typedefs


```haxe
import stdgo.strconv.*
```


## typedef NumError


```haxe
typedef NumError = Dynamic;
```


## typedef NumError\_asInterface


```haxe
typedef NumError_asInterface = Dynamic;
```


## typedef NumError\_static\_extension


```haxe
typedef NumError_static_extension = Dynamic;
```


## typedef T\_decimal


```haxe
typedef T_decimal = Dynamic;
```


## typedef T\_decimalSlice


```haxe
typedef T_decimalSlice = Dynamic;
```


## typedef T\_decimal\_asInterface


```haxe
typedef T_decimal_asInterface = Dynamic;
```


## typedef T\_decimal\_static\_extension


```haxe
typedef T_decimal_static_extension = Dynamic;
```


## typedef T\_floatInfo


```haxe
typedef T_floatInfo = Dynamic;
```


## typedef T\_leftCheat


```haxe
typedef T_leftCheat = Dynamic;
```


