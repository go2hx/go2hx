package stdgo.go.constant;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
/**
    // Package constant implements Values representing untyped
    // Go constants and their corresponding operations.
    //
    // A special Unknown value may be used when a value
    // is unknown due to an error. Operations on unknown
    // values produce unknown values unless specified
    // otherwise.
**/
private var __go2hxdoc__package : Bool;
/**
    
    
    
**/
private var __Kind_index = (new GoArray<GoUInt8>((0 : GoUInt8), (7 : GoUInt8), (11 : GoUInt8), (17 : GoUInt8), (20 : GoUInt8), (25 : GoUInt8), (32 : GoUInt8)) : GoArray<GoUInt8>);
/**
    
    
    
**/
private var _floatVal0 = (new T_floatVal(_newFloat()) : T_floatVal);
/**
    
    
    
**/
private var _intTests = (new Slice<GoString>(
0,
0,
("0_123 = 0123" : GoString),
("0123_456 = 0123456" : GoString),
("1_234 = 1234" : GoString),
("1_234_567 = 1234567" : GoString),
("0X_0 = 0" : GoString),
("0X_1234 = 0x1234" : GoString),
("0X_CAFE_f00d = 0xcafef00d" : GoString),
("0o0 = 0" : GoString),
("0o1234 = 01234" : GoString),
("0o01234567 = 01234567" : GoString),
("0O0 = 0" : GoString),
("0O1234 = 01234" : GoString),
("0O01234567 = 01234567" : GoString),
("0o_0 = 0" : GoString),
("0o_1234 = 01234" : GoString),
("0o0123_4567 = 01234567" : GoString),
("0O_0 = 0" : GoString),
("0O_1234 = 01234" : GoString),
("0O0123_4567 = 01234567" : GoString),
("0b0 = 0" : GoString),
("0b1011 = 0xb" : GoString),
("0b00101101 = 0x2d" : GoString),
("0B0 = 0" : GoString),
("0B1011 = 0xb" : GoString),
("0B00101101 = 0x2d" : GoString),
("0b_0 = 0" : GoString),
("0b10_11 = 0xb" : GoString),
("0b_0010_1101 = 0x2d" : GoString)) : Slice<GoString>);
/**
    // The RHS operand may be a floating-point quotient n/d of two integer values n and d.
    
    
**/
private var _floatTests = (new Slice<GoString>(
0,
0,
("1_2_3. = 123." : GoString),
("0_123. = 123." : GoString),
("0_0e0 = 0." : GoString),
("1_2_3e0 = 123." : GoString),
("0_123e0 = 123." : GoString),
("0e-0_0 = 0." : GoString),
("1_2_3E+0 = 123." : GoString),
("0123E1_2_3 = 123e123" : GoString),
("0.e+1 = 0." : GoString),
("123.E-1_0 = 123e-10" : GoString),
("01_23.e123 = 123e123" : GoString),
(".0e-1 = .0" : GoString),
(".123E+10 = .123e10" : GoString),
(".0123E123 = .0123e123" : GoString),
("1_2_3.123 = 123.123" : GoString),
("0123.01_23 = 123.0123" : GoString),
("1e-1000000000 = 0" : GoString),
("1e+1000000000 = ?" : GoString),
("6e5518446744 = ?" : GoString),
("-6e5518446744 = ?" : GoString),
("0x0.p+0 = 0." : GoString),
("0Xdeadcafe.p-10 = 0xdeadcafe/1024" : GoString),
("0x1234.P84 = 0x1234000000000000000000000" : GoString),
("0x.1p-0 = 1/16" : GoString),
("0X.deadcafep4 = 0xdeadcafe/0x10000000" : GoString),
("0x.1234P+12 = 0x1234/0x10" : GoString),
("0x0p0 = 0." : GoString),
("0Xdeadcafep+1 = 0x1bd5b95fc" : GoString),
("0x1234P-10 = 0x1234/1024" : GoString),
("0x0.0p0 = 0." : GoString),
("0Xdead.cafep+1 = 0x1bd5b95fc/0x10000" : GoString),
("0x12.34P-10 = 0x1234/0x40000" : GoString),
("0Xdead_cafep+1 = 0xdeadcafep+1" : GoString),
("0x_1234P-10 = 0x1234p-10" : GoString),
("0X_dead_cafe.p-10 = 0xdeadcafe.p-10" : GoString),
("0x12_34.P1_2_3 = 0x1234.p123" : GoString)) : Slice<GoString>);
/**
    
    
    
**/
private var _imagTests = (new Slice<GoString>(
0,
0,
("1_234i = 1234i" : GoString),
("1_234_567i = 1234567i" : GoString),
("0.i = 0i" : GoString),
("123.i = 123i" : GoString),
("0123.i = 123i" : GoString),
("0.e+1i = 0i" : GoString),
("123.E-1_0i = 123e-10i" : GoString),
("01_23.e123i = 123e123i" : GoString),
("1e-1000000000i = 0i" : GoString),
("1e+1000000000i = ?" : GoString),
("6e5518446744i = ?" : GoString),
("-6e5518446744i = ?" : GoString)) : Slice<GoString>);
/**
    
    
    
**/
private var _opTests = (new Slice<GoString>(
0,
0,
("+ 0 = 0" : GoString),
("+ ? = ?" : GoString),
("- 1 = -1" : GoString),
("- ? = ?" : GoString),
("^ 0 = -1" : GoString),
("^ ? = ?" : GoString),
("! true = false" : GoString),
("! false = true" : GoString),
("! ? = ?" : GoString),
("\"\" + \"\" = \"\"" : GoString),
("\"foo\" + \"\" = \"foo\"" : GoString),
("\"\" + \"bar\" = \"bar\"" : GoString),
("\"foo\" + \"bar\" = \"foobar\"" : GoString),
("0 + 0 = 0" : GoString),
("0 + 0.1 = 0.1" : GoString),
("0 + 0.1i = 0.1i" : GoString),
("0.1 + 0.9 = 1" : GoString),
("1e100 + 1e100 = 2e100" : GoString),
("? + 0 = ?" : GoString),
("0 + ? = ?" : GoString),
("0 - 0 = 0" : GoString),
("0 - 0.1 = -0.1" : GoString),
("0 - 0.1i = -0.1i" : GoString),
("1e100 - 1e100 = 0" : GoString),
("? - 0 = ?" : GoString),
("0 - ? = ?" : GoString),
("0 * 0 = 0" : GoString),
("1 * 0.1 = 0.1" : GoString),
("1 * 0.1i = 0.1i" : GoString),
("1i * 1i = -1" : GoString),
("? * 0 = ?" : GoString),
("0 * ? = ?" : GoString),
("0 * 1e+1000000000 = ?" : GoString),
("0 / 0 = \"division_by_zero\"" : GoString),
("10 / 2 = 5" : GoString),
("5 / 3 = 5/3" : GoString),
("5i / 3i = 5/3" : GoString),
("? / 0 = ?" : GoString),
("0 / ? = ?" : GoString),
("0 * 1e+1000000000i = ?" : GoString),
("0 % 0 = \"runtime_error:_integer_divide_by_zero\"" : GoString),
("10 % 3 = 1" : GoString),
("? % 0 = ?" : GoString),
("0 % ? = ?" : GoString),
("0 & 0 = 0" : GoString),
("12345 & 0 = 0" : GoString),
("0xff & 0xf = 0xf" : GoString),
("? & 0 = ?" : GoString),
("0 & ? = ?" : GoString),
("0 | 0 = 0" : GoString),
("12345 | 0 = 12345" : GoString),
("0xb | 0xa0 = 0xab" : GoString),
("? | 0 = ?" : GoString),
("0 | ? = ?" : GoString),
("0 ^ 0 = 0" : GoString),
("1 ^ -1 = -2" : GoString),
("? ^ 0 = ?" : GoString),
("0 ^ ? = ?" : GoString),
("0 &^ 0 = 0" : GoString),
("0xf &^ 1 = 0xe" : GoString),
("1 &^ 0xf = 0" : GoString),
("0 << 0 = 0" : GoString),
("1 << 10 = 1024" : GoString),
("0 >> 0 = 0" : GoString),
("1024 >> 10 == 1" : GoString),
("? << 0 == ?" : GoString),
("? >> 10 == ?" : GoString),
("false == false = true" : GoString),
("false == true = false" : GoString),
("true == false = false" : GoString),
("true == true = true" : GoString),
("false != false = false" : GoString),
("false != true = true" : GoString),
("true != false = true" : GoString),
("true != true = false" : GoString),
("\"foo\" == \"bar\" = false" : GoString),
("\"foo\" != \"bar\" = true" : GoString),
("\"foo\" < \"bar\" = false" : GoString),
("\"foo\" <= \"bar\" = false" : GoString),
("\"foo\" > \"bar\" = true" : GoString),
("\"foo\" >= \"bar\" = true" : GoString),
("0 == 0 = true" : GoString),
("0 != 0 = false" : GoString),
("0 < 10 = true" : GoString),
("10 <= 10 = true" : GoString),
("0 > 10 = false" : GoString),
("10 >= 10 = true" : GoString),
("1/123456789 == 1/123456789 == true" : GoString),
("1/123456789 != 1/123456789 == false" : GoString),
("1/123456789 < 1/123456788 == true" : GoString),
("1/123456788 <= 1/123456789 == false" : GoString),
("0.11 > 0.11 = false" : GoString),
("0.11 >= 0.11 = true" : GoString),
("? == 0 = false" : GoString),
("? != 0 = false" : GoString),
("? < 10 = false" : GoString),
("? <= 10 = false" : GoString),
("? > 10 = false" : GoString),
("? >= 10 = false" : GoString),
("0 == ? = false" : GoString),
("0 != ? = false" : GoString),
("0 < ? = false" : GoString),
("10 <= ? = false" : GoString),
("0 > ? = false" : GoString),
("10 >= ? = false" : GoString)) : Slice<GoString>);
/**
    
    
    
**/
private var _xxx = stdgo.strings.Strings.repeat(("x" : GoString), (68 : GoInt));
/**
    
    
    
**/
private var _issue14262 = ("\"بموجب الشروط التالية نسب المصنف — يجب عليك أن تنسب العمل بالطريقة التي تحددها المؤلف أو المرخص (ولكن ليس بأي حال من الأحوال أن توحي وتقترح بتحول أو استخدامك للعمل).  المشاركة على قدم المساواة — إذا كنت يعدل ، والتغيير ، أو الاستفادة من هذا العمل ، قد ينتج عن توزيع العمل إلا في ظل تشابه او تطابق فى واحد لهذا الترخيص.\"" : GoString);
/**
    
    
    
**/
private var _stringTests = (new Slice<T__struct_1>(
0,
0,
({ _input : Go.str(), _short : ("unknown" : GoString), _exact : ("unknown" : GoString) } : T__struct_1),
({ _input : ("0x" : GoString), _short : ("unknown" : GoString), _exact : ("unknown" : GoString) } : T__struct_1),
({ _input : ("\'" : GoString), _short : ("unknown" : GoString), _exact : ("unknown" : GoString) } : T__struct_1),
({ _input : ("1f0" : GoString), _short : ("unknown" : GoString), _exact : ("unknown" : GoString) } : T__struct_1),
({ _input : ("unknown" : GoString), _short : ("unknown" : GoString), _exact : ("unknown" : GoString) } : T__struct_1),
({ _input : ("true" : GoString), _short : ("true" : GoString), _exact : ("true" : GoString) } : T__struct_1),
({ _input : ("false" : GoString), _short : ("false" : GoString), _exact : ("false" : GoString) } : T__struct_1),
({ _input : ("\"\"" : GoString), _short : ("\"\"" : GoString), _exact : ("\"\"" : GoString) } : T__struct_1),
({ _input : ("\"foo\"" : GoString), _short : ("\"foo\"" : GoString), _exact : ("\"foo\"" : GoString) } : T__struct_1),
({ _input : (("\"" : GoString) + _xxx) + ("xx\"" : GoString), _short : (("\"" : GoString) + _xxx) + ("xx\"" : GoString), _exact : (("\"" : GoString) + _xxx) + ("xx\"" : GoString) } : T__struct_1),
({ _input : (("\"" : GoString) + _xxx) + ("xxx\"" : GoString), _short : (("\"" : GoString) + _xxx) + ("..." : GoString), _exact : (("\"" : GoString) + _xxx) + ("xxx\"" : GoString) } : T__struct_1),
({ _input : ((("\"" : GoString) + _xxx) + _xxx) + ("xxx\"" : GoString), _short : (("\"" : GoString) + _xxx) + ("..." : GoString), _exact : ((("\"" : GoString) + _xxx) + _xxx) + ("xxx\"" : GoString) } : T__struct_1),
({ _input : _issue14262, _short : ("\"بموجب الشروط التالية نسب المصنف — يجب عليك أن تنسب العمل بالطريقة ال..." : GoString), _exact : _issue14262 } : T__struct_1),
({ _input : ("0" : GoString), _short : ("0" : GoString), _exact : ("0" : GoString) } : T__struct_1),
({ _input : ("-1" : GoString), _short : ("-1" : GoString), _exact : ("-1" : GoString) } : T__struct_1),
({ _input : ("12345" : GoString), _short : ("12345" : GoString), _exact : ("12345" : GoString) } : T__struct_1),
({ _input : ("-12345678901234567890" : GoString), _short : ("-12345678901234567890" : GoString), _exact : ("-12345678901234567890" : GoString) } : T__struct_1),
({ _input : ("12345678901234567890" : GoString), _short : ("12345678901234567890" : GoString), _exact : ("12345678901234567890" : GoString) } : T__struct_1),
({ _input : ("0." : GoString), _short : ("0" : GoString), _exact : ("0" : GoString) } : T__struct_1),
({ _input : ("-0.0" : GoString), _short : ("0" : GoString), _exact : ("0" : GoString) } : T__struct_1),
({ _input : ("10.0" : GoString), _short : ("10" : GoString), _exact : ("10" : GoString) } : T__struct_1),
({ _input : ("2.1" : GoString), _short : ("2.1" : GoString), _exact : ("21/10" : GoString) } : T__struct_1),
({ _input : ("-2.1" : GoString), _short : ("-2.1" : GoString), _exact : ("-21/10" : GoString) } : T__struct_1),
({ _input : ("1e9999" : GoString), _short : ("1e+9999" : GoString), _exact : ("0x.f8d4a9da224650a8cb2959e10d985ad92adbd44c62917e608b1f24c0e1b76b6f61edffeb15c135a4b601637315f7662f325f82325422b244286a07663c9415d2p+33216" : GoString) } : T__struct_1),
({ _input : ("1e-9999" : GoString), _short : ("1e-9999" : GoString), _exact : ("0x.83b01ba6d8c0425eec1b21e96f7742d63c2653ed0a024cf8a2f9686df578d7b07d7a83d84df6a2ec70a921d1f6cd5574893a7eda4d28ee719e13a5dce2700759p-33215" : GoString) } : T__struct_1),
({ _input : ("2.71828182845904523536028747135266249775724709369995957496696763" : GoString), _short : ("2.71828" : GoString), _exact : ("271828182845904523536028747135266249775724709369995957496696763/100000000000000000000000000000000000000000000000000000000000000" : GoString) } : T__struct_1),
({ _input : ("0e9999999999" : GoString), _short : ("0" : GoString), _exact : ("0" : GoString) } : T__struct_1),
({ _input : ("-6e-1886451601" : GoString), _short : ("0" : GoString), _exact : ("0" : GoString) } : T__struct_1),
({ _input : ("0i" : GoString), _short : ("(0 + 0i)" : GoString), _exact : ("(0 + 0i)" : GoString) } : T__struct_1),
({ _input : ("-0i" : GoString), _short : ("(0 + 0i)" : GoString), _exact : ("(0 + 0i)" : GoString) } : T__struct_1),
({ _input : ("10i" : GoString), _short : ("(0 + 10i)" : GoString), _exact : ("(0 + 10i)" : GoString) } : T__struct_1),
({ _input : ("-10i" : GoString), _short : ("(0 + -10i)" : GoString), _exact : ("(0 + -10i)" : GoString) } : T__struct_1),
({ _input : ("1e9999i" : GoString), _short : ("(0 + 1e+9999i)" : GoString), _exact : ("(0 + 0x.f8d4a9da224650a8cb2959e10d985ad92adbd44c62917e608b1f24c0e1b76b6f61edffeb15c135a4b601637315f7662f325f82325422b244286a07663c9415d2p+33216i)" : GoString) } : T__struct_1)) : Slice<T__struct_1>);
/**
    
    
    
**/
private var _optab = ({
        final x = new stdgo.GoMap.GoObjectMap<GoString, stdgo.go.token.Token.Token>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.go.token.Token.Token", [], stdgo.internal.reflect.Reflect.GoType.basic(int_kind), false, { get : () -> null }) })));
        @:privateAccess x._keys = [
("!" : GoString),
("+" : GoString),
("-" : GoString),
("*" : GoString),
("/" : GoString),
("%" : GoString),
("<<" : GoString),
(">>" : GoString),
("&" : GoString),
("|" : GoString),
("^" : GoString),
("&^" : GoString),
("==" : GoString),
("!=" : GoString),
("<" : GoString),
("<=" : GoString),
(">" : GoString),
(">=" : GoString)];
        @:privateAccess x._values = [
(43 : stdgo.go.token.Token.Token),
(12 : stdgo.go.token.Token.Token),
(13 : stdgo.go.token.Token.Token),
(14 : stdgo.go.token.Token.Token),
(15 : stdgo.go.token.Token.Token),
(16 : stdgo.go.token.Token.Token),
(20 : stdgo.go.token.Token.Token),
(21 : stdgo.go.token.Token.Token),
(17 : stdgo.go.token.Token.Token),
(18 : stdgo.go.token.Token.Token),
(19 : stdgo.go.token.Token.Token),
(22 : stdgo.go.token.Token.Token),
(39 : stdgo.go.token.Token.Token),
(44 : stdgo.go.token.Token.Token),
(40 : stdgo.go.token.Token.Token),
(45 : stdgo.go.token.Token.Token),
(41 : stdgo.go.token.Token.Token),
(46 : stdgo.go.token.Token.Token)];
        x;
    } : stdgo.GoMap<GoString, stdgo.go.token.Token.Token>);
