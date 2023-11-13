package stdgo.go.constant;
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
var __Kind_index : stdgo.GoArray<stdgo.StdGoTypes.GoUInt8> = (new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>((0 : stdgo.StdGoTypes.GoUInt8), (7 : stdgo.StdGoTypes.GoUInt8), (11 : stdgo.StdGoTypes.GoUInt8), (17 : stdgo.StdGoTypes.GoUInt8), (20 : stdgo.StdGoTypes.GoUInt8), (25 : stdgo.StdGoTypes.GoUInt8), (32 : stdgo.StdGoTypes.GoUInt8)) : stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>);
/**
    
    
    
**/
var _floatVal0 : stdgo.go.constant.Constant.T_floatVal = (new T_floatVal(_newFloat()) : T_floatVal);
/**
    
    
    
**/
var _intTests : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(
28,
28,
("0_123 = 0123" : stdgo.GoString),
("0123_456 = 0123456" : stdgo.GoString),
("1_234 = 1234" : stdgo.GoString),
("1_234_567 = 1234567" : stdgo.GoString),
("0X_0 = 0" : stdgo.GoString),
("0X_1234 = 0x1234" : stdgo.GoString),
("0X_CAFE_f00d = 0xcafef00d" : stdgo.GoString),
("0o0 = 0" : stdgo.GoString),
("0o1234 = 01234" : stdgo.GoString),
("0o01234567 = 01234567" : stdgo.GoString),
("0O0 = 0" : stdgo.GoString),
("0O1234 = 01234" : stdgo.GoString),
("0O01234567 = 01234567" : stdgo.GoString),
("0o_0 = 0" : stdgo.GoString),
("0o_1234 = 01234" : stdgo.GoString),
("0o0123_4567 = 01234567" : stdgo.GoString),
("0O_0 = 0" : stdgo.GoString),
("0O_1234 = 01234" : stdgo.GoString),
("0O0123_4567 = 01234567" : stdgo.GoString),
("0b0 = 0" : stdgo.GoString),
("0b1011 = 0xb" : stdgo.GoString),
("0b00101101 = 0x2d" : stdgo.GoString),
("0B0 = 0" : stdgo.GoString),
("0B1011 = 0xb" : stdgo.GoString),
("0B00101101 = 0x2d" : stdgo.GoString),
("0b_0 = 0" : stdgo.GoString),
("0b10_11 = 0xb" : stdgo.GoString),
("0b_0010_1101 = 0x2d" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
/**
    // The RHS operand may be a floating-point quotient n/d of two integer values n and d.
    
    
**/
var _floatTests : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(
36,
36,
("1_2_3. = 123." : stdgo.GoString),
("0_123. = 123." : stdgo.GoString),
("0_0e0 = 0." : stdgo.GoString),
("1_2_3e0 = 123." : stdgo.GoString),
("0_123e0 = 123." : stdgo.GoString),
("0e-0_0 = 0." : stdgo.GoString),
("1_2_3E+0 = 123." : stdgo.GoString),
("0123E1_2_3 = 123e123" : stdgo.GoString),
("0.e+1 = 0." : stdgo.GoString),
("123.E-1_0 = 123e-10" : stdgo.GoString),
("01_23.e123 = 123e123" : stdgo.GoString),
(".0e-1 = .0" : stdgo.GoString),
(".123E+10 = .123e10" : stdgo.GoString),
(".0123E123 = .0123e123" : stdgo.GoString),
("1_2_3.123 = 123.123" : stdgo.GoString),
("0123.01_23 = 123.0123" : stdgo.GoString),
("1e-1000000000 = 0" : stdgo.GoString),
("1e+1000000000 = ?" : stdgo.GoString),
("6e5518446744 = ?" : stdgo.GoString),
("-6e5518446744 = ?" : stdgo.GoString),
("0x0.p+0 = 0." : stdgo.GoString),
("0Xdeadcafe.p-10 = 0xdeadcafe/1024" : stdgo.GoString),
("0x1234.P84 = 0x1234000000000000000000000" : stdgo.GoString),
("0x.1p-0 = 1/16" : stdgo.GoString),
("0X.deadcafep4 = 0xdeadcafe/0x10000000" : stdgo.GoString),
("0x.1234P+12 = 0x1234/0x10" : stdgo.GoString),
("0x0p0 = 0." : stdgo.GoString),
("0Xdeadcafep+1 = 0x1bd5b95fc" : stdgo.GoString),
("0x1234P-10 = 0x1234/1024" : stdgo.GoString),
("0x0.0p0 = 0." : stdgo.GoString),
("0Xdead.cafep+1 = 0x1bd5b95fc/0x10000" : stdgo.GoString),
("0x12.34P-10 = 0x1234/0x40000" : stdgo.GoString),
("0Xdead_cafep+1 = 0xdeadcafep+1" : stdgo.GoString),
("0x_1234P-10 = 0x1234p-10" : stdgo.GoString),
("0X_dead_cafe.p-10 = 0xdeadcafe.p-10" : stdgo.GoString),
("0x12_34.P1_2_3 = 0x1234.p123" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
/**
    
    
    
**/
var _imagTests : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(
12,
12,
("1_234i = 1234i" : stdgo.GoString),
("1_234_567i = 1234567i" : stdgo.GoString),
("0.i = 0i" : stdgo.GoString),
("123.i = 123i" : stdgo.GoString),
("0123.i = 123i" : stdgo.GoString),
("0.e+1i = 0i" : stdgo.GoString),
("123.E-1_0i = 123e-10i" : stdgo.GoString),
("01_23.e123i = 123e123i" : stdgo.GoString),
("1e-1000000000i = 0i" : stdgo.GoString),
("1e+1000000000i = ?" : stdgo.GoString),
("6e5518446744i = ?" : stdgo.GoString),
("-6e5518446744i = ?" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
/**
    
    
    
**/
var _opTests : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(
105,
105,
("+ 0 = 0" : stdgo.GoString),
("+ ? = ?" : stdgo.GoString),
("- 1 = -1" : stdgo.GoString),
("- ? = ?" : stdgo.GoString),
("^ 0 = -1" : stdgo.GoString),
("^ ? = ?" : stdgo.GoString),
("! true = false" : stdgo.GoString),
("! false = true" : stdgo.GoString),
("! ? = ?" : stdgo.GoString),
("\"\" + \"\" = \"\"" : stdgo.GoString),
("\"foo\" + \"\" = \"foo\"" : stdgo.GoString),
("\"\" + \"bar\" = \"bar\"" : stdgo.GoString),
("\"foo\" + \"bar\" = \"foobar\"" : stdgo.GoString),
("0 + 0 = 0" : stdgo.GoString),
("0 + 0.1 = 0.1" : stdgo.GoString),
("0 + 0.1i = 0.1i" : stdgo.GoString),
("0.1 + 0.9 = 1" : stdgo.GoString),
("1e100 + 1e100 = 2e100" : stdgo.GoString),
("? + 0 = ?" : stdgo.GoString),
("0 + ? = ?" : stdgo.GoString),
("0 - 0 = 0" : stdgo.GoString),
("0 - 0.1 = -0.1" : stdgo.GoString),
("0 - 0.1i = -0.1i" : stdgo.GoString),
("1e100 - 1e100 = 0" : stdgo.GoString),
("? - 0 = ?" : stdgo.GoString),
("0 - ? = ?" : stdgo.GoString),
("0 * 0 = 0" : stdgo.GoString),
("1 * 0.1 = 0.1" : stdgo.GoString),
("1 * 0.1i = 0.1i" : stdgo.GoString),
("1i * 1i = -1" : stdgo.GoString),
("? * 0 = ?" : stdgo.GoString),
("0 * ? = ?" : stdgo.GoString),
("0 * 1e+1000000000 = ?" : stdgo.GoString),
("0 / 0 = \"division_by_zero\"" : stdgo.GoString),
("10 / 2 = 5" : stdgo.GoString),
("5 / 3 = 5/3" : stdgo.GoString),
("5i / 3i = 5/3" : stdgo.GoString),
("? / 0 = ?" : stdgo.GoString),
("0 / ? = ?" : stdgo.GoString),
("0 * 1e+1000000000i = ?" : stdgo.GoString),
("0 % 0 = \"runtime_error:_integer_divide_by_zero\"" : stdgo.GoString),
("10 % 3 = 1" : stdgo.GoString),
("? % 0 = ?" : stdgo.GoString),
("0 % ? = ?" : stdgo.GoString),
("0 & 0 = 0" : stdgo.GoString),
("12345 & 0 = 0" : stdgo.GoString),
("0xff & 0xf = 0xf" : stdgo.GoString),
("? & 0 = ?" : stdgo.GoString),
("0 & ? = ?" : stdgo.GoString),
("0 | 0 = 0" : stdgo.GoString),
("12345 | 0 = 12345" : stdgo.GoString),
("0xb | 0xa0 = 0xab" : stdgo.GoString),
("? | 0 = ?" : stdgo.GoString),
("0 | ? = ?" : stdgo.GoString),
("0 ^ 0 = 0" : stdgo.GoString),
("1 ^ -1 = -2" : stdgo.GoString),
("? ^ 0 = ?" : stdgo.GoString),
("0 ^ ? = ?" : stdgo.GoString),
("0 &^ 0 = 0" : stdgo.GoString),
("0xf &^ 1 = 0xe" : stdgo.GoString),
("1 &^ 0xf = 0" : stdgo.GoString),
("0 << 0 = 0" : stdgo.GoString),
("1 << 10 = 1024" : stdgo.GoString),
("0 >> 0 = 0" : stdgo.GoString),
("1024 >> 10 == 1" : stdgo.GoString),
("? << 0 == ?" : stdgo.GoString),
("? >> 10 == ?" : stdgo.GoString),
("false == false = true" : stdgo.GoString),
("false == true = false" : stdgo.GoString),
("true == false = false" : stdgo.GoString),
("true == true = true" : stdgo.GoString),
("false != false = false" : stdgo.GoString),
("false != true = true" : stdgo.GoString),
("true != false = true" : stdgo.GoString),
("true != true = false" : stdgo.GoString),
("\"foo\" == \"bar\" = false" : stdgo.GoString),
("\"foo\" != \"bar\" = true" : stdgo.GoString),
("\"foo\" < \"bar\" = false" : stdgo.GoString),
("\"foo\" <= \"bar\" = false" : stdgo.GoString),
("\"foo\" > \"bar\" = true" : stdgo.GoString),
("\"foo\" >= \"bar\" = true" : stdgo.GoString),
("0 == 0 = true" : stdgo.GoString),
("0 != 0 = false" : stdgo.GoString),
("0 < 10 = true" : stdgo.GoString),
("10 <= 10 = true" : stdgo.GoString),
("0 > 10 = false" : stdgo.GoString),
("10 >= 10 = true" : stdgo.GoString),
("1/123456789 == 1/123456789 == true" : stdgo.GoString),
("1/123456789 != 1/123456789 == false" : stdgo.GoString),
("1/123456789 < 1/123456788 == true" : stdgo.GoString),
("1/123456788 <= 1/123456789 == false" : stdgo.GoString),
("0.11 > 0.11 = false" : stdgo.GoString),
("0.11 >= 0.11 = true" : stdgo.GoString),
("? == 0 = false" : stdgo.GoString),
("? != 0 = false" : stdgo.GoString),
("? < 10 = false" : stdgo.GoString),
("? <= 10 = false" : stdgo.GoString),
("? > 10 = false" : stdgo.GoString),
("? >= 10 = false" : stdgo.GoString),
("0 == ? = false" : stdgo.GoString),
("0 != ? = false" : stdgo.GoString),
("0 < ? = false" : stdgo.GoString),
("10 <= ? = false" : stdgo.GoString),
("0 > ? = false" : stdgo.GoString),
("10 >= ? = false" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
/**
    
    
    
**/
var _xxx : stdgo.GoString = stdgo.strings.Strings.repeat(("x" : stdgo.GoString), (68 : stdgo.StdGoTypes.GoInt));
/**
    
    
    
**/
var _issue14262 : stdgo.GoString = ("\"بموجب الشروط التالية نسب المصنف — يجب عليك أن تنسب العمل بالطريقة التي تحددها المؤلف أو المرخص (ولكن ليس بأي حال من الأحوال أن توحي وتقترح بتحول أو استخدامك للعمل).  المشاركة على قدم المساواة — إذا كنت يعدل ، والتغيير ، أو الاستفادة من هذا العمل ، قد ينتج عن توزيع العمل إلا في ظل تشابه او تطابق فى واحد لهذا الترخيص.\"" : stdgo.GoString);
/**
    
    
    
**/
var _stringTests : stdgo.Slice<T__struct_1> = (new stdgo.Slice<T__struct_1>(
33,
33,
({ _input : stdgo.Go.str(), _short : ("unknown" : stdgo.GoString), _exact : ("unknown" : stdgo.GoString) } : T__struct_1),
({ _input : ("0x" : stdgo.GoString), _short : ("unknown" : stdgo.GoString), _exact : ("unknown" : stdgo.GoString) } : T__struct_1),
({ _input : ("\'" : stdgo.GoString), _short : ("unknown" : stdgo.GoString), _exact : ("unknown" : stdgo.GoString) } : T__struct_1),
({ _input : ("1f0" : stdgo.GoString), _short : ("unknown" : stdgo.GoString), _exact : ("unknown" : stdgo.GoString) } : T__struct_1),
({ _input : ("unknown" : stdgo.GoString), _short : ("unknown" : stdgo.GoString), _exact : ("unknown" : stdgo.GoString) } : T__struct_1),
({ _input : ("true" : stdgo.GoString), _short : ("true" : stdgo.GoString), _exact : ("true" : stdgo.GoString) } : T__struct_1),
({ _input : ("false" : stdgo.GoString), _short : ("false" : stdgo.GoString), _exact : ("false" : stdgo.GoString) } : T__struct_1),
({ _input : ("\"\"" : stdgo.GoString), _short : ("\"\"" : stdgo.GoString), _exact : ("\"\"" : stdgo.GoString) } : T__struct_1),
({ _input : ("\"foo\"" : stdgo.GoString), _short : ("\"foo\"" : stdgo.GoString), _exact : ("\"foo\"" : stdgo.GoString) } : T__struct_1),
({ _input : (("\"" : stdgo.GoString) + _xxx) + ("xx\"" : stdgo.GoString), _short : (("\"" : stdgo.GoString) + _xxx) + ("xx\"" : stdgo.GoString), _exact : (("\"" : stdgo.GoString) + _xxx) + ("xx\"" : stdgo.GoString) } : T__struct_1),
({ _input : (("\"" : stdgo.GoString) + _xxx) + ("xxx\"" : stdgo.GoString), _short : (("\"" : stdgo.GoString) + _xxx) + ("..." : stdgo.GoString), _exact : (("\"" : stdgo.GoString) + _xxx) + ("xxx\"" : stdgo.GoString) } : T__struct_1),
({ _input : ((("\"" : stdgo.GoString) + _xxx) + _xxx) + ("xxx\"" : stdgo.GoString), _short : (("\"" : stdgo.GoString) + _xxx) + ("..." : stdgo.GoString), _exact : ((("\"" : stdgo.GoString) + _xxx) + _xxx) + ("xxx\"" : stdgo.GoString) } : T__struct_1),
({ _input : _issue14262, _short : ("\"بموجب الشروط التالية نسب المصنف — يجب عليك أن تنسب العمل بالطريقة ال..." : stdgo.GoString), _exact : _issue14262 } : T__struct_1),
({ _input : ("0" : stdgo.GoString), _short : ("0" : stdgo.GoString), _exact : ("0" : stdgo.GoString) } : T__struct_1),
({ _input : ("-1" : stdgo.GoString), _short : ("-1" : stdgo.GoString), _exact : ("-1" : stdgo.GoString) } : T__struct_1),
({ _input : ("12345" : stdgo.GoString), _short : ("12345" : stdgo.GoString), _exact : ("12345" : stdgo.GoString) } : T__struct_1),
({ _input : ("-12345678901234567890" : stdgo.GoString), _short : ("-12345678901234567890" : stdgo.GoString), _exact : ("-12345678901234567890" : stdgo.GoString) } : T__struct_1),
({ _input : ("12345678901234567890" : stdgo.GoString), _short : ("12345678901234567890" : stdgo.GoString), _exact : ("12345678901234567890" : stdgo.GoString) } : T__struct_1),
({ _input : ("0." : stdgo.GoString), _short : ("0" : stdgo.GoString), _exact : ("0" : stdgo.GoString) } : T__struct_1),
({ _input : ("-0.0" : stdgo.GoString), _short : ("0" : stdgo.GoString), _exact : ("0" : stdgo.GoString) } : T__struct_1),
({ _input : ("10.0" : stdgo.GoString), _short : ("10" : stdgo.GoString), _exact : ("10" : stdgo.GoString) } : T__struct_1),
({ _input : ("2.1" : stdgo.GoString), _short : ("2.1" : stdgo.GoString), _exact : ("21/10" : stdgo.GoString) } : T__struct_1),
({ _input : ("-2.1" : stdgo.GoString), _short : ("-2.1" : stdgo.GoString), _exact : ("-21/10" : stdgo.GoString) } : T__struct_1),
({ _input : ("1e9999" : stdgo.GoString), _short : ("1e+9999" : stdgo.GoString), _exact : ("0x.f8d4a9da224650a8cb2959e10d985ad92adbd44c62917e608b1f24c0e1b76b6f61edffeb15c135a4b601637315f7662f325f82325422b244286a07663c9415d2p+33216" : stdgo.GoString) } : T__struct_1),
({ _input : ("1e-9999" : stdgo.GoString), _short : ("1e-9999" : stdgo.GoString), _exact : ("0x.83b01ba6d8c0425eec1b21e96f7742d63c2653ed0a024cf8a2f9686df578d7b07d7a83d84df6a2ec70a921d1f6cd5574893a7eda4d28ee719e13a5dce2700759p-33215" : stdgo.GoString) } : T__struct_1),
({ _input : ("2.71828182845904523536028747135266249775724709369995957496696763" : stdgo.GoString), _short : ("2.71828" : stdgo.GoString), _exact : ("271828182845904523536028747135266249775724709369995957496696763/100000000000000000000000000000000000000000000000000000000000000" : stdgo.GoString) } : T__struct_1),
({ _input : ("0e9999999999" : stdgo.GoString), _short : ("0" : stdgo.GoString), _exact : ("0" : stdgo.GoString) } : T__struct_1),
({ _input : ("-6e-1886451601" : stdgo.GoString), _short : ("0" : stdgo.GoString), _exact : ("0" : stdgo.GoString) } : T__struct_1),
({ _input : ("0i" : stdgo.GoString), _short : ("(0 + 0i)" : stdgo.GoString), _exact : ("(0 + 0i)" : stdgo.GoString) } : T__struct_1),
({ _input : ("-0i" : stdgo.GoString), _short : ("(0 + 0i)" : stdgo.GoString), _exact : ("(0 + 0i)" : stdgo.GoString) } : T__struct_1),
({ _input : ("10i" : stdgo.GoString), _short : ("(0 + 10i)" : stdgo.GoString), _exact : ("(0 + 10i)" : stdgo.GoString) } : T__struct_1),
({ _input : ("-10i" : stdgo.GoString), _short : ("(0 + -10i)" : stdgo.GoString), _exact : ("(0 + -10i)" : stdgo.GoString) } : T__struct_1),
({ _input : ("1e9999i" : stdgo.GoString), _short : ("(0 + 1e+9999i)" : stdgo.GoString), _exact : ("(0 + 0x.f8d4a9da224650a8cb2959e10d985ad92adbd44c62917e608b1f24c0e1b76b6f61edffeb15c135a4b601637315f7662f325f82325422b244286a07663c9415d2p+33216i)" : stdgo.GoString) } : T__struct_1)) : stdgo.Slice<T__struct_1>);
/**
    
    
    
**/
var _optab : stdgo.GoMap<stdgo.GoString, stdgo.go.token.Token.Token> = ({
        final x = new stdgo.GoMap.GoStringMap<stdgo.go.token.Token.Token>();
        x.__defaultValue__ = () -> ((0 : stdgo.StdGoTypes.GoInt) : stdgo.go.token.Token.Token);
        @:mergeBlock {
            x.set(("!" : stdgo.GoString), (43 : stdgo.go.token.Token.Token));
            x.set(("+" : stdgo.GoString), (12 : stdgo.go.token.Token.Token));
            x.set(("-" : stdgo.GoString), (13 : stdgo.go.token.Token.Token));
            x.set(("*" : stdgo.GoString), (14 : stdgo.go.token.Token.Token));
            x.set(("/" : stdgo.GoString), (15 : stdgo.go.token.Token.Token));
            x.set(("%" : stdgo.GoString), (16 : stdgo.go.token.Token.Token));
            x.set(("<<" : stdgo.GoString), (20 : stdgo.go.token.Token.Token));
            x.set((">>" : stdgo.GoString), (21 : stdgo.go.token.Token.Token));
            x.set(("&" : stdgo.GoString), (17 : stdgo.go.token.Token.Token));
            x.set(("|" : stdgo.GoString), (18 : stdgo.go.token.Token.Token));
            x.set(("^" : stdgo.GoString), (19 : stdgo.go.token.Token.Token));
            x.set(("&^" : stdgo.GoString), (22 : stdgo.go.token.Token.Token));
            x.set(("==" : stdgo.GoString), (39 : stdgo.go.token.Token.Token));
            x.set(("!=" : stdgo.GoString), (44 : stdgo.go.token.Token.Token));
            x.set(("<" : stdgo.GoString), (40 : stdgo.go.token.Token.Token));
            x.set(("<=" : stdgo.GoString), (45 : stdgo.go.token.Token.Token));
            x.set((">" : stdgo.GoString), (41 : stdgo.go.token.Token.Token));
            x.set((">=" : stdgo.GoString), (46 : stdgo.go.token.Token.Token));
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.go.token.Token.Token>);
/**
    
    
    
**/
var _fracTests : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(
9,
9,
("0" : stdgo.GoString),
("1" : stdgo.GoString),
("-1" : stdgo.GoString),
("1.2" : stdgo.GoString),
("-0.991" : stdgo.GoString),
("2.718281828" : stdgo.GoString),
("3.14159265358979323e-10" : stdgo.GoString),
("1e100" : stdgo.GoString),
("1e1000" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
/**
    
    
    
**/
var _bytesTests : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(4, 4, ("0" : stdgo.GoString), ("1" : stdgo.GoString), ("123456789" : stdgo.GoString), ("123456789012345678901234567890123456789012345678901234567890" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
/**
    
    
    
**/
var _bitLenTests : stdgo.Slice<T__struct_2> = (new stdgo.Slice<T__struct_2>(7, 7, ({ _val : (0i64 : stdgo.StdGoTypes.GoInt64), _want : (0 : stdgo.StdGoTypes.GoInt) } : T__struct_2), ({ _val : (1i64 : stdgo.StdGoTypes.GoInt64), _want : (1 : stdgo.StdGoTypes.GoInt) } : T__struct_2), ({ _val : (-16i64 : stdgo.StdGoTypes.GoInt64), _want : (5 : stdgo.StdGoTypes.GoInt) } : T__struct_2), ({ _val : (2305843009213693952i64 : stdgo.StdGoTypes.GoInt64), _want : (62 : stdgo.StdGoTypes.GoInt) } : T__struct_2), ({ _val : (4611686018427387904i64 : stdgo.StdGoTypes.GoInt64), _want : (63 : stdgo.StdGoTypes.GoInt) } : T__struct_2), ({ _val : (-4611686018427387904i64 : stdgo.StdGoTypes.GoInt64), _want : (63 : stdgo.StdGoTypes.GoInt) } : T__struct_2), ({ _val : (-9223372036854775808i64 : stdgo.StdGoTypes.GoInt64), _want : (64 : stdgo.StdGoTypes.GoInt) } : T__struct_2)) : stdgo.Slice<T__struct_2>);
/**
    
    
    
**/
final __Kind_name : stdgo.GoString = ("UnknownBoolStringIntFloatComplex" : stdgo.GoString);
/**
    // unknown values
    
    
**/
final unknown : stdgo.go.constant.Constant.Kind = (5 : stdgo.go.constant.Constant.Kind);
/**
    // non-numeric values
    
    
**/
final bool_ = (5 : stdgo.go.constant.Constant.Kind);
/**
    
    
    
**/
final string = (5 : stdgo.go.constant.Constant.Kind);
/**
    // numeric values
    
    
**/
final int_ = (5 : stdgo.go.constant.Constant.Kind);
/**
    
    
    
**/
final float_ = (5 : stdgo.go.constant.Constant.Kind);
/**
    
    
    
**/
final complex = (5 : stdgo.go.constant.Constant.Kind);
/**
    // Maximum supported mantissa precision.
    // The spec requires at least 256 bits; typical implementations use 512 bits.
    
    
**/
final _prec : stdgo.StdGoTypes.GoUInt64 = (512i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // Permit fractions with component sizes up to maxExp
    // before switching to using floating-point numbers.
    
    
**/
final _maxExp : stdgo.StdGoTypes.GoUInt64 = (4096i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
var _emptyString = ({} : stdgo.go.constant.Constant.T_stringVal);
/**
    // Compute the size of a Word in bytes.
    
    
**/
final __m : stdgo.math.big.Big.Word = (-1u32 : stdgo.math.big.Big.Word);
/**
    
    
    
**/
final __log : stdgo.math.big.Big.Word = (2u32 : stdgo.math.big.Big.Word);
/**
    
    
    
**/
final _wordSize : stdgo.StdGoTypes.GoUInt64 = (4i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // A Value represents the value of a Go constant.
    
    
**/
typedef Value = stdgo.StdGoTypes.StructType & {
    /**
        // Kind returns the value kind.
        
        
    **/
    public dynamic function kind():Kind;
    /**
        // String returns a short, quoted (human-readable) form of the value.
        // For numeric values, the result may be an approximation;
        // for String values the result may be a shortened string.
        // Use ExactString for a string representing a value exactly.
        
        
    **/
    public dynamic function string():stdgo.GoString;
    /**
        // ExactString returns an exact, quoted (human-readable) form of the value.
        // If the Value is of Kind String, use StringVal to obtain the unquoted string.
        
        
    **/
    public dynamic function exactString():stdgo.GoString;
    /**
        // Prevent external implementations.
        
        
    **/
    public dynamic function _implementsValue():Void;
};
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.go.constant.Constant.T_unknownVal_static_extension) class T_unknownVal {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
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
    public var _s : stdgo.GoString = "";
    public var _l : stdgo.StdGoTypes.Ref<stdgo.go.constant.Constant.T_stringVal> = (null : stdgo.StdGoTypes.Ref<stdgo.go.constant.Constant.T_stringVal>);
    public var _r : stdgo.StdGoTypes.Ref<stdgo.go.constant.Constant.T_stringVal> = (null : stdgo.StdGoTypes.Ref<stdgo.go.constant.Constant.T_stringVal>);
    public function new(?_mu:stdgo.sync.Sync.Mutex, ?_s:stdgo.GoString, ?_l:stdgo.StdGoTypes.Ref<stdgo.go.constant.Constant.T_stringVal>, ?_r:stdgo.StdGoTypes.Ref<stdgo.go.constant.Constant.T_stringVal>) {
        if (_mu != null) this._mu = _mu;
        if (_s != null) this._s = _s;
        if (_l != null) this._l = _l;
        if (_r != null) this._r = _r;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_stringVal(_mu, _s, _l, _r);
    }
}
/**
    
    
    // Int values not representable as an int64
**/
@:structInit @:private @:using(stdgo.go.constant.Constant.T_intVal_static_extension) class T_intVal {
    public var _val : stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_> = (null : stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_>);
    public function new(?_val:stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_>) {
        if (_val != null) this._val = _val;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_intVal(_val);
    }
}
/**
    
    
    // Float values representable as a fraction
**/
@:structInit @:private @:using(stdgo.go.constant.Constant.T_ratVal_static_extension) class T_ratVal {
    public var _val : stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Rat> = (null : stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Rat>);
    public function new(?_val:stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Rat>) {
        if (_val != null) this._val = _val;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ratVal(_val);
    }
}
/**
    
    
    // Float values not representable as a fraction
**/
@:structInit @:private @:using(stdgo.go.constant.Constant.T_floatVal_static_extension) class T_floatVal {
    public var _val : stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Float_> = (null : stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Float_>);
    public function new(?_val:stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Float_>) {
        if (_val != null) this._val = _val;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_floatVal(_val);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.go.constant.Constant.T_complexVal_static_extension) class T_complexVal {
    public var _re : stdgo.go.constant.Constant.Value = (null : stdgo.go.constant.Constant.Value);
    public var _im : stdgo.go.constant.Constant.Value = (null : stdgo.go.constant.Constant.Value);
    public function new(?_re:stdgo.go.constant.Constant.Value, ?_im:stdgo.go.constant.Constant.Value) {
        if (_re != null) this._re = _re;
        if (_im != null) this._im = _im;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_complexVal(_re, _im);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_makeTestCase {
    public var _kind : stdgo.go.constant.Constant.Kind = ((0 : stdgo.StdGoTypes.GoInt) : stdgo.go.constant.Constant.Kind);
    public var _arg : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public var _want : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public function new(?_kind:stdgo.go.constant.Constant.Kind, ?_arg:stdgo.StdGoTypes.AnyInterface, ?_want:stdgo.StdGoTypes.AnyInterface) {
        if (_kind != null) this._kind = _kind;
        if (_arg != null) this._arg = _arg;
        if (_want != null) this._want = _want;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_makeTestCase(_kind, _arg, _want);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.constant.Constant.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.go.constant.Constant.T__struct_0_static_extension) typedef T__struct_0 = {};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.constant.Constant.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo.go.constant.Constant.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _input : stdgo.GoString;
    public var _short : stdgo.GoString;
    public var _exact : stdgo.GoString;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_2>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.constant.Constant.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo.go.constant.Constant.T__struct_2_static_extension) typedef T__struct_2 = {
    public var _val : stdgo.StdGoTypes.GoInt64;
    public var _want : stdgo.StdGoTypes.GoInt;
};
/**
    // Kind specifies the kind of value represented by a Value.
**/
@:named @:using(stdgo.go.constant.Constant.Kind_static_extension) typedef Kind = stdgo.StdGoTypes.GoInt;
@:named @:using(stdgo.go.constant.Constant.T_boolVal_static_extension) typedef T_boolVal = Bool;
@:named @:using(stdgo.go.constant.Constant.T_int64Val_static_extension) typedef T_int64Val = stdgo.StdGoTypes.GoInt64;
/**
    // reverse reverses x in place and returns it.
**/
function _reverse(_x:stdgo.Slice<stdgo.GoString>):stdgo.Slice<stdgo.GoString> {
        var _n:stdgo.StdGoTypes.GoInt = (_x.length);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor((_i + _i) < _n, _i++, {
                {
                    final __tmp__0 = _x[((_n - (1 : stdgo.StdGoTypes.GoInt)) - _i : stdgo.StdGoTypes.GoInt)];
                    final __tmp__1 = _x[(_i : stdgo.StdGoTypes.GoInt)];
                    _x[(_i : stdgo.StdGoTypes.GoInt)] = __tmp__0;
                    _x[((_n - (1 : stdgo.StdGoTypes.GoInt)) - _i : stdgo.StdGoTypes.GoInt)] = __tmp__1;
                };
            });
        };
        return _x;
    }
function _newInt():stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_> {
        return (stdgo.Go.setRef(({} : stdgo.math.big.Big.Int_)) : stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_>);
    }
function _newRat():stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Rat> {
        return (stdgo.Go.setRef(({} : stdgo.math.big.Big.Rat)) : stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Rat>);
    }
function _newFloat():stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Float_> {
        return (stdgo.Go.setRef(({} : stdgo.math.big.Big.Float_)) : stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Float_>).setPrec((512u32 : stdgo.StdGoTypes.GoUInt));
    }
function _i64toi(_x:T_int64Val):T_intVal {
        return (new T_intVal(_newInt().setInt64((_x : stdgo.StdGoTypes.GoInt64))) : T_intVal);
    }
function _i64tor(_x:T_int64Val):T_ratVal {
        return (new T_ratVal(_newRat().setInt64((_x : stdgo.StdGoTypes.GoInt64))) : T_ratVal);
    }
function _i64tof(_x:T_int64Val):T_floatVal {
        return (new T_floatVal(_newFloat().setInt64((_x : stdgo.StdGoTypes.GoInt64))) : T_floatVal);
    }
function _itor(_x:T_intVal):T_ratVal {
        return (new T_ratVal(_newRat().setInt(_x._val)) : T_ratVal);
    }
function _itof(_x:T_intVal):T_floatVal {
        return (new T_floatVal(_newFloat().setInt(_x._val)) : T_floatVal);
    }
function _rtof(_x:T_ratVal):T_floatVal {
        return (new T_floatVal(_newFloat().setRat(_x._val)) : T_floatVal);
    }
function _vtoc(_x:Value):T_complexVal {
        return (new T_complexVal(_x, stdgo.Go.asInterface(((0i64 : stdgo.go.constant.Constant.T_int64Val) : T_int64Val))) : T_complexVal);
    }
function _makeInt(_x:stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_>):Value {
        if (_x.isInt64()) {
            return stdgo.Go.asInterface((_x.int64() : T_int64Val));
        };
        return stdgo.Go.asInterface((new T_intVal(_x) : T_intVal));
    }
function _makeRat(_x:stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Rat>):Value {
        var _a = _x.num();
        var _b = _x.denom();
        if (_smallInt(_a) && _smallInt(_b)) {
            return stdgo.Go.asInterface((new T_ratVal(_x) : T_ratVal));
        };
        return stdgo.Go.asInterface((new T_floatVal(_newFloat().setRat(_x)) : T_floatVal));
    }
function _makeFloat(_x:stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Float_>):Value {
        if (_x.sign() == ((0 : stdgo.StdGoTypes.GoInt))) {
            return stdgo.Go.asInterface(_floatVal0);
        };
        if (_x.isInf()) {
            return stdgo.Go.asInterface((new T_unknownVal() : T_unknownVal));
        };
        return stdgo.Go.asInterface((new T_floatVal(_x) : T_floatVal));
    }
function _makeComplex(_re:Value, _im:Value):Value {
        if ((_re.kind() == (0 : stdgo.go.constant.Constant.Kind)) || (_im.kind() == (0 : stdgo.go.constant.Constant.Kind))) {
            return stdgo.Go.asInterface((new T_unknownVal() : T_unknownVal));
        };
        return stdgo.Go.asInterface((new T_complexVal(_re, _im) : T_complexVal));
    }
function _makeFloatFromLiteral(_lit:stdgo.GoString):Value {
        {
            var __tmp__ = _newFloat().setString(_lit), _f:stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Float_> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                if (_smallFloat(_f)) {
                    if (_f.sign() == ((0 : stdgo.StdGoTypes.GoInt))) {
                        _lit = ("0" : stdgo.GoString);
                    };
                    {
                        var __tmp__ = _newRat().setString(_lit), _r:stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Rat> = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_ok) {
                            return stdgo.Go.asInterface((new T_ratVal(_r) : T_ratVal));
                        };
                    };
                };
                return _makeFloat(_f);
            };
        };
        return (null : stdgo.go.constant.Constant.Value);
    }
/**
    // smallInt reports whether x would lead to "reasonably"-sized fraction
    // if converted to a *big.Rat.
**/
function _smallInt(_x:stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_>):Bool {
        return _x.bitLen() < (4096 : stdgo.StdGoTypes.GoInt);
    }
/**
    // smallFloat64 reports whether x would lead to "reasonably"-sized fraction
    // if converted to a *big.Rat.
**/
function _smallFloat64(_x:stdgo.StdGoTypes.GoFloat64):Bool {
        if (stdgo.math.Math.isInf(_x, (0 : stdgo.StdGoTypes.GoInt))) {
            return false;
        };
        var __tmp__ = stdgo.math.Math.frexp(_x), __0:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _e:stdgo.StdGoTypes.GoInt = __tmp__._1;
        return ((-4096 : stdgo.StdGoTypes.GoInt) < _e) && (_e < (4096 : stdgo.StdGoTypes.GoInt));
    }
/**
    // smallFloat reports whether x would lead to "reasonably"-sized fraction
    // if converted to a *big.Rat.
**/
function _smallFloat(_x:stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Float_>):Bool {
        if (_x.isInf()) {
            return false;
        };
        var _e:stdgo.StdGoTypes.GoInt = _x.mantExp(null);
        return ((-4096 : stdgo.StdGoTypes.GoInt) < _e) && (_e < (4096 : stdgo.StdGoTypes.GoInt));
    }
/**
    // MakeUnknown returns the Unknown value.
**/
function makeUnknown():Value {
        return stdgo.Go.asInterface((new T_unknownVal() : T_unknownVal));
    }
/**
    // MakeBool returns the Bool value for b.
**/
function makeBool(_b:Bool):Value {
        return stdgo.Go.asInterface((_b : T_boolVal));
    }
/**
    // MakeString returns the String value for s.
**/
function makeString(_s:stdgo.GoString):Value {
        if (_s == (stdgo.Go.str())) {
            return stdgo.Go.asInterface((stdgo.Go.setRef(_emptyString) : stdgo.StdGoTypes.Ref<stdgo.go.constant.Constant.T_stringVal>));
        };
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _s : _s } : T_stringVal)) : stdgo.StdGoTypes.Ref<stdgo.go.constant.Constant.T_stringVal>));
    }
/**
    // MakeInt64 returns the Int value for x.
**/
function makeInt64(_x:stdgo.StdGoTypes.GoInt64):Value {
        return stdgo.Go.asInterface((_x : T_int64Val));
    }
/**
    // MakeUint64 returns the Int value for x.
**/
function makeUint64(_x:stdgo.StdGoTypes.GoUInt64):Value {
        if (_x < (-9223372036854775808i64 : stdgo.StdGoTypes.GoUInt64)) {
            return stdgo.Go.asInterface(((_x : stdgo.StdGoTypes.GoInt64) : T_int64Val));
        };
        return stdgo.Go.asInterface((new T_intVal(_newInt().setUint64(_x)) : T_intVal));
    }
/**
    // MakeFloat64 returns the Float value for x.
    // If x is -0.0, the result is 0.0.
    // If x is not finite, the result is an Unknown.
**/
function makeFloat64(_x:stdgo.StdGoTypes.GoFloat64):Value {
        if (stdgo.math.Math.isInf(_x, (0 : stdgo.StdGoTypes.GoInt)) || stdgo.math.Math.isNaN(_x)) {
            return stdgo.Go.asInterface((new T_unknownVal() : T_unknownVal));
        };
        if (_smallFloat64(_x)) {
            return stdgo.Go.asInterface((new T_ratVal(_newRat().setFloat64(_x + (0 : stdgo.StdGoTypes.GoFloat64))) : T_ratVal));
        };
        return stdgo.Go.asInterface((new T_floatVal(_newFloat().setFloat64(_x + (0 : stdgo.StdGoTypes.GoFloat64))) : T_floatVal));
    }
/**
    // MakeFromLiteral returns the corresponding integer, floating-point,
    // imaginary, character, or string value for a Go literal string. The
    // tok value must be one of token.INT, token.FLOAT, token.IMAG,
    // token.CHAR, or token.STRING. The final argument must be zero.
    // If the literal string syntax is invalid, the result is an Unknown.
**/
function makeFromLiteral(_lit:stdgo.GoString, _tok:stdgo.go.token.Token.Token, _zero:stdgo.StdGoTypes.GoUInt):Value {
        if (_zero != ((0u32 : stdgo.StdGoTypes.GoUInt))) {
            throw stdgo.Go.toInterface(("MakeFromLiteral called with non-zero last argument" : stdgo.GoString));
        };
        {
            final __value__ = _tok;
            if (__value__ == ((5 : stdgo.go.token.Token.Token))) {
                {
                    var __tmp__ = stdgo.strconv.Strconv.parseInt(_lit, (0 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt)), _x:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        return stdgo.Go.asInterface((_x : T_int64Val));
                    };
                };
                {
                    var __tmp__ = _newInt().setString(_lit, (0 : stdgo.StdGoTypes.GoInt)), _x:stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_> = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        return stdgo.Go.asInterface((new T_intVal(_x) : T_intVal));
                    };
                };
            } else if (__value__ == ((6 : stdgo.go.token.Token.Token))) {
                {
                    var _x:stdgo.go.constant.Constant.Value = _makeFloatFromLiteral(_lit);
                    if (_x != null) {
                        return _x;
                    };
                };
            } else if (__value__ == ((7 : stdgo.go.token.Token.Token))) {
                {
                    var _n:stdgo.StdGoTypes.GoInt = (_lit.length);
                    if ((_n > (0 : stdgo.StdGoTypes.GoInt)) && (_lit[(_n - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] == (105 : stdgo.StdGoTypes.GoUInt8))) {
                        {
                            var _im:stdgo.go.constant.Constant.Value = _makeFloatFromLiteral((_lit.__slice__(0, _n - (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString));
                            if (_im != null) {
                                return _makeComplex(stdgo.Go.asInterface(((0i64 : stdgo.go.constant.Constant.T_int64Val) : T_int64Val)), _im);
                            };
                        };
                    };
                };
            } else if (__value__ == ((8 : stdgo.go.token.Token.Token))) {
                {
                    var _n:stdgo.StdGoTypes.GoInt = (_lit.length);
                    if (_n >= (2 : stdgo.StdGoTypes.GoInt)) {
                        {
                            var __tmp__ = stdgo.strconv.Strconv.unquoteChar((_lit.__slice__((1 : stdgo.StdGoTypes.GoInt), _n - (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString), (39 : stdgo.StdGoTypes.GoUInt8)), _code:stdgo.StdGoTypes.GoInt32 = __tmp__._0, __0:Bool = __tmp__._1, __1:stdgo.GoString = __tmp__._2, _err:stdgo.Error = __tmp__._3;
                            if (_err == null) {
                                return makeInt64((_code : stdgo.StdGoTypes.GoInt64));
                            };
                        };
                    };
                };
            } else if (__value__ == ((9 : stdgo.go.token.Token.Token))) {
                {
                    var __tmp__ = stdgo.strconv.Strconv.unquote(_lit), _s:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        return makeString(_s);
                    };
                };
            } else {
                throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("%v is not a valid token" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tok))));
            };
        };
        return stdgo.Go.asInterface((new T_unknownVal() : T_unknownVal));
    }
/**
    // BoolVal returns the Go boolean value of x, which must be a Bool or an Unknown.
    // If x is Unknown, the result is false.
**/
function boolVal(_x:Value):Bool {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : T_boolVal))) {
                var _x:stdgo.go.constant.Constant.T_boolVal = __type__ == null ? (false : stdgo.go.constant.Constant.T_boolVal) : __type__.__underlying__() == null ? (false : stdgo.go.constant.Constant.T_boolVal) : __type__ == null ? (false : stdgo.go.constant.Constant.T_boolVal) : __type__.__underlying__().value;
                return (_x : Bool);
            } else if (stdgo.Go.typeEquals((__type__ : T_unknownVal))) {
                var _x:stdgo.go.constant.Constant.T_unknownVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__.__underlying__().value;
                return false;
            } else {
                var _x:stdgo.go.constant.Constant.Value = __type__ == null ? (null : stdgo.go.constant.Constant.Value) : cast __type__;
                throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("%v not a Bool" : stdgo.GoString), stdgo.Go.toInterface(_x)));
            };
        };
    }
/**
    // StringVal returns the Go string value of x, which must be a String or an Unknown.
    // If x is Unknown, the result is "".
**/
function stringVal(_x:Value):stdgo.GoString {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.Ref<T_stringVal>))) {
                var _x:stdgo.StdGoTypes.Ref<stdgo.go.constant.Constant.T_stringVal> = __type__ == null ? (null : stdgo.StdGoTypes.Ref<stdgo.go.constant.Constant.T_stringVal>) : __type__.__underlying__() == null ? (null : stdgo.StdGoTypes.Ref<stdgo.go.constant.Constant.T_stringVal>) : __type__ == null ? (null : stdgo.StdGoTypes.Ref<stdgo.go.constant.Constant.T_stringVal>) : __type__.__underlying__().value;
                return _x._string();
            } else if (stdgo.Go.typeEquals((__type__ : T_unknownVal))) {
                var _x:stdgo.go.constant.Constant.T_unknownVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__.__underlying__().value;
                return stdgo.Go.str();
            } else {
                var _x:stdgo.go.constant.Constant.Value = __type__ == null ? (null : stdgo.go.constant.Constant.Value) : cast __type__;
                throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("%v not a String" : stdgo.GoString), stdgo.Go.toInterface(_x)));
            };
        };
    }
