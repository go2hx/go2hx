package stdgo.strconv;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var _optimize : Dynamic;
@:invalid var _powtab : Dynamic;
@:invalid var _float64pow10 : Dynamic;
@:invalid var _float32pow10 : Dynamic;
@:invalid var errRange : Dynamic;
@:invalid var errSyntax : Dynamic;
@:invalid var _leftcheats : Dynamic;
@:invalid var _detailedPowersOfTen : Dynamic;
@:invalid var _float32info : Dynamic;
@:invalid var _float64info : Dynamic;
@:invalid var _uint64pow10 : Dynamic;
@:invalid var _isPrint16 : Dynamic;
@:invalid var _isNotPrint16 : Dynamic;
@:invalid var _isPrint32 : Dynamic;
@:invalid var _isNotPrint32 : Dynamic;
@:invalid var _isGraphic : Dynamic;
@:invalid var bitSizeError : Dynamic;
@:invalid var baseError : Dynamic;
@:invalid var _fnParseComplex : Dynamic;
@:invalid var _fnParseFloat : Dynamic;
@:invalid var _intSize : Dynamic;
@:invalid var intSize : Dynamic;
@:invalid var _maxUint64 : Dynamic;
@:invalid var _uintSize : Dynamic;
@:invalid var _maxShift : Dynamic;
@:invalid var _detailedPowersOfTenMinExp10 : Dynamic;
@:invalid var _detailedPowersOfTenMaxExp10 : Dynamic;
@:invalid var _fastSmalls : Dynamic;
@:invalid var _nSmalls : Dynamic;
@:invalid var _smallsString : Dynamic;
@:invalid var _host32bit : Dynamic;
@:invalid var _digits : Dynamic;
@:invalid var _lowerhex : Dynamic;
@:invalid var _upperhex : Dynamic;
@:invalid typedef NumError = Dynamic;
@:invalid typedef T_decimal = Dynamic;
@:invalid typedef T_leftCheat = Dynamic;
@:invalid typedef T_floatInfo = Dynamic;
@:invalid typedef T_decimalSlice = Dynamic;
function parseBool(_str:stdgo.GoString):Void {}
function formatBool(_b:Bool):Void {}
function appendBool(_dst:stdgo.Slice<stdgo.GoByte>, _b:Bool):Void {}
function _convErr(_err:stdgo.Error, _s:stdgo.GoString):Void {}
function parseComplex(_s:stdgo.GoString, _bitSize:stdgo.GoInt):Void {}
function _commonPrefixLenIgnoreCase(_s:stdgo.GoString, _prefix:stdgo.GoString):Void {}
function _special(_s:stdgo.GoString):Void {}
function _readFloat(_s:stdgo.GoString):Void {}
function _atof64exact(_mantissa:stdgo.GoUInt64, _exp:stdgo.GoInt, _neg:Bool):Void {}
function _atof32exact(_mantissa:stdgo.GoUInt64, _exp:stdgo.GoInt, _neg:Bool):Void {}
function _atofHex(_s:stdgo.GoString, _flt:stdgo.Ref<T_floatInfo>, _mantissa:stdgo.GoUInt64, _exp:stdgo.GoInt, _neg:Bool, _trunc:Bool):Void {}
function _atof32(_s:stdgo.GoString):Void {}
function _atof64(_s:stdgo.GoString):Void {}
function parseFloat(_s:stdgo.GoString, _bitSize:stdgo.GoInt):Void {}
function _parseFloatPrefix(_s:stdgo.GoString, _bitSize:stdgo.GoInt):Void {}
function _lower(_c:stdgo.GoByte):Void {}
function _cloneString(_x:stdgo.GoString):Void {}
function _syntaxError(_fn:stdgo.GoString, _str:stdgo.GoString):Void {}
function _rangeError(_fn:stdgo.GoString, _str:stdgo.GoString):Void {}
function _baseError(_fn:stdgo.GoString, _str:stdgo.GoString, _base:stdgo.GoInt):Void {}
function _bitSizeError(_fn:stdgo.GoString, _str:stdgo.GoString, _bitSize:stdgo.GoInt):Void {}
function parseUint(_s:stdgo.GoString, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):Void {}
function parseInt(_s:stdgo.GoString, _base:stdgo.GoInt, _bitSize:stdgo.GoInt):Void {}
function atoi(_s:stdgo.GoString):Void {}
function _underscoreOK(_s:stdgo.GoString):Void {}
function _index(_s:stdgo.GoString, _c:stdgo.GoByte):Void {}
function formatComplex(_c:stdgo.GoComplex128, _fmt:stdgo.GoByte, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):Void {}
function _digitZero(_dst:stdgo.Slice<stdgo.GoByte>):Void {}
function _trim(_a:stdgo.Ref<T_decimal>):Void {}
function _rightShift(_a:stdgo.Ref<T_decimal>, _k:stdgo.GoUInt):Void {}
function _prefixIsLessThan(_b:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):Void {}
function _leftShift(_a:stdgo.Ref<T_decimal>, _k:stdgo.GoUInt):Void {}
function _shouldRoundUp(_a:stdgo.Ref<T_decimal>, _nd:stdgo.GoInt):Void {}
function _eiselLemire64(_man:stdgo.GoUInt64, _exp10:stdgo.GoInt, _neg:Bool):Void {}
function _eiselLemire32(_man:stdgo.GoUInt64, _exp10:stdgo.GoInt, _neg:Bool):Void {}
function formatFloat(_f:stdgo.GoFloat64, _fmt:stdgo.GoByte, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):Void {}
function appendFloat(_dst:stdgo.Slice<stdgo.GoByte>, _f:stdgo.GoFloat64, _fmt:stdgo.GoByte, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):Void {}
function _genericFtoa(_dst:stdgo.Slice<stdgo.GoByte>, _val:stdgo.GoFloat64, _fmt:stdgo.GoByte, _prec:stdgo.GoInt, _bitSize:stdgo.GoInt):Void {}
function _bigFtoa(_dst:stdgo.Slice<stdgo.GoByte>, _prec:stdgo.GoInt, _fmt:stdgo.GoByte, _neg:Bool, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<T_floatInfo>):Void {}
function _formatDigits(_dst:stdgo.Slice<stdgo.GoByte>, _shortest:Bool, _neg:Bool, _digs:T_decimalSlice, _prec:stdgo.GoInt, _fmt:stdgo.GoByte):Void {}
function _roundShortest(_d:stdgo.Ref<T_decimal>, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<T_floatInfo>):Void {}
function _fmtE(_dst:stdgo.Slice<stdgo.GoByte>, _neg:Bool, _d:T_decimalSlice, _prec:stdgo.GoInt, _fmt:stdgo.GoByte):Void {}
function _fmtF(_dst:stdgo.Slice<stdgo.GoByte>, _neg:Bool, _d:T_decimalSlice, _prec:stdgo.GoInt):Void {}
function _fmtB(_dst:stdgo.Slice<stdgo.GoByte>, _neg:Bool, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<T_floatInfo>):Void {}
function _fmtX(_dst:stdgo.Slice<stdgo.GoByte>, _prec:stdgo.GoInt, _fmt:stdgo.GoByte, _neg:Bool, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<T_floatInfo>):Void {}
function _min(_a:stdgo.GoInt, _b:stdgo.GoInt):Void {}
function _max(_a:stdgo.GoInt, _b:stdgo.GoInt):Void {}
function _ryuFtoaFixed32(_d:stdgo.Ref<T_decimalSlice>, _mant:stdgo.GoUInt32, _exp:stdgo.GoInt, _prec:stdgo.GoInt):Void {}
function _ryuFtoaFixed64(_d:stdgo.Ref<T_decimalSlice>, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _prec:stdgo.GoInt):Void {}
function _formatDecimal(_d:stdgo.Ref<T_decimalSlice>, _m:stdgo.GoUInt64, _trunc:Bool, _roundUp:Bool, _prec:stdgo.GoInt):Void {}
function _ryuFtoaShortest(_d:stdgo.Ref<T_decimalSlice>, _mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<T_floatInfo>):Void {}
function _mulByLog2Log10(_x:stdgo.GoInt):Void {}
function _mulByLog10Log2(_x:stdgo.GoInt):Void {}
function _computeBounds(_mant:stdgo.GoUInt64, _exp:stdgo.GoInt, _flt:stdgo.Ref<T_floatInfo>):Void {}
function _ryuDigits(_d:stdgo.Ref<T_decimalSlice>, _lower:stdgo.GoUInt64, _central:stdgo.GoUInt64, _upper:stdgo.GoUInt64, _c0:Bool, _cup:Bool):Void {}
function _ryuDigits32(_d:stdgo.Ref<T_decimalSlice>, _lower:stdgo.GoUInt32, _central:stdgo.GoUInt32, _upper:stdgo.GoUInt32, _c0:Bool, _cup:Bool, _endindex:stdgo.GoInt):Void {}
function _mult64bitPow10(_m:stdgo.GoUInt32, _e2:stdgo.GoInt, _q:stdgo.GoInt):Void {}
function _mult128bitPow10(_m:stdgo.GoUInt64, _e2:stdgo.GoInt, _q:stdgo.GoInt):Void {}
function _divisibleByPower5(_m:stdgo.GoUInt64, _k:stdgo.GoInt):Void {}
function _divmod1e9(_x:stdgo.GoUInt64):Void {}
function newDecimal(_i:stdgo.GoUInt64):Void {}
function setOptimize(_b:Bool):Void {}
function parseFloatPrefix(_s:stdgo.GoString, _bitSize:stdgo.GoInt):Void {}
function mulByLog2Log10(_x:stdgo.GoInt):Void {}
function mulByLog10Log2(_x:stdgo.GoInt):Void {}
function formatUint(_i:stdgo.GoUInt64, _base:stdgo.GoInt):Void {}
function formatInt(_i:stdgo.GoInt64, _base:stdgo.GoInt):Void {}
function itoa(_i:stdgo.GoInt):Void {}
function appendInt(_dst:stdgo.Slice<stdgo.GoByte>, _i:stdgo.GoInt64, _base:stdgo.GoInt):Void {}
function appendUint(_dst:stdgo.Slice<stdgo.GoByte>, _i:stdgo.GoUInt64, _base:stdgo.GoInt):Void {}
function _small(_i:stdgo.GoInt):Void {}
function _formatBits(_dst:stdgo.Slice<stdgo.GoByte>, _u:stdgo.GoUInt64, _base:stdgo.GoInt, _neg:Bool, _append_:Bool):Void {}
function _isPowerOfTwo(_x:stdgo.GoInt):Void {}
function _contains(_s:stdgo.GoString, _c:stdgo.GoByte):Void {}
function _quoteWith(_s:stdgo.GoString, _quote:stdgo.GoByte, asciionly:Bool, _graphicOnly:Bool):Void {}
function _quoteRuneWith(_r:stdgo.GoRune, _quote:stdgo.GoByte, asciionly:Bool, _graphicOnly:Bool):Void {}
function _appendQuotedWith(_buf:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString, _quote:stdgo.GoByte, asciionly:Bool, _graphicOnly:Bool):Void {}
function _appendQuotedRuneWith(_buf:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune, _quote:stdgo.GoByte, asciionly:Bool, _graphicOnly:Bool):Void {}
function _appendEscapedRune(_buf:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune, _quote:stdgo.GoByte, asciionly:Bool, _graphicOnly:Bool):Void {}
function quote(_s:stdgo.GoString):Void {}
function appendQuote(_dst:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):Void {}
function quoteToASCII(_s:stdgo.GoString):Void {}
function appendQuoteToASCII(_dst:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):Void {}
function quoteToGraphic(_s:stdgo.GoString):Void {}
function appendQuoteToGraphic(_dst:stdgo.Slice<stdgo.GoByte>, _s:stdgo.GoString):Void {}
function quoteRune(_r:stdgo.GoRune):Void {}
function appendQuoteRune(_dst:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):Void {}
function quoteRuneToASCII(_r:stdgo.GoRune):Void {}
function appendQuoteRuneToASCII(_dst:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):Void {}
function quoteRuneToGraphic(_r:stdgo.GoRune):Void {}
function appendQuoteRuneToGraphic(_dst:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):Void {}
function canBackquote(_s:stdgo.GoString):Void {}
function _unhex(_b:stdgo.GoByte):Void {}
function unquoteChar(_s:stdgo.GoString, _quote:stdgo.GoByte):Void {}
function quotedPrefix(_s:stdgo.GoString):Void {}
function unquote(_s:stdgo.GoString):Void {}
function _unquote(_in:stdgo.GoString, _unescape:Bool):Void {}
function _bsearch16(_a:stdgo.Slice<stdgo.GoUInt16>, _x:stdgo.GoUInt16):Void {}
function _bsearch32(_a:stdgo.Slice<stdgo.GoUInt32>, _x:stdgo.GoUInt32):Void {}
function isPrint(_r:stdgo.GoRune):Void {}
function isGraphic(_r:stdgo.GoRune):Void {}
function _isInGraphicList(_r:stdgo.GoRune):Void {}
@:invalid typedef NumError_asInterface = Dynamic;
@:invalid typedef NumError_static_extension = Dynamic;
@:invalid typedef T_decimal_asInterface = Dynamic;
@:invalid typedef T_decimal_static_extension = Dynamic;