/**
    
    
    
**/
private var _fracTests = (new Slice<GoString>(
0,
0,
("0" : GoString),
("1" : GoString),
("-1" : GoString),
("1.2" : GoString),
("-0.991" : GoString),
("2.718281828" : GoString),
("3.14159265358979323e-10" : GoString),
("1e100" : GoString),
("1e1000" : GoString)) : Slice<GoString>);
/**
    
    
    
**/
private var _bytesTests = (new Slice<GoString>(0, 0, ("0" : GoString), ("1" : GoString), ("123456789" : GoString), ("123456789012345678901234567890123456789012345678901234567890" : GoString)) : Slice<GoString>);
/**
    
    
    
**/
private var _bitLenTests = (new Slice<T__struct_2>(0, 0, ({ _val : ("0" : GoInt64), _want : (0 : GoInt) } : T__struct_2), ({ _val : ("1" : GoInt64), _want : (1 : GoInt) } : T__struct_2), ({ _val : ("-16" : GoInt64), _want : (5 : GoInt) } : T__struct_2), ({ _val : ("2305843009213693952" : GoInt64), _want : (62 : GoInt) } : T__struct_2), ({ _val : ("4611686018427387904" : GoInt64), _want : (63 : GoInt) } : T__struct_2), ({ _val : ("-4611686018427387904" : GoInt64), _want : (63 : GoInt) } : T__struct_2), ({ _val : ("-9223372036854775808" : GoInt64), _want : (64 : GoInt) } : T__struct_2)) : Slice<T__struct_2>);
/**
    
    
    
**/
private final __Kind_name = ("UnknownBoolStringIntFloatComplex" : GoString);
/**
    // unknown values
    
    
**/
final unknown : Kind = (5 : Kind);
/**
    // non-numeric values
    
    
**/
final bool_ = (5 : Kind);
/**
    
    
    
**/
final string = (5 : Kind);
/**
    // numeric values
    
    
**/
final int_ = (5 : Kind);
/**
    
    
    
**/
final float_ = (5 : Kind);
/**
    
    
    
**/
final complex = (5 : Kind);
/**
    // Maximum supported mantissa precision.
    // The spec requires at least 256 bits; typical implementations use 512 bits.
    
    
**/
private final _prec = ("512" : GoUInt64);
/**
    // Permit fractions with component sizes up to maxExp
    // before switching to using floating-point numbers.
    
    
**/
private final _maxExp = ("4096" : GoUInt64);
/**
    
    
    
**/
private var _emptyString : T_stringVal = ({} : T_stringVal);
/**
    // Compute the size of a Word in bytes.
    
    
**/
private final __m = (("4294967295" : GoUInt) : stdgo.math.big.Big.Word);
/**
    
    
    
**/
private final __log = (("2" : GoUInt) : stdgo.math.big.Big.Word);
/**
    
    
    
**/
private final _wordSize = ("4" : GoUInt64);
/**
    // A Value represents the value of a Go constant.
    
    
**/
typedef Value = StructType & {
    /**
        // Kind returns the value kind.
        
        
    **/
    public function kind():Kind;
    /**
        // String returns a short, quoted (human-readable) form of the value.
        // For numeric values, the result may be an approximation;
        // for String values the result may be a shortened string.
        // Use ExactString for a string representing a value exactly.
        
        
    **/
    public function string():GoString;
    /**
        // ExactString returns an exact, quoted (human-readable) form of the value.
        // If the Value is of Kind String, use StringVal to obtain the unquoted string.
        
        
    **/
    public function exactString():GoString;
    /**
        // Prevent external implementations.
        
        
    **/
    public function _implementsValue():Void;
};
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.go.constant.Constant.T_unknownVal_static_extension) class T_unknownVal {
    public function new() {}
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_unknownVal();
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.go.constant.Constant.T_stringVal_static_extension) class T_stringVal {
    /**
        // Lazy value: either a string (l,r==nil) or an addition (l,r!=nil).
    **/
    public var _mu : stdgo.sync.Sync.Mutex = ({} : stdgo.sync.Sync.Mutex);
    public var _s : GoString = "";
    public var _l : Ref<T_stringVal> = (null : Ref<T_stringVal>);
    public var _r : Ref<T_stringVal> = (null : Ref<T_stringVal>);
    public function new(?_mu:stdgo.sync.Sync.Mutex, ?_s:GoString, ?_l:Ref<T_stringVal>, ?_r:Ref<T_stringVal>) {
        if (_mu != null) this._mu = _mu;
        if (_s != null) this._s = _s;
        if (_l != null) this._l = _l;
        if (_r != null) this._r = _r;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_stringVal(_mu, _s, _l, _r);
    }
}
/**
    
    
    // Int values not representable as an int64
**/
@:structInit @:private @:using(stdgo.go.constant.Constant.T_intVal_static_extension) class T_intVal {
    public var _val : Ref<stdgo.math.big.Big.Int_> = (null : Ref<stdgo.math.big.Big.Int_>);
    public function new(?_val:Ref<stdgo.math.big.Big.Int_>) {
        if (_val != null) this._val = _val;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_intVal(_val);
    }
}
/**
    
    
    // Float values representable as a fraction
**/
@:structInit @:private @:using(stdgo.go.constant.Constant.T_ratVal_static_extension) class T_ratVal {
    public var _val : Ref<stdgo.math.big.Big.Rat> = (null : Ref<stdgo.math.big.Big.Rat>);
    public function new(?_val:Ref<stdgo.math.big.Big.Rat>) {
        if (_val != null) this._val = _val;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_ratVal(_val);
    }
}
/**
    
    
    // Float values not representable as a fraction
**/
@:structInit @:private @:using(stdgo.go.constant.Constant.T_floatVal_static_extension) class T_floatVal {
    public var _val : Ref<stdgo.math.big.Big.Float_> = (null : Ref<stdgo.math.big.Big.Float_>);
    public function new(?_val:Ref<stdgo.math.big.Big.Float_>) {
        if (_val != null) this._val = _val;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_floatVal(_val);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.go.constant.Constant.T_complexVal_static_extension) class T_complexVal {
    public var _re : Value = (null : Value);
    public var _im : Value = (null : Value);
    public function new(?_re:Value, ?_im:Value) {
        if (_re != null) this._re = _re;
        if (_im != null) this._im = _im;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_complexVal(_re, _im);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_makeTestCase {
    public var _kind : Kind = ((0 : GoInt) : Kind);
    public var _arg : AnyInterface = (null : AnyInterface);
    public var _want : AnyInterface = (null : AnyInterface);
    public function new(?_kind:Kind, ?_arg:AnyInterface, ?_want:AnyInterface) {
        if (_kind != null) this._kind = _kind;
        if (_arg != null) this._arg = _arg;
        if (_want != null) this._want = _want;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_makeTestCase(_kind, _arg, _want);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.constant.Constant.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.go.constant.Constant.T__struct_0_static_extension) private typedef T__struct_0 = {};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_1>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.constant.Constant.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo.go.constant.Constant.T__struct_1_static_extension) private typedef T__struct_1 = {
    public var _input : GoString;
    public var _short : GoString;
    public var _exact : GoString;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_2>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.constant.Constant.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo.go.constant.Constant.T__struct_2_static_extension) private typedef T__struct_2 = {
    public var _val : GoInt64;
    public var _want : GoInt;
};
/**
    // Kind specifies the kind of value represented by a Value.
**/
@:named @:using(stdgo.go.constant.Constant.Kind_static_extension) typedef Kind = GoInt;
@:named @:using(stdgo.go.constant.Constant.T_boolVal_static_extension) private typedef T_boolVal = Bool;
@:named @:using(stdgo.go.constant.Constant.T_int64Val_static_extension) private typedef T_int64Val = GoInt64;
/**
    // reverse reverses x in place and returns it.
**/
private function _reverse(_x:Slice<GoString>):Slice<GoString> {
        var _n:GoInt = (_x.length);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor((_i + _i) < _n, _i++, {
                {
                    final __tmp__0 = _x[((_n - (1 : GoInt)) - _i : GoInt)];
                    final __tmp__1 = _x[(_i : GoInt)];
                    _x[(_i : GoInt)] = __tmp__0;
                    _x[((_n - (1 : GoInt)) - _i : GoInt)] = __tmp__1;
                };
            });
        };
        return _x;
    }
private function _newInt():Ref<stdgo.math.big.Big.Int_> {
        return ({} : stdgo.math.big.Big.Int_);
    }
private function _newRat():Ref<stdgo.math.big.Big.Rat> {
        return ({} : stdgo.math.big.Big.Rat);
    }
private function _newFloat():Ref<stdgo.math.big.Big.Float_> {
        return ({} : stdgo.math.big.Big.Float_).setPrec(("512" : GoUInt));
    }
private function _i64toi(_x:T_int64Val):T_intVal {
        return (new T_intVal(_newInt().setInt64((_x : GoInt64))) : T_intVal);
    }
private function _i64tor(_x:T_int64Val):T_ratVal {
        return (new T_ratVal(_newRat().setInt64((_x : GoInt64))) : T_ratVal);
    }
private function _i64tof(_x:T_int64Val):T_floatVal {
        return (new T_floatVal(_newFloat().setInt64((_x : GoInt64))) : T_floatVal);
    }
private function _itor(_x:T_intVal):T_ratVal {
        return (new T_ratVal(_newRat().setInt(_x._val)) : T_ratVal);
    }
private function _itof(_x:T_intVal):T_floatVal {
        return (new T_floatVal(_newFloat().setInt(_x._val)) : T_floatVal);
    }
private function _rtof(_x:T_ratVal):T_floatVal {
        return (new T_floatVal(_newFloat().setRat(_x._val)) : T_floatVal);
    }
private function _vtoc(_x:Value):T_complexVal {
        return (new T_complexVal(_x, Go.asInterface((("0" : GoInt64) : T_int64Val))) : T_complexVal);
    }
private function _makeInt(_x:Ref<stdgo.math.big.Big.Int_>):Value {
        if (_x.isInt64()) {
            return Go.asInterface((_x.int64() : T_int64Val));
        };
        return Go.asInterface((new T_intVal(_x) : T_intVal));
    }
private function _makeRat(_x:Ref<stdgo.math.big.Big.Rat>):Value {
        var _a = _x.num();
        var _b = _x.denom();
        if (_smallInt(_a) && _smallInt(_b)) {
            return Go.asInterface((new T_ratVal(_x) : T_ratVal));
        };
        return Go.asInterface((new T_floatVal(_newFloat().setRat(_x)) : T_floatVal));
    }
private function _makeFloat(_x:Ref<stdgo.math.big.Big.Float_>):Value {
        if (_x.sign() == ((0 : GoInt))) {
            return Go.asInterface(_floatVal0);
        };
        if (_x.isInf()) {
            return Go.asInterface((new T_unknownVal() : T_unknownVal));
        };
        return Go.asInterface((new T_floatVal(_x) : T_floatVal));
    }
private function _makeComplex(_re:Value, _im:Value):Value {
        if ((_re.kind() == (0 : Kind)) || (_im.kind() == (0 : Kind))) {
            return Go.asInterface((new T_unknownVal() : T_unknownVal));
        };
        return Go.asInterface((new T_complexVal(_re, _im) : T_complexVal));
    }
private function _makeFloatFromLiteral(_lit:GoString):Value {
        {
            var __tmp__ = _newFloat().setString(_lit), _f:Ref<stdgo.math.big.Big.Float_> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                if (_smallFloat(_f)) {
                    if (_f.sign() == ((0 : GoInt))) {
                        _lit = ("0" : GoString);
                    };
                    {
                        var __tmp__ = _newRat().setString(_lit), _r:Ref<stdgo.math.big.Big.Rat> = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_ok) {
                            return Go.asInterface((new T_ratVal(_r) : T_ratVal));
                        };
                    };
                };
                return _makeFloat(_f);
            };
        };
        return (null : Value);
    }
/**
    // smallInt reports whether x would lead to "reasonably"-sized fraction
    // if converted to a *big.Rat.
**/
private function _smallInt(_x:Ref<stdgo.math.big.Big.Int_>):Bool {
        return _x.bitLen() < (4096 : GoInt);
    }
/**
    // smallFloat64 reports whether x would lead to "reasonably"-sized fraction
    // if converted to a *big.Rat.
**/
private function _smallFloat64(_x:GoFloat64):Bool {
        if (stdgo.math.Math.isInf(_x, (0 : GoInt))) {
            return false;
        };
        var __tmp__ = stdgo.math.Math.frexp(_x), _0:GoFloat64 = __tmp__._0, _e:GoInt = __tmp__._1;
        return ((-4096 : GoInt) < _e) && (_e < (4096 : GoInt));
    }
/**
    // smallFloat reports whether x would lead to "reasonably"-sized fraction
    // if converted to a *big.Rat.
**/
private function _smallFloat(_x:Ref<stdgo.math.big.Big.Float_>):Bool {
        if (_x.isInf()) {
            return false;
        };
        var _e:GoInt = _x.mantExp(null);
        return ((-4096 : GoInt) < _e) && (_e < (4096 : GoInt));
    }
/**
    // MakeUnknown returns the Unknown value.
**/
function makeUnknown():Value {
        return Go.asInterface((new T_unknownVal() : T_unknownVal));
    }
/**
    // MakeBool returns the Bool value for b.
**/
function makeBool(_b:Bool):Value {
        return Go.asInterface((_b : T_boolVal));
    }
/**
    // MakeString returns the String value for s.
**/
function makeString(_s:GoString):Value {
        if (_s == (Go.str())) {
            return Go.asInterface((_emptyString : Ref<T_stringVal>));
        };
        return Go.asInterface((({ _s : _s } : T_stringVal) : Ref<T_stringVal>));
    }
/**
    // MakeInt64 returns the Int value for x.
**/
function makeInt64(_x:GoInt64):Value {
        return Go.asInterface((_x : T_int64Val));
    }
/**
    // MakeUint64 returns the Int value for x.
**/
function makeUint64(_x:GoUInt64):Value {
        if (_x < ("9223372036854775808" : GoUInt64)) {
            return Go.asInterface(((_x : GoInt64) : T_int64Val));
        };
        return Go.asInterface((new T_intVal(_newInt().setUint64(_x)) : T_intVal));
    }
/**
    // MakeFloat64 returns the Float value for x.
    // If x is -0.0, the result is 0.0.
    // If x is not finite, the result is an Unknown.
**/
function makeFloat64(_x:GoFloat64):Value {
        if (stdgo.math.Math.isInf(_x, (0 : GoInt)) || stdgo.math.Math.isNaN(_x)) {
            return Go.asInterface((new T_unknownVal() : T_unknownVal));
        };
        if (_smallFloat64(_x)) {
            return Go.asInterface((new T_ratVal(_newRat().setFloat64(_x + (0 : GoFloat64))) : T_ratVal));
        };
        return Go.asInterface((new T_floatVal(_newFloat().setFloat64(_x + (0 : GoFloat64))) : T_floatVal));
    }
/**
    // MakeFromLiteral returns the corresponding integer, floating-point,
    // imaginary, character, or string value for a Go literal string. The
    // tok value must be one of token.INT, token.FLOAT, token.IMAG,
    // token.CHAR, or token.STRING. The final argument must be zero.
    // If the literal string syntax is invalid, the result is an Unknown.
**/
function makeFromLiteral(_lit:GoString, _tok:stdgo.go.token.Token.Token, _zero:GoUInt):Value {
        if (_zero != (("0" : GoUInt))) {
            throw Go.toInterface(("MakeFromLiteral called with non-zero last argument" : GoString));
        };
        if (_tok == ((5 : stdgo.go.token.Token.Token))) {
            {
                var __tmp__ = stdgo.strconv.Strconv.parseInt(_lit, (0 : GoInt), (64 : GoInt)), _x:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
                if (_err == null) {
                    return Go.asInterface((_x : T_int64Val));
                };
            };
            {
                var __tmp__ = _newInt().setString(_lit, (0 : GoInt)), _x:Ref<stdgo.math.big.Big.Int_> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    return Go.asInterface((new T_intVal(_x) : T_intVal));
                };
            };
        } else if (_tok == ((6 : stdgo.go.token.Token.Token))) {
            {
                var _x:Value = _makeFloatFromLiteral(_lit);
                if (_x != null) {
                    return _x;
                };
            };
        } else if (_tok == ((7 : stdgo.go.token.Token.Token))) {
            {
                var _n:GoInt = (_lit.length);
                if ((_n > (0 : GoInt)) && (_lit[(_n - (1 : GoInt) : GoInt)] == (105 : GoUInt8))) {
                    {
                        var _im:Value = _makeFloatFromLiteral((_lit.__slice__(0, _n - (1 : GoInt)) : GoString));
                        if (_im != null) {
                            return _makeComplex(Go.asInterface((("0" : GoInt64) : T_int64Val)), _im);
                        };
                    };
                };
            };
        } else if (_tok == ((8 : stdgo.go.token.Token.Token))) {
            {
                var _n:GoInt = (_lit.length);
                if (_n >= (2 : GoInt)) {
                    {
                        var __tmp__ = stdgo.strconv.Strconv.unquoteChar((_lit.__slice__((1 : GoInt), _n - (1 : GoInt)) : GoString), (39 : GoUInt8)), _code:GoInt32 = __tmp__._0, _0:Bool = __tmp__._1, _1:GoString = __tmp__._2, _err:Error = __tmp__._3;
                        if (_err == null) {
                            return makeInt64((_code : GoInt64));
                        };
                    };
                };
            };
        } else if (_tok == ((9 : stdgo.go.token.Token.Token))) {
            {
                var __tmp__ = stdgo.strconv.Strconv.unquote(_lit), _s:GoString = __tmp__._0, _err:Error = __tmp__._1;
                if (_err == null) {
                    return makeString(_s);
                };
            };
        } else {
            throw Go.toInterface(stdgo.fmt.Fmt.sprintf(("%v is not a valid token" : GoString), Go.toInterface(Go.asInterface(_tok))));
        };
        return Go.asInterface((new T_unknownVal() : T_unknownVal));
    }