/**
    // Int64Val returns the Go int64 value of x and whether the result is exact;
    // x must be an Int or an Unknown. If the result is not exact, its value is undefined.
    // If x is Unknown, the result is (0, false).
**/
function int64Val(_x:Value):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : Bool; } {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : T_int64Val))) {
                var _x:stdgo.go.constant.Constant.T_int64Val = __type__ == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__ == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__.__underlying__().value;
                return { _0 : (_x : stdgo.StdGoTypes.GoInt64), _1 : true };
            } else if (stdgo.Go.typeEquals((__type__ : T_intVal))) {
                var _x:stdgo.go.constant.Constant.T_intVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__.__underlying__().value;
                return { _0 : _x._val.int64(), _1 : false };
            } else if (stdgo.Go.typeEquals((__type__ : T_unknownVal))) {
                var _x:stdgo.go.constant.Constant.T_unknownVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__.__underlying__().value;
                return { _0 : (0i64 : stdgo.StdGoTypes.GoInt64), _1 : false };
            } else {
                var _x:stdgo.go.constant.Constant.Value = __type__ == null ? (null : stdgo.go.constant.Constant.Value) : cast __type__;
                throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("%v not an Int" : stdgo.GoString), stdgo.Go.toInterface(_x)));
            };
        };
    }
