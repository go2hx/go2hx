# Module: `stdgo.strconv`

[(view library index)](../stdgo.md)


# Overview



Package strconv implements conversions to and from string representations
of basic data types.  

## Numeric Conversions



The most common numeric conversions are Atoi \(string to int\) and Itoa \(int to string\).  

```
	i, err := strconv.Atoi("-42")
	s := strconv.Itoa(-42)
```

These assume decimal and the Go int type.  


\[ParseBool\], \[ParseFloat\], \[ParseInt\], and \[ParseUint\] convert strings to values:  

```
	b, err := strconv.ParseBool("true")
	f, err := strconv.ParseFloat("3.1415", 64)
	i, err := strconv.ParseInt("-42", 10, 64)
	u, err := strconv.ParseUint("42", 10, 64)
```

The parse functions return the widest type \(float64, int64, and uint64\),
but if the size argument specifies a narrower width the result can be
converted to that narrower type without data loss:  

```
	s := "2147483647" // biggest int32
	i64, err := strconv.ParseInt(s, 10, 32)
	...
	i := int32(i64)
```

\[FormatBool\], \[FormatFloat\], \[FormatInt\], and \[FormatUint\] convert values to strings:  

```
	s := strconv.FormatBool(true)
	s := strconv.FormatFloat(3.1415, 'E', -1, 64)
	s := strconv.FormatInt(-42, 16)
	s := strconv.FormatUint(42, 16)
```

\[AppendBool\], \[AppendFloat\], \[AppendInt\], and \[AppendUint\] are similar but
append the formatted value to a destination slice.  

## String Conversions



\[Quote\] and \[QuoteToASCII\] convert strings to quoted Go string literals.
The latter guarantees that the result is an ASCII string, by escaping
any non\-ASCII Unicode with \\u:  

```
	q := strconv.Quote("Hello, 世界")
	q := strconv.QuoteToASCII("Hello, 世界")
```

\[QuoteRune\] and \[QuoteRuneToASCII\] are similar but accept runes and
return quoted Go rune literals.  


\[Unquote\] and \[UnquoteChar\] unquote Go string and rune literals.  


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