/**
    // BoolVal returns the Go boolean value of x, which must be a Bool or an Unknown.
    // If x is Unknown, the result is false.
**/
function boolVal(_x:Value):Bool {
        {
            final __type__ = _x;
            if (Go.typeEquals((__type__ : T_boolVal))) {
                var _x:T_boolVal = __type__ == null ? (false : T_boolVal) : __type__.__underlying__() == null ? (false : T_boolVal) : __type__ == null ? (false : T_boolVal) : __type__.__underlying__().value;
                return (_x : Bool);
            } else if (Go.typeEquals((__type__ : T_unknownVal))) {
                var _x:T_unknownVal = __type__ == null ? ({} : T_unknownVal) : __type__.__underlying__() == null ? ({} : T_unknownVal) : __type__ == null ? ({} : T_unknownVal) : __type__.__underlying__().value;
                return false;
            } else {
                var _x:Value = __type__ == null ? (null : Value) : cast __type__;
                throw Go.toInterface(stdgo.fmt.Fmt.sprintf(("%v not a Bool" : GoString), Go.toInterface(_x)));
            };
        };
    }
/**
    // StringVal returns the Go string value of x, which must be a String or an Unknown.
    // If x is Unknown, the result is "".
**/
function stringVal(_x:Value):GoString {
        {
            final __type__ = _x;
            if (Go.typeEquals((__type__ : Ref<T_stringVal>))) {
                var _x:Ref<T_stringVal> = __type__ == null ? (null : Ref<T_stringVal>) : __type__.__underlying__() == null ? (null : Ref<T_stringVal>) : __type__ == null ? (null : Ref<T_stringVal>) : __type__.__underlying__().value;
                return _x._string();
            } else if (Go.typeEquals((__type__ : T_unknownVal))) {
                var _x:T_unknownVal = __type__ == null ? ({} : T_unknownVal) : __type__.__underlying__() == null ? ({} : T_unknownVal) : __type__ == null ? ({} : T_unknownVal) : __type__.__underlying__().value;
                return Go.str();
            } else {
                var _x:Value = __type__ == null ? (null : Value) : cast __type__;
                throw Go.toInterface(stdgo.fmt.Fmt.sprintf(("%v not a String" : GoString), Go.toInterface(_x)));
            };
        };
    }
/**
    // Int64Val returns the Go int64 value of x and whether the result is exact;
    // x must be an Int or an Unknown. If the result is not exact, its value is undefined.
    // If x is Unknown, the result is (0, false).
**/
function int64Val(_x:Value):{ var _0 : GoInt64; var _1 : Bool; } {
        {
            final __type__ = _x;
            if (Go.typeEquals((__type__ : T_int64Val))) {
                var _x:T_int64Val = __type__ == null ? ((0 : GoInt64) : T_int64Val) : __type__.__underlying__() == null ? ((0 : GoInt64) : T_int64Val) : __type__ == null ? ((0 : GoInt64) : T_int64Val) : __type__.__underlying__().value;
                return { _0 : (_x : GoInt64), _1 : true };
            } else if (Go.typeEquals((__type__ : T_intVal))) {
                var _x:T_intVal = __type__ == null ? ({} : T_intVal) : __type__.__underlying__() == null ? ({} : T_intVal) : __type__ == null ? ({} : T_intVal) : __type__.__underlying__().value;
                return { _0 : _x._val.int64(), _1 : false };
            } else if (Go.typeEquals((__type__ : T_unknownVal))) {
                var _x:T_unknownVal = __type__ == null ? ({} : T_unknownVal) : __type__.__underlying__() == null ? ({} : T_unknownVal) : __type__ == null ? ({} : T_unknownVal) : __type__.__underlying__().value;
                return { _0 : ("0" : GoInt64), _1 : false };
            } else {
                var _x:Value = __type__ == null ? (null : Value) : cast __type__;
                throw Go.toInterface(stdgo.fmt.Fmt.sprintf(("%v not an Int" : GoString), Go.toInterface(_x)));
            };
        };
    }
/**
    // Uint64Val returns the Go uint64 value of x and whether the result is exact;
    // x must be an Int or an Unknown. If the result is not exact, its value is undefined.
    // If x is Unknown, the result is (0, false).
**/
function uint64Val(_x:Value):{ var _0 : GoUInt64; var _1 : Bool; } {
        {
            final __type__ = _x;
            if (Go.typeEquals((__type__ : T_int64Val))) {
                var _x:T_int64Val = __type__ == null ? ((0 : GoInt64) : T_int64Val) : __type__.__underlying__() == null ? ((0 : GoInt64) : T_int64Val) : __type__ == null ? ((0 : GoInt64) : T_int64Val) : __type__.__underlying__().value;
                return { _0 : (_x : GoUInt64), _1 : _x >= (("0" : GoInt64) : T_int64Val) };
            } else if (Go.typeEquals((__type__ : T_intVal))) {
                var _x:T_intVal = __type__ == null ? ({} : T_intVal) : __type__.__underlying__() == null ? ({} : T_intVal) : __type__ == null ? ({} : T_intVal) : __type__.__underlying__().value;
                return { _0 : _x._val.uint64(), _1 : _x._val.isUint64() };
            } else if (Go.typeEquals((__type__ : T_unknownVal))) {
                var _x:T_unknownVal = __type__ == null ? ({} : T_unknownVal) : __type__.__underlying__() == null ? ({} : T_unknownVal) : __type__ == null ? ({} : T_unknownVal) : __type__.__underlying__().value;
                return { _0 : ("0" : GoUInt64), _1 : false };
            } else {
                var _x:Value = __type__ == null ? (null : Value) : cast __type__;
                throw Go.toInterface(stdgo.fmt.Fmt.sprintf(("%v not an Int" : GoString), Go.toInterface(_x)));
            };
        };
    }
/**
    // Float32Val is like Float64Val but for float32 instead of float64.
**/
function float32Val(_x:Value):{ var _0 : GoFloat32; var _1 : Bool; } {
        {
            final __type__ = _x;
            if (Go.typeEquals((__type__ : T_int64Val))) {
                var _x:T_int64Val = __type__ == null ? ((0 : GoInt64) : T_int64Val) : __type__.__underlying__() == null ? ((0 : GoInt64) : T_int64Val) : __type__ == null ? ((0 : GoInt64) : T_int64Val) : __type__.__underlying__().value;
                var _f:GoFloat32 = (_x : GoFloat32);
                return { _0 : _f, _1 : (_f : T_int64Val) == (_x) };
            } else if (Go.typeEquals((__type__ : T_intVal))) {
                var _x:T_intVal = __type__ == null ? ({} : T_intVal) : __type__.__underlying__() == null ? ({} : T_intVal) : __type__ == null ? ({} : T_intVal) : __type__.__underlying__().value;
                var __tmp__ = _newFloat().setInt(_x._val).float32(), _f:GoFloat32 = __tmp__._0, _acc:stdgo.math.big.Big.Accuracy = __tmp__._1;
                return { _0 : _f, _1 : _acc == ((0 : stdgo.math.big.Big.Accuracy)) };
            } else if (Go.typeEquals((__type__ : T_ratVal))) {
                var _x:T_ratVal = __type__ == null ? ({} : T_ratVal) : __type__.__underlying__() == null ? ({} : T_ratVal) : __type__ == null ? ({} : T_ratVal) : __type__.__underlying__().value;
                return _x._val.float32();
            } else if (Go.typeEquals((__type__ : T_floatVal))) {
                var _x:T_floatVal = __type__ == null ? ({} : T_floatVal) : __type__.__underlying__() == null ? ({} : T_floatVal) : __type__ == null ? ({} : T_floatVal) : __type__.__underlying__().value;
                var __tmp__ = _x._val.float32(), _f:GoFloat32 = __tmp__._0, _acc:stdgo.math.big.Big.Accuracy = __tmp__._1;
                return { _0 : _f, _1 : _acc == ((0 : stdgo.math.big.Big.Accuracy)) };
            } else if (Go.typeEquals((__type__ : T_unknownVal))) {
                var _x:T_unknownVal = __type__ == null ? ({} : T_unknownVal) : __type__.__underlying__() == null ? ({} : T_unknownVal) : __type__ == null ? ({} : T_unknownVal) : __type__.__underlying__().value;
                return { _0 : (0 : GoFloat64), _1 : false };
            } else {
                var _x:Value = __type__ == null ? (null : Value) : cast __type__;
                throw Go.toInterface(stdgo.fmt.Fmt.sprintf(("%v not a Float" : GoString), Go.toInterface(_x)));
            };
        };
    }
/**
    // Float64Val returns the nearest Go float64 value of x and whether the result is exact;
    // x must be numeric or an Unknown, but not Complex. For values too small (too close to 0)
    // to represent as float64, Float64Val silently underflows to 0. The result sign always
    // matches the sign of x, even for 0.
    // If x is Unknown, the result is (0, false).
**/
function float64Val(_x:Value):{ var _0 : GoFloat64; var _1 : Bool; } {
        {
            final __type__ = _x;
            if (Go.typeEquals((__type__ : T_int64Val))) {
                var _x:T_int64Val = __type__ == null ? ((0 : GoInt64) : T_int64Val) : __type__.__underlying__() == null ? ((0 : GoInt64) : T_int64Val) : __type__ == null ? ((0 : GoInt64) : T_int64Val) : __type__.__underlying__().value;
                var _f:GoFloat64 = ((_x : GoInt64) : GoFloat64);
                return { _0 : _f, _1 : (_f : T_int64Val) == (_x) };
            } else if (Go.typeEquals((__type__ : T_intVal))) {
                var _x:T_intVal = __type__ == null ? ({} : T_intVal) : __type__.__underlying__() == null ? ({} : T_intVal) : __type__ == null ? ({} : T_intVal) : __type__.__underlying__().value;
                var __tmp__ = _newFloat().setInt(_x._val).float64(), _f:GoFloat64 = __tmp__._0, _acc:stdgo.math.big.Big.Accuracy = __tmp__._1;
                return { _0 : _f, _1 : _acc == ((0 : stdgo.math.big.Big.Accuracy)) };
            } else if (Go.typeEquals((__type__ : T_ratVal))) {
                var _x:T_ratVal = __type__ == null ? ({} : T_ratVal) : __type__.__underlying__() == null ? ({} : T_ratVal) : __type__ == null ? ({} : T_ratVal) : __type__.__underlying__().value;
                return _x._val.float64();
            } else if (Go.typeEquals((__type__ : T_floatVal))) {
                var _x:T_floatVal = __type__ == null ? ({} : T_floatVal) : __type__.__underlying__() == null ? ({} : T_floatVal) : __type__ == null ? ({} : T_floatVal) : __type__.__underlying__().value;
                var __tmp__ = _x._val.float64(), _f:GoFloat64 = __tmp__._0, _acc:stdgo.math.big.Big.Accuracy = __tmp__._1;
                return { _0 : _f, _1 : _acc == ((0 : stdgo.math.big.Big.Accuracy)) };
            } else if (Go.typeEquals((__type__ : T_unknownVal))) {
                var _x:T_unknownVal = __type__ == null ? ({} : T_unknownVal) : __type__.__underlying__() == null ? ({} : T_unknownVal) : __type__ == null ? ({} : T_unknownVal) : __type__.__underlying__().value;
                return { _0 : (0 : GoFloat64), _1 : false };
            } else {
                var _x:Value = __type__ == null ? (null : Value) : cast __type__;
                throw Go.toInterface(stdgo.fmt.Fmt.sprintf(("%v not a Float" : GoString), Go.toInterface(_x)));
            };
        };
    }
/**
    // Val returns the underlying value for a given constant. Since it returns an
    // interface, it is up to the caller to type assert the result to the expected
    // type. The possible dynamic return types are:
    //
    //	x Kind             type of result
    //	-----------------------------------------
    //	Bool               bool
    //	String             string
    //	Int                int64 or *big.Int
    //	Float              *big.Float or *big.Rat
    //	everything else    nil
**/
function val(_x:Value):AnyInterface {
        {
            final __type__ = _x;
            if (Go.typeEquals((__type__ : T_boolVal))) {
                var _x:T_boolVal = __type__ == null ? (false : T_boolVal) : __type__.__underlying__() == null ? (false : T_boolVal) : __type__ == null ? (false : T_boolVal) : __type__.__underlying__().value;
                return Go.toInterface((_x : Bool));
            } else if (Go.typeEquals((__type__ : Ref<T_stringVal>))) {
                var _x:Ref<T_stringVal> = __type__ == null ? (null : Ref<T_stringVal>) : __type__.__underlying__() == null ? (null : Ref<T_stringVal>) : __type__ == null ? (null : Ref<T_stringVal>) : __type__.__underlying__().value;
                return Go.toInterface(_x._string());
            } else if (Go.typeEquals((__type__ : T_int64Val))) {
                var _x:T_int64Val = __type__ == null ? ((0 : GoInt64) : T_int64Val) : __type__.__underlying__() == null ? ((0 : GoInt64) : T_int64Val) : __type__ == null ? ((0 : GoInt64) : T_int64Val) : __type__.__underlying__().value;
                return Go.toInterface((_x : GoInt64));
            } else if (Go.typeEquals((__type__ : T_intVal))) {
                var _x:T_intVal = __type__ == null ? ({} : T_intVal) : __type__.__underlying__() == null ? ({} : T_intVal) : __type__ == null ? ({} : T_intVal) : __type__.__underlying__().value;
                return Go.toInterface(Go.asInterface(_x._val));
            } else if (Go.typeEquals((__type__ : T_ratVal))) {
                var _x:T_ratVal = __type__ == null ? ({} : T_ratVal) : __type__.__underlying__() == null ? ({} : T_ratVal) : __type__ == null ? ({} : T_ratVal) : __type__.__underlying__().value;
                return Go.toInterface(Go.asInterface(_x._val));
            } else if (Go.typeEquals((__type__ : T_floatVal))) {
                var _x:T_floatVal = __type__ == null ? ({} : T_floatVal) : __type__.__underlying__() == null ? ({} : T_floatVal) : __type__ == null ? ({} : T_floatVal) : __type__.__underlying__().value;
                return Go.toInterface(Go.asInterface(_x._val));
            } else {
                var _x:Value = __type__ == null ? (null : Value) : cast __type__;
                return (null : AnyInterface);
            };
        };
    }
/**
    // Make returns the Value for x.
    //
    //	type of x        result Kind
    //	----------------------------
    //	bool             Bool
    //	string           String
    //	int64            Int
    //	*big.Int         Int
    //	*big.Float       Float
    //	*big.Rat         Float
    //	anything else    Unknown
**/
function make(_x:AnyInterface):Value {
        {
            final __type__ = _x;
            if (Go.typeEquals((__type__ : Bool))) {
                var _x:Bool = __type__ == null ? false : __type__.__underlying__() == null ? false : __type__ == null ? false : __type__.__underlying__().value;
                return Go.asInterface((_x : T_boolVal));
            } else if (Go.typeEquals((__type__ : GoString))) {
                var _x:GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                return Go.asInterface((({ _s : _x } : T_stringVal) : Ref<T_stringVal>));
            } else if (Go.typeEquals((__type__ : GoInt64))) {
                var _x:GoInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                return Go.asInterface((_x : T_int64Val));
            } else if (Go.typeEquals((__type__ : Ref<stdgo.math.big.Big.Int_>))) {
                var _x:Ref<stdgo.math.big.Big.Int_> = __type__ == null ? (null : Ref<stdgo.math.big.Big.Int_>) : __type__.__underlying__() == null ? (null : Ref<stdgo.math.big.Big.Int_>) : __type__ == null ? (null : Ref<stdgo.math.big.Big.Int_>) : __type__.__underlying__().value;
                return _makeInt(_x);
            } else if (Go.typeEquals((__type__ : Ref<stdgo.math.big.Big.Rat>))) {
                var _x:Ref<stdgo.math.big.Big.Rat> = __type__ == null ? (null : Ref<stdgo.math.big.Big.Rat>) : __type__.__underlying__() == null ? (null : Ref<stdgo.math.big.Big.Rat>) : __type__ == null ? (null : Ref<stdgo.math.big.Big.Rat>) : __type__.__underlying__().value;
                return _makeRat(_x);
            } else if (Go.typeEquals((__type__ : Ref<stdgo.math.big.Big.Float_>))) {
                var _x:Ref<stdgo.math.big.Big.Float_> = __type__ == null ? (null : Ref<stdgo.math.big.Big.Float_>) : __type__.__underlying__() == null ? (null : Ref<stdgo.math.big.Big.Float_>) : __type__ == null ? (null : Ref<stdgo.math.big.Big.Float_>) : __type__.__underlying__().value;
                return _makeFloat(_x);
            } else {
                var _x:AnyInterface = __type__ == null ? null : __type__.__underlying__();
                return Go.asInterface((new T_unknownVal() : T_unknownVal));
            };
        };
    }