/**
    // Uint64Val returns the Go uint64 value of x and whether the result is exact;
    // x must be an Int or an Unknown. If the result is not exact, its value is undefined.
    // If x is Unknown, the result is (0, false).
**/
function uint64Val(_x:Value):{ var _0 : stdgo.StdGoTypes.GoUInt64; var _1 : Bool; } {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : T_int64Val))) {
                var _x:stdgo.go.constant.Constant.T_int64Val = __type__ == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__ == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__.__underlying__().value;
                return { _0 : (_x : stdgo.StdGoTypes.GoUInt64), _1 : _x >= (0i64 : stdgo.go.constant.Constant.T_int64Val) };
            } else if (stdgo.Go.typeEquals((__type__ : T_intVal))) {
                var _x:stdgo.go.constant.Constant.T_intVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__.__underlying__().value;
                return { _0 : _x._val.uint64(), _1 : _x._val.isUint64() };
            } else if (stdgo.Go.typeEquals((__type__ : T_unknownVal))) {
                var _x:stdgo.go.constant.Constant.T_unknownVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__.__underlying__().value;
                return { _0 : (0i64 : stdgo.StdGoTypes.GoUInt64), _1 : false };
            } else {
                var _x:stdgo.go.constant.Constant.Value = __type__ == null ? (null : stdgo.go.constant.Constant.Value) : cast __type__;
                throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("%v not an Int" : stdgo.GoString), stdgo.Go.toInterface(_x)));
            };
        };
    }
/**
    // Float32Val is like Float64Val but for float32 instead of float64.
**/
function float32Val(_x:Value):{ var _0 : stdgo.StdGoTypes.GoFloat32; var _1 : Bool; } {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : T_int64Val))) {
                var _x:stdgo.go.constant.Constant.T_int64Val = __type__ == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__ == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__.__underlying__().value;
                var _f:stdgo.StdGoTypes.GoFloat32 = (_x : stdgo.StdGoTypes.GoFloat32);
                return { _0 : _f, _1 : (_f : T_int64Val) == (_x) };
            } else if (stdgo.Go.typeEquals((__type__ : T_intVal))) {
                var _x:stdgo.go.constant.Constant.T_intVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__.__underlying__().value;
                var __tmp__ = _newFloat().setInt(_x._val).float32(), _f:stdgo.StdGoTypes.GoFloat32 = __tmp__._0, _acc:stdgo.math.big.Big.Accuracy = __tmp__._1;
                return { _0 : _f, _1 : _acc == ((0 : stdgo.math.big.Big.Accuracy)) };
            } else if (stdgo.Go.typeEquals((__type__ : T_ratVal))) {
                var _x:stdgo.go.constant.Constant.T_ratVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_ratVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_ratVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_ratVal) : __type__.__underlying__().value;
                return _x._val.float32();
            } else if (stdgo.Go.typeEquals((__type__ : T_floatVal))) {
                var _x:stdgo.go.constant.Constant.T_floatVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_floatVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_floatVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_floatVal) : __type__.__underlying__().value;
                var __tmp__ = _x._val.float32(), _f:stdgo.StdGoTypes.GoFloat32 = __tmp__._0, _acc:stdgo.math.big.Big.Accuracy = __tmp__._1;
                return { _0 : _f, _1 : _acc == ((0 : stdgo.math.big.Big.Accuracy)) };
            } else if (stdgo.Go.typeEquals((__type__ : T_unknownVal))) {
                var _x:stdgo.go.constant.Constant.T_unknownVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__.__underlying__().value;
                return { _0 : (0 : stdgo.StdGoTypes.GoFloat64), _1 : false };
            } else {
                var _x:stdgo.go.constant.Constant.Value = __type__ == null ? (null : stdgo.go.constant.Constant.Value) : cast __type__;
                throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("%v not a Float" : stdgo.GoString), stdgo.Go.toInterface(_x)));
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
function float64Val(_x:Value):{ var _0 : stdgo.StdGoTypes.GoFloat64; var _1 : Bool; } {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : T_int64Val))) {
                var _x:stdgo.go.constant.Constant.T_int64Val = __type__ == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__ == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__.__underlying__().value;
                var _f:stdgo.StdGoTypes.GoFloat64 = ((_x : stdgo.StdGoTypes.GoInt64) : stdgo.StdGoTypes.GoFloat64);
                return { _0 : _f, _1 : (_f : T_int64Val) == (_x) };
            } else if (stdgo.Go.typeEquals((__type__ : T_intVal))) {
                var _x:stdgo.go.constant.Constant.T_intVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__.__underlying__().value;
                var __tmp__ = _newFloat().setInt(_x._val).float64(), _f:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _acc:stdgo.math.big.Big.Accuracy = __tmp__._1;
                return { _0 : _f, _1 : _acc == ((0 : stdgo.math.big.Big.Accuracy)) };
            } else if (stdgo.Go.typeEquals((__type__ : T_ratVal))) {
                var _x:stdgo.go.constant.Constant.T_ratVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_ratVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_ratVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_ratVal) : __type__.__underlying__().value;
                return _x._val.float64();
            } else if (stdgo.Go.typeEquals((__type__ : T_floatVal))) {
                var _x:stdgo.go.constant.Constant.T_floatVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_floatVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_floatVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_floatVal) : __type__.__underlying__().value;
                var __tmp__ = _x._val.float64(), _f:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _acc:stdgo.math.big.Big.Accuracy = __tmp__._1;
                return { _0 : _f, _1 : _acc == ((0 : stdgo.math.big.Big.Accuracy)) };
            } else if (stdgo.Go.typeEquals((__type__ : T_unknownVal))) {
                var _x:stdgo.go.constant.Constant.T_unknownVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__.__underlying__().value;
                return { _0 : (0 : stdgo.StdGoTypes.GoFloat64), _1 : false };
            } else {
                var _x:stdgo.go.constant.Constant.Value = __type__ == null ? (null : stdgo.go.constant.Constant.Value) : cast __type__;
                throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("%v not a Float" : stdgo.GoString), stdgo.Go.toInterface(_x)));
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
function val(_x:Value):stdgo.StdGoTypes.AnyInterface {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : T_boolVal))) {
                var _x:stdgo.go.constant.Constant.T_boolVal = __type__ == null ? (false : stdgo.go.constant.Constant.T_boolVal) : __type__.__underlying__() == null ? (false : stdgo.go.constant.Constant.T_boolVal) : __type__ == null ? (false : stdgo.go.constant.Constant.T_boolVal) : __type__.__underlying__().value;
                return stdgo.Go.toInterface((_x : Bool));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.Ref<T_stringVal>))) {
                var _x:stdgo.StdGoTypes.Ref<stdgo.go.constant.Constant.T_stringVal> = __type__ == null ? (null : stdgo.StdGoTypes.Ref<stdgo.go.constant.Constant.T_stringVal>) : __type__.__underlying__() == null ? (null : stdgo.StdGoTypes.Ref<stdgo.go.constant.Constant.T_stringVal>) : __type__ == null ? (null : stdgo.StdGoTypes.Ref<stdgo.go.constant.Constant.T_stringVal>) : __type__.__underlying__().value;
                return stdgo.Go.toInterface(_x._string());
            } else if (stdgo.Go.typeEquals((__type__ : T_int64Val))) {
                var _x:stdgo.go.constant.Constant.T_int64Val = __type__ == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__ == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__.__underlying__().value;
                return stdgo.Go.toInterface((_x : stdgo.StdGoTypes.GoInt64));
            } else if (stdgo.Go.typeEquals((__type__ : T_intVal))) {
                var _x:stdgo.go.constant.Constant.T_intVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__.__underlying__().value;
                return stdgo.Go.toInterface(stdgo.Go.asInterface(_x._val));
            } else if (stdgo.Go.typeEquals((__type__ : T_ratVal))) {
                var _x:stdgo.go.constant.Constant.T_ratVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_ratVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_ratVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_ratVal) : __type__.__underlying__().value;
                return stdgo.Go.toInterface(stdgo.Go.asInterface(_x._val));
            } else if (stdgo.Go.typeEquals((__type__ : T_floatVal))) {
                var _x:stdgo.go.constant.Constant.T_floatVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_floatVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_floatVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_floatVal) : __type__.__underlying__().value;
                return stdgo.Go.toInterface(stdgo.Go.asInterface(_x._val));
            } else {
                var _x:stdgo.go.constant.Constant.Value = __type__ == null ? (null : stdgo.go.constant.Constant.Value) : cast __type__;
                return (null : stdgo.StdGoTypes.AnyInterface);
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
function make(_x:stdgo.StdGoTypes.AnyInterface):Value {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : Bool))) {
                var _x:Bool = __type__ == null ? false : __type__.__underlying__() == null ? false : __type__ == null ? false : __type__.__underlying__().value;
                return stdgo.Go.asInterface((_x : T_boolVal));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                var _x:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ _s : _x } : T_stringVal)) : stdgo.StdGoTypes.Ref<stdgo.go.constant.Constant.T_stringVal>));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.GoInt64))) {
                var _x:stdgo.StdGoTypes.GoInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                return stdgo.Go.asInterface((_x : T_int64Val));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_>))) {
                var _x:stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_> = __type__ == null ? (null : stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_>) : __type__.__underlying__() == null ? (null : stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_>) : __type__ == null ? (null : stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_>) : __type__.__underlying__().value;
                return _makeInt(_x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Rat>))) {
                var _x:stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Rat> = __type__ == null ? (null : stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Rat>) : __type__.__underlying__() == null ? (null : stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Rat>) : __type__ == null ? (null : stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Rat>) : __type__.__underlying__().value;
                return _makeRat(_x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Float_>))) {
                var _x:stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Float_> = __type__ == null ? (null : stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Float_>) : __type__.__underlying__() == null ? (null : stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Float_>) : __type__ == null ? (null : stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Float_>) : __type__.__underlying__().value;
                return _makeFloat(_x);
            } else {
                var _x:stdgo.StdGoTypes.AnyInterface = __type__?.__underlying__();
                return stdgo.Go.asInterface((new T_unknownVal() : T_unknownVal));
            };
        };
    }
