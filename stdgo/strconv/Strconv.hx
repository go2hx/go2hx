package stdgo.strconv;
final intSize : haxe.UInt64 = stdgo._internal.strconv.Strconv_intSize.intSize;
var errRange(get, set) : stdgo.Error;
private function get_errRange():stdgo.Error return stdgo._internal.strconv.Strconv_errRange.errRange;
private function set_errRange(v:stdgo.Error):stdgo.Error {
        stdgo._internal.strconv.Strconv_errRange.errRange = v;
        return v;
    }
var errSyntax(get, set) : stdgo.Error;
private function get_errSyntax():stdgo.Error return stdgo._internal.strconv.Strconv_errSyntax.errSyntax;
private function set_errSyntax(v:stdgo.Error):stdgo.Error {
        stdgo._internal.strconv.Strconv_errSyntax.errSyntax = v;
        return v;
    }
var bitSizeError(get, set) : (stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>;
private function get_bitSizeError():(stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError> return (_0, _1, _2) -> stdgo._internal.strconv.Strconv_bitSizeError.bitSizeError(_0, _1, _2);
private function set_bitSizeError(v:(stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>):(stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError> {
        stdgo._internal.strconv.Strconv_bitSizeError.bitSizeError = v;
        return v;
    }
var baseError(get, set) : (stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>;
private function get_baseError():(stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError> return (_0, _1, _2) -> stdgo._internal.strconv.Strconv_baseError.baseError(_0, _1, _2);
private function set_baseError(v:(stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>):(stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError> {
        stdgo._internal.strconv.Strconv_baseError.baseError = v;
        return v;
    }
@:structInit @:using(stdgo.strconv.Strconv.NumError_static_extension) abstract NumError(stdgo._internal.strconv.Strconv_NumError.NumError) from stdgo._internal.strconv.Strconv_NumError.NumError to stdgo._internal.strconv.Strconv_NumError.NumError {
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
    public function new(?func:String, ?num:String, ?err:stdgo.Error) this = new stdgo._internal.strconv.Strconv_NumError.NumError(func, num, err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.strconv.Strconv.T_decimal_static_extension) abstract T_decimal(stdgo._internal.strconv.Strconv_T_decimal.T_decimal) from stdgo._internal.strconv.Strconv_T_decimal.T_decimal to stdgo._internal.strconv.Strconv_T_decimal.T_decimal {
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
    public function new(?_d:haxe.ds.Vector<std.UInt>, ?_nd:StdTypes.Int, ?_dp:StdTypes.Int, ?_neg:Bool, ?_trunc:Bool) this = new stdgo._internal.strconv.Strconv_T_decimal.T_decimal(([for (i in _d) i] : stdgo.GoArray<stdgo.GoUInt8>), _nd, _dp, _neg, _trunc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_leftCheat(stdgo._internal.strconv.Strconv_T_leftCheat.T_leftCheat) from stdgo._internal.strconv.Strconv_T_leftCheat.T_leftCheat to stdgo._internal.strconv.Strconv_T_leftCheat.T_leftCheat {
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
    public function new(?_delta:StdTypes.Int, ?_cutoff:String) this = new stdgo._internal.strconv.Strconv_T_leftCheat.T_leftCheat(_delta, _cutoff);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_floatInfo(stdgo._internal.strconv.Strconv_T_floatInfo.T_floatInfo) from stdgo._internal.strconv.Strconv_T_floatInfo.T_floatInfo to stdgo._internal.strconv.Strconv_T_floatInfo.T_floatInfo {
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
    public function new(?_mantbits:std.UInt, ?_expbits:std.UInt, ?_bias:StdTypes.Int) this = new stdgo._internal.strconv.Strconv_T_floatInfo.T_floatInfo(_mantbits, _expbits, _bias);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_decimalSlice(stdgo._internal.strconv.Strconv_T_decimalSlice.T_decimalSlice) from stdgo._internal.strconv.Strconv_T_decimalSlice.T_decimalSlice to stdgo._internal.strconv.Strconv_T_decimalSlice.T_decimalSlice {
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
    public function new(?_d:Array<std.UInt>, ?_nd:StdTypes.Int, ?_dp:StdTypes.Int) this = new stdgo._internal.strconv.Strconv_T_decimalSlice.T_decimalSlice(([for (i in _d) i] : stdgo.Slice<stdgo.GoUInt8>), _nd, _dp);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class NumError_static_extension {
    static public function unwrap(_e:NumError):stdgo.Error {
        return stdgo._internal.strconv.Strconv_NumError_static_extension.NumError_static_extension.unwrap(_e);
    }
    static public function error(_e:NumError):String {
        return stdgo._internal.strconv.Strconv_NumError_static_extension.NumError_static_extension.error(_e);
    }
}
class T_decimal_static_extension {
    static public function roundedInteger(_a:T_decimal):haxe.UInt64 {
        return stdgo._internal.strconv.Strconv_T_decimal_static_extension.T_decimal_static_extension.roundedInteger(_a);
    }
    static public function roundUp(_a:T_decimal, _nd:StdTypes.Int):Void {
        stdgo._internal.strconv.Strconv_T_decimal_static_extension.T_decimal_static_extension.roundUp(_a, _nd);
    }
    static public function roundDown(_a:T_decimal, _nd:StdTypes.Int):Void {
        stdgo._internal.strconv.Strconv_T_decimal_static_extension.T_decimal_static_extension.roundDown(_a, _nd);
    }
    static public function round(_a:T_decimal, _nd:StdTypes.Int):Void {
        stdgo._internal.strconv.Strconv_T_decimal_static_extension.T_decimal_static_extension.round(_a, _nd);
    }
    static public function shift(_a:T_decimal, _k:StdTypes.Int):Void {
        stdgo._internal.strconv.Strconv_T_decimal_static_extension.T_decimal_static_extension.shift(_a, _k);
    }
    static public function assign(_a:T_decimal, _v:haxe.UInt64):Void {
        stdgo._internal.strconv.Strconv_T_decimal_static_extension.T_decimal_static_extension.assign(_a, _v);
    }
    static public function string(_a:T_decimal):String {
        return stdgo._internal.strconv.Strconv_T_decimal_static_extension.T_decimal_static_extension.string(_a);
    }
    static public function _floatBits(_d:T_decimal, _flt:T_floatInfo):stdgo.Tuple<haxe.UInt64, Bool> {
        return {
            final obj = stdgo._internal.strconv.Strconv_T_decimal_static_extension.T_decimal_static_extension._floatBits(_d, _flt);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _set(_b:T_decimal, _s:String):Bool {
        return stdgo._internal.strconv.Strconv_T_decimal_static_extension.T_decimal_static_extension._set(_b, _s);
    }
}
/**
    /|*{
    	if d.nd == 0 {
    		gotoNext = 2683274
    		_ = gotoNext == 2683274
    		mant_2683212 = 0
    		exp_2683199 = flt.bias
    		gotoNext = 2684676
    		gotoNext = 2683467
    	} else {
    		gotoNext = 2683467
    	}
    	_ = gotoNext == 2683467
    	if d.dp > 310 {
    		gotoNext = 2683481
    		_ = gotoNext == 2683481
    		gotoNext = 2684591
    		gotoNext = 2683503
    	} else {
    		gotoNext = 2683503
    	}
    	_ = gotoNext == 2683503
    	if d.dp < -330 {
    		gotoNext = 2683518
    		_ = gotoNext == 2683518
    		mant_2683212 = 0
    		exp_2683199 = flt.bias
    		gotoNext = 2684676
    		gotoNext = 2683627
    	} else {
    		gotoNext = 2683627
    	}
    	_ = gotoNext == 2683627
    	exp_2683199 = 0
    	_ = 0
    	gotoNext = 2683636
    	_ = gotoNext == 2683636
    	if d.dp > 0 {
    		gotoNext = 2683649
    		_ = gotoNext == 2683649
    		if d.dp >= len(powtab) {
    			gotoNext = 2683688
    			_ = gotoNext == 2683688
    			n_2683657 = 27
    			gotoNext = 2683737
    		} else {
    			gotoNext = 2683709
    			_ = gotoNext == 2683709
    			n_2683657 = powtab[d.dp]
    			_ = 0
    			gotoNext = 2683737
    		}
    		_ = gotoNext == 2683737
    		d.Shift(-n_2683657)
    		exp_2683199 += n_2683657
    		gotoNext = 2683636
    	} else {
    		gotoNext = 2683764
    	}
    	_ = gotoNext == 2683764
    	_ = 0
    	gotoNext = 2683764
    	_ = gotoNext == 2683764
    	if d.dp < 0 || d.dp == 0 && d.d[0] < 53 {
    		gotoNext = 2683806
    		_ = gotoNext == 2683806
    		if -d.dp >= len(powtab) {
    			gotoNext = 2683846
    			_ = gotoNext == 2683846
    			n_2683814 = 27
    			gotoNext = 2683896
    		} else {
    			gotoNext = 2683867
    			_ = gotoNext == 2683867
    			n_2683814 = powtab[-d.dp]
    			_ = 0
    			gotoNext = 2683896
    		}
    		_ = gotoNext == 2683896
    		d.Shift(n_2683814)
    		exp_2683199 -= n_2683814
    		gotoNext = 2683764
    	} else {
    		gotoNext = 2683983
    	}
    	_ = gotoNext == 2683983
    	exp_2683199--
    	if exp_2683199 < flt.bias+1 {
    		gotoNext = 2684134
    		_ = gotoNext == 2684134
    		n_2684138 = flt.bias + 1 - exp_2683199
    		d.Shift(-n_2684138)
    		exp_2683199 += n_2684138
    		gotoNext = 2684192
    	} else {
    		gotoNext = 2684192
    	}
    	_ = gotoNext == 2684192
    	if exp_2683199-flt.bias >= 1<<flt.expbits-1 {
    		gotoNext = 2684228
    		_ = gotoNext == 2684228
    		gotoNext = 2684591
    		gotoNext = 2684284
    	} else {
    		gotoNext = 2684284
    	}
    	_ = gotoNext == 2684284
    	d.Shift(int(1 + flt.mantbits))
    	mant_2683212 = d.RoundedInteger()
    	if mant_2683212 == 2<<flt.mantbits {
    		gotoNext = 2684420
    		_ = gotoNext == 2684420
    		mant_2683212 >>= 1
    		exp_2683199++
    		if exp_2683199-flt.bias >= 1<<flt.expbits-1 {
    			gotoNext = 2684481
    			_ = gotoNext == 2684481
    			gotoNext = 2684591
    			gotoNext = 2684527
    		} else {
    			gotoNext = 2684527
    		}
    		gotoNext = 2684527
    	} else {
    		gotoNext = 2684527
    	}
    	_ = gotoNext == 2684527
    	if mant_2683212&(1<<flt.mantbits) == 0 {
    		gotoNext = 2684558
    		_ = gotoNext == 2684558
    		exp_2683199 = flt.bias
    		gotoNext = 2684581
    	} else {
    		gotoNext = 2684581
    	}
    	_ = gotoNext == 2684581
    	gotoNext = 2684676
    	gotoNext = 2684591
    	_ = gotoNext == 2684591
    	mant_2683212 = 0
    	exp_2683199 = 1<<flt.expbits - 1 + flt.bias
    	overflow = true
    	gotoNext = 2684676
    	_ = gotoNext == 2684676
    	bits_2684701 = mant_2683212 & (uint64(1)<<flt.mantbits - 1)
    	bits_2684701 |= uint64((exp_2683199-flt.bias)&(1<<flt.expbits-1)) << flt.mantbits
    	if d.neg {
    		gotoNext = 2684823
    		_ = gotoNext == 2684823
    		bits_2684701 |= 1 << flt.mantbits << flt.expbits
    		gotoNext = 2684872
    	} else {
    		gotoNext = 2684872
    	}
    	_ = gotoNext == 2684872
    	return bits_2684701, overflow
    	gotoNext = -1
    }*|/
**/
class Strconv {
    /**
        ParseBool returns the boolean value represented by the string.
        It accepts 1, t, T, TRUE, true, True, 0, f, F, FALSE, false, False.
        Any other value returns an error.
    **/
    static public function parseBool(_str:String):stdgo.Tuple<Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.strconv.Strconv_parseBool.parseBool(_str);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        FormatBool returns "true" or "false" according to the value of b.
    **/
    static public function formatBool(_b:Bool):String {
        return stdgo._internal.strconv.Strconv_formatBool.formatBool(_b);
    }
    /**
        AppendBool appends "true" or "false", according to the value of b,
        to dst and returns the extended buffer.
    **/
    static public function appendBool(_dst:Array<std.UInt>, _b:Bool):Array<std.UInt> {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.strconv.Strconv_appendBool.appendBool(_dst, _b)) i];
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
            final obj = stdgo._internal.strconv.Strconv_parseComplex.parseComplex(_s, _bitSize);
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
            final obj = stdgo._internal.strconv.Strconv_parseFloat.parseFloat(_s, _bitSize);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ParseUint is like ParseInt but for unsigned numbers.
        
        A sign prefix is not permitted.
    **/
    static public function parseUint(_s:String, _base:StdTypes.Int, _bitSize:StdTypes.Int):stdgo.Tuple<haxe.UInt64, stdgo.Error> {
        return {
            final obj = stdgo._internal.strconv.Strconv_parseUint.parseUint(_s, _base, _bitSize);
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
            final obj = stdgo._internal.strconv.Strconv_parseInt.parseInt(_s, _base, _bitSize);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Atoi is equivalent to ParseInt(s, 10, 0), converted to type int.
    **/
    static public function atoi(_s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.strconv.Strconv_atoi.atoi(_s);
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
    static public function formatComplex(_c:stdgo.GoComplex128, _fmt:std.UInt, _prec:StdTypes.Int, _bitSize:StdTypes.Int):String {
        return stdgo._internal.strconv.Strconv_formatComplex.formatComplex(_c, _fmt, _prec, _bitSize);
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
    static public function formatFloat(_f:StdTypes.Float, _fmt:std.UInt, _prec:StdTypes.Int, _bitSize:StdTypes.Int):String {
        return stdgo._internal.strconv.Strconv_formatFloat.formatFloat(_f, _fmt, _prec, _bitSize);
    }
    /**
        AppendFloat appends the string form of the floating-point number f,
        as generated by FormatFloat, to dst and returns the extended buffer.
    **/
    static public function appendFloat(_dst:Array<std.UInt>, _f:StdTypes.Float, _fmt:std.UInt, _prec:StdTypes.Int, _bitSize:StdTypes.Int):Array<std.UInt> {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.strconv.Strconv_appendFloat.appendFloat(_dst, _f, _fmt, _prec, _bitSize)) i];
    }
    static public function newDecimal(_i:haxe.UInt64):T_decimal {
        return stdgo._internal.strconv.Strconv_newDecimal.newDecimal(_i);
    }
    static public function setOptimize(_b:Bool):Bool {
        return stdgo._internal.strconv.Strconv_setOptimize.setOptimize(_b);
    }
    static public function parseFloatPrefix(_s:String, _bitSize:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Float, StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.strconv.Strconv_parseFloatPrefix.parseFloatPrefix(_s, _bitSize);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function mulByLog2Log10(_x:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.strconv.Strconv_mulByLog2Log10.mulByLog2Log10(_x);
    }
    static public function mulByLog10Log2(_x:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.strconv.Strconv_mulByLog10Log2.mulByLog10Log2(_x);
    }
    /**
        FormatUint returns the string representation of i in the given base,
        for 2 <= base <= 36. The result uses the lower-case letters 'a' to 'z'
        for digit values >= 10.
    **/
    static public function formatUint(_i:haxe.UInt64, _base:StdTypes.Int):String {
        return stdgo._internal.strconv.Strconv_formatUint.formatUint(_i, _base);
    }
    /**
        FormatInt returns the string representation of i in the given base,
        for 2 <= base <= 36. The result uses the lower-case letters 'a' to 'z'
        for digit values >= 10.
    **/
    static public function formatInt(_i:haxe.Int64, _base:StdTypes.Int):String {
        return stdgo._internal.strconv.Strconv_formatInt.formatInt(_i, _base);
    }
    /**
        Itoa is equivalent to FormatInt(int64(i), 10).
    **/
    static public function itoa(_i:StdTypes.Int):String {
        return stdgo._internal.strconv.Strconv_itoa.itoa(_i);
    }
    /**
        AppendInt appends the string form of the integer i,
        as generated by FormatInt, to dst and returns the extended buffer.
    **/
    static public function appendInt(_dst:Array<std.UInt>, _i:haxe.Int64, _base:StdTypes.Int):Array<std.UInt> {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.strconv.Strconv_appendInt.appendInt(_dst, _i, _base)) i];
    }
    /**
        AppendUint appends the string form of the unsigned integer i,
        as generated by FormatUint, to dst and returns the extended buffer.
    **/
    static public function appendUint(_dst:Array<std.UInt>, _i:haxe.UInt64, _base:StdTypes.Int):Array<std.UInt> {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.strconv.Strconv_appendUint.appendUint(_dst, _i, _base)) i];
    }
    /**
        Quote returns a double-quoted Go string literal representing s. The
        returned string uses Go escape sequences (\t, \n, \xFF, \u0100) for
        control characters and non-printable characters as defined by
        IsPrint.
    **/
    static public function quote(_s:String):String {
        return stdgo._internal.strconv.Strconv_quote.quote(_s);
    }
    /**
        AppendQuote appends a double-quoted Go string literal representing s,
        as generated by Quote, to dst and returns the extended buffer.
    **/
    static public function appendQuote(_dst:Array<std.UInt>, _s:String):Array<std.UInt> {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.strconv.Strconv_appendQuote.appendQuote(_dst, _s)) i];
    }
    /**
        QuoteToASCII returns a double-quoted Go string literal representing s.
        The returned string uses Go escape sequences (\t, \n, \xFF, \u0100) for
        non-ASCII characters and non-printable characters as defined by IsPrint.
    **/
    static public function quoteToASCII(_s:String):String {
        return stdgo._internal.strconv.Strconv_quoteToASCII.quoteToASCII(_s);
    }
    /**
        AppendQuoteToASCII appends a double-quoted Go string literal representing s,
        as generated by QuoteToASCII, to dst and returns the extended buffer.
    **/
    static public function appendQuoteToASCII(_dst:Array<std.UInt>, _s:String):Array<std.UInt> {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.strconv.Strconv_appendQuoteToASCII.appendQuoteToASCII(_dst, _s)) i];
    }
    /**
        QuoteToGraphic returns a double-quoted Go string literal representing s.
        The returned string leaves Unicode graphic characters, as defined by
        IsGraphic, unchanged and uses Go escape sequences (\t, \n, \xFF, \u0100)
        for non-graphic characters.
    **/
    static public function quoteToGraphic(_s:String):String {
        return stdgo._internal.strconv.Strconv_quoteToGraphic.quoteToGraphic(_s);
    }
    /**
        AppendQuoteToGraphic appends a double-quoted Go string literal representing s,
        as generated by QuoteToGraphic, to dst and returns the extended buffer.
    **/
    static public function appendQuoteToGraphic(_dst:Array<std.UInt>, _s:String):Array<std.UInt> {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.strconv.Strconv_appendQuoteToGraphic.appendQuoteToGraphic(_dst, _s)) i];
    }
    /**
        QuoteRune returns a single-quoted Go character literal representing the
        rune. The returned string uses Go escape sequences (\t, \n, \xFF, \u0100)
        for control characters and non-printable characters as defined by IsPrint.
        If r is not a valid Unicode code point, it is interpreted as the Unicode
        replacement character U+FFFD.
    **/
    static public function quoteRune(_r:StdTypes.Int):String {
        return stdgo._internal.strconv.Strconv_quoteRune.quoteRune(_r);
    }
    /**
        AppendQuoteRune appends a single-quoted Go character literal representing the rune,
        as generated by QuoteRune, to dst and returns the extended buffer.
    **/
    static public function appendQuoteRune(_dst:Array<std.UInt>, _r:StdTypes.Int):Array<std.UInt> {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.strconv.Strconv_appendQuoteRune.appendQuoteRune(_dst, _r)) i];
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
        return stdgo._internal.strconv.Strconv_quoteRuneToASCII.quoteRuneToASCII(_r);
    }
    /**
        AppendQuoteRuneToASCII appends a single-quoted Go character literal representing the rune,
        as generated by QuoteRuneToASCII, to dst and returns the extended buffer.
    **/
    static public function appendQuoteRuneToASCII(_dst:Array<std.UInt>, _r:StdTypes.Int):Array<std.UInt> {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.strconv.Strconv_appendQuoteRuneToASCII.appendQuoteRuneToASCII(_dst, _r)) i];
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
        return stdgo._internal.strconv.Strconv_quoteRuneToGraphic.quoteRuneToGraphic(_r);
    }
    /**
        AppendQuoteRuneToGraphic appends a single-quoted Go character literal representing the rune,
        as generated by QuoteRuneToGraphic, to dst and returns the extended buffer.
    **/
    static public function appendQuoteRuneToGraphic(_dst:Array<std.UInt>, _r:StdTypes.Int):Array<std.UInt> {
        final _dst = ([for (i in _dst) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.strconv.Strconv_appendQuoteRuneToGraphic.appendQuoteRuneToGraphic(_dst, _r)) i];
    }
    /**
        CanBackquote reports whether the string s can be represented
        unchanged as a single-line backquoted string without control
        characters other than tab.
    **/
    static public function canBackquote(_s:String):Bool {
        return stdgo._internal.strconv.Strconv_canBackquote.canBackquote(_s);
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
    static public function unquoteChar(_s:String, _quote:std.UInt):stdgo.Tuple.Tuple4<StdTypes.Int, Bool, String, stdgo.Error> {
        return {
            final obj = stdgo._internal.strconv.Strconv_unquoteChar.unquoteChar(_s, _quote);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    /**
        QuotedPrefix returns the quoted string (as understood by Unquote) at the prefix of s.
        If s does not start with a valid quoted string, QuotedPrefix returns an error.
    **/
    static public function quotedPrefix(_s:String):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.strconv.Strconv_quotedPrefix.quotedPrefix(_s);
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
            final obj = stdgo._internal.strconv.Strconv_unquote.unquote(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        IsPrint reports whether the rune is defined as printable by Go, with
        the same definition as unicode.IsPrint: letters, numbers, punctuation,
        symbols and ASCII space.
    **/
    static public function isPrint(_r:StdTypes.Int):Bool {
        return stdgo._internal.strconv.Strconv_isPrint.isPrint(_r);
    }
    /**
        IsGraphic reports whether the rune is defined as a Graphic by Unicode. Such
        characters include letters, marks, numbers, punctuation, symbols, and
        spaces, from categories L, M, N, P, S, and Zs.
    **/
    static public function isGraphic(_r:StdTypes.Int):Bool {
        return stdgo._internal.strconv.Strconv_isGraphic.isGraphic(_r);
    }
}