/**
    // BitLen returns the number of bits required to represent
    // the absolute value x in binary representation; x must be an Int or an Unknown.
    // If x is Unknown, the result is 0.
**/
function bitLen(_x:Value):GoInt {
        {
            final __type__ = _x;
            if (Go.typeEquals((__type__ : T_int64Val))) {
                var _x:T_int64Val = __type__ == null ? ((0 : GoInt64) : T_int64Val) : __type__.__underlying__() == null ? ((0 : GoInt64) : T_int64Val) : __type__ == null ? ((0 : GoInt64) : T_int64Val) : __type__.__underlying__().value;
                var _u:GoUInt64 = (_x : GoUInt64);
                if (_x < (("0" : GoInt64) : T_int64Val)) {
                    _u = (-_x : GoUInt64);
                };
                return (64 : GoInt) - stdgo.math.bits.Bits.leadingZeros64(_u);
            } else if (Go.typeEquals((__type__ : T_intVal))) {
                var _x:T_intVal = __type__ == null ? ({} : T_intVal) : __type__.__underlying__() == null ? ({} : T_intVal) : __type__ == null ? ({} : T_intVal) : __type__.__underlying__().value;
                return _x._val.bitLen();
            } else if (Go.typeEquals((__type__ : T_unknownVal))) {
                var _x:T_unknownVal = __type__ == null ? ({} : T_unknownVal) : __type__.__underlying__() == null ? ({} : T_unknownVal) : __type__ == null ? ({} : T_unknownVal) : __type__.__underlying__().value;
                return (0 : GoInt);
            } else {
                var _x:Value = __type__ == null ? (null : Value) : cast __type__;
                throw Go.toInterface(stdgo.fmt.Fmt.sprintf(("%v not an Int" : GoString), Go.toInterface(_x)));
            };
        };
    }
/**
    // Sign returns -1, 0, or 1 depending on whether x < 0, x == 0, or x > 0;
    // x must be numeric or Unknown. For complex values x, the sign is 0 if x == 0,
    // otherwise it is != 0. If x is Unknown, the result is 1.
**/
function sign(_x:Value):GoInt {
        {
            final __type__ = _x;
            if (Go.typeEquals((__type__ : T_int64Val))) {
                var _x:T_int64Val = __type__ == null ? ((0 : GoInt64) : T_int64Val) : __type__.__underlying__() == null ? ((0 : GoInt64) : T_int64Val) : __type__ == null ? ((0 : GoInt64) : T_int64Val) : __type__.__underlying__().value;
                if (_x < (("0" : GoInt64) : T_int64Val)) {
                    return (-1 : GoInt);
                } else if (_x > (("0" : GoInt64) : T_int64Val)) {
                    return (1 : GoInt);
                };
                return (0 : GoInt);
            } else if (Go.typeEquals((__type__ : T_intVal))) {
                var _x:T_intVal = __type__ == null ? ({} : T_intVal) : __type__.__underlying__() == null ? ({} : T_intVal) : __type__ == null ? ({} : T_intVal) : __type__.__underlying__().value;
                return _x._val.sign();
            } else if (Go.typeEquals((__type__ : T_ratVal))) {
                var _x:T_ratVal = __type__ == null ? ({} : T_ratVal) : __type__.__underlying__() == null ? ({} : T_ratVal) : __type__ == null ? ({} : T_ratVal) : __type__.__underlying__().value;
                return _x._val.sign();
            } else if (Go.typeEquals((__type__ : T_floatVal))) {
                var _x:T_floatVal = __type__ == null ? ({} : T_floatVal) : __type__.__underlying__() == null ? ({} : T_floatVal) : __type__ == null ? ({} : T_floatVal) : __type__.__underlying__().value;
                return _x._val.sign();
            } else if (Go.typeEquals((__type__ : T_complexVal))) {
                var _x:T_complexVal = __type__ == null ? ({} : T_complexVal) : __type__.__underlying__() == null ? ({} : T_complexVal) : __type__ == null ? ({} : T_complexVal) : __type__.__underlying__().value;
                return sign(_x._re) | sign(_x._im);
            } else if (Go.typeEquals((__type__ : T_unknownVal))) {
                var _x:T_unknownVal = __type__ == null ? ({} : T_unknownVal) : __type__.__underlying__() == null ? ({} : T_unknownVal) : __type__ == null ? ({} : T_unknownVal) : __type__.__underlying__().value;
                return (1 : GoInt);
            } else {
                var _x:Value = __type__ == null ? (null : Value) : cast __type__;
                throw Go.toInterface(stdgo.fmt.Fmt.sprintf(("%v not numeric" : GoString), Go.toInterface(_x)));
            };
        };
    }
/**
    // Bytes returns the bytes for the absolute value of x in little-
    // endian binary representation; x must be an Int.
**/
function bytes(_x:Value):Slice<GoByte> {
        var _t:T_intVal = ({} : T_intVal);
        {
            final __type__ = _x;
            if (Go.typeEquals((__type__ : T_int64Val))) {
                var _x:T_int64Val = __type__ == null ? ((0 : GoInt64) : T_int64Val) : __type__.__underlying__() == null ? ((0 : GoInt64) : T_int64Val) : __type__ == null ? ((0 : GoInt64) : T_int64Val) : __type__.__underlying__().value;
                _t = (_i64toi(_x) == null ? null : _i64toi(_x).__copy__());
            } else if (Go.typeEquals((__type__ : T_intVal))) {
                var _x:T_intVal = __type__ == null ? ({} : T_intVal) : __type__.__underlying__() == null ? ({} : T_intVal) : __type__ == null ? ({} : T_intVal) : __type__.__underlying__().value;
                _t = (_x == null ? null : _x.__copy__());
            } else {
                var _x:Value = __type__ == null ? (null : Value) : cast __type__;
                throw Go.toInterface(stdgo.fmt.Fmt.sprintf(("%v not an Int" : GoString), Go.toInterface(_x)));
            };
        };
        var _words = _t._val.bits();
        var _bytes = new Slice<GoUInt8>(((_words.length) * (4 : GoInt) : GoInt).toBasic(), 0, ...[for (i in 0 ... ((_words.length) * (4 : GoInt) : GoInt).toBasic()) (0 : GoUInt8)]);
        var _i:GoInt = (0 : GoInt);
        for (_0 => _w in _words) {
            {
                var _j:GoInt = (0 : GoInt);
                Go.cfor(_j < (4 : GoInt), _j++, {
                    _bytes[(_i : GoInt)] = (_w : GoByte);
                    _w = _w >> (("8" : GoUInt64));
                    _i++;
                });
            };
        };
        while ((_i > (0 : GoInt)) && (_bytes[(_i - (1 : GoInt) : GoInt)] == (0 : GoUInt8))) {
            _i--;
        };
        return (_bytes.__slice__(0, _i) : Slice<GoUInt8>);
    }
/**
    // MakeFromBytes returns the Int value given the bytes of its little-endian
    // binary representation. An empty byte slice argument represents 0.
**/
function makeFromBytes(_bytes:Slice<GoByte>):Value {
        var _words = new Slice<stdgo.math.big.Big.Word>(((_bytes.length + (3 : GoInt)) / (4 : GoInt) : GoInt).toBasic(), 0, ...[for (i in 0 ... ((_bytes.length + (3 : GoInt)) / (4 : GoInt) : GoInt).toBasic()) ((0 : GoUInt) : stdgo.math.big.Big.Word)]);
        var _i:GoInt = (0 : GoInt);
        var _w:stdgo.math.big.Big.Word = ((0 : GoUInt) : stdgo.math.big.Big.Word);
        var _s:GoUInt = (0 : GoUInt);
        for (_0 => _b in _bytes) {
            _w = _w | ((_b : stdgo.math.big.Big.Word) << _s);
            {
                _s = _s + (("8" : GoUInt));
                if (_s == (("32" : GoUInt))) {
                    _words[(_i : GoInt)] = _w;
                    _i++;
                    _w = (("0" : GoUInt) : stdgo.math.big.Big.Word);
                    _s = ("0" : GoUInt);
                };
            };
        };
        if (_i < (_words.length)) {
            _words[(_i : GoInt)] = _w;
            _i++;
        };
        while ((_i > (0 : GoInt)) && (_words[(_i - (1 : GoInt) : GoInt)] == (("0" : GoUInt) : stdgo.math.big.Big.Word))) {
            _i--;
        };
        return _makeInt(_newInt().setBits((_words.__slice__(0, _i) : Slice<stdgo.math.big.Big.Word>)));
    }
/**
    // Num returns the numerator of x; x must be Int, Float, or Unknown.
    // If x is Unknown, or if it is too large or small to represent as a
    // fraction, the result is Unknown. Otherwise the result is an Int
    // with the same sign as x.
**/
function num(_x:Value):Value {
        {
            final __type__ = _x;
            {
                var __bool__ = true;
                while (__bool__) {
                    __bool__ = false;
                    if (Go.typeEquals((__type__ : T_int64Val)) || Go.typeEquals((__type__ : T_intVal))) {
                        var _x:Value = __type__ == null ? (null : Value) : cast __type__;
                        return _x;
                    } else if (Go.typeEquals((__type__ : T_ratVal))) {
                        var _x:T_ratVal = __type__ == null ? ({} : T_ratVal) : __type__.__underlying__() == null ? ({} : T_ratVal) : __type__ == null ? ({} : T_ratVal) : __type__.__underlying__().value;
                        return _makeInt(_x._val.num());
                    } else if (Go.typeEquals((__type__ : T_floatVal))) {
                        var _x:T_floatVal = __type__ == null ? ({} : T_floatVal) : __type__.__underlying__() == null ? ({} : T_floatVal) : __type__ == null ? ({} : T_floatVal) : __type__.__underlying__().value;
                        if (_smallFloat(_x._val)) {
                            var __tmp__ = _x._val.rat(null), _r:Ref<stdgo.math.big.Big.Rat> = __tmp__._0, _0:stdgo.math.big.Big.Accuracy = __tmp__._1;
                            return _makeInt(_r.num());
                        };
                    } else if (Go.typeEquals((__type__ : T_unknownVal))) {
                        var _x:T_unknownVal = __type__ == null ? ({} : T_unknownVal) : __type__.__underlying__() == null ? ({} : T_unknownVal) : __type__ == null ? ({} : T_unknownVal) : __type__.__underlying__().value;
                        break;
                    } else {
                        var _x:Value = __type__ == null ? (null : Value) : cast __type__;
                        throw Go.toInterface(stdgo.fmt.Fmt.sprintf(("%v not Int or Float" : GoString), Go.toInterface(_x)));
                    };
                    break;
                };
            };
        };
        return Go.asInterface((new T_unknownVal() : T_unknownVal));
    }
/**
    // Denom returns the denominator of x; x must be Int, Float, or Unknown.
    // If x is Unknown, or if it is too large or small to represent as a
    // fraction, the result is Unknown. Otherwise the result is an Int >= 1.
**/
function denom(_x:Value):Value {
        {
            final __type__ = _x;
            {
                var __bool__ = true;
                while (__bool__) {
                    __bool__ = false;
                    if (Go.typeEquals((__type__ : T_int64Val)) || Go.typeEquals((__type__ : T_intVal))) {
                        var _x:Value = __type__ == null ? (null : Value) : cast __type__;
                        return Go.asInterface((("1" : GoInt64) : T_int64Val));
                    } else if (Go.typeEquals((__type__ : T_ratVal))) {
                        var _x:T_ratVal = __type__ == null ? ({} : T_ratVal) : __type__.__underlying__() == null ? ({} : T_ratVal) : __type__ == null ? ({} : T_ratVal) : __type__.__underlying__().value;
                        return _makeInt(_x._val.denom());
                    } else if (Go.typeEquals((__type__ : T_floatVal))) {
                        var _x:T_floatVal = __type__ == null ? ({} : T_floatVal) : __type__.__underlying__() == null ? ({} : T_floatVal) : __type__ == null ? ({} : T_floatVal) : __type__.__underlying__().value;
                        if (_smallFloat(_x._val)) {
                            var __tmp__ = _x._val.rat(null), _r:Ref<stdgo.math.big.Big.Rat> = __tmp__._0, _0:stdgo.math.big.Big.Accuracy = __tmp__._1;
                            return _makeInt(_r.denom());
                        };
                    } else if (Go.typeEquals((__type__ : T_unknownVal))) {
                        var _x:T_unknownVal = __type__ == null ? ({} : T_unknownVal) : __type__.__underlying__() == null ? ({} : T_unknownVal) : __type__ == null ? ({} : T_unknownVal) : __type__.__underlying__().value;
                        break;
                    } else {
                        var _x:Value = __type__ == null ? (null : Value) : cast __type__;
                        throw Go.toInterface(stdgo.fmt.Fmt.sprintf(("%v not Int or Float" : GoString), Go.toInterface(_x)));
                    };
                    break;
                };
            };
        };
        return Go.asInterface((new T_unknownVal() : T_unknownVal));
    }
/**
    // MakeImag returns the Complex value x*i;
    // x must be Int, Float, or Unknown.
    // If x is Unknown, the result is Unknown.
**/
function makeImag(_x:Value):Value {
        {
            final __type__ = _x;
            if (Go.typeEquals((__type__ : T_unknownVal))) {
                return _x;
            } else if (Go.typeEquals((__type__ : T_int64Val)) || Go.typeEquals((__type__ : T_intVal)) || Go.typeEquals((__type__ : T_ratVal)) || Go.typeEquals((__type__ : T_floatVal))) {
                return _makeComplex(Go.asInterface((("0" : GoInt64) : T_int64Val)), _x);
            } else {
                throw Go.toInterface(stdgo.fmt.Fmt.sprintf(("%v not Int or Float" : GoString), Go.toInterface(_x)));
            };
        };
    }
/**
    // Real returns the real part of x, which must be a numeric or unknown value.
    // If x is Unknown, the result is Unknown.
**/
function real(_x:Value):Value {
        {
            final __type__ = _x;
            if (Go.typeEquals((__type__ : T_unknownVal)) || Go.typeEquals((__type__ : T_int64Val)) || Go.typeEquals((__type__ : T_intVal)) || Go.typeEquals((__type__ : T_ratVal)) || Go.typeEquals((__type__ : T_floatVal))) {
                var _x:Value = __type__ == null ? (null : Value) : cast __type__;
                return _x;
            } else if (Go.typeEquals((__type__ : T_complexVal))) {
                var _x:T_complexVal = __type__ == null ? ({} : T_complexVal) : __type__.__underlying__() == null ? ({} : T_complexVal) : __type__ == null ? ({} : T_complexVal) : __type__.__underlying__().value;
                return _x._re;
            } else {
                var _x:Value = __type__ == null ? (null : Value) : cast __type__;
                throw Go.toInterface(stdgo.fmt.Fmt.sprintf(("%v not numeric" : GoString), Go.toInterface(_x)));
            };
        };
    }
/**
    // Imag returns the imaginary part of x, which must be a numeric or unknown value.
    // If x is Unknown, the result is Unknown.
**/
function imag(_x:Value):Value {
        {
            final __type__ = _x;
            if (Go.typeEquals((__type__ : T_unknownVal))) {
                var _x:T_unknownVal = __type__ == null ? ({} : T_unknownVal) : __type__.__underlying__() == null ? ({} : T_unknownVal) : __type__ == null ? ({} : T_unknownVal) : __type__.__underlying__().value;
                return Go.asInterface(_x);
            } else if (Go.typeEquals((__type__ : T_int64Val)) || Go.typeEquals((__type__ : T_intVal)) || Go.typeEquals((__type__ : T_ratVal)) || Go.typeEquals((__type__ : T_floatVal))) {
                var _x:Value = __type__ == null ? (null : Value) : cast __type__;
                return Go.asInterface((("0" : GoInt64) : T_int64Val));
            } else if (Go.typeEquals((__type__ : T_complexVal))) {
                var _x:T_complexVal = __type__ == null ? ({} : T_complexVal) : __type__.__underlying__() == null ? ({} : T_complexVal) : __type__ == null ? ({} : T_complexVal) : __type__.__underlying__().value;
                return _x._im;
            } else {
                var _x:Value = __type__ == null ? (null : Value) : cast __type__;
                throw Go.toInterface(stdgo.fmt.Fmt.sprintf(("%v not numeric" : GoString), Go.toInterface(_x)));
            };
        };
    }
/**
    // ToInt converts x to an Int value if x is representable as an Int.
    // Otherwise it returns an Unknown.
**/
function toInt(_x:Value):Value {
        {
            final __type__ = _x;
            if (Go.typeEquals((__type__ : T_int64Val)) || Go.typeEquals((__type__ : T_intVal))) {
                var _x:Value = __type__ == null ? (null : Value) : cast __type__;
                return _x;
            } else if (Go.typeEquals((__type__ : T_ratVal))) {
                var _x:T_ratVal = __type__ == null ? ({} : T_ratVal) : __type__.__underlying__() == null ? ({} : T_ratVal) : __type__ == null ? ({} : T_ratVal) : __type__.__underlying__().value;
                if (_x._val.isInt()) {
                    return _makeInt(_x._val.num());
                };
            } else if (Go.typeEquals((__type__ : T_floatVal))) {
                var _x:T_floatVal = __type__ == null ? ({} : T_floatVal) : __type__.__underlying__() == null ? ({} : T_floatVal) : __type__ == null ? ({} : T_floatVal) : __type__.__underlying__().value;
                if (_smallFloat(_x._val)) {
                    var _i = _newInt();
                    {
                        var __tmp__ = _x._val.int_(_i), _0:Ref<stdgo.math.big.Big.Int_> = __tmp__._0, _acc:stdgo.math.big.Big.Accuracy = __tmp__._1;
                        if (_acc == ((0 : stdgo.math.big.Big.Accuracy))) {
                            return _makeInt(_i);
                        };
                    };
                    {};
                    var _t:stdgo.math.big.Big.Float_ = ({} : stdgo.math.big.Big.Float_);
                    _t.setPrec(("508" : GoUInt));
                    _t.setMode((2 : stdgo.math.big.Big.RoundingMode));
                    _t.set(_x._val);
                    {
                        var __tmp__ = _t.int_(_i), _1:Ref<stdgo.math.big.Big.Int_> = __tmp__._0, _acc:stdgo.math.big.Big.Accuracy = __tmp__._1;
                        if (_acc == ((0 : stdgo.math.big.Big.Accuracy))) {
                            return _makeInt(_i);
                        };
                    };
                    _t.setMode((3 : stdgo.math.big.Big.RoundingMode));
                    _t.set(_x._val);
                    {
                        var __tmp__ = _t.int_(_i), _2:Ref<stdgo.math.big.Big.Int_> = __tmp__._0, _acc:stdgo.math.big.Big.Accuracy = __tmp__._1;
                        if (_acc == ((0 : stdgo.math.big.Big.Accuracy))) {
                            return _makeInt(_i);
                        };
                    };
                };
            } else if (Go.typeEquals((__type__ : T_complexVal))) {
                var _x:T_complexVal = __type__ == null ? ({} : T_complexVal) : __type__.__underlying__() == null ? ({} : T_complexVal) : __type__ == null ? ({} : T_complexVal) : __type__.__underlying__().value;
                {
                    var _re:Value = toFloat(Go.asInterface(_x));
                    if (_re.kind() == ((4 : Kind))) {
                        return toInt(_re);
                    };
                };
            };
        };
        return Go.asInterface((new T_unknownVal() : T_unknownVal));
    }