/**
    // BitLen returns the number of bits required to represent
    // the absolute value x in binary representation; x must be an Int or an Unknown.
    // If x is Unknown, the result is 0.
**/
function bitLen(_x:Value):stdgo.StdGoTypes.GoInt {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : T_int64Val))) {
                var _x:stdgo.go.constant.Constant.T_int64Val = __type__ == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__ == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__.__underlying__().value;
                var _u:stdgo.StdGoTypes.GoUInt64 = (_x : stdgo.StdGoTypes.GoUInt64);
                if (_x < (0i64 : stdgo.go.constant.Constant.T_int64Val)) {
                    _u = (-_x : stdgo.StdGoTypes.GoUInt64);
                };
                return (64 : stdgo.StdGoTypes.GoInt) - stdgo.math.bits.Bits.leadingZeros64(_u);
            } else if (stdgo.Go.typeEquals((__type__ : T_intVal))) {
                var _x:stdgo.go.constant.Constant.T_intVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__.__underlying__().value;
                return _x._val.bitLen();
            } else if (stdgo.Go.typeEquals((__type__ : T_unknownVal))) {
                var _x:stdgo.go.constant.Constant.T_unknownVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__.__underlying__().value;
                return (0 : stdgo.StdGoTypes.GoInt);
            } else {
                var _x:stdgo.go.constant.Constant.Value = __type__ == null ? (null : stdgo.go.constant.Constant.Value) : cast __type__;
                throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("%v not an Int" : stdgo.GoString), stdgo.Go.toInterface(_x)));
            };
        };
    }
/**
    // Sign returns -1, 0, or 1 depending on whether x < 0, x == 0, or x > 0;
    // x must be numeric or Unknown. For complex values x, the sign is 0 if x == 0,
    // otherwise it is != 0. If x is Unknown, the result is 1.
**/
function sign(_x:Value):stdgo.StdGoTypes.GoInt {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : T_int64Val))) {
                var _x:stdgo.go.constant.Constant.T_int64Val = __type__ == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__ == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__.__underlying__().value;
                if (_x < (0i64 : stdgo.go.constant.Constant.T_int64Val)) {
                    return (-1 : stdgo.StdGoTypes.GoInt);
                } else if (_x > (0i64 : stdgo.go.constant.Constant.T_int64Val)) {
                    return (1 : stdgo.StdGoTypes.GoInt);
                };
                return (0 : stdgo.StdGoTypes.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : T_intVal))) {
                var _x:stdgo.go.constant.Constant.T_intVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__.__underlying__().value;
                return _x._val.sign();
            } else if (stdgo.Go.typeEquals((__type__ : T_ratVal))) {
                var _x:stdgo.go.constant.Constant.T_ratVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_ratVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_ratVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_ratVal) : __type__.__underlying__().value;
                return _x._val.sign();
            } else if (stdgo.Go.typeEquals((__type__ : T_floatVal))) {
                var _x:stdgo.go.constant.Constant.T_floatVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_floatVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_floatVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_floatVal) : __type__.__underlying__().value;
                return _x._val.sign();
            } else if (stdgo.Go.typeEquals((__type__ : T_complexVal))) {
                var _x:stdgo.go.constant.Constant.T_complexVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_complexVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_complexVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_complexVal) : __type__.__underlying__().value;
                return sign(_x._re) | sign(_x._im);
            } else if (stdgo.Go.typeEquals((__type__ : T_unknownVal))) {
                var _x:stdgo.go.constant.Constant.T_unknownVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__.__underlying__().value;
                return (1 : stdgo.StdGoTypes.GoInt);
            } else {
                var _x:stdgo.go.constant.Constant.Value = __type__ == null ? (null : stdgo.go.constant.Constant.Value) : cast __type__;
                throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("%v not numeric" : stdgo.GoString), stdgo.Go.toInterface(_x)));
            };
        };
    }
/**
    // Bytes returns the bytes for the absolute value of x in little-
    // endian binary representation; x must be an Int.
**/
function bytes(_x:Value):stdgo.Slice<stdgo.StdGoTypes.GoByte> {
        var _t:T_intVal = ({} : stdgo.go.constant.Constant.T_intVal);
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : T_int64Val))) {
                var _x:stdgo.go.constant.Constant.T_int64Val = __type__ == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__ == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__.__underlying__().value;
                _t = _i64toi(_x)?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : T_intVal))) {
                var _x:stdgo.go.constant.Constant.T_intVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__.__underlying__().value;
                _t = _x?.__copy__();
            } else {
                var _x:stdgo.go.constant.Constant.Value = __type__ == null ? (null : stdgo.go.constant.Constant.Value) : cast __type__;
                throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("%v not an Int" : stdgo.GoString), stdgo.Go.toInterface(_x)));
            };
        };
        var _words = _t._val.bits();
        var _bytes = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(((_words.length) * (4 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        for (__0 => _w in _words) {
            {
                var _j:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_j < (4 : stdgo.StdGoTypes.GoInt), _j++, {
                    _bytes[(_i : stdgo.StdGoTypes.GoInt)] = (_w : stdgo.StdGoTypes.GoByte);
                    _w = _w >> ((8i64 : stdgo.StdGoTypes.GoUInt64));
                    _i++;
                });
            };
        };
        while ((_i > (0 : stdgo.StdGoTypes.GoInt)) && (_bytes[(_i - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] == (0 : stdgo.StdGoTypes.GoUInt8))) {
            _i--;
        };
        return (_bytes.__slice__(0, _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    }
/**
    // MakeFromBytes returns the Int value given the bytes of its little-endian
    // binary representation. An empty byte slice argument represents 0.
**/
function makeFromBytes(_bytes:stdgo.Slice<stdgo.StdGoTypes.GoByte>):Value {
        var _words = new stdgo.Slice<stdgo.math.big.Big.Word>(((_bytes.length + (3 : stdgo.StdGoTypes.GoInt)) / (4 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        var _w:stdgo.math.big.Big.Word = ((0 : stdgo.StdGoTypes.GoUInt) : stdgo.math.big.Big.Word);
        var _s:stdgo.StdGoTypes.GoUInt = (0 : stdgo.StdGoTypes.GoUInt);
        for (__0 => _b in _bytes) {
            _w = _w | ((_b : stdgo.math.big.Big.Word) << _s);
            {
                _s = _s + ((8u32 : stdgo.StdGoTypes.GoUInt));
                if (_s == ((32u32 : stdgo.StdGoTypes.GoUInt))) {
                    _words[(_i : stdgo.StdGoTypes.GoInt)] = _w;
                    _i++;
                    _w = (0u32 : stdgo.math.big.Big.Word);
                    _s = (0u32 : stdgo.StdGoTypes.GoUInt);
                };
            };
        };
        if (_i < (_words.length)) {
            _words[(_i : stdgo.StdGoTypes.GoInt)] = _w;
            _i++;
        };
        while ((_i > (0 : stdgo.StdGoTypes.GoInt)) && (_words[(_i - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] == (0u32 : stdgo.math.big.Big.Word))) {
            _i--;
        };
        return _makeInt(_newInt().setBits((_words.__slice__(0, _i) : stdgo.Slice<stdgo.math.big.Big.Word>)));
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
                    if (stdgo.Go.typeEquals((__type__ : T_int64Val)) || stdgo.Go.typeEquals((__type__ : T_intVal))) {
                        var _x:stdgo.go.constant.Constant.Value = __type__ == null ? (null : stdgo.go.constant.Constant.Value) : cast __type__;
                        return _x;
                    } else if (stdgo.Go.typeEquals((__type__ : T_ratVal))) {
                        var _x:stdgo.go.constant.Constant.T_ratVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_ratVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_ratVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_ratVal) : __type__.__underlying__().value;
                        return _makeInt(_x._val.num());
                    } else if (stdgo.Go.typeEquals((__type__ : T_floatVal))) {
                        var _x:stdgo.go.constant.Constant.T_floatVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_floatVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_floatVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_floatVal) : __type__.__underlying__().value;
                        if (_smallFloat(_x._val)) {
                            var __tmp__ = _x._val.rat(null), _r:stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Rat> = __tmp__._0, __0:stdgo.math.big.Big.Accuracy = __tmp__._1;
                            return _makeInt(_r.num());
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : T_unknownVal))) {
                        var _x:stdgo.go.constant.Constant.T_unknownVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__.__underlying__().value;
                        break;
                    } else {
                        var _x:stdgo.go.constant.Constant.Value = __type__ == null ? (null : stdgo.go.constant.Constant.Value) : cast __type__;
                        throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("%v not Int or Float" : stdgo.GoString), stdgo.Go.toInterface(_x)));
                    };
                    break;
                };
            };
        };
        return stdgo.Go.asInterface((new T_unknownVal() : T_unknownVal));
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
                    if (stdgo.Go.typeEquals((__type__ : T_int64Val)) || stdgo.Go.typeEquals((__type__ : T_intVal))) {
                        var _x:stdgo.go.constant.Constant.Value = __type__ == null ? (null : stdgo.go.constant.Constant.Value) : cast __type__;
                        return stdgo.Go.asInterface(((1i64 : stdgo.go.constant.Constant.T_int64Val) : T_int64Val));
                    } else if (stdgo.Go.typeEquals((__type__ : T_ratVal))) {
                        var _x:stdgo.go.constant.Constant.T_ratVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_ratVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_ratVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_ratVal) : __type__.__underlying__().value;
                        return _makeInt(_x._val.denom());
                    } else if (stdgo.Go.typeEquals((__type__ : T_floatVal))) {
                        var _x:stdgo.go.constant.Constant.T_floatVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_floatVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_floatVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_floatVal) : __type__.__underlying__().value;
                        if (_smallFloat(_x._val)) {
                            var __tmp__ = _x._val.rat(null), _r:stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Rat> = __tmp__._0, __0:stdgo.math.big.Big.Accuracy = __tmp__._1;
                            return _makeInt(_r.denom());
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : T_unknownVal))) {
                        var _x:stdgo.go.constant.Constant.T_unknownVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__.__underlying__().value;
                        break;
                    } else {
                        var _x:stdgo.go.constant.Constant.Value = __type__ == null ? (null : stdgo.go.constant.Constant.Value) : cast __type__;
                        throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("%v not Int or Float" : stdgo.GoString), stdgo.Go.toInterface(_x)));
                    };
                    break;
                };
            };
        };
        return stdgo.Go.asInterface((new T_unknownVal() : T_unknownVal));
    }
/**
    // MakeImag returns the Complex value x*i;
    // x must be Int, Float, or Unknown.
    // If x is Unknown, the result is Unknown.
**/
function makeImag(_x:Value):Value {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : T_unknownVal))) {
                return _x;
            } else if (stdgo.Go.typeEquals((__type__ : T_int64Val)) || stdgo.Go.typeEquals((__type__ : T_intVal)) || stdgo.Go.typeEquals((__type__ : T_ratVal)) || stdgo.Go.typeEquals((__type__ : T_floatVal))) {
                return _makeComplex(stdgo.Go.asInterface(((0i64 : stdgo.go.constant.Constant.T_int64Val) : T_int64Val)), _x);
            } else {
                throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("%v not Int or Float" : stdgo.GoString), stdgo.Go.toInterface(_x)));
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
            if (stdgo.Go.typeEquals((__type__ : T_unknownVal)) || stdgo.Go.typeEquals((__type__ : T_int64Val)) || stdgo.Go.typeEquals((__type__ : T_intVal)) || stdgo.Go.typeEquals((__type__ : T_ratVal)) || stdgo.Go.typeEquals((__type__ : T_floatVal))) {
                var _x:stdgo.go.constant.Constant.Value = __type__ == null ? (null : stdgo.go.constant.Constant.Value) : cast __type__;
                return _x;
            } else if (stdgo.Go.typeEquals((__type__ : T_complexVal))) {
                var _x:stdgo.go.constant.Constant.T_complexVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_complexVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_complexVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_complexVal) : __type__.__underlying__().value;
                return _x._re;
            } else {
                var _x:stdgo.go.constant.Constant.Value = __type__ == null ? (null : stdgo.go.constant.Constant.Value) : cast __type__;
                throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("%v not numeric" : stdgo.GoString), stdgo.Go.toInterface(_x)));
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
            if (stdgo.Go.typeEquals((__type__ : T_unknownVal))) {
                var _x:stdgo.go.constant.Constant.T_unknownVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__.__underlying__().value;
                return stdgo.Go.asInterface(_x);
            } else if (stdgo.Go.typeEquals((__type__ : T_int64Val)) || stdgo.Go.typeEquals((__type__ : T_intVal)) || stdgo.Go.typeEquals((__type__ : T_ratVal)) || stdgo.Go.typeEquals((__type__ : T_floatVal))) {
                var _x:stdgo.go.constant.Constant.Value = __type__ == null ? (null : stdgo.go.constant.Constant.Value) : cast __type__;
                return stdgo.Go.asInterface(((0i64 : stdgo.go.constant.Constant.T_int64Val) : T_int64Val));
            } else if (stdgo.Go.typeEquals((__type__ : T_complexVal))) {
                var _x:stdgo.go.constant.Constant.T_complexVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_complexVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_complexVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_complexVal) : __type__.__underlying__().value;
                return _x._im;
            } else {
                var _x:stdgo.go.constant.Constant.Value = __type__ == null ? (null : stdgo.go.constant.Constant.Value) : cast __type__;
                throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("%v not numeric" : stdgo.GoString), stdgo.Go.toInterface(_x)));
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
            if (stdgo.Go.typeEquals((__type__ : T_int64Val)) || stdgo.Go.typeEquals((__type__ : T_intVal))) {
                var _x:stdgo.go.constant.Constant.Value = __type__ == null ? (null : stdgo.go.constant.Constant.Value) : cast __type__;
                return _x;
            } else if (stdgo.Go.typeEquals((__type__ : T_ratVal))) {
                var _x:stdgo.go.constant.Constant.T_ratVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_ratVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_ratVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_ratVal) : __type__.__underlying__().value;
                if (_x._val.isInt()) {
                    return _makeInt(_x._val.num());
                };
            } else if (stdgo.Go.typeEquals((__type__ : T_floatVal))) {
                var _x:stdgo.go.constant.Constant.T_floatVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_floatVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_floatVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_floatVal) : __type__.__underlying__().value;
                if (_smallFloat(_x._val)) {
                    var _i = _newInt();
                    {
                        var __tmp__ = _x._val.int_(_i), __0:stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_> = __tmp__._0, _acc:stdgo.math.big.Big.Accuracy = __tmp__._1;
                        if (_acc == ((0 : stdgo.math.big.Big.Accuracy))) {
                            return _makeInt(_i);
                        };
                    };
                    {};
                    var _t:stdgo.math.big.Big.Float_ = ({} : stdgo.math.big.Big.Float_);
                    _t.setPrec((508u32 : stdgo.StdGoTypes.GoUInt));
                    _t.setMode((2 : stdgo.math.big.Big.RoundingMode));
                    _t.set(_x._val);
                    {
                        var __tmp__ = _t.int_(_i), __1:stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_> = __tmp__._0, _acc:stdgo.math.big.Big.Accuracy = __tmp__._1;
                        if (_acc == ((0 : stdgo.math.big.Big.Accuracy))) {
                            return _makeInt(_i);
                        };
                    };
                    _t.setMode((3 : stdgo.math.big.Big.RoundingMode));
                    _t.set(_x._val);
                    {
                        var __tmp__ = _t.int_(_i), __2:stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_> = __tmp__._0, _acc:stdgo.math.big.Big.Accuracy = __tmp__._1;
                        if (_acc == ((0 : stdgo.math.big.Big.Accuracy))) {
                            return _makeInt(_i);
                        };
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : T_complexVal))) {
                var _x:stdgo.go.constant.Constant.T_complexVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_complexVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_complexVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_complexVal) : __type__.__underlying__().value;
                {
                    var _re:stdgo.go.constant.Constant.Value = toFloat(stdgo.Go.asInterface(_x));
                    if (_re.kind() == ((4 : stdgo.go.constant.Constant.Kind))) {
                        return toInt(_re);
                    };
                };
            };
        };
        return stdgo.Go.asInterface((new T_unknownVal() : T_unknownVal));
    }
/**
    // ToFloat converts x to a Float value if x is representable as a Float.
    // Otherwise it returns an Unknown.
**/
function toFloat(_x:Value):Value {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : T_int64Val))) {
                var _x:stdgo.go.constant.Constant.T_int64Val = __type__ == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__ == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__.__underlying__().value;
                return stdgo.Go.asInterface(_i64tor(_x));
            } else if (stdgo.Go.typeEquals((__type__ : T_intVal))) {
                var _x:stdgo.go.constant.Constant.T_intVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__.__underlying__().value;
                if (_smallInt(_x._val)) {
                    return stdgo.Go.asInterface(_itor(_x?.__copy__()));
                };
                return stdgo.Go.asInterface(_itof(_x?.__copy__()));
            } else if (stdgo.Go.typeEquals((__type__ : T_ratVal)) || stdgo.Go.typeEquals((__type__ : T_floatVal))) {
                var _x:stdgo.go.constant.Constant.Value = __type__ == null ? (null : stdgo.go.constant.Constant.Value) : cast __type__;
                return _x;
            } else if (stdgo.Go.typeEquals((__type__ : T_complexVal))) {
                var _x:stdgo.go.constant.Constant.T_complexVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_complexVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_complexVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_complexVal) : __type__.__underlying__().value;
                if (sign(_x._im) == ((0 : stdgo.StdGoTypes.GoInt))) {
                    return toFloat(_x._re);
                };
            };
        };
        return stdgo.Go.asInterface((new T_unknownVal() : T_unknownVal));
    }
