package stdgo.strconv;
final intSize : haxe.UInt64 = stdgo._internal.strconv.Strconv.intSize;
var errRange(get, set) : stdgo.Error;
private function get_errRange():stdgo.Error return stdgo._internal.strconv.Strconv.errRange;
private function set_errRange(v:stdgo.Error):stdgo.Error {
        stdgo._internal.strconv.Strconv.errRange = v;
        return v;
    }
var errSyntax(get, set) : stdgo.Error;
private function get_errSyntax():stdgo.Error return stdgo._internal.strconv.Strconv.errSyntax;
private function set_errSyntax(v:stdgo.Error):stdgo.Error {
        stdgo._internal.strconv.Strconv.errSyntax = v;
        return v;
    }
var bitSizeError(get, set) : (stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv.NumError>;
private function get_bitSizeError():(stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv.NumError> return (_0, _1, _2) -> stdgo._internal.strconv.Strconv.bitSizeError(_0, _1, _2);
private function set_bitSizeError(v:(stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv.NumError>):(stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv.NumError> {
        stdgo._internal.strconv.Strconv.bitSizeError = v;
        return v;
    }
var baseError(get, set) : (stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv.NumError>;
private function get_baseError():(stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv.NumError> return (_0, _1, _2) -> stdgo._internal.strconv.Strconv.baseError(_0, _1, _2);
private function set_baseError(v:(stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv.NumError>):(stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv.NumError> {
        stdgo._internal.strconv.Strconv.baseError = v;
        return v;
    }
@:structInit @:using(stdgo.strconv.Strconv.NumError_static_extension) abstract NumError(stdgo._internal.strconv.Strconv.NumError) from stdgo._internal.strconv.Strconv.NumError to stdgo._internal.strconv.Strconv.NumError {
    public var func(get, set) : String;
    function get_func():String return this.func;
    function set_func(v:String):String {
        this.func = v;
        return v;
    }
    public var num(get, set) : String;
    function get_num():String return this.num;
    function set_num(v:String):String {
        this.num = v;
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = v;
        return v;
    }
    public function new(?func:String, ?num:String, ?err:stdgo.Error) this = new stdgo._internal.strconv.Strconv.NumError(func, num, err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.strconv.Strconv.T_decimal_static_extension) abstract T_decimal(stdgo._internal.strconv.Strconv.T_decimal) from stdgo._internal.strconv.Strconv.T_decimal to stdgo._internal.strconv.Strconv.T_decimal {
    public var _d(get, set) : haxe.ds.Vector<std.UInt>;
    function get__d():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._d) i]);
    function set__d(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._d = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _nd(get, set) : StdTypes.Int;
    function get__nd():StdTypes.Int return this._nd;
    function set__nd(v:StdTypes.Int):StdTypes.Int {
        this._nd = v;
        return v;
    }
    public var _dp(get, set) : StdTypes.Int;
    function get__dp():StdTypes.Int return this._dp;
    function set__dp(v:StdTypes.Int):StdTypes.Int {
        this._dp = v;
        return v;
    }
    public var _neg(get, set) : Bool;
    function get__neg():Bool return this._neg;
    function set__neg(v:Bool):Bool {
        this._neg = v;
        return v;
    }
    public var _trunc(get, set) : Bool;
    function get__trunc():Bool return this._trunc;
    function set__trunc(v:Bool):Bool {
        this._trunc = v;
        return v;
    }
    public function new(?_d:haxe.ds.Vector<std.UInt>, ?_nd:StdTypes.Int, ?_dp:StdTypes.Int, ?_neg:Bool, ?_trunc:Bool) this = new stdgo._internal.strconv.Strconv.T_decimal(([for (i in _d) i] : stdgo.GoArray<stdgo.GoUInt8>), _nd, _dp, _neg, _trunc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_leftCheat(stdgo._internal.strconv.Strconv.T_leftCheat) from stdgo._internal.strconv.Strconv.T_leftCheat to stdgo._internal.strconv.Strconv.T_leftCheat {
    public var _delta(get, set) : StdTypes.Int;
    function get__delta():StdTypes.Int return this._delta;
    function set__delta(v:StdTypes.Int):StdTypes.Int {
        this._delta = v;
        return v;
    }
    public var _cutoff(get, set) : String;
    function get__cutoff():String return this._cutoff;
    function set__cutoff(v:String):String {
        this._cutoff = v;
        return v;
    }
    public function new(?_delta:StdTypes.Int, ?_cutoff:String) this = new stdgo._internal.strconv.Strconv.T_leftCheat(_delta, _cutoff);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_floatInfo(stdgo._internal.strconv.Strconv.T_floatInfo) from stdgo._internal.strconv.Strconv.T_floatInfo to stdgo._internal.strconv.Strconv.T_floatInfo {
    public var _mantbits(get, set) : std.UInt;
    function get__mantbits():std.UInt return this._mantbits;
    function set__mantbits(v:std.UInt):std.UInt {
        this._mantbits = v;
        return v;
    }
    public var _expbits(get, set) : std.UInt;
    function get__expbits():std.UInt return this._expbits;
    function set__expbits(v:std.UInt):std.UInt {
        this._expbits = v;
        return v;
    }
    public var _bias(get, set) : StdTypes.Int;
    function get__bias():StdTypes.Int return this._bias;
    function set__bias(v:StdTypes.Int):StdTypes.Int {
        this._bias = v;
        return v;
    }
    public function new(?_mantbits:std.UInt, ?_expbits:std.UInt, ?_bias:StdTypes.Int) this = new stdgo._internal.strconv.Strconv.T_floatInfo(_mantbits, _expbits, _bias);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_decimalSlice(stdgo._internal.strconv.Strconv.T_decimalSlice) from stdgo._internal.strconv.Strconv.T_decimalSlice to stdgo._internal.strconv.Strconv.T_decimalSlice {
    public var _d(get, set) : Array<std.UInt>;
    function get__d():Array<std.UInt> return [for (i in this._d) i];
    function set__d(v:Array<std.UInt>):Array<std.UInt> {
        this._d = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _nd(get, set) : StdTypes.Int;
    function get__nd():StdTypes.Int return this._nd;
    function set__nd(v:StdTypes.Int):StdTypes.Int {
        this._nd = v;
        return v;
    }
    public var _dp(get, set) : StdTypes.Int;
    function get__dp():StdTypes.Int return this._dp;
    function set__dp(v:StdTypes.Int):StdTypes.Int {
        this._dp = v;
        return v;
    }
    public function new(?_d:Array<std.UInt>, ?_nd:StdTypes.Int, ?_dp:StdTypes.Int) this = new stdgo._internal.strconv.Strconv.T_decimalSlice(([for (i in _d) i] : stdgo.Slice<stdgo.GoUInt8>), _nd, _dp);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class NumError_static_extension {
    static public function unwrap(_e:NumError):stdgo.Error {
        return stdgo._internal.strconv.Strconv.NumError_static_extension.unwrap(_e);
    }
    static public function error(_e:NumError):String {
        return stdgo._internal.strconv.Strconv.NumError_static_extension.error(_e);
    }
}
class T_decimal_static_extension {
    static public function roundedInteger(_a:T_decimal):haxe.UInt64 {
        return stdgo._internal.strconv.Strconv.T_decimal_static_extension.roundedInteger(_a);
    }
    static public function roundUp(_a:T_decimal, _nd:StdTypes.Int):Void {
        stdgo._internal.strconv.Strconv.T_decimal_static_extension.roundUp(_a, _nd);
    }
    static public function roundDown(_a:T_decimal, _nd:StdTypes.Int):Void {
        stdgo._internal.strconv.Strconv.T_decimal_static_extension.roundDown(_a, _nd);
    }
    static public function round(_a:T_decimal, _nd:StdTypes.Int):Void {
        stdgo._internal.strconv.Strconv.T_decimal_static_extension.round(_a, _nd);
    }
    static public function shift(_a:T_decimal, _k:StdTypes.Int):Void {
        stdgo._internal.strconv.Strconv.T_decimal_static_extension.shift(_a, _k);
    }
    static public function assign(_a:T_decimal, _v:haxe.UInt64):Void {
        stdgo._internal.strconv.Strconv.T_decimal_static_extension.assign(_a, _v);
    }
    static public function string(_a:T_decimal):String {
        return stdgo._internal.strconv.Strconv.T_decimal_static_extension.string(_a);
    }
    static public function _floatBits(_d:T_decimal, _flt:T_floatInfo):stdgo.Tuple<haxe.UInt64, Bool> {
        return {
            final obj = stdgo._internal.strconv.Strconv.T_decimal_static_extension._floatBits(_d, _flt);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _set(_b:T_decimal, _s:String):Bool {
        return stdgo._internal.strconv.Strconv.T_decimal_static_extension._set(_b, _s);
    }
}
/**
    Package strconv implements conversions to and from string representations
    of basic data types.
    
    # Numeric Conversions
    
    The most common numeric conversions are Atoi (string to int) and Itoa (int to string).
    
    	i, err := strconv.Atoi("-42")
    	s := strconv.Itoa(-42)
    
    These assume decimal and the Go int type.
    
    [ParseBool], [ParseFloat], [ParseInt], and [ParseUint] convert strings to values:
    
    	b, err := strconv.ParseBool("true")
    	f, err := strconv.ParseFloat("3.1415", 64)
    	i, err := strconv.ParseInt("-42", 10, 64)
    	u, err := strconv.ParseUint("42", 10, 64)
    
    The parse functions return the widest type (float64, int64, and uint64),
    but if the size argument specifies a narrower width the result can be
    converted to that narrower type without data loss:
    
    	s := "2147483647" // biggest int32
    	i64, err := strconv.ParseInt(s, 10, 32)
    	...
    	i := int32(i64)
    
    [FormatBool], [FormatFloat], [FormatInt], and [FormatUint] convert values to strings:
    
    	s := strconv.FormatBool(true)
    	s := strconv.FormatFloat(3.1415, 'E', -1, 64)
    	s := strconv.FormatInt(-42, 16)
    	s := strconv.FormatUint(42, 16)
    
    [AppendBool], [AppendFloat], [AppendInt], and [AppendUint] are similar but
    append the formatted value to a destination slice.
    
    # String Conversions
    
    [Quote] and [QuoteToASCII] convert strings to quoted Go string literals.
    The latter guarantees that the result is an ASCII string, by escaping
    any non-ASCII Unicode with \u:
    
    	q := strconv.Quote("Hello, 世界")
    	q := strconv.QuoteToASCII("Hello, 世界")
    
    [QuoteRune] and [QuoteRuneToASCII] are similar but accept runes and
    return quoted Go rune literals.
    
    [Unquote] and [UnquoteChar] unquote Go string and rune literals.
**/
class Strconv {
    /**
        ParseBool returns the boolean value represented by the string.
        It accepts 1, t, T, TRUE, true, True, 0, f, F, FALSE, false, False.
        Any other value returns an error.
    **/
    static public function parseBool(_str:String):stdgo.Tuple<Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.strconv.Strconv.parseBool(_str);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        FormatBool returns "true" or "false" according to the value of b.
    **/
    static public function formatBool(_b:Bool):String {
        return stdgo._internal.strconv.Strconv.formatBool(_b);
    }
    /**
        AppendBool appends "true" or "false", according to the value of b,
        to dst and returns the extended buffer.
    **/
    static public function appendBool(_dst:Array<StdTypes.Int>, _b:Bool):Array<StdTypes.Int> {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.strconv.Strconv.appendBool(_dst, _b)) i];
    }
    /**
        ParseComplex converts the string s to a complex number
        with the precision specified by bitSize: 64 for complex64, or 128 for complex128.
        When bitSize=64, the result still has type complex128, but it will be
        convertible to complex64 without changing its value.
        
        The number represented by s must be of the form N, Ni, or N±Ni, where N stands
        for a floating-point number as recognized by ParseFloat, and i is the imaginary
        component. If the second N is unsigned, a + sign is required between the two components
        as indicated by the ±. If the second N is NaN, only a + sign is accepted.
        The form may be parenthesized and cannot contain any spaces.
        The resulting complex number consists of the two components converted by ParseFloat.
        
        The errors that ParseComplex returns have concrete type *NumError
        and include err.Num = s.
        
        If s is not syntactically well-formed, ParseComplex returns err.Err = ErrSyntax.
        
        If s is syntactically well-formed but either component is more than 1/2 ULP
        away from the largest floating point number of the given component's size,
        ParseComplex returns err.Err = ErrRange and c = ±Inf for the respective component.
    **/
    static public function parseComplex(_s:String, _bitSize:StdTypes.Int):stdgo.Tuple<stdgo.GoComplex128, stdgo.Error> {
        return {
            final obj = stdgo._internal.strconv.Strconv.parseComplex(_s, _bitSize);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ParseFloat converts the string s to a floating-point number
        with the precision specified by bitSize: 32 for float32, or 64 for float64.
        When bitSize=32, the result still has type float64, but it will be
        convertible to float32 without changing its value.
        
        ParseFloat accepts decimal and hexadecimal floating-point numbers
        as defined by the Go syntax for [floating-point literals].
        If s is well-formed and near a valid floating-point number,
        ParseFloat returns the nearest floating-point number rounded
        using IEEE754 unbiased rounding.
        (Parsing a hexadecimal floating-point value only rounds when
        there are more bits in the hexadecimal representation than
        will fit in the mantissa.)
        
        The errors that ParseFloat returns have concrete type *NumError
        and include err.Num = s.
        
        If s is not syntactically well-formed, ParseFloat returns err.Err = ErrSyntax.
        
        If s is syntactically well-formed but is more than 1/2 ULP
        away from the largest floating point number of the given size,
        ParseFloat returns f = ±Inf, err.Err = ErrRange.
        
        ParseFloat recognizes the string "NaN", and the (possibly signed) strings "Inf" and "Infinity"
        as their respective special floating point values. It ignores case when matching.
        
        [floating-point literals]: https://go.dev/ref/spec#Floating-point_literals
    **/
    static public function parseFloat(_s:String, _bitSize:StdTypes.Int):stdgo.Tuple<StdTypes.Float, stdgo.Error> {
        return {
            final obj = stdgo._internal.strconv.Strconv.parseFloat(_s, _bitSize);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ParseUint is like ParseInt but for unsigned numbers.
        
        A sign prefix is not permitted.
    **/
    static public function parseUint(_s:String, _base:StdTypes.Int, _bitSize:StdTypes.Int):stdgo.Tuple<haxe.UInt64, stdgo.Error> {
        return {
            final obj = stdgo._internal.strconv.Strconv.parseUint(_s, _base, _bitSize);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ParseInt interprets a string s in the given base (0, 2 to 36) and
        bit size (0 to 64) and returns the corresponding value i.
        
        The string may begin with a leading sign: "+" or "-".
        
        If the base argument is 0, the true base is implied by the string's
        prefix following the sign (if present): 2 for "0b", 8 for "0" or "0o",
        16 for "0x", and 10 otherwise. Also, for argument base 0 only,
        underscore characters are permitted as defined by the Go syntax for
        [integer literals].
        
        The bitSize argument specifies the integer type
        that the result must fit into. Bit sizes 0, 8, 16, 32, and 64
        correspond to int, int8, int16, int32, and int64.
        If bitSize is below 0 or above 64, an error is returned.
        
        The errors that ParseInt returns have concrete type *NumError
        and include err.Num = s. If s is empty or contains invalid
        digits, err.Err = ErrSyntax and the returned value is 0;
        if the value corresponding to s cannot be represented by a
        signed integer of the given size, err.Err = ErrRange and the
        returned value is the maximum magnitude integer of the
        appropriate bitSize and sign.
        
        [integer literals]: https://go.dev/ref/spec#Integer_literals
    **/
    static public function parseInt(_s:String, _base:StdTypes.Int, _bitSize:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.strconv.Strconv.parseInt(_s, _base, _bitSize);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Atoi is equivalent to ParseInt(s, 10, 0), converted to type int.
    **/
    static public function atoi(_s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.strconv.Strconv.atoi(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        FormatComplex converts the complex number c to a string of the
        form (a+bi) where a and b are the real and imaginary parts,
        formatted according to the format fmt and precision prec.
        
        The format fmt and precision prec have the same meaning as in FormatFloat.
        It rounds the result assuming that the original was obtained from a complex
        value of bitSize bits, which must be 64 for complex64 and 128 for complex128.
    **/
    static public function formatComplex(_c:stdgo.GoComplex128, _fmt:StdTypes.Int, _prec:StdTypes.Int, _bitSize:StdTypes.Int):String {
        return stdgo._internal.strconv.Strconv.formatComplex(_c, _fmt, _prec, _bitSize);
    }
    /**
        FormatFloat converts the floating-point number f to a string,
        according to the format fmt and precision prec. It rounds the
        result assuming that the original was obtained from a floating-point
        value of bitSize bits (32 for float32, 64 for float64).
        
        The format fmt is one of
        'b' (-ddddp±ddd, a binary exponent),
        'e' (-d.dddde±dd, a decimal exponent),
        'E' (-d.ddddE±dd, a decimal exponent),
        'f' (-ddd.dddd, no exponent),
        'g' ('e' for large exponents, 'f' otherwise),
        'G' ('E' for large exponents, 'f' otherwise),
        'x' (-0xd.ddddp±ddd, a hexadecimal fraction and binary exponent), or
        'X' (-0Xd.ddddP±ddd, a hexadecimal fraction and binary exponent).
        
        The precision prec controls the number of digits (excluding the exponent)
        printed by the 'e', 'E', 'f', 'g', 'G', 'x', and 'X' formats.
        For 'e', 'E', 'f', 'x', and 'X', it is the number of digits after the decimal point.
        For 'g' and 'G' it is the maximum number of significant digits (trailing
        zeros are removed).
        The special precision -1 uses the smallest number of digits
        necessary such that ParseFloat will return f exactly.
    **/
    static public function formatFloat(_f:StdTypes.Float, _fmt:StdTypes.Int, _prec:StdTypes.Int, _bitSize:StdTypes.Int):String {
        return stdgo._internal.strconv.Strconv.formatFloat(_f, _fmt, _prec, _bitSize);
    }
    /**
        AppendFloat appends the string form of the floating-point number f,
        as generated by FormatFloat, to dst and returns the extended buffer.
    **/
    static public function appendFloat(_dst:Array<StdTypes.Int>, _f:StdTypes.Float, _fmt:StdTypes.Int, _prec:StdTypes.Int, _bitSize:StdTypes.Int):Array<StdTypes.Int> {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.strconv.Strconv.appendFloat(_dst, _f, _fmt, _prec, _bitSize)) i];
    }
    static public function newDecimal(_i:haxe.UInt64):T_decimal {
        return stdgo._internal.strconv.Strconv.newDecimal(_i);
    }
    static public function setOptimize(_b:Bool):Bool {
        return stdgo._internal.strconv.Strconv.setOptimize(_b);
    }
    static public function parseFloatPrefix(_s:String, _bitSize:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Float, StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.strconv.Strconv.parseFloatPrefix(_s, _bitSize);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function mulByLog2Log10(_x:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.strconv.Strconv.mulByLog2Log10(_x);
    }
    static public function mulByLog10Log2(_x:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.strconv.Strconv.mulByLog10Log2(_x);
    }
    /**
        FormatUint returns the string representation of i in the given base,
        for 2 <= base <= 36. The result uses the lower-case letters 'a' to 'z'
        for digit values >= 10.
    **/
    static public function formatUint(_i:haxe.UInt64, _base:StdTypes.Int):String {
        return stdgo._internal.strconv.Strconv.formatUint(_i, _base);
    }
    /**
        FormatInt returns the string representation of i in the given base,
        for 2 <= base <= 36. The result uses the lower-case letters 'a' to 'z'
        for digit values >= 10.
    **/
    static public function formatInt(_i:haxe.Int64, _base:StdTypes.Int):String {
        return stdgo._internal.strconv.Strconv.formatInt(_i, _base);
    }
    /**
        Itoa is equivalent to FormatInt(int64(i), 10).
    **/
    static public function itoa(_i:StdTypes.Int):String {
        return stdgo._internal.strconv.Strconv.itoa(_i);
    }
    /**
        AppendInt appends the string form of the integer i,
        as generated by FormatInt, to dst and returns the extended buffer.
    **/
    static public function appendInt(_dst:Array<StdTypes.Int>, _i:haxe.Int64, _base:StdTypes.Int):Array<StdTypes.Int> {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.strconv.Strconv.appendInt(_dst, _i, _base)) i];
    }
    /**
        AppendUint appends the string form of the unsigned integer i,
        as generated by FormatUint, to dst and returns the extended buffer.
    **/
    static public function appendUint(_dst:Array<StdTypes.Int>, _i:haxe.UInt64, _base:StdTypes.Int):Array<StdTypes.Int> {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.strconv.Strconv.appendUint(_dst, _i, _base)) i];
    }
    /**
        Quote returns a double-quoted Go string literal representing s. The
        returned string uses Go escape sequences (\t, \n, \xFF, \u0100) for
        control characters and non-printable characters as defined by
        IsPrint.
    **/
    static public function quote(_s:String):String {
        return stdgo._internal.strconv.Strconv.quote(_s);
    }
    /**
        AppendQuote appends a double-quoted Go string literal representing s,
        as generated by Quote, to dst and returns the extended buffer.
    **/
    static public function appendQuote(_dst:Array<StdTypes.Int>, _s:String):Array<StdTypes.Int> {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.strconv.Strconv.appendQuote(_dst, _s)) i];
    }
    /**
        QuoteToASCII returns a double-quoted Go string literal representing s.
        The returned string uses Go escape sequences (\t, \n, \xFF, \u0100) for
        non-ASCII characters and non-printable characters as defined by IsPrint.
    **/
    static public function quoteToASCII(_s:String):String {
        return stdgo._internal.strconv.Strconv.quoteToASCII(_s);
    }
    /**
        AppendQuoteToASCII appends a double-quoted Go string literal representing s,
        as generated by QuoteToASCII, to dst and returns the extended buffer.
    **/
    static public function appendQuoteToASCII(_dst:Array<StdTypes.Int>, _s:String):Array<StdTypes.Int> {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.strconv.Strconv.appendQuoteToASCII(_dst, _s)) i];
    }
    /**
        QuoteToGraphic returns a double-quoted Go string literal representing s.
        The returned string leaves Unicode graphic characters, as defined by
        IsGraphic, unchanged and uses Go escape sequences (\t, \n, \xFF, \u0100)
        for non-graphic characters.
    **/
    static public function quoteToGraphic(_s:String):String {
        return stdgo._internal.strconv.Strconv.quoteToGraphic(_s);
    }
    /**
        AppendQuoteToGraphic appends a double-quoted Go string literal representing s,
        as generated by QuoteToGraphic, to dst and returns the extended buffer.
    **/
    static public function appendQuoteToGraphic(_dst:Array<StdTypes.Int>, _s:String):Array<StdTypes.Int> {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.strconv.Strconv.appendQuoteToGraphic(_dst, _s)) i];
    }
    /**
        QuoteRune returns a single-quoted Go character literal representing the
        rune. The returned string uses Go escape sequences (\t, \n, \xFF, \u0100)
        for control characters and non-printable characters as defined by IsPrint.
        If r is not a valid Unicode code point, it is interpreted as the Unicode
        replacement character U+FFFD.
    **/
    static public function quoteRune(_r:StdTypes.Int):String {
        return stdgo._internal.strconv.Strconv.quoteRune(_r);
    }
    /**
        AppendQuoteRune appends a single-quoted Go character literal representing the rune,
        as generated by QuoteRune, to dst and returns the extended buffer.
    **/
    static public function appendQuoteRune(_dst:Array<StdTypes.Int>, _r:StdTypes.Int):Array<StdTypes.Int> {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.strconv.Strconv.appendQuoteRune(_dst, _r)) i];
    }
    /**
        QuoteRuneToASCII returns a single-quoted Go character literal representing
        the rune. The returned string uses Go escape sequences (\t, \n, \xFF,
        \u0100) for non-ASCII characters and non-printable characters as defined
        by IsPrint.
        If r is not a valid Unicode code point, it is interpreted as the Unicode
        replacement character U+FFFD.
    **/
    static public function quoteRuneToASCII(_r:StdTypes.Int):String {
        return stdgo._internal.strconv.Strconv.quoteRuneToASCII(_r);
    }
    /**
        AppendQuoteRuneToASCII appends a single-quoted Go character literal representing the rune,
        as generated by QuoteRuneToASCII, to dst and returns the extended buffer.
    **/
    static public function appendQuoteRuneToASCII(_dst:Array<StdTypes.Int>, _r:StdTypes.Int):Array<StdTypes.Int> {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.strconv.Strconv.appendQuoteRuneToASCII(_dst, _r)) i];
    }
    /**
        QuoteRuneToGraphic returns a single-quoted Go character literal representing
        the rune. If the rune is not a Unicode graphic character,
        as defined by IsGraphic, the returned string will use a Go escape sequence
        (\t, \n, \xFF, \u0100).
        If r is not a valid Unicode code point, it is interpreted as the Unicode
        replacement character U+FFFD.
    **/
    static public function quoteRuneToGraphic(_r:StdTypes.Int):String {
        return stdgo._internal.strconv.Strconv.quoteRuneToGraphic(_r);
    }
    /**
        AppendQuoteRuneToGraphic appends a single-quoted Go character literal representing the rune,
        as generated by QuoteRuneToGraphic, to dst and returns the extended buffer.
    **/
    static public function appendQuoteRuneToGraphic(_dst:Array<StdTypes.Int>, _r:StdTypes.Int):Array<StdTypes.Int> {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.strconv.Strconv.appendQuoteRuneToGraphic(_dst, _r)) i];
    }
    /**
        CanBackquote reports whether the string s can be represented
        unchanged as a single-line backquoted string without control
        characters other than tab.
    **/
    static public function canBackquote(_s:String):Bool {
        return stdgo._internal.strconv.Strconv.canBackquote(_s);
    }
    /**
        UnquoteChar decodes the first character or byte in the escaped string
        or character literal represented by the string s.
        It returns four values:
        
         1. value, the decoded Unicode code point or byte value;
         2. multibyte, a boolean indicating whether the decoded character requires a multibyte UTF-8 representation;
         3. tail, the remainder of the string after the character; and
         4. an error that will be nil if the character is syntactically valid.
        
        The second argument, quote, specifies the type of literal being parsed
        and therefore which escaped quote character is permitted.
        If set to a single quote, it permits the sequence \' and disallows unescaped '.
        If set to a double quote, it permits \" and disallows unescaped ".
        If set to zero, it does not permit either escape and allows both quote characters to appear unescaped.
    **/
    static public function unquoteChar(_s:String, _quote:StdTypes.Int):stdgo.Tuple.Tuple4<StdTypes.Int, Bool, String, stdgo.Error> {
        return {
            final obj = stdgo._internal.strconv.Strconv.unquoteChar(_s, _quote);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    /**
        QuotedPrefix returns the quoted string (as understood by Unquote) at the prefix of s.
        If s does not start with a valid quoted string, QuotedPrefix returns an error.
    **/
    static public function quotedPrefix(_s:String):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.strconv.Strconv.quotedPrefix(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Unquote interprets s as a single-quoted, double-quoted,
        or backquoted Go string literal, returning the string value
        that s quotes.  (If s is single-quoted, it would be a Go
        character literal; Unquote returns the corresponding
        one-character string.)
    **/
    static public function unquote(_s:String):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.strconv.Strconv.unquote(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        IsPrint reports whether the rune is defined as printable by Go, with
        the same definition as unicode.IsPrint: letters, numbers, punctuation,
        symbols and ASCII space.
    **/
    static public function isPrint(_r:StdTypes.Int):Bool {
        return stdgo._internal.strconv.Strconv.isPrint(_r);
    }
    /**
        IsGraphic reports whether the rune is defined as a Graphic by Unicode. Such
        characters include letters, marks, numbers, punctuation, symbols, and
        spaces, from categories L, M, N, P, S, and Zs.
    **/
    static public function isGraphic(_r:StdTypes.Int):Bool {
        return stdgo._internal.strconv.Strconv.isGraphic(_r);
    }
}