/**
    // ToFloat converts x to a Float value if x is representable as a Float.
    // Otherwise it returns an Unknown.
**/
function toFloat(_x:Value):Value {
        {
            final __type__ = _x;
            if (Go.typeEquals((__type__ : T_int64Val))) {
                var _x:T_int64Val = __type__ == null ? ((0 : GoInt64) : T_int64Val) : __type__.__underlying__() == null ? ((0 : GoInt64) : T_int64Val) : __type__ == null ? ((0 : GoInt64) : T_int64Val) : __type__.__underlying__().value;
                return Go.asInterface(_i64tor(_x));
            } else if (Go.typeEquals((__type__ : T_intVal))) {
                var _x:T_intVal = __type__ == null ? ({} : T_intVal) : __type__.__underlying__() == null ? ({} : T_intVal) : __type__ == null ? ({} : T_intVal) : __type__.__underlying__().value;
                if (_smallInt(_x._val)) {
                    return Go.asInterface(_itor((_x == null ? null : _x.__copy__())));
                };
                return Go.asInterface(_itof((_x == null ? null : _x.__copy__())));
            } else if (Go.typeEquals((__type__ : T_ratVal)) || Go.typeEquals((__type__ : T_floatVal))) {
                var _x:Value = __type__ == null ? (null : Value) : cast __type__;
                return _x;
            } else if (Go.typeEquals((__type__ : T_complexVal))) {
                var _x:T_complexVal = __type__ == null ? ({} : T_complexVal) : __type__.__underlying__() == null ? ({} : T_complexVal) : __type__ == null ? ({} : T_complexVal) : __type__.__underlying__().value;
                if (sign(_x._im) == ((0 : GoInt))) {
                    return toFloat(_x._re);
                };
            };
        };
        return Go.asInterface((new T_unknownVal() : T_unknownVal));
    }
/**
    // ToComplex converts x to a Complex value if x is representable as a Complex.
    // Otherwise it returns an Unknown.
**/
function toComplex(_x:Value):Value {
        {
            final __type__ = _x;
            if (Go.typeEquals((__type__ : T_int64Val)) || Go.typeEquals((__type__ : T_intVal)) || Go.typeEquals((__type__ : T_ratVal)) || Go.typeEquals((__type__ : T_floatVal))) {
                var _x:Value = __type__ == null ? (null : Value) : cast __type__;
                return Go.asInterface(_vtoc(_x));
            } else if (Go.typeEquals((__type__ : T_complexVal))) {
                var _x:T_complexVal = __type__ == null ? ({} : T_complexVal) : __type__.__underlying__() == null ? ({} : T_complexVal) : __type__ == null ? ({} : T_complexVal) : __type__.__underlying__().value;
                return Go.asInterface(_x);
            };
        };
        return Go.asInterface((new T_unknownVal() : T_unknownVal));
    }
/**
    // is32bit reports whether x can be represented using 32 bits.
**/
private function _is32bit(_x:GoInt64):Bool {
        {};
        return ((("-2147483648" : GoInt64) : GoInt64) <= _x) && (_x <= (("2147483647" : GoInt64) : GoInt64));
    }
/**
    // is63bit reports whether x can be represented using 63 bits.
**/
private function _is63bit(_x:GoInt64):Bool {
        {};
        return ((("-4611686018427387904" : GoInt64) : GoInt64) <= _x) && (_x <= (("4611686018427387903" : GoInt64) : GoInt64));
    }
/**
    // UnaryOp returns the result of the unary expression op y.
    // The operation must be defined for the operand.
    // If prec > 0 it specifies the ^ (xor) result size in bits.
    // If y is Unknown, the result is Unknown.
**/
function unaryOp(_op:stdgo.go.token.Token.Token, _y:Value, _prec:GoUInt):Value {
        return stdgo.internal.Macro.controlFlow({
            if (_op == ((12 : stdgo.go.token.Token.Token))) {
                {
                    final __type__ = _y;
                    if (Go.typeEquals((__type__ : T_unknownVal)) || Go.typeEquals((__type__ : T_int64Val)) || Go.typeEquals((__type__ : T_intVal)) || Go.typeEquals((__type__ : T_ratVal)) || Go.typeEquals((__type__ : T_floatVal)) || Go.typeEquals((__type__ : T_complexVal))) {
                        return _y;
                    };
                };
            } else if (_op == ((13 : stdgo.go.token.Token.Token))) {
                {
                    final __type__ = _y;
                    if (Go.typeEquals((__type__ : T_unknownVal))) {
                        var _y:T_unknownVal = __type__ == null ? ({} : T_unknownVal) : __type__.__underlying__() == null ? ({} : T_unknownVal) : __type__ == null ? ({} : T_unknownVal) : __type__.__underlying__().value;
                        return Go.asInterface(_y);
                    } else if (Go.typeEquals((__type__ : T_int64Val))) {
                        var _y:T_int64Val = __type__ == null ? ((0 : GoInt64) : T_int64Val) : __type__.__underlying__() == null ? ((0 : GoInt64) : T_int64Val) : __type__ == null ? ((0 : GoInt64) : T_int64Val) : __type__.__underlying__().value;
                        {
                            var _z:T_int64Val = -_y;
                            if (_z != (_y)) {
                                return Go.asInterface(_z);
                            };
                        };
                        return _makeInt(_newInt().neg(stdgo.math.big.Big.newInt((_y : GoInt64))));
                    } else if (Go.typeEquals((__type__ : T_intVal))) {
                        var _y:T_intVal = __type__ == null ? ({} : T_intVal) : __type__.__underlying__() == null ? ({} : T_intVal) : __type__ == null ? ({} : T_intVal) : __type__.__underlying__().value;
                        return _makeInt(_newInt().neg(_y._val));
                    } else if (Go.typeEquals((__type__ : T_ratVal))) {
                        var _y:T_ratVal = __type__ == null ? ({} : T_ratVal) : __type__.__underlying__() == null ? ({} : T_ratVal) : __type__ == null ? ({} : T_ratVal) : __type__.__underlying__().value;
                        return _makeRat(_newRat().neg(_y._val));
                    } else if (Go.typeEquals((__type__ : T_floatVal))) {
                        var _y:T_floatVal = __type__ == null ? ({} : T_floatVal) : __type__.__underlying__() == null ? ({} : T_floatVal) : __type__ == null ? ({} : T_floatVal) : __type__.__underlying__().value;
                        return _makeFloat(_newFloat().neg(_y._val));
                    } else if (Go.typeEquals((__type__ : T_complexVal))) {
                        var _y:T_complexVal = __type__ == null ? ({} : T_complexVal) : __type__.__underlying__() == null ? ({} : T_complexVal) : __type__ == null ? ({} : T_complexVal) : __type__.__underlying__().value;
                        var _re:Value = unaryOp((13 : stdgo.go.token.Token.Token), _y._re, ("0" : GoUInt));
                        var _im:Value = unaryOp((13 : stdgo.go.token.Token.Token), _y._im, ("0" : GoUInt));
                        return _makeComplex(_re, _im);
                    };
                };
            } else if (_op == ((19 : stdgo.go.token.Token.Token))) {
                var _z = _newInt();
                {
                    final __type__ = _y;
                    if (Go.typeEquals((__type__ : T_unknownVal))) {
                        var _y:T_unknownVal = __type__ == null ? ({} : T_unknownVal) : __type__.__underlying__() == null ? ({} : T_unknownVal) : __type__ == null ? ({} : T_unknownVal) : __type__.__underlying__().value;
                        return Go.asInterface(_y);
                    } else if (Go.typeEquals((__type__ : T_int64Val))) {
                        var _y:T_int64Val = __type__ == null ? ((0 : GoInt64) : T_int64Val) : __type__.__underlying__() == null ? ((0 : GoInt64) : T_int64Val) : __type__ == null ? ((0 : GoInt64) : T_int64Val) : __type__.__underlying__().value;
                        _z.not(stdgo.math.big.Big.newInt((_y : GoInt64)));
                    } else if (Go.typeEquals((__type__ : T_intVal))) {
                        var _y:T_intVal = __type__ == null ? ({} : T_intVal) : __type__.__underlying__() == null ? ({} : T_intVal) : __type__ == null ? ({} : T_intVal) : __type__.__underlying__().value;
                        _z.not(_y._val);
                    } else {
                        var _y:Value = __type__ == null ? (null : Value) : cast __type__;
                        @:goto "Error";
                    };
                };
                if (_prec > ("0" : GoUInt)) {
                    _z.andNot(_z, _newInt().lsh(stdgo.math.big.Big.newInt(("-1" : GoInt64)), _prec));
                };
                return _makeInt(_z);
            } else if (_op == ((43 : stdgo.go.token.Token.Token))) {
                {
                    final __type__ = _y;
                    if (Go.typeEquals((__type__ : T_unknownVal))) {
                        var _y:T_unknownVal = __type__ == null ? ({} : T_unknownVal) : __type__.__underlying__() == null ? ({} : T_unknownVal) : __type__ == null ? ({} : T_unknownVal) : __type__.__underlying__().value;
                        return Go.asInterface(_y);
                    } else if (Go.typeEquals((__type__ : T_boolVal))) {
                        var _y:T_boolVal = __type__ == null ? (false : T_boolVal) : __type__.__underlying__() == null ? (false : T_boolVal) : __type__ == null ? (false : T_boolVal) : __type__.__underlying__().value;
                        return Go.asInterface(!_y);
                    };
                };
            };
            @:label("Error") throw Go.toInterface(stdgo.fmt.Fmt.sprintf(("invalid unary operation %s%v" : GoString), Go.toInterface(Go.asInterface(_op)), Go.toInterface(_y)));
        });
    }
private function _ord(_x:Value):GoInt {
        {
            final __type__ = _x;
            if (Go.typeEquals((__type__ : T_unknownVal))) {
                return (0 : GoInt);
            } else if (Go.typeEquals((__type__ : T_boolVal)) || Go.typeEquals((__type__ : Ref<T_stringVal>))) {
                return (1 : GoInt);
            } else if (Go.typeEquals((__type__ : T_int64Val))) {
                return (2 : GoInt);
            } else if (Go.typeEquals((__type__ : T_intVal))) {
                return (3 : GoInt);
            } else if (Go.typeEquals((__type__ : T_ratVal))) {
                return (4 : GoInt);
            } else if (Go.typeEquals((__type__ : T_floatVal))) {
                return (5 : GoInt);
            } else if (Go.typeEquals((__type__ : T_complexVal))) {
                return (6 : GoInt);
            } else {
                return (-1 : GoInt);
            };
        };
    }
/**
    // match returns the matching representation (same type) with the
    // smallest complexity for two values x and y. If one of them is
    // numeric, both of them must be numeric. If one of them is Unknown
    // or invalid (say, nil) both results are that value.
**/
private function _match(_x:Value, _y:Value):{ var _0 : Value; var _1 : Value; } {
        var _0:Value = (null : Value), _1:Value = (null : Value);
        {
            var _0:GoInt = _ord(_x), _1:GoInt = _ord(_y), _oy:GoInt = _1, _ox:GoInt = _0;
            if (_ox < _oy) {
                {
                    var __tmp__ = _match0(_x, _y);
                    _x = __tmp__._0;
                    _y = __tmp__._1;
                };
            } else if (_ox > _oy) {
                {
                    var __tmp__ = _match0(_y, _x);
                    _y = __tmp__._0;
                    _x = __tmp__._1;
                };
            };
        };
        return { _0 : _x, _1 : _y };
    }
/**
    // match0 must only be called by match.
    // Invariant: ord(x) < ord(y)
**/
private function _match0(_x:Value, _y:Value):{ var _0 : Value; var _1 : Value; } {
        var _0:Value = (null : Value), _1:Value = (null : Value);
        {
            final __type__ = _y;
            if (Go.typeEquals((__type__ : T_intVal))) {
                {
                    final __type__ = _x;
                    if (Go.typeEquals((__type__ : T_int64Val))) {
                        var _x1:T_int64Val = __type__ == null ? ((0 : GoInt64) : T_int64Val) : __type__.__underlying__() == null ? ((0 : GoInt64) : T_int64Val) : __type__ == null ? ((0 : GoInt64) : T_int64Val) : __type__.__underlying__().value;
                        return { _0 : Go.asInterface(_i64toi(_x1)), _1 : _y };
                    };
                };
            } else if (Go.typeEquals((__type__ : T_ratVal))) {
                {
                    final __type__ = _x;
                    if (Go.typeEquals((__type__ : T_int64Val))) {
                        var _x1:T_int64Val = __type__ == null ? ((0 : GoInt64) : T_int64Val) : __type__.__underlying__() == null ? ((0 : GoInt64) : T_int64Val) : __type__ == null ? ((0 : GoInt64) : T_int64Val) : __type__.__underlying__().value;
                        return { _0 : Go.asInterface(_i64tor(_x1)), _1 : _y };
                    } else if (Go.typeEquals((__type__ : T_intVal))) {
                        var _x1:T_intVal = __type__ == null ? ({} : T_intVal) : __type__.__underlying__() == null ? ({} : T_intVal) : __type__ == null ? ({} : T_intVal) : __type__.__underlying__().value;
                        return { _0 : Go.asInterface(_itor((_x1 == null ? null : _x1.__copy__()))), _1 : _y };
                    };
                };
            } else if (Go.typeEquals((__type__ : T_floatVal))) {
                {
                    final __type__ = _x;
                    if (Go.typeEquals((__type__ : T_int64Val))) {
                        var _x1:T_int64Val = __type__ == null ? ((0 : GoInt64) : T_int64Val) : __type__.__underlying__() == null ? ((0 : GoInt64) : T_int64Val) : __type__ == null ? ((0 : GoInt64) : T_int64Val) : __type__.__underlying__().value;
                        return { _0 : Go.asInterface(_i64tof(_x1)), _1 : _y };
                    } else if (Go.typeEquals((__type__ : T_intVal))) {
                        var _x1:T_intVal = __type__ == null ? ({} : T_intVal) : __type__.__underlying__() == null ? ({} : T_intVal) : __type__ == null ? ({} : T_intVal) : __type__.__underlying__().value;
                        return { _0 : Go.asInterface(_itof((_x1 == null ? null : _x1.__copy__()))), _1 : _y };
                    } else if (Go.typeEquals((__type__ : T_ratVal))) {
                        var _x1:T_ratVal = __type__ == null ? ({} : T_ratVal) : __type__.__underlying__() == null ? ({} : T_ratVal) : __type__ == null ? ({} : T_ratVal) : __type__.__underlying__().value;
                        return { _0 : Go.asInterface(_rtof((_x1 == null ? null : _x1.__copy__()))), _1 : _y };
                    };
                };
            } else if (Go.typeEquals((__type__ : T_complexVal))) {
                return { _0 : Go.asInterface(_vtoc(_x)), _1 : _y };
            };
        };
        return { _0 : _x, _1 : _x };
    }