/**
    // ToComplex converts x to a Complex value if x is representable as a Complex.
    // Otherwise it returns an Unknown.
**/
function toComplex(_x:Value):Value {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : T_int64Val)) || stdgo.Go.typeEquals((__type__ : T_intVal)) || stdgo.Go.typeEquals((__type__ : T_ratVal)) || stdgo.Go.typeEquals((__type__ : T_floatVal))) {
                var _x:stdgo.go.constant.Constant.Value = __type__ == null ? (null : stdgo.go.constant.Constant.Value) : cast __type__;
                return stdgo.Go.asInterface(_vtoc(_x));
            } else if (stdgo.Go.typeEquals((__type__ : T_complexVal))) {
                var _x:stdgo.go.constant.Constant.T_complexVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_complexVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_complexVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_complexVal) : __type__.__underlying__().value;
                return stdgo.Go.asInterface(_x);
            };
        };
        return stdgo.Go.asInterface((new T_unknownVal() : T_unknownVal));
    }
/**
    // is32bit reports whether x can be represented using 32 bits.
**/
function _is32bit(_x:stdgo.StdGoTypes.GoInt64):Bool {
        {};
        return ((-2147483648i64 : stdgo.StdGoTypes.GoInt64) <= _x) && (_x <= (2147483647i64 : stdgo.StdGoTypes.GoInt64));
    }
/**
    // is63bit reports whether x can be represented using 63 bits.
**/
function _is63bit(_x:stdgo.StdGoTypes.GoInt64):Bool {
        {};
        return ((-4611686018427387904i64 : stdgo.StdGoTypes.GoInt64) <= _x) && (_x <= (4611686018427387903i64 : stdgo.StdGoTypes.GoInt64));
    }
/**
    // UnaryOp returns the result of the unary expression op y.
    // The operation must be defined for the operand.
    // If prec > 0 it specifies the ^ (xor) result size in bits.
    // If y is Unknown, the result is Unknown.
**/
function unaryOp(_op:stdgo.go.token.Token.Token, _y:Value, _prec:stdgo.StdGoTypes.GoUInt):Value {
        stdgo.internal.Macro.controlFlow({
            {
                final __value__ = _op;
                if (__value__ == ((12 : stdgo.go.token.Token.Token))) {
                    {
                        final __type__ = _y;
                        if (stdgo.Go.typeEquals((__type__ : T_unknownVal)) || stdgo.Go.typeEquals((__type__ : T_int64Val)) || stdgo.Go.typeEquals((__type__ : T_intVal)) || stdgo.Go.typeEquals((__type__ : T_ratVal)) || stdgo.Go.typeEquals((__type__ : T_floatVal)) || stdgo.Go.typeEquals((__type__ : T_complexVal))) {
                            return _y;
                        };
                    };
                } else if (__value__ == ((13 : stdgo.go.token.Token.Token))) {
                    {
                        final __type__ = _y;
                        if (stdgo.Go.typeEquals((__type__ : T_unknownVal))) {
                            var _y:stdgo.go.constant.Constant.T_unknownVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__.__underlying__().value;
                            return stdgo.Go.asInterface(_y);
                        } else if (stdgo.Go.typeEquals((__type__ : T_int64Val))) {
                            var _y:stdgo.go.constant.Constant.T_int64Val = __type__ == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__ == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__.__underlying__().value;
                            {
                                var _z:stdgo.go.constant.Constant.T_int64Val = -_y;
                                if (_z != (_y)) {
                                    return stdgo.Go.asInterface(_z);
                                };
                            };
                            return _makeInt(_newInt().neg(stdgo.math.big.Big.newInt((_y : stdgo.StdGoTypes.GoInt64))));
                        } else if (stdgo.Go.typeEquals((__type__ : T_intVal))) {
                            var _y:stdgo.go.constant.Constant.T_intVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__.__underlying__().value;
                            return _makeInt(_newInt().neg(_y._val));
                        } else if (stdgo.Go.typeEquals((__type__ : T_ratVal))) {
                            var _y:stdgo.go.constant.Constant.T_ratVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_ratVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_ratVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_ratVal) : __type__.__underlying__().value;
                            return _makeRat(_newRat().neg(_y._val));
                        } else if (stdgo.Go.typeEquals((__type__ : T_floatVal))) {
                            var _y:stdgo.go.constant.Constant.T_floatVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_floatVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_floatVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_floatVal) : __type__.__underlying__().value;
                            return _makeFloat(_newFloat().neg(_y._val));
                        } else if (stdgo.Go.typeEquals((__type__ : T_complexVal))) {
                            var _y:stdgo.go.constant.Constant.T_complexVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_complexVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_complexVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_complexVal) : __type__.__underlying__().value;
                            var _re:stdgo.go.constant.Constant.Value = unaryOp((13 : stdgo.go.token.Token.Token), _y._re, (0u32 : stdgo.StdGoTypes.GoUInt));
                            var _im:stdgo.go.constant.Constant.Value = unaryOp((13 : stdgo.go.token.Token.Token), _y._im, (0u32 : stdgo.StdGoTypes.GoUInt));
                            return _makeComplex(_re, _im);
                        };
                    };
                } else if (__value__ == ((19 : stdgo.go.token.Token.Token))) {
                    var _z = _newInt();
                    {
                        final __type__ = _y;
                        if (stdgo.Go.typeEquals((__type__ : T_unknownVal))) {
                            var _y:stdgo.go.constant.Constant.T_unknownVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__.__underlying__().value;
                            return stdgo.Go.asInterface(_y);
                        } else if (stdgo.Go.typeEquals((__type__ : T_int64Val))) {
                            var _y:stdgo.go.constant.Constant.T_int64Val = __type__ == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__ == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__.__underlying__().value;
                            _z.not(stdgo.math.big.Big.newInt((_y : stdgo.StdGoTypes.GoInt64)));
                        } else if (stdgo.Go.typeEquals((__type__ : T_intVal))) {
                            var _y:stdgo.go.constant.Constant.T_intVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__.__underlying__().value;
                            _z.not(_y._val);
                        } else {
                            var _y:stdgo.go.constant.Constant.Value = __type__ == null ? (null : stdgo.go.constant.Constant.Value) : cast __type__;
                            @:goto "Error";
                        };
                    };
                    if (_prec > (0u32 : stdgo.StdGoTypes.GoUInt)) {
                        _z.andNot(_z, _newInt().lsh(stdgo.math.big.Big.newInt((-1i64 : stdgo.StdGoTypes.GoInt64)), _prec));
                    };
                    return _makeInt(_z);
                } else if (__value__ == ((43 : stdgo.go.token.Token.Token))) {
                    {
                        final __type__ = _y;
                        if (stdgo.Go.typeEquals((__type__ : T_unknownVal))) {
                            var _y:stdgo.go.constant.Constant.T_unknownVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__.__underlying__().value;
                            return stdgo.Go.asInterface(_y);
                        } else if (stdgo.Go.typeEquals((__type__ : T_boolVal))) {
                            var _y:stdgo.go.constant.Constant.T_boolVal = __type__ == null ? (false : stdgo.go.constant.Constant.T_boolVal) : __type__.__underlying__() == null ? (false : stdgo.go.constant.Constant.T_boolVal) : __type__ == null ? (false : stdgo.go.constant.Constant.T_boolVal) : __type__.__underlying__().value;
                            return stdgo.Go.asInterface(!_y);
                        };
                    };
                };
            };
            @:label("Error") throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("invalid unary operation %s%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_op)), stdgo.Go.toInterface(_y)));
        });
        throw "controlFlow did not return";
    }
function _ord(_x:Value):stdgo.StdGoTypes.GoInt {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : T_unknownVal))) {
                return (0 : stdgo.StdGoTypes.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : T_boolVal)) || stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.Ref<T_stringVal>))) {
                return (1 : stdgo.StdGoTypes.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : T_int64Val))) {
                return (2 : stdgo.StdGoTypes.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : T_intVal))) {
                return (3 : stdgo.StdGoTypes.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : T_ratVal))) {
                return (4 : stdgo.StdGoTypes.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : T_floatVal))) {
                return (5 : stdgo.StdGoTypes.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : T_complexVal))) {
                return (6 : stdgo.StdGoTypes.GoInt);
            } else {
                return (-1 : stdgo.StdGoTypes.GoInt);
            };
        };
    }
/**
    // match returns the matching representation (same type) with the
    // smallest complexity for two values x and y. If one of them is
    // numeric, both of them must be numeric. If one of them is Unknown
    // or invalid (say, nil) both results are that value.
**/
function _match(_x:Value, _y:Value):{ var _0 : Value; var _1 : Value; } {
        var _0:Value = (null : stdgo.go.constant.Constant.Value), _1:Value = (null : stdgo.go.constant.Constant.Value);
        {
            var __0:stdgo.StdGoTypes.GoInt = _ord(_x), __1:stdgo.StdGoTypes.GoInt = _ord(_y), _oy:stdgo.StdGoTypes.GoInt = __1, _ox:stdgo.StdGoTypes.GoInt = __0;
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
function _match0(_x:Value, _y:Value):{ var _0 : Value; var _1 : Value; } {
        var _0:Value = (null : stdgo.go.constant.Constant.Value), _1:Value = (null : stdgo.go.constant.Constant.Value);
        {
            final __type__ = _y;
            if (stdgo.Go.typeEquals((__type__ : T_intVal))) {
                {
                    final __type__ = _x;
                    if (stdgo.Go.typeEquals((__type__ : T_int64Val))) {
                        var _x1:stdgo.go.constant.Constant.T_int64Val = __type__ == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__ == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__.__underlying__().value;
                        return { _0 : stdgo.Go.asInterface(_i64toi(_x1)), _1 : _y };
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : T_ratVal))) {
                {
                    final __type__ = _x;
                    if (stdgo.Go.typeEquals((__type__ : T_int64Val))) {
                        var _x1:stdgo.go.constant.Constant.T_int64Val = __type__ == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__ == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__.__underlying__().value;
                        return { _0 : stdgo.Go.asInterface(_i64tor(_x1)), _1 : _y };
                    } else if (stdgo.Go.typeEquals((__type__ : T_intVal))) {
                        var _x1:stdgo.go.constant.Constant.T_intVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__.__underlying__().value;
                        return { _0 : stdgo.Go.asInterface(_itor(_x1?.__copy__())), _1 : _y };
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : T_floatVal))) {
                {
                    final __type__ = _x;
                    if (stdgo.Go.typeEquals((__type__ : T_int64Val))) {
                        var _x1:stdgo.go.constant.Constant.T_int64Val = __type__ == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__ == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__.__underlying__().value;
                        return { _0 : stdgo.Go.asInterface(_i64tof(_x1)), _1 : _y };
                    } else if (stdgo.Go.typeEquals((__type__ : T_intVal))) {
                        var _x1:stdgo.go.constant.Constant.T_intVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__.__underlying__().value;
                        return { _0 : stdgo.Go.asInterface(_itof(_x1?.__copy__())), _1 : _y };
                    } else if (stdgo.Go.typeEquals((__type__ : T_ratVal))) {
                        var _x1:stdgo.go.constant.Constant.T_ratVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_ratVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_ratVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_ratVal) : __type__.__underlying__().value;
                        return { _0 : stdgo.Go.asInterface(_rtof(_x1?.__copy__())), _1 : _y };
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : T_complexVal))) {
                return { _0 : stdgo.Go.asInterface(_vtoc(_x)), _1 : _y };
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
        stdgo.internal.Macro.controlFlow({
            var __tmp__ = _match(_x_, _y_), _x:stdgo.go.constant.Constant.Value = __tmp__._0, _y:stdgo.go.constant.Constant.Value = __tmp__._1;
            {
                final __type__ = _x;
                if (stdgo.Go.typeEquals((__type__ : T_unknownVal))) {
                    var _x:stdgo.go.constant.Constant.T_unknownVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__.__underlying__().value;
                    return stdgo.Go.asInterface(_x);
                } else if (stdgo.Go.typeEquals((__type__ : T_boolVal))) {
                    var _x:stdgo.go.constant.Constant.T_boolVal = __type__ == null ? (false : stdgo.go.constant.Constant.T_boolVal) : __type__.__underlying__() == null ? (false : stdgo.go.constant.Constant.T_boolVal) : __type__ == null ? (false : stdgo.go.constant.Constant.T_boolVal) : __type__.__underlying__().value;
                    var _y:stdgo.go.constant.Constant.T_boolVal = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : T_boolVal)) : T_boolVal);
                    {
                        final __value__ = _op;
                        if (__value__ == ((34 : stdgo.go.token.Token.Token))) {
                            return stdgo.Go.asInterface(_x && _y);
                        } else if (__value__ == ((35 : stdgo.go.token.Token.Token))) {
                            return stdgo.Go.asInterface(_x || _y);
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : T_int64Val))) {
                    var _x:stdgo.go.constant.Constant.T_int64Val = __type__ == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__ == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__.__underlying__().value;
                    var _a:stdgo.StdGoTypes.GoInt64 = (_x : stdgo.StdGoTypes.GoInt64);
                    var _b:stdgo.StdGoTypes.GoInt64 = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : T_int64Val)) : T_int64Val) : stdgo.StdGoTypes.GoInt64);
                    var _c:stdgo.StdGoTypes.GoInt64 = (0 : stdgo.StdGoTypes.GoInt64);
                    {
                        final __value__ = _op;
                        if (__value__ == ((12 : stdgo.go.token.Token.Token))) {
                            if (!_is63bit(_a) || !_is63bit(_b)) {
                                return _makeInt(_newInt().add(stdgo.math.big.Big.newInt(_a), stdgo.math.big.Big.newInt(_b)));
                            };
                            _c = _a + _b;
                        } else if (__value__ == ((13 : stdgo.go.token.Token.Token))) {
                            if (!_is63bit(_a) || !_is63bit(_b)) {
                                return _makeInt(_newInt().sub(stdgo.math.big.Big.newInt(_a), stdgo.math.big.Big.newInt(_b)));
                            };
                            _c = _a - _b;
                        } else if (__value__ == ((14 : stdgo.go.token.Token.Token))) {
                            if (!_is32bit(_a) || !_is32bit(_b)) {
                                return _makeInt(_newInt().mul(stdgo.math.big.Big.newInt(_a), stdgo.math.big.Big.newInt(_b)));
                            };
                            _c = _a * _b;
                        } else if (__value__ == ((15 : stdgo.go.token.Token.Token))) {
                            return _makeRat(stdgo.math.big.Big.newRat(_a, _b));
                        } else if (__value__ == ((26 : stdgo.go.token.Token.Token))) {
                            _c = _a / _b;
                        } else if (__value__ == ((16 : stdgo.go.token.Token.Token))) {
                            _c = _a % _b;
                        } else if (__value__ == ((17 : stdgo.go.token.Token.Token))) {
                            _c = _a & _b;
                        } else if (__value__ == ((18 : stdgo.go.token.Token.Token))) {
                            _c = _a | _b;
                        } else if (__value__ == ((19 : stdgo.go.token.Token.Token))) {
                            _c = _a ^ _b;
                        } else if (__value__ == ((22 : stdgo.go.token.Token.Token))) {
                            _c = _a & (_b ^ (-1i32 : stdgo.StdGoTypes.GoInt));
                        } else {
                            @:goto "Error";
                        };
                    };
                    return stdgo.Go.asInterface((_c : T_int64Val));
                } else if (stdgo.Go.typeEquals((__type__ : T_intVal))) {
                    var _x:stdgo.go.constant.Constant.T_intVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__.__underlying__().value;
                    var _a = _x._val;
                    var _b = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : T_intVal)) : T_intVal)._val;
                    var _c = _newInt();
                    {
                        final __value__ = _op;
                        if (__value__ == ((12 : stdgo.go.token.Token.Token))) {
                            _c.add(_a, _b);
                        } else if (__value__ == ((13 : stdgo.go.token.Token.Token))) {
                            _c.sub(_a, _b);
                        } else if (__value__ == ((14 : stdgo.go.token.Token.Token))) {
                            _c.mul(_a, _b);
                        } else if (__value__ == ((15 : stdgo.go.token.Token.Token))) {
                            return _makeRat(_newRat().setFrac(_a, _b));
                        } else if (__value__ == ((26 : stdgo.go.token.Token.Token))) {
                            _c.quo(_a, _b);
                        } else if (__value__ == ((16 : stdgo.go.token.Token.Token))) {
                            _c.rem(_a, _b);
                        } else if (__value__ == ((17 : stdgo.go.token.Token.Token))) {
                            _c.and(_a, _b);
                        } else if (__value__ == ((18 : stdgo.go.token.Token.Token))) {
                            _c.or(_a, _b);
                        } else if (__value__ == ((19 : stdgo.go.token.Token.Token))) {
                            _c.xor(_a, _b);
                        } else if (__value__ == ((22 : stdgo.go.token.Token.Token))) {
                            _c.andNot(_a, _b);
                        } else {
                            @:goto "Error";
                        };
                    };
                    return _makeInt(_c);
                } else if (stdgo.Go.typeEquals((__type__ : T_ratVal))) {
                    var _x:stdgo.go.constant.Constant.T_ratVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_ratVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_ratVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_ratVal) : __type__.__underlying__().value;
                    var _a = _x._val;
                    var _b = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : T_ratVal)) : T_ratVal)._val;
                    var _c = _newRat();
                    {
                        final __value__ = _op;
                        if (__value__ == ((12 : stdgo.go.token.Token.Token))) {
                            _c.add(_a, _b);
                        } else if (__value__ == ((13 : stdgo.go.token.Token.Token))) {
                            _c.sub(_a, _b);
                        } else if (__value__ == ((14 : stdgo.go.token.Token.Token))) {
                            _c.mul(_a, _b);
                        } else if (__value__ == ((15 : stdgo.go.token.Token.Token))) {
                            _c.quo(_a, _b);
                        } else {
                            @:goto "Error";
                        };
                    };
                    return _makeRat(_c);
                } else if (stdgo.Go.typeEquals((__type__ : T_floatVal))) {
                    var _x:stdgo.go.constant.Constant.T_floatVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_floatVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_floatVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_floatVal) : __type__.__underlying__().value;
                    var _a = _x._val;
                    var _b = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : T_floatVal)) : T_floatVal)._val;
                    var _c = _newFloat();
                    {
                        final __value__ = _op;
                        if (__value__ == ((12 : stdgo.go.token.Token.Token))) {
                            _c.add(_a, _b);
                        } else if (__value__ == ((13 : stdgo.go.token.Token.Token))) {
                            _c.sub(_a, _b);
                        } else if (__value__ == ((14 : stdgo.go.token.Token.Token))) {
                            _c.mul(_a, _b);
                        } else if (__value__ == ((15 : stdgo.go.token.Token.Token))) {
                            _c.quo(_a, _b);
                        } else {
                            @:goto "Error";
                        };
                    };
                    return _makeFloat(_c);
                } else if (stdgo.Go.typeEquals((__type__ : T_complexVal))) {
                    var _x:stdgo.go.constant.Constant.T_complexVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_complexVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_complexVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_complexVal) : __type__.__underlying__().value;
                    var _y:stdgo.go.constant.Constant.T_complexVal = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : T_complexVal)) : T_complexVal)?.__copy__();
                    var __0:stdgo.go.constant.Constant.Value = _x._re, __1:stdgo.go.constant.Constant.Value = _x._im, _b:stdgo.go.constant.Constant.Value = __1, _a:stdgo.go.constant.Constant.Value = __0;
                    var __0:stdgo.go.constant.Constant.Value = _y._re, __1:stdgo.go.constant.Constant.Value = _y._im, _d:stdgo.go.constant.Constant.Value = __1, _c:stdgo.go.constant.Constant.Value = __0;
                    var __0:Value = (null : stdgo.go.constant.Constant.Value), __1:Value = (null : stdgo.go.constant.Constant.Value), _im:Value = __1, _re:Value = __0;
                    {
                        final __value__ = _op;
                        if (__value__ == ((12 : stdgo.go.token.Token.Token))) {
                            _re = _add(_a, _c);
                            _im = _add(_b, _d);
                        } else if (__value__ == ((13 : stdgo.go.token.Token.Token))) {
                            _re = _sub(_a, _c);
                            _im = _sub(_b, _d);
                        } else if (__value__ == ((14 : stdgo.go.token.Token.Token))) {
                            var _ac:stdgo.go.constant.Constant.Value = _mul(_a, _c);
                            var _bd:stdgo.go.constant.Constant.Value = _mul(_b, _d);
                            var _bc:stdgo.go.constant.Constant.Value = _mul(_b, _c);
                            var _ad:stdgo.go.constant.Constant.Value = _mul(_a, _d);
                            _re = _sub(_ac, _bd);
                            _im = _add(_bc, _ad);
                        } else if (__value__ == ((15 : stdgo.go.token.Token.Token))) {
                            var _ac:stdgo.go.constant.Constant.Value = _mul(_a, _c);
                            var _bd:stdgo.go.constant.Constant.Value = _mul(_b, _d);
                            var _bc:stdgo.go.constant.Constant.Value = _mul(_b, _c);
                            var _ad:stdgo.go.constant.Constant.Value = _mul(_a, _d);
                            var _cc:stdgo.go.constant.Constant.Value = _mul(_c, _c);
                            var _dd:stdgo.go.constant.Constant.Value = _mul(_d, _d);
                            var _s:stdgo.go.constant.Constant.Value = _add(_cc, _dd);
                            _re = _add(_ac, _bd);
                            _re = _quo(_re, _s);
                            _im = _sub(_bc, _ad);
                            _im = _quo(_im, _s);
                        } else {
                            @:goto "Error";
                        };
                    };
                    return _makeComplex(_re, _im);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.Ref<T_stringVal>))) {
                    var _x:stdgo.StdGoTypes.Ref<stdgo.go.constant.Constant.T_stringVal> = __type__ == null ? (null : stdgo.StdGoTypes.Ref<stdgo.go.constant.Constant.T_stringVal>) : __type__.__underlying__() == null ? (null : stdgo.StdGoTypes.Ref<stdgo.go.constant.Constant.T_stringVal>) : __type__ == null ? (null : stdgo.StdGoTypes.Ref<stdgo.go.constant.Constant.T_stringVal>) : __type__.__underlying__().value;
                    if (_op == ((12 : stdgo.go.token.Token.Token))) {
                        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _l : _x, _r : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.StdGoTypes.Ref<T_stringVal>)) : stdgo.StdGoTypes.Ref<T_stringVal>) } : T_stringVal)) : stdgo.StdGoTypes.Ref<stdgo.go.constant.Constant.T_stringVal>));
                    };
                };
            };
            @:label("Error") throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("invalid binary operation %v %s %v" : stdgo.GoString), stdgo.Go.toInterface(_x_), stdgo.Go.toInterface(stdgo.Go.asInterface(_op)), stdgo.Go.toInterface(_y_)));
        });
        throw "controlFlow did not return";
    }