- [`function _atofHex(_s:stdgo.GoString, _flt:stdgo.Ref<stdgo.strconv.T_floatInfo>, _mantissa:stdgo.GoUInt64, _exp:stdgo.GoInt, _neg:Bool, _trunc:Bool):{
	_1:stdgo.Error;
	_0:stdgo.GoFloat64;
}`](<#function-_atofhex>)

- [`function _baseError(_fn:stdgo.GoString, _str:stdgo.GoString, _base:stdgo.GoInt):stdgo.Ref<stdgo.strconv.NumError>`](<#function-_baseerror>)

- [`function _bigFtoa(_dst:stdgo.Slice<stdgo.GoByte>, _prec:stdgo.GoInt, _fmt:stdgo.GoByte, _neg:Bool, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo.strconv.T_floatInfo>):stdgo.Slice<stdgo.GoByte>`](<#function-_bigftoa>)

- [`function _bitSizeError(_fn:stdgo.GoString, _str:stdgo.GoString, _bitSize:stdgo.GoInt):stdgo.Ref<stdgo.strconv.NumError>`](<#function-_bitsizeerror>)

- [`function _bsearch16(_a:stdgo.Slice<stdgo.GoUInt16>, _x:stdgo.GoUInt16):stdgo.GoInt`](<#function-_bsearch16>)

- [`function _bsearch32(_a:stdgo.Slice<stdgo.GoUInt32>, _x:stdgo.GoUInt32):stdgo.GoInt`](<#function-_bsearch32>)

- [`function _cloneString(_x:stdgo.GoString):stdgo.GoString`](<#function-_clonestring>)

- [`function _commonPrefixLenIgnoreCase(_s:stdgo.GoString, _prefix:stdgo.GoString):stdgo.GoInt`](<#function-_commonprefixlenignorecase>)

- [`function _computeBounds(_mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo.strconv.T_floatInfo>):{
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

- [`function _fmtB(_dst:stdgo.Slice<stdgo.GoByte>, _neg:Bool, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo.strconv.T_floatInfo>):stdgo.Slice<stdgo.GoByte>`](<#function-_fmtb>)

- [`function _fmtE(_dst:stdgo.Slice<stdgo.GoByte>, _neg:Bool, _d:stdgo.strconv.T_decimalSlice, _prec:stdgo.GoInt, _fmt:stdgo.GoByte):stdgo.Slice<stdgo.GoByte>`](<#function-_fmte>)

- [`function _fmtF(_dst:stdgo.Slice<stdgo.GoByte>, _neg:Bool, _d:stdgo.strconv.T_decimalSlice, _prec:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>`](<#function-_fmtf>)

- [`function _fmtX(_dst:stdgo.Slice<stdgo.GoByte>, _prec:stdgo.GoInt, _fmt:stdgo.GoByte, _neg:Bool, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo.strconv.T_floatInfo>):stdgo.Slice<stdgo.GoByte>`](<#function-_fmtx>)

- [`function _formatBits(_dst:stdgo.Slice<stdgo.GoByte>, _u:stdgo.GoUInt64, _base:stdgo.GoInt, _neg:Bool, _append_:Bool):{
	_1:stdgo.GoString;
	_0:stdgo.Slice<stdgo.GoByte>;
}`](<#function-_formatbits>)

- [`function _formatDecimal(_d:stdgo.Ref<stdgo.strconv.T_decimalSlice>, _m:stdgo.GoUInt64, _trunc:Bool, _roundUp:Bool, _prec:stdgo.GoInt):Void`](<#function-_formatdecimal>)

- [`function _formatDigits(_dst:stdgo.Slice<stdgo.GoByte>, _shortest:Bool, _neg:Bool, _digs:stdgo.strconv.T_decimalSlice, _prec:stdgo.GoInt, _fmt:stdgo.GoByte):stdgo.Slice<stdgo.GoByte>`](<#function-_formatdigits>)

- [`function _genericFtoa(_dst:stdgo.Slice<stdgo.GoByte>, _val:stdgo.GoFloat64, _fmt:stdgo.GoByte, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>`](<#function-_genericftoa>)

- [`function _index(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoInt`](<#function-_index>)

- [`function _isInGraphicList(_r:stdgo.GoRune):Bool`](<#function-_isingraphiclist>)

- [`function _isPowerOfTwo(_x:stdgo.GoInt):Bool`](<#function-_ispoweroftwo>)

- [`function _leftShift(_a:stdgo.Ref<stdgo.strconv.T_decimal>, _k:stdgo.GoUInt):Void`](<#function-_leftshift>)

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

- [`function _rangeError(_fn:stdgo.GoString, _str:stdgo.GoString):stdgo.Ref<stdgo.strconv.NumError>`](<#function-_rangeerror>)

- [`function _readFloat(_s:stdgo.GoString):{
	_6:Bool;
	_5:stdgo.GoInt;
	_4:Bool;
	_3:Bool;
	_2:Bool;
	_1:stdgo.GoInt;
	_0:stdgo.GoUInt64;
}`](<#function-_readfloat>)

- [`function _rightShift(_a:stdgo.Ref<stdgo.strconv.T_decimal>, _k:stdgo.GoUInt):Void`](<#function-_rightshift>)

- [`function _roundShortest(_d:stdgo.Ref<stdgo.strconv.T_decimal>, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo.strconv.T_floatInfo>):Void`](<#function-_roundshortest>)

- [`function _ryuDigits(_d:stdgo.Ref<stdgo.strconv.T_decimalSlice>, _lower:stdgo.GoUInt64, _central:stdgo.GoUInt64, _upper:stdgo.GoUInt64, _c0:Bool, _cup:Bool):Void`](<#function-_ryudigits>)

- [`function _ryuDigits32(_d:stdgo.Ref<stdgo.strconv.T_decimalSlice>, _lower:stdgo.GoUInt32, _central:stdgo.GoUInt32, _upper:stdgo.GoUInt32, _c0:Bool, _cup:Bool, _endindex:stdgo.GoInt):Void`](<#function-_ryudigits32>)

- [`function _ryuFtoaFixed32(_d:stdgo.Ref<stdgo.strconv.T_decimalSlice>, _mant:stdgo.GoUInt32, _exp:stdgo.GoInt, _prec:stdgo.GoInt):Void`](<#function-_ryuftoafixed32>)

- [`function _ryuFtoaFixed64(_d:stdgo.Ref<stdgo.strconv.T_decimalSlice>, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _prec:stdgo.GoInt):Void`](<#function-_ryuftoafixed64>)

- [`function _ryuFtoaShortest(_d:stdgo.Ref<stdgo.strconv.T_decimalSlice>, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo.strconv.T_floatInfo>):Void`](<#function-_ryuftoashortest>)

- [`function _shouldRoundUp(_a:stdgo.Ref<stdgo.strconv.T_decimal>, _nd:stdgo.GoInt):Bool`](<#function-_shouldroundup>)

- [`function _small(_i:stdgo.GoInt):stdgo.GoString`](<#function-_small>)

- [`function _special(_s:stdgo.GoString):{
	_2:Bool;
	_1:stdgo.GoInt;
	_0:stdgo.GoFloat64;
}`](<#function-_special>)

- [`function _syntaxError(_fn:stdgo.GoString, _str:stdgo.GoString):stdgo.Ref<stdgo.strconv.NumError>`](<#function-_syntaxerror>)

- [`function _trim(_a:stdgo.Ref<stdgo.strconv.T_decimal>):Void`](<#function-_trim>)

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

- [`function baseError(:stdgo.GoString, :stdgo.GoString, :stdgo.GoInt):stdgo.Ref<stdgo.strconv.NumError>`](<#function-baseerror>)

- [`function bitSizeError(:stdgo.GoString, :stdgo.GoString, :stdgo.GoInt):stdgo.Ref<stdgo.strconv.NumError>`](<#function-bitsizeerror>)

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

- [`function newDecimal(_i:stdgo.GoUInt64):stdgo.Ref<stdgo.strconv.T_decimal>`](<#function-newdecimal>)

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
import stdgo.strconv.Strconv
```


```haxe
final _detailedPowersOfTenMaxExp10:stdgo.GoUInt64 = ((347i64 : stdgo.StdGoTypes.GoUInt64))
```



detailedPowersOfTen\{Min,Max\}Exp10 is the power of 10 represented by the
first and last rows of detailedPowersOfTen. Both bounds are inclusive.  

```haxe
final _detailedPowersOfTenMinExp10:stdgo.GoUInt64 = ((0i64 : stdgo.StdGoTypes.GoUInt64))
```



detailedPowersOfTen\{Min,Max\}Exp10 is the power of 10 represented by the
first and last rows of detailedPowersOfTen. Both bounds are inclusive.  

```haxe
final _digits:stdgo.GoString = (("0123456789abcdefghijklmnopqrstuvwxyz" : stdgo.GoString))
```


```haxe
final _fastSmalls:Bool = true
```



enable fast path for small integers  

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
final _intSize:stdgo.GoUInt64 = ((32i64 : stdgo.StdGoTypes.GoUInt64))
```


```haxe
final _lowerhex:stdgo.GoString = (("0123456789abcdef" : stdgo.GoString))
```


```haxe
final _maxShift:stdgo.GoUInt64 = ((28i64 : stdgo.StdGoTypes.GoUInt64))
```


```haxe
final _maxUint64:stdgo.GoUInt64 = ((-1i64 : stdgo.StdGoTypes.GoUInt64))
```


```haxe
final _nSmalls:stdgo.GoUInt64 = ((100i64 : stdgo.StdGoTypes.GoUInt64))
```


```haxe
final _smallsString:stdgo.GoString = (("00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899" : stdgo.GoString))
```


```haxe
final _uintSize:stdgo.GoUInt64 = ((32i64 : stdgo.StdGoTypes.GoUInt64))
```



Maximum shift that we can do in one pass without overflow.
A uint has 32 or 64 bits, and we have to be able to accommodate 9\<\<k.  

```haxe
final _upperhex:stdgo.GoString = (("0123456789ABCDEF" : stdgo.GoString))
```


```haxe
final intSize:stdgo.GoUInt64 = ((32i64 : stdgo.StdGoTypes.GoUInt64))
```



IntSize is the size in bits of an int or uint value.  

# Variables


```haxe
import stdgo.strconv.Strconv
```


```haxe
var _detailedPowersOfTen:stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt64>>
```



detailedPowersOfTen contains 128\-bit mantissa approximations \(rounded down\)
to the powers of 10. For example:  

```
   - 1e43 ≈ (0xE596B7B0_C643C719                   * (2 ** 79))
   - 1e43 = (0xE596B7B0_C643C719_6D9CCD05_D0000000 * (2 ** 15))
```

The mantissas are explicitly listed. The exponents are implied by a linear
expression with slope 217706.0/65536.0 ≈ log\(10\)/log\(2\).  


The table was generated by
https://github.com/google/wuffs/blob/ba3818cb6b473a2ed0b38ecfc07dbbd3a97e8ae7/script/print-mpb-powers-of-10.go  

```haxe
var _float32info:stdgo.strconv.T_floatInfo
```


```haxe
var _float32pow10:stdgo.Slice<stdgo.GoFloat32>
```


```haxe
var _float64info:stdgo.strconv.T_floatInfo
```


```haxe
var _float64pow10:stdgo.Slice<stdgo.GoFloat64>
```



Exact powers of 10.  

```haxe
var _isGraphic:stdgo.Slice<stdgo.GoUInt16>
```



isGraphic lists the graphic runes not matched by IsPrint.  

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
var _leftcheats:stdgo.Slice<stdgo.strconv.T_leftCheat>
```


```haxe
var _optimize:Bool
```



set to false to force slow\-path conversions for testing  

```haxe
var _powtab:stdgo.Slice<stdgo.GoInt>
```



decimal power of ten to binary power of two.  

```haxe
var _uint64pow10:stdgo.GoArray<stdgo.GoUInt64>
```


```haxe
var errRange:stdgo.Error
```



ErrRange indicates that a value is out of range for the target type.  

```haxe
var errSyntax:stdgo.Error
```



ErrSyntax indicates that a value does not have the right syntax for the target type.  

# Functions


```haxe
import stdgo.strconv.Strconv
```


## function \_appendEscapedRune


```haxe
function _appendEscapedRune(_buf:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune, _quote:stdgo.GoByte, asciionly:Bool, _graphicOnly:Bool):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Strconv.hx#L4793>)


## function \_appendQuotedRuneWith


```haxe
function _appendQuotedRuneWith(_buf:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune, _quote:stdgo.GoByte, asciionly:Bool, _graphicOnly:Bool):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Strconv.hx#L4784>)


## function \_appendQuotedWith


```haxe
function _appendQuotedWith(_buf:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString, _quote:stdgo.GoByte, asciionly:Bool, _graphicOnly:Bool):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Strconv.hx#L4753>)


## function \_atof32


```haxe
function _atof32(_s:stdgo.GoString):{
	_2:stdgo.Error;
	_1:stdgo.GoInt;
	_0:stdgo.GoFloat32;
}
```


[\(view code\)](<./Strconv.hx#L2915>)


## function \_atof32exact


```haxe
function _atof32exact(_mantissa:stdgo.GoUInt64, _exp:stdgo.GoInt, _neg:Bool):{
	_1:Bool;
	_0:stdgo.GoFloat32;
}
```



If possible to compute mantissa\*10^exp to 32\-bit float f exactly,
entirely in floating\-point math, do so, avoiding the machinery above.  

[\(view code\)](<./Strconv.hx#L2834>)


## function \_atof64


```haxe
function _atof64(_s:stdgo.GoString):{
	_2:stdgo.Error;
	_1:stdgo.GoInt;
	_0:stdgo.GoFloat64;
}
```


[\(view code\)](<./Strconv.hx#L2962>)


## function \_atof64exact


```haxe
function _atof64exact(_mantissa:stdgo.GoUInt64, _exp:stdgo.GoInt, _neg:Bool):{
	_1:Bool;
	_0:stdgo.GoFloat64;
}
```



If possible to convert decimal representation to 64\-bit float f exactly,
entirely in floating\-point math, do so, avoiding the expense of decimalToFloatBits.
Three common cases:  

```
	value is exact integer
	value is exact integer * exact power of ten
	value is exact integer / exact power of ten
```

These all produce potentially inexact but correctly rounded answers.  

[\(view code\)](<./Strconv.hx#L2805>)


## function \_atofHex


```haxe
function _atofHex(_s:stdgo.GoString, _flt:stdgo.Ref<stdgo.strconv.T_floatInfo>, _mantissa:stdgo.GoUInt64, _exp:stdgo.GoInt, _neg:Bool, _trunc:Bool):{
	_1:stdgo.Error;
	_0:stdgo.GoFloat64;
}
```



atofHex converts the hex floating\-point string s
to a rounded float32 or float64 value \(depending on flt==&float32info or flt==&float64info\)
and returns it as a float64.
The string s has already been parsed into a mantissa, exponent, and sign \(neg==true for negative\).
If trunc is true, trailing non\-zero bits have been omitted from the mantissa.  

[\(view code\)](<./Strconv.hx#L2866>)


## function \_baseError


```haxe
function _baseError(_fn:stdgo.GoString, _str:stdgo.GoString, _base:stdgo.GoInt):stdgo.Ref<stdgo.strconv.NumError>
```


[\(view code\)](<./Strconv.hx#L3086>)


## function \_bigFtoa


```haxe
function _bigFtoa(_dst:stdgo.Slice<stdgo.GoByte>, _prec:stdgo.GoInt, _fmt:stdgo.GoByte, _neg:Bool, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo.strconv.T_floatInfo>):stdgo.Slice<stdgo.GoByte>
```



bigFtoa uses multiprecision computations to format a float.  

[\(view code\)](<./Strconv.hx#L3722>)


## function \_bitSizeError


```haxe
function _bitSizeError(_fn:stdgo.GoString, _str:stdgo.GoString, _bitSize:stdgo.GoInt):stdgo.Ref<stdgo.strconv.NumError>
```


[\(view code\)](<./Strconv.hx#L3089>)


## function \_bsearch16


```haxe
function _bsearch16(_a:stdgo.Slice<stdgo.GoUInt16>, _x:stdgo.GoUInt16):stdgo.GoInt
```



bsearch16 returns the smallest i such that a\[i\] \>= x.
If there is no such i, bsearch16 returns len\(a\).  

[\(view code\)](<./Strconv.hx#L5309>)


## function \_bsearch32


```haxe
function _bsearch32(_a:stdgo.Slice<stdgo.GoUInt32>, _x:stdgo.GoUInt32):stdgo.GoInt
```



bsearch32 returns the smallest i such that a\[i\] \>= x.
If there is no such i, bsearch32 returns len\(a\).  

[\(view code\)](<./Strconv.hx#L5325>)


## function \_cloneString


```haxe
function _cloneString(_x:stdgo.GoString):stdgo.GoString
```



cloneString returns a string copy of x.  


All ParseXXX functions allow the input string to escape to the error value.
This hurts strconv.ParseXXX\(string\(b\)\) calls where b is \[\]byte since
the conversion from \[\]byte must allocate a string on the heap.
If we assume errors are infrequent, then we can avoid escaping the input
back to the output by copying it first. This allows the compiler to call
strconv.ParseXXX without a heap allocation for most \[\]byte to string
conversions, since it can now prove that the string cannot escape Parse.  


TODO: Use strings.Clone instead? However, we cannot depend on "strings"
since it incurs a transitive dependency on "unicode".
Either move strings.Clone to an internal/bytealg or make the
"strings" to "unicode" dependency lighter \(see https://go.dev/issue/54098\).  

[\(view code\)](<./Strconv.hx#L3077>)


## function \_commonPrefixLenIgnoreCase


```haxe
function _commonPrefixLenIgnoreCase(_s:stdgo.GoString, _prefix:stdgo.GoString):stdgo.GoInt
```



commonPrefixLenIgnoreCase returns the length of the common
prefix of s and prefix, with the character case of s ignored.
The prefix argument must be all lower\-case.  

[\(view code\)](<./Strconv.hx#L2560>)


## function \_computeBounds


```haxe
function _computeBounds(_mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo.strconv.T_floatInfo>):{
	_3:stdgo.GoInt;
	_2:stdgo.GoUInt64;
	_1:stdgo.GoUInt64;
	_0:stdgo.GoUInt64;
}
```



computeBounds returns a floating\-point vector \(l, c, u\)×2^e2
where the mantissas are 55\-bit \(or 26\-bit\) integers, describing the interval
represented by the input float64 or float32.  

[\(view code\)](<./Strconv.hx#L4360>)


## function \_contains


```haxe
function _contains(_s:stdgo.GoString, _c:stdgo.GoByte):Bool
```



contains reports whether the string contains the byte c.  

[\(view code\)](<./Strconv.hx#L4744>)


## function \_convErr


```haxe
function _convErr(_err:stdgo.Error, _s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.Error;
}
```



convErr splits an error returned by parseFloatPrefix
into a syntax or range error for ParseComplex.  

[\(view code\)](<./Strconv.hx#L2440>)


## function \_digitZero


```haxe
function _digitZero(_dst:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt
```


[\(view code\)](<./Strconv.hx#L3343>)


## function \_divisibleByPower5


```haxe
function _divisibleByPower5(_m:stdgo.GoUInt64, _k:stdgo.GoInt):Bool
```


[\(view code\)](<./Strconv.hx#L4540>)


## function \_divmod1e9


```haxe
function _divmod1e9(_x:stdgo.GoUInt64):{
	_1:stdgo.GoUInt32;
	_0:stdgo.GoUInt32;
}
```



divmod1e9 computes quotient and remainder of division by 1e9,
avoiding runtime uint64 division on 32\-bit platforms.  

[\(view code\)](<./Strconv.hx#L4559>)


## function \_eiselLemire32


```haxe
function _eiselLemire32(_man:stdgo.GoUInt64, _exp10:stdgo.GoInt, _neg:Bool):{
	_1:Bool;
	_0:stdgo.GoFloat32;
}
```


[\(view code\)](<./Strconv.hx#L3537>)


## function \_eiselLemire64


```haxe
function _eiselLemire64(_man:stdgo.GoUInt64, _exp10:stdgo.GoInt, _neg:Bool):{
	_1:Bool;
	_0:stdgo.GoFloat64;
}
```


[\(view code\)](<./Strconv.hx#L3484>)


## function \_fmtB


```haxe
function _fmtB(_dst:stdgo.Slice<stdgo.GoByte>, _neg:Bool, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo.strconv.T_floatInfo>):stdgo.Slice<stdgo.GoByte>
```



%b: \-ddddddddp±ddd  

[\(view code\)](<./Strconv.hx#L3943>)


## function \_fmtE


```haxe
function _fmtE(_dst:stdgo.Slice<stdgo.GoByte>, _neg:Bool, _d:stdgo.strconv.T_decimalSlice, _prec:stdgo.GoInt, _fmt:stdgo.GoByte):stdgo.Slice<stdgo.GoByte>
```



%e: \-d.ddddde±dd  

[\(view code\)](<./Strconv.hx#L3864>)


## function \_fmtF


```haxe
function _fmtF(_dst:stdgo.Slice<stdgo.GoByte>, _neg:Bool, _d:stdgo.strconv.T_decimalSlice, _prec:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>
```



%f: \-ddddddd.ddddd  

[\(view code\)](<./Strconv.hx#L3909>)


## function \_fmtX


```haxe
function _fmtX(_dst:stdgo.Slice<stdgo.GoByte>, _prec:stdgo.GoInt, _fmt:stdgo.GoByte, _neg:Bool, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo.strconv.T_floatInfo>):stdgo.Slice<stdgo.GoByte>
```



%x: \-0x1.yyyyyyyyp±ddd or \-0x0p\+0. \(y is hex digit, d is decimal digit\)  

[\(view code\)](<./Strconv.hx#L3965>)


## function \_formatBits


```haxe
function _formatBits(_dst:stdgo.Slice<stdgo.GoByte>, _u:stdgo.GoUInt64, _base:stdgo.GoInt, _neg:Bool, _append_:Bool):{
	_1:stdgo.GoString;
	_0:stdgo.Slice<stdgo.GoByte>;
}
```



formatBits computes the string representation of u in the given base.
If neg is set, u is treated as negative int64 value. If append\_ is
set, the string is appended to dst and the resulting byte slice is
returned as the first result value; otherwise the string is returned
as the second result value.  

[\(view code\)](<./Strconv.hx#L4660>)


## function \_formatDecimal


```haxe
function _formatDecimal(_d:stdgo.Ref<stdgo.strconv.T_decimalSlice>, _m:stdgo.GoUInt64, _trunc:Bool, _roundUp:Bool, _prec:stdgo.GoInt):Void
```



formatDecimal fills d with at most prec decimal digits
of mantissa m. The boolean trunc indicates whether m
is truncated compared to the original number being formatted.  

[\(view code\)](<./Strconv.hx#L4151>)


## function \_formatDigits


```haxe
function _formatDigits(_dst:stdgo.Slice<stdgo.GoByte>, _shortest:Bool, _neg:Bool, _digs:stdgo.strconv.T_decimalSlice, _prec:stdgo.GoInt, _fmt:stdgo.GoByte):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Strconv.hx#L3759>)


## function \_genericFtoa


```haxe
function _genericFtoa(_dst:stdgo.Slice<stdgo.GoByte>, _val:stdgo.GoFloat64, _fmt:stdgo.GoByte, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>
```


[\(view code\)](<./Strconv.hx#L3624>)


## function \_index


```haxe
function _index(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoInt
```



index returns the index of the first instance of c in s, or \-1 if missing.  

[\(view code\)](<./Strconv.hx#L3320>)


## function \_isInGraphicList


```haxe
function _isInGraphicList(_r:stdgo.GoRune):Bool
```



isInGraphicList reports whether the rune is in the isGraphic list. This separation
from IsGraphic allows quoteWith to avoid two calls to IsPrint.
Should be called only if IsPrint fails.  

[\(view code\)](<./Strconv.hx#L5389>)


## function \_isPowerOfTwo


```haxe
function _isPowerOfTwo(_x:stdgo.GoInt):Bool
```


[\(view code\)](<./Strconv.hx#L4738>)


## function \_leftShift


```haxe
function _leftShift(_a:stdgo.Ref<stdgo.strconv.T_decimal>, _k:stdgo.GoUInt):Void
```



Binary shift left \(\* 2\) by k bits.  k \<= maxShift to avoid overflow.  

[\(view code\)](<./Strconv.hx#L3428>)


## function \_lower


```haxe
function _lower(_c:stdgo.GoByte):stdgo.GoByte
```



lower\(c\) is a lower\-case letter if and only if
c is either that lower\-case letter or the equivalent upper\-case letter.
Instead of writing c == 'x' || c == 'X' one can write lower\(c\) == 'x'.
Note that lower of non\-letters can produce other non\-letters.  

[\(view code\)](<./Strconv.hx#L3058>)


## function \_max


```haxe
function _max(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Strconv.hx#L4039>)


## function \_min


```haxe
function _min(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Strconv.hx#L4033>)


## function \_mulByLog10Log2


```haxe
function _mulByLog10Log2(_x:stdgo.GoInt):stdgo.GoInt
```



mulByLog10Log2 returns math.Floor\(x \* log\(10\)/log\(2\)\) for an integer x in
the range \-500 \<= x && x \<= \+500.  


The range restriction lets us work in faster integer arithmetic instead of
slower floating point arithmetic. Correctness is verified by unit tests.  

[\(view code\)](<./Strconv.hx#L4352>)


## function \_mulByLog2Log10


```haxe
function _mulByLog2Log10(_x:stdgo.GoInt):stdgo.GoInt
```



mulByLog2Log10 returns math.Floor\(x \* log\(2\)/log\(10\)\) for an integer x in
the range \-1600 \<= x && x \<= \+1600.  


The range restriction lets us work in faster integer arithmetic instead of
slower floating point arithmetic. Correctness is verified by unit tests.  

[\(view code\)](<./Strconv.hx#L4342>)


## function \_mult128bitPow10


```haxe
function _mult128bitPow10(_m:stdgo.GoUInt64, _e2:stdgo.GoInt, _q:stdgo.GoInt):{
	_2:Bool;
	_1:stdgo.GoInt;
	_0:stdgo.GoUInt64;
}
```



mult128bitPow10 takes a floating\-point input with a 55\-bit
mantissa and multiplies it with 10^q. The resulting mantissa
is m\*P \>\> 119 where P is a 128\-bit element of the detailedPowersOfTen tables.
It is typically 63 or 64\-bit wide.
The returned boolean is true is all trimmed bits were zero.  


That is:  

```
	m*2^e2 * round(10^q) = resM * 2^resE + ε
	exact = ε == 0
```
[\(view code\)](<./Strconv.hx#L4521>)


## function \_mult64bitPow10


```haxe
function _mult64bitPow10(_m:stdgo.GoUInt32, _e2:stdgo.GoInt, _q:stdgo.GoInt):{
	_2:Bool;
	_1:stdgo.GoInt;
	_0:stdgo.GoUInt32;
}
```



mult64bitPow10 takes a floating\-point input with a 25\-bit
mantissa and multiplies it with 10^q. The resulting mantissa
is m\*P \>\> 57 where P is a 64\-bit element of the detailedPowersOfTen tables.
It is typically 31 or 32\-bit wide.
The returned boolean is true if all trimmed bits were zero.  


That is:  

```
	m*2^e2 * round(10^q) = resM * 2^resE + ε
	exact = ε == 0
```
[\(view code\)](<./Strconv.hx#L4493>)


## function \_parseFloatPrefix


```haxe
function _parseFloatPrefix(_s:stdgo.GoString, _bitSize:stdgo.GoInt):{
	_2:stdgo.Error;
	_1:stdgo.GoInt;
	_0:stdgo.GoFloat64;
}
```


[\(view code\)](<./Strconv.hx#L3045>)


## function \_prefixIsLessThan


```haxe
function _prefixIsLessThan(_b:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):Bool
```



Is the leading prefix of b lexicographically less than s?  

[\(view code\)](<./Strconv.hx#L3411>)


## function \_quoteRuneWith


```haxe
function _quoteRuneWith(_r:stdgo.GoRune, _quote:stdgo.GoByte, asciionly:Bool, _graphicOnly:Bool):stdgo.GoString
```


[\(view code\)](<./Strconv.hx#L4750>)


## function \_quoteWith


```haxe
function _quoteWith(_s:stdgo.GoString, _quote:stdgo.GoByte, asciionly:Bool, _graphicOnly:Bool):stdgo.GoString
```


[\(view code\)](<./Strconv.hx#L4747>)


## function \_rangeError


```haxe
function _rangeError(_fn:stdgo.GoString, _str:stdgo.GoString):stdgo.Ref<stdgo.strconv.NumError>
```


[\(view code\)](<./Strconv.hx#L3083>)


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



readFloat reads a decimal or hexadecimal mantissa and exponent from a float
string representation in s; the number may be followed by other characters.
readFloat reports the number of bytes consumed \(i\), and whether the number
is valid \(ok\).  

[\(view code\)](<./Strconv.hx#L2641>)


## function \_rightShift


```haxe
function _rightShift(_a:stdgo.Ref<stdgo.strconv.T_decimal>, _k:stdgo.GoUInt):Void
```



Binary shift right \(/ 2\) by k bits.  k \<= maxShift to avoid overflow.  

[\(view code\)](<./Strconv.hx#L3365>)


## function \_roundShortest


```haxe
function _roundShortest(_d:stdgo.Ref<stdgo.strconv.T_decimal>, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo.strconv.T_floatInfo>):Void
```



roundShortest rounds d \(= mant \* 2^exp\) to the shortest number of digits
that will let the original floating point value be precisely reconstructed.  

[\(view code\)](<./Strconv.hx#L3793>)


## function \_ryuDigits


```haxe
function _ryuDigits(_d:stdgo.Ref<stdgo.strconv.T_decimalSlice>, _lower:stdgo.GoUInt64, _central:stdgo.GoUInt64, _upper:stdgo.GoUInt64, _c0:Bool, _cup:Bool):Void
```


[\(view code\)](<./Strconv.hx#L4386>)


## function \_ryuDigits32


```haxe
function _ryuDigits32(_d:stdgo.Ref<stdgo.strconv.T_decimalSlice>, _lower:stdgo.GoUInt32, _central:stdgo.GoUInt32, _upper:stdgo.GoUInt32, _c0:Bool, _cup:Bool, _endindex:stdgo.GoInt):Void
```



ryuDigits32 emits decimal digits for a number less than 1e9.  

[\(view code\)](<./Strconv.hx#L4428>)


## function \_ryuFtoaFixed32


```haxe
function _ryuFtoaFixed32(_d:stdgo.Ref<stdgo.strconv.T_decimalSlice>, _mant:stdgo.GoUInt32, _exp:stdgo.GoInt, _prec:stdgo.GoInt):Void
```



ryuFtoaFixed32 formats mant\*\(2^exp\) with prec decimal digits.  

[\(view code\)](<./Strconv.hx#L4048>)


## function \_ryuFtoaFixed64


```haxe
function _ryuFtoaFixed64(_d:stdgo.Ref<stdgo.strconv.T_decimalSlice>, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _prec:stdgo.GoInt):Void
```



ryuFtoaFixed64 formats mant\*\(2^exp\) with prec decimal digits.  

[\(view code\)](<./Strconv.hx#L4100>)


## function \_ryuFtoaShortest


```haxe
function _ryuFtoaShortest(_d:stdgo.Ref<stdgo.strconv.T_decimalSlice>, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<stdgo.strconv.T_floatInfo>):Void
```



ryuFtoaShortest formats mant\*2^exp with prec decimal digits.  

[\(view code\)](<./Strconv.hx#L4218>)


## function \_shouldRoundUp


```haxe
function _shouldRoundUp(_a:stdgo.Ref<stdgo.strconv.T_decimal>, _nd:stdgo.GoInt):Bool
```



If we chop a at nd digits, should we round up?  

[\(view code\)](<./Strconv.hx#L3472>)


## function \_small


```haxe
function _small(_i:stdgo.GoInt):stdgo.GoString
```



small returns the string for an i with 0 \<= i \< nSmalls.  

[\(view code\)](<./Strconv.hx#L4647>)


## function \_special


```haxe
function _special(_s:stdgo.GoString):{
	_2:Bool;
	_1:stdgo.GoInt;
	_0:stdgo.GoFloat64;
}
```



special returns the floating\-point value for the special,
possibly signed floating\-point representations inf, infinity,
and NaN. The result is ok if a prefix of s contains one
of these representations and n is the length of that prefix.
The character case is ignored.  

[\(view code\)](<./Strconv.hx#L2586>)


## function \_syntaxError


```haxe
function _syntaxError(_fn:stdgo.GoString, _str:stdgo.GoString):stdgo.Ref<stdgo.strconv.NumError>
```


[\(view code\)](<./Strconv.hx#L3080>)


## function \_trim


```haxe
function _trim(_a:stdgo.Ref<stdgo.strconv.T_decimal>):Void
```



trim trailing zeros from number.
\(They are meaningless; the decimal point is tracked
independent of the number of digits.\)  

[\(view code\)](<./Strconv.hx#L3354>)


## function \_underscoreOK


```haxe
function _underscoreOK(_s:stdgo.GoString):Bool
```



underscoreOK reports whether the underscores in s are allowed.
Checking them in this one function lets all the parsers skip over them simply.
Underscore must appear only between digits or between a base prefix and a digit.  

[\(view code\)](<./Strconv.hx#L3286>)


## function \_unhex


```haxe
function _unhex(_b:stdgo.GoByte):{
	_1:Bool;
	_0:stdgo.GoRune;
}
```


[\(view code\)](<./Strconv.hx#L5012>)


## function \_unquote


```haxe
function _unquote(_in:stdgo.GoString, _unescape:Bool):{
	_2:stdgo.Error;
	_1:stdgo.GoString;
	_0:stdgo.GoString;
}
```



unquote parses a quoted string at the start of the input,
returning the parsed prefix, the remaining suffix, and any parse errors.
If unescape is true, the parsed prefix is unescaped,
otherwise the input prefix is provided verbatim.  

[\(view code\)](<./Strconv.hx#L5205>)


## function appendBool


```haxe
function appendBool(_dst:stdgo.Slice<stdgo.GoByte>, _b:Bool):stdgo.Slice<stdgo.GoByte>
```



AppendBool appends "true" or "false", according to the value of b,
to dst and returns the extended buffer.  

### exampleAppendBool


<details><summary></summary>
<p>


```haxe
function exampleAppendBool():Void {
        var _b = (("bool:" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        _b = stdgo.strconv.Strconv.appendBool(_b, true);
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((_b : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L2430>)


## function appendFloat


```haxe
function appendFloat(_dst:stdgo.Slice<stdgo.GoByte>, _f:stdgo.GoFloat64, _fmt:stdgo.GoByte, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>
```



AppendFloat appends the string form of the floating\-point number f,
as generated by FormatFloat, to dst and returns the extended buffer.  

### exampleAppendFloat


<details><summary></summary>
<p>


```haxe
function exampleAppendFloat():Void {
        var _b32 = (("float32:" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        _b32 = stdgo.strconv.Strconv.appendFloat(_b32, (3.1415926535 : stdgo.StdGoTypes.GoFloat64), (69 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), (32 : stdgo.StdGoTypes.GoInt));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((_b32 : stdgo.GoString)));
        var _b64 = (("float64:" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        _b64 = stdgo.strconv.Strconv.appendFloat(_b64, (3.1415926535 : stdgo.StdGoTypes.GoFloat64), (69 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((_b64 : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L3621>)


## function appendInt


```haxe
function appendInt(_dst:stdgo.Slice<stdgo.GoByte>, _i:stdgo.GoInt64, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>
```



AppendInt appends the string form of the integer i,
as generated by FormatInt, to dst and returns the extended buffer.  

### exampleAppendInt


<details><summary></summary>
<p>


```haxe
function exampleAppendInt():Void {
        var _b10 = (("int (base 10):" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        _b10 = stdgo.strconv.Strconv.appendInt(_b10, (-42i64 : stdgo.StdGoTypes.GoInt64), (10 : stdgo.StdGoTypes.GoInt));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((_b10 : stdgo.GoString)));
        var _b16 = (("int (base 16):" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        _b16 = stdgo.strconv.Strconv.appendInt(_b16, (-42i64 : stdgo.StdGoTypes.GoInt64), (16 : stdgo.StdGoTypes.GoInt));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((_b16 : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4620>)


## function appendQuote


```haxe
function appendQuote(_dst:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoByte>
```



AppendQuote appends a double\-quoted Go string literal representing s,
as generated by Quote, to dst and returns the extended buffer.  

### exampleAppendQuote


<details><summary></summary>
<p>


```haxe
function exampleAppendQuote():Void {
        var _b = (("quote:" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        _b = stdgo.strconv.Strconv.appendQuote(_b, ("\"Fran & Freddie\'s Diner\"" : stdgo.GoString));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((_b : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4901>)


## function appendQuoteRune


```haxe
function appendQuoteRune(_dst:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.Slice<stdgo.GoByte>
```



AppendQuoteRune appends a single\-quoted Go character literal representing the rune,
as generated by QuoteRune, to dst and returns the extended buffer.  

### exampleAppendQuoteRune


<details><summary></summary>
<p>


```haxe
function exampleAppendQuoteRune():Void {
        var _b = (("rune:" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        _b = stdgo.strconv.Strconv.appendQuoteRune(_b, (9786 : stdgo.StdGoTypes.GoInt32));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((_b : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4949>)


## function appendQuoteRuneToASCII


```haxe
function appendQuoteRuneToASCII(_dst:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.Slice<stdgo.GoByte>
```



AppendQuoteRuneToASCII appends a single\-quoted Go character literal representing the rune,
as generated by QuoteRuneToASCII, to dst and returns the extended buffer.  

### exampleAppendQuoteRuneToASCII


<details><summary></summary>
<p>


```haxe
function exampleAppendQuoteRuneToASCII():Void {
        var _b = (("rune (ascii):" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        _b = stdgo.strconv.Strconv.appendQuoteRuneToASCII(_b, (9786 : stdgo.StdGoTypes.GoInt32));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((_b : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4967>)


## function appendQuoteRuneToGraphic


```haxe
function appendQuoteRuneToGraphic(_dst:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.Slice<stdgo.GoByte>
```



AppendQuoteRuneToGraphic appends a single\-quoted Go character literal representing the rune,
as generated by QuoteRuneToGraphic, to dst and returns the extended buffer.  

[\(view code\)](<./Strconv.hx#L4985>)


## function appendQuoteToASCII


```haxe
function appendQuoteToASCII(_dst:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoByte>
```



AppendQuoteToASCII appends a double\-quoted Go string literal representing s,
as generated by QuoteToASCII, to dst and returns the extended buffer.  

### exampleAppendQuoteToASCII


<details><summary></summary>
<p>


```haxe
function exampleAppendQuoteToASCII():Void {
        var _b = (("quote (ascii):" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        _b = stdgo.strconv.Strconv.appendQuoteToASCII(_b, ("\"Fran & Freddie\'s Diner\"" : stdgo.GoString));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((_b : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4916>)


## function appendQuoteToGraphic


```haxe
function appendQuoteToGraphic(_dst:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoByte>
```



AppendQuoteToGraphic appends a double\-quoted Go string literal representing s,
as generated by QuoteToGraphic, to dst and returns the extended buffer.  

[\(view code\)](<./Strconv.hx#L4932>)


## function appendUint


```haxe
function appendUint(_dst:stdgo.Slice<stdgo.GoByte>, _i:stdgo.GoUInt64, _base:stdgo.GoInt):stdgo.Slice<stdgo.GoByte>
```



AppendUint appends the string form of the unsigned integer i,
as generated by FormatUint, to dst and returns the extended buffer.  

### exampleAppendUint


<details><summary></summary>
<p>


```haxe
function exampleAppendUint():Void {
        var _b10 = (("uint (base 10):" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        _b10 = stdgo.strconv.Strconv.appendUint(_b10, (42i64 : stdgo.StdGoTypes.GoUInt64), (10 : stdgo.StdGoTypes.GoInt));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((_b10 : stdgo.GoString)));
        var _b16 = (("uint (base 16):" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        _b16 = stdgo.strconv.Strconv.appendUint(_b16, (42i64 : stdgo.StdGoTypes.GoUInt64), (16 : stdgo.StdGoTypes.GoInt));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((_b16 : stdgo.GoString)));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4634>)


## function atoi


```haxe
function atoi(_s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.GoInt;
}
```



Atoi is equivalent to ParseInt\(s, 10, 0\), converted to type int.  

### exampleAtoi


<details><summary></summary>
<p>


```haxe
function exampleAtoi():Void {
        var _v:stdgo.GoString = ("10" : stdgo.GoString);
        {
            var __tmp__ = stdgo.strconv.Strconv.atoi(_v), _s:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L3244>)


## function baseError


```haxe
function baseError(:stdgo.GoString, :stdgo.GoString, :stdgo.GoInt):stdgo.Ref<stdgo.strconv.NumError>
```


[\(view code\)](<./Strconv.hx#L2204>)


## function bitSizeError


```haxe
function bitSizeError(:stdgo.GoString, :stdgo.GoString, :stdgo.GoInt):stdgo.Ref<stdgo.strconv.NumError>
```


[\(view code\)](<./Strconv.hx#L2198>)


## function canBackquote


```haxe
function canBackquote(_s:stdgo.GoString):Bool
```



CanBackquote reports whether the string s can be represented
unchanged as a single\-line backquoted string without control
characters other than tab.  

### exampleCanBackquote


<details><summary></summary>
<p>


```haxe
function exampleCanBackquote():Void {
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strconv.Strconv.canBackquote(("Fran & Freddie\'s Diner ☺" : stdgo.GoString))));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.strconv.Strconv.canBackquote(("`can\'t backquote this`" : stdgo.GoString))));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4993>)


## function formatBool


```haxe
function formatBool(_b:Bool):stdgo.GoString
```



FormatBool returns "true" or "false" according to the value of b.  

### exampleFormatBool


<details><summary></summary>
<p>


```haxe
function exampleFormatBool():Void {
        var _v:Bool = true;
        var _s:stdgo.GoString = stdgo.strconv.Strconv.formatBool(_v);
        stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L2420>)


## function formatComplex


```haxe
function formatComplex(_c:stdgo.GoComplex128, _fmt:stdgo.GoByte, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):stdgo.GoString
```



FormatComplex converts the complex number c to a string of the
form \(a\+bi\) where a and b are the real and imaginary parts,
formatted according to the format fmt and precision prec.  


The format fmt and precision prec have the same meaning as in FormatFloat.
It rounds the result assuming that the original was obtained from a complex
value of bitSize bits, which must be 64 for complex64 and 128 for complex128.  

[\(view code\)](<./Strconv.hx#L3332>)


## function formatFloat


```haxe
function formatFloat(_f:stdgo.GoFloat64, _fmt:stdgo.GoByte, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):stdgo.GoString
```



FormatFloat converts the floating\-point number f to a string,
according to the format fmt and precision prec. It rounds the
result assuming that the original was obtained from a floating\-point
value of bitSize bits \(32 for float32, 64 for float64\).  


The format fmt is one of
'b' \(\-ddddp±ddd, a binary exponent\),
'e' \(\-d.dddde±dd, a decimal exponent\),
'E' \(\-d.ddddE±dd, a decimal exponent\),
'f' \(\-ddd.dddd, no exponent\),
'g' \('e' for large exponents, 'f' otherwise\),
'G' \('E' for large exponents, 'f' otherwise\),
'x' \(\-0xd.ddddp±ddd, a hexadecimal fraction and binary exponent\), or
'X' \(\-0Xd.ddddP±ddd, a hexadecimal fraction and binary exponent\).  


The precision prec controls the number of digits \(excluding the exponent\)
printed by the 'e', 'E', 'f', 'g', 'G', 'x', and 'X' formats.
For 'e', 'E', 'f', 'x', and 'X', it is the number of digits after the decimal point.
For 'g' and 'G' it is the maximum number of significant digits \(trailing
zeros are removed\).
The special precision \-1 uses the smallest number of digits
necessary such that ParseFloat will return f exactly.  

### exampleFormatFloat


<details><summary></summary>
<p>


```haxe
function exampleFormatFloat():Void {
        var _v:stdgo.StdGoTypes.GoFloat64 = (3.1415926535 : stdgo.StdGoTypes.GoFloat64);
        var _s32:stdgo.GoString = stdgo.strconv.Strconv.formatFloat(_v, (69 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), (32 : stdgo.StdGoTypes.GoInt));
        stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s32), stdgo.Go.toInterface(_s32));
        var _s64:stdgo.GoString = stdgo.strconv.Strconv.formatFloat(_v, (69 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt));
        stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s64), stdgo.Go.toInterface(_s64));
        var _fmt64:stdgo.GoString = stdgo.strconv.Strconv.formatFloat(_v, (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt));
        stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_fmt64), stdgo.Go.toInterface(_fmt64));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L3614>)


## function formatInt


```haxe
function formatInt(_i:stdgo.GoInt64, _base:stdgo.GoInt):stdgo.GoString
```



FormatInt returns the string representation of i in the given base,
for 2 \<= base \<= 36. The result uses the lower\-case letters 'a' to 'z'
for digit values \>= 10.  

### exampleFormatInt


<details><summary></summary>
<p>


```haxe
function exampleFormatInt():Void {
        var _v:stdgo.StdGoTypes.GoInt64 = (-42i64 : stdgo.StdGoTypes.GoInt64);
        var _s10:stdgo.GoString = stdgo.strconv.Strconv.formatInt(_v, (10 : stdgo.StdGoTypes.GoInt));
        stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s10), stdgo.Go.toInterface(_s10));
        var _s16:stdgo.GoString = stdgo.strconv.Strconv.formatInt(_v, (16 : stdgo.StdGoTypes.GoInt));
        stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s16), stdgo.Go.toInterface(_s16));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4603>)


## function formatUint


```haxe
function formatUint(_i:stdgo.GoUInt64, _base:stdgo.GoInt):stdgo.GoString
```



FormatUint returns the string representation of i in the given base,
for 2 \<= base \<= 36. The result uses the lower\-case letters 'a' to 'z'
for digit values \>= 10.  

### exampleFormatUint


<details><summary></summary>
<p>


```haxe
function exampleFormatUint():Void {
        var _v:stdgo.StdGoTypes.GoUInt64 = (42i64 : stdgo.StdGoTypes.GoUInt64);
        var _s10:stdgo.GoString = stdgo.strconv.Strconv.formatUint(_v, (10 : stdgo.StdGoTypes.GoInt));
        stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s10), stdgo.Go.toInterface(_s10));
        var _s16:stdgo.GoString = stdgo.strconv.Strconv.formatUint(_v, (16 : stdgo.StdGoTypes.GoInt));
        stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s16), stdgo.Go.toInterface(_s16));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4591>)


## function isGraphic


```haxe
function isGraphic(_r:stdgo.GoRune):Bool
```



IsGraphic reports whether the rune is defined as a Graphic by Unicode. Such
characters include letters, marks, numbers, punctuation, symbols, and
spaces, from categories L, M, N, P, S, and Zs.  

### exampleIsGraphic


<details><summary></summary>
<p>


```haxe
function exampleIsGraphic():Void {
        var _shamrock:Bool = stdgo.strconv.Strconv.isGraphic((9752 : stdgo.StdGoTypes.GoInt32));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_shamrock));
        var _a:Bool = stdgo.strconv.Strconv.isGraphic((97 : stdgo.StdGoTypes.GoInt32));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_a));
        var _bel:Bool = stdgo.strconv.Strconv.isGraphic((7 : stdgo.StdGoTypes.GoInt32));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_bel));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L5378>)


## function isPrint


```haxe
function isPrint(_r:stdgo.GoRune):Bool
```



IsPrint reports whether the rune is defined as printable by Go, with
the same definition as unicode.IsPrint: letters, numbers, punctuation,
symbols and ASCII space.  

### exampleIsPrint


<details><summary></summary>
<p>


```haxe
function exampleIsPrint():Void {
        var _c:Bool = stdgo.strconv.Strconv.isPrint((9786 : stdgo.StdGoTypes.GoInt32));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_c));
        var _bel:Bool = stdgo.strconv.Strconv.isPrint((7 : stdgo.StdGoTypes.GoInt32));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_bel));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L5342>)


## function itoa


```haxe
function itoa(_i:stdgo.GoInt):stdgo.GoString
```



Itoa is equivalent to FormatInt\(int64\(i\), 10\).  

### exampleItoa


<details><summary></summary>
<p>


```haxe
function exampleItoa():Void {
        var _i:stdgo.StdGoTypes.GoInt = (10 : stdgo.StdGoTypes.GoInt);
        var _s:stdgo.GoString = stdgo.strconv.Strconv.itoa(_i);
        stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4613>)


## function mulByLog10Log2


```haxe
function mulByLog10Log2(_x:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Strconv.hx#L4583>)


## function mulByLog2Log10


```haxe
function mulByLog2Log10(_x:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Strconv.hx#L4580>)


## function newDecimal


```haxe
function newDecimal(_i:stdgo.GoUInt64):stdgo.Ref<stdgo.strconv.T_decimal>
```


[\(view code\)](<./Strconv.hx#L4567>)


## function parseBool


```haxe
function parseBool(_str:stdgo.GoString):{
	_1:stdgo.Error;
	_0:Bool;
}
```



ParseBool returns the boolean value represented by the string.
It accepts 1, t, T, TRUE, true, True, 0, f, F, FALSE, false, False.
Any other value returns an error.  

### exampleParseBool


<details><summary></summary>
<p>


```haxe
function exampleParseBool():Void {
        var _v:stdgo.GoString = ("true" : stdgo.GoString);
        {
            var __tmp__ = stdgo.strconv.Strconv.parseBool(_v), _s:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L2406>)


## function parseComplex


```haxe
function parseComplex(_s:stdgo.GoString, _bitSize:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoComplex128;
}
```



ParseComplex converts the string s to a complex number
with the precision specified by bitSize: 64 for complex64, or 128 for complex128.
When bitSize=64, the result still has type complex128, but it will be
convertible to complex64 without changing its value.  


The number represented by s must be of the form N, Ni, or N±Ni, where N stands
for a floating\-point number as recognized by ParseFloat, and i is the imaginary
component. If the second N is unsigned, a \+ sign is required between the two components
as indicated by the ±. If the second N is NaN, only a \+ sign is accepted.
The form may be parenthesized and cannot contain any spaces.
The resulting complex number consists of the two components converted by ParseFloat.  


The errors that ParseComplex returns have concrete type \*NumError
and include err.Num = s.  


If s is not syntactically well\-formed, ParseComplex returns err.Err = ErrSyntax.  


If s is syntactically well\-formed but either component is more than 1/2 ULP
away from the largest floating point number of the given component's size,
ParseComplex returns err.Err = ErrRange and c = ±Inf for the respective component.  

[\(view code\)](<./Strconv.hx#L2480>)


## function parseFloat


```haxe
function parseFloat(_s:stdgo.GoString, _bitSize:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoFloat64;
}
```



ParseFloat converts the string s to a floating\-point number
with the precision specified by bitSize: 32 for float32, or 64 for float64.
When bitSize=32, the result still has type float64, but it will be
convertible to float32 without changing its value.  


ParseFloat accepts decimal and hexadecimal floating\-point numbers
as defined by the Go syntax for \[floating\-point literals\].
If s is well\-formed and near a valid floating\-point number,
ParseFloat returns the nearest floating\-point number rounded
using IEEE754 unbiased rounding.
\(Parsing a hexadecimal floating\-point value only rounds when
there are more bits in the hexadecimal representation than
will fit in the mantissa.\)  


The errors that ParseFloat returns have concrete type \*NumError
and include err.Num = s.  


If s is not syntactically well\-formed, ParseFloat returns err.Err = ErrSyntax.  


If s is syntactically well\-formed but is more than 1/2 ULP
away from the largest floating point number of the given size,
ParseFloat returns f = ±Inf, err.Err = ErrRange.  


ParseFloat recognizes the string "NaN", and the \(possibly signed\) strings "Inf" and "Infinity"
as their respective special floating point values. It ignores case when matching.  


\[floating\-point literals\]: https://go.dev/ref/spec#Floating-point_literals  

### exampleParseFloat


<details><summary></summary>
<p>


```haxe
function exampleParseFloat():Void {
        var _v:stdgo.GoString = ("3.1415926535" : stdgo.GoString);
        {
            var __tmp__ = stdgo.strconv.Strconv.parseFloat(_v, (32 : stdgo.StdGoTypes.GoInt)), _s:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo.strconv.Strconv.parseFloat(_v, (64 : stdgo.StdGoTypes.GoInt)), _s:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo.strconv.Strconv.parseFloat(("NaN" : stdgo.GoString), (32 : stdgo.StdGoTypes.GoInt)), _s:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo.strconv.Strconv.parseFloat(("nan" : stdgo.GoString), (32 : stdgo.StdGoTypes.GoInt)), _s:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo.strconv.Strconv.parseFloat(("inf" : stdgo.GoString), (32 : stdgo.StdGoTypes.GoInt)), _s:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo.strconv.Strconv.parseFloat(("+Inf" : stdgo.GoString), (32 : stdgo.StdGoTypes.GoInt)), _s:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo.strconv.Strconv.parseFloat(("-Inf" : stdgo.GoString), (32 : stdgo.StdGoTypes.GoInt)), _s:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo.strconv.Strconv.parseFloat(("-0" : stdgo.GoString), (32 : stdgo.StdGoTypes.GoInt)), _s:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo.strconv.Strconv.parseFloat(("+0" : stdgo.GoString), (32 : stdgo.StdGoTypes.GoInt)), _s:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L3038>)


## function parseFloatPrefix


```haxe
function parseFloatPrefix(_s:stdgo.GoString, _bitSize:stdgo.GoInt):{
	_2:stdgo.Error;
	_1:stdgo.GoInt;
	_0:stdgo.GoFloat64;
}
```


[\(view code\)](<./Strconv.hx#L4577>)


## function parseInt


```haxe
function parseInt(_s:stdgo.GoString, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoInt64;
}
```



ParseInt interprets a string s in the given base \(0, 2 to 36\) and
bit size \(0 to 64\) and returns the corresponding value i.  


The string may begin with a leading sign: "\+" or "\-".  


If the base argument is 0, the true base is implied by the string's
prefix following the sign \(if present\): 2 for "0b", 8 for "0" or "0o",
16 for "0x", and 10 otherwise. Also, for argument base 0 only,
underscore characters are permitted as defined by the Go syntax for
\[integer literals\].  


The bitSize argument specifies the integer type
that the result must fit into. Bit sizes 0, 8, 16, 32, and 64
correspond to int, int8, int16, int32, and int64.
If bitSize is below 0 or above 64, an error is returned.  


The errors that ParseInt returns have concrete type \*NumError
and include err.Num = s. If s is empty or contains invalid
digits, err.Err = ErrSyntax and the returned value is 0;
if the value corresponding to s cannot be represented by a
signed integer of the given size, err.Err = ErrRange and the
returned value is the maximum magnitude integer of the
appropriate bitSize and sign.  


\[integer literals\]: https://go.dev/ref/spec#Integer_literals  

### exampleParseInt


<details><summary></summary>
<p>


```haxe
function exampleParseInt():Void {
        var _v32:stdgo.GoString = ("-354634382" : stdgo.GoString);
        {
            var __tmp__ = stdgo.strconv.Strconv.parseInt(_v32, (10 : stdgo.StdGoTypes.GoInt), (32 : stdgo.StdGoTypes.GoInt)), _s:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo.strconv.Strconv.parseInt(_v32, (16 : stdgo.StdGoTypes.GoInt), (32 : stdgo.StdGoTypes.GoInt)), _s:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        var _v64:stdgo.GoString = ("-3546343826724305832" : stdgo.GoString);
        {
            var __tmp__ = stdgo.strconv.Strconv.parseInt(_v64, (10 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt)), _s:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo.strconv.Strconv.parseInt(_v64, (16 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt)), _s:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L3200>)


## function parseUint


```haxe
function parseUint(_s:stdgo.GoString, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):{
	_1:stdgo.Error;
	_0:stdgo.GoUInt64;
}
```



ParseUint is like ParseInt but for unsigned numbers.  


A sign prefix is not permitted.  

### exampleParseUint


<details><summary></summary>
<p>


```haxe
function exampleParseUint():Void {
        var _v:stdgo.GoString = ("42" : stdgo.GoString);
        {
            var __tmp__ = stdgo.strconv.Strconv.parseUint(_v, (10 : stdgo.StdGoTypes.GoInt), (32 : stdgo.StdGoTypes.GoInt)), _s:stdgo.StdGoTypes.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo.strconv.Strconv.parseUint(_v, (10 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt)), _s:stdgo.StdGoTypes.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo.fmt.Fmt.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L3097>)


## function quote


```haxe
function quote(_s:stdgo.GoString):stdgo.GoString
```



Quote returns a double\-quoted Go string literal representing s. The
returned string uses Go escape sequences \(\\t, \\n, \\xFF, \\u0100\) for
control characters and non\-printable characters as defined by
IsPrint.  

### exampleQuote


<details><summary></summary>
<p>


```haxe
function exampleQuote():Void {
        var _s:stdgo.GoString = stdgo.strconv.Strconv.quote(("\"Fran & Freddie\'s Diner\t☺\"" : stdgo.GoString));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_s));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4894>)


## function quoteRune


```haxe
function quoteRune(_r:stdgo.GoRune):stdgo.GoString
```



QuoteRune returns a single\-quoted Go character literal representing the
rune. The returned string uses Go escape sequences \(\\t, \\n, \\xFF, \\u0100\)
for control characters and non\-printable characters as defined by IsPrint.
If r is not a valid Unicode code point, it is interpreted as the Unicode
replacement character U\+FFFD.  

### exampleQuoteRune


<details><summary></summary>
<p>


```haxe
function exampleQuoteRune():Void {
        var _s:stdgo.GoString = stdgo.strconv.Strconv.quoteRune((9786 : stdgo.StdGoTypes.GoInt32));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_s));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4942>)


## function quoteRuneToASCII


```haxe
function quoteRuneToASCII(_r:stdgo.GoRune):stdgo.GoString
```



QuoteRuneToASCII returns a single\-quoted Go character literal representing
the rune. The returned string uses Go escape sequences \(\\t, \\n, \\xFF,
\\u0100\) for non\-ASCII characters and non\-printable characters as defined
by IsPrint.
If r is not a valid Unicode code point, it is interpreted as the Unicode
replacement character U\+FFFD.  

### exampleQuoteRuneToASCII


<details><summary></summary>
<p>


```haxe
function exampleQuoteRuneToASCII():Void {
        var _s:stdgo.GoString = stdgo.strconv.Strconv.quoteRuneToASCII((9786 : stdgo.StdGoTypes.GoInt32));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_s));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4960>)


## function quoteRuneToGraphic


```haxe
function quoteRuneToGraphic(_r:stdgo.GoRune):stdgo.GoString
```



QuoteRuneToGraphic returns a single\-quoted Go character literal representing
the rune. If the rune is not a Unicode graphic character,
as defined by IsGraphic, the returned string will use a Go escape sequence
\(\\t, \\n, \\xFF, \\u0100\).
If r is not a valid Unicode code point, it is interpreted as the Unicode
replacement character U\+FFFD.  

### exampleQuoteRuneToGraphic


<details><summary></summary>
<p>


```haxe
function exampleQuoteRuneToGraphic():Void {
        var _s:stdgo.GoString = stdgo.strconv.Strconv.quoteRuneToGraphic((9786 : stdgo.StdGoTypes.GoInt32));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_s));
        _s = stdgo.strconv.Strconv.quoteRuneToGraphic((9786 : stdgo.StdGoTypes.GoInt32));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_s));
        _s = stdgo.strconv.Strconv.quoteRuneToGraphic((10 : stdgo.StdGoTypes.GoInt32));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_s));
        _s = stdgo.strconv.Strconv.quoteRuneToGraphic((9 : stdgo.StdGoTypes.GoInt32));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_s));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4978>)


## function quoteToASCII


```haxe
function quoteToASCII(_s:stdgo.GoString):stdgo.GoString
```



QuoteToASCII returns a double\-quoted Go string literal representing s.
The returned string uses Go escape sequences \(\\t, \\n, \\xFF, \\u0100\) for
non\-ASCII characters and non\-printable characters as defined by IsPrint.  

### exampleQuoteToASCII


<details><summary></summary>
<p>


```haxe
function exampleQuoteToASCII():Void {
        var _s:stdgo.GoString = stdgo.strconv.Strconv.quoteToASCII(("\"Fran & Freddie\'s Diner\t☺\"" : stdgo.GoString));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_s));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4909>)


## function quoteToGraphic


```haxe
function quoteToGraphic(_s:stdgo.GoString):stdgo.GoString
```



QuoteToGraphic returns a double\-quoted Go string literal representing s.
The returned string leaves Unicode graphic characters, as defined by
IsGraphic, unchanged and uses Go escape sequences \(\\t, \\n, \\xFF, \\u0100\)
for non\-graphic characters.  

### exampleQuoteToGraphic


<details><summary></summary>
<p>


```haxe
function exampleQuoteToGraphic():Void {
        var _s:stdgo.GoString = stdgo.strconv.Strconv.quoteToGraphic(("☺" : stdgo.GoString));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_s));
        _s = stdgo.strconv.Strconv.quoteToGraphic(("This is a ☺\t\n" : stdgo.GoString));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_s));
        _s = stdgo.strconv.Strconv.quoteToGraphic(("\" This is a ☺ \\n \"" : stdgo.GoString));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_s));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L4925>)


## function quotedPrefix


```haxe
function quotedPrefix(_s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.GoString;
}
```



QuotedPrefix returns the quoted string \(as understood by Unquote\) at the prefix of s.
If s does not start with a valid quoted string, QuotedPrefix returns an error.  

[\(view code\)](<./Strconv.hx#L5181>)


## function setOptimize


```haxe
function setOptimize(_b:Bool):Bool
```


[\(view code\)](<./Strconv.hx#L4572>)


## function unquote


```haxe
function unquote(_s:stdgo.GoString):{
	_1:stdgo.Error;
	_0:stdgo.GoString;
}
```



Unquote interprets s as a single\-quoted, double\-quoted,
or backquoted Go string literal, returning the string value
that s quotes.  \(If s is single\-quoted, it would be a Go
character literal; Unquote returns the corresponding
one\-character string.\)  

### exampleUnquote


<details><summary></summary>
<p>


```haxe
function exampleUnquote():Void {
        var __tmp__ = stdgo.strconv.Strconv.unquote(("You can\'t unquote a string without quotes" : stdgo.GoString)), _s:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        stdgo.fmt.Fmt.printf(("%q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_err));
        {
            var __tmp__ = stdgo.strconv.Strconv.unquote(("\"The string must be either double-quoted\"" : stdgo.GoString));
            _s = __tmp__._0;
            _err = __tmp__._1;
        };
        stdgo.fmt.Fmt.printf(("%q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_err));
        {
            var __tmp__ = stdgo.strconv.Strconv.unquote(("`or backquoted.`" : stdgo.GoString));
            _s = __tmp__._0;
            _err = __tmp__._1;
        };
        stdgo.fmt.Fmt.printf(("%q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_err));
        {
            var __tmp__ = stdgo.strconv.Strconv.unquote(("\'☺\'" : stdgo.GoString));
            _s = __tmp__._0;
            _err = __tmp__._1;
        };
        stdgo.fmt.Fmt.printf(("%q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_err));
        {
            var __tmp__ = stdgo.strconv.Strconv.unquote(("\'☹☹\'" : stdgo.GoString));
            _s = __tmp__._0;
            _err = __tmp__._1;
        };
        stdgo.fmt.Fmt.printf(("%q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_err));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L5192>)


## function unquoteChar


```haxe
function unquoteChar(_s:stdgo.GoString, _quote:stdgo.GoByte):{
	_3:stdgo.Error;
	_2:stdgo.GoString;
	_1:Bool;
	_0:stdgo.GoRune;
}
```



UnquoteChar decodes the first character or byte in the escaped string
or character literal represented by the string s.
It returns four values:  

```
  1. value, the decoded Unicode code point or byte value;
  2. multibyte, a boolean indicating whether the decoded character requires a multibyte UTF-8 representation;
  3. tail, the remainder of the string after the character; and
  4. an error that will be nil if the character is syntactically valid.
```

The second argument, quote, specifies the type of literal being parsed
and therefore which escaped quote character is permitted.
If set to a single quote, it permits the sequence \\' and disallows unescaped '.
If set to a double quote, it permits \\" and disallows unescaped ".
If set to zero, it does not permit either escape and allows both quote characters to appear unescaped.  

### exampleUnquoteChar


<details><summary></summary>
<p>


```haxe
function exampleUnquoteChar():Void {
        var __tmp__ = stdgo.strconv.Strconv.unquoteChar(("\\\"Fran & Freddie\'s Diner\\\"" : stdgo.GoString), (34 : stdgo.StdGoTypes.GoUInt8)), _v:stdgo.StdGoTypes.GoInt32 = __tmp__._0, _mb:Bool = __tmp__._1, _t:stdgo.GoString = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        if (_err != null) {
            stdgo.log.Log.fatal(stdgo.Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("value:" : stdgo.GoString)), stdgo.Go.toInterface((_v : stdgo.GoString)));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("multibyte:" : stdgo.GoString)), stdgo.Go.toInterface(_mb));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("tail:" : stdgo.GoString)), stdgo.Go.toInterface(_t));
    }
```


</p>
</details>


[\(view code\)](<./Strconv.hx#L5040>)


# Classes


```haxe
import stdgo.strconv.*
```


## class NumError



A NumError records a failed conversion.  

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


[\(view code\)](<./Strconv.hx#L2313>)


### NumError function error


```haxe
function error():stdgo.GoString
```


[\(view code\)](<./Strconv.hx#L5417>)


### NumError function unwrap


```haxe
function unwrap():stdgo.Error
```


[\(view code\)](<./Strconv.hx#L5412>)