/**
    // BinaryOp returns the result of the binary expression x op y.
    // The operation must be defined for the operands. If one of the
    // operands is Unknown, the result is Unknown.
    // BinaryOp doesn't handle comparisons or shifts; use Compare
    // or Shift instead.
    //
    // To force integer division of Int operands, use op == token.QUO_ASSIGN
    // instead of token.QUO; the result is guaranteed to be Int in this case.
    // Division by zero leads to a run-time panic.
**/
function binaryOp(_x_:Value, _op:stdgo.go.token.Token.Token, _y_:Value):Value {
        return stdgo.internal.Macro.controlFlow({
            var __tmp__ = _match(_x_, _y_), _x:Value = __tmp__._0, _y:Value = __tmp__._1;
            {
                final __type__ = _x;
                if (Go.typeEquals((__type__ : T_unknownVal))) {
                    var _x:T_unknownVal = __type__ == null ? ({} : T_unknownVal) : __type__.__underlying__() == null ? ({} : T_unknownVal) : __type__ == null ? ({} : T_unknownVal) : __type__.__underlying__().value;
                    return Go.asInterface(_x);
                } else if (Go.typeEquals((__type__ : T_boolVal))) {
                    var _x:T_boolVal = __type__ == null ? (false : T_boolVal) : __type__.__underlying__() == null ? (false : T_boolVal) : __type__ == null ? (false : T_boolVal) : __type__.__underlying__().value;
                    var _y:T_boolVal = (Go.typeAssert((Go.toInterface(_y) : T_boolVal)) : T_boolVal);
                    if (_op == ((34 : stdgo.go.token.Token.Token))) {
                        return Go.asInterface(_x && _y);
                    } else if (_op == ((35 : stdgo.go.token.Token.Token))) {
                        return Go.asInterface(_x || _y);
                    };
                } else if (Go.typeEquals((__type__ : T_int64Val))) {
                    var _x:T_int64Val = __type__ == null ? ((0 : GoInt64) : T_int64Val) : __type__.__underlying__() == null ? ((0 : GoInt64) : T_int64Val) : __type__ == null ? ((0 : GoInt64) : T_int64Val) : __type__.__underlying__().value;
                    var _a:GoInt64 = (_x : GoInt64);
                    var _b:GoInt64 = ((Go.typeAssert((Go.toInterface(_y) : T_int64Val)) : T_int64Val) : GoInt64);
                    var _c:GoInt64 = (0 : GoInt64);
                    if (_op == ((12 : stdgo.go.token.Token.Token))) {
                        if (!_is63bit(_a) || !_is63bit(_b)) {
                            return _makeInt(_newInt().add(stdgo.math.big.Big.newInt(_a), stdgo.math.big.Big.newInt(_b)));
                        };
                        _c = _a + _b;
                    } else if (_op == ((13 : stdgo.go.token.Token.Token))) {
                        if (!_is63bit(_a) || !_is63bit(_b)) {
                            return _makeInt(_newInt().sub(stdgo.math.big.Big.newInt(_a), stdgo.math.big.Big.newInt(_b)));
                        };
                        _c = _a - _b;
                    } else if (_op == ((14 : stdgo.go.token.Token.Token))) {
                        if (!_is32bit(_a) || !_is32bit(_b)) {
                            return _makeInt(_newInt().mul(stdgo.math.big.Big.newInt(_a), stdgo.math.big.Big.newInt(_b)));
                        };
                        _c = _a * _b;
                    } else if (_op == ((15 : stdgo.go.token.Token.Token))) {
                        return _makeRat(stdgo.math.big.Big.newRat(_a, _b));
                    } else if (_op == ((26 : stdgo.go.token.Token.Token))) {
                        _c = _a / _b;
                    } else if (_op == ((16 : stdgo.go.token.Token.Token))) {
                        _c = _a % _b;
                    } else if (_op == ((17 : stdgo.go.token.Token.Token))) {
                        _c = _a & _b;
                    } else if (_op == ((18 : stdgo.go.token.Token.Token))) {
                        _c = _a | _b;
                    } else if (_op == ((19 : stdgo.go.token.Token.Token))) {
                        _c = _a ^ _b;
                    } else if (_op == ((22 : stdgo.go.token.Token.Token))) {
                        _c = _a & (_b ^ (-1 : GoInt));
                    } else {
                        @:goto "Error";
                    };
                    return Go.asInterface((_c : T_int64Val));
                } else if (Go.typeEquals((__type__ : T_intVal))) {
                    var _x:T_intVal = __type__ == null ? ({} : T_intVal) : __type__.__underlying__() == null ? ({} : T_intVal) : __type__ == null ? ({} : T_intVal) : __type__.__underlying__().value;
                    var _a = _x._val;
                    var _b = (Go.typeAssert((Go.toInterface(_y) : T_intVal)) : T_intVal)._val;
                    var _c = _newInt();
                    if (_op == ((12 : stdgo.go.token.Token.Token))) {
                        _c.add(_a, _b);
                    } else if (_op == ((13 : stdgo.go.token.Token.Token))) {
                        _c.sub(_a, _b);
                    } else if (_op == ((14 : stdgo.go.token.Token.Token))) {
                        _c.mul(_a, _b);
                    } else if (_op == ((15 : stdgo.go.token.Token.Token))) {
                        return _makeRat(_newRat().setFrac(_a, _b));
                    } else if (_op == ((26 : stdgo.go.token.Token.Token))) {
                        _c.quo(_a, _b);
                    } else if (_op == ((16 : stdgo.go.token.Token.Token))) {
                        _c.rem(_a, _b);
                    } else if (_op == ((17 : stdgo.go.token.Token.Token))) {
                        _c.and(_a, _b);
                    } else if (_op == ((18 : stdgo.go.token.Token.Token))) {
                        _c.or(_a, _b);
                    } else if (_op == ((19 : stdgo.go.token.Token.Token))) {
                        _c.xor(_a, _b);
                    } else if (_op == ((22 : stdgo.go.token.Token.Token))) {
                        _c.andNot(_a, _b);
                    } else {
                        @:goto "Error";
                    };
                    return _makeInt(_c);
                } else if (Go.typeEquals((__type__ : T_ratVal))) {
                    var _x:T_ratVal = __type__ == null ? ({} : T_ratVal) : __type__.__underlying__() == null ? ({} : T_ratVal) : __type__ == null ? ({} : T_ratVal) : __type__.__underlying__().value;
                    var _a = _x._val;
                    var _b = (Go.typeAssert((Go.toInterface(_y) : T_ratVal)) : T_ratVal)._val;
                    var _c = _newRat();
                    if (_op == ((12 : stdgo.go.token.Token.Token))) {
                        _c.add(_a, _b);
                    } else if (_op == ((13 : stdgo.go.token.Token.Token))) {
                        _c.sub(_a, _b);
                    } else if (_op == ((14 : stdgo.go.token.Token.Token))) {
                        _c.mul(_a, _b);
                    } else if (_op == ((15 : stdgo.go.token.Token.Token))) {
                        _c.quo(_a, _b);
                    } else {
                        @:goto "Error";
                    };
                    return _makeRat(_c);
                } else if (Go.typeEquals((__type__ : T_floatVal))) {
                    var _x:T_floatVal = __type__ == null ? ({} : T_floatVal) : __type__.__underlying__() == null ? ({} : T_floatVal) : __type__ == null ? ({} : T_floatVal) : __type__.__underlying__().value;
                    var _a = _x._val;
                    var _b = (Go.typeAssert((Go.toInterface(_y) : T_floatVal)) : T_floatVal)._val;
                    var _c = _newFloat();
                    if (_op == ((12 : stdgo.go.token.Token.Token))) {
                        _c.add(_a, _b);
                    } else if (_op == ((13 : stdgo.go.token.Token.Token))) {
                        _c.sub(_a, _b);
                    } else if (_op == ((14 : stdgo.go.token.Token.Token))) {
                        _c.mul(_a, _b);
                    } else if (_op == ((15 : stdgo.go.token.Token.Token))) {
                        _c.quo(_a, _b);
                    } else {
                        @:goto "Error";
                    };
                    return _makeFloat(_c);
                } else if (Go.typeEquals((__type__ : T_complexVal))) {
                    var _x:T_complexVal = __type__ == null ? ({} : T_complexVal) : __type__.__underlying__() == null ? ({} : T_complexVal) : __type__ == null ? ({} : T_complexVal) : __type__.__underlying__().value;
                    var _y:T_complexVal = ((Go.typeAssert((Go.toInterface(_y) : T_complexVal)) : T_complexVal) == null ? null : (Go.typeAssert((Go.toInterface(_y) : T_complexVal)) : T_complexVal).__copy__());
                    var _0:Value = _x._re, _1:Value = _x._im, _b:Value = _1, _a:Value = _0;
                    var _0:Value = _y._re, _1:Value = _y._im, _d:Value = _1, _c:Value = _0;
                    var _0:Value = (null : Value), _1:Value = (null : Value), _im:Value = _1, _re:Value = _0;
                    if (_op == ((12 : stdgo.go.token.Token.Token))) {
                        _re = _add(_a, _c);
                        _im = _add(_b, _d);
                    } else if (_op == ((13 : stdgo.go.token.Token.Token))) {
                        _re = _sub(_a, _c);
                        _im = _sub(_b, _d);
                    } else if (_op == ((14 : stdgo.go.token.Token.Token))) {
                        var _ac:Value = _mul(_a, _c);
                        var _bd:Value = _mul(_b, _d);
                        var _bc:Value = _mul(_b, _c);
                        var _ad:Value = _mul(_a, _d);
                        _re = _sub(_ac, _bd);
                        _im = _add(_bc, _ad);
                    } else if (_op == ((15 : stdgo.go.token.Token.Token))) {
                        var _ac:Value = _mul(_a, _c);
                        var _bd:Value = _mul(_b, _d);
                        var _bc:Value = _mul(_b, _c);
                        var _ad:Value = _mul(_a, _d);
                        var _cc:Value = _mul(_c, _c);
                        var _dd:Value = _mul(_d, _d);
                        var _s:Value = _add(_cc, _dd);
                        _re = _add(_ac, _bd);
                        _re = _quo(_re, _s);
                        _im = _sub(_bc, _ad);
                        _im = _quo(_im, _s);
                    } else {
                        @:goto "Error";
                    };
                    return _makeComplex(_re, _im);
                } else if (Go.typeEquals((__type__ : Ref<T_stringVal>))) {
                    var _x:Ref<T_stringVal> = __type__ == null ? (null : Ref<T_stringVal>) : __type__.__underlying__() == null ? (null : Ref<T_stringVal>) : __type__ == null ? (null : Ref<T_stringVal>) : __type__.__underlying__().value;
                    if (_op == ((12 : stdgo.go.token.Token.Token))) {
                        return Go.asInterface((({ _l : _x, _r : (Go.typeAssert((Go.toInterface(_y) : Ref<T_stringVal>)) : Ref<T_stringVal>) } : T_stringVal) : Ref<T_stringVal>));
                    };
                };
            };
            @:label("Error") throw Go.toInterface(stdgo.fmt.Fmt.sprintf(("invalid binary operation %v %s %v" : GoString), Go.toInterface(_x_), Go.toInterface(Go.asInterface(_op)), Go.toInterface(_y_)));
        });
    }
private function _add(_x:Value, _y:Value):Value {
        return binaryOp(_x, (12 : stdgo.go.token.Token.Token), _y);
    }
private function _sub(_x:Value, _y:Value):Value {
        return binaryOp(_x, (13 : stdgo.go.token.Token.Token), _y);
    }
private function _mul(_x:Value, _y:Value):Value {
        return binaryOp(_x, (14 : stdgo.go.token.Token.Token), _y);
    }
private function _quo(_x:Value, _y:Value):Value {
        return binaryOp(_x, (15 : stdgo.go.token.Token.Token), _y);
    }
/**
    // Shift returns the result of the shift expression x op s
    // with op == token.SHL or token.SHR (<< or >>). x must be
    // an Int or an Unknown. If x is Unknown, the result is x.
**/
function shift(_x:Value, _op:stdgo.go.token.Token.Token, _s:GoUInt):Value {
        {
            final __type__ = _x;
            if (Go.typeEquals((__type__ : T_unknownVal))) {
                var _x:T_unknownVal = __type__ == null ? ({} : T_unknownVal) : __type__.__underlying__() == null ? ({} : T_unknownVal) : __type__ == null ? ({} : T_unknownVal) : __type__.__underlying__().value;
                return Go.asInterface(_x);
            } else if (Go.typeEquals((__type__ : T_int64Val))) {
                var _x:T_int64Val = __type__ == null ? ((0 : GoInt64) : T_int64Val) : __type__.__underlying__() == null ? ((0 : GoInt64) : T_int64Val) : __type__ == null ? ((0 : GoInt64) : T_int64Val) : __type__.__underlying__().value;
                if (_s == (("0" : GoUInt))) {
                    return Go.asInterface(_x);
                };
                if (_op == ((20 : stdgo.go.token.Token.Token))) {
                    var _z = _i64toi(_x)._val;
                    return _makeInt(_z.lsh(_z, _s));
                } else if (_op == ((21 : stdgo.go.token.Token.Token))) {
                    return Go.asInterface(_x >> _s);
                };
            } else if (Go.typeEquals((__type__ : T_intVal))) {
                var _x:T_intVal = __type__ == null ? ({} : T_intVal) : __type__.__underlying__() == null ? ({} : T_intVal) : __type__ == null ? ({} : T_intVal) : __type__.__underlying__().value;
                if (_s == (("0" : GoUInt))) {
                    return Go.asInterface(_x);
                };
                var _z = _newInt();
                if (_op == ((20 : stdgo.go.token.Token.Token))) {
                    return _makeInt(_z.lsh(_x._val, _s));
                } else if (_op == ((21 : stdgo.go.token.Token.Token))) {
                    return _makeInt(_z.rsh(_x._val, _s));
                };
            };
        };
        throw Go.toInterface(stdgo.fmt.Fmt.sprintf(("invalid shift %v %s %d" : GoString), Go.toInterface(_x), Go.toInterface(Go.asInterface(_op)), Go.toInterface(_s)));
    }
private function _cmpZero(_x:GoInt, _op:stdgo.go.token.Token.Token):Bool {
        if (_op == ((39 : stdgo.go.token.Token.Token))) {
            return _x == ((0 : GoInt));
        } else if (_op == ((44 : stdgo.go.token.Token.Token))) {
            return _x != ((0 : GoInt));
        } else if (_op == ((40 : stdgo.go.token.Token.Token))) {
            return _x < (0 : GoInt);
        } else if (_op == ((45 : stdgo.go.token.Token.Token))) {
            return _x <= (0 : GoInt);
        } else if (_op == ((41 : stdgo.go.token.Token.Token))) {
            return _x > (0 : GoInt);
        } else if (_op == ((46 : stdgo.go.token.Token.Token))) {
            return _x >= (0 : GoInt);
        };
        throw Go.toInterface(stdgo.fmt.Fmt.sprintf(("invalid comparison %v %s 0" : GoString), Go.toInterface(_x), Go.toInterface(Go.asInterface(_op))));
    }
/**
    // Compare returns the result of the comparison x op y.
    // The comparison must be defined for the operands.
    // If one of the operands is Unknown, the result is
    // false.
**/
function compare(_x_:Value, _op:stdgo.go.token.Token.Token, _y_:Value):Bool {
        var __tmp__ = _match(_x_, _y_), _x:Value = __tmp__._0, _y:Value = __tmp__._1;
        {
            final __type__ = _x;
            if (Go.typeEquals((__type__ : T_unknownVal))) {
                var _x:T_unknownVal = __type__ == null ? ({} : T_unknownVal) : __type__.__underlying__() == null ? ({} : T_unknownVal) : __type__ == null ? ({} : T_unknownVal) : __type__.__underlying__().value;
                return false;
            } else if (Go.typeEquals((__type__ : T_boolVal))) {
                var _x:T_boolVal = __type__ == null ? (false : T_boolVal) : __type__.__underlying__() == null ? (false : T_boolVal) : __type__ == null ? (false : T_boolVal) : __type__.__underlying__().value;
                var _y:T_boolVal = (Go.typeAssert((Go.toInterface(_y) : T_boolVal)) : T_boolVal);
                if (_op == ((39 : stdgo.go.token.Token.Token))) {
                    return _x == (_y);
                } else if (_op == ((44 : stdgo.go.token.Token.Token))) {
                    return _x != (_y);
                };
            } else if (Go.typeEquals((__type__ : T_int64Val))) {
                var _x:T_int64Val = __type__ == null ? ((0 : GoInt64) : T_int64Val) : __type__.__underlying__() == null ? ((0 : GoInt64) : T_int64Val) : __type__ == null ? ((0 : GoInt64) : T_int64Val) : __type__.__underlying__().value;
                var _y:T_int64Val = (Go.typeAssert((Go.toInterface(_y) : T_int64Val)) : T_int64Val);
                if (_op == ((39 : stdgo.go.token.Token.Token))) {
                    return _x == (_y);
                } else if (_op == ((44 : stdgo.go.token.Token.Token))) {
                    return _x != (_y);
                } else if (_op == ((40 : stdgo.go.token.Token.Token))) {
                    return _x < _y;
                } else if (_op == ((45 : stdgo.go.token.Token.Token))) {
                    return _x <= _y;
                } else if (_op == ((41 : stdgo.go.token.Token.Token))) {
                    return _x > _y;
                } else if (_op == ((46 : stdgo.go.token.Token.Token))) {
                    return _x >= _y;
                };
            } else if (Go.typeEquals((__type__ : T_intVal))) {
                var _x:T_intVal = __type__ == null ? ({} : T_intVal) : __type__.__underlying__() == null ? ({} : T_intVal) : __type__ == null ? ({} : T_intVal) : __type__.__underlying__().value;
                return _cmpZero(_x._val.cmp((Go.typeAssert((Go.toInterface(_y) : T_intVal)) : T_intVal)._val), _op);
            } else if (Go.typeEquals((__type__ : T_ratVal))) {
                var _x:T_ratVal = __type__ == null ? ({} : T_ratVal) : __type__.__underlying__() == null ? ({} : T_ratVal) : __type__ == null ? ({} : T_ratVal) : __type__.__underlying__().value;
                return _cmpZero(_x._val.cmp((Go.typeAssert((Go.toInterface(_y) : T_ratVal)) : T_ratVal)._val), _op);
            } else if (Go.typeEquals((__type__ : T_floatVal))) {
                var _x:T_floatVal = __type__ == null ? ({} : T_floatVal) : __type__.__underlying__() == null ? ({} : T_floatVal) : __type__ == null ? ({} : T_floatVal) : __type__.__underlying__().value;
                return _cmpZero(_x._val.cmp((Go.typeAssert((Go.toInterface(_y) : T_floatVal)) : T_floatVal)._val), _op);
            } else if (Go.typeEquals((__type__ : T_complexVal))) {
                var _x:T_complexVal = __type__ == null ? ({} : T_complexVal) : __type__.__underlying__() == null ? ({} : T_complexVal) : __type__ == null ? ({} : T_complexVal) : __type__.__underlying__().value;
                var _y:T_complexVal = ((Go.typeAssert((Go.toInterface(_y) : T_complexVal)) : T_complexVal) == null ? null : (Go.typeAssert((Go.toInterface(_y) : T_complexVal)) : T_complexVal).__copy__());
                var _re:Bool = compare(_x._re, (39 : stdgo.go.token.Token.Token), _y._re);
                var _im:Bool = compare(_x._im, (39 : stdgo.go.token.Token.Token), _y._im);
                if (_op == ((39 : stdgo.go.token.Token.Token))) {
                    return _re && _im;
                } else if (_op == ((44 : stdgo.go.token.Token.Token))) {
                    return !_re || !_im;
                };
            } else if (Go.typeEquals((__type__ : Ref<T_stringVal>))) {
                var _x:Ref<T_stringVal> = __type__ == null ? (null : Ref<T_stringVal>) : __type__.__underlying__() == null ? (null : Ref<T_stringVal>) : __type__ == null ? (null : Ref<T_stringVal>) : __type__.__underlying__().value;
                var _xs:GoString = _x._string();
                var _ys:GoString = (Go.typeAssert((Go.toInterface(_y) : Ref<T_stringVal>)) : Ref<T_stringVal>)._string();
                if (_op == ((39 : stdgo.go.token.Token.Token))) {
                    return _xs == (_ys);
                } else if (_op == ((44 : stdgo.go.token.Token.Token))) {
                    return _xs != (_ys);
                } else if (_op == ((40 : stdgo.go.token.Token.Token))) {
                    return _xs < _ys;
                } else if (_op == ((45 : stdgo.go.token.Token.Token))) {
                    return _xs <= _ys;
                } else if (_op == ((41 : stdgo.go.token.Token.Token))) {
                    return _xs > _ys;
                } else if (_op == ((46 : stdgo.go.token.Token.Token))) {
                    return _xs >= _ys;
                };
            };
        };
        throw Go.toInterface(stdgo.fmt.Fmt.sprintf(("invalid comparison %v %s %v" : GoString), Go.toInterface(_x_), Go.toInterface(Go.asInterface(_op)), Go.toInterface(_y_)));
    }