function _add(_x:Value, _y:Value):Value {
        return binaryOp(_x, (12 : stdgo.go.token.Token.Token), _y);
    }
function _sub(_x:Value, _y:Value):Value {
        return binaryOp(_x, (13 : stdgo.go.token.Token.Token), _y);
    }
function _mul(_x:Value, _y:Value):Value {
        return binaryOp(_x, (14 : stdgo.go.token.Token.Token), _y);
    }
function _quo(_x:Value, _y:Value):Value {
        return binaryOp(_x, (15 : stdgo.go.token.Token.Token), _y);
    }
/**
    // Shift returns the result of the shift expression x op s
    // with op == token.SHL or token.SHR (<< or >>). x must be
    // an Int or an Unknown. If x is Unknown, the result is x.
**/
function shift(_x:Value, _op:stdgo.go.token.Token.Token, _s:stdgo.StdGoTypes.GoUInt):Value {
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : T_unknownVal))) {
                var _x:stdgo.go.constant.Constant.T_unknownVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__.__underlying__().value;
                return stdgo.Go.asInterface(_x);
            } else if (stdgo.Go.typeEquals((__type__ : T_int64Val))) {
                var _x:stdgo.go.constant.Constant.T_int64Val = __type__ == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__ == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__.__underlying__().value;
                if (_s == ((0u32 : stdgo.StdGoTypes.GoUInt))) {
                    return stdgo.Go.asInterface(_x);
                };
                {
                    final __value__ = _op;
                    if (__value__ == ((20 : stdgo.go.token.Token.Token))) {
                        var _z = _i64toi(_x)._val;
                        return _makeInt(_z.lsh(_z, _s));
                    } else if (__value__ == ((21 : stdgo.go.token.Token.Token))) {
                        return stdgo.Go.asInterface(_x >> _s);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : T_intVal))) {
                var _x:stdgo.go.constant.Constant.T_intVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__.__underlying__().value;
                if (_s == ((0u32 : stdgo.StdGoTypes.GoUInt))) {
                    return stdgo.Go.asInterface(_x);
                };
                var _z = _newInt();
                {
                    final __value__ = _op;
                    if (__value__ == ((20 : stdgo.go.token.Token.Token))) {
                        return _makeInt(_z.lsh(_x._val, _s));
                    } else if (__value__ == ((21 : stdgo.go.token.Token.Token))) {
                        return _makeInt(_z.rsh(_x._val, _s));
                    };
                };
            };
        };
        throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("invalid shift %v %s %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(stdgo.Go.asInterface(_op)), stdgo.Go.toInterface(_s)));
    }
function _cmpZero(_x:stdgo.StdGoTypes.GoInt, _op:stdgo.go.token.Token.Token):Bool {
        {
            final __value__ = _op;
            if (__value__ == ((39 : stdgo.go.token.Token.Token))) {
                return _x == ((0 : stdgo.StdGoTypes.GoInt));
            } else if (__value__ == ((44 : stdgo.go.token.Token.Token))) {
                return _x != ((0 : stdgo.StdGoTypes.GoInt));
            } else if (__value__ == ((40 : stdgo.go.token.Token.Token))) {
                return _x < (0 : stdgo.StdGoTypes.GoInt);
            } else if (__value__ == ((45 : stdgo.go.token.Token.Token))) {
                return _x <= (0 : stdgo.StdGoTypes.GoInt);
            } else if (__value__ == ((41 : stdgo.go.token.Token.Token))) {
                return _x > (0 : stdgo.StdGoTypes.GoInt);
            } else if (__value__ == ((46 : stdgo.go.token.Token.Token))) {
                return _x >= (0 : stdgo.StdGoTypes.GoInt);
            };
        };
        throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("invalid comparison %v %s 0" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(stdgo.Go.asInterface(_op))));
    }
/**
    // Compare returns the result of the comparison x op y.
    // The comparison must be defined for the operands.
    // If one of the operands is Unknown, the result is
    // false.
**/
function compare(_x_:Value, _op:stdgo.go.token.Token.Token, _y_:Value):Bool {
        var __tmp__ = _match(_x_, _y_), _x:stdgo.go.constant.Constant.Value = __tmp__._0, _y:stdgo.go.constant.Constant.Value = __tmp__._1;
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : T_unknownVal))) {
                var _x:stdgo.go.constant.Constant.T_unknownVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_unknownVal) : __type__.__underlying__().value;
                return false;
            } else if (stdgo.Go.typeEquals((__type__ : T_boolVal))) {
                var _x:stdgo.go.constant.Constant.T_boolVal = __type__ == null ? (false : stdgo.go.constant.Constant.T_boolVal) : __type__.__underlying__() == null ? (false : stdgo.go.constant.Constant.T_boolVal) : __type__ == null ? (false : stdgo.go.constant.Constant.T_boolVal) : __type__.__underlying__().value;
                var _y:stdgo.go.constant.Constant.T_boolVal = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : T_boolVal)) : T_boolVal);
                {
                    final __value__ = _op;
                    if (__value__ == ((39 : stdgo.go.token.Token.Token))) {
                        return _x == (_y);
                    } else if (__value__ == ((44 : stdgo.go.token.Token.Token))) {
                        return _x != (_y);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : T_int64Val))) {
                var _x:stdgo.go.constant.Constant.T_int64Val = __type__ == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__ == null ? ((0 : stdgo.StdGoTypes.GoInt64) : stdgo.go.constant.Constant.T_int64Val) : __type__.__underlying__().value;
                var _y:stdgo.go.constant.Constant.T_int64Val = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : T_int64Val)) : T_int64Val);
                {
                    final __value__ = _op;
                    if (__value__ == ((39 : stdgo.go.token.Token.Token))) {
                        return _x == (_y);
                    } else if (__value__ == ((44 : stdgo.go.token.Token.Token))) {
                        return _x != (_y);
                    } else if (__value__ == ((40 : stdgo.go.token.Token.Token))) {
                        return _x < _y;
                    } else if (__value__ == ((45 : stdgo.go.token.Token.Token))) {
                        return _x <= _y;
                    } else if (__value__ == ((41 : stdgo.go.token.Token.Token))) {
                        return _x > _y;
                    } else if (__value__ == ((46 : stdgo.go.token.Token.Token))) {
                        return _x >= _y;
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : T_intVal))) {
                var _x:stdgo.go.constant.Constant.T_intVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_intVal) : __type__.__underlying__().value;
                return _cmpZero(_x._val.cmp((stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : T_intVal)) : T_intVal)._val), _op);
            } else if (stdgo.Go.typeEquals((__type__ : T_ratVal))) {
                var _x:stdgo.go.constant.Constant.T_ratVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_ratVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_ratVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_ratVal) : __type__.__underlying__().value;
                return _cmpZero(_x._val.cmp((stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : T_ratVal)) : T_ratVal)._val), _op);
            } else if (stdgo.Go.typeEquals((__type__ : T_floatVal))) {
                var _x:stdgo.go.constant.Constant.T_floatVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_floatVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_floatVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_floatVal) : __type__.__underlying__().value;
                return _cmpZero(_x._val.cmp((stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : T_floatVal)) : T_floatVal)._val), _op);
            } else if (stdgo.Go.typeEquals((__type__ : T_complexVal))) {
                var _x:stdgo.go.constant.Constant.T_complexVal = __type__ == null ? ({} : stdgo.go.constant.Constant.T_complexVal) : __type__.__underlying__() == null ? ({} : stdgo.go.constant.Constant.T_complexVal) : __type__ == null ? ({} : stdgo.go.constant.Constant.T_complexVal) : __type__.__underlying__().value;
                var _y:stdgo.go.constant.Constant.T_complexVal = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : T_complexVal)) : T_complexVal)?.__copy__();
                var _re:Bool = compare(_x._re, (39 : stdgo.go.token.Token.Token), _y._re);
                var _im:Bool = compare(_x._im, (39 : stdgo.go.token.Token.Token), _y._im);
                {
                    final __value__ = _op;
                    if (__value__ == ((39 : stdgo.go.token.Token.Token))) {
                        return _re && _im;
                    } else if (__value__ == ((44 : stdgo.go.token.Token.Token))) {
                        return !_re || !_im;
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.Ref<T_stringVal>))) {
                var _x:stdgo.StdGoTypes.Ref<stdgo.go.constant.Constant.T_stringVal> = __type__ == null ? (null : stdgo.StdGoTypes.Ref<stdgo.go.constant.Constant.T_stringVal>) : __type__.__underlying__() == null ? (null : stdgo.StdGoTypes.Ref<stdgo.go.constant.Constant.T_stringVal>) : __type__ == null ? (null : stdgo.StdGoTypes.Ref<stdgo.go.constant.Constant.T_stringVal>) : __type__.__underlying__().value;
                var _xs:stdgo.GoString = _x._string();
                var _ys:stdgo.GoString = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.StdGoTypes.Ref<T_stringVal>)) : stdgo.StdGoTypes.Ref<T_stringVal>)._string();
                {
                    final __value__ = _op;
                    if (__value__ == ((39 : stdgo.go.token.Token.Token))) {
                        return _xs == (_ys);
                    } else if (__value__ == ((44 : stdgo.go.token.Token.Token))) {
                        return _xs != (_ys);
                    } else if (__value__ == ((40 : stdgo.go.token.Token.Token))) {
                        return _xs < _ys;
                    } else if (__value__ == ((45 : stdgo.go.token.Token.Token))) {
                        return _xs <= _ys;
                    } else if (__value__ == ((41 : stdgo.go.token.Token.Token))) {
                        return _xs > _ys;
                    } else if (__value__ == ((46 : stdgo.go.token.Token.Token))) {
                        return _xs >= _ys;
                    };
                };
            };
        };
        throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("invalid comparison %v %s %v" : stdgo.GoString), stdgo.Go.toInterface(_x_), stdgo.Go.toInterface(stdgo.Go.asInterface(_op)), stdgo.Go.toInterface(_y_)));
    }
function _testNumbers(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _kind:stdgo.go.token.Token.Token, _tests:stdgo.Slice<stdgo.GoString>):Void {
        for (__0 => _test in _tests) {
            var _a = stdgo.strings.Strings.split(_test, (" = " : stdgo.GoString));
            if ((_a.length) != ((2 : stdgo.StdGoTypes.GoInt))) {
                _t.errorf(("invalid test case: %s" : stdgo.GoString), stdgo.Go.toInterface(_test));
                continue;
            };
            var _x:stdgo.go.constant.Constant.Value = makeFromLiteral(_a[(0 : stdgo.StdGoTypes.GoInt)], _kind, (0u32 : stdgo.StdGoTypes.GoUInt));
            var _y:Value = (null : stdgo.go.constant.Constant.Value);
            if (_a[(1 : stdgo.StdGoTypes.GoInt)] == (("?" : stdgo.GoString))) {
                _y = makeUnknown();
            } else {
                {
                    var __tmp__ = stdgo.strings.Strings.cut(_a[(1 : stdgo.StdGoTypes.GoInt)], ("/" : stdgo.GoString)), _ns:stdgo.GoString = __tmp__._0, _ds:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
                    if (_ok && (_kind == (6 : stdgo.go.token.Token.Token))) {
                        var _n:stdgo.go.constant.Constant.Value = makeFromLiteral(_ns, (5 : stdgo.go.token.Token.Token), (0u32 : stdgo.StdGoTypes.GoUInt));
                        var _d:stdgo.go.constant.Constant.Value = makeFromLiteral(_ds, (5 : stdgo.go.token.Token.Token), (0u32 : stdgo.StdGoTypes.GoUInt));
                        _y = binaryOp(_n, (15 : stdgo.go.token.Token.Token), _d);
                    } else {
                        _y = makeFromLiteral(_a[(1 : stdgo.StdGoTypes.GoInt)], _kind, (0u32 : stdgo.StdGoTypes.GoUInt));
                    };
                };
                if (_y.kind() == ((0 : stdgo.go.constant.Constant.Kind))) {
                    throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("invalid test case: %s %d" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(stdgo.Go.asInterface(_y.kind()))));
                };
            };
            var _xk:stdgo.go.constant.Constant.Kind = _x.kind();
            var _yk:stdgo.go.constant.Constant.Kind = _y.kind();
            if (_xk != (_yk)) {
                _t.errorf(("%s: got kind %d != %d" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(stdgo.Go.asInterface(_xk)), stdgo.Go.toInterface(stdgo.Go.asInterface(_yk)));
                continue;
            };
            if (_yk == ((0 : stdgo.go.constant.Constant.Kind))) {
                continue;
            };
            if (!compare(_x, (39 : stdgo.go.token.Token.Token), _y)) {
                _t.errorf(("%s: %s != %s" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y));
            };
        };
    }
/**
    // TestNumbers verifies that differently written literals
    // representing the same number do have the same value.
**/
function testNumbers(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        _testNumbers(_t, (5 : stdgo.go.token.Token.Token), _intTests);
        _testNumbers(_t, (6 : stdgo.go.token.Token.Token), _floatTests);
        _testNumbers(_t, (7 : stdgo.go.token.Token.Token), _imagTests);
    }
function testOps(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _test in _opTests) {
            var _a = stdgo.strings.Strings.split(_test, (" " : stdgo.GoString));
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            var __0:Value = (null : stdgo.go.constant.Constant.Value), __1:Value = (null : stdgo.go.constant.Constant.Value), _x0:Value = __1, _x:Value = __0;
            {
                final __value__ = (_a.length);
                if (__value__ == ((4 : stdgo.StdGoTypes.GoInt))) {} else if (__value__ == ((5 : stdgo.StdGoTypes.GoInt))) {
                    {
                        final __tmp__0 = _val(_a[(0 : stdgo.StdGoTypes.GoInt)]);
                        final __tmp__1 = _val(_a[(0 : stdgo.StdGoTypes.GoInt)]);
                        _x = __tmp__0;
                        _x0 = __tmp__1;
                    };
                    _i = (1 : stdgo.StdGoTypes.GoInt);
                } else {
                    _t.errorf(("invalid test case: %s" : stdgo.GoString), stdgo.Go.toInterface(_test));
                    continue;
                };
            };
            var __tmp__ = (_optab != null && _optab.exists(_a[(_i : stdgo.StdGoTypes.GoInt)]) ? { value : _optab[_a[(_i : stdgo.StdGoTypes.GoInt)]], ok : true } : { value : ((0 : stdgo.StdGoTypes.GoInt) : stdgo.go.token.Token.Token), ok : false }), _op:stdgo.go.token.Token.Token = __tmp__.value, _ok:Bool = __tmp__.ok;
            if (!_ok) {
                throw stdgo.Go.toInterface(("missing optab entry for " : stdgo.GoString) + _a[(_i : stdgo.StdGoTypes.GoInt)]);
            };
            var __0:stdgo.go.constant.Constant.Value = _val(_a[(_i + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)]), __1:stdgo.go.constant.Constant.Value = _val(_a[(_i + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)]), _y0:stdgo.go.constant.Constant.Value = __1, _y:stdgo.go.constant.Constant.Value = __0;
            var _got:stdgo.go.constant.Constant.Value = _doOp(_x, _op, _y);
            var _want:stdgo.go.constant.Constant.Value = _val(_a[(_i + (3 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)]);
            if (!_eql(_got, _want)) {
                _t.errorf(("%s: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                continue;
            };
            if ((_x0 != null) && !_eql(_x, _x0)) {
                _t.errorf(("%s: x changed to %s" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_x));
                continue;
            };
            if (!_eql(_y, _y0)) {
                _t.errorf(("%s: y changed to %s" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_y));
                continue;
            };
        };
    }
function _eql(_x:Value, _y:Value):Bool {
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : T_unknownVal)) : T_unknownVal), ok : true };
        } catch(_) {
            { value : ({} : stdgo.go.constant.Constant.T_unknownVal), ok : false };
        }, __0 = __tmp__.value, _ux = __tmp__.ok;
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : T_unknownVal)) : T_unknownVal), ok : true };
        } catch(_) {
            { value : ({} : stdgo.go.constant.Constant.T_unknownVal), ok : false };
        }, __1 = __tmp__.value, _uy = __tmp__.ok;
        if (_ux || _uy) {
            return _ux == (_uy);
        };
        return compare(_x, (39 : stdgo.go.token.Token.Token), _y);
    }
function testString(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _test in _stringTests) {
            var _x:stdgo.go.constant.Constant.Value = _val(_test._input);
            {
                var _got:stdgo.GoString = (_x.string() : stdgo.GoString);
                if (_got != (_test._short)) {
                    _t.errorf(("%s: got %q; want %q as short string" : stdgo.GoString), stdgo.Go.toInterface(_test._input), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._short));
                };
            };
            {
                var _got:stdgo.GoString = _x.exactString();
                if (_got != (_test._exact)) {
                    _t.errorf(("%s: got %q; want %q as exact string" : stdgo.GoString), stdgo.Go.toInterface(_test._input), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._exact));
                };
            };
        };
    }
function _val(_lit:stdgo.GoString):Value {
        if ((_lit.length) == ((0 : stdgo.StdGoTypes.GoInt))) {
            return makeUnknown();
        };
        {
            final __value__ = _lit;
            if (__value__ == (("?" : stdgo.GoString))) {
                return makeUnknown();
            } else if (__value__ == (("true" : stdgo.GoString))) {
                return makeBool(true);
            } else if (__value__ == (("false" : stdgo.GoString))) {
                return makeBool(false);
            };
        };
        {
            var __tmp__ = stdgo.strings.Strings.cut(_lit, ("/" : stdgo.GoString)), _as:stdgo.GoString = __tmp__._0, _bs:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (_ok) {
                var _a:stdgo.go.constant.Constant.Value = makeFromLiteral(_as, (5 : stdgo.go.token.Token.Token), (0u32 : stdgo.StdGoTypes.GoUInt));
                var _b:stdgo.go.constant.Constant.Value = makeFromLiteral(_bs, (5 : stdgo.go.token.Token.Token), (0u32 : stdgo.StdGoTypes.GoUInt));
                return binaryOp(_a, (15 : stdgo.go.token.Token.Token), _b);
            };
        };
        var _tok:stdgo.go.token.Token.Token = (5 : stdgo.go.token.Token.Token);
        {
            var __0:stdgo.StdGoTypes.GoUInt8 = _lit[(0 : stdgo.StdGoTypes.GoInt)], __1:stdgo.StdGoTypes.GoUInt8 = _lit[((_lit.length) - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)], _last:stdgo.StdGoTypes.GoUInt8 = __1, _first:stdgo.StdGoTypes.GoUInt8 = __0;
            if ((_first == (34 : stdgo.StdGoTypes.GoUInt8)) || (_first == (96 : stdgo.StdGoTypes.GoUInt8))) {
                _tok = (9 : stdgo.go.token.Token.Token);
                _lit = stdgo.strings.Strings.replaceAll(_lit, ("_" : stdgo.GoString), (" " : stdgo.GoString));
            } else if (_first == ((39 : stdgo.StdGoTypes.GoUInt8))) {
                _tok = (8 : stdgo.go.token.Token.Token);
            } else if (_last == ((105 : stdgo.StdGoTypes.GoUInt8))) {
                _tok = (7 : stdgo.go.token.Token.Token);
            } else {
                if (!stdgo.strings.Strings.hasPrefix(_lit, ("0x" : stdgo.GoString)) && stdgo.strings.Strings.containsAny(_lit, ("./Ee" : stdgo.GoString))) {
                    _tok = (6 : stdgo.go.token.Token.Token);
                };
            };
        };
        return makeFromLiteral(_lit, _tok, (0u32 : stdgo.StdGoTypes.GoUInt));
    }
function _panicHandler(_v:stdgo.StdGoTypes.Ref<Value>):Void {
        {
            final __type__ = ({
                final r = stdgo.Go.recover_exception;
                stdgo.Go.recover_exception = null;
                r;
            });
            if (__type__ == null) {
                var _p:stdgo.StdGoTypes.AnyInterface = __type__ == null ? (null : stdgo.StdGoTypes.AnyInterface) : __type__.__underlying__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                var _p:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                {
                    var __tmp__ = makeString(_p);
                    _v.exactString = __tmp__.exactString;
                    _v.kind = __tmp__.kind;
                    _v.string = __tmp__.string;
                    _v._implementsValue = __tmp__._implementsValue;
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Error))) {
                var _p:stdgo.Error = __type__ == null ? (null : stdgo.Error) : __type__.__underlying__() == null ? (null : stdgo.Error) : __type__ == null ? (null : stdgo.Error) : __type__.__underlying__().value;
                {
                    var __tmp__ = makeString(_p.error());
                    _v.exactString = __tmp__.exactString;
                    _v.kind = __tmp__.kind;
                    _v.string = __tmp__.string;
                    _v._implementsValue = __tmp__._implementsValue;
                };
            } else {
                var _p:stdgo.StdGoTypes.AnyInterface = __type__?.__underlying__();
                throw stdgo.Go.toInterface(_p);
            };
        };
    }
function _doOp(_x:Value, _op:stdgo.go.token.Token.Token, _y:Value):Value {
        var __deferstack__:Array<Void -> Void> = [];
        var _z:Value = (null : stdgo.go.constant.Constant.Value);
        try {
            {
                var _a0 = (stdgo.Go.setRef(_z) : stdgo.StdGoTypes.Ref<stdgo.go.constant.Constant.Value>);
                __deferstack__.unshift(() -> _panicHandler(_a0));
            };
            if (_x == null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return unaryOp(_op, _y, (0u32 : stdgo.StdGoTypes.GoUInt));
                };
            };
            {
                final __value__ = _op;
                if (__value__ == ((39 : stdgo.go.token.Token.Token)) || __value__ == ((44 : stdgo.go.token.Token.Token)) || __value__ == ((40 : stdgo.go.token.Token.Token)) || __value__ == ((45 : stdgo.go.token.Token.Token)) || __value__ == ((41 : stdgo.go.token.Token.Token)) || __value__ == ((46 : stdgo.go.token.Token.Token))) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return makeBool(compare(_x, _op, _y));
                    };
                } else if (__value__ == ((20 : stdgo.go.token.Token.Token)) || __value__ == ((21 : stdgo.go.token.Token.Token))) {
                    var __tmp__ = int64Val(_y), _s:stdgo.StdGoTypes.GoInt64 = __tmp__._0, __0:Bool = __tmp__._1;
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return shift(_x, _op, (_s : stdgo.StdGoTypes.GoUInt));
                    };
                } else {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return binaryOp(_x, _op, _y);
                    };
                };
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _z;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return _z;
        };
    }
function testFractions(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _test in _fracTests) {
            var _x:stdgo.go.constant.Constant.Value = _val(_test);
            var _q:stdgo.go.constant.Constant.Value = binaryOp(num(_x), (15 : stdgo.go.token.Token.Token), denom(_x));
            var _got:stdgo.GoString = (_q.string() : stdgo.GoString);
            var _want:stdgo.GoString = (_x.string() : stdgo.GoString);
            if (_got != (_want)) {
                _t.errorf(("%s: got quotient %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
function testBytes(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _test in _bytesTests) {
            var _x:stdgo.go.constant.Constant.Value = _val(_test);
            var _bytes = bytes(_x);
            if ((sign(_x) == (0 : stdgo.StdGoTypes.GoInt)) && (_bytes.length != (0 : stdgo.StdGoTypes.GoInt))) {
                _t.errorf(("%s: got %v; want empty byte slice" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_bytes));
            };
            {
                var _n:stdgo.StdGoTypes.GoInt = (_bytes.length);
                if ((_n > (0 : stdgo.StdGoTypes.GoInt)) && (_bytes[(_n - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] == (0 : stdgo.StdGoTypes.GoUInt8))) {
                    _t.errorf(("%s: got %v; want no leading 0 byte" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_bytes));
                };
            };
            {
                var _got:stdgo.go.constant.Constant.Value = makeFromBytes(_bytes);
                if (!_eql(_got, _x)) {
                    _t.errorf(("%s: got %s; want %s (bytes = %v)" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_bytes));
                };
            };
        };
    }
function testUnknown(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _u:stdgo.go.constant.Constant.Value = makeUnknown();
        var _values:stdgo.Slice<stdgo.go.constant.Constant.Value> = (new stdgo.Slice<stdgo.go.constant.Constant.Value>(8, 8, _u, makeBool(false), makeString(stdgo.Go.str()), makeInt64((1i64 : stdgo.StdGoTypes.GoInt64)), makeFromLiteral(("\'\'" : stdgo.GoString), (8 : stdgo.go.token.Token.Token), (0u32 : stdgo.StdGoTypes.GoUInt)), makeFromLiteral(("-1234567890123456789012345678901234567890" : stdgo.GoString), (5 : stdgo.go.token.Token.Token), (0u32 : stdgo.StdGoTypes.GoUInt)), makeFloat64((1.2 : stdgo.StdGoTypes.GoFloat64)), makeImag(makeFloat64((1.2 : stdgo.StdGoTypes.GoFloat64)))) : stdgo.Slice<stdgo.go.constant.Constant.Value>);
        for (__0 => _val in _values) {
            var __0:stdgo.go.constant.Constant.Value = _val, __1:stdgo.go.constant.Constant.Value = _u, _y:stdgo.go.constant.Constant.Value = __1, _x:stdgo.go.constant.Constant.Value = __0;
            for (_i in 0 ... (new stdgo.GoArray<stdgo.StdGoTypes.GoInt>(...([].concat([for (i in 0 ... 2) (0 : stdgo.StdGoTypes.GoInt)]))) : stdgo.GoArray<stdgo.StdGoTypes.GoInt>).length.toBasic()) {
                if (_i == ((1 : stdgo.StdGoTypes.GoInt))) {
                    {
                        final __tmp__0 = _y;
                        final __tmp__1 = _x;
                        _x = __tmp__0;
                        _y = __tmp__1;
                    };
                };
                {
                    var _got:stdgo.go.constant.Constant.Value = binaryOp(_x, (12 : stdgo.go.token.Token.Token), _y);
                    if (_got.kind() != ((0 : stdgo.go.constant.Constant.Kind))) {
                        _t.errorf(("%s + %s: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_u));
                    };
                };
                {
                    var _got:Bool = compare(_x, (39 : stdgo.go.token.Token.Token), _y);
                    if (_got) {
                        _t.errorf(("%s == %s: got true; want false" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y));
                    };
                };
            };
        };
    }
function testMakeFloat64(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _zero:stdgo.StdGoTypes.GoFloat64 = (0 : stdgo.StdGoTypes.GoFloat64);
        for (__0 => _arg in (new stdgo.Slice<stdgo.StdGoTypes.GoFloat64>(
10,
10,
(-3.4028234663852886e+38 : stdgo.StdGoTypes.GoFloat64),
(-10 : stdgo.StdGoTypes.GoFloat64),
(-0.5 : stdgo.StdGoTypes.GoFloat64),
-_zero,
_zero,
(1 : stdgo.StdGoTypes.GoFloat64),
(10 : stdgo.StdGoTypes.GoFloat64),
(1.2345678987654321e-15 : stdgo.StdGoTypes.GoFloat64),
(1e+10 : stdgo.StdGoTypes.GoFloat64),
(1.7976931348623157e+308 : stdgo.StdGoTypes.GoFloat64)) : stdgo.Slice<stdgo.StdGoTypes.GoFloat64>)) {
            var _val:stdgo.go.constant.Constant.Value = makeFloat64(_arg);
            if (_val.kind() != ((4 : stdgo.go.constant.Constant.Kind))) {
                _t.errorf(("%v: got kind = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_arg), stdgo.Go.toInterface(stdgo.Go.asInterface(_val.kind())), stdgo.Go.toInterface(stdgo.Go.asInterface((4 : stdgo.go.constant.Constant.Kind))));
            };
            var __tmp__ = float64Val(_val), _got:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _exact:Bool = __tmp__._1;
            if (!_exact || (stdgo.math.Math.float64bits(_got) != stdgo.math.Math.float64bits(_arg + (0 : stdgo.StdGoTypes.GoFloat64)))) {
                _t.errorf(("%v: got %v (exact = %v)" : stdgo.GoString), stdgo.Go.toInterface(_arg), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_exact));
            };
        };
        for (_sign in 0 ... (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(2, 2, (-1 : stdgo.StdGoTypes.GoInt), (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>).length.toBasic()) {
            var _arg:stdgo.StdGoTypes.GoFloat64 = stdgo.math.Math.inf(_sign);
            var _val:stdgo.go.constant.Constant.Value = makeFloat64(_arg);
            if (_val.kind() != ((0 : stdgo.go.constant.Constant.Kind))) {
                _t.errorf(("%v: got kind = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_arg), stdgo.Go.toInterface(stdgo.Go.asInterface(_val.kind())), stdgo.Go.toInterface(stdgo.Go.asInterface((0 : stdgo.go.constant.Constant.Kind))));
            };
        };
    }
function _dup(_k:Kind, _x:stdgo.StdGoTypes.AnyInterface):T_makeTestCase {
        return (new T_makeTestCase(_k, _x, _x) : T_makeTestCase);
    }
function testMake(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _test in (new stdgo.Slice<stdgo.go.constant.Constant.T_makeTestCase>(
9,
9,
(new stdgo.go.constant.Constant.T_makeTestCase((1 : stdgo.go.constant.Constant.Kind), stdgo.Go.toInterface(false), stdgo.Go.toInterface(false)) : stdgo.go.constant.Constant.T_makeTestCase),
(new stdgo.go.constant.Constant.T_makeTestCase((2 : stdgo.go.constant.Constant.Kind), stdgo.Go.toInterface(("hello" : stdgo.GoString)), stdgo.Go.toInterface(("hello" : stdgo.GoString))) : stdgo.go.constant.Constant.T_makeTestCase),
(new stdgo.go.constant.Constant.T_makeTestCase((3 : stdgo.go.constant.Constant.Kind), stdgo.Go.toInterface((1i64 : stdgo.StdGoTypes.GoInt64)), stdgo.Go.toInterface((1i64 : stdgo.StdGoTypes.GoInt64))) : stdgo.go.constant.Constant.T_makeTestCase),
(new stdgo.go.constant.Constant.T_makeTestCase((3 : stdgo.go.constant.Constant.Kind), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo.math.big.Big.newInt((10i64 : stdgo.StdGoTypes.GoInt64)))), stdgo.Go.toInterface((10i64 : stdgo.StdGoTypes.GoInt64))) : stdgo.go.constant.Constant.T_makeTestCase),
(new stdgo.go.constant.Constant.T_makeTestCase((3 : stdgo.go.constant.Constant.Kind), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo.math.big.Big.Int_)) : stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_>).lsh(stdgo.math.big.Big.newInt((1i64 : stdgo.StdGoTypes.GoInt64)), (62u32 : stdgo.StdGoTypes.GoUInt)))), stdgo.Go.toInterface((4611686018427387904i64 : stdgo.StdGoTypes.GoInt64))) : stdgo.go.constant.Constant.T_makeTestCase),
_dup((3 : stdgo.go.constant.Constant.Kind), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo.math.big.Big.Int_)) : stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_>).lsh(stdgo.math.big.Big.newInt((1i64 : stdgo.StdGoTypes.GoInt64)), (63u32 : stdgo.StdGoTypes.GoUInt)))))?.__copy__(),
(new stdgo.go.constant.Constant.T_makeTestCase((4 : stdgo.go.constant.Constant.Kind), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo.math.big.Big.newFloat((0 : stdgo.StdGoTypes.GoFloat64)))), stdgo.Go.toInterface(stdgo.Go.asInterface(_floatVal0._val))) : stdgo.go.constant.Constant.T_makeTestCase),
_dup((4 : stdgo.go.constant.Constant.Kind), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo.math.big.Big.newFloat((2 : stdgo.StdGoTypes.GoFloat64)))))?.__copy__(),
_dup((4 : stdgo.go.constant.Constant.Kind), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo.math.big.Big.newRat((1i64 : stdgo.StdGoTypes.GoInt64), (3i64 : stdgo.StdGoTypes.GoInt64)))))?.__copy__()) : stdgo.Slice<stdgo.go.constant.Constant.T_makeTestCase>)) {
            var _val:stdgo.go.constant.Constant.Value = make(_test._arg);
            var _got:stdgo.StdGoTypes.AnyInterface = val(_val);
            if ((_val.kind() != _test._kind) || (_got != _test._want)) {
                _t.errorf(("got %v (%T, kind = %d); want %v (%T, kind = %d)" : stdgo.GoString), _got, _got, stdgo.Go.toInterface(stdgo.Go.asInterface(_val.kind())), _test._want, _test._want, stdgo.Go.toInterface(stdgo.Go.asInterface(_test._kind)));
            };
        };
    }