private function _testNumbers(_t:Ref<stdgo.testing.Testing.T>, _kind:stdgo.go.token.Token.Token, _tests:Slice<GoString>):Void {
        for (_0 => _test in _tests) {
            var _a = stdgo.strings.Strings.split(_test, (" = " : GoString));
            if ((_a.length) != ((2 : GoInt))) {
                _t.errorf(("invalid test case: %s" : GoString), Go.toInterface(_test));
                continue;
            };
            var _x:Value = makeFromLiteral(_a[(0 : GoInt)], _kind, ("0" : GoUInt));
            var _y:Value = (null : Value);
            if (_a[(1 : GoInt)] == (("?" : GoString))) {
                _y = makeUnknown();
            } else {
                {
                    var __tmp__ = stdgo.strings.Strings.cut(_a[(1 : GoInt)], ("/" : GoString)), _ns:GoString = __tmp__._0, _ds:GoString = __tmp__._1, _ok:Bool = __tmp__._2;
                    if (_ok && (_kind == (6 : stdgo.go.token.Token.Token))) {
                        var _n:Value = makeFromLiteral(_ns, (5 : stdgo.go.token.Token.Token), ("0" : GoUInt));
                        var _d:Value = makeFromLiteral(_ds, (5 : stdgo.go.token.Token.Token), ("0" : GoUInt));
                        _y = binaryOp(_n, (15 : stdgo.go.token.Token.Token), _d);
                    } else {
                        _y = makeFromLiteral(_a[(1 : GoInt)], _kind, ("0" : GoUInt));
                    };
                };
                if (_y.kind() == ((0 : Kind))) {
                    throw Go.toInterface(stdgo.fmt.Fmt.sprintf(("invalid test case: %s %d" : GoString), Go.toInterface(_test), Go.toInterface(Go.asInterface(_y.kind()))));
                };
            };
            var _xk:Kind = _x.kind();
            var _yk:Kind = _y.kind();
            if (_xk != (_yk)) {
                _t.errorf(("%s: got kind %d != %d" : GoString), Go.toInterface(_test), Go.toInterface(Go.asInterface(_xk)), Go.toInterface(Go.asInterface(_yk)));
                continue;
            };
            if (_yk == ((0 : Kind))) {
                continue;
            };
            if (!compare(_x, (39 : stdgo.go.token.Token.Token), _y)) {
                _t.errorf(("%s: %s != %s" : GoString), Go.toInterface(_test), Go.toInterface(_x), Go.toInterface(_y));
            };
        };
    }
/**
    // TestNumbers verifies that differently written literals
    // representing the same number do have the same value.
**/
function testNumbers(_t:Ref<stdgo.testing.Testing.T>):Void {
        _testNumbers(_t, (5 : stdgo.go.token.Token.Token), _intTests);
        _testNumbers(_t, (6 : stdgo.go.token.Token.Token), _floatTests);
        _testNumbers(_t, (7 : stdgo.go.token.Token.Token), _imagTests);
    }
function testOps(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _test in _opTests) {
            var _a = stdgo.strings.Strings.split(_test, (" " : GoString));
            var _i:GoInt = (0 : GoInt);
            var _0:Value = (null : Value), _1:Value = (null : Value), _x0:Value = _1, _x:Value = _0;
            if ((_a.length) == ((4 : GoInt))) {} else if ((_a.length) == ((5 : GoInt))) {
                {
                    final __tmp__0 = _val(_a[(0 : GoInt)]);
                    final __tmp__1 = _val(_a[(0 : GoInt)]);
                    _x = __tmp__0;
                    _x0 = __tmp__1;
                };
                _i = (1 : GoInt);
            } else {
                _t.errorf(("invalid test case: %s" : GoString), Go.toInterface(_test));
                continue;
            };
            var __tmp__ = (_optab != null && _optab.__exists__(_a[(_i : GoInt)]) ? { value : _optab[_a[(_i : GoInt)]], ok : true } : { value : ((0 : GoInt) : stdgo.go.token.Token.Token), ok : false }), _op:stdgo.go.token.Token.Token = __tmp__.value, _ok:Bool = __tmp__.ok;
            if (!_ok) {
                throw Go.toInterface(("missing optab entry for " : GoString) + _a[(_i : GoInt)]);
            };
            var _0:Value = _val(_a[(_i + (1 : GoInt) : GoInt)]), _1:Value = _val(_a[(_i + (1 : GoInt) : GoInt)]), _y0:Value = _1, _y:Value = _0;
            var _got:Value = _doOp(_x, _op, _y);
            var _want:Value = _val(_a[(_i + (3 : GoInt) : GoInt)]);
            if (!_eql(_got, _want)) {
                _t.errorf(("%s: got %s; want %s" : GoString), Go.toInterface(_test), Go.toInterface(_got), Go.toInterface(_want));
                continue;
            };
            if ((_x0 != null) && !_eql(_x, _x0)) {
                _t.errorf(("%s: x changed to %s" : GoString), Go.toInterface(_test), Go.toInterface(_x));
                continue;
            };
            if (!_eql(_y, _y0)) {
                _t.errorf(("%s: y changed to %s" : GoString), Go.toInterface(_test), Go.toInterface(_y));
                continue;
            };
        };
    }
private function _eql(_x:Value, _y:Value):Bool {
        var __tmp__ = try {
            { value : (Go.typeAssert((Go.toInterface(_x) : T_unknownVal)) : T_unknownVal), ok : true };
        } catch(_) {
            { value : ({} : T_unknownVal), ok : false };
        }, _0 = __tmp__.value, _ux = __tmp__.ok;
        var __tmp__ = try {
            { value : (Go.typeAssert((Go.toInterface(_y) : T_unknownVal)) : T_unknownVal), ok : true };
        } catch(_) {
            { value : ({} : T_unknownVal), ok : false };
        }, _1 = __tmp__.value, _uy = __tmp__.ok;
        if (_ux || _uy) {
            return _ux == (_uy);
        };
        return compare(_x, (39 : stdgo.go.token.Token.Token), _y);
    }
function testString(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _test in _stringTests) {
            var _x:Value = _val(_test._input);
            {
                var _got:GoString = (_x.string() : GoString);
                if (_got != (_test._short)) {
                    _t.errorf(("%s: got %q; want %q as short string" : GoString), Go.toInterface(_test._input), Go.toInterface(_got), Go.toInterface(_test._short));
                };
            };
            {
                var _got:GoString = _x.exactString();
                if (_got != (_test._exact)) {
                    _t.errorf(("%s: got %q; want %q as exact string" : GoString), Go.toInterface(_test._input), Go.toInterface(_got), Go.toInterface(_test._exact));
                };
            };
        };
    }
private function _val(_lit:GoString):Value {
        if ((_lit.length) == ((0 : GoInt))) {
            return makeUnknown();
        };
        if (_lit == (("?" : GoString))) {
            return makeUnknown();
        } else if (_lit == (("true" : GoString))) {
            return makeBool(true);
        } else if (_lit == (("false" : GoString))) {
            return makeBool(false);
        };
        {
            var __tmp__ = stdgo.strings.Strings.cut(_lit, ("/" : GoString)), _as:GoString = __tmp__._0, _bs:GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (_ok) {
                var _a:Value = makeFromLiteral(_as, (5 : stdgo.go.token.Token.Token), ("0" : GoUInt));
                var _b:Value = makeFromLiteral(_bs, (5 : stdgo.go.token.Token.Token), ("0" : GoUInt));
                return binaryOp(_a, (15 : stdgo.go.token.Token.Token), _b);
            };
        };
        var _tok:stdgo.go.token.Token.Token = (5 : stdgo.go.token.Token.Token);
        {
            var _0:GoUInt8 = _lit[(0 : GoInt)], _1:GoUInt8 = _lit[((_lit.length) - (1 : GoInt) : GoInt)], _last:GoUInt8 = _1, _first:GoUInt8 = _0;
            if ((_first == (34 : GoUInt8)) || (_first == (96 : GoUInt8))) {
                _tok = (9 : stdgo.go.token.Token.Token);
                _lit = stdgo.strings.Strings.replaceAll(_lit, ("_" : GoString), (" " : GoString));
            } else if (_first == ((39 : GoUInt8))) {
                _tok = (8 : stdgo.go.token.Token.Token);
            } else if (_last == ((105 : GoUInt8))) {
                _tok = (7 : stdgo.go.token.Token.Token);
            } else {
                if (!stdgo.strings.Strings.hasPrefix(_lit, ("0x" : GoString)) && stdgo.strings.Strings.containsAny(_lit, ("./Ee" : GoString))) {
                    _tok = (6 : stdgo.go.token.Token.Token);
                };
            };
        };
        return makeFromLiteral(_lit, _tok, ("0" : GoUInt));
    }
private function _panicHandler(_v:Ref<Value>):Void {
        {
            final __type__ = ({
                final r = Go.recover_exception;
                Go.recover_exception = null;
                r;
            });
            if (__type__ == null) {
                var _p:AnyInterface = __type__ == null ? (null : AnyInterface) : __type__.__underlying__();
            } else if (Go.typeEquals((__type__ : GoString))) {
                var _p:GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                _v = makeString(_p);
            } else if (Go.typeEquals((__type__ : Error))) {
                var _p:Error = __type__ == null ? (null : Error) : __type__.__underlying__() == null ? (null : Error) : __type__ == null ? (null : Error) : __type__.__underlying__().value;
                _v = makeString(_p.error());
            } else {
                var _p:AnyInterface = __type__ == null ? null : __type__.__underlying__();
                throw Go.toInterface(_p);
            };
        };
    }
private function _doOp(_x:Value, _op:stdgo.go.token.Token.Token, _y:Value):Value {
        var __deferstack__:Array<Void -> Void> = [];
        var _z:Value = (null : Value);
        {
            var _a0 = (_z : Ref<Value>);
            __deferstack__.unshift(() -> _panicHandler(_a0));
        };
        try {
            if (_x == null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return unaryOp(_op, _y, ("0" : GoUInt));
                };
            };
            if (_op == ((39 : stdgo.go.token.Token.Token)) || _op == ((44 : stdgo.go.token.Token.Token)) || _op == ((40 : stdgo.go.token.Token.Token)) || _op == ((45 : stdgo.go.token.Token.Token)) || _op == ((41 : stdgo.go.token.Token.Token)) || _op == ((46 : stdgo.go.token.Token.Token))) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return makeBool(compare(_x, _op, _y));
                };
            } else if (_op == ((20 : stdgo.go.token.Token.Token)) || _op == ((21 : stdgo.go.token.Token.Token))) {
                var __tmp__ = int64Val(_y), _s:GoInt64 = __tmp__._0, _0:Bool = __tmp__._1;
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return shift(_x, _op, (_s : GoUInt));
                };
            } else {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return binaryOp(_x, _op, _y);
                };
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return _z;
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            Go.recover_exception = __exception__.native;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return _z;
        };
    }
function testFractions(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _test in _fracTests) {
            var _x:Value = _val(_test);
            var _q:Value = binaryOp(num(_x), (15 : stdgo.go.token.Token.Token), denom(_x));
            var _got:GoString = (_q.string() : GoString);
            var _want:GoString = (_x.string() : GoString);
            if (_got != (_want)) {
                _t.errorf(("%s: got quotient %s, want %s" : GoString), Go.toInterface(_x), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
    }
function testBytes(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _test in _bytesTests) {
            var _x:Value = _val(_test);
            var _bytes = bytes(_x);
            if ((sign(_x) == (0 : GoInt)) && (_bytes.length != (0 : GoInt))) {
                _t.errorf(("%s: got %v; want empty byte slice" : GoString), Go.toInterface(_test), Go.toInterface(_bytes));
            };
            {
                var _n:GoInt = (_bytes.length);
                if ((_n > (0 : GoInt)) && (_bytes[(_n - (1 : GoInt) : GoInt)] == (0 : GoUInt8))) {
                    _t.errorf(("%s: got %v; want no leading 0 byte" : GoString), Go.toInterface(_test), Go.toInterface(_bytes));
                };
            };
            {
                var _got:Value = makeFromBytes(_bytes);
                if (!_eql(_got, _x)) {
                    _t.errorf(("%s: got %s; want %s (bytes = %v)" : GoString), Go.toInterface(_test), Go.toInterface(_got), Go.toInterface(_x), Go.toInterface(_bytes));
                };
            };
        };
    }
function testUnknown(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _u:Value = makeUnknown();
        var _values:Slice<Value> = (new Slice<Value>(0, 0, _u, makeBool(false), makeString(Go.str()), makeInt64(("1" : GoInt64)), makeFromLiteral(("\'\'" : GoString), (8 : stdgo.go.token.Token.Token), ("0" : GoUInt)), makeFromLiteral(("-1234567890123456789012345678901234567890" : GoString), (5 : stdgo.go.token.Token.Token), ("0" : GoUInt)), makeFloat64((1.2 : GoFloat64)), makeImag(makeFloat64((1.2 : GoFloat64)))) : Slice<Value>);
        for (_0 => _val in _values) {
            var _0:Value = _val, _1:Value = _u, _y:Value = _1, _x:Value = _0;
            for (_i in 0 ... (new GoArray<GoInt>(...([].concat([for (i in 0 ... 2) (0 : GoInt)]))) : GoArray<GoInt>).length.toBasic()) {
                if (_i == ((1 : GoInt))) {
                    {
                        final __tmp__0 = _y;
                        final __tmp__1 = _x;
                        _x = __tmp__0;
                        _y = __tmp__1;
                    };
                };
                {
                    var _got:Value = binaryOp(_x, (12 : stdgo.go.token.Token.Token), _y);
                    if (_got.kind() != ((0 : Kind))) {
                        _t.errorf(("%s + %s: got %s; want %s" : GoString), Go.toInterface(_x), Go.toInterface(_y), Go.toInterface(_got), Go.toInterface(_u));
                    };
                };
                {
                    var _got:Bool = compare(_x, (39 : stdgo.go.token.Token.Token), _y);
                    if (_got) {
                        _t.errorf(("%s == %s: got true; want false" : GoString), Go.toInterface(_x), Go.toInterface(_y));
                    };
                };
            };
        };
    }
function testMakeFloat64(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _zero:GoFloat64 = (0 : GoFloat64);
        for (_0 => _arg in (new Slice<GoFloat64>(
0,
0,
(-3.4028234663852886e+38 : GoFloat64),
(-10 : GoFloat64),
(-0.5 : GoFloat64),
-_zero,
_zero,
(1 : GoFloat64),
(10 : GoFloat64),
(1.2345678987654321e-15 : GoFloat64),
(1e+10 : GoFloat64),
(1.7976931348623157e+308 : GoFloat64)) : Slice<GoFloat64>)) {
            var _val:Value = makeFloat64(_arg);
            if (_val.kind() != ((4 : Kind))) {
                _t.errorf(("%v: got kind = %d; want %d" : GoString), Go.toInterface(_arg), Go.toInterface(Go.asInterface(_val.kind())), Go.toInterface(Go.asInterface((4 : Kind))));
            };
            var __tmp__ = float64Val(_val), _got:GoFloat64 = __tmp__._0, _exact:Bool = __tmp__._1;
            if (!_exact || (stdgo.math.Math.float64bits(_got) != stdgo.math.Math.float64bits(_arg + (0 : GoFloat64)))) {
                _t.errorf(("%v: got %v (exact = %v)" : GoString), Go.toInterface(_arg), Go.toInterface(_got), Go.toInterface(_exact));
            };
        };
        for (_sign in 0 ... (new Slice<GoInt>(0, 0, (-1 : GoInt), (1 : GoInt)) : Slice<GoInt>).length.toBasic()) {
            var _arg:GoFloat64 = stdgo.math.Math.inf(_sign);
            var _val:Value = makeFloat64(_arg);
            if (_val.kind() != ((0 : Kind))) {
                _t.errorf(("%v: got kind = %d; want %d" : GoString), Go.toInterface(_arg), Go.toInterface(Go.asInterface(_val.kind())), Go.toInterface(Go.asInterface((0 : Kind))));
            };
        };
    }
private function _dup(_k:Kind, _x:AnyInterface):T_makeTestCase {
        return (new T_makeTestCase(_k, _x, _x) : T_makeTestCase);
    }
function testMake(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _test in (new Slice<T_makeTestCase>(
0,
0,
(new T_makeTestCase((1 : Kind), Go.toInterface(false), Go.toInterface(false)) : T_makeTestCase),
(new T_makeTestCase((2 : Kind), Go.toInterface(("hello" : GoString)), Go.toInterface(("hello" : GoString))) : T_makeTestCase),
(new T_makeTestCase((3 : Kind), Go.toInterface((("1" : GoInt64) : GoInt64)), Go.toInterface((("1" : GoInt64) : GoInt64))) : T_makeTestCase),
(new T_makeTestCase((3 : Kind), Go.toInterface(Go.asInterface(stdgo.math.big.Big.newInt(("10" : GoInt64)))), Go.toInterface((("10" : GoInt64) : GoInt64))) : T_makeTestCase),
(new T_makeTestCase((3 : Kind), Go.toInterface(Go.asInterface(({} : stdgo.math.big.Big.Int_).lsh(stdgo.math.big.Big.newInt(("1" : GoInt64)), ("62" : GoUInt)))), Go.toInterface((("4611686018427387904" : GoInt64) : GoInt64))) : T_makeTestCase),
(_dup((3 : Kind), Go.toInterface(Go.asInterface(({} : stdgo.math.big.Big.Int_).lsh(stdgo.math.big.Big.newInt(("1" : GoInt64)), ("63" : GoUInt))))) == null ? null : _dup((3 : Kind), Go.toInterface(Go.asInterface(({} : stdgo.math.big.Big.Int_).lsh(stdgo.math.big.Big.newInt(("1" : GoInt64)), ("63" : GoUInt))))).__copy__()),
(new T_makeTestCase((4 : Kind), Go.toInterface(Go.asInterface(stdgo.math.big.Big.newFloat((0 : GoFloat64)))), Go.toInterface(Go.asInterface(_floatVal0._val))) : T_makeTestCase),
(_dup((4 : Kind), Go.toInterface(Go.asInterface(stdgo.math.big.Big.newFloat((2 : GoFloat64))))) == null ? null : _dup((4 : Kind), Go.toInterface(Go.asInterface(stdgo.math.big.Big.newFloat((2 : GoFloat64))))).__copy__()),
(_dup((4 : Kind), Go.toInterface(Go.asInterface(stdgo.math.big.Big.newRat(("1" : GoInt64), ("3" : GoInt64))))) == null ? null : _dup((4 : Kind), Go.toInterface(Go.asInterface(stdgo.math.big.Big.newRat(("1" : GoInt64), ("3" : GoInt64))))).__copy__())) : Slice<T_makeTestCase>)) {
            var _val:Value = make(_test._arg);
            var _got:AnyInterface = val(_val);
            if ((_val.kind() != _test._kind) || (Go.toInterface(_got) != Go.toInterface(_test._want))) {
                _t.errorf(("got %v (%T, kind = %d); want %v (%T, kind = %d)" : GoString), _got, _got, Go.toInterface(Go.asInterface(_val.kind())), _test._want, _test._want, Go.toInterface(Go.asInterface(_test._kind)));
            };
        };
    }