function benchmarkStringAdd(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {
            var _size:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_size <= (65536 : stdgo.StdGoTypes.GoInt), _size = _size * ((4 : stdgo.StdGoTypes.GoInt)), {
                _b.run(stdgo.fmt.Fmt.sprint(stdgo.Go.toInterface(_size)), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                    _b.reportAllocs();
                    var _n:stdgo.StdGoTypes.GoInt64 = (0i64 : stdgo.StdGoTypes.GoInt64);
                    {
                        var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                        stdgo.Go.cfor(_i < _b.n, _i++, {
                            var _x:stdgo.go.constant.Constant.Value = makeString(stdgo.strings.Strings.repeat(("x" : stdgo.GoString), (100 : stdgo.StdGoTypes.GoInt)));
                            var _y:stdgo.go.constant.Constant.Value = _x;
                            {
                                var _j:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                                stdgo.Go.cfor(_j < (_size - (1 : stdgo.StdGoTypes.GoInt)), _j++, {
                                    _y = binaryOp(_y, (12 : stdgo.go.token.Token.Token), _x);
                                });
                            };
                            _n = _n + ((stringVal(_y).length : stdgo.StdGoTypes.GoInt64));
                        });
                    };
                    if (_n != ((_b.n : stdgo.StdGoTypes.GoInt64) * (_size : stdgo.StdGoTypes.GoInt64) * (100i64 : stdgo.StdGoTypes.GoInt64))) {
                        _b.fatalf(("bad string %d != %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(((_b.n : stdgo.StdGoTypes.GoInt64) * (_size : stdgo.StdGoTypes.GoInt64)) * (100i64 : stdgo.StdGoTypes.GoInt64)));
                    };
                });
            });
        };
    }
function testBitLen(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _test in _bitLenTests) {
            {
                var _got:stdgo.StdGoTypes.GoInt = bitLen(makeInt64(_test._val));
                if (_got != (_test._want)) {
                    _t.errorf(("%v: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._val), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
class T_unknownVal_asInterface {
    @:keep
    public dynamic function _implementsValue():Void __self__.value._implementsValue();
    @:keep
    public dynamic function exactString():stdgo.GoString return __self__.value.exactString();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function kind():Kind return __self__.value.kind();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_unknownVal>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.constant.Constant.T_unknownVal_asInterface) class T_unknownVal_static_extension {
    @:keep
    static public function _implementsValue( _:T_unknownVal):Void {
        @:recv var _:T_unknownVal = _?.__copy__();
    }
    @:keep
    static public function exactString( _x:T_unknownVal):stdgo.GoString {
        @:recv var _x:T_unknownVal = _x?.__copy__();
        return (_x.string() : stdgo.GoString);
    }
    @:keep
    static public function string( _:T_unknownVal):stdgo.GoString {
        @:recv var _:T_unknownVal = _?.__copy__();
        return ("unknown" : stdgo.GoString);
    }
    @:keep
    static public function kind( _:T_unknownVal):Kind {
        @:recv var _:T_unknownVal = _?.__copy__();
        return (0 : stdgo.go.constant.Constant.Kind);
    }
}
class T_stringVal_asInterface {
    @:keep
    public dynamic function _implementsValue():Void __self__.value._implementsValue();
    @:keep
    public dynamic function exactString():stdgo.GoString return __self__.value.exactString();
    /**
        // appendReverse appends to list all of x's subpieces, but in reverse,
        // and returns the result. Appending the reversal allows processing
        // the right side in a recursive call and the left side in a loop.
        // Because a chain like a + b + c + d + e is actually represented
        // as ((((a + b) + c) + d) + e), the left-side loop avoids deep recursion.
        // x must be locked.
    **/
    @:keep
    public dynamic function _appendReverse(_list:stdgo.Slice<stdgo.GoString>):stdgo.Slice<stdgo.GoString> return __self__.value._appendReverse(_list);
    /**
        // string constructs and returns the actual string literal value.
        // If x represents an addition, then it rewrites x to be a single
        // string, to speed future calls. This lazy construction avoids
        // building different string values for all subpieces of a large
        // concatenation. See golang.org/issue/23348.
    **/
    @:keep
    public dynamic function _string():stdgo.GoString return __self__.value._string();
    /**
        // String returns a possibly shortened quoted form of the String value.
    **/
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function kind():Kind return __self__.value.kind();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_stringVal>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.constant.Constant.T_stringVal_asInterface) class T_stringVal_static_extension {
    @:keep
    static public function _implementsValue( _:stdgo.StdGoTypes.Ref<T_stringVal>):Void {
        @:recv var _:stdgo.StdGoTypes.Ref<T_stringVal> = _;
    }
    @:keep
    static public function exactString( _x:stdgo.StdGoTypes.Ref<T_stringVal>):stdgo.GoString {
        @:recv var _x:stdgo.StdGoTypes.Ref<T_stringVal> = _x;
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
    static public function _appendReverse( _x:stdgo.StdGoTypes.Ref<T_stringVal>, _list:stdgo.Slice<stdgo.GoString>):stdgo.Slice<stdgo.GoString> {
        @:recv var _x:stdgo.StdGoTypes.Ref<T_stringVal> = _x;
        var _y = _x;
        while (_y._r != null && ((_y._r : Dynamic).__nil__ == null || !(_y._r : Dynamic).__nil__)) {
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
        var _s:stdgo.GoString = _y._s;
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
    static public function _string( _x:stdgo.StdGoTypes.Ref<T_stringVal>):stdgo.GoString {
        @:recv var _x:stdgo.StdGoTypes.Ref<T_stringVal> = _x;
        _x._mu.lock();
        if (_x._l != null && ((_x._l : Dynamic).__nil__ == null || !(_x._l : Dynamic).__nil__)) {
            _x._s = stdgo.strings.Strings.join(_reverse(_x._appendReverse((null : stdgo.Slice<stdgo.GoString>))), stdgo.Go.str());
            _x._l = null;
            _x._r = null;
        };
        var _s:stdgo.GoString = _x._s;
        _x._mu.unlock();
        return _s;
    }
    /**
        // String returns a possibly shortened quoted form of the String value.
    **/
    @:keep
    static public function string( _x:stdgo.StdGoTypes.Ref<T_stringVal>):stdgo.GoString {
        @:recv var _x:stdgo.StdGoTypes.Ref<T_stringVal> = _x;
        {};
        var _s:stdgo.GoString = stdgo.strconv.Strconv.quote(_x._string());
        if (stdgo.unicode.utf8.Utf8.runeCountInString(_s) > (72 : stdgo.StdGoTypes.GoInt)) {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            {
                var _n:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_n < (69 : stdgo.StdGoTypes.GoInt), _n++, {
                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString)), __0:stdgo.StdGoTypes.GoInt32 = __tmp__._0, _size:stdgo.StdGoTypes.GoInt = __tmp__._1;
                    _i = _i + (_size);
                });
            };
            _s = (_s.__slice__(0, _i) : stdgo.GoString) + ("..." : stdgo.GoString);
        };
        return _s;
    }
    @:keep
    static public function kind( _:stdgo.StdGoTypes.Ref<T_stringVal>):Kind {
        @:recv var _:stdgo.StdGoTypes.Ref<T_stringVal> = _;
        return (2 : stdgo.go.constant.Constant.Kind);
    }
}
class T_intVal_asInterface {
    @:keep
    public dynamic function _implementsValue():Void __self__.value._implementsValue();
    @:keep
    public dynamic function exactString():stdgo.GoString return __self__.value.exactString();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function kind():Kind return __self__.value.kind();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_intVal>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.constant.Constant.T_intVal_asInterface) class T_intVal_static_extension {
    @:keep
    static public function _implementsValue( _:T_intVal):Void {
        @:recv var _:T_intVal = _?.__copy__();
    }
    @:keep
    static public function exactString( _x:T_intVal):stdgo.GoString {
        @:recv var _x:T_intVal = _x?.__copy__();
        return (_x.string() : stdgo.GoString);
    }
    @:keep
    static public function string( _x:T_intVal):stdgo.GoString {
        @:recv var _x:T_intVal = _x?.__copy__();
        return (_x._val.string() : stdgo.GoString);
    }
    @:keep
    static public function kind( _:T_intVal):Kind {
        @:recv var _:T_intVal = _?.__copy__();
        return (3 : stdgo.go.constant.Constant.Kind);
    }
}
class T_ratVal_asInterface {
    @:keep
    public dynamic function _implementsValue():Void __self__.value._implementsValue();
    @:keep
    public dynamic function exactString():stdgo.GoString return __self__.value.exactString();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function kind():Kind return __self__.value.kind();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_ratVal>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.constant.Constant.T_ratVal_asInterface) class T_ratVal_static_extension {
    @:keep
    static public function _implementsValue( _:T_ratVal):Void {
        @:recv var _:T_ratVal = _?.__copy__();
    }
    @:keep
    static public function exactString( _x:T_ratVal):stdgo.GoString {
        @:recv var _x:T_ratVal = _x?.__copy__();
        var _r = _x._val;
        if (_r.isInt()) {
            return (_r.num().string() : stdgo.GoString);
        };
        return (_r.string() : stdgo.GoString);
    }
    @:keep
    static public function string( _x:T_ratVal):stdgo.GoString {
        @:recv var _x:T_ratVal = _x?.__copy__();
        return (_rtof(_x?.__copy__()).string() : stdgo.GoString);
    }
    @:keep
    static public function kind( _:T_ratVal):Kind {
        @:recv var _:T_ratVal = _?.__copy__();
        return (4 : stdgo.go.constant.Constant.Kind);
    }
}
class T_floatVal_asInterface {
    @:keep
    public dynamic function _implementsValue():Void __self__.value._implementsValue();
    @:keep
    public dynamic function exactString():stdgo.GoString return __self__.value.exactString();
    /**
        // String returns a decimal approximation of the Float value.
    **/
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function kind():Kind return __self__.value.kind();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_floatVal>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.constant.Constant.T_floatVal_asInterface) class T_floatVal_static_extension {
    @:keep
    static public function _implementsValue( _:T_floatVal):Void {
        @:recv var _:T_floatVal = _?.__copy__();
    }
    @:keep
    static public function exactString( _x:T_floatVal):stdgo.GoString {
        @:recv var _x:T_floatVal = _x?.__copy__();
        return _x._val.text((112 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoInt));
    }
    /**
        // String returns a decimal approximation of the Float value.
    **/
    @:keep
    static public function string( _x:T_floatVal):stdgo.GoString {
        @:recv var _x:T_floatVal = _x?.__copy__();
        var _f = _x._val;
        if (_f.isInf()) {
            return (_f.string() : stdgo.GoString);
        };
        {
            var __tmp__ = _f.float64(), _x:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, __0:stdgo.math.big.Big.Accuracy = __tmp__._1;
            if (((_f.sign() == (0 : stdgo.StdGoTypes.GoInt)) == (_x == (0 : stdgo.StdGoTypes.GoFloat64))) && !stdgo.math.Math.isInf(_x, (0 : stdgo.StdGoTypes.GoInt))) {
                var _s:stdgo.GoString = stdgo.fmt.Fmt.sprintf(("%.6g" : stdgo.GoString), stdgo.Go.toInterface(_x));
                if (!_f.isInt() && (stdgo.strings.Strings.indexByte(_s, (46 : stdgo.StdGoTypes.GoUInt8)) < (0 : stdgo.StdGoTypes.GoInt))) {
                    _s = stdgo.fmt.Fmt.sprintf(("%g" : stdgo.GoString), stdgo.Go.toInterface(_x));
                };
                return _s;
            };
        };
        var _mant:stdgo.math.big.Big.Float_ = ({} : stdgo.math.big.Big.Float_);
        var _exp:stdgo.StdGoTypes.GoInt = _f.mantExp((stdgo.Go.setRef(_mant) : stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Float_>));
        var __tmp__ = _mant.float64(), _m:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, __1:stdgo.math.big.Big.Accuracy = __tmp__._1;
        var _d:stdgo.StdGoTypes.GoFloat64 = (_exp : stdgo.StdGoTypes.GoFloat64) * (0.3010299956639812 : stdgo.StdGoTypes.GoFloat64);
        var _e:stdgo.StdGoTypes.GoInt64 = (_d : stdgo.StdGoTypes.GoInt64);
        _m = _m * (stdgo.math.Math.pow((10 : stdgo.StdGoTypes.GoFloat64), _d - (_e : stdgo.StdGoTypes.GoFloat64)));
        {
            var _am:stdgo.StdGoTypes.GoFloat64 = stdgo.math.Math.abs(_m);
            if (_am < (0.9999995 : stdgo.StdGoTypes.GoFloat64)) {
                _m = _m * (10 : stdgo.StdGoTypes.GoFloat64);
                _e--;
            } else if (_am >= (10 : stdgo.StdGoTypes.GoFloat64)) {
                _m = _m / (10 : stdgo.StdGoTypes.GoFloat64);
                _e++;
            };
        };
        return stdgo.fmt.Fmt.sprintf(("%.6ge%+d" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_e));
    }
    @:keep
    static public function kind( _:T_floatVal):Kind {
        @:recv var _:T_floatVal = _?.__copy__();
        return (4 : stdgo.go.constant.Constant.Kind);
    }
}
class T_complexVal_asInterface {
    @:keep
    public dynamic function _implementsValue():Void __self__.value._implementsValue();
    @:keep
    public dynamic function exactString():stdgo.GoString return __self__.value.exactString();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function kind():Kind return __self__.value.kind();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_complexVal>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.constant.Constant.T_complexVal_asInterface) class T_complexVal_static_extension {
    @:keep
    static public function _implementsValue( _:T_complexVal):Void {
        @:recv var _:T_complexVal = _?.__copy__();
    }
    @:keep
    static public function exactString( _x:T_complexVal):stdgo.GoString {
        @:recv var _x:T_complexVal = _x?.__copy__();
        return stdgo.fmt.Fmt.sprintf(("(%s + %si)" : stdgo.GoString), stdgo.Go.toInterface(_x._re.exactString()), stdgo.Go.toInterface(_x._im.exactString()));
    }
    @:keep
    static public function string( _x:T_complexVal):stdgo.GoString {
        @:recv var _x:T_complexVal = _x?.__copy__();
        return stdgo.fmt.Fmt.sprintf(("(%s + %si)" : stdgo.GoString), stdgo.Go.toInterface(_x._re), stdgo.Go.toInterface(_x._im));
    }
    @:keep
    static public function kind( _:T_complexVal):Kind {
        @:recv var _:T_complexVal = _?.__copy__();
        return (5 : stdgo.go.constant.Constant.Kind);
    }
}
class Kind_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Kind>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.constant.Constant.Kind_asInterface) class Kind_static_extension {
    @:keep
    static public function string( _i:Kind):stdgo.GoString {
        @:recv var _i:Kind = _i;
        if ((_i < (0 : stdgo.go.constant.Constant.Kind)) || (_i >= ((6 : stdgo.StdGoTypes.GoInt) : Kind))) {
            return (("Kind(" : stdgo.GoString) + stdgo.strconv.Strconv.formatInt((_i : stdgo.StdGoTypes.GoInt64), (10 : stdgo.StdGoTypes.GoInt))) + (")" : stdgo.GoString);
        };
        return (("UnknownBoolStringIntFloatComplex" : stdgo.GoString).__slice__(__Kind_index[(_i : stdgo.StdGoTypes.GoInt)], __Kind_index[(_i + (1 : stdgo.go.constant.Constant.Kind) : stdgo.StdGoTypes.GoInt)]) : stdgo.GoString);
    }
}
class T_boolVal_asInterface {
    @:keep
    public dynamic function _implementsValue():Void __self__.value._implementsValue();
    @:keep
    public dynamic function exactString():stdgo.GoString return __self__.value.exactString();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function kind():Kind return __self__.value.kind();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_boolVal>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.constant.Constant.T_boolVal_asInterface) class T_boolVal_static_extension {
    @:keep
    static public function _implementsValue( _:T_boolVal):Void {
        @:recv var _:T_boolVal = _;
    }
    @:keep
    static public function exactString( _x:T_boolVal):stdgo.GoString {
        @:recv var _x:T_boolVal = _x;
        return (_x.string() : stdgo.GoString);
    }
    @:keep
    static public function string( _x:T_boolVal):stdgo.GoString {
        @:recv var _x:T_boolVal = _x;
        return stdgo.strconv.Strconv.formatBool((_x : Bool));
    }
    @:keep
    static public function kind( _:T_boolVal):Kind {
        @:recv var _:T_boolVal = _;
        return (1 : stdgo.go.constant.Constant.Kind);
    }
}
class T_int64Val_asInterface {
    @:keep
    public dynamic function _implementsValue():Void __self__.value._implementsValue();
    @:keep
    public dynamic function exactString():stdgo.GoString return __self__.value.exactString();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function kind():Kind return __self__.value.kind();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_int64Val>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.constant.Constant.T_int64Val_asInterface) class T_int64Val_static_extension {
    @:keep
    static public function _implementsValue( _:T_int64Val):Void {
        @:recv var _:T_int64Val = _;
    }
    @:keep
    static public function exactString( _x:T_int64Val):stdgo.GoString {
        @:recv var _x:T_int64Val = _x;
        return (_x.string() : stdgo.GoString);
    }
    @:keep
    static public function string( _x:T_int64Val):stdgo.GoString {
        @:recv var _x:T_int64Val = _x;
        return stdgo.strconv.Strconv.formatInt((_x : stdgo.StdGoTypes.GoInt64), (10 : stdgo.StdGoTypes.GoInt));
    }
    @:keep
    static public function kind( _:T_int64Val):Kind {
        @:recv var _:T_int64Val = _;
        return (3 : stdgo.go.constant.Constant.Kind);
    }
}