function benchmarkStringAdd(_b:Ref<stdgo.testing.Testing.B>):Void {
        {
            var _size:GoInt = (1 : GoInt);
            Go.cfor(_size <= (65536 : GoInt), _size = _size * ((4 : GoInt)), {
                _b.run(stdgo.fmt.Fmt.sprint(Go.toInterface(_size)), function(_b:Ref<stdgo.testing.Testing.B>):Void {
                    _b.reportAllocs();
                    var _n:GoInt64 = (("0" : GoInt64) : GoInt64);
                    {
                        var _i:GoInt = (0 : GoInt);
                        Go.cfor(_i < _b.n, _i++, {
                            var _x:Value = makeString(stdgo.strings.Strings.repeat(("x" : GoString), (100 : GoInt)));
                            var _y:Value = _x;
                            {
                                var _j:GoInt = (0 : GoInt);
                                Go.cfor(_j < (_size - (1 : GoInt)), _j++, {
                                    _y = binaryOp(_y, (12 : stdgo.go.token.Token.Token), _x);
                                });
                            };
                            _n = _n + ((stringVal(_y).length : GoInt64));
                        });
                    };
                    if (_n != ((_b.n : GoInt64) * (_size : GoInt64) * (("100" : GoInt64) : GoInt64))) {
                        _b.fatalf(("bad string %d != %d" : GoString), Go.toInterface(_n), Go.toInterface(((_b.n : GoInt64) * (_size : GoInt64)) * ("100" : GoInt64)));
                    };
                });
            });
        };
    }
function testBitLen(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_0 => _test in _bitLenTests) {
            {
                var _got:GoInt = bitLen(makeInt64(_test._val));
                if (_got != (_test._want)) {
                    _t.errorf(("%v: got %v, want %v" : GoString), Go.toInterface(_test._val), Go.toInterface(_got), Go.toInterface(_test._want));
                };
            };
        };
    }
class T_unknownVal_asInterface {
    @:keep
    public function _implementsValue():Void __self__.value._implementsValue();
    @:keep
    public function exactString():GoString return __self__.value.exactString();
    @:keep
    public function string():GoString return __self__.value.string();
    @:keep
    public function kind():Kind return __self__.value.kind();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_unknownVal>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.constant.Constant.T_unknownVal_asInterface) class T_unknownVal_static_extension {
    @:keep
    static public function _implementsValue( _:T_unknownVal):Void {}
    @:keep
    static public function exactString( _x:T_unknownVal):GoString {
        return (_x.string() : GoString);
    }
    @:keep
    static public function string( _:T_unknownVal):GoString {
        return ("unknown" : GoString);
    }
    @:keep
    static public function kind( _:T_unknownVal):Kind {
        return (0 : Kind);
    }
}
class T_stringVal_asInterface {
    @:keep
    public function _implementsValue():Void __self__.value._implementsValue();
    @:keep
    public function exactString():GoString return __self__.value.exactString();
    /**
        // appendReverse appends to list all of x's subpieces, but in reverse,
        // and returns the result. Appending the reversal allows processing
        // the right side in a recursive call and the left side in a loop.
        // Because a chain like a + b + c + d + e is actually represented
        // as ((((a + b) + c) + d) + e), the left-side loop avoids deep recursion.
        // x must be locked.
    **/
    @:keep
    public function _appendReverse(_list:Slice<GoString>):Slice<GoString> return __self__.value._appendReverse(_list);
    /**
        // string constructs and returns the actual string literal value.
        // If x represents an addition, then it rewrites x to be a single
        // string, to speed future calls. This lazy construction avoids
        // building different string values for all subpieces of a large
        // concatenation. See golang.org/issue/23348.
    **/
    @:keep
    public function _string():GoString return __self__.value._string();
    /**
        // String returns a possibly shortened quoted form of the String value.
    **/
    @:keep
    public function string():GoString return __self__.value.string();
    @:keep
    public function kind():Kind return __self__.value.kind();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_stringVal>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.constant.Constant.T_stringVal_asInterface) class T_stringVal_static_extension {
    @:keep
    static public function _implementsValue( _:Ref<T_stringVal>):Void {}
    @:keep
    static public function exactString( _x:Ref<T_stringVal>):GoString {
        return stdgo.strconv.Strconv.quote(_x._string());
    }
    /**
        // appendReverse appends to list all of x's subpieces, but in reverse,
        // and returns the result. Appending the reversal allows processing
        // the right side in a recursive call and the left side in a loop.
        // Because a chain like a + b + c + d + e is actually represented
        // as ((((a + b) + c) + d) + e), the left-side loop avoids deep recursion.
        // x must be locked.
    **/
    @:keep
    static public function _appendReverse( _x:Ref<T_stringVal>, _list:Slice<GoString>):Slice<GoString> {
        var _y = _x;
        while (_y._r != null) {
            _y._r._mu.lock();
            _list = _y._r._appendReverse(_list);
            _y._r._mu.unlock();
            var _l = _y._l;
            if (_y != (_x)) {
                _y._mu.unlock();
            };
            _l._mu.lock();
            _y = _l;
        };
        var _s:GoString = _y._s;
        if (_y != (_x)) {
            _y._mu.unlock();
        };
        return (_list.__append__(_s));
    }
    /**
        // string constructs and returns the actual string literal value.
        // If x represents an addition, then it rewrites x to be a single
        // string, to speed future calls. This lazy construction avoids
        // building different string values for all subpieces of a large
        // concatenation. See golang.org/issue/23348.
    **/
    @:keep
    static public function _string( _x:Ref<T_stringVal>):GoString {
        _x._mu.lock();
        if (_x._l != null) {
            _x._s = stdgo.strings.Strings.join(_reverse(_x._appendReverse((null : Slice<GoString>))), Go.str());
            _x._l = null;
            _x._r = null;
        };
        var _s:GoString = _x._s;
        _x._mu.unlock();
        return _s;
    }
    /**
        // String returns a possibly shortened quoted form of the String value.
    **/
    @:keep
    static public function string( _x:Ref<T_stringVal>):GoString {
        {};
        var _s:GoString = stdgo.strconv.Strconv.quote(_x._string());
        if (stdgo.unicode.utf8.Utf8.runeCountInString(_s) > (72 : GoInt)) {
            var _i:GoInt = (0 : GoInt);
            {
                var _n:GoInt = (0 : GoInt);
                Go.cfor(_n < (69 : GoInt), _n++, {
                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString((_s.__slice__(_i) : GoString)), _0:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1;
                    _i = _i + (_size);
                });
            };
            _s = (_s.__slice__(0, _i) : GoString) + ("..." : GoString);
        };
        return _s;
    }
    @:keep
    static public function kind( _:Ref<T_stringVal>):Kind {
        return (2 : Kind);
    }
}
class T_intVal_asInterface {
    @:keep
    public function _implementsValue():Void __self__.value._implementsValue();
    @:keep
    public function exactString():GoString return __self__.value.exactString();
    @:keep
    public function string():GoString return __self__.value.string();
    @:keep
    public function kind():Kind return __self__.value.kind();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_intVal>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.constant.Constant.T_intVal_asInterface) class T_intVal_static_extension {
    @:keep
    static public function _implementsValue( _:T_intVal):Void {}
    @:keep
    static public function exactString( _x:T_intVal):GoString {
        return (_x.string() : GoString);
    }
    @:keep
    static public function string( _x:T_intVal):GoString {
        return (_x._val.string() : GoString);
    }
    @:keep
    static public function kind( _:T_intVal):Kind {
        return (3 : Kind);
    }
}
class T_ratVal_asInterface {
    @:keep
    public function _implementsValue():Void __self__.value._implementsValue();
    @:keep
    public function exactString():GoString return __self__.value.exactString();
    @:keep
    public function string():GoString return __self__.value.string();
    @:keep
    public function kind():Kind return __self__.value.kind();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_ratVal>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.constant.Constant.T_ratVal_asInterface) class T_ratVal_static_extension {
    @:keep
    static public function _implementsValue( _:T_ratVal):Void {}
    @:keep
    static public function exactString( _x:T_ratVal):GoString {
        var _r = _x._val;
        if (_r.isInt()) {
            return (_r.num().string() : GoString);
        };
        return (_r.string() : GoString);
    }
    @:keep
    static public function string( _x:T_ratVal):GoString {
        return (_rtof((_x == null ? null : _x.__copy__())).string() : GoString);
    }
    @:keep
    static public function kind( _:T_ratVal):Kind {
        return (4 : Kind);
    }
}
class T_floatVal_asInterface {
    @:keep
    public function _implementsValue():Void __self__.value._implementsValue();
    @:keep
    public function exactString():GoString return __self__.value.exactString();
    /**
        // String returns a decimal approximation of the Float value.
    **/
    @:keep
    public function string():GoString return __self__.value.string();
    @:keep
    public function kind():Kind return __self__.value.kind();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_floatVal>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.constant.Constant.T_floatVal_asInterface) class T_floatVal_static_extension {
    @:keep
    static public function _implementsValue( _:T_floatVal):Void {}
    @:keep
    static public function exactString( _x:T_floatVal):GoString {
        return _x._val.text((112 : GoUInt8), (0 : GoInt));
    }
    /**
        // String returns a decimal approximation of the Float value.
    **/
    @:keep
    static public function string( _x:T_floatVal):GoString {
        var _f = _x._val;
        if (_f.isInf()) {
            return (_f.string() : GoString);
        };
        {
            var __tmp__ = _f.float64(), _x:GoFloat64 = __tmp__._0, _0:stdgo.math.big.Big.Accuracy = __tmp__._1;
            if (((_f.sign() == (0 : GoInt)) == (_x == (0 : GoFloat64))) && !stdgo.math.Math.isInf(_x, (0 : GoInt))) {
                var _s:GoString = stdgo.fmt.Fmt.sprintf(("%.6g" : GoString), Go.toInterface(_x));
                if (!_f.isInt() && (stdgo.strings.Strings.indexByte(_s, (46 : GoUInt8)) < (0 : GoInt))) {
                    _s = stdgo.fmt.Fmt.sprintf(("%g" : GoString), Go.toInterface(_x));
                };
                return _s;
            };
        };
        var _mant:stdgo.math.big.Big.Float_ = ({} : stdgo.math.big.Big.Float_);
        var _exp:GoInt = _f.mantExp((_mant : Ref<stdgo.math.big.Big.Float_>));
        var __tmp__ = _mant.float64(), _m:GoFloat64 = __tmp__._0, _1:stdgo.math.big.Big.Accuracy = __tmp__._1;
        var _d:GoFloat64 = (_exp : GoFloat64) * (0.3010299956639812 : GoFloat64);
        var _e:GoInt64 = (_d : GoInt64);
        _m = _m * (stdgo.math.Math.pow((10 : GoFloat64), _d - (_e : GoFloat64)));
        {
            var _am:GoFloat64 = stdgo.math.Math.abs(_m);
            if (_am < (0.9999995 : GoFloat64)) {
                _m = _m * (10 : GoFloat64);
                _e--;
            } else if (_am >= (10 : GoFloat64)) {
                _m = _m / (10 : GoFloat64);
                _e++;
            };
        };
        return stdgo.fmt.Fmt.sprintf(("%.6ge%+d" : GoString), Go.toInterface(_m), Go.toInterface(_e));
    }
    @:keep
    static public function kind( _:T_floatVal):Kind {
        return (4 : Kind);
    }
}
class T_complexVal_asInterface {
    @:keep
    public function _implementsValue():Void __self__.value._implementsValue();
    @:keep
    public function exactString():GoString return __self__.value.exactString();
    @:keep
    public function string():GoString return __self__.value.string();
    @:keep
    public function kind():Kind return __self__.value.kind();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_complexVal>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.constant.Constant.T_complexVal_asInterface) class T_complexVal_static_extension {
    @:keep
    static public function _implementsValue( _:T_complexVal):Void {}
    @:keep
    static public function exactString( _x:T_complexVal):GoString {
        return stdgo.fmt.Fmt.sprintf(("(%s + %si)" : GoString), Go.toInterface(_x._re.exactString()), Go.toInterface(_x._im.exactString()));
    }
    @:keep
    static public function string( _x:T_complexVal):GoString {
        return stdgo.fmt.Fmt.sprintf(("(%s + %si)" : GoString), Go.toInterface(_x._re), Go.toInterface(_x._im));
    }
    @:keep
    static public function kind( _:T_complexVal):Kind {
        return (5 : Kind);
    }
}
class Kind_asInterface {
    @:keep
    public function string():GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Kind>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.constant.Constant.Kind_asInterface) class Kind_static_extension {
    @:keep
    static public function string( _i:Kind):GoString {
        if ((_i < (0 : Kind)) || (_i >= ((6 : GoInt) : Kind))) {
            return (("Kind(" : GoString) + stdgo.strconv.Strconv.formatInt((_i : GoInt64), (10 : GoInt))) + (")" : GoString);
        };
        return (("UnknownBoolStringIntFloatComplex" : GoString).__slice__(__Kind_index[(_i : GoInt)], __Kind_index[(_i + (1 : Kind) : GoInt)]) : GoString);
    }
}
class T_boolVal_asInterface {
    @:keep
    public function _implementsValue():Void __self__.value._implementsValue();
    @:keep
    public function exactString():GoString return __self__.value.exactString();
    @:keep
    public function string():GoString return __self__.value.string();
    @:keep
    public function kind():Kind return __self__.value.kind();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_boolVal>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.constant.Constant.T_boolVal_asInterface) class T_boolVal_static_extension {
    @:keep
    static public function _implementsValue( _:T_boolVal):Void {}
    @:keep
    static public function exactString( _x:T_boolVal):GoString {
        return (_x.string() : GoString);
    }
    @:keep
    static public function string( _x:T_boolVal):GoString {
        return stdgo.strconv.Strconv.formatBool((_x : Bool));
    }
    @:keep
    static public function kind( _:T_boolVal):Kind {
        return (1 : Kind);
    }
}
class T_int64Val_asInterface {
    @:keep
    public function _implementsValue():Void __self__.value._implementsValue();
    @:keep
    public function exactString():GoString return __self__.value.exactString();
    @:keep
    public function string():GoString return __self__.value.string();
    @:keep
    public function kind():Kind return __self__.value.kind();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_int64Val>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.constant.Constant.T_int64Val_asInterface) class T_int64Val_static_extension {
    @:keep
    static public function _implementsValue( _:T_int64Val):Void {}
    @:keep
    static public function exactString( _x:T_int64Val):GoString {
        return (_x.string() : GoString);
    }
    @:keep
    static public function string( _x:T_int64Val):GoString {
        return stdgo.strconv.Strconv.formatInt((_x : GoInt64), (10 : GoInt));
    }
    @:keep
    static public function kind( _:T_int64Val):Kind {
        return (3 : Kind);
    }
}
