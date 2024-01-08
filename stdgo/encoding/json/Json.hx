package stdgo.encoding.json;
/**
    // Package json implements encoding and decoding of JSON as defined in
    // RFC 7159. The mapping between JSON and Go values is described
    // in the documentation for the Marshal and Unmarshal functions.
    //
    // See "JSON and Go" for an introduction to this package:
    // https://golang.org/doc/articles/json_and_go.html
**/
private var __go2hxdoc__package : Bool;
/**
    
    
    
**/
var _nullLiteral : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (("null" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
/**
    
    
    
**/
var _textUnmarshalerType : stdgo.reflect.Reflect.Type_ = stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface((null : stdgo.StdGoTypes.Ref<stdgo.encoding.Encoding.TextUnmarshaler>))).elem();
/**
    
    
    
**/
var _numberType : stdgo.reflect.Reflect.Type_ = stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface(((stdgo.Go.str() : stdgo.encoding.json.Json.Number) : Number))));
/**
    
    
    
**/
var _hex : stdgo.GoString = ("0123456789abcdef" : stdgo.GoString);
/**
    
    
    
**/
var _marshalerType : stdgo.reflect.Reflect.Type_ = stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(((null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Marshaler>) : stdgo.StdGoTypes.Ref<Marshaler>))).elem();
/**
    
    
    
**/
var _textMarshalerType : stdgo.reflect.Reflect.Type_ = stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface((null : stdgo.StdGoTypes.Ref<stdgo.encoding.Encoding.TextMarshaler>))).elem();
/**
    
    
    
**/
var _float32Encoder : (stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_encodeState>, stdgo.reflect.Reflect.Value, stdgo.encoding.json.Json.T_encOpts) -> Void = (32 : stdgo.encoding.json.Json.T_floatEncoder)._encode;
/**
    
    
    
**/
var _float64Encoder : (stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_encodeState>, stdgo.reflect.Reflect.Value, stdgo.encoding.json.Json.T_encOpts) -> Void = (64 : stdgo.encoding.json.Json.T_floatEncoder)._encode;
/**
    
    
    
**/
var _scannerPool : stdgo.sync.Sync.Pool = ({ new_ : function():stdgo.StdGoTypes.AnyInterface {
        return stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.T_scanner() : stdgo.encoding.json.Json.T_scanner)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_scanner>)));
    } } : stdgo.sync.Sync.Pool);
/**
    // safeSet holds the value true if the ASCII character with the given array
    // position can be represented inside a JSON string without any further
    // escaping.
    //
    // All values are true except for the ASCII control characters (0-31), the
    // double quote ("), and the backslash character ("\").
    
    
**/
var _safeSet : stdgo.GoArray<Bool> = {
        var s:stdgo.GoArray<Bool> = new stdgo.GoArray<Bool>(...[for (i in 0 ... 128) false]);
        s[32] = true;
        s[33] = true;
        s[34] = false;
        s[35] = true;
        s[36] = true;
        s[37] = true;
        s[38] = true;
        s[39] = true;
        s[40] = true;
        s[41] = true;
        s[42] = true;
        s[43] = true;
        s[44] = true;
        s[45] = true;
        s[46] = true;
        s[47] = true;
        s[48] = true;
        s[49] = true;
        s[50] = true;
        s[51] = true;
        s[52] = true;
        s[53] = true;
        s[54] = true;
        s[55] = true;
        s[56] = true;
        s[57] = true;
        s[58] = true;
        s[59] = true;
        s[60] = true;
        s[61] = true;
        s[62] = true;
        s[63] = true;
        s[64] = true;
        s[65] = true;
        s[66] = true;
        s[67] = true;
        s[68] = true;
        s[69] = true;
        s[70] = true;
        s[71] = true;
        s[72] = true;
        s[73] = true;
        s[74] = true;
        s[75] = true;
        s[76] = true;
        s[77] = true;
        s[78] = true;
        s[79] = true;
        s[80] = true;
        s[81] = true;
        s[82] = true;
        s[83] = true;
        s[84] = true;
        s[85] = true;
        s[86] = true;
        s[87] = true;
        s[88] = true;
        s[89] = true;
        s[90] = true;
        s[91] = true;
        s[92] = false;
        s[93] = true;
        s[94] = true;
        s[95] = true;
        s[96] = true;
        s[97] = true;
        s[98] = true;
        s[99] = true;
        s[100] = true;
        s[101] = true;
        s[102] = true;
        s[103] = true;
        s[104] = true;
        s[105] = true;
        s[106] = true;
        s[107] = true;
        s[108] = true;
        s[109] = true;
        s[110] = true;
        s[111] = true;
        s[112] = true;
        s[113] = true;
        s[114] = true;
        s[115] = true;
        s[116] = true;
        s[117] = true;
        s[118] = true;
        s[119] = true;
        s[120] = true;
        s[121] = true;
        s[122] = true;
        s[123] = true;
        s[124] = true;
        s[125] = true;
        s[126] = true;
        s[127] = true;
        s;
    };
/**
    // htmlSafeSet holds the value true if the ASCII character with the given
    // array position can be safely represented inside a JSON string, embedded
    // inside of HTML <script> tags, without any additional escaping.
    //
    // All values are true except for the ASCII control characters (0-31), the
    // double quote ("), the backslash character ("\"), HTML opening and closing
    // tags ("<" and ">"), and the ampersand ("&").
    
    
**/
var _htmlSafeSet : stdgo.GoArray<Bool> = {
        var s:stdgo.GoArray<Bool> = new stdgo.GoArray<Bool>(...[for (i in 0 ... 128) false]);
        s[32] = true;
        s[33] = true;
        s[34] = false;
        s[35] = true;
        s[36] = true;
        s[37] = true;
        s[38] = false;
        s[39] = true;
        s[40] = true;
        s[41] = true;
        s[42] = true;
        s[43] = true;
        s[44] = true;
        s[45] = true;
        s[46] = true;
        s[47] = true;
        s[48] = true;
        s[49] = true;
        s[50] = true;
        s[51] = true;
        s[52] = true;
        s[53] = true;
        s[54] = true;
        s[55] = true;
        s[56] = true;
        s[57] = true;
        s[58] = true;
        s[59] = true;
        s[60] = false;
        s[61] = true;
        s[62] = false;
        s[63] = true;
        s[64] = true;
        s[65] = true;
        s[66] = true;
        s[67] = true;
        s[68] = true;
        s[69] = true;
        s[70] = true;
        s[71] = true;
        s[72] = true;
        s[73] = true;
        s[74] = true;
        s[75] = true;
        s[76] = true;
        s[77] = true;
        s[78] = true;
        s[79] = true;
        s[80] = true;
        s[81] = true;
        s[82] = true;
        s[83] = true;
        s[84] = true;
        s[85] = true;
        s[86] = true;
        s[87] = true;
        s[88] = true;
        s[89] = true;
        s[90] = true;
        s[91] = true;
        s[92] = false;
        s[93] = true;
        s[94] = true;
        s[95] = true;
        s[96] = true;
        s[97] = true;
        s[98] = true;
        s[99] = true;
        s[100] = true;
        s[101] = true;
        s[102] = true;
        s[103] = true;
        s[104] = true;
        s[105] = true;
        s[106] = true;
        s[107] = true;
        s[108] = true;
        s[109] = true;
        s[110] = true;
        s[111] = true;
        s[112] = true;
        s[113] = true;
        s[114] = true;
        s[115] = true;
        s[116] = true;
        s[117] = true;
        s[118] = true;
        s[119] = true;
        s[120] = true;
        s[121] = true;
        s[122] = true;
        s[123] = true;
        s[124] = true;
        s[125] = true;
        s[126] = true;
        s[127] = true;
        s;
    };
/**
    // ifaceNumAsFloat64/ifaceNumAsNumber are used to test unmarshaling with and
    // without UseNumber
    
    
**/
var _ifaceNumAsFloat64 : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface> = ({
        final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.AnyInterface>();
        x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
        @:mergeBlock {
            x.set(("k1" : stdgo.GoString), stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoFloat64)));
            x.set(("k2" : stdgo.GoString), stdgo.Go.toInterface(("s" : stdgo.GoString)));
            x.set(("k3" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(3, 3, stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoFloat64)), stdgo.Go.toInterface((2 : stdgo.StdGoTypes.GoFloat64)), stdgo.Go.toInterface((0.003 : stdgo.StdGoTypes.GoFloat64))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>)));
            x.set(("k4" : stdgo.GoString), stdgo.Go.toInterface(({
                final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.AnyInterface>();
                x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
                @:mergeBlock {
                    x.set(("kk1" : stdgo.GoString), stdgo.Go.toInterface(("s" : stdgo.GoString)));
                    x.set(("kk2" : stdgo.GoString), stdgo.Go.toInterface((2 : stdgo.StdGoTypes.GoFloat64)));
                };
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>)));
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>);
/**
    
    
    
**/
var _ifaceNumAsNumber : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface> = ({
        final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.AnyInterface>();
        x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
        @:mergeBlock {
            x.set(("k1" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(((("1" : stdgo.GoString) : stdgo.encoding.json.Json.Number) : Number))));
            x.set(("k2" : stdgo.GoString), stdgo.Go.toInterface(("s" : stdgo.GoString)));
            x.set(("k3" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(3, 3, stdgo.Go.toInterface(stdgo.Go.asInterface(((("1" : stdgo.GoString) : stdgo.encoding.json.Json.Number) : Number))), stdgo.Go.toInterface(stdgo.Go.asInterface(((("2.0" : stdgo.GoString) : stdgo.encoding.json.Json.Number) : Number))), stdgo.Go.toInterface(stdgo.Go.asInterface(((("3e-3" : stdgo.GoString) : stdgo.encoding.json.Json.Number) : Number)))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>)));
            x.set(("k4" : stdgo.GoString), stdgo.Go.toInterface(({
                final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.AnyInterface>();
                x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
                @:mergeBlock {
                    x.set(("kk1" : stdgo.GoString), stdgo.Go.toInterface(("s" : stdgo.GoString)));
                    x.set(("kk2" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(((("2" : stdgo.GoString) : stdgo.encoding.json.Json.Number) : Number))));
                };
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>)));
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>);
/**
    
    
    
**/
var _errMissingU8Prefix : stdgo.Error = stdgo.errors.Errors.new_(("missing \'u\' prefix" : stdgo.GoString));
/**
    
    
    
**/
var _umtrue : stdgo.encoding.json.Json.T_unmarshaler = (new stdgo.encoding.json.Json.T_unmarshaler(true) : stdgo.encoding.json.Json.T_unmarshaler);
/**
    
    
    
**/
var _umslice : stdgo.Slice<stdgo.encoding.json.Json.T_unmarshaler> = (new stdgo.Slice<stdgo.encoding.json.Json.T_unmarshaler>(1, 1, (new stdgo.encoding.json.Json.T_unmarshaler(true) : stdgo.encoding.json.Json.T_unmarshaler)) : stdgo.Slice<stdgo.encoding.json.Json.T_unmarshaler>);
/**
    
    
    
**/
var _umstruct : stdgo.encoding.json.Json.T_ustruct = (new stdgo.encoding.json.Json.T_ustruct((new stdgo.encoding.json.Json.T_unmarshaler(true) : stdgo.encoding.json.Json.T_unmarshaler)) : stdgo.encoding.json.Json.T_ustruct);
/**
    
    
    
**/
var _umtrueXY : stdgo.encoding.json.Json.T_unmarshalerText = (new stdgo.encoding.json.Json.T_unmarshalerText(("x" : stdgo.GoString), ("y" : stdgo.GoString)) : stdgo.encoding.json.Json.T_unmarshalerText);
/**
    
    
    
**/
var _umsliceXY : stdgo.Slice<stdgo.encoding.json.Json.T_unmarshalerText> = (new stdgo.Slice<stdgo.encoding.json.Json.T_unmarshalerText>(1, 1, (new stdgo.encoding.json.Json.T_unmarshalerText(("x" : stdgo.GoString), ("y" : stdgo.GoString)) : stdgo.encoding.json.Json.T_unmarshalerText)) : stdgo.Slice<stdgo.encoding.json.Json.T_unmarshalerText>);
/**
    
    
    
**/
var _umstructXY : stdgo.encoding.json.Json.T_ustructText = (new stdgo.encoding.json.Json.T_ustructText((new stdgo.encoding.json.Json.T_unmarshalerText(("x" : stdgo.GoString), ("y" : stdgo.GoString)) : stdgo.encoding.json.Json.T_unmarshalerText)) : stdgo.encoding.json.Json.T_ustructText);
/**
    
    
    
**/
var _ummapXY : stdgo.GoMap<stdgo.encoding.json.Json.T_unmarshalerText, Bool> = ({
        final x = new stdgo.GoMap.GoObjectMap<stdgo.encoding.json.Json.T_unmarshalerText, Bool>();
        x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.encoding.json.Json.T_unmarshalerText", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "a", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "b", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }]), false, { get : () -> null }));
        x.__defaultValue__ = () -> false;
        @:mergeBlock {
            x.set((new stdgo.encoding.json.Json.T_unmarshalerText(("x" : stdgo.GoString), ("y" : stdgo.GoString)) : stdgo.encoding.json.Json.T_unmarshalerText), true);
        };
        cast x;
    } : stdgo.GoMap<stdgo.encoding.json.Json.T_unmarshalerText, Bool>);
/**
    
    
    
**/
var _badUTF8 : stdgo.Slice<T__struct_6> = (new stdgo.Slice<T__struct_6>(6, 6, ({ _in : stdgo.Go.str("hello", 255, "world")?.__copy__(), _out : ("\"hello\\ufffdworld\"" : stdgo.GoString) } : T__struct_6), ({ _in : stdgo.Go.str()?.__copy__(), _out : ("\"\"" : stdgo.GoString) } : T__struct_6), ({ _in : stdgo.Go.str(255)?.__copy__(), _out : ("\"\\ufffd\"" : stdgo.GoString) } : T__struct_6), ({ _in : stdgo.Go.str(255, 255)?.__copy__(), _out : ("\"\\ufffd\\ufffd\"" : stdgo.GoString) } : T__struct_6), ({ _in : stdgo.Go.str("a", 255, "b")?.__copy__(), _out : ("\"a\\ufffdb\"" : stdgo.GoString) } : T__struct_6), ({ _in : stdgo.Go.str("日本", 255, 170, 158)?.__copy__(), _out : ("\"日本\\ufffd\\ufffd\\ufffd\"" : stdgo.GoString) } : T__struct_6)) : stdgo.Slice<T__struct_6>);
/**
    
    
    
**/
var _numberTests : stdgo.Slice<T__struct_7> = (new stdgo.Slice<T__struct_7>(3, 3, ({ _in : ("-1.23e1" : stdgo.GoString), _i : (0 : stdgo.StdGoTypes.GoInt64), _intErr : ("strconv.ParseInt: parsing \"-1.23e1\": invalid syntax" : stdgo.GoString), _f : (-12.3 : stdgo.StdGoTypes.GoFloat64), _floatErr : ("" : stdgo.GoString) } : T__struct_7), ({ _in : ("-12" : stdgo.GoString), _i : (-12i64 : stdgo.StdGoTypes.GoInt64), _intErr : ("" : stdgo.GoString), _f : (-12 : stdgo.StdGoTypes.GoFloat64), _floatErr : ("" : stdgo.GoString) } : T__struct_7), ({ _in : ("1e1000" : stdgo.GoString), _i : (0 : stdgo.StdGoTypes.GoInt64), _intErr : ("strconv.ParseInt: parsing \"1e1000\": invalid syntax" : stdgo.GoString), _f : (0 : stdgo.StdGoTypes.GoFloat64), _floatErr : ("strconv.ParseFloat: parsing \"1e1000\": value out of range" : stdgo.GoString) } : T__struct_7)) : stdgo.Slice<T__struct_7>);
/**
    
    
    
**/
var _wrongStringTests : stdgo.Slice<stdgo.encoding.json.Json.T_wrongStringTest> = (new stdgo.Slice<stdgo.encoding.json.Json.T_wrongStringTest>(6, 6, (new stdgo.encoding.json.Json.T_wrongStringTest(("{\"result\":\"x\"}" : stdgo.GoString), ("json: invalid use of ,string struct tag, trying to unmarshal \"x\" into string" : stdgo.GoString)) : stdgo.encoding.json.Json.T_wrongStringTest), (new stdgo.encoding.json.Json.T_wrongStringTest(("{\"result\":\"foo\"}" : stdgo.GoString), ("json: invalid use of ,string struct tag, trying to unmarshal \"foo\" into string" : stdgo.GoString)) : stdgo.encoding.json.Json.T_wrongStringTest), (new stdgo.encoding.json.Json.T_wrongStringTest(("{\"result\":\"123\"}" : stdgo.GoString), ("json: invalid use of ,string struct tag, trying to unmarshal \"123\" into string" : stdgo.GoString)) : stdgo.encoding.json.Json.T_wrongStringTest), (new stdgo.encoding.json.Json.T_wrongStringTest(("{\"result\":123}" : stdgo.GoString), ("json: invalid use of ,string struct tag, trying to unmarshal unquoted value into string" : stdgo.GoString)) : stdgo.encoding.json.Json.T_wrongStringTest), (new stdgo.encoding.json.Json.T_wrongStringTest(("{\"result\":\"\\\"\"}" : stdgo.GoString), ("json: invalid use of ,string struct tag, trying to unmarshal \"\\\"\" into string" : stdgo.GoString)) : stdgo.encoding.json.Json.T_wrongStringTest), (new stdgo.encoding.json.Json.T_wrongStringTest(("{\"result\":\"\\\"foo\"}" : stdgo.GoString), ("json: invalid use of ,string struct tag, trying to unmarshal \"\\\"foo\" into string" : stdgo.GoString)) : stdgo.encoding.json.Json.T_wrongStringTest)) : stdgo.Slice<stdgo.encoding.json.Json.T_wrongStringTest>);
/**
    
    
    
**/
var _allValue : stdgo.encoding.json.Json.All = ({ bool_ : true, int_ : (2 : stdgo.StdGoTypes.GoInt), int8 : (3 : stdgo.StdGoTypes.GoInt8), int16 : (4 : stdgo.StdGoTypes.GoInt16), int32 : (5 : stdgo.StdGoTypes.GoInt32), int64 : (6i64 : stdgo.StdGoTypes.GoInt64), uint : (7u32 : stdgo.StdGoTypes.GoUInt), uint8 : (8 : stdgo.StdGoTypes.GoUInt8), uint16 : (9 : stdgo.StdGoTypes.GoUInt16), uint32 : (10u32 : stdgo.StdGoTypes.GoUInt32), uint64 : (11i64 : stdgo.StdGoTypes.GoUInt64), uintptr : (12 : stdgo.StdGoTypes.GoUIntptr), float32 : (14.100000381469727 : stdgo.StdGoTypes.GoFloat64), float64 : (15.1 : stdgo.StdGoTypes.GoFloat64), foo : ("foo" : stdgo.GoString), foo2 : ("foo2" : stdgo.GoString), intStr : (42i64 : stdgo.StdGoTypes.GoInt64), uintptrStr : (44 : stdgo.StdGoTypes.GoUIntptr), string : ("16" : stdgo.GoString), map_ : ({
        final x = new stdgo.GoMap.GoStringMap<stdgo.encoding.json.Json.Small>();
        x.__defaultValue__ = () -> ({} : stdgo.encoding.json.Json.Small);
        @:mergeBlock {
            x.set(("17" : stdgo.GoString), ({ tag : ("tag17" : stdgo.GoString) } : stdgo.encoding.json.Json.Small));
            x.set(("18" : stdgo.GoString), ({ tag : ("tag18" : stdgo.GoString) } : stdgo.encoding.json.Json.Small));
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.encoding.json.Json.Small>), mapP : ({
        final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Small>>();
        x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Small>);
        @:mergeBlock {
            x.set(("19" : stdgo.GoString), ({ tag : ("tag19" : stdgo.GoString) } : stdgo.encoding.json.Json.Small));
            x.set(("20" : stdgo.GoString), null);
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Small>>), emptyMap : ({
        final x = new stdgo.GoMap.GoStringMap<stdgo.encoding.json.Json.Small>();
        x.__defaultValue__ = () -> ({} : stdgo.encoding.json.Json.Small);
        @:mergeBlock {};
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.encoding.json.Json.Small>), slice : (new stdgo.Slice<stdgo.encoding.json.Json.Small>(2, 2, ({ tag : ("tag20" : stdgo.GoString) } : stdgo.encoding.json.Json.Small), ({ tag : ("tag21" : stdgo.GoString) } : stdgo.encoding.json.Json.Small)) : stdgo.Slice<stdgo.encoding.json.Json.Small>), sliceP : (new stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Small>>(3, 3, ({ tag : ("tag22" : stdgo.GoString) } : stdgo.encoding.json.Json.Small), null, ({ tag : ("tag23" : stdgo.GoString) } : stdgo.encoding.json.Json.Small)) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Small>>), emptySlice : (new stdgo.Slice<stdgo.encoding.json.Json.Small>(0, 0) : stdgo.Slice<stdgo.encoding.json.Json.Small>), stringSlice : (new stdgo.Slice<stdgo.GoString>(3, 3, ("str24" : stdgo.GoString), ("str25" : stdgo.GoString), ("str26" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>), byteSlice : (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(3, 3, (27 : stdgo.StdGoTypes.GoUInt8), (28 : stdgo.StdGoTypes.GoUInt8), (29 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), small : ({ tag : ("tag30" : stdgo.GoString) } : stdgo.encoding.json.Json.Small), psmall : (stdgo.Go.setRef(({ tag : ("tag31" : stdgo.GoString) } : stdgo.encoding.json.Json.Small)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Small>), interface_ : stdgo.Go.toInterface((5.2 : stdgo.StdGoTypes.GoFloat64)) } : stdgo.encoding.json.Json.All);
/**
    
    
    
**/
var _pallValue : stdgo.encoding.json.Json.All = ({ pbool : stdgo.Go.pointer(_allValue.bool_), pint : stdgo.Go.pointer(_allValue.int_), pint8 : stdgo.Go.pointer(_allValue.int8), pint16 : stdgo.Go.pointer(_allValue.int16), pint32 : stdgo.Go.pointer(_allValue.int32), pint64 : stdgo.Go.pointer(_allValue.int64), puint : stdgo.Go.pointer(_allValue.uint), puint8 : stdgo.Go.pointer(_allValue.uint8), puint16 : stdgo.Go.pointer(_allValue.uint16), puint32 : stdgo.Go.pointer(_allValue.uint32), puint64 : stdgo.Go.pointer(_allValue.uint64), puintptr : stdgo.Go.pointer(_allValue.uintptr), pfloat32 : stdgo.Go.pointer(_allValue.float32), pfloat64 : stdgo.Go.pointer(_allValue.float64), pstring : stdgo.Go.pointer(_allValue.string), pmap : (stdgo.Go.setRef(_allValue.map_) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.encoding.json.Json.Small>>), pmapP : (stdgo.Go.setRef(_allValue.mapP) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Small>>>), pslice : (stdgo.Go.setRef(_allValue.slice) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.encoding.json.Json.Small>>), psliceP : (stdgo.Go.setRef(_allValue.sliceP) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Small>>>), ppsmall : (stdgo.Go.setRef(_allValue.psmall) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Small>>), pinterface : (stdgo.Go.setRef(_allValue.interface_) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>) } : stdgo.encoding.json.Json.All);
/**
    
    
    
**/
var _allValueIndent : stdgo.GoString = ("{\n\t\"Bool\": true,\n\t\"Int\": 2,\n\t\"Int8\": 3,\n\t\"Int16\": 4,\n\t\"Int32\": 5,\n\t\"Int64\": 6,\n\t\"Uint\": 7,\n\t\"Uint8\": 8,\n\t\"Uint16\": 9,\n\t\"Uint32\": 10,\n\t\"Uint64\": 11,\n\t\"Uintptr\": 12,\n\t\"Float32\": 14.1,\n\t\"Float64\": 15.1,\n\t\"bar\": \"foo\",\n\t\"bar2\": \"foo2\",\n\t\"IntStr\": \"42\",\n\t\"UintptrStr\": \"44\",\n\t\"PBool\": null,\n\t\"PInt\": null,\n\t\"PInt8\": null,\n\t\"PInt16\": null,\n\t\"PInt32\": null,\n\t\"PInt64\": null,\n\t\"PUint\": null,\n\t\"PUint8\": null,\n\t\"PUint16\": null,\n\t\"PUint32\": null,\n\t\"PUint64\": null,\n\t\"PUintptr\": null,\n\t\"PFloat32\": null,\n\t\"PFloat64\": null,\n\t\"String\": \"16\",\n\t\"PString\": null,\n\t\"Map\": {\n\t\t\"17\": {\n\t\t\t\"Tag\": \"tag17\"\n\t\t},\n\t\t\"18\": {\n\t\t\t\"Tag\": \"tag18\"\n\t\t}\n\t},\n\t\"MapP\": {\n\t\t\"19\": {\n\t\t\t\"Tag\": \"tag19\"\n\t\t},\n\t\t\"20\": null\n\t},\n\t\"PMap\": null,\n\t\"PMapP\": null,\n\t\"EmptyMap\": {},\n\t\"NilMap\": null,\n\t\"Slice\": [\n\t\t{\n\t\t\t\"Tag\": \"tag20\"\n\t\t},\n\t\t{\n\t\t\t\"Tag\": \"tag21\"\n\t\t}\n\t],\n\t\"SliceP\": [\n\t\t{\n\t\t\t\"Tag\": \"tag22\"\n\t\t},\n\t\tnull,\n\t\t{\n\t\t\t\"Tag\": \"tag23\"\n\t\t}\n\t],\n\t\"PSlice\": null,\n\t\"PSliceP\": null,\n\t\"EmptySlice\": [],\n\t\"NilSlice\": null,\n\t\"StringSlice\": [\n\t\t\"str24\",\n\t\t\"str25\",\n\t\t\"str26\"\n\t],\n\t\"ByteSlice\": \"Gxwd\",\n\t\"Small\": {\n\t\t\"Tag\": \"tag30\"\n\t},\n\t\"PSmall\": {\n\t\t\"Tag\": \"tag31\"\n\t},\n\t\"PPSmall\": null,\n\t\"Interface\": 5.2,\n\t\"PInterface\": null\n}" : stdgo.GoString);
/**
    
    
    
**/
var _allValueCompact : stdgo.GoString = stdgo.strings.Strings.map_(_noSpace, _allValueIndent?.__copy__());
/**
    
    
    
**/
var _pallValueIndent : stdgo.GoString = ("{\n\t\"Bool\": false,\n\t\"Int\": 0,\n\t\"Int8\": 0,\n\t\"Int16\": 0,\n\t\"Int32\": 0,\n\t\"Int64\": 0,\n\t\"Uint\": 0,\n\t\"Uint8\": 0,\n\t\"Uint16\": 0,\n\t\"Uint32\": 0,\n\t\"Uint64\": 0,\n\t\"Uintptr\": 0,\n\t\"Float32\": 0,\n\t\"Float64\": 0,\n\t\"bar\": \"\",\n\t\"bar2\": \"\",\n        \"IntStr\": \"0\",\n\t\"UintptrStr\": \"0\",\n\t\"PBool\": true,\n\t\"PInt\": 2,\n\t\"PInt8\": 3,\n\t\"PInt16\": 4,\n\t\"PInt32\": 5,\n\t\"PInt64\": 6,\n\t\"PUint\": 7,\n\t\"PUint8\": 8,\n\t\"PUint16\": 9,\n\t\"PUint32\": 10,\n\t\"PUint64\": 11,\n\t\"PUintptr\": 12,\n\t\"PFloat32\": 14.1,\n\t\"PFloat64\": 15.1,\n\t\"String\": \"\",\n\t\"PString\": \"16\",\n\t\"Map\": null,\n\t\"MapP\": null,\n\t\"PMap\": {\n\t\t\"17\": {\n\t\t\t\"Tag\": \"tag17\"\n\t\t},\n\t\t\"18\": {\n\t\t\t\"Tag\": \"tag18\"\n\t\t}\n\t},\n\t\"PMapP\": {\n\t\t\"19\": {\n\t\t\t\"Tag\": \"tag19\"\n\t\t},\n\t\t\"20\": null\n\t},\n\t\"EmptyMap\": null,\n\t\"NilMap\": null,\n\t\"Slice\": null,\n\t\"SliceP\": null,\n\t\"PSlice\": [\n\t\t{\n\t\t\t\"Tag\": \"tag20\"\n\t\t},\n\t\t{\n\t\t\t\"Tag\": \"tag21\"\n\t\t}\n\t],\n\t\"PSliceP\": [\n\t\t{\n\t\t\t\"Tag\": \"tag22\"\n\t\t},\n\t\tnull,\n\t\t{\n\t\t\t\"Tag\": \"tag23\"\n\t\t}\n\t],\n\t\"EmptySlice\": null,\n\t\"NilSlice\": null,\n\t\"StringSlice\": null,\n\t\"ByteSlice\": null,\n\t\"Small\": {\n\t\t\"Tag\": \"\"\n\t},\n\t\"PSmall\": null,\n\t\"PPSmall\": {\n\t\t\"Tag\": \"tag31\"\n\t},\n\t\"Interface\": null,\n\t\"PInterface\": 5.2\n}" : stdgo.GoString);
/**
    
    
    
**/
var _pallValueCompact : stdgo.GoString = stdgo.strings.Strings.map_(_noSpace, _pallValueIndent?.__copy__());
/**
    
    
    
**/
var _unmarshalTests : stdgo.Slice<stdgo.encoding.json.Json.T_unmarshalTest> = (new stdgo.Slice<stdgo.encoding.json.Json.T_unmarshalTest>(
152,
152,
({ _in : ("true" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.pointer(false)), _out : stdgo.Go.toInterface(true) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("1" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoInt))), _out : stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoInt)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("1.2" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoFloat64))), _out : stdgo.Go.toInterface((1.2 : stdgo.StdGoTypes.GoFloat64)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("-5" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoInt16))), _out : stdgo.Go.toInterface((-5 : stdgo.StdGoTypes.GoInt16)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("2" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.pointer((("" : stdgo.GoString) : stdgo.encoding.json.Json.Number))), _out : stdgo.Go.toInterface(stdgo.Go.asInterface(((("2" : stdgo.GoString) : stdgo.encoding.json.Json.Number) : Number))), _useNumber : true } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("2" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.pointer((("" : stdgo.GoString) : stdgo.encoding.json.Json.Number))), _out : stdgo.Go.toInterface(stdgo.Go.asInterface(((("2" : stdgo.GoString) : stdgo.encoding.json.Json.Number) : Number))) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("2" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.StdGoTypes.AnyInterface)) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>)), _out : stdgo.Go.toInterface((2 : stdgo.StdGoTypes.GoFloat64)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("2" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.StdGoTypes.AnyInterface)) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>)), _out : stdgo.Go.toInterface(stdgo.Go.asInterface(((("2" : stdgo.GoString) : stdgo.encoding.json.Json.Number) : Number))), _useNumber : true } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("\"a\\u1234\"" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.pointer(("" : stdgo.GoString))), _out : stdgo.Go.toInterface(("aሴ" : stdgo.GoString)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("\"http:\\/\\/\"" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.pointer(("" : stdgo.GoString))), _out : stdgo.Go.toInterface(("http://" : stdgo.GoString)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("\"g-clef: \\uD834\\uDD1E\"" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.pointer(("" : stdgo.GoString))), _out : stdgo.Go.toInterface(("g-clef: 𝄞" : stdgo.GoString)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("\"invalid: \\uD834x\\uDD1E\"" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.pointer(("" : stdgo.GoString))), _out : stdgo.Go.toInterface(("invalid: �x�" : stdgo.GoString)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("null" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.StdGoTypes.AnyInterface)) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>)), _out : (null : stdgo.StdGoTypes.AnyInterface) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"X\": [1,2,3], \"Y\": 4}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.T_)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_>)), _out : stdgo.Go.toInterface(({ y : (4 : stdgo.StdGoTypes.GoInt) } : stdgo.encoding.json.Json.T_)), _err : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.UnmarshalTypeError(("array" : stdgo.GoString), stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(stdgo.Go.str())), (7i64 : stdgo.StdGoTypes.GoInt64), ("T" : stdgo.GoString), ("X" : stdgo.GoString)) : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"X\": 23}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.T_)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_>)), _out : stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_() : stdgo.encoding.json.Json.T_)), _err : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.UnmarshalTypeError(("number" : stdgo.GoString), stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(stdgo.Go.str())), (8i64 : stdgo.StdGoTypes.GoInt64), ("T" : stdgo.GoString), ("X" : stdgo.GoString)) : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"x\": 1}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.T_tx)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_tx>)), _out : stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_tx() : stdgo.encoding.json.Json.T_tx)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"x\": 1}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.T_tx)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_tx>)), _out : stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_tx() : stdgo.encoding.json.Json.T_tx)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"x\": 1}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.T_tx)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_tx>)), _err : stdgo.fmt.Fmt.errorf(("json: unknown field \"x\"" : stdgo.GoString)), _disallowUnknownFields : true } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"S\": 23}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.W)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.W>)), _out : stdgo.Go.toInterface((new stdgo.encoding.json.Json.W() : stdgo.encoding.json.Json.W)), _err : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.UnmarshalTypeError(("number" : stdgo.GoString), stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface(((stdgo.Go.str() : stdgo.encoding.json.Json.SS) : SS)))), (0i64 : stdgo.StdGoTypes.GoInt64), ("W" : stdgo.GoString), ("S" : stdgo.GoString)) : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"F1\":1,\"F2\":2,\"F3\":3}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.V)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.V>)), _out : stdgo.Go.toInterface(({ f1 : stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoFloat64)), f2 : (2 : stdgo.StdGoTypes.GoInt32), f3 : ((("3" : stdgo.GoString) : stdgo.encoding.json.Json.Number) : Number) } : stdgo.encoding.json.Json.V)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"F1\":1,\"F2\":2,\"F3\":3}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.V)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.V>)), _out : stdgo.Go.toInterface(({ f1 : stdgo.Go.toInterface(stdgo.Go.asInterface(((("1" : stdgo.GoString) : stdgo.encoding.json.Json.Number) : Number))), f2 : (2 : stdgo.StdGoTypes.GoInt32), f3 : ((("3" : stdgo.GoString) : stdgo.encoding.json.Json.Number) : Number) } : stdgo.encoding.json.Json.V)), _useNumber : true } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"k1\":1,\"k2\":\"s\",\"k3\":[1,2.0,3e-3],\"k4\":{\"kk1\":\"s\",\"kk2\":2}}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.StdGoTypes.AnyInterface)) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>)), _out : stdgo.Go.toInterface(_ifaceNumAsFloat64) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"k1\":1,\"k2\":\"s\",\"k3\":[1,2.0,3e-3],\"k4\":{\"kk1\":\"s\",\"kk2\":2}}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.StdGoTypes.AnyInterface)) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>)), _out : stdgo.Go.toInterface(_ifaceNumAsNumber), _useNumber : true } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("\n true " : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.pointer(false)), _out : stdgo.Go.toInterface(true) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("\t 1 " : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoInt))), _out : stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoInt)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("\r 1.2 " : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoFloat64))), _out : stdgo.Go.toInterface((1.2 : stdgo.StdGoTypes.GoFloat64)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("\t -5 \n" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoInt16))), _out : stdgo.Go.toInterface((-5 : stdgo.StdGoTypes.GoInt16)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("\t \"a\\u1234\" \n" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.pointer(("" : stdgo.GoString))), _out : stdgo.Go.toInterface(("aሴ" : stdgo.GoString)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"Y\": 1, \"Z\": 2}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.T_)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_>)), _out : stdgo.Go.toInterface(({ y : (1 : stdgo.StdGoTypes.GoInt) } : stdgo.encoding.json.Json.T_)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"Y\": 1, \"Z\": 2}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.T_)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_>)), _err : stdgo.fmt.Fmt.errorf(("json: unknown field \"Z\"" : stdgo.GoString)), _disallowUnknownFields : true } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"alpha\": \"abc\", \"alphabet\": \"xyz\"}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.U)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.U>)), _out : stdgo.Go.toInterface(({ alphabet : ("abc" : stdgo.GoString) } : stdgo.encoding.json.Json.U)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"alpha\": \"abc\", \"alphabet\": \"xyz\"}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.U)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.U>)), _err : stdgo.fmt.Fmt.errorf(("json: unknown field \"alphabet\"" : stdgo.GoString)), _disallowUnknownFields : true } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"alpha\": \"abc\"}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.U)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.U>)), _out : stdgo.Go.toInterface(({ alphabet : ("abc" : stdgo.GoString) } : stdgo.encoding.json.Json.U)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"alphabet\": \"xyz\"}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.U)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.U>)), _out : stdgo.Go.toInterface((new stdgo.encoding.json.Json.U() : stdgo.encoding.json.Json.U)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"alphabet\": \"xyz\"}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.U)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.U>)), _err : stdgo.fmt.Fmt.errorf(("json: unknown field \"alphabet\"" : stdgo.GoString)), _disallowUnknownFields : true } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"X\": \"foo\", \"Y\"}" : stdgo.GoString), _err : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.SyntaxError(("invalid character \'}\' after object key" : stdgo.GoString), (17i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.encoding.json.Json.SyntaxError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SyntaxError>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("[1, 2, 3+]" : stdgo.GoString), _err : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.SyntaxError(("invalid character \'+\' after array element" : stdgo.GoString), (9i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.encoding.json.Json.SyntaxError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SyntaxError>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"X\":12x}" : stdgo.GoString), _err : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.SyntaxError(("invalid character \'x\' after object key:value pair" : stdgo.GoString), (8i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.encoding.json.Json.SyntaxError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SyntaxError>)), _useNumber : true } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("[2, 3" : stdgo.GoString), _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ _msg : ("unexpected end of JSON input" : stdgo.GoString), offset : (5i64 : stdgo.StdGoTypes.GoInt64) } : stdgo.encoding.json.Json.SyntaxError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SyntaxError>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"F3\": -}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.V)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.V>)), _out : stdgo.Go.toInterface(({ f3 : ((("-" : stdgo.GoString) : stdgo.encoding.json.Json.Number) : Number) } : stdgo.encoding.json.Json.V)), _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ _msg : ("invalid character \'}\' in numeric literal" : stdgo.GoString), offset : (9i64 : stdgo.StdGoTypes.GoInt64) } : stdgo.encoding.json.Json.SyntaxError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SyntaxError>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : stdgo.Go.str(1, " 42")?.__copy__(), _err : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.SyntaxError(("invalid character \'\\x01\' looking for beginning of value" : stdgo.GoString), (1i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.encoding.json.Json.SyntaxError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SyntaxError>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : stdgo.Go.str(" 42 ", 1)?.__copy__(), _err : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.SyntaxError(("invalid character \'\\x01\' after top-level value" : stdgo.GoString), (5i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.encoding.json.Json.SyntaxError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SyntaxError>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : stdgo.Go.str(1, " true")?.__copy__(), _err : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.SyntaxError(("invalid character \'\\x01\' looking for beginning of value" : stdgo.GoString), (1i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.encoding.json.Json.SyntaxError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SyntaxError>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : stdgo.Go.str(" false ", 1)?.__copy__(), _err : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.SyntaxError(("invalid character \'\\x01\' after top-level value" : stdgo.GoString), (8i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.encoding.json.Json.SyntaxError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SyntaxError>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : stdgo.Go.str(1, " 1.2")?.__copy__(), _err : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.SyntaxError(("invalid character \'\\x01\' looking for beginning of value" : stdgo.GoString), (1i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.encoding.json.Json.SyntaxError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SyntaxError>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : stdgo.Go.str(" 3.4 ", 1)?.__copy__(), _err : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.SyntaxError(("invalid character \'\\x01\' after top-level value" : stdgo.GoString), (6i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.encoding.json.Json.SyntaxError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SyntaxError>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : stdgo.Go.str(1, " \"string\"")?.__copy__(), _err : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.SyntaxError(("invalid character \'\\x01\' looking for beginning of value" : stdgo.GoString), (1i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.encoding.json.Json.SyntaxError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SyntaxError>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : stdgo.Go.str(" \"string\" ", 1)?.__copy__(), _err : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.SyntaxError(("invalid character \'\\x01\' after top-level value" : stdgo.GoString), (11i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.encoding.json.Json.SyntaxError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SyntaxError>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("[1, 2, 3]" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(new stdgo.GoArray<stdgo.StdGoTypes.GoInt>(...[for (i in 0 ... 3) (0 : stdgo.StdGoTypes.GoInt)])) : stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoInt>>)), _out : stdgo.Go.toInterface((new stdgo.GoArray<stdgo.StdGoTypes.GoInt>((1 : stdgo.StdGoTypes.GoInt), (2 : stdgo.StdGoTypes.GoInt), (3 : stdgo.StdGoTypes.GoInt)) : stdgo.GoArray<stdgo.StdGoTypes.GoInt>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("[1, 2, 3]" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(new stdgo.GoArray<stdgo.StdGoTypes.GoInt>(...[for (i in 0 ... 1) (0 : stdgo.StdGoTypes.GoInt)])) : stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoInt>>)), _out : stdgo.Go.toInterface((new stdgo.GoArray<stdgo.StdGoTypes.GoInt>((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoArray<stdgo.StdGoTypes.GoInt>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("[1, 2, 3]" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(new stdgo.GoArray<stdgo.StdGoTypes.GoInt>(...[for (i in 0 ... 5) (0 : stdgo.StdGoTypes.GoInt)])) : stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoInt>>)), _out : stdgo.Go.toInterface((new stdgo.GoArray<stdgo.StdGoTypes.GoInt>((1 : stdgo.StdGoTypes.GoInt), (2 : stdgo.StdGoTypes.GoInt), (3 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.GoArray<stdgo.StdGoTypes.GoInt>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("[1, 2, 3]" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.MustNotUnmarshalJSON)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.MustNotUnmarshalJSON>))), _err : stdgo.errors.Errors.new_(("MustNotUnmarshalJSON was used" : stdgo.GoString)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("[]" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>)) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.AnyInterface>>)), _out : stdgo.Go.toInterface((new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(0, 0) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("null" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>)) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.AnyInterface>>)), _out : stdgo.Go.toInterface((null : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"T\":[]}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>)) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>>)), _out : stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.AnyInterface>();
        x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
        @:mergeBlock {
            x.set(("T" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(0, 0) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>)));
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"T\":null}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>)) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>>)), _out : stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.AnyInterface>();
        x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
        @:mergeBlock {
            x.set(("T" : stdgo.GoString), (null : stdgo.StdGoTypes.AnyInterface));
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : _allValueIndent?.__copy__(), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.All)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.All>)), _out : stdgo.Go.toInterface(_allValue) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : _allValueCompact?.__copy__(), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.All)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.All>)), _out : stdgo.Go.toInterface(_allValue) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : _allValueIndent?.__copy__(), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.All>)) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.All>>)), _out : stdgo.Go.toInterface((stdgo.Go.setRef(_allValue) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.All>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : _allValueCompact?.__copy__(), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.All>)) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.All>>)), _out : stdgo.Go.toInterface((stdgo.Go.setRef(_allValue) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.All>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : _pallValueIndent?.__copy__(), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.All)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.All>)), _out : stdgo.Go.toInterface(_pallValue) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : _pallValueCompact?.__copy__(), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.All)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.All>)), _out : stdgo.Go.toInterface(_pallValue) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : _pallValueIndent?.__copy__(), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.All>)) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.All>>)), _out : stdgo.Go.toInterface((stdgo.Go.setRef(_pallValue) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.All>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : _pallValueCompact?.__copy__(), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.All>)) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.All>>)), _out : stdgo.Go.toInterface((stdgo.Go.setRef(_pallValue) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.All>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"T\":false}" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.T_unmarshaler)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_unmarshaler>))), _out : stdgo.Go.toInterface(stdgo.Go.asInterface(_umtrue)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"T\":false}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_unmarshaler>)) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_unmarshaler>>)), _out : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_umtrue) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_unmarshaler>))) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("[{\"T\":false}]" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.Slice<stdgo.encoding.json.Json.T_unmarshaler>)) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.encoding.json.Json.T_unmarshaler>>)), _out : stdgo.Go.toInterface(_umslice) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("[{\"T\":false}]" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.encoding.json.Json.T_unmarshaler>>)) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.encoding.json.Json.T_unmarshaler>>>)), _out : stdgo.Go.toInterface((stdgo.Go.setRef(_umslice) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.encoding.json.Json.T_unmarshaler>>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"M\":{\"T\":\"x:y\"}}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.T_ustruct)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_ustruct>)), _out : stdgo.Go.toInterface(_umstruct) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("\"x:y\"" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.T_unmarshalerText)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_unmarshalerText>))), _out : stdgo.Go.toInterface(stdgo.Go.asInterface(_umtrueXY)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("\"x:y\"" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_unmarshalerText>)) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_unmarshalerText>>)), _out : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_umtrueXY) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_unmarshalerText>))) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("[\"x:y\"]" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.Slice<stdgo.encoding.json.Json.T_unmarshalerText>)) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.encoding.json.Json.T_unmarshalerText>>)), _out : stdgo.Go.toInterface(_umsliceXY) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("[\"x:y\"]" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.encoding.json.Json.T_unmarshalerText>>)) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.encoding.json.Json.T_unmarshalerText>>>)), _out : stdgo.Go.toInterface((stdgo.Go.setRef(_umsliceXY) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.encoding.json.Json.T_unmarshalerText>>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"M\":\"x:y\"}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.T_ustructText)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_ustructText>)), _out : stdgo.Go.toInterface(_umstructXY) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"-1\":\"a\",\"0\":\"b\",\"1\":\"c\"}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.GoMap<stdgo.StdGoTypes.GoInt, stdgo.GoString>)) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.StdGoTypes.GoInt, stdgo.GoString>>)), _out : stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        @:mergeBlock {
            x.set((-1 : stdgo.StdGoTypes.GoInt), ("a" : stdgo.GoString));
            x.set((0 : stdgo.StdGoTypes.GoInt), ("b" : stdgo.GoString));
            x.set((1 : stdgo.StdGoTypes.GoInt), ("c" : stdgo.GoString));
        };
        x;
    } : stdgo.GoMap<stdgo.StdGoTypes.GoInt, stdgo.GoString>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"0\":\"a\",\"10\":\"c\",\"9\":\"b\"}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.GoMap<stdgo.encoding.json.Json.T_u8, stdgo.GoString>)) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.encoding.json.Json.T_u8, stdgo.GoString>>)), _out : stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        @:mergeBlock {
            x.set((0 : stdgo.encoding.json.Json.T_u8), ("a" : stdgo.GoString));
            x.set((9 : stdgo.encoding.json.Json.T_u8), ("b" : stdgo.GoString));
            x.set((10 : stdgo.encoding.json.Json.T_u8), ("c" : stdgo.GoString));
        };
        x;
    } : stdgo.GoMap<stdgo.encoding.json.Json.T_u8, stdgo.GoString>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"-9223372036854775808\":\"min\",\"9223372036854775807\":\"max\"}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.GoMap<stdgo.StdGoTypes.GoInt64, stdgo.GoString>)) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.StdGoTypes.GoInt64, stdgo.GoString>>)), _out : stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoInt64Map<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        @:mergeBlock {
            x.set((-9223372036854775808i64 : stdgo.StdGoTypes.GoInt64), ("min" : stdgo.GoString));
            x.set((9223372036854775807i64 : stdgo.StdGoTypes.GoInt64), ("max" : stdgo.GoString));
        };
        x;
    } : stdgo.GoMap<stdgo.StdGoTypes.GoInt64, stdgo.GoString>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"18446744073709551615\":\"max\"}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.GoMap<stdgo.StdGoTypes.GoUInt64, stdgo.GoString>)) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.StdGoTypes.GoUInt64, stdgo.GoString>>)), _out : stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoInt64Map<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        @:mergeBlock {
            x.set((-1i64 : stdgo.StdGoTypes.GoUInt64), ("max" : stdgo.GoString));
        };
        x;
    } : stdgo.GoMap<stdgo.StdGoTypes.GoUInt64, stdgo.GoString>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"0\":false,\"10\":true}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.GoMap<stdgo.StdGoTypes.GoUIntptr, Bool>)) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.StdGoTypes.GoUIntptr, Bool>>)), _out : stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoIntMap<Bool>();
        x.__defaultValue__ = () -> false;
        @:mergeBlock {
            x.set((0 : stdgo.StdGoTypes.GoUIntptr), false);
            x.set((10 : stdgo.StdGoTypes.GoUIntptr), true);
        };
        x;
    } : stdgo.GoMap<stdgo.StdGoTypes.GoUIntptr, Bool>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"u2\":4}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.GoMap<stdgo.encoding.json.Json.T_u8marshal, stdgo.StdGoTypes.GoInt>)) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.encoding.json.Json.T_u8marshal, stdgo.StdGoTypes.GoInt>>)), _out : stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoIntMap<stdgo.StdGoTypes.GoInt>();
        x.__defaultValue__ = () -> (0 : stdgo.StdGoTypes.GoInt);
        @:mergeBlock {
            x.set((2 : stdgo.encoding.json.Json.T_u8marshal), (4 : stdgo.StdGoTypes.GoInt));
        };
        x;
    } : stdgo.GoMap<stdgo.encoding.json.Json.T_u8marshal, stdgo.StdGoTypes.GoInt>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"2\":4}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.GoMap<stdgo.encoding.json.Json.T_u8marshal, stdgo.StdGoTypes.GoInt>)) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.encoding.json.Json.T_u8marshal, stdgo.StdGoTypes.GoInt>>)), _err : _errMissingU8Prefix } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"abc\":\"abc\"}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.GoMap<stdgo.StdGoTypes.GoInt, stdgo.GoString>)) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.StdGoTypes.GoInt, stdgo.GoString>>)), _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("number abc" : stdgo.GoString), type : stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt))), offset : (2i64 : stdgo.StdGoTypes.GoInt64) } : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"256\":\"abc\"}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.GoMap<stdgo.StdGoTypes.GoUInt8, stdgo.GoString>)) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.StdGoTypes.GoUInt8, stdgo.GoString>>)), _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("number 256" : stdgo.GoString), type : stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoUInt8))), offset : (2i64 : stdgo.StdGoTypes.GoInt64) } : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"128\":\"abc\"}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.GoMap<stdgo.StdGoTypes.GoInt8, stdgo.GoString>)) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.StdGoTypes.GoInt8, stdgo.GoString>>)), _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("number 128" : stdgo.GoString), type : stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt8))), offset : (2i64 : stdgo.StdGoTypes.GoInt64) } : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"-1\":\"abc\"}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.GoMap<stdgo.StdGoTypes.GoUInt8, stdgo.GoString>)) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.StdGoTypes.GoUInt8, stdgo.GoString>>)), _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("number -1" : stdgo.GoString), type : stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoUInt8))), offset : (2i64 : stdgo.StdGoTypes.GoInt64) } : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"F\":{\"a\":2,\"3\":4}}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.StdGoTypes.GoInt, stdgo.StdGoTypes.GoInt>>)) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.StdGoTypes.GoInt, stdgo.StdGoTypes.GoInt>>>)), _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("number a" : stdgo.GoString), type : stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt))), offset : (7i64 : stdgo.StdGoTypes.GoInt64) } : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"F\":{\"a\":2,\"3\":4}}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.StdGoTypes.GoUInt, stdgo.StdGoTypes.GoInt>>)) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.StdGoTypes.GoUInt, stdgo.StdGoTypes.GoInt>>>)), _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("number a" : stdgo.GoString), type : stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface((0u32 : stdgo.StdGoTypes.GoUInt))), offset : (7i64 : stdgo.StdGoTypes.GoInt64) } : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"x:y\":true}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.GoMap<stdgo.encoding.json.Json.T_unmarshalerText, Bool>)) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.encoding.json.Json.T_unmarshalerText, Bool>>)), _out : stdgo.Go.toInterface(_ummapXY) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"x:y\":false,\"x:y\":true}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.GoMap<stdgo.encoding.json.Json.T_unmarshalerText, Bool>)) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.encoding.json.Json.T_unmarshalerText, Bool>>)), _out : stdgo.Go.toInterface(_ummapXY) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\n\t\t\t\"Level0\": 1,\n\t\t\t\"Level1b\": 2,\n\t\t\t\"Level1c\": 3,\n\t\t\t\"x\": 4,\n\t\t\t\"Level1a\": 5,\n\t\t\t\"LEVEL1B\": 6,\n\t\t\t\"e\": {\n\t\t\t\t\"Level1a\": 8,\n\t\t\t\t\"Level1b\": 9,\n\t\t\t\t\"Level1c\": 10,\n\t\t\t\t\"Level1d\": 11,\n\t\t\t\t\"x\": 12\n\t\t\t},\n\t\t\t\"Loop1\": 13,\n\t\t\t\"Loop2\": 14,\n\t\t\t\"X\": 15,\n\t\t\t\"Y\": 16,\n\t\t\t\"Z\": 17,\n\t\t\t\"Q\": 18\n\t\t}" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.Top)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Top>))), _out : stdgo.Go.toInterface(stdgo.Go.asInterface(({ level0 : (1 : stdgo.StdGoTypes.GoInt), embed0 : ({ level1b : (2 : stdgo.StdGoTypes.GoInt), level1c : (3 : stdgo.StdGoTypes.GoInt) } : stdgo.encoding.json.Json.Embed0), embed0a : (stdgo.Go.setRef(({ level1a : (5 : stdgo.StdGoTypes.GoInt), level1b : (6 : stdgo.StdGoTypes.GoInt) } : stdgo.encoding.json.Json.Embed0a)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Embed0a>), embed0b : (stdgo.Go.setRef(({ level1a : (8 : stdgo.StdGoTypes.GoInt), level1b : (9 : stdgo.StdGoTypes.GoInt), level1c : (10 : stdgo.StdGoTypes.GoInt), level1d : (11 : stdgo.StdGoTypes.GoInt), level1e : (12 : stdgo.StdGoTypes.GoInt) } : stdgo.encoding.json.Json.Embed0b)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Embed0b>), loop : ({ loop1 : (13 : stdgo.StdGoTypes.GoInt), loop2 : (14 : stdgo.StdGoTypes.GoInt) } : stdgo.encoding.json.Json.Loop), embed0p : ({ point : ({ x : (15 : stdgo.StdGoTypes.GoInt), y : (16 : stdgo.StdGoTypes.GoInt) } : stdgo.image.Image.Point) } : stdgo.encoding.json.Json.Embed0p), embed0q : ({ point : ({ z : (17 : stdgo.StdGoTypes.GoInt) } : stdgo.encoding.json.Json.Point) } : stdgo.encoding.json.Json.Embed0q), _embed : ({ q : (18 : stdgo.StdGoTypes.GoInt) } : stdgo.encoding.json.Json.T_embed) } : stdgo.encoding.json.Json.Top))) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"hello\": 1}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.Ambig)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Ambig>)), _out : stdgo.Go.toInterface(({ first : (1 : stdgo.StdGoTypes.GoInt) } : stdgo.encoding.json.Json.Ambig)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"X\": 1,\"Y\":2}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.S5)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.S5>)), _out : stdgo.Go.toInterface(({ s8 : ({ s9 : ({ y : (2 : stdgo.StdGoTypes.GoInt) } : stdgo.encoding.json.Json.S9) } : stdgo.encoding.json.Json.S8) } : stdgo.encoding.json.Json.S5)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"X\": 1,\"Y\":2}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.S5)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.S5>)), _err : stdgo.fmt.Fmt.errorf(("json: unknown field \"X\"" : stdgo.GoString)), _disallowUnknownFields : true } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"X\": 1,\"Y\":2}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.S10)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.S10>)), _out : stdgo.Go.toInterface(({ s13 : ({ s8 : ({ s9 : ({ y : (2 : stdgo.StdGoTypes.GoInt) } : stdgo.encoding.json.Json.S9) } : stdgo.encoding.json.Json.S8) } : stdgo.encoding.json.Json.S13) } : stdgo.encoding.json.Json.S10)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"X\": 1,\"Y\":2}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.S10)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.S10>)), _err : stdgo.fmt.Fmt.errorf(("json: unknown field \"X\"" : stdgo.GoString)), _disallowUnknownFields : true } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"I\": 0, \"I\": null, \"J\": null}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.DoublePtr)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.DoublePtr>)), _out : stdgo.Go.toInterface(({ i : (null : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>), j : (null : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>) } : stdgo.encoding.json.Json.DoublePtr)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : stdgo.Go.str("\"hello", 255, "world\"")?.__copy__(), _ptr : stdgo.Go.toInterface(stdgo.Go.pointer(("" : stdgo.GoString))), _out : stdgo.Go.toInterface(("hello�world" : stdgo.GoString)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : stdgo.Go.str("\"hello", 194, 194, "world\"")?.__copy__(), _ptr : stdgo.Go.toInterface(stdgo.Go.pointer(("" : stdgo.GoString))), _out : stdgo.Go.toInterface(("hello��world" : stdgo.GoString)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : stdgo.Go.str("\"hello", 194, 255, "world\"")?.__copy__(), _ptr : stdgo.Go.toInterface(stdgo.Go.pointer(("" : stdgo.GoString))), _out : stdgo.Go.toInterface(("hello��world" : stdgo.GoString)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("\"hello\\ud800world\"" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.pointer(("" : stdgo.GoString))), _out : stdgo.Go.toInterface(("hello�world" : stdgo.GoString)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("\"hello\\ud800\\ud800world\"" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.pointer(("" : stdgo.GoString))), _out : stdgo.Go.toInterface(("hello��world" : stdgo.GoString)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("\"hello\\ud800\\ud800world\"" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.pointer(("" : stdgo.GoString))), _out : stdgo.Go.toInterface(("hello��world" : stdgo.GoString)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : stdgo.Go.str("\"hello", 237, 160, 128, 237, 176, 128, "world\"")?.__copy__(), _ptr : stdgo.Go.toInterface(stdgo.Go.pointer(("" : stdgo.GoString))), _out : stdgo.Go.toInterface(("hello������world" : stdgo.GoString)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"2009-11-10T23:00:00Z\": \"hello world\"}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.GoMap<stdgo.time.Time.Time, stdgo.GoString>)) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.time.Time.Time, stdgo.GoString>>)), _out : stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoObjectMap<stdgo.time.Time.Time, stdgo.GoString>();
        x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.time.Time.Time", [], stdgo.internal.reflect.Reflect.GoType.named("stdgo.time.Time.Time", [], stdgo.internal.reflect.Reflect.GoType.invalidType, false, { get : () -> null }), false, { get : () -> null }));
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        @:mergeBlock {
            x.set(stdgo.time.Time.date((2009 : stdgo.StdGoTypes.GoInt), (11 : stdgo.time.Time.Month), (10 : stdgo.StdGoTypes.GoInt), (23 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt), stdgo.time.Time.utc), ("hello world" : stdgo.GoString));
        };
        cast x;
    } : stdgo.GoMap<stdgo.time.Time.Time, stdgo.GoString>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"2009-11-10T23:00:00Z\": \"hello world\"}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.GoMap<stdgo.encoding.json.Json.Point, stdgo.GoString>)) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.encoding.json.Json.Point, stdgo.GoString>>)), _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("object" : stdgo.GoString), type : stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoObjectMap<stdgo.encoding.json.Json.Point, stdgo.GoString>();
        x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.encoding.json.Json.Point", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "z", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }]), false, { get : () -> null }));
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        @:mergeBlock {};
        cast x;
    } : stdgo.GoMap<stdgo.encoding.json.Json.Point, stdgo.GoString>))), offset : (1i64 : stdgo.StdGoTypes.GoInt64) } : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"asdf\": \"hello world\"}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.GoMap<stdgo.encoding.json.Json.T_unmarshaler, stdgo.GoString>)) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.encoding.json.Json.T_unmarshaler, stdgo.GoString>>)), _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("object" : stdgo.GoString), type : stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoObjectMap<stdgo.encoding.json.Json.T_unmarshaler, stdgo.GoString>();
        x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.encoding.json.Json.T_unmarshaler", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "t", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(bool_kind) }, optional : false }]), false, { get : () -> null }));
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        @:mergeBlock {};
        cast x;
    } : stdgo.GoMap<stdgo.encoding.json.Json.T_unmarshaler, stdgo.GoString>))), offset : (1i64 : stdgo.StdGoTypes.GoInt64) } : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("\"AQID\"" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.Slice<stdgo.encoding.json.Json.T_byteWithMarshalJSON>)) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.encoding.json.Json.T_byteWithMarshalJSON>>)), _out : stdgo.Go.toInterface((new stdgo.Slice<stdgo.encoding.json.Json.T_byteWithMarshalJSON>(3, 3, (1 : stdgo.encoding.json.Json.T_byteWithMarshalJSON), (2 : stdgo.encoding.json.Json.T_byteWithMarshalJSON), (3 : stdgo.encoding.json.Json.T_byteWithMarshalJSON)) : stdgo.Slice<stdgo.encoding.json.Json.T_byteWithMarshalJSON>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("[\"Z01\",\"Z02\",\"Z03\"]" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.Slice<stdgo.encoding.json.Json.T_byteWithMarshalJSON>)) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.encoding.json.Json.T_byteWithMarshalJSON>>)), _out : stdgo.Go.toInterface((new stdgo.Slice<stdgo.encoding.json.Json.T_byteWithMarshalJSON>(3, 3, (1 : stdgo.encoding.json.Json.T_byteWithMarshalJSON), (2 : stdgo.encoding.json.Json.T_byteWithMarshalJSON), (3 : stdgo.encoding.json.Json.T_byteWithMarshalJSON)) : stdgo.Slice<stdgo.encoding.json.Json.T_byteWithMarshalJSON>)), _golden : true } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("\"AQID\"" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.Slice<stdgo.encoding.json.Json.T_byteWithMarshalText>)) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.encoding.json.Json.T_byteWithMarshalText>>)), _out : stdgo.Go.toInterface((new stdgo.Slice<stdgo.encoding.json.Json.T_byteWithMarshalText>(3, 3, (1 : stdgo.encoding.json.Json.T_byteWithMarshalText), (2 : stdgo.encoding.json.Json.T_byteWithMarshalText), (3 : stdgo.encoding.json.Json.T_byteWithMarshalText)) : stdgo.Slice<stdgo.encoding.json.Json.T_byteWithMarshalText>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("[\"Z01\",\"Z02\",\"Z03\"]" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.Slice<stdgo.encoding.json.Json.T_byteWithMarshalText>)) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.encoding.json.Json.T_byteWithMarshalText>>)), _out : stdgo.Go.toInterface((new stdgo.Slice<stdgo.encoding.json.Json.T_byteWithMarshalText>(3, 3, (1 : stdgo.encoding.json.Json.T_byteWithMarshalText), (2 : stdgo.encoding.json.Json.T_byteWithMarshalText), (3 : stdgo.encoding.json.Json.T_byteWithMarshalText)) : stdgo.Slice<stdgo.encoding.json.Json.T_byteWithMarshalText>)), _golden : true } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("\"AQID\"" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.Slice<stdgo.encoding.json.Json.T_byteWithPtrMarshalJSON>)) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.encoding.json.Json.T_byteWithPtrMarshalJSON>>)), _out : stdgo.Go.toInterface((new stdgo.Slice<stdgo.encoding.json.Json.T_byteWithPtrMarshalJSON>(3, 3, (1 : stdgo.encoding.json.Json.T_byteWithPtrMarshalJSON), (2 : stdgo.encoding.json.Json.T_byteWithPtrMarshalJSON), (3 : stdgo.encoding.json.Json.T_byteWithPtrMarshalJSON)) : stdgo.Slice<stdgo.encoding.json.Json.T_byteWithPtrMarshalJSON>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("[\"Z01\",\"Z02\",\"Z03\"]" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.Slice<stdgo.encoding.json.Json.T_byteWithPtrMarshalJSON>)) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.encoding.json.Json.T_byteWithPtrMarshalJSON>>)), _out : stdgo.Go.toInterface((new stdgo.Slice<stdgo.encoding.json.Json.T_byteWithPtrMarshalJSON>(3, 3, (1 : stdgo.encoding.json.Json.T_byteWithPtrMarshalJSON), (2 : stdgo.encoding.json.Json.T_byteWithPtrMarshalJSON), (3 : stdgo.encoding.json.Json.T_byteWithPtrMarshalJSON)) : stdgo.Slice<stdgo.encoding.json.Json.T_byteWithPtrMarshalJSON>)), _golden : true } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("\"AQID\"" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.Slice<stdgo.encoding.json.Json.T_byteWithPtrMarshalText>)) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.encoding.json.Json.T_byteWithPtrMarshalText>>)), _out : stdgo.Go.toInterface((new stdgo.Slice<stdgo.encoding.json.Json.T_byteWithPtrMarshalText>(3, 3, (1 : stdgo.encoding.json.Json.T_byteWithPtrMarshalText), (2 : stdgo.encoding.json.Json.T_byteWithPtrMarshalText), (3 : stdgo.encoding.json.Json.T_byteWithPtrMarshalText)) : stdgo.Slice<stdgo.encoding.json.Json.T_byteWithPtrMarshalText>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("[\"Z01\",\"Z02\",\"Z03\"]" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.Slice<stdgo.encoding.json.Json.T_byteWithPtrMarshalText>)) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.encoding.json.Json.T_byteWithPtrMarshalText>>)), _out : stdgo.Go.toInterface((new stdgo.Slice<stdgo.encoding.json.Json.T_byteWithPtrMarshalText>(3, 3, (1 : stdgo.encoding.json.Json.T_byteWithPtrMarshalText), (2 : stdgo.encoding.json.Json.T_byteWithPtrMarshalText), (3 : stdgo.encoding.json.Json.T_byteWithPtrMarshalText)) : stdgo.Slice<stdgo.encoding.json.Json.T_byteWithPtrMarshalText>)), _golden : true } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("[\"Z01\",\"Z02\",\"Z03\"]" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.Slice<stdgo.encoding.json.Json.T_intWithMarshalJSON>)) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.encoding.json.Json.T_intWithMarshalJSON>>)), _out : stdgo.Go.toInterface((new stdgo.Slice<stdgo.encoding.json.Json.T_intWithMarshalJSON>(3, 3, (1 : stdgo.encoding.json.Json.T_intWithMarshalJSON), (2 : stdgo.encoding.json.Json.T_intWithMarshalJSON), (3 : stdgo.encoding.json.Json.T_intWithMarshalJSON)) : stdgo.Slice<stdgo.encoding.json.Json.T_intWithMarshalJSON>)), _golden : true } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("[\"Z01\",\"Z02\",\"Z03\"]" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.Slice<stdgo.encoding.json.Json.T_intWithMarshalText>)) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.encoding.json.Json.T_intWithMarshalText>>)), _out : stdgo.Go.toInterface((new stdgo.Slice<stdgo.encoding.json.Json.T_intWithMarshalText>(3, 3, (1 : stdgo.encoding.json.Json.T_intWithMarshalText), (2 : stdgo.encoding.json.Json.T_intWithMarshalText), (3 : stdgo.encoding.json.Json.T_intWithMarshalText)) : stdgo.Slice<stdgo.encoding.json.Json.T_intWithMarshalText>)), _golden : true } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("[\"Z01\",\"Z02\",\"Z03\"]" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.Slice<stdgo.encoding.json.Json.T_intWithPtrMarshalJSON>)) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.encoding.json.Json.T_intWithPtrMarshalJSON>>)), _out : stdgo.Go.toInterface((new stdgo.Slice<stdgo.encoding.json.Json.T_intWithPtrMarshalJSON>(3, 3, (1 : stdgo.encoding.json.Json.T_intWithPtrMarshalJSON), (2 : stdgo.encoding.json.Json.T_intWithPtrMarshalJSON), (3 : stdgo.encoding.json.Json.T_intWithPtrMarshalJSON)) : stdgo.Slice<stdgo.encoding.json.Json.T_intWithPtrMarshalJSON>)), _golden : true } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("[\"Z01\",\"Z02\",\"Z03\"]" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.Slice<stdgo.encoding.json.Json.T_intWithPtrMarshalText>)) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.encoding.json.Json.T_intWithPtrMarshalText>>)), _out : stdgo.Go.toInterface((new stdgo.Slice<stdgo.encoding.json.Json.T_intWithPtrMarshalText>(3, 3, (1 : stdgo.encoding.json.Json.T_intWithPtrMarshalText), (2 : stdgo.encoding.json.Json.T_intWithPtrMarshalText), (3 : stdgo.encoding.json.Json.T_intWithPtrMarshalText)) : stdgo.Slice<stdgo.encoding.json.Json.T_intWithPtrMarshalText>)), _golden : true } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("0.000001" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoFloat64))), _out : stdgo.Go.toInterface((1e-06 : stdgo.StdGoTypes.GoFloat64)), _golden : true } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("1e-7" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoFloat64))), _out : stdgo.Go.toInterface((1e-07 : stdgo.StdGoTypes.GoFloat64)), _golden : true } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("100000000000000000000" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoFloat64))), _out : stdgo.Go.toInterface((1e+20 : stdgo.StdGoTypes.GoFloat64)), _golden : true } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("1e+21" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoFloat64))), _out : stdgo.Go.toInterface((1e+21 : stdgo.StdGoTypes.GoFloat64)), _golden : true } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("-0.000001" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoFloat64))), _out : stdgo.Go.toInterface((-1e-06 : stdgo.StdGoTypes.GoFloat64)), _golden : true } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("-1e-7" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoFloat64))), _out : stdgo.Go.toInterface((-1e-07 : stdgo.StdGoTypes.GoFloat64)), _golden : true } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("-100000000000000000000" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoFloat64))), _out : stdgo.Go.toInterface((-1e+20 : stdgo.StdGoTypes.GoFloat64)), _golden : true } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("-1e+21" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoFloat64))), _out : stdgo.Go.toInterface((-1e+21 : stdgo.StdGoTypes.GoFloat64)), _golden : true } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("999999999999999900000" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoFloat64))), _out : stdgo.Go.toInterface((9.999999999999999e+20 : stdgo.StdGoTypes.GoFloat64)), _golden : true } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("9007199254740992" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoFloat64))), _out : stdgo.Go.toInterface((9.007199254740992e+15 : stdgo.StdGoTypes.GoFloat64)), _golden : true } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("9007199254740993" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoFloat64))), _out : stdgo.Go.toInterface((9.007199254740992e+15 : stdgo.StdGoTypes.GoFloat64)), _golden : false } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"V\": {\"F2\": \"hello\"}}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.VOuter)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.VOuter>)), _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("string" : stdgo.GoString), type : stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt32))), offset : (20i64 : stdgo.StdGoTypes.GoInt64), struct_ : ("V" : stdgo.GoString), field : ("V.F2" : stdgo.GoString) } : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"V\": {\"F4\": {}, \"F2\": \"hello\"}}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.VOuter)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.VOuter>)), _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("string" : stdgo.GoString), type : stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt32))), offset : (30i64 : stdgo.StdGoTypes.GoInt64), struct_ : ("V" : stdgo.GoString), field : ("V.F2" : stdgo.GoString) } : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"B\":\"true\"}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.B)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.B>)), _out : stdgo.Go.toInterface((new stdgo.encoding.json.Json.B(true) : stdgo.encoding.json.Json.B)), _golden : true } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"B\":\"false\"}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.B)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.B>)), _out : stdgo.Go.toInterface((new stdgo.encoding.json.Json.B(false) : stdgo.encoding.json.Json.B)), _golden : true } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"B\": \"maybe\"}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.B)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.B>)), _err : stdgo.errors.Errors.new_(("json: invalid use of ,string struct tag, trying to unmarshal \"maybe\" into bool" : stdgo.GoString)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"B\": \"tru\"}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.B)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.B>)), _err : stdgo.errors.Errors.new_(("json: invalid use of ,string struct tag, trying to unmarshal \"tru\" into bool" : stdgo.GoString)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"B\": \"False\"}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.B)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.B>)), _err : stdgo.errors.Errors.new_(("json: invalid use of ,string struct tag, trying to unmarshal \"False\" into bool" : stdgo.GoString)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"B\": \"null\"}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.B)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.B>)), _out : stdgo.Go.toInterface((new stdgo.encoding.json.Json.B(false) : stdgo.encoding.json.Json.B)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"B\": \"nul\"}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.B)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.B>)), _err : stdgo.errors.Errors.new_(("json: invalid use of ,string struct tag, trying to unmarshal \"nul\" into bool" : stdgo.GoString)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"B\": [2, 3]}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.B)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.B>)), _err : stdgo.errors.Errors.new_(("json: invalid use of ,string struct tag, trying to unmarshal unquoted value into bool" : stdgo.GoString)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\n\t\t\t\"Level0\": 1,\n\t\t\t\"Level1b\": 2,\n\t\t\t\"Level1c\": 3,\n\t\t\t\"x\": 4,\n\t\t\t\"Level1a\": 5,\n\t\t\t\"LEVEL1B\": 6,\n\t\t\t\"e\": {\n\t\t\t\t\"Level1a\": 8,\n\t\t\t\t\"Level1b\": 9,\n\t\t\t\t\"Level1c\": 10,\n\t\t\t\t\"Level1d\": 11,\n\t\t\t\t\"x\": 12\n\t\t\t},\n\t\t\t\"Loop1\": 13,\n\t\t\t\"Loop2\": 14,\n\t\t\t\"X\": 15,\n\t\t\t\"Y\": 16,\n\t\t\t\"Z\": 17,\n\t\t\t\"Q\": 18,\n\t\t\t\"extra\": true\n\t\t}" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.Top)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Top>))), _err : stdgo.fmt.Fmt.errorf(("json: unknown field \"extra\"" : stdgo.GoString)), _disallowUnknownFields : true } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\n\t\t\t\"Level0\": 1,\n\t\t\t\"Level1b\": 2,\n\t\t\t\"Level1c\": 3,\n\t\t\t\"x\": 4,\n\t\t\t\"Level1a\": 5,\n\t\t\t\"LEVEL1B\": 6,\n\t\t\t\"e\": {\n\t\t\t\t\"Level1a\": 8,\n\t\t\t\t\"Level1b\": 9,\n\t\t\t\t\"Level1c\": 10,\n\t\t\t\t\"Level1d\": 11,\n\t\t\t\t\"x\": 12,\n\t\t\t\t\"extra\": null\n\t\t\t},\n\t\t\t\"Loop1\": 13,\n\t\t\t\"Loop2\": 14,\n\t\t\t\"X\": 15,\n\t\t\t\"Y\": 16,\n\t\t\t\"Z\": 17,\n\t\t\t\"Q\": 18\n\t\t}" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.Top)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Top>))), _err : stdgo.fmt.Fmt.errorf(("json: unknown field \"extra\"" : stdgo.GoString)), _disallowUnknownFields : true } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"data\":{\"test1\": \"bob\", \"test2\": 123}}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.T_mapStringToStringData)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_mapStringToStringData>)), _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("number" : stdgo.GoString), type : stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(stdgo.Go.str())), offset : (37i64 : stdgo.StdGoTypes.GoInt64), struct_ : ("mapStringToStringData" : stdgo.GoString), field : ("data" : stdgo.GoString) } : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"data\":{\"test1\": 123, \"test2\": \"bob\"}}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.T_mapStringToStringData)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_mapStringToStringData>)), _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("number" : stdgo.GoString), type : stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(stdgo.Go.str())), offset : (21i64 : stdgo.StdGoTypes.GoInt64), struct_ : ("mapStringToStringData" : stdgo.GoString), field : ("data" : stdgo.GoString) } : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("[1, 2, 3]" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.MustNotUnmarshalText)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.MustNotUnmarshalText>))), _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("array" : stdgo.GoString), type : stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.MustNotUnmarshalText() : stdgo.encoding.json.Json.MustNotUnmarshalText)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.MustNotUnmarshalText>)))), offset : (1i64 : stdgo.StdGoTypes.GoInt64) } : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"foo\": \"bar\"}" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.MustNotUnmarshalText)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.MustNotUnmarshalText>))), _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("object" : stdgo.GoString), type : stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.MustNotUnmarshalText() : stdgo.encoding.json.Json.MustNotUnmarshalText)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.MustNotUnmarshalText>)))), offset : (1i64 : stdgo.StdGoTypes.GoInt64) } : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"PP\": {\"T\": {\"Y\": \"bad-type\"}}}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.P)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.P>)), _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("string" : stdgo.GoString), type : stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt))), offset : (29i64 : stdgo.StdGoTypes.GoInt64), struct_ : ("T" : stdgo.GoString), field : ("PP.T.Y" : stdgo.GoString) } : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"Ts\": [{\"Y\": 1}, {\"Y\": 2}, {\"Y\": \"bad-type\"}]}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.PP)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.PP>)), _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("string" : stdgo.GoString), type : stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt))), offset : (29i64 : stdgo.StdGoTypes.GoInt64), struct_ : ("T" : stdgo.GoString), field : ("Ts.Y" : stdgo.GoString) } : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("invalid" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.pointer((("" : stdgo.GoString) : stdgo.encoding.json.Json.Number))), _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ _msg : ("invalid character \'i\' looking for beginning of value" : stdgo.GoString), offset : (1i64 : stdgo.StdGoTypes.GoInt64) } : stdgo.encoding.json.Json.SyntaxError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SyntaxError>)) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("\"invalid\"" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.pointer((("" : stdgo.GoString) : stdgo.encoding.json.Json.Number))), _err : stdgo.fmt.Fmt.errorf(("json: invalid number literal, trying to unmarshal %q into Number" : stdgo.GoString), stdgo.Go.toInterface(("\"invalid\"" : stdgo.GoString))) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"A\":\"invalid\"}" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ a : (("" : stdgo.GoString) : stdgo.encoding.json.Json.Number) } : T__struct_4)) : stdgo.StdGoTypes.Ref<T__struct_4>))), _err : stdgo.fmt.Fmt.errorf(("json: invalid number literal, trying to unmarshal %q into Number" : stdgo.GoString), stdgo.Go.toInterface(("\"invalid\"" : stdgo.GoString))) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"A\":\"invalid\"}" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ a : (("" : stdgo.GoString) : stdgo.encoding.json.Json.Number) } : T__struct_5)) : stdgo.StdGoTypes.Ref<T__struct_5>))), _err : stdgo.fmt.Fmt.errorf(("json: invalid use of ,string struct tag, trying to unmarshal %q into json.Number" : stdgo.GoString), stdgo.Go.toInterface(("invalid" : stdgo.GoString))) } : stdgo.encoding.json.Json.T_unmarshalTest),
({ _in : ("{\"A\":\"invalid\"}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.GoMap<stdgo.GoString, stdgo.encoding.json.Json.Number>)) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.encoding.json.Json.Number>>)), _err : stdgo.fmt.Fmt.errorf(("json: invalid number literal, trying to unmarshal %q into Number" : stdgo.GoString), stdgo.Go.toInterface(("\"invalid\"" : stdgo.GoString))) } : stdgo.encoding.json.Json.T_unmarshalTest)) : stdgo.Slice<stdgo.encoding.json.Json.T_unmarshalTest>);
/**
    
    
    
**/
var _interfaceSetTests : stdgo.Slice<T__struct_8> = (new stdgo.Slice<T__struct_8>(
12,
12,
({ _pre : stdgo.Go.toInterface(("foo" : stdgo.GoString)), _json : ("\"bar\"" : stdgo.GoString), _post : stdgo.Go.toInterface(("bar" : stdgo.GoString)) } : T__struct_8),
({ _pre : stdgo.Go.toInterface(("foo" : stdgo.GoString)), _json : ("2" : stdgo.GoString), _post : stdgo.Go.toInterface((2 : stdgo.StdGoTypes.GoFloat64)) } : T__struct_8),
({ _pre : stdgo.Go.toInterface(("foo" : stdgo.GoString)), _json : ("true" : stdgo.GoString), _post : stdgo.Go.toInterface(true) } : T__struct_8),
({ _pre : stdgo.Go.toInterface(("foo" : stdgo.GoString)), _json : ("null" : stdgo.GoString), _post : (null : stdgo.StdGoTypes.AnyInterface) } : T__struct_8),
({ _pre : (null : stdgo.StdGoTypes.AnyInterface), _json : ("null" : stdgo.GoString), _post : (null : stdgo.StdGoTypes.AnyInterface) } : T__struct_8),
({ _pre : stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoInt))), _json : ("null" : stdgo.GoString), _post : (null : stdgo.StdGoTypes.AnyInterface) } : T__struct_8),
({ _pre : stdgo.Go.toInterface((null : stdgo.Pointer<stdgo.StdGoTypes.GoInt>)), _json : ("null" : stdgo.GoString), _post : (null : stdgo.StdGoTypes.AnyInterface) } : T__struct_8),
({ _pre : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.Pointer<stdgo.StdGoTypes.GoInt>)) : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>)), _json : ("null" : stdgo.GoString), _post : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.Pointer<stdgo.StdGoTypes.GoInt>)) : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>)) } : T__struct_8),
({ _pre : stdgo.Go.toInterface((null : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>)), _json : ("null" : stdgo.GoString), _post : (null : stdgo.StdGoTypes.AnyInterface) } : T__struct_8),
({ _pre : stdgo.Go.toInterface(_intp((1 : stdgo.StdGoTypes.GoInt))), _json : ("null" : stdgo.GoString), _post : (null : stdgo.StdGoTypes.AnyInterface) } : T__struct_8),
({ _pre : stdgo.Go.toInterface(_intpp((null : stdgo.Pointer<stdgo.StdGoTypes.GoInt>))), _json : ("null" : stdgo.GoString), _post : stdgo.Go.toInterface(_intpp((null : stdgo.Pointer<stdgo.StdGoTypes.GoInt>))) } : T__struct_8),
({ _pre : stdgo.Go.toInterface(_intpp(_intp((1 : stdgo.StdGoTypes.GoInt)))), _json : ("null" : stdgo.GoString), _post : stdgo.Go.toInterface(_intpp((null : stdgo.Pointer<stdgo.StdGoTypes.GoInt>))) } : T__struct_8)) : stdgo.Slice<T__struct_8>);
/**
    
    
    
**/
var _decodeTypeErrorTests : stdgo.Slice<T__struct_10> = (new stdgo.Slice<T__struct_10>(6, 6, ({ _dest : stdgo.Go.toInterface(stdgo.Go.pointer(("" : stdgo.GoString))), _src : ("{\"user\": \"name\"}" : stdgo.GoString) } : T__struct_10), ({ _dest : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.Error)) : stdgo.StdGoTypes.Ref<stdgo.Error>)), _src : ("{}" : stdgo.GoString) } : T__struct_10), ({ _dest : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.Error)) : stdgo.StdGoTypes.Ref<stdgo.Error>)), _src : ("[]" : stdgo.GoString) } : T__struct_10), ({ _dest : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.Error)) : stdgo.StdGoTypes.Ref<stdgo.Error>)), _src : ("\"\"" : stdgo.GoString) } : T__struct_10), ({ _dest : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.Error)) : stdgo.StdGoTypes.Ref<stdgo.Error>)), _src : ("123" : stdgo.GoString) } : T__struct_10), ({ _dest : stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.Error)) : stdgo.StdGoTypes.Ref<stdgo.Error>)), _src : ("true" : stdgo.GoString) } : T__struct_10)) : stdgo.Slice<T__struct_10>);
/**
    
    
    
**/
var _unmarshalSyntaxTests : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(8, 8, ("tru" : stdgo.GoString), ("fals" : stdgo.GoString), ("nul" : stdgo.GoString), ("123e" : stdgo.GoString), ("\"hello" : stdgo.GoString), ("[1,2,3" : stdgo.GoString), ("{\"key\":1" : stdgo.GoString), ("{\"key\":1," : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
/**
    
    
    
**/
var _invalidUnmarshalTests : stdgo.Slice<T__struct_12> = (new stdgo.Slice<T__struct_12>(3, 3, ({ _v : (null : stdgo.StdGoTypes.AnyInterface), _want : ("json: Unmarshal(nil)" : stdgo.GoString) } : T__struct_12), ({ _v : stdgo.Go.toInterface((new T_unquotedValue() : T_unquotedValue)), _want : ("json: Unmarshal(non-pointer struct {})" : stdgo.GoString) } : T__struct_12), ({ _v : stdgo.Go.toInterface((null : stdgo.Pointer<stdgo.StdGoTypes.GoInt>)), _want : ("json: Unmarshal(nil *int)" : stdgo.GoString) } : T__struct_12)) : stdgo.Slice<T__struct_12>);
/**
    
    
    
**/
var _invalidUnmarshalTextTests : stdgo.Slice<T__struct_12> = (new stdgo.Slice<T__struct_12>(4, 4, ({ _v : (null : stdgo.StdGoTypes.AnyInterface), _want : ("json: Unmarshal(nil)" : stdgo.GoString) } : T__struct_12), ({ _v : stdgo.Go.toInterface((new T_unquotedValue() : T_unquotedValue)), _want : ("json: Unmarshal(non-pointer struct {})" : stdgo.GoString) } : T__struct_12), ({ _v : stdgo.Go.toInterface((null : stdgo.Pointer<stdgo.StdGoTypes.GoInt>)), _want : ("json: Unmarshal(nil *int)" : stdgo.GoString) } : T__struct_12), ({ _v : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(new stdgo.net.Net.IP(0, 0)) : stdgo.StdGoTypes.Ref<stdgo.net.Net.IP>))), _want : ("json: cannot unmarshal number into Go value of type *net.IP" : stdgo.GoString) } : T__struct_12)) : stdgo.Slice<T__struct_12>);
/**
    
    
    
**/
var _optionalsExpected : stdgo.GoString = ("{\n \"sr\": \"\",\n \"omitempty\": 0,\n \"slr\": null,\n \"mr\": {},\n \"fr\": 0,\n \"br\": false,\n \"ur\": 0,\n \"str\": {},\n \"sto\": {}\n}" : stdgo.GoString);
/**
    
    
    
**/
var _samePointerNoCycle : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SamePointerNoCycle> = (stdgo.Go.setRef((new stdgo.encoding.json.Json.SamePointerNoCycle() : stdgo.encoding.json.Json.SamePointerNoCycle)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SamePointerNoCycle>);
/**
    
    
    
**/
var _pointerCycle : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.PointerCycle> = (stdgo.Go.setRef((new stdgo.encoding.json.Json.PointerCycle() : stdgo.encoding.json.Json.PointerCycle)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.PointerCycle>);
/**
    
    
    
**/
var _pointerCycleIndirect : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.PointerCycleIndirect> = (stdgo.Go.setRef((new stdgo.encoding.json.Json.PointerCycleIndirect() : stdgo.encoding.json.Json.PointerCycleIndirect)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.PointerCycleIndirect>);
/**
    
    
    
**/
var _mapCycle : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface> = ({
        final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.AnyInterface>();
        x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
        @:mergeBlock {};
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>);
/**
    
    
    
**/
var _sliceCycle : stdgo.Slice<stdgo.StdGoTypes.AnyInterface> = (new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(1, 1, (null : stdgo.StdGoTypes.AnyInterface)) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>);
/**
    
    
    
**/
var _sliceNoCycle : stdgo.Slice<stdgo.StdGoTypes.AnyInterface> = (new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(2, 2, (null : stdgo.StdGoTypes.AnyInterface), (null : stdgo.StdGoTypes.AnyInterface)) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>);
/**
    
    
    
**/
var _recursiveSliceCycle : stdgo.Slice<stdgo.encoding.json.Json.RecursiveSlice> = (new stdgo.Slice<stdgo.encoding.json.Json.RecursiveSlice>(1, 1, null) : stdgo.Slice<stdgo.encoding.json.Json.RecursiveSlice>);
/**
    
    
    
**/
var _unsupportedValues : stdgo.Slice<stdgo.StdGoTypes.AnyInterface> = (new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(8, 8, stdgo.Go.toInterface(stdgo.math.Math.naN()), stdgo.Go.toInterface(stdgo.math.Math.inf((-1 : stdgo.StdGoTypes.GoInt))), stdgo.Go.toInterface(stdgo.math.Math.inf((1 : stdgo.StdGoTypes.GoInt))), stdgo.Go.toInterface(_pointerCycle), stdgo.Go.toInterface(_pointerCycleIndirect), stdgo.Go.toInterface(_mapCycle), stdgo.Go.toInterface(_sliceCycle), stdgo.Go.toInterface(_recursiveSliceCycle)) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>);
/**
    
    
    
**/
var _encodeStringTests : stdgo.Slice<T__struct_6> = (new stdgo.Slice<T__struct_6>(
32,
32,
({ _in : stdgo.Go.str(0)?.__copy__(), _out : ("\"\\u0000\"" : stdgo.GoString) } : T__struct_6),
({ _in : stdgo.Go.str(1)?.__copy__(), _out : ("\"\\u0001\"" : stdgo.GoString) } : T__struct_6),
({ _in : stdgo.Go.str(2)?.__copy__(), _out : ("\"\\u0002\"" : stdgo.GoString) } : T__struct_6),
({ _in : stdgo.Go.str(3)?.__copy__(), _out : ("\"\\u0003\"" : stdgo.GoString) } : T__struct_6),
({ _in : stdgo.Go.str(4)?.__copy__(), _out : ("\"\\u0004\"" : stdgo.GoString) } : T__struct_6),
({ _in : stdgo.Go.str(5)?.__copy__(), _out : ("\"\\u0005\"" : stdgo.GoString) } : T__struct_6),
({ _in : stdgo.Go.str(6)?.__copy__(), _out : ("\"\\u0006\"" : stdgo.GoString) } : T__struct_6),
({ _in : ("\x07" : stdgo.GoString), _out : ("\"\\u0007\"" : stdgo.GoString) } : T__struct_6),
({ _in : ("\x08" : stdgo.GoString), _out : ("\"\\u0008\"" : stdgo.GoString) } : T__struct_6),
({ _in : ("\t" : stdgo.GoString), _out : ("\"\\t\"" : stdgo.GoString) } : T__struct_6),
({ _in : ("\n" : stdgo.GoString), _out : ("\"\\n\"" : stdgo.GoString) } : T__struct_6),
({ _in : ("\x0B" : stdgo.GoString), _out : ("\"\\u000b\"" : stdgo.GoString) } : T__struct_6),
({ _in : ("\x0C" : stdgo.GoString), _out : ("\"\\u000c\"" : stdgo.GoString) } : T__struct_6),
({ _in : ("\r" : stdgo.GoString), _out : ("\"\\r\"" : stdgo.GoString) } : T__struct_6),
({ _in : stdgo.Go.str(14)?.__copy__(), _out : ("\"\\u000e\"" : stdgo.GoString) } : T__struct_6),
({ _in : stdgo.Go.str(15)?.__copy__(), _out : ("\"\\u000f\"" : stdgo.GoString) } : T__struct_6),
({ _in : stdgo.Go.str(16)?.__copy__(), _out : ("\"\\u0010\"" : stdgo.GoString) } : T__struct_6),
({ _in : stdgo.Go.str(17)?.__copy__(), _out : ("\"\\u0011\"" : stdgo.GoString) } : T__struct_6),
({ _in : stdgo.Go.str(18)?.__copy__(), _out : ("\"\\u0012\"" : stdgo.GoString) } : T__struct_6),
({ _in : stdgo.Go.str(19)?.__copy__(), _out : ("\"\\u0013\"" : stdgo.GoString) } : T__struct_6),
({ _in : stdgo.Go.str(20)?.__copy__(), _out : ("\"\\u0014\"" : stdgo.GoString) } : T__struct_6),
({ _in : stdgo.Go.str(21)?.__copy__(), _out : ("\"\\u0015\"" : stdgo.GoString) } : T__struct_6),
({ _in : stdgo.Go.str(22)?.__copy__(), _out : ("\"\\u0016\"" : stdgo.GoString) } : T__struct_6),
({ _in : stdgo.Go.str(23)?.__copy__(), _out : ("\"\\u0017\"" : stdgo.GoString) } : T__struct_6),
({ _in : stdgo.Go.str(24)?.__copy__(), _out : ("\"\\u0018\"" : stdgo.GoString) } : T__struct_6),
({ _in : stdgo.Go.str(25)?.__copy__(), _out : ("\"\\u0019\"" : stdgo.GoString) } : T__struct_6),
({ _in : stdgo.Go.str(26)?.__copy__(), _out : ("\"\\u001a\"" : stdgo.GoString) } : T__struct_6),
({ _in : stdgo.Go.str(27)?.__copy__(), _out : ("\"\\u001b\"" : stdgo.GoString) } : T__struct_6),
({ _in : stdgo.Go.str(28)?.__copy__(), _out : ("\"\\u001c\"" : stdgo.GoString) } : T__struct_6),
({ _in : stdgo.Go.str(29)?.__copy__(), _out : ("\"\\u001d\"" : stdgo.GoString) } : T__struct_6),
({ _in : stdgo.Go.str(30)?.__copy__(), _out : ("\"\\u001e\"" : stdgo.GoString) } : T__struct_6),
({ _in : stdgo.Go.str(31)?.__copy__(), _out : ("\"\\u001f\"" : stdgo.GoString) } : T__struct_6)) : stdgo.Slice<T__struct_6>);
/**
    
    
    
**/
var _re : stdgo.GoString -> stdgo.StdGoTypes.Ref<stdgo.regexp.Regexp.Regexp> = stdgo.regexp.Regexp.mustCompile;
/**
    // syntactic checks on form of marshaled floating point numbers.
    
    
**/
var _badFloatREs : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.Regexp.Regexp>> = (new stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.Regexp.Regexp>>(
17,
17,
_re(("p" : stdgo.GoString)),
_re(("^\\+" : stdgo.GoString)),
_re(("^-?0[^.]" : stdgo.GoString)),
_re(("^-?\\." : stdgo.GoString)),
_re(("\\.(e|$)" : stdgo.GoString)),
_re(("\\.[0-9]+0(e|$)" : stdgo.GoString)),
_re(("^-?(0|[0-9]{2,})\\..*e" : stdgo.GoString)),
_re(("e[0-9]" : stdgo.GoString)),
_re(("e[+-]0" : stdgo.GoString)),
_re(("e-[1-6]$" : stdgo.GoString)),
_re(("e+(.|1.|20)$" : stdgo.GoString)),
_re(("^-?0\\.0000000" : stdgo.GoString)),
_re(("^-?[0-9]{22}" : stdgo.GoString)),
_re(("[1-9][0-9]{16}[1-9]" : stdgo.GoString)),
_re(("[1-9][0-9.]{17}[1-9]" : stdgo.GoString)),
_re(("[1-9][0-9]{8}[1-9]" : stdgo.GoString)),
_re(("[1-9][0-9.]{9}[1-9]" : stdgo.GoString))) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.Regexp.Regexp>>);
/**
    
    
    
**/
var _validTests : stdgo.Slice<T__struct_36> = (new stdgo.Slice<T__struct_36>(6, 6, ({ _data : ("foo" : stdgo.GoString), _ok : false } : T__struct_36), ({ _data : ("}{" : stdgo.GoString), _ok : false } : T__struct_36), ({ _data : ("{]" : stdgo.GoString), _ok : false } : T__struct_36), ({ _data : ("{}" : stdgo.GoString), _ok : true } : T__struct_36), ({ _data : ("{\"foo\":\"bar\"}" : stdgo.GoString), _ok : true } : T__struct_36), ({ _data : ("{\"foo\":\"bar\",\"bar\":{\"baz\":[\"qux\"]}}" : stdgo.GoString), _ok : true } : T__struct_36)) : stdgo.Slice<T__struct_36>);
/**
    
    
    
**/
var _ex1 : stdgo.GoString = ("[true,false,null,\"x\",1,1.5,0,-5e+2]" : stdgo.GoString);
/**
    
    
    
**/
var _ex1i : stdgo.GoString = ("[\n\ttrue,\n\tfalse,\n\tnull,\n\t\"x\",\n\t1,\n\t1.5,\n\t0,\n\t-5e+2\n]" : stdgo.GoString);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.encoding.json.Json.T_example> = (new stdgo.Slice<stdgo.encoding.json.Json.T_example>(
9,
9,
(new stdgo.encoding.json.Json.T_example(("1" : stdgo.GoString), ("1" : stdgo.GoString)) : stdgo.encoding.json.Json.T_example),
(new stdgo.encoding.json.Json.T_example(("{}" : stdgo.GoString), ("{}" : stdgo.GoString)) : stdgo.encoding.json.Json.T_example),
(new stdgo.encoding.json.Json.T_example(("[]" : stdgo.GoString), ("[]" : stdgo.GoString)) : stdgo.encoding.json.Json.T_example),
(new stdgo.encoding.json.Json.T_example(("{\"\":2}" : stdgo.GoString), ("{\n\t\"\": 2\n}" : stdgo.GoString)) : stdgo.encoding.json.Json.T_example),
(new stdgo.encoding.json.Json.T_example(("[3]" : stdgo.GoString), ("[\n\t3\n]" : stdgo.GoString)) : stdgo.encoding.json.Json.T_example),
(new stdgo.encoding.json.Json.T_example(("[1,2,3]" : stdgo.GoString), ("[\n\t1,\n\t2,\n\t3\n]" : stdgo.GoString)) : stdgo.encoding.json.Json.T_example),
(new stdgo.encoding.json.Json.T_example(("{\"x\":1}" : stdgo.GoString), ("{\n\t\"x\": 1\n}" : stdgo.GoString)) : stdgo.encoding.json.Json.T_example),
(new stdgo.encoding.json.Json.T_example(_ex1?.__copy__(), _ex1i?.__copy__()) : stdgo.encoding.json.Json.T_example),
(new stdgo.encoding.json.Json.T_example(("{\"\":\"<>&\u2028\u2029\"}" : stdgo.GoString), ("{\n\t\"\": \"<>&\u2028\u2029\"\n}" : stdgo.GoString)) : stdgo.encoding.json.Json.T_example)) : stdgo.Slice<stdgo.encoding.json.Json.T_example>);
/**
    
    
    
**/
var _indentErrorTests : stdgo.Slice<stdgo.encoding.json.Json.T_indentErrorTest> = (new stdgo.Slice<stdgo.encoding.json.Json.T_indentErrorTest>(2, 2, (new stdgo.encoding.json.Json.T_indentErrorTest(("{\"X\": \"foo\", \"Y\"}" : stdgo.GoString), stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.SyntaxError(("invalid character \'}\' after object key" : stdgo.GoString), (17i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.encoding.json.Json.SyntaxError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SyntaxError>))) : stdgo.encoding.json.Json.T_indentErrorTest), (new stdgo.encoding.json.Json.T_indentErrorTest(("{\"X\": \"foo\" \"Y\": \"bar\"}" : stdgo.GoString), stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.SyntaxError(("invalid character \'\"\' after object key:value pair" : stdgo.GoString), (13i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.encoding.json.Json.SyntaxError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SyntaxError>))) : stdgo.encoding.json.Json.T_indentErrorTest)) : stdgo.Slice<stdgo.encoding.json.Json.T_indentErrorTest>);
/**
    // Test values for the stream test.
    // One of each JSON kind.
    
    
**/
var _streamTest : stdgo.Slice<stdgo.StdGoTypes.AnyInterface> = (new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(8, 8, stdgo.Go.toInterface((0.1 : stdgo.StdGoTypes.GoFloat64)), stdgo.Go.toInterface(("hello" : stdgo.GoString)), (null : stdgo.StdGoTypes.AnyInterface), stdgo.Go.toInterface(true), stdgo.Go.toInterface(false), stdgo.Go.toInterface((new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(3, 3, stdgo.Go.toInterface(("a" : stdgo.GoString)), stdgo.Go.toInterface(("b" : stdgo.GoString)), stdgo.Go.toInterface(("c" : stdgo.GoString))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>)), stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.AnyInterface>();
        x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
        @:mergeBlock {
            x.set(("K" : stdgo.GoString), stdgo.Go.toInterface(("Kelvin" : stdgo.GoString)));
            x.set(("ß" : stdgo.GoString), stdgo.Go.toInterface(("long s" : stdgo.GoString)));
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>)), stdgo.Go.toInterface((3.14 : stdgo.StdGoTypes.GoFloat64))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>);
/**
    
    
    
**/
var _streamEncoded : stdgo.GoString = ("0.1\n\"hello\"\nnull\ntrue\nfalse\n[\"a\",\"b\",\"c\"]\n{\"ß\":\"long s\",\"K\":\"Kelvin\"}\n3.14\n" : stdgo.GoString);
/**
    
    
    
**/
var _streamEncodedIndent : stdgo.GoString = ("0.1\n\"hello\"\nnull\ntrue\nfalse\n[\n>.\"a\",\n>.\"b\",\n>.\"c\"\n>]\n{\n>.\"ß\": \"long s\",\n>.\"K\": \"Kelvin\"\n>}\n3.14\n" : stdgo.GoString);
/**
    
    
    
**/
var _blockingTests : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(2, 2, ("{\"x\": 1}" : stdgo.GoString), ("[1, 2, 3]" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
/**
    
    
    
**/
var _tokenStreamCases : stdgo.Slice<stdgo.encoding.json.Json.T_tokenStreamCase> = (new stdgo.Slice<stdgo.encoding.json.Json.T_tokenStreamCase>(
18,
18,
({ _json : ("10" : stdgo.GoString), _expTokens : (new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(1, 1, stdgo.Go.toInterface((10 : stdgo.StdGoTypes.GoFloat64))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>) } : stdgo.encoding.json.Json.T_tokenStreamCase),
({ _json : (" [10] " : stdgo.GoString), _expTokens : (new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(3, 3, stdgo.Go.toInterface(stdgo.Go.asInterface(((91 : stdgo.encoding.json.Json.Delim) : Delim))), stdgo.Go.toInterface((10 : stdgo.StdGoTypes.GoFloat64)), stdgo.Go.toInterface(stdgo.Go.asInterface(((93 : stdgo.encoding.json.Json.Delim) : Delim)))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>) } : stdgo.encoding.json.Json.T_tokenStreamCase),
({ _json : (" [false,10,\"b\"] " : stdgo.GoString), _expTokens : (new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(5, 5, stdgo.Go.toInterface(stdgo.Go.asInterface(((91 : stdgo.encoding.json.Json.Delim) : Delim))), stdgo.Go.toInterface(false), stdgo.Go.toInterface((10 : stdgo.StdGoTypes.GoFloat64)), stdgo.Go.toInterface(("b" : stdgo.GoString)), stdgo.Go.toInterface(stdgo.Go.asInterface(((93 : stdgo.encoding.json.Json.Delim) : Delim)))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>) } : stdgo.encoding.json.Json.T_tokenStreamCase),
({ _json : ("{ \"a\": 1 }" : stdgo.GoString), _expTokens : (new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(4, 4, stdgo.Go.toInterface(stdgo.Go.asInterface(((123 : stdgo.encoding.json.Json.Delim) : Delim))), stdgo.Go.toInterface(("a" : stdgo.GoString)), stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoFloat64)), stdgo.Go.toInterface(stdgo.Go.asInterface(((125 : stdgo.encoding.json.Json.Delim) : Delim)))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>) } : stdgo.encoding.json.Json.T_tokenStreamCase),
({ _json : ("{\"a\": 1, \"b\":\"3\"}" : stdgo.GoString), _expTokens : (new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(6, 6, stdgo.Go.toInterface(stdgo.Go.asInterface(((123 : stdgo.encoding.json.Json.Delim) : Delim))), stdgo.Go.toInterface(("a" : stdgo.GoString)), stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoFloat64)), stdgo.Go.toInterface(("b" : stdgo.GoString)), stdgo.Go.toInterface(("3" : stdgo.GoString)), stdgo.Go.toInterface(stdgo.Go.asInterface(((125 : stdgo.encoding.json.Json.Delim) : Delim)))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>) } : stdgo.encoding.json.Json.T_tokenStreamCase),
({ _json : (" [{\"a\": 1},{\"a\": 2}] " : stdgo.GoString), _expTokens : (new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(
10,
10,
stdgo.Go.toInterface(stdgo.Go.asInterface(((91 : stdgo.encoding.json.Json.Delim) : Delim))),
stdgo.Go.toInterface(stdgo.Go.asInterface(((123 : stdgo.encoding.json.Json.Delim) : Delim))),
stdgo.Go.toInterface(("a" : stdgo.GoString)),
stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoFloat64)),
stdgo.Go.toInterface(stdgo.Go.asInterface(((125 : stdgo.encoding.json.Json.Delim) : Delim))),
stdgo.Go.toInterface(stdgo.Go.asInterface(((123 : stdgo.encoding.json.Json.Delim) : Delim))),
stdgo.Go.toInterface(("a" : stdgo.GoString)),
stdgo.Go.toInterface((2 : stdgo.StdGoTypes.GoFloat64)),
stdgo.Go.toInterface(stdgo.Go.asInterface(((125 : stdgo.encoding.json.Json.Delim) : Delim))),
stdgo.Go.toInterface(stdgo.Go.asInterface(((93 : stdgo.encoding.json.Json.Delim) : Delim)))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>) } : stdgo.encoding.json.Json.T_tokenStreamCase),
({ _json : ("{\"obj\": {\"a\": 1}}" : stdgo.GoString), _expTokens : (new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(7, 7, stdgo.Go.toInterface(stdgo.Go.asInterface(((123 : stdgo.encoding.json.Json.Delim) : Delim))), stdgo.Go.toInterface(("obj" : stdgo.GoString)), stdgo.Go.toInterface(stdgo.Go.asInterface(((123 : stdgo.encoding.json.Json.Delim) : Delim))), stdgo.Go.toInterface(("a" : stdgo.GoString)), stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoFloat64)), stdgo.Go.toInterface(stdgo.Go.asInterface(((125 : stdgo.encoding.json.Json.Delim) : Delim))), stdgo.Go.toInterface(stdgo.Go.asInterface(((125 : stdgo.encoding.json.Json.Delim) : Delim)))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>) } : stdgo.encoding.json.Json.T_tokenStreamCase),
({ _json : ("{\"obj\": [{\"a\": 1}]}" : stdgo.GoString), _expTokens : (new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(
9,
9,
stdgo.Go.toInterface(stdgo.Go.asInterface(((123 : stdgo.encoding.json.Json.Delim) : Delim))),
stdgo.Go.toInterface(("obj" : stdgo.GoString)),
stdgo.Go.toInterface(stdgo.Go.asInterface(((91 : stdgo.encoding.json.Json.Delim) : Delim))),
stdgo.Go.toInterface(stdgo.Go.asInterface(((123 : stdgo.encoding.json.Json.Delim) : Delim))),
stdgo.Go.toInterface(("a" : stdgo.GoString)),
stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoFloat64)),
stdgo.Go.toInterface(stdgo.Go.asInterface(((125 : stdgo.encoding.json.Json.Delim) : Delim))),
stdgo.Go.toInterface(stdgo.Go.asInterface(((93 : stdgo.encoding.json.Json.Delim) : Delim))),
stdgo.Go.toInterface(stdgo.Go.asInterface(((125 : stdgo.encoding.json.Json.Delim) : Delim)))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>) } : stdgo.encoding.json.Json.T_tokenStreamCase),
({ _json : ("{ \"a\": 1 }" : stdgo.GoString), _expTokens : (new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(4, 4, stdgo.Go.toInterface(stdgo.Go.asInterface(((123 : stdgo.encoding.json.Json.Delim) : Delim))), stdgo.Go.toInterface(("a" : stdgo.GoString)), stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_decodeThis(stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoFloat64))) : stdgo.encoding.json.Json.T_decodeThis)), stdgo.Go.toInterface(stdgo.Go.asInterface(((125 : stdgo.encoding.json.Json.Delim) : Delim)))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>) } : stdgo.encoding.json.Json.T_tokenStreamCase),
({ _json : (" [ { \"a\" : 1 } ] " : stdgo.GoString), _expTokens : (new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(3, 3, stdgo.Go.toInterface(stdgo.Go.asInterface(((91 : stdgo.encoding.json.Json.Delim) : Delim))), stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_decodeThis(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.AnyInterface>();
        x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
        @:mergeBlock {
            x.set(("a" : stdgo.GoString), stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoFloat64)));
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>))) : stdgo.encoding.json.Json.T_decodeThis)), stdgo.Go.toInterface(stdgo.Go.asInterface(((93 : stdgo.encoding.json.Json.Delim) : Delim)))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>) } : stdgo.encoding.json.Json.T_tokenStreamCase),
({ _json : (" [{\"a\": 1},{\"a\": 2}] " : stdgo.GoString), _expTokens : (new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(4, 4, stdgo.Go.toInterface(stdgo.Go.asInterface(((91 : stdgo.encoding.json.Json.Delim) : Delim))), stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_decodeThis(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.AnyInterface>();
        x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
        @:mergeBlock {
            x.set(("a" : stdgo.GoString), stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoFloat64)));
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>))) : stdgo.encoding.json.Json.T_decodeThis)), stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_decodeThis(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.AnyInterface>();
        x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
        @:mergeBlock {
            x.set(("a" : stdgo.GoString), stdgo.Go.toInterface((2 : stdgo.StdGoTypes.GoFloat64)));
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>))) : stdgo.encoding.json.Json.T_decodeThis)), stdgo.Go.toInterface(stdgo.Go.asInterface(((93 : stdgo.encoding.json.Json.Delim) : Delim)))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>) } : stdgo.encoding.json.Json.T_tokenStreamCase),
({ _json : ("{ \"obj\" : [ { \"a\" : 1 } ] }" : stdgo.GoString), _expTokens : (new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(6, 6, stdgo.Go.toInterface(stdgo.Go.asInterface(((123 : stdgo.encoding.json.Json.Delim) : Delim))), stdgo.Go.toInterface(("obj" : stdgo.GoString)), stdgo.Go.toInterface(stdgo.Go.asInterface(((91 : stdgo.encoding.json.Json.Delim) : Delim))), stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_decodeThis(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.AnyInterface>();
        x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
        @:mergeBlock {
            x.set(("a" : stdgo.GoString), stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoFloat64)));
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>))) : stdgo.encoding.json.Json.T_decodeThis)), stdgo.Go.toInterface(stdgo.Go.asInterface(((93 : stdgo.encoding.json.Json.Delim) : Delim))), stdgo.Go.toInterface(stdgo.Go.asInterface(((125 : stdgo.encoding.json.Json.Delim) : Delim)))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>) } : stdgo.encoding.json.Json.T_tokenStreamCase),
({ _json : ("{\"obj\": {\"a\": 1}}" : stdgo.GoString), _expTokens : (new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(4, 4, stdgo.Go.toInterface(stdgo.Go.asInterface(((123 : stdgo.encoding.json.Json.Delim) : Delim))), stdgo.Go.toInterface(("obj" : stdgo.GoString)), stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_decodeThis(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.AnyInterface>();
        x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
        @:mergeBlock {
            x.set(("a" : stdgo.GoString), stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoFloat64)));
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>))) : stdgo.encoding.json.Json.T_decodeThis)), stdgo.Go.toInterface(stdgo.Go.asInterface(((125 : stdgo.encoding.json.Json.Delim) : Delim)))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>) } : stdgo.encoding.json.Json.T_tokenStreamCase),
({ _json : ("{\"obj\": [{\"a\": 1}]}" : stdgo.GoString), _expTokens : (new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(4, 4, stdgo.Go.toInterface(stdgo.Go.asInterface(((123 : stdgo.encoding.json.Json.Delim) : Delim))), stdgo.Go.toInterface(("obj" : stdgo.GoString)), stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_decodeThis(stdgo.Go.toInterface((new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(1, 1, stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.AnyInterface>();
        x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
        @:mergeBlock {
            x.set(("a" : stdgo.GoString), stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoFloat64)));
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>))) : stdgo.encoding.json.Json.T_decodeThis)), stdgo.Go.toInterface(stdgo.Go.asInterface(((125 : stdgo.encoding.json.Json.Delim) : Delim)))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>) } : stdgo.encoding.json.Json.T_tokenStreamCase),
({ _json : (" [{\"a\": 1} {\"a\": 2}] " : stdgo.GoString), _expTokens : (new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(3, 3, stdgo.Go.toInterface(stdgo.Go.asInterface(((91 : stdgo.encoding.json.Json.Delim) : Delim))), stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_decodeThis(stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.AnyInterface>();
        x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
        @:mergeBlock {
            x.set(("a" : stdgo.GoString), stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoFloat64)));
        };
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>))) : stdgo.encoding.json.Json.T_decodeThis)), stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_decodeThis(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.SyntaxError(("expected comma after array element" : stdgo.GoString), (11i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.encoding.json.Json.SyntaxError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SyntaxError>)))) : stdgo.encoding.json.Json.T_decodeThis))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>) } : stdgo.encoding.json.Json.T_tokenStreamCase),
({ _json : ("{ \"" : stdgo.GoString) + stdgo.strings.Strings.repeat(("a" : stdgo.GoString), (513 : stdgo.StdGoTypes.GoInt))?.__copy__() + ("\" 1 }" : stdgo.GoString)?.__copy__()?.__copy__(), _expTokens : (new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(3, 3, stdgo.Go.toInterface(stdgo.Go.asInterface(((123 : stdgo.encoding.json.Json.Delim) : Delim))), stdgo.Go.toInterface(stdgo.strings.Strings.repeat(("a" : stdgo.GoString), (513 : stdgo.StdGoTypes.GoInt))), stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_decodeThis(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.SyntaxError(("expected colon after object key" : stdgo.GoString), (518i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.encoding.json.Json.SyntaxError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SyntaxError>)))) : stdgo.encoding.json.Json.T_decodeThis))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>) } : stdgo.encoding.json.Json.T_tokenStreamCase),
({ _json : ("{ \"\\a\" }" : stdgo.GoString), _expTokens : (new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(2, 2, stdgo.Go.toInterface(stdgo.Go.asInterface(((123 : stdgo.encoding.json.Json.Delim) : Delim))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.SyntaxError(("invalid character \'a\' in string escape code" : stdgo.GoString), (3i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.encoding.json.Json.SyntaxError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SyntaxError>)))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>) } : stdgo.encoding.json.Json.T_tokenStreamCase),
({ _json : (" \\a" : stdgo.GoString), _expTokens : (new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(1, 1, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.SyntaxError(("invalid character \'\\\\\' looking for beginning of value" : stdgo.GoString), (1i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.encoding.json.Json.SyntaxError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SyntaxError>)))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>) } : stdgo.encoding.json.Json.T_tokenStreamCase)) : stdgo.Slice<stdgo.encoding.json.Json.T_tokenStreamCase>);
/**
    
    
    
**/
var _structTagObjectKeyTests : stdgo.Slice<T__struct_45> = (new stdgo.Slice<T__struct_45>(
16,
16,
({ _raw : stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_basicLatin2xTag(("2x" : stdgo.GoString)) : stdgo.encoding.json.Json.T_basicLatin2xTag)), _value : ("2x" : stdgo.GoString), _key : ("$%-/" : stdgo.GoString) } : T__struct_45),
({ _raw : stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_basicLatin3xTag(("3x" : stdgo.GoString)) : stdgo.encoding.json.Json.T_basicLatin3xTag)), _value : ("3x" : stdgo.GoString), _key : ("0123456789" : stdgo.GoString) } : T__struct_45),
({ _raw : stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_basicLatin4xTag(("4x" : stdgo.GoString)) : stdgo.encoding.json.Json.T_basicLatin4xTag)), _value : ("4x" : stdgo.GoString), _key : ("ABCDEFGHIJKLMO" : stdgo.GoString) } : T__struct_45),
({ _raw : stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_basicLatin5xTag(("5x" : stdgo.GoString)) : stdgo.encoding.json.Json.T_basicLatin5xTag)), _value : ("5x" : stdgo.GoString), _key : ("PQRSTUVWXYZ_" : stdgo.GoString) } : T__struct_45),
({ _raw : stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_basicLatin6xTag(("6x" : stdgo.GoString)) : stdgo.encoding.json.Json.T_basicLatin6xTag)), _value : ("6x" : stdgo.GoString), _key : ("abcdefghijklmno" : stdgo.GoString) } : T__struct_45),
({ _raw : stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_basicLatin7xTag(("7x" : stdgo.GoString)) : stdgo.encoding.json.Json.T_basicLatin7xTag)), _value : ("7x" : stdgo.GoString), _key : ("pqrstuvwxyz" : stdgo.GoString) } : T__struct_45),
({ _raw : stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_miscPlaneTag(("いろはにほへと" : stdgo.GoString)) : stdgo.encoding.json.Json.T_miscPlaneTag)), _value : ("いろはにほへと" : stdgo.GoString), _key : ("色は匂へど" : stdgo.GoString) } : T__struct_45),
({ _raw : stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_dashTag(("foo" : stdgo.GoString)) : stdgo.encoding.json.Json.T_dashTag)), _value : ("foo" : stdgo.GoString), _key : ("-" : stdgo.GoString) } : T__struct_45),
({ _raw : stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_emptyTag(("Pour Moi" : stdgo.GoString)) : stdgo.encoding.json.Json.T_emptyTag)), _value : ("Pour Moi" : stdgo.GoString), _key : ("W" : stdgo.GoString) } : T__struct_45),
({ _raw : stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_misnamedTag(("Animal Kingdom" : stdgo.GoString)) : stdgo.encoding.json.Json.T_misnamedTag)), _value : ("Animal Kingdom" : stdgo.GoString), _key : ("X" : stdgo.GoString) } : T__struct_45),
({ _raw : stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_badFormatTag(("Orfevre" : stdgo.GoString)) : stdgo.encoding.json.Json.T_badFormatTag)), _value : ("Orfevre" : stdgo.GoString), _key : ("Y" : stdgo.GoString) } : T__struct_45),
({ _raw : stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_badCodeTag(("Reliable Man" : stdgo.GoString)) : stdgo.encoding.json.Json.T_badCodeTag)), _value : ("Reliable Man" : stdgo.GoString), _key : ("Z" : stdgo.GoString) } : T__struct_45),
({ _raw : stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_percentSlashTag(("brut" : stdgo.GoString)) : stdgo.encoding.json.Json.T_percentSlashTag)), _value : ("brut" : stdgo.GoString), _key : ("text/html%" : stdgo.GoString) } : T__struct_45),
({ _raw : stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_punctuationTag(("Union Rags" : stdgo.GoString)) : stdgo.encoding.json.Json.T_punctuationTag)), _value : ("Union Rags" : stdgo.GoString), _key : ("!#$%&()*+-./:;<=>?@[]^_{|}~ " : stdgo.GoString) } : T__struct_45),
({ _raw : stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_spaceTag(("Perreddu" : stdgo.GoString)) : stdgo.encoding.json.Json.T_spaceTag)), _value : ("Perreddu" : stdgo.GoString), _key : ("With space" : stdgo.GoString) } : T__struct_45),
({ _raw : stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_unicodeTag(("Loukanikos" : stdgo.GoString)) : stdgo.encoding.json.Json.T_unicodeTag)), _value : ("Loukanikos" : stdgo.GoString), _key : ("Ελλάδα" : stdgo.GoString) } : T__struct_45)) : stdgo.Slice<T__struct_45>);
/**
    
    
    
**/
var _codeJSON : stdgo.Slice<stdgo.StdGoTypes.GoByte> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
/**
    
    
    
**/
var _codeStruct : T_codeResponse = ({} : stdgo.encoding.json.Json.T_codeResponse);
/**
    // phasePanicMsg is used as a panic message when we end up with something that
    // shouldn't happen. It can indicate a bug in the JSON decoder, or that
    // something is editing the data slice while the decoder executes.
    
    
**/
final _phasePanicMsg : stdgo.GoString = ("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString);
/**
    
    
    
**/
var __4 : stdgo.encoding.Encoding.TextUnmarshaler = stdgo.Go.asInterface(((null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_unmarshalerText>) : stdgo.StdGoTypes.Ref<T_unmarshalerText>));
/**
    
    
    
**/
var __5 : stdgo.encoding.Encoding.TextUnmarshaler = stdgo.Go.asInterface(((null : stdgo.Pointer<stdgo.encoding.json.Json.T_u8marshal>) : stdgo.Pointer<T_u8marshal>));
/**
    
    
    
**/
final _startDetectingCyclesAfter : stdgo.StdGoTypes.GoUInt64 = (1000i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
var _encodeStatePool : stdgo.sync.Sync.Pool = ({} : stdgo.sync.Sync.Pool);
/**
    
    
    // map[reflect.Type]encoderFunc
**/
var _encoderCache : stdgo.sync.Sync.Map_ = ({} : stdgo.sync.Sync.Map_);
/**
    
    
    // map[reflect.Type]structFields
**/
var _fieldCache : stdgo.sync.Sync.Map_ = ({} : stdgo.sync.Sync.Map_);
/**
    // indentGrowthFactor specifies the growth factor of indenting JSON input.
    // Empirically, the growth factor was measured to be between 1.4x to 1.8x
    // for some set of compacted JSON with the indent being a single tab.
    // Specify a growth factor slightly larger than what is observed
    // to reduce probability of allocation in appendIndent.
    // A factor no higher than 2 ensures that wasted space never exceeds 50%.
    
    
**/
final _indentGrowthFactor : stdgo.StdGoTypes.GoUInt64 = (2i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // Continue.
    
    // uninteresting byte
**/
final _scanContinue : stdgo.StdGoTypes.GoUInt64 = (11i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // These values are returned by the state transition functions
    // assigned to scanner.state and the method scanner.eof.
    // They give details about the current state of the scan that
    // callers might be interested to know about.
    // It is okay to ignore the return value of any particular
    // call to scanner.state: if one call returns scanError,
    // every subsequent call will return scanError too.
    
    // end implied by next result != scanContinue
**/
final _scanBeginLiteral = (11i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // These values are returned by the state transition functions
    // assigned to scanner.state and the method scanner.eof.
    // They give details about the current state of the scan that
    // callers might be interested to know about.
    // It is okay to ignore the return value of any particular
    // call to scanner.state: if one call returns scanError,
    // every subsequent call will return scanError too.
    
    // begin object
**/
final _scanBeginObject = (11i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // These values are returned by the state transition functions
    // assigned to scanner.state and the method scanner.eof.
    // They give details about the current state of the scan that
    // callers might be interested to know about.
    // It is okay to ignore the return value of any particular
    // call to scanner.state: if one call returns scanError,
    // every subsequent call will return scanError too.
    
    // just finished object key (string)
**/
final _scanObjectKey = (11i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // These values are returned by the state transition functions
    // assigned to scanner.state and the method scanner.eof.
    // They give details about the current state of the scan that
    // callers might be interested to know about.
    // It is okay to ignore the return value of any particular
    // call to scanner.state: if one call returns scanError,
    // every subsequent call will return scanError too.
    
    // just finished non-last object value
**/
final _scanObjectValue = (11i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // These values are returned by the state transition functions
    // assigned to scanner.state and the method scanner.eof.
    // They give details about the current state of the scan that
    // callers might be interested to know about.
    // It is okay to ignore the return value of any particular
    // call to scanner.state: if one call returns scanError,
    // every subsequent call will return scanError too.
    
    // end object (implies scanObjectValue if possible)
**/
final _scanEndObject = (11i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // These values are returned by the state transition functions
    // assigned to scanner.state and the method scanner.eof.
    // They give details about the current state of the scan that
    // callers might be interested to know about.
    // It is okay to ignore the return value of any particular
    // call to scanner.state: if one call returns scanError,
    // every subsequent call will return scanError too.
    
    // begin array
**/
final _scanBeginArray = (11i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // These values are returned by the state transition functions
    // assigned to scanner.state and the method scanner.eof.
    // They give details about the current state of the scan that
    // callers might be interested to know about.
    // It is okay to ignore the return value of any particular
    // call to scanner.state: if one call returns scanError,
    // every subsequent call will return scanError too.
    
    // just finished array value
**/
final _scanArrayValue = (11i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // These values are returned by the state transition functions
    // assigned to scanner.state and the method scanner.eof.
    // They give details about the current state of the scan that
    // callers might be interested to know about.
    // It is okay to ignore the return value of any particular
    // call to scanner.state: if one call returns scanError,
    // every subsequent call will return scanError too.
    
    // end array (implies scanArrayValue if possible)
**/
final _scanEndArray = (11i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // These values are returned by the state transition functions
    // assigned to scanner.state and the method scanner.eof.
    // They give details about the current state of the scan that
    // callers might be interested to know about.
    // It is okay to ignore the return value of any particular
    // call to scanner.state: if one call returns scanError,
    // every subsequent call will return scanError too.
    
    // space byte; can skip; known to be last "continue" result
**/
final _scanSkipSpace = (11i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // Stop.
    
    // top-level value ended *before* this byte; known to be first "stop" result
**/
final _scanEnd = (11i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // These values are returned by the state transition functions
    // assigned to scanner.state and the method scanner.eof.
    // They give details about the current state of the scan that
    // callers might be interested to know about.
    // It is okay to ignore the return value of any particular
    // call to scanner.state: if one call returns scanError,
    // every subsequent call will return scanError too.
    
    // hit an error, scanner.err.
**/
final _scanError = (11i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // These values are stored in the parseState stack.
    // They give the current state of a composite value
    // being scanned. If the parser is inside a nested value
    // the parseState describes the nested state, outermost at entry 0.
    
    // parsing object key (before colon)
**/
final _parseObjectKey : stdgo.StdGoTypes.GoUInt64 = (2i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // These values are stored in the parseState stack.
    // They give the current state of a composite value
    // being scanned. If the parser is inside a nested value
    // the parseState describes the nested state, outermost at entry 0.
    
    // parsing object value (after colon)
**/
final _parseObjectValue = (2i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // These values are stored in the parseState stack.
    // They give the current state of a composite value
    // being scanned. If the parser is inside a nested value
    // the parseState describes the nested state, outermost at entry 0.
    
    // parsing array value
**/
final _parseArrayValue = (2i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // This limits the max nesting depth to prevent stack overflow.
    // This is permitted by https://tools.ietf.org/html/rfc7159#section-9
    
    
**/
final _maxNestingDepth : stdgo.StdGoTypes.GoUInt64 = (10000i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
var _jsonBig : stdgo.Slice<stdgo.StdGoTypes.GoByte> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
/**
    
    
    
**/
var __6 : stdgo.encoding.json.Json.Marshaler = stdgo.Go.asInterface(((null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage>) : stdgo.StdGoTypes.Ref<RawMessage>));
/**
    
    
    
**/
var __7 : stdgo.encoding.json.Json.Unmarshaler = stdgo.Go.asInterface(((null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage>) : stdgo.StdGoTypes.Ref<RawMessage>));
/**
    
    
    
**/
final _tokenTopValue : stdgo.StdGoTypes.GoUInt64 = (8i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
final _tokenArrayStart = (8i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
final _tokenArrayValue = (8i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
final _tokenArrayComma = (8i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
final _tokenObjectStart = (8i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
final _tokenObjectKey = (8i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
final _tokenObjectColon = (8i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
final _tokenObjectValue = (8i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
final _tokenObjectComma = (8i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // Unmarshaler is the interface implemented by types
    // that can unmarshal a JSON description of themselves.
    // The input can be assumed to be a valid encoding of
    // a JSON value. UnmarshalJSON must copy the JSON data
    // if it wishes to retain the data after returning.
    //
    // By convention, to approximate the behavior of Unmarshal itself,
    // Unmarshalers implement UnmarshalJSON([]byte("null")) as a no-op.
    
    
**/
typedef Unmarshaler = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function unmarshalJSON(_0:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error;
};
/**
    // Marshaler is the interface implemented by types that
    // can marshal themselves into valid JSON.
    
    
**/
typedef Marshaler = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function marshalJSON():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; };
};
/**
    
    
    
**/
@:structInit @:private class T_codeResponse {
    @:tag("`json:\"tree\"`")
    public var tree : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_codeNode> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_codeNode>);
    @:tag("`json:\"username\"`")
    public var username : stdgo.GoString = "";
    public function new(?tree:stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_codeNode>, ?username:stdgo.GoString) {
        if (tree != null) this.tree = tree;
        if (username != null) this.username = username;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_codeResponse(tree, username);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_codeNode {
    @:tag("`json:\"name\"`")
    public var name : stdgo.GoString = "";
    @:tag("`json:\"kids\"`")
    public var kids : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_codeNode>> = (null : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_codeNode>>);
    @:tag("`json:\"cl_weight\"`")
    public var clweight : stdgo.StdGoTypes.GoFloat64 = 0;
    @:tag("`json:\"touches\"`")
    public var touches : stdgo.StdGoTypes.GoInt = 0;
    @:tag("`json:\"min_t\"`")
    public var minT : stdgo.StdGoTypes.GoInt64 = 0;
    @:tag("`json:\"max_t\"`")
    public var maxT : stdgo.StdGoTypes.GoInt64 = 0;
    @:tag("`json:\"mean_t\"`")
    public var meanT : stdgo.StdGoTypes.GoInt64 = 0;
    public function new(?name:stdgo.GoString, ?kids:stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_codeNode>>, ?clweight:stdgo.StdGoTypes.GoFloat64, ?touches:stdgo.StdGoTypes.GoInt, ?minT:stdgo.StdGoTypes.GoInt64, ?maxT:stdgo.StdGoTypes.GoInt64, ?meanT:stdgo.StdGoTypes.GoInt64) {
        if (name != null) this.name = name;
        if (kids != null) this.kids = kids;
        if (clweight != null) this.clweight = clweight;
        if (touches != null) this.touches = touches;
        if (minT != null) this.minT = minT;
        if (maxT != null) this.maxT = maxT;
        if (meanT != null) this.meanT = meanT;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_codeNode(name, kids, clweight, touches, minT, maxT, meanT);
    }
}
/**
    // An UnmarshalTypeError describes a JSON value that was
    // not appropriate for a value of a specific Go type.
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.UnmarshalTypeError_static_extension) class UnmarshalTypeError {
    public var value : stdgo.GoString = "";
    public var type : stdgo.reflect.Reflect.Type_ = (null : stdgo.reflect.Reflect.Type_);
    public var offset : stdgo.StdGoTypes.GoInt64 = 0;
    public var struct_ : stdgo.GoString = "";
    public var field : stdgo.GoString = "";
    public function new(?value:stdgo.GoString, ?type:stdgo.reflect.Reflect.Type_, ?offset:stdgo.StdGoTypes.GoInt64, ?struct_:stdgo.GoString, ?field:stdgo.GoString) {
        if (value != null) this.value = value;
        if (type != null) this.type = type;
        if (offset != null) this.offset = offset;
        if (struct_ != null) this.struct_ = struct_;
        if (field != null) this.field = field;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new UnmarshalTypeError(value, type, offset, struct_, field);
    }
}
/**
    // An UnmarshalFieldError describes a JSON object key that
    // led to an unexported (and therefore unwritable) struct field.
    //
    // Deprecated: No longer used; kept for compatibility.
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.UnmarshalFieldError_static_extension) class UnmarshalFieldError {
    public var key : stdgo.GoString = "";
    public var type : stdgo.reflect.Reflect.Type_ = (null : stdgo.reflect.Reflect.Type_);
    public var field : stdgo.reflect.Reflect.StructField = ({} : stdgo.reflect.Reflect.StructField);
    public function new(?key:stdgo.GoString, ?type:stdgo.reflect.Reflect.Type_, ?field:stdgo.reflect.Reflect.StructField) {
        if (key != null) this.key = key;
        if (type != null) this.type = type;
        if (field != null) this.field = field;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new UnmarshalFieldError(key, type, field);
    }
}
/**
    // An InvalidUnmarshalError describes an invalid argument passed to Unmarshal.
    // (The argument to Unmarshal must be a non-nil pointer.)
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.InvalidUnmarshalError_static_extension) class InvalidUnmarshalError {
    public var type : stdgo.reflect.Reflect.Type_ = (null : stdgo.reflect.Reflect.Type_);
    public function new(?type:stdgo.reflect.Reflect.Type_) {
        if (type != null) this.type = type;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new InvalidUnmarshalError(type);
    }
}
/**
    // An errorContext provides context for type errors during decoding.
    
    
**/
@:structInit @:private class T_errorContext {
    public var struct_ : stdgo.reflect.Reflect.Type_ = (null : stdgo.reflect.Reflect.Type_);
    public var fieldStack : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?struct_:stdgo.reflect.Reflect.Type_, ?fieldStack:stdgo.Slice<stdgo.GoString>) {
        if (struct_ != null) this.struct_ = struct_;
        if (fieldStack != null) this.fieldStack = fieldStack;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_errorContext(struct_, fieldStack);
    }
}
/**
    // decodeState represents the state while decoding a JSON value.
    
    
**/
@:structInit @:private @:using(stdgo.encoding.json.Json.T_decodeState_static_extension) class T_decodeState {
    public var _data : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    public var _off : stdgo.StdGoTypes.GoInt = 0;
    public var _opcode : stdgo.StdGoTypes.GoInt = 0;
    public var _scan : stdgo.encoding.json.Json.T_scanner = ({} : stdgo.encoding.json.Json.T_scanner);
    public var _errorContext : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_errorContext> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_errorContext>);
    public var _savedError : stdgo.Error = (null : stdgo.Error);
    public var _useNumber : Bool = false;
    public var _disallowUnknownFields : Bool = false;
    public function new(?_data:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, ?_off:stdgo.StdGoTypes.GoInt, ?_opcode:stdgo.StdGoTypes.GoInt, ?_scan:stdgo.encoding.json.Json.T_scanner, ?_errorContext:stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_errorContext>, ?_savedError:stdgo.Error, ?_useNumber:Bool, ?_disallowUnknownFields:Bool) {
        if (_data != null) this._data = _data;
        if (_off != null) this._off = _off;
        if (_opcode != null) this._opcode = _opcode;
        if (_scan != null) this._scan = _scan;
        if (_errorContext != null) this._errorContext = _errorContext;
        if (_savedError != null) this._savedError = _savedError;
        if (_useNumber != null) this._useNumber = _useNumber;
        if (_disallowUnknownFields != null) this._disallowUnknownFields = _disallowUnknownFields;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_decodeState(_data, _off, _opcode, _scan, _errorContext, _savedError, _useNumber, _disallowUnknownFields);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_unquotedValue {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_unquotedValue();
    }
}
/**
    
    
    
**/
@:structInit class T_ {
    public var x : stdgo.GoString = "";
    public var y : stdgo.StdGoTypes.GoInt = 0;
    @:tag("`json:\"-\"`")
    public var z : stdgo.StdGoTypes.GoInt = 0;
    public function new(?x:stdgo.GoString, ?y:stdgo.StdGoTypes.GoInt, ?z:stdgo.StdGoTypes.GoInt) {
        if (x != null) this.x = x;
        if (y != null) this.y = y;
        if (z != null) this.z = z;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_(x, y, z);
    }
}
/**
    
    
    
**/
@:structInit class U {
    @:tag("`json:\"alpha\"`")
    public var alphabet : stdgo.GoString = "";
    public function new(?alphabet:stdgo.GoString) {
        if (alphabet != null) this.alphabet = alphabet;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new U(alphabet);
    }
}
/**
    
    
    
**/
@:structInit class V {
    public var f1 : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public var f2 : stdgo.StdGoTypes.GoInt32 = 0;
    public var f3 : stdgo.encoding.json.Json.Number = (("" : stdgo.GoString) : stdgo.encoding.json.Json.Number);
    public var f4 : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.VOuter> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.VOuter>);
    public function new(?f1:stdgo.StdGoTypes.AnyInterface, ?f2:stdgo.StdGoTypes.GoInt32, ?f3:stdgo.encoding.json.Json.Number, ?f4:stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.VOuter>) {
        if (f1 != null) this.f1 = f1;
        if (f2 != null) this.f2 = f2;
        if (f3 != null) this.f3 = f3;
        if (f4 != null) this.f4 = f4;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new V(f1, f2, f3, f4);
    }
}
/**
    
    
    
**/
@:structInit class VOuter {
    public var v : stdgo.encoding.json.Json.V = ({} : stdgo.encoding.json.Json.V);
    public function new(?v:stdgo.encoding.json.Json.V) {
        if (v != null) this.v = v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new VOuter(v);
    }
}
/**
    
    
    
**/
@:structInit class W {
    public var s : stdgo.encoding.json.Json.SS = (("" : stdgo.GoString) : stdgo.encoding.json.Json.SS);
    public function new(?s:stdgo.encoding.json.Json.SS) {
        if (s != null) this.s = s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new W(s);
    }
}
/**
    
    
    
**/
@:structInit class P {
    public var pp : stdgo.encoding.json.Json.PP = ({} : stdgo.encoding.json.Json.PP);
    public function new(?pp:stdgo.encoding.json.Json.PP) {
        if (pp != null) this.pp = pp;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new P(pp);
    }
}
/**
    
    
    
**/
@:structInit class PP {
    public var t : stdgo.encoding.json.Json.T_ = ({} : stdgo.encoding.json.Json.T_);
    public var ts : stdgo.Slice<stdgo.encoding.json.Json.T_> = (null : stdgo.Slice<stdgo.encoding.json.Json.T_>);
    public function new(?t:stdgo.encoding.json.Json.T_, ?ts:stdgo.Slice<stdgo.encoding.json.Json.T_>) {
        if (t != null) this.t = t;
        if (ts != null) this.ts = ts;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PP(t, ts);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_tx {
    public var _x : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_x:stdgo.StdGoTypes.GoInt) {
        if (_x != null) this._x = _x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_tx(_x);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.encoding.json.Json.T_unmarshaler_static_extension) class T_unmarshaler {
    public var t : Bool = false;
    public function new(?t:Bool) {
        if (t != null) this.t = t;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_unmarshaler(t);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_ustruct {
    public var m : stdgo.encoding.json.Json.T_unmarshaler = ({} : stdgo.encoding.json.Json.T_unmarshaler);
    public function new(?m:stdgo.encoding.json.Json.T_unmarshaler) {
        if (m != null) this.m = m;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ustruct(m);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.encoding.json.Json.T_unmarshalerText_static_extension) class T_unmarshalerText {
    public var a : stdgo.GoString = "";
    public var b : stdgo.GoString = "";
    public function new(?a:stdgo.GoString, ?b:stdgo.GoString) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_unmarshalerText(a, b);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_ustructText {
    public var m : stdgo.encoding.json.Json.T_unmarshalerText = ({} : stdgo.encoding.json.Json.T_unmarshalerText);
    public function new(?m:stdgo.encoding.json.Json.T_unmarshalerText) {
        if (m != null) this.m = m;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ustructText(m);
    }
}
/**
    
    
    
**/
@:structInit class Point {
    public var z : stdgo.StdGoTypes.GoInt = 0;
    public function new(?z:stdgo.StdGoTypes.GoInt) {
        if (z != null) this.z = z;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Point(z);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.Top_static_extension) class Top {
    public var level0 : stdgo.StdGoTypes.GoInt = 0;
    @:embedded
    public var embed0 : stdgo.encoding.json.Json.Embed0 = ({} : stdgo.encoding.json.Json.Embed0);
    @:embedded
    public var embed0a : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Embed0a> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Embed0a>);
    @:embedded
    @:tag("`json:\"e,omitempty\"`")
    public var embed0b : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Embed0b> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Embed0b>);
    @:embedded
    @:tag("`json:\"-\"`")
    public var embed0c : stdgo.encoding.json.Json.Embed0c = ({} : stdgo.encoding.json.Json.Embed0c);
    @:embedded
    public var loop : stdgo.encoding.json.Json.Loop = ({} : stdgo.encoding.json.Json.Loop);
    @:embedded
    public var embed0p : stdgo.encoding.json.Json.Embed0p = ({} : stdgo.encoding.json.Json.Embed0p);
    @:embedded
    public var embed0q : stdgo.encoding.json.Json.Embed0q = ({} : stdgo.encoding.json.Json.Embed0q);
    @:embedded
    public var _embed : stdgo.encoding.json.Json.T_embed = ({} : stdgo.encoding.json.Json.T_embed);
    public function new(?level0:stdgo.StdGoTypes.GoInt, ?embed0:stdgo.encoding.json.Json.Embed0, ?embed0a:stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Embed0a>, ?embed0b:stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Embed0b>, ?embed0c:stdgo.encoding.json.Json.Embed0c, ?loop:stdgo.encoding.json.Json.Loop, ?embed0p:stdgo.encoding.json.Json.Embed0p, ?embed0q:stdgo.encoding.json.Json.Embed0q, ?_embed:stdgo.encoding.json.Json.T_embed) {
        if (level0 != null) this.level0 = level0;
        if (embed0 != null) this.embed0 = embed0;
        if (embed0a != null) this.embed0a = embed0a;
        if (embed0b != null) this.embed0b = embed0b;
        if (embed0c != null) this.embed0c = embed0c;
        if (loop != null) this.loop = loop;
        if (embed0p != null) this.embed0p = embed0p;
        if (embed0q != null) this.embed0q = embed0q;
        if (_embed != null) this._embed = _embed;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function add(_q:stdgo.image.Image.Point):stdgo.image.Image.Point return embed0p.add(_q);
    @:embedded
    public function div(_n:stdgo.StdGoTypes.GoInt):stdgo.image.Image.Point return embed0p.div(_n);
    @:embedded
    public function eq(_q:stdgo.image.Image.Point):Bool return embed0p.eq(_q);
    @:embedded
    public function in_(_r:stdgo.image.Image.Rectangle):Bool return embed0p.in_(_r);
    @:embedded
    public function mod(_r:stdgo.image.Image.Rectangle):stdgo.image.Image.Point return embed0p.mod(_r);
    @:embedded
    public function mul(_n:stdgo.StdGoTypes.GoInt):stdgo.image.Image.Point return embed0p.mul(_n);
    @:embedded
    public function string():stdgo.GoString return embed0p.string();
    @:embedded
    public function sub(_q:stdgo.image.Image.Point):stdgo.image.Image.Point return embed0p.sub(_q);
    public function __copy__() {
        return new Top(level0, embed0, embed0a, embed0b, embed0c, loop, embed0p, embed0q, _embed);
    }
}
/**
    
    
    
**/
@:structInit class Embed0 {
    public var level1a : stdgo.StdGoTypes.GoInt = 0;
    public var level1b : stdgo.StdGoTypes.GoInt = 0;
    public var level1c : stdgo.StdGoTypes.GoInt = 0;
    public var level1d : stdgo.StdGoTypes.GoInt = 0;
    @:tag("`json:\"x\"`")
    public var level1e : stdgo.StdGoTypes.GoInt = 0;
    public function new(?level1a:stdgo.StdGoTypes.GoInt, ?level1b:stdgo.StdGoTypes.GoInt, ?level1c:stdgo.StdGoTypes.GoInt, ?level1d:stdgo.StdGoTypes.GoInt, ?level1e:stdgo.StdGoTypes.GoInt) {
        if (level1a != null) this.level1a = level1a;
        if (level1b != null) this.level1b = level1b;
        if (level1c != null) this.level1c = level1c;
        if (level1d != null) this.level1d = level1d;
        if (level1e != null) this.level1e = level1e;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Embed0(level1a, level1b, level1c, level1d, level1e);
    }
}
/**
    
    
    
**/
@:structInit class Embed0a {
    @:tag("`json:\"Level1a,omitempty\"`")
    public var level1a : stdgo.StdGoTypes.GoInt = 0;
    @:tag("`json:\"LEVEL1B,omitempty\"`")
    public var level1b : stdgo.StdGoTypes.GoInt = 0;
    @:tag("`json:\"-\"`")
    public var level1c : stdgo.StdGoTypes.GoInt = 0;
    public var level1d : stdgo.StdGoTypes.GoInt = 0;
    @:tag("`json:\"x\"`")
    public var level1f : stdgo.StdGoTypes.GoInt = 0;
    public function new(?level1a:stdgo.StdGoTypes.GoInt, ?level1b:stdgo.StdGoTypes.GoInt, ?level1c:stdgo.StdGoTypes.GoInt, ?level1d:stdgo.StdGoTypes.GoInt, ?level1f:stdgo.StdGoTypes.GoInt) {
        if (level1a != null) this.level1a = level1a;
        if (level1b != null) this.level1b = level1b;
        if (level1c != null) this.level1c = level1c;
        if (level1d != null) this.level1d = level1d;
        if (level1f != null) this.level1f = level1f;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Embed0a(level1a, level1b, level1c, level1d, level1f);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.Embed0p_static_extension) class Embed0p {
    @:embedded
    public var point : stdgo.image.Image.Point = ({} : stdgo.image.Image.Point);
    public function new(?point:stdgo.image.Image.Point) {
        if (point != null) this.point = point;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function add(_q:stdgo.image.Image.Point):stdgo.image.Image.Point return point.add(_q);
    @:embedded
    public function div(_n:stdgo.StdGoTypes.GoInt):stdgo.image.Image.Point return point.div(_n);
    @:embedded
    public function eq(_q:stdgo.image.Image.Point):Bool return point.eq(_q);
    @:embedded
    public function in_(_r:stdgo.image.Image.Rectangle):Bool return point.in_(_r);
    @:embedded
    public function mod(_r:stdgo.image.Image.Rectangle):stdgo.image.Image.Point return point.mod(_r);
    @:embedded
    public function mul(_n:stdgo.StdGoTypes.GoInt):stdgo.image.Image.Point return point.mul(_n);
    @:embedded
    public function string():stdgo.GoString return point.string();
    @:embedded
    public function sub(_q:stdgo.image.Image.Point):stdgo.image.Image.Point return point.sub(_q);
    public function __copy__() {
        return new Embed0p(point);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.Embed0q_static_extension) class Embed0q {
    @:embedded
    public var point : stdgo.encoding.json.Json.Point = ({} : stdgo.encoding.json.Json.Point);
    public function new(?point:stdgo.encoding.json.Json.Point) {
        if (point != null) this.point = point;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Embed0q(point);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_embed {
    public var q : stdgo.StdGoTypes.GoInt = 0;
    public function new(?q:stdgo.StdGoTypes.GoInt) {
        if (q != null) this.q = q;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_embed(q);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.Loop_static_extension) class Loop {
    @:tag("`json:\",omitempty\"`")
    public var loop1 : stdgo.StdGoTypes.GoInt = 0;
    @:tag("`json:\",omitempty\"`")
    public var loop2 : stdgo.StdGoTypes.GoInt = 0;
    @:embedded
    public var loop : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Loop> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Loop>);
    public function new(?loop1:stdgo.StdGoTypes.GoInt, ?loop2:stdgo.StdGoTypes.GoInt, ?loop:stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Loop>) {
        if (loop1 != null) this.loop1 = loop1;
        if (loop2 != null) this.loop2 = loop2;
        if (loop != null) this.loop = loop;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Loop(loop1, loop2, loop);
    }
}
/**
    // From reflect test:
    // The X in S6 and S7 annihilate, but they also block the X in S8.S9.
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.S5_static_extension) class S5 {
    @:embedded
    public var s6 : stdgo.encoding.json.Json.S6 = ({} : stdgo.encoding.json.Json.S6);
    @:embedded
    public var s7 : stdgo.encoding.json.Json.S7 = ({} : stdgo.encoding.json.Json.S7);
    @:embedded
    public var s8 : stdgo.encoding.json.Json.S8 = ({} : stdgo.encoding.json.Json.S8);
    public function new(?s6:stdgo.encoding.json.Json.S6, ?s7:stdgo.encoding.json.Json.S7, ?s8:stdgo.encoding.json.Json.S8) {
        if (s6 != null) this.s6 = s6;
        if (s7 != null) this.s7 = s7;
        if (s8 != null) this.s8 = s8;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new S5(s6, s7, s8);
    }
}
/**
    
    
    
**/
@:structInit class S6 {
    public var x : stdgo.StdGoTypes.GoInt = 0;
    public function new(?x:stdgo.StdGoTypes.GoInt) {
        if (x != null) this.x = x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new S6(x);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.S8_static_extension) class S8 {
    @:embedded
    public var s9 : stdgo.encoding.json.Json.S9 = ({} : stdgo.encoding.json.Json.S9);
    public function new(?s9:stdgo.encoding.json.Json.S9) {
        if (s9 != null) this.s9 = s9;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new S8(s9);
    }
}
/**
    
    
    
**/
@:structInit class S9 {
    public var x : stdgo.StdGoTypes.GoInt = 0;
    public var y : stdgo.StdGoTypes.GoInt = 0;
    public function new(?x:stdgo.StdGoTypes.GoInt, ?y:stdgo.StdGoTypes.GoInt) {
        if (x != null) this.x = x;
        if (y != null) this.y = y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new S9(x, y);
    }
}
/**
    // From reflect test:
    // The X in S11.S6 and S12.S6 annihilate, but they also block the X in S13.S8.S9.
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.S10_static_extension) class S10 {
    @:embedded
    public var s11 : stdgo.encoding.json.Json.S11 = ({} : stdgo.encoding.json.Json.S11);
    @:embedded
    public var s12 : stdgo.encoding.json.Json.S12 = ({} : stdgo.encoding.json.Json.S12);
    @:embedded
    public var s13 : stdgo.encoding.json.Json.S13 = ({} : stdgo.encoding.json.Json.S13);
    public function new(?s11:stdgo.encoding.json.Json.S11, ?s12:stdgo.encoding.json.Json.S12, ?s13:stdgo.encoding.json.Json.S13) {
        if (s11 != null) this.s11 = s11;
        if (s12 != null) this.s12 = s12;
        if (s13 != null) this.s13 = s13;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new S10(s11, s12, s13);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.S11_static_extension) class S11 {
    @:embedded
    public var s6 : stdgo.encoding.json.Json.S6 = ({} : stdgo.encoding.json.Json.S6);
    public function new(?s6:stdgo.encoding.json.Json.S6) {
        if (s6 != null) this.s6 = s6;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new S11(s6);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.S12_static_extension) class S12 {
    @:embedded
    public var s6 : stdgo.encoding.json.Json.S6 = ({} : stdgo.encoding.json.Json.S6);
    public function new(?s6:stdgo.encoding.json.Json.S6) {
        if (s6 != null) this.s6 = s6;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new S12(s6);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.S13_static_extension) class S13 {
    @:embedded
    public var s8 : stdgo.encoding.json.Json.S8 = ({} : stdgo.encoding.json.Json.S8);
    public function new(?s8:stdgo.encoding.json.Json.S8) {
        if (s8 != null) this.s8 = s8;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new S13(s8);
    }
}
/**
    
    
    
**/
@:structInit class Ambig {
    /**
        // Given "hello", the first match should win.
    **/
    @:tag("`json:\"HELLO\"`")
    public var first : stdgo.StdGoTypes.GoInt = 0;
    @:tag("`json:\"Hello\"`")
    public var second : stdgo.StdGoTypes.GoInt = 0;
    public function new(?first:stdgo.StdGoTypes.GoInt, ?second:stdgo.StdGoTypes.GoInt) {
        if (first != null) this.first = first;
        if (second != null) this.second = second;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Ambig(first, second);
    }
}
/**
    
    
    
**/
@:structInit class XYZ {
    public var x : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public var y : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public var z : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public function new(?x:stdgo.StdGoTypes.AnyInterface, ?y:stdgo.StdGoTypes.AnyInterface, ?z:stdgo.StdGoTypes.AnyInterface) {
        if (x != null) this.x = x;
        if (y != null) this.y = y;
        if (z != null) this.z = z;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new XYZ(x, y, z);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.encoding.json.Json.T_unexportedWithMethods_static_extension) class T_unexportedWithMethods {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_unexportedWithMethods();
    }
}
/**
    
    
    
**/
@:structInit @:private class T_mapStringToStringData {
    @:tag("`json:\"data\"`")
    public var data : stdgo.GoMap<stdgo.GoString, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
    public function new(?data:stdgo.GoMap<stdgo.GoString, stdgo.GoString>) {
        if (data != null) this.data = data;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_mapStringToStringData(data);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_unmarshalTest {
    public var _in : stdgo.GoString = "";
    public var _ptr : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public var _out : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _useNumber : Bool = false;
    public var _golden : Bool = false;
    public var _disallowUnknownFields : Bool = false;
    public function new(?_in:stdgo.GoString, ?_ptr:stdgo.StdGoTypes.AnyInterface, ?_out:stdgo.StdGoTypes.AnyInterface, ?_err:stdgo.Error, ?_useNumber:Bool, ?_golden:Bool, ?_disallowUnknownFields:Bool) {
        if (_in != null) this._in = _in;
        if (_ptr != null) this._ptr = _ptr;
        if (_out != null) this._out = _out;
        if (_err != null) this._err = _err;
        if (_useNumber != null) this._useNumber = _useNumber;
        if (_golden != null) this._golden = _golden;
        if (_disallowUnknownFields != null) this._disallowUnknownFields = _disallowUnknownFields;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_unmarshalTest(_in, _ptr, _out, _err, _useNumber, _golden, _disallowUnknownFields);
    }
}
/**
    
    
    
**/
@:structInit class B {
    @:tag("`json:\",string\"`")
    public var b : Bool = false;
    public function new(?b:Bool) {
        if (b != null) this.b = b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new B(b);
    }
}
/**
    
    
    
**/
@:structInit class DoublePtr {
    public var i : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>> = (null : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>);
    public var j : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>> = (null : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>);
    public function new(?i:stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>, ?j:stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>) {
        if (i != null) this.i = i;
        if (j != null) this.j = j;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new DoublePtr(i, j);
    }
}
/**
    
    
    
**/
@:structInit class Xint {
    public var x : stdgo.StdGoTypes.GoInt = 0;
    public function new(?x:stdgo.StdGoTypes.GoInt) {
        if (x != null) this.x = x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Xint(x);
    }
}
/**
    // WrongString is a struct that's misusing the ,string modifier.
    
    
**/
@:structInit class WrongString {
    @:tag("`json:\"result,string\"`")
    public var message : stdgo.GoString = "";
    public function new(?message:stdgo.GoString) {
        if (message != null) this.message = message;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new WrongString(message);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_wrongStringTest {
    public var _in : stdgo.GoString = "";
    public var _err : stdgo.GoString = "";
    public function new(?_in:stdgo.GoString, ?_err:stdgo.GoString) {
        if (_in != null) this._in = _in;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_wrongStringTest(_in, _err);
    }
}
/**
    
    
    
**/
@:structInit class All {
    public var bool_ : Bool = false;
    public var int_ : stdgo.StdGoTypes.GoInt = 0;
    public var int8 : stdgo.StdGoTypes.GoInt8 = 0;
    public var int16 : stdgo.StdGoTypes.GoInt16 = 0;
    public var int32 : stdgo.StdGoTypes.GoInt32 = 0;
    public var int64 : stdgo.StdGoTypes.GoInt64 = 0;
    public var uint : stdgo.StdGoTypes.GoUInt = 0;
    public var uint8 : stdgo.StdGoTypes.GoUInt8 = 0;
    public var uint16 : stdgo.StdGoTypes.GoUInt16 = 0;
    public var uint32 : stdgo.StdGoTypes.GoUInt32 = 0;
    public var uint64 : stdgo.StdGoTypes.GoUInt64 = 0;
    public var uintptr : stdgo.StdGoTypes.GoUIntptr = 0;
    public var float32 : stdgo.StdGoTypes.GoFloat32 = 0;
    public var float64 : stdgo.StdGoTypes.GoFloat64 = 0;
    @:tag("`json:\"bar\"`")
    public var foo : stdgo.GoString = "";
    @:tag("`json:\"bar2,dummyopt\"`")
    public var foo2 : stdgo.GoString = "";
    @:tag("`json:\",string\"`")
    public var intStr : stdgo.StdGoTypes.GoInt64 = 0;
    @:tag("`json:\",string\"`")
    public var uintptrStr : stdgo.StdGoTypes.GoUIntptr = 0;
    public var pbool : stdgo.Pointer<Bool> = (null : stdgo.Pointer<Bool>);
    public var pint : stdgo.Pointer<stdgo.StdGoTypes.GoInt> = (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt>);
    public var pint8 : stdgo.Pointer<stdgo.StdGoTypes.GoInt8> = (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt8>);
    public var pint16 : stdgo.Pointer<stdgo.StdGoTypes.GoInt16> = (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt16>);
    public var pint32 : stdgo.Pointer<stdgo.StdGoTypes.GoInt32> = (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt32>);
    public var pint64 : stdgo.Pointer<stdgo.StdGoTypes.GoInt64> = (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt64>);
    public var puint : stdgo.Pointer<stdgo.StdGoTypes.GoUInt> = (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt>);
    public var puint8 : stdgo.Pointer<stdgo.StdGoTypes.GoUInt8> = (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt8>);
    public var puint16 : stdgo.Pointer<stdgo.StdGoTypes.GoUInt16> = (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt16>);
    public var puint32 : stdgo.Pointer<stdgo.StdGoTypes.GoUInt32> = (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>);
    public var puint64 : stdgo.Pointer<stdgo.StdGoTypes.GoUInt64> = (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>);
    public var puintptr : stdgo.Pointer<stdgo.StdGoTypes.GoUIntptr> = (null : stdgo.Pointer<stdgo.StdGoTypes.GoUIntptr>);
    public var pfloat32 : stdgo.Pointer<stdgo.StdGoTypes.GoFloat32> = (null : stdgo.Pointer<stdgo.StdGoTypes.GoFloat32>);
    public var pfloat64 : stdgo.Pointer<stdgo.StdGoTypes.GoFloat64> = (null : stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>);
    public var string : stdgo.GoString = "";
    public var pstring : stdgo.Pointer<stdgo.GoString> = (null : stdgo.Pointer<stdgo.GoString>);
    public var map_ : stdgo.GoMap<stdgo.GoString, stdgo.encoding.json.Json.Small> = (null : stdgo.GoMap<stdgo.GoString, stdgo.encoding.json.Json.Small>);
    public var mapP : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Small>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Small>>);
    public var pmap : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.encoding.json.Json.Small>> = (null : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.encoding.json.Json.Small>>);
    public var pmapP : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Small>>> = (null : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Small>>>);
    public var emptyMap : stdgo.GoMap<stdgo.GoString, stdgo.encoding.json.Json.Small> = (null : stdgo.GoMap<stdgo.GoString, stdgo.encoding.json.Json.Small>);
    public var nilMap : stdgo.GoMap<stdgo.GoString, stdgo.encoding.json.Json.Small> = (null : stdgo.GoMap<stdgo.GoString, stdgo.encoding.json.Json.Small>);
    public var slice : stdgo.Slice<stdgo.encoding.json.Json.Small> = (null : stdgo.Slice<stdgo.encoding.json.Json.Small>);
    public var sliceP : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Small>> = (null : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Small>>);
    public var pslice : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.encoding.json.Json.Small>> = (null : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.encoding.json.Json.Small>>);
    public var psliceP : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Small>>> = (null : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Small>>>);
    public var emptySlice : stdgo.Slice<stdgo.encoding.json.Json.Small> = (null : stdgo.Slice<stdgo.encoding.json.Json.Small>);
    public var nilSlice : stdgo.Slice<stdgo.encoding.json.Json.Small> = (null : stdgo.Slice<stdgo.encoding.json.Json.Small>);
    public var stringSlice : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var byteSlice : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    public var small : stdgo.encoding.json.Json.Small = ({} : stdgo.encoding.json.Json.Small);
    public var psmall : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Small> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Small>);
    public var ppsmall : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Small>> = (null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Small>>);
    public var interface_ : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public var pinterface : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface> = (null : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>);
    public var _unexported : stdgo.StdGoTypes.GoInt = 0;
    public function new(?bool_:Bool, ?int_:stdgo.StdGoTypes.GoInt, ?int8:stdgo.StdGoTypes.GoInt8, ?int16:stdgo.StdGoTypes.GoInt16, ?int32:stdgo.StdGoTypes.GoInt32, ?int64:stdgo.StdGoTypes.GoInt64, ?uint:stdgo.StdGoTypes.GoUInt, ?uint8:stdgo.StdGoTypes.GoUInt8, ?uint16:stdgo.StdGoTypes.GoUInt16, ?uint32:stdgo.StdGoTypes.GoUInt32, ?uint64:stdgo.StdGoTypes.GoUInt64, ?uintptr:stdgo.StdGoTypes.GoUIntptr, ?float32:stdgo.StdGoTypes.GoFloat32, ?float64:stdgo.StdGoTypes.GoFloat64, ?foo:stdgo.GoString, ?foo2:stdgo.GoString, ?intStr:stdgo.StdGoTypes.GoInt64, ?uintptrStr:stdgo.StdGoTypes.GoUIntptr, ?pbool:stdgo.Pointer<Bool>, ?pint:stdgo.Pointer<stdgo.StdGoTypes.GoInt>, ?pint8:stdgo.Pointer<stdgo.StdGoTypes.GoInt8>, ?pint16:stdgo.Pointer<stdgo.StdGoTypes.GoInt16>, ?pint32:stdgo.Pointer<stdgo.StdGoTypes.GoInt32>, ?pint64:stdgo.Pointer<stdgo.StdGoTypes.GoInt64>, ?puint:stdgo.Pointer<stdgo.StdGoTypes.GoUInt>, ?puint8:stdgo.Pointer<stdgo.StdGoTypes.GoUInt8>, ?puint16:stdgo.Pointer<stdgo.StdGoTypes.GoUInt16>, ?puint32:stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>, ?puint64:stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>, ?puintptr:stdgo.Pointer<stdgo.StdGoTypes.GoUIntptr>, ?pfloat32:stdgo.Pointer<stdgo.StdGoTypes.GoFloat32>, ?pfloat64:stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>, ?string:stdgo.GoString, ?pstring:stdgo.Pointer<stdgo.GoString>, ?map_:stdgo.GoMap<stdgo.GoString, stdgo.encoding.json.Json.Small>, ?mapP:stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Small>>, ?pmap:stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.encoding.json.Json.Small>>, ?pmapP:stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Small>>>, ?emptyMap:stdgo.GoMap<stdgo.GoString, stdgo.encoding.json.Json.Small>, ?nilMap:stdgo.GoMap<stdgo.GoString, stdgo.encoding.json.Json.Small>, ?slice:stdgo.Slice<stdgo.encoding.json.Json.Small>, ?sliceP:stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Small>>, ?pslice:stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.encoding.json.Json.Small>>, ?psliceP:stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Small>>>, ?emptySlice:stdgo.Slice<stdgo.encoding.json.Json.Small>, ?nilSlice:stdgo.Slice<stdgo.encoding.json.Json.Small>, ?stringSlice:stdgo.Slice<stdgo.GoString>, ?byteSlice:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, ?small:stdgo.encoding.json.Json.Small, ?psmall:stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Small>, ?ppsmall:stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Small>>, ?interface_:stdgo.StdGoTypes.AnyInterface, ?pinterface:stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>, ?_unexported:stdgo.StdGoTypes.GoInt) {
        if (bool_ != null) this.bool_ = bool_;
        if (int_ != null) this.int_ = int_;
        if (int8 != null) this.int8 = int8;
        if (int16 != null) this.int16 = int16;
        if (int32 != null) this.int32 = int32;
        if (int64 != null) this.int64 = int64;
        if (uint != null) this.uint = uint;
        if (uint8 != null) this.uint8 = uint8;
        if (uint16 != null) this.uint16 = uint16;
        if (uint32 != null) this.uint32 = uint32;
        if (uint64 != null) this.uint64 = uint64;
        if (uintptr != null) this.uintptr = uintptr;
        if (float32 != null) this.float32 = float32;
        if (float64 != null) this.float64 = float64;
        if (foo != null) this.foo = foo;
        if (foo2 != null) this.foo2 = foo2;
        if (intStr != null) this.intStr = intStr;
        if (uintptrStr != null) this.uintptrStr = uintptrStr;
        if (pbool != null) this.pbool = pbool;
        if (pint != null) this.pint = pint;
        if (pint8 != null) this.pint8 = pint8;
        if (pint16 != null) this.pint16 = pint16;
        if (pint32 != null) this.pint32 = pint32;
        if (pint64 != null) this.pint64 = pint64;
        if (puint != null) this.puint = puint;
        if (puint8 != null) this.puint8 = puint8;
        if (puint16 != null) this.puint16 = puint16;
        if (puint32 != null) this.puint32 = puint32;
        if (puint64 != null) this.puint64 = puint64;
        if (puintptr != null) this.puintptr = puintptr;
        if (pfloat32 != null) this.pfloat32 = pfloat32;
        if (pfloat64 != null) this.pfloat64 = pfloat64;
        if (string != null) this.string = string;
        if (pstring != null) this.pstring = pstring;
        if (map_ != null) this.map_ = map_;
        if (mapP != null) this.mapP = mapP;
        if (pmap != null) this.pmap = pmap;
        if (pmapP != null) this.pmapP = pmapP;
        if (emptyMap != null) this.emptyMap = emptyMap;
        if (nilMap != null) this.nilMap = nilMap;
        if (slice != null) this.slice = slice;
        if (sliceP != null) this.sliceP = sliceP;
        if (pslice != null) this.pslice = pslice;
        if (psliceP != null) this.psliceP = psliceP;
        if (emptySlice != null) this.emptySlice = emptySlice;
        if (nilSlice != null) this.nilSlice = nilSlice;
        if (stringSlice != null) this.stringSlice = stringSlice;
        if (byteSlice != null) this.byteSlice = byteSlice;
        if (small != null) this.small = small;
        if (psmall != null) this.psmall = psmall;
        if (ppsmall != null) this.ppsmall = ppsmall;
        if (interface_ != null) this.interface_ = interface_;
        if (pinterface != null) this.pinterface = pinterface;
        if (_unexported != null) this._unexported = _unexported;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new All(
bool_,
int_,
int8,
int16,
int32,
int64,
uint,
uint8,
uint16,
uint32,
uint64,
uintptr,
float32,
float64,
foo,
foo2,
intStr,
uintptrStr,
pbool,
pint,
pint8,
pint16,
pint32,
pint64,
puint,
puint8,
puint16,
puint32,
puint64,
puintptr,
pfloat32,
pfloat64,
string,
pstring,
map_,
mapP,
pmap,
pmapP,
emptyMap,
nilMap,
slice,
sliceP,
pslice,
psliceP,
emptySlice,
nilSlice,
stringSlice,
byteSlice,
small,
psmall,
ppsmall,
interface_,
pinterface,
_unexported);
    }
}
/**
    
    
    
**/
@:structInit class Small {
    public var tag : stdgo.GoString = "";
    public function new(?tag:stdgo.GoString) {
        if (tag != null) this.tag = tag;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Small(tag);
    }
}
/**
    
    
    
**/
@:structInit class NullTest {
    public var bool_ : Bool = false;
    public var int_ : stdgo.StdGoTypes.GoInt = 0;
    public var int8 : stdgo.StdGoTypes.GoInt8 = 0;
    public var int16 : stdgo.StdGoTypes.GoInt16 = 0;
    public var int32 : stdgo.StdGoTypes.GoInt32 = 0;
    public var int64 : stdgo.StdGoTypes.GoInt64 = 0;
    public var uint : stdgo.StdGoTypes.GoUInt = 0;
    public var uint8 : stdgo.StdGoTypes.GoUInt8 = 0;
    public var uint16 : stdgo.StdGoTypes.GoUInt16 = 0;
    public var uint32 : stdgo.StdGoTypes.GoUInt32 = 0;
    public var uint64 : stdgo.StdGoTypes.GoUInt64 = 0;
    public var float32 : stdgo.StdGoTypes.GoFloat32 = 0;
    public var float64 : stdgo.StdGoTypes.GoFloat64 = 0;
    public var string : stdgo.GoString = "";
    public var pbool : stdgo.Pointer<Bool> = (null : stdgo.Pointer<Bool>);
    public var map_ : stdgo.GoMap<stdgo.GoString, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
    public var slice : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var interface_ : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public var praw : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage>);
    public var ptime : stdgo.StdGoTypes.Ref<stdgo.time.Time.Time> = (null : stdgo.StdGoTypes.Ref<stdgo.time.Time.Time>);
    public var pbigInt : stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_> = (null : stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_>);
    public var ptext : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.MustNotUnmarshalText> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.MustNotUnmarshalText>);
    public var pbuffer : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer> = (null : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
    public var pstruct : stdgo.StdGoTypes.Ref<T_unquotedValue> = (null : stdgo.StdGoTypes.Ref<T_unquotedValue>);
    public var raw : stdgo.encoding.json.Json.RawMessage = new stdgo.encoding.json.Json.RawMessage(0, 0);
    public var time : stdgo.time.Time.Time = ({} : stdgo.time.Time.Time);
    public var bigInt : stdgo.math.big.Big.Int_ = ({} : stdgo.math.big.Big.Int_);
    public var text : stdgo.encoding.json.Json.MustNotUnmarshalText = ({} : stdgo.encoding.json.Json.MustNotUnmarshalText);
    public var buffer : stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
    public var struct_ : T_unquotedValue = ({} : T_unquotedValue);
    public function new(?bool_:Bool, ?int_:stdgo.StdGoTypes.GoInt, ?int8:stdgo.StdGoTypes.GoInt8, ?int16:stdgo.StdGoTypes.GoInt16, ?int32:stdgo.StdGoTypes.GoInt32, ?int64:stdgo.StdGoTypes.GoInt64, ?uint:stdgo.StdGoTypes.GoUInt, ?uint8:stdgo.StdGoTypes.GoUInt8, ?uint16:stdgo.StdGoTypes.GoUInt16, ?uint32:stdgo.StdGoTypes.GoUInt32, ?uint64:stdgo.StdGoTypes.GoUInt64, ?float32:stdgo.StdGoTypes.GoFloat32, ?float64:stdgo.StdGoTypes.GoFloat64, ?string:stdgo.GoString, ?pbool:stdgo.Pointer<Bool>, ?map_:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?slice:stdgo.Slice<stdgo.GoString>, ?interface_:stdgo.StdGoTypes.AnyInterface, ?praw:stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage>, ?ptime:stdgo.StdGoTypes.Ref<stdgo.time.Time.Time>, ?pbigInt:stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_>, ?ptext:stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.MustNotUnmarshalText>, ?pbuffer:stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>, ?pstruct:stdgo.StdGoTypes.Ref<T_unquotedValue>, ?raw:stdgo.encoding.json.Json.RawMessage, ?time:stdgo.time.Time.Time, ?bigInt:stdgo.math.big.Big.Int_, ?text:stdgo.encoding.json.Json.MustNotUnmarshalText, ?buffer:stdgo.bytes.Bytes.Buffer, ?struct_:T_unquotedValue) {
        if (bool_ != null) this.bool_ = bool_;
        if (int_ != null) this.int_ = int_;
        if (int8 != null) this.int8 = int8;
        if (int16 != null) this.int16 = int16;
        if (int32 != null) this.int32 = int32;
        if (int64 != null) this.int64 = int64;
        if (uint != null) this.uint = uint;
        if (uint8 != null) this.uint8 = uint8;
        if (uint16 != null) this.uint16 = uint16;
        if (uint32 != null) this.uint32 = uint32;
        if (uint64 != null) this.uint64 = uint64;
        if (float32 != null) this.float32 = float32;
        if (float64 != null) this.float64 = float64;
        if (string != null) this.string = string;
        if (pbool != null) this.pbool = pbool;
        if (map_ != null) this.map_ = map_;
        if (slice != null) this.slice = slice;
        if (interface_ != null) this.interface_ = interface_;
        if (praw != null) this.praw = praw;
        if (ptime != null) this.ptime = ptime;
        if (pbigInt != null) this.pbigInt = pbigInt;
        if (ptext != null) this.ptext = ptext;
        if (pbuffer != null) this.pbuffer = pbuffer;
        if (pstruct != null) this.pstruct = pstruct;
        if (raw != null) this.raw = raw;
        if (time != null) this.time = time;
        if (bigInt != null) this.bigInt = bigInt;
        if (text != null) this.text = text;
        if (buffer != null) this.buffer = buffer;
        if (struct_ != null) this.struct_ = struct_;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new NullTest(
bool_,
int_,
int8,
int16,
int32,
int64,
uint,
uint8,
uint16,
uint32,
uint64,
float32,
float64,
string,
pbool,
map_,
slice,
interface_,
praw,
ptime,
pbigInt,
ptext,
pbuffer,
pstruct,
raw,
time,
bigInt,
text,
buffer,
struct_);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.MustNotUnmarshalJSON_static_extension) class MustNotUnmarshalJSON {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new MustNotUnmarshalJSON();
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.MustNotUnmarshalText_static_extension) class MustNotUnmarshalText {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new MustNotUnmarshalText();
    }
}
/**
    // Test handling of unexported fields that should be ignored.
    // Issue 4660
    
    
**/
@:structInit @:private class T_unexportedFields {
    public var name : stdgo.GoString = "";
    @:tag("`json:\"-\"`")
    public var _m : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface> = (null : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>);
    @:tag("`json:\"abcd\"`")
    public var _m2 : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface> = (null : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>);
    @:tag("`json:\"-\"`")
    public var _s : stdgo.Slice<stdgo.StdGoTypes.GoInt> = (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>);
    public function new(?name:stdgo.GoString, ?_m:stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>, ?_m2:stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>, ?_s:stdgo.Slice<stdgo.StdGoTypes.GoInt>) {
        if (name != null) this.name = name;
        if (_m != null) this._m = _m;
        if (_m2 != null) this._m2 = _m2;
        if (_s != null) this._s = _s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_unexportedFields(name, _m, _m2, _s);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.encoding.json.Json.T_unmarshalPanic_static_extension) class T_unmarshalPanic {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_unmarshalPanic();
    }
}
/**
    // An UnsupportedTypeError is returned by Marshal when attempting
    // to encode an unsupported value type.
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.UnsupportedTypeError_static_extension) class UnsupportedTypeError {
    public var type : stdgo.reflect.Reflect.Type_ = (null : stdgo.reflect.Reflect.Type_);
    public function new(?type:stdgo.reflect.Reflect.Type_) {
        if (type != null) this.type = type;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new UnsupportedTypeError(type);
    }
}
/**
    // An UnsupportedValueError is returned by Marshal when attempting
    // to encode an unsupported value.
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.UnsupportedValueError_static_extension) class UnsupportedValueError {
    public var value : stdgo.reflect.Reflect.Value = ({} : stdgo.reflect.Reflect.Value);
    public var str : stdgo.GoString = "";
    public function new(?value:stdgo.reflect.Reflect.Value, ?str:stdgo.GoString) {
        if (value != null) this.value = value;
        if (str != null) this.str = str;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new UnsupportedValueError(value, str);
    }
}
/**
    // Before Go 1.2, an InvalidUTF8Error was returned by Marshal when
    // attempting to encode a string value with invalid UTF-8 sequences.
    // As of Go 1.2, Marshal instead coerces the string to valid UTF-8 by
    // replacing invalid bytes with the Unicode replacement rune U+FFFD.
    //
    // Deprecated: No longer used; kept for compatibility.
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.InvalidUTF8Error_static_extension) class InvalidUTF8Error {
    public var s : stdgo.GoString = "";
    public function new(?s:stdgo.GoString) {
        if (s != null) this.s = s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new InvalidUTF8Error(s);
    }
}
/**
    // A MarshalerError represents an error from calling a MarshalJSON or MarshalText method.
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.MarshalerError_static_extension) class MarshalerError {
    public var type : stdgo.reflect.Reflect.Type_ = (null : stdgo.reflect.Reflect.Type_);
    public var err : stdgo.Error = (null : stdgo.Error);
    public var _sourceFunc : stdgo.GoString = "";
    public function new(?type:stdgo.reflect.Reflect.Type_, ?err:stdgo.Error, ?_sourceFunc:stdgo.GoString) {
        if (type != null) this.type = type;
        if (err != null) this.err = err;
        if (_sourceFunc != null) this._sourceFunc = _sourceFunc;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new MarshalerError(type, err, _sourceFunc);
    }
}
/**
    // An encodeState encodes JSON into a bytes.Buffer.
    
    
**/
@:structInit @:private @:using(stdgo.encoding.json.Json.T_encodeState_static_extension) class T_encodeState {
    @:embedded
    public var buffer : stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
    /**
        // Keep track of what pointers we've seen in the current recursive call
        // path, to avoid cycles that could lead to a stack overflow. Only do
        // the relatively expensive map operations if ptrLevel is larger than
        // startDetectingCyclesAfter, so that we skip the work if we're within a
        // reasonable amount of nested pointers deep.
    **/
    public var _ptrLevel : stdgo.StdGoTypes.GoUInt = 0;
    public var _ptrSeen : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, T_unquotedValue> = (null : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, T_unquotedValue>);
    public function new(?buffer:stdgo.bytes.Bytes.Buffer, ?_ptrLevel:stdgo.StdGoTypes.GoUInt, ?_ptrSeen:stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, T_unquotedValue>) {
        if (buffer != null) this.buffer = buffer;
        if (_ptrLevel != null) this._ptrLevel = _ptrLevel;
        if (_ptrSeen != null) this._ptrSeen = _ptrSeen;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function available():stdgo.StdGoTypes.GoInt return buffer.available();
    @:embedded
    public function availableBuffer():stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return buffer.availableBuffer();
    @:embedded
    public function bytes():stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return buffer.bytes();
    @:embedded
    public function cap():stdgo.StdGoTypes.GoInt return buffer.cap();
    @:embedded
    public function grow(_n:stdgo.StdGoTypes.GoInt) buffer.grow(_n);
    @:embedded
    public function len():stdgo.StdGoTypes.GoInt return buffer.len();
    @:embedded
    public function next(_n:stdgo.StdGoTypes.GoInt):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return buffer.next(_n);
    @:embedded
    public function read(_b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return buffer.read(_b);
    @:embedded
    public function readByte():{ var _0 : stdgo.StdGoTypes.GoUInt8; var _1 : stdgo.Error; } return buffer.readByte();
    @:embedded
    public function readBytes(__0:stdgo.StdGoTypes.GoUInt8):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>; var _1 : stdgo.Error; } return buffer.readBytes(__0);
    @:embedded
    public function readFrom(_r:stdgo.io.Io.Reader):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } return buffer.readFrom(_r);
    @:embedded
    public function readRune():{ var _0 : stdgo.StdGoTypes.GoInt32; var _1 : stdgo.StdGoTypes.GoInt; var _2 : stdgo.Error; } return buffer.readRune();
    @:embedded
    public function readString(__0:stdgo.StdGoTypes.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return buffer.readString(__0);
    @:embedded
    public function reset() buffer.reset();
    @:embedded
    public function string():stdgo.GoString return buffer.string();
    @:embedded
    public function truncate(_n:stdgo.StdGoTypes.GoInt) buffer.truncate(_n);
    @:embedded
    public function unreadByte():stdgo.Error return buffer.unreadByte();
    @:embedded
    public function unreadRune():stdgo.Error return buffer.unreadRune();
    @:embedded
    public function write(_b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return buffer.write(_b);
    @:embedded
    public function writeByte(__0:stdgo.StdGoTypes.GoUInt8):stdgo.Error return buffer.writeByte(__0);
    @:embedded
    public function writeRune(__0:stdgo.StdGoTypes.GoInt32):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return buffer.writeRune(__0);
    @:embedded
    public function writeString(__0:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return buffer.writeString(__0);
    @:embedded
    public function writeTo(_w:stdgo.io.Io.Writer):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } return buffer.writeTo(_w);
    @:embedded
    public function _empty():Bool return buffer._empty();
    @:embedded
    public function _grow(_n:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.GoInt return buffer._grow(_n);
    @:embedded
    public function _readSlice(__0:stdgo.StdGoTypes.GoUInt8):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>; var _1 : stdgo.Error; } return buffer._readSlice(__0);
    @:embedded
    public function _tryGrowByReslice(_n:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : Bool; } return buffer._tryGrowByReslice(_n);
    public function __copy__() {
        return new T_encodeState(buffer, _ptrLevel, _ptrSeen);
    }
}
/**
    // jsonError is an error wrapper type for internal use only.
    // Panics with errors are wrapped in jsonError so that the top-level recover
    // can distinguish intentional panics from this package.
    
    
**/
@:structInit @:private @:using(stdgo.encoding.json.Json.T_jsonError_static_extension) class T_jsonError {
    @:embedded
    public var _error : stdgo.Error = (null : stdgo.Error);
    public function new(?_error:stdgo.Error) {
        if (_error != null) this._error = _error;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function error():stdgo.GoString return _error.error();
    public function __copy__() {
        return new T_jsonError(_error);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_encOpts {
    /**
        // quoted causes primitive fields to be encoded inside JSON strings.
    **/
    public var _quoted : Bool = false;
    /**
        // escapeHTML causes '<', '>', and '&' to be escaped in JSON strings.
    **/
    public var _escapeHTML : Bool = false;
    public function new(?_quoted:Bool, ?_escapeHTML:Bool) {
        if (_quoted != null) this._quoted = _quoted;
        if (_escapeHTML != null) this._escapeHTML = _escapeHTML;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_encOpts(_quoted, _escapeHTML);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.encoding.json.Json.T_structEncoder_static_extension) class T_structEncoder {
    public var _fields : stdgo.encoding.json.Json.T_structFields = ({} : stdgo.encoding.json.Json.T_structFields);
    public function new(?_fields:stdgo.encoding.json.Json.T_structFields) {
        if (_fields != null) this._fields = _fields;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_structEncoder(_fields);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_structFields {
    public var _list : stdgo.Slice<stdgo.encoding.json.Json.T_field> = (null : stdgo.Slice<stdgo.encoding.json.Json.T_field>);
    public var _byExactName : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_field>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_field>>);
    public var _byFoldedName : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_field>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_field>>);
    public function new(?_list:stdgo.Slice<stdgo.encoding.json.Json.T_field>, ?_byExactName:stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_field>>, ?_byFoldedName:stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_field>>) {
        if (_list != null) this._list = _list;
        if (_byExactName != null) this._byExactName = _byExactName;
        if (_byFoldedName != null) this._byFoldedName = _byFoldedName;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_structFields(_list, _byExactName, _byFoldedName);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.encoding.json.Json.T_mapEncoder_static_extension) class T_mapEncoder {
    public var _elemEnc : stdgo.encoding.json.Json.T_encoderFunc = (null : stdgo.encoding.json.Json.T_encoderFunc);
    public function new(?_elemEnc:stdgo.encoding.json.Json.T_encoderFunc) {
        if (_elemEnc != null) this._elemEnc = _elemEnc;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_mapEncoder(_elemEnc);
    }
}
/**
    // sliceEncoder just wraps an arrayEncoder, checking to make sure the value isn't nil.
    
    
**/
@:structInit @:private @:using(stdgo.encoding.json.Json.T_sliceEncoder_static_extension) class T_sliceEncoder {
    public var _arrayEnc : stdgo.encoding.json.Json.T_encoderFunc = (null : stdgo.encoding.json.Json.T_encoderFunc);
    public function new(?_arrayEnc:stdgo.encoding.json.Json.T_encoderFunc) {
        if (_arrayEnc != null) this._arrayEnc = _arrayEnc;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_sliceEncoder(_arrayEnc);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.encoding.json.Json.T_arrayEncoder_static_extension) class T_arrayEncoder {
    public var _elemEnc : stdgo.encoding.json.Json.T_encoderFunc = (null : stdgo.encoding.json.Json.T_encoderFunc);
    public function new(?_elemEnc:stdgo.encoding.json.Json.T_encoderFunc) {
        if (_elemEnc != null) this._elemEnc = _elemEnc;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_arrayEncoder(_elemEnc);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.encoding.json.Json.T_ptrEncoder_static_extension) class T_ptrEncoder {
    public var _elemEnc : stdgo.encoding.json.Json.T_encoderFunc = (null : stdgo.encoding.json.Json.T_encoderFunc);
    public function new(?_elemEnc:stdgo.encoding.json.Json.T_encoderFunc) {
        if (_elemEnc != null) this._elemEnc = _elemEnc;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ptrEncoder(_elemEnc);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.encoding.json.Json.T_condAddrEncoder_static_extension) class T_condAddrEncoder {
    public var _canAddrEnc : stdgo.encoding.json.Json.T_encoderFunc = (null : stdgo.encoding.json.Json.T_encoderFunc);
    public var _elseEnc : stdgo.encoding.json.Json.T_encoderFunc = (null : stdgo.encoding.json.Json.T_encoderFunc);
    public function new(?_canAddrEnc:stdgo.encoding.json.Json.T_encoderFunc, ?_elseEnc:stdgo.encoding.json.Json.T_encoderFunc) {
        if (_canAddrEnc != null) this._canAddrEnc = _canAddrEnc;
        if (_elseEnc != null) this._elseEnc = _elseEnc;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_condAddrEncoder(_canAddrEnc, _elseEnc);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.encoding.json.Json.T_reflectWithString_static_extension) class T_reflectWithString {
    public var _k : stdgo.reflect.Reflect.Value = ({} : stdgo.reflect.Reflect.Value);
    public var _v : stdgo.reflect.Reflect.Value = ({} : stdgo.reflect.Reflect.Value);
    public var _ks : stdgo.GoString = "";
    public function new(?_k:stdgo.reflect.Reflect.Value, ?_v:stdgo.reflect.Reflect.Value, ?_ks:stdgo.GoString) {
        if (_k != null) this._k = _k;
        if (_v != null) this._v = _v;
        if (_ks != null) this._ks = _ks;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_reflectWithString(_k, _v, _ks);
    }
}
/**
    // A field represents a single field found in a struct.
    
    
**/
@:structInit @:private class T_field {
    public var _name : stdgo.GoString = "";
    public var _nameBytes : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    public var _nameNonEsc : stdgo.GoString = "";
    public var _nameEscHTML : stdgo.GoString = "";
    public var _tag : Bool = false;
    public var _index : stdgo.Slice<stdgo.StdGoTypes.GoInt> = (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>);
    public var _typ : stdgo.reflect.Reflect.Type_ = (null : stdgo.reflect.Reflect.Type_);
    public var _omitEmpty : Bool = false;
    public var _quoted : Bool = false;
    public var _encoder : stdgo.encoding.json.Json.T_encoderFunc = (null : stdgo.encoding.json.Json.T_encoderFunc);
    public function new(?_name:stdgo.GoString, ?_nameBytes:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, ?_nameNonEsc:stdgo.GoString, ?_nameEscHTML:stdgo.GoString, ?_tag:Bool, ?_index:stdgo.Slice<stdgo.StdGoTypes.GoInt>, ?_typ:stdgo.reflect.Reflect.Type_, ?_omitEmpty:Bool, ?_quoted:Bool, ?_encoder:stdgo.encoding.json.Json.T_encoderFunc) {
        if (_name != null) this._name = _name;
        if (_nameBytes != null) this._nameBytes = _nameBytes;
        if (_nameNonEsc != null) this._nameNonEsc = _nameNonEsc;
        if (_nameEscHTML != null) this._nameEscHTML = _nameEscHTML;
        if (_tag != null) this._tag = _tag;
        if (_index != null) this._index = _index;
        if (_typ != null) this._typ = _typ;
        if (_omitEmpty != null) this._omitEmpty = _omitEmpty;
        if (_quoted != null) this._quoted = _quoted;
        if (_encoder != null) this._encoder = _encoder;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_field(_name, _nameBytes, _nameNonEsc, _nameEscHTML, _tag, _index, _typ, _omitEmpty, _quoted, _encoder);
    }
}
/**
    
    
    
**/
@:structInit class Optionals {
    @:tag("`json:\"sr\"`")
    public var sr : stdgo.GoString = "";
    @:tag("`json:\"so,omitempty\"`")
    public var so : stdgo.GoString = "";
    @:tag("`json:\"-\"`")
    public var sw : stdgo.GoString = "";
    @:tag("`json:\"omitempty\"`")
    public var ir : stdgo.StdGoTypes.GoInt = 0;
    @:tag("`json:\"io,omitempty\"`")
    public var io : stdgo.StdGoTypes.GoInt = 0;
    @:tag("`json:\"slr,random\"`")
    public var slr : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    @:tag("`json:\"slo,omitempty\"`")
    public var slo : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    @:tag("`json:\"mr\"`")
    public var mr : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface> = (null : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>);
    @:tag("`json:\",omitempty\"`")
    public var mo : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface> = (null : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>);
    @:tag("`json:\"fr\"`")
    public var fr : stdgo.StdGoTypes.GoFloat64 = 0;
    @:tag("`json:\"fo,omitempty\"`")
    public var fo : stdgo.StdGoTypes.GoFloat64 = 0;
    @:tag("`json:\"br\"`")
    public var br : Bool = false;
    @:tag("`json:\"bo,omitempty\"`")
    public var bo : Bool = false;
    @:tag("`json:\"ur\"`")
    public var ur : stdgo.StdGoTypes.GoUInt = 0;
    @:tag("`json:\"uo,omitempty\"`")
    public var uo : stdgo.StdGoTypes.GoUInt = 0;
    @:tag("`json:\"str\"`")
    public var str : T_unquotedValue = ({} : T_unquotedValue);
    @:tag("`json:\"sto,omitempty\"`")
    public var sto : T_unquotedValue = ({} : T_unquotedValue);
    public function new(?sr:stdgo.GoString, ?so:stdgo.GoString, ?sw:stdgo.GoString, ?ir:stdgo.StdGoTypes.GoInt, ?io:stdgo.StdGoTypes.GoInt, ?slr:stdgo.Slice<stdgo.GoString>, ?slo:stdgo.Slice<stdgo.GoString>, ?mr:stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>, ?mo:stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>, ?fr:stdgo.StdGoTypes.GoFloat64, ?fo:stdgo.StdGoTypes.GoFloat64, ?br:Bool, ?bo:Bool, ?ur:stdgo.StdGoTypes.GoUInt, ?uo:stdgo.StdGoTypes.GoUInt, ?str:T_unquotedValue, ?sto:T_unquotedValue) {
        if (sr != null) this.sr = sr;
        if (so != null) this.so = so;
        if (sw != null) this.sw = sw;
        if (ir != null) this.ir = ir;
        if (io != null) this.io = io;
        if (slr != null) this.slr = slr;
        if (slo != null) this.slo = slo;
        if (mr != null) this.mr = mr;
        if (mo != null) this.mo = mo;
        if (fr != null) this.fr = fr;
        if (fo != null) this.fo = fo;
        if (br != null) this.br = br;
        if (bo != null) this.bo = bo;
        if (ur != null) this.ur = ur;
        if (uo != null) this.uo = uo;
        if (str != null) this.str = str;
        if (sto != null) this.sto = sto;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Optionals(
sr,
so,
sw,
ir,
io,
slr,
slo,
mr,
mo,
fr,
fo,
br,
bo,
ur,
uo,
str,
sto);
    }
}
/**
    
    
    
**/
@:structInit class StringTag {
    @:tag("`json:\",string\"`")
    public var boolStr : Bool = false;
    @:tag("`json:\",string\"`")
    public var intStr : stdgo.StdGoTypes.GoInt64 = 0;
    @:tag("`json:\",string\"`")
    public var uintptrStr : stdgo.StdGoTypes.GoUIntptr = 0;
    @:tag("`json:\",string\"`")
    public var strStr : stdgo.GoString = "";
    @:tag("`json:\",string\"`")
    public var numberStr : stdgo.encoding.json.Json.Number = (("" : stdgo.GoString) : stdgo.encoding.json.Json.Number);
    public function new(?boolStr:Bool, ?intStr:stdgo.StdGoTypes.GoInt64, ?uintptrStr:stdgo.StdGoTypes.GoUIntptr, ?strStr:stdgo.GoString, ?numberStr:stdgo.encoding.json.Json.Number) {
        if (boolStr != null) this.boolStr = boolStr;
        if (intStr != null) this.intStr = intStr;
        if (uintptrStr != null) this.uintptrStr = uintptrStr;
        if (strStr != null) this.strStr = strStr;
        if (numberStr != null) this.numberStr = numberStr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new StringTag(boolStr, intStr, uintptrStr, strStr, numberStr);
    }
}
/**
    
    
    
**/
@:structInit class SamePointerNoCycle {
    public var ptr1 : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SamePointerNoCycle> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SamePointerNoCycle>);
    public var ptr2 : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SamePointerNoCycle> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SamePointerNoCycle>);
    public function new(?ptr1:stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SamePointerNoCycle>, ?ptr2:stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SamePointerNoCycle>) {
        if (ptr1 != null) this.ptr1 = ptr1;
        if (ptr2 != null) this.ptr2 = ptr2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SamePointerNoCycle(ptr1, ptr2);
    }
}
/**
    
    
    
**/
@:structInit class PointerCycle {
    public var ptr : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.PointerCycle> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.PointerCycle>);
    public function new(?ptr:stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.PointerCycle>) {
        if (ptr != null) this.ptr = ptr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PointerCycle(ptr);
    }
}
/**
    
    
    
**/
@:structInit class PointerCycleIndirect {
    public var ptrs : stdgo.Slice<stdgo.StdGoTypes.AnyInterface> = (null : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>);
    public function new(?ptrs:stdgo.Slice<stdgo.StdGoTypes.AnyInterface>) {
        if (ptrs != null) this.ptrs = ptrs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PointerCycleIndirect(ptrs);
    }
}
/**
    
    
    
**/
@:structInit class BugA {
    public var s : stdgo.GoString = "";
    public function new(?s:stdgo.GoString) {
        if (s != null) this.s = s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BugA(s);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.BugB_static_extension) class BugB {
    @:embedded
    public var bugA : stdgo.encoding.json.Json.BugA = ({} : stdgo.encoding.json.Json.BugA);
    public var s : stdgo.GoString = "";
    public function new(?bugA:stdgo.encoding.json.Json.BugA, ?s:stdgo.GoString) {
        if (bugA != null) this.bugA = bugA;
        if (s != null) this.s = s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BugB(bugA, s);
    }
}
/**
    
    
    
**/
@:structInit class BugC {
    public var s : stdgo.GoString = "";
    public function new(?s:stdgo.GoString) {
        if (s != null) this.s = s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BugC(s);
    }
}
/**
    // Legal Go: We never use the repeated embedded field (S).
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.BugX_static_extension) class BugX {
    public var a : stdgo.StdGoTypes.GoInt = 0;
    @:embedded
    public var bugA : stdgo.encoding.json.Json.BugA = ({} : stdgo.encoding.json.Json.BugA);
    @:embedded
    public var bugB : stdgo.encoding.json.Json.BugB = ({} : stdgo.encoding.json.Json.BugB);
    public function new(?a:stdgo.StdGoTypes.GoInt, ?bugA:stdgo.encoding.json.Json.BugA, ?bugB:stdgo.encoding.json.Json.BugB) {
        if (a != null) this.a = a;
        if (bugA != null) this.bugA = bugA;
        if (bugB != null) this.bugB = bugB;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BugX(a, bugA, bugB);
    }
}
/**
    
    
    
**/
@:structInit class BugD {
    @:tag("`json:\"S\"`")
    public var xxx : stdgo.GoString = "";
    public function new(?xxx:stdgo.GoString) {
        if (xxx != null) this.xxx = xxx;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BugD(xxx);
    }
}
/**
    // BugD's tagged S field should dominate BugA's.
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.BugY_static_extension) class BugY {
    @:embedded
    public var bugA : stdgo.encoding.json.Json.BugA = ({} : stdgo.encoding.json.Json.BugA);
    @:embedded
    public var bugD : stdgo.encoding.json.Json.BugD = ({} : stdgo.encoding.json.Json.BugD);
    public function new(?bugA:stdgo.encoding.json.Json.BugA, ?bugD:stdgo.encoding.json.Json.BugD) {
        if (bugA != null) this.bugA = bugA;
        if (bugD != null) this.bugD = bugD;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BugY(bugA, bugD);
    }
}
/**
    // There are no tags here, so S should not appear.
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.BugZ_static_extension) class BugZ {
    @:embedded
    public var bugA : stdgo.encoding.json.Json.BugA = ({} : stdgo.encoding.json.Json.BugA);
    @:embedded
    public var bugC : stdgo.encoding.json.Json.BugC = ({} : stdgo.encoding.json.Json.BugC);
    @:embedded
    public var bugY : stdgo.encoding.json.Json.BugY = ({} : stdgo.encoding.json.Json.BugY);
    public function new(?bugA:stdgo.encoding.json.Json.BugA, ?bugC:stdgo.encoding.json.Json.BugC, ?bugY:stdgo.encoding.json.Json.BugY) {
        if (bugA != null) this.bugA = bugA;
        if (bugC != null) this.bugC = bugC;
        if (bugY != null) this.bugY = bugY;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BugZ(bugA, bugC, bugY);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.encoding.json.Json.T_marshalPanic_static_extension) class T_marshalPanic {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_marshalPanic();
    }
}
/**
    // A SyntaxError is a description of a JSON syntax error.
    // Unmarshal will return a SyntaxError if the JSON can't be parsed.
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.SyntaxError_static_extension) class SyntaxError {
    public var _msg : stdgo.GoString = "";
    public var offset : stdgo.StdGoTypes.GoInt64 = 0;
    public function new(?_msg:stdgo.GoString, ?offset:stdgo.StdGoTypes.GoInt64) {
        if (_msg != null) this._msg = _msg;
        if (offset != null) this.offset = offset;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SyntaxError(_msg, offset);
    }
}
/**
    // A scanner is a JSON scanning state machine.
    // Callers call scan.reset and then pass bytes in one at a time
    // by calling scan.step(&scan, c) for each byte.
    // The return value, referred to as an opcode, tells the
    // caller about significant parsing events like beginning
    // and ending literals, objects, and arrays, so that the
    // caller can follow along if it wishes.
    // The return value scanEnd indicates that a single top-level
    // JSON value has been completed, *before* the byte that
    // just got passed in.  (The indication must be delayed in order
    // to recognize the end of numbers: is 123 a whole value or
    // the beginning of 12345e+6?).
    
    
**/
@:structInit @:private @:using(stdgo.encoding.json.Json.T_scanner_static_extension) class T_scanner {
    /**
        // The step is a func to be called to execute the next transition.
        // Also tried using an integer constant and a single func
        // with a switch, but using the func directly was 10% faster
        // on a 64-bit Mac Mini, and it's nicer to read.
    **/
    public var _step : (stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_scanner>, stdgo.StdGoTypes.GoUInt8) -> stdgo.StdGoTypes.GoInt = null;
    /**
        // Reached end of top-level value.
    **/
    public var _endTop : Bool = false;
    /**
        // Stack of what we're in the middle of - array values, object keys, object values.
    **/
    public var _parseState : stdgo.Slice<stdgo.StdGoTypes.GoInt> = (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>);
    /**
        // Error that happened, if any.
    **/
    public var _err : stdgo.Error = (null : stdgo.Error);
    /**
        // total bytes consumed, updated by decoder.Decode (and deliberately
        // not set to zero by scan.reset)
    **/
    public var _bytes : stdgo.StdGoTypes.GoInt64 = 0;
    public function new(?_step:(stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_scanner>, stdgo.StdGoTypes.GoUInt8) -> stdgo.StdGoTypes.GoInt, ?_endTop:Bool, ?_parseState:stdgo.Slice<stdgo.StdGoTypes.GoInt>, ?_err:stdgo.Error, ?_bytes:stdgo.StdGoTypes.GoInt64) {
        if (_step != null) this._step = _step;
        if (_endTop != null) this._endTop = _endTop;
        if (_parseState != null) this._parseState = _parseState;
        if (_err != null) this._err = _err;
        if (_bytes != null) this._bytes = _bytes;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_scanner(_step, _endTop, _parseState, _err, _bytes);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_example {
    public var _compact : stdgo.GoString = "";
    public var _indent : stdgo.GoString = "";
    public function new(?_compact:stdgo.GoString, ?_indent:stdgo.GoString) {
        if (_compact != null) this._compact = _compact;
        if (_indent != null) this._indent = _indent;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_example(_compact, _indent);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_indentErrorTest {
    public var _in : stdgo.GoString = "";
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_in:stdgo.GoString, ?_err:stdgo.Error) {
        if (_in != null) this._in = _in;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_indentErrorTest(_in, _err);
    }
}
/**
    // A Decoder reads and decodes JSON values from an input stream.
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.Decoder_static_extension) class Decoder {
    public var _r : stdgo.io.Io.Reader = (null : stdgo.io.Io.Reader);
    public var _buf : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    public var _d : stdgo.encoding.json.Json.T_decodeState = ({} : stdgo.encoding.json.Json.T_decodeState);
    public var _scanp : stdgo.StdGoTypes.GoInt = 0;
    public var _scanned : stdgo.StdGoTypes.GoInt64 = 0;
    public var _scan : stdgo.encoding.json.Json.T_scanner = ({} : stdgo.encoding.json.Json.T_scanner);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _tokenState : stdgo.StdGoTypes.GoInt = 0;
    public var _tokenStack : stdgo.Slice<stdgo.StdGoTypes.GoInt> = (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>);
    public function new(?_r:stdgo.io.Io.Reader, ?_buf:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, ?_d:stdgo.encoding.json.Json.T_decodeState, ?_scanp:stdgo.StdGoTypes.GoInt, ?_scanned:stdgo.StdGoTypes.GoInt64, ?_scan:stdgo.encoding.json.Json.T_scanner, ?_err:stdgo.Error, ?_tokenState:stdgo.StdGoTypes.GoInt, ?_tokenStack:stdgo.Slice<stdgo.StdGoTypes.GoInt>) {
        if (_r != null) this._r = _r;
        if (_buf != null) this._buf = _buf;
        if (_d != null) this._d = _d;
        if (_scanp != null) this._scanp = _scanp;
        if (_scanned != null) this._scanned = _scanned;
        if (_scan != null) this._scan = _scan;
        if (_err != null) this._err = _err;
        if (_tokenState != null) this._tokenState = _tokenState;
        if (_tokenStack != null) this._tokenStack = _tokenStack;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Decoder(_r, _buf, _d, _scanp, _scanned, _scan, _err, _tokenState, _tokenStack);
    }
}
/**
    // An Encoder writes JSON values to an output stream.
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.Encoder_static_extension) class Encoder {
    public var _w : stdgo.io.Io.Writer = (null : stdgo.io.Io.Writer);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _escapeHTML : Bool = false;
    public var _indentBuf : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    public var _indentPrefix : stdgo.GoString = "";
    public var _indentValue : stdgo.GoString = "";
    public function new(?_w:stdgo.io.Io.Writer, ?_err:stdgo.Error, ?_escapeHTML:Bool, ?_indentBuf:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, ?_indentPrefix:stdgo.GoString, ?_indentValue:stdgo.GoString) {
        if (_w != null) this._w = _w;
        if (_err != null) this._err = _err;
        if (_escapeHTML != null) this._escapeHTML = _escapeHTML;
        if (_indentBuf != null) this._indentBuf = _indentBuf;
        if (_indentPrefix != null) this._indentPrefix = _indentPrefix;
        if (_indentValue != null) this._indentValue = _indentValue;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Encoder(_w, _err, _escapeHTML, _indentBuf, _indentPrefix, _indentValue);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_tokenStreamCase {
    public var _json : stdgo.GoString = "";
    public var _expTokens : stdgo.Slice<stdgo.StdGoTypes.AnyInterface> = (null : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>);
    public function new(?_json:stdgo.GoString, ?_expTokens:stdgo.Slice<stdgo.StdGoTypes.AnyInterface>) {
        if (_json != null) this._json = _json;
        if (_expTokens != null) this._expTokens = _expTokens;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_tokenStreamCase(_json, _expTokens);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_decodeThis {
    public var _v : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public function new(?_v:stdgo.StdGoTypes.AnyInterface) {
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_decodeThis(_v);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_basicLatin2xTag {
    @:tag("`json:\"$%-/\"`")
    public var v : stdgo.GoString = "";
    public function new(?v:stdgo.GoString) {
        if (v != null) this.v = v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_basicLatin2xTag(v);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_basicLatin3xTag {
    @:tag("`json:\"0123456789\"`")
    public var v : stdgo.GoString = "";
    public function new(?v:stdgo.GoString) {
        if (v != null) this.v = v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_basicLatin3xTag(v);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_basicLatin4xTag {
    @:tag("`json:\"ABCDEFGHIJKLMO\"`")
    public var v : stdgo.GoString = "";
    public function new(?v:stdgo.GoString) {
        if (v != null) this.v = v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_basicLatin4xTag(v);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_basicLatin5xTag {
    @:tag("`json:\"PQRSTUVWXYZ_\"`")
    public var v : stdgo.GoString = "";
    public function new(?v:stdgo.GoString) {
        if (v != null) this.v = v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_basicLatin5xTag(v);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_basicLatin6xTag {
    @:tag("`json:\"abcdefghijklmno\"`")
    public var v : stdgo.GoString = "";
    public function new(?v:stdgo.GoString) {
        if (v != null) this.v = v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_basicLatin6xTag(v);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_basicLatin7xTag {
    @:tag("`json:\"pqrstuvwxyz\"`")
    public var v : stdgo.GoString = "";
    public function new(?v:stdgo.GoString) {
        if (v != null) this.v = v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_basicLatin7xTag(v);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_miscPlaneTag {
    @:tag("`json:\"色は匂へど\"`")
    public var v : stdgo.GoString = "";
    public function new(?v:stdgo.GoString) {
        if (v != null) this.v = v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_miscPlaneTag(v);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_percentSlashTag {
    @:tag("`json:\"text/html%\"`")
    public var v : stdgo.GoString = "";
    public function new(?v:stdgo.GoString) {
        if (v != null) this.v = v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_percentSlashTag(v);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_punctuationTag {
    @:tag("`json:\"!#$%&()*+-./:;<=>?@[]^_{|}~ \"`")
    public var v : stdgo.GoString = "";
    public function new(?v:stdgo.GoString) {
        if (v != null) this.v = v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_punctuationTag(v);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_dashTag {
    @:tag("`json:\"-,\"`")
    public var v : stdgo.GoString = "";
    public function new(?v:stdgo.GoString) {
        if (v != null) this.v = v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_dashTag(v);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_emptyTag {
    public var w : stdgo.GoString = "";
    public function new(?w:stdgo.GoString) {
        if (w != null) this.w = w;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_emptyTag(w);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_misnamedTag {
    @:tag("`jsom:\"Misnamed\"`")
    public var x : stdgo.GoString = "";
    public function new(?x:stdgo.GoString) {
        if (x != null) this.x = x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_misnamedTag(x);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_badFormatTag {
    @:tag("`:\"BadFormat\"`")
    public var y : stdgo.GoString = "";
    public function new(?y:stdgo.GoString) {
        if (y != null) this.y = y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_badFormatTag(y);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_badCodeTag {
    @:tag("`json:\" !\\\"#&\'()*+,.\"`")
    public var z : stdgo.GoString = "";
    public function new(?z:stdgo.GoString) {
        if (z != null) this.z = z;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_badCodeTag(z);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_spaceTag {
    @:tag("`json:\"With space\"`")
    public var q : stdgo.GoString = "";
    public function new(?q:stdgo.GoString) {
        if (q != null) this.q = q;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_spaceTag(q);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_unicodeTag {
    @:tag("`json:\"Ελλάδα\"`")
    public var w : stdgo.GoString = "";
    public function new(?w:stdgo.GoString) {
        if (w != null) this.w = w;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_unicodeTag(w);
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
@:keep @:allow(stdgo.encoding.json.Json.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_0_static_extension) typedef T__struct_0 = {
    public var bytes : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_1_static_extension) typedef T__struct_1 = {};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_2>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_2_static_extension) typedef T__struct_2 = {
    @:tag("`json:\"bar,string\"`")
    public var bar : stdgo.GoString;
};
class T__struct_3_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_3>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_3_asInterface) class T__struct_3_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_3_static_extension) typedef T__struct_3 = {
    public var a : stdgo.StdGoTypes.GoInt;
    public var b : stdgo.encoding.json.Json.RawMessage;
};
class T__struct_4_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_4>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_4_asInterface) class T__struct_4_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_4_static_extension) typedef T__struct_4 = {
    public var a : stdgo.encoding.json.Json.Number;
};
class T__struct_5_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_5>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_5_asInterface) class T__struct_5_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_5_static_extension) typedef T__struct_5 = {
    @:tag("`json:\",string\"`")
    public var a : stdgo.encoding.json.Json.Number;
};
class T__struct_6_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_6>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_6_asInterface) class T__struct_6_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_6_static_extension) typedef T__struct_6 = {
    public var _in : stdgo.GoString;
    public var _out : stdgo.GoString;
};
class T__struct_7_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_7>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_7_asInterface) class T__struct_7_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_7_static_extension) typedef T__struct_7 = {
    public var _in : stdgo.GoString;
    public var _i : stdgo.StdGoTypes.GoInt64;
    public var _intErr : stdgo.GoString;
    public var _f : stdgo.StdGoTypes.GoFloat64;
    public var _floatErr : stdgo.GoString;
};
class T__struct_8_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_8>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_8_asInterface) class T__struct_8_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_8_static_extension) typedef T__struct_8 = {
    public var _pre : stdgo.StdGoTypes.AnyInterface;
    public var _json : stdgo.GoString;
    public var _post : stdgo.StdGoTypes.AnyInterface;
};
class T__struct_9_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_9>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_9_asInterface) class T__struct_9_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_9_static_extension) typedef T__struct_9 = {
    public var x : stdgo.StdGoTypes.AnyInterface;
};
class T__struct_10_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_10>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_10_asInterface) class T__struct_10_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_10_static_extension) typedef T__struct_10 = {
    public var _dest : stdgo.StdGoTypes.AnyInterface;
    public var _src : stdgo.GoString;
};
class T__struct_11_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_11>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_11_asInterface) class T__struct_11_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_11_static_extension) typedef T__struct_11 = {
    public var _in : stdgo.GoString;
    public var _ptr : stdgo.StdGoTypes.AnyInterface;
    public var _out : stdgo.StdGoTypes.AnyInterface;
};
class T__struct_12_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_12>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_12_asInterface) class T__struct_12_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_12_static_extension) typedef T__struct_12 = {
    public var _v : stdgo.StdGoTypes.AnyInterface;
    public var _want : stdgo.GoString;
};
class T__struct_13_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_13>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_13_asInterface) class T__struct_13_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_13_static_extension) typedef T__struct_13 = {
    @:tag("`json:\",string\"`")
    public var t : stdgo.time.Time.Time;
    @:tag("`json:\",string\"`")
    public var m : stdgo.GoMap<stdgo.GoString, stdgo.GoString>;
    @:tag("`json:\",string\"`")
    public var s : stdgo.Slice<stdgo.GoString>;
    @:tag("`json:\",string\"`")
    public var a : stdgo.GoArray<stdgo.GoString>;
    @:tag("`json:\",string\"`")
    public var i : stdgo.StdGoTypes.AnyInterface;
    @:tag("`json:\",string\"`")
    public var p : stdgo.Pointer<stdgo.StdGoTypes.GoInt>;
};
class T__struct_14_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_14>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_14_asInterface) class T__struct_14_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_14_static_extension) typedef T__struct_14 = {
    public var _in : stdgo.GoString;
    public var _ptr : stdgo.StdGoTypes.AnyInterface;
    public var _out : stdgo.StdGoTypes.AnyInterface;
    public var _err : stdgo.Error;
};
class T__struct_15_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_15>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_15_asInterface) class T__struct_15_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_15_static_extension) typedef T__struct_15 = {
    public var _in : stdgo.GoString;
    public var _err : stdgo.Error;
};
class T__struct_16_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_16>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_16_asInterface) class T__struct_16_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_16_static_extension) typedef T__struct_16 = {
    public var _name : stdgo.GoString;
    public var _data : stdgo.GoString;
    public var _errMaxDepth : Bool;
};
class T__struct_17_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_17>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_17_asInterface) class T__struct_17_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_17_static_extension) typedef T__struct_17 = {
    public var _name : stdgo.GoString;
    public var _newValue : () -> stdgo.StdGoTypes.AnyInterface;
};
class T__struct_18_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_18>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_18_asInterface) class T__struct_18_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_18_static_extension) typedef T__struct_18 = {
    @:tag("`json:\"a\"`")
    public var a : stdgo.StdGoTypes.AnyInterface;
};
class T__struct_19_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_19>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_19_asInterface) class T__struct_19_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_19_static_extension) typedef T__struct_19 = {
    @:tag("`json:\"b\"`")
    public var b : stdgo.StdGoTypes.AnyInterface;
};
class T__struct_20_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_20>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_20_asInterface) class T__struct_20_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_20_static_extension) typedef T__struct_20 = {
    public var _ptr : stdgo.StdGoTypes.AnyInterface;
    public var _len : stdgo.StdGoTypes.GoInt;
};
class T__struct_21_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_21>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_21_asInterface) class T__struct_21_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_21_static_extension) typedef T__struct_21 = {
    public var _name : stdgo.GoString;
    public var _in : stdgo.encoding.json.Json.StringTag;
    public var _want : stdgo.GoString;
};
class T__struct_22_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_22>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_22_asInterface) class T__struct_22_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_22_static_extension) typedef T__struct_22 = {
    public var r0 : stdgo.encoding.json.Json.Ref;
    public var r1 : stdgo.Pointer<stdgo.encoding.json.Json.Ref>;
    public var r2 : stdgo.encoding.json.Json.RefText;
    public var r3 : stdgo.Pointer<stdgo.encoding.json.Json.RefText>;
    public var v0 : stdgo.encoding.json.Json.Val;
    public var v1 : stdgo.Pointer<stdgo.encoding.json.Json.Val>;
    public var v2 : stdgo.encoding.json.Json.ValText;
    public var v3 : stdgo.Pointer<stdgo.encoding.json.Json.ValText>;
};
class T__struct_23_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_23>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_23_asInterface) class T__struct_23_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_23_static_extension) typedef T__struct_23 = {
    public var _label : stdgo.GoString;
    public var _makeInput : () -> stdgo.StdGoTypes.AnyInterface;
    public var _want : stdgo.GoString;
};
class T__struct_24_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_24>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_24_asInterface) class T__struct_24_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_24_static_extension) typedef T__struct_24 = {
    public var m : stdgo.GoString;
};
class T__struct_25_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_25>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_25_asInterface) class T__struct_25_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_25_static_extension) typedef T__struct_25 = {
    public var m : stdgo.encoding.json.Json.Marshaler;
};
class T__struct_26_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_26>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_26_asInterface) class T__struct_26_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_26_static_extension) typedef T__struct_26 = {
    public var m : stdgo.StdGoTypes.AnyInterface;
};
class T__struct_27_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_27>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_27_asInterface) class T__struct_27_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_27_static_extension) typedef T__struct_27 = {
    public var m : stdgo.encoding.Encoding.TextMarshaler;
};
class T__struct_28_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_28>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_28_asInterface) class T__struct_28_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_28_static_extension) typedef T__struct_28 = {
    public var _data : stdgo.StdGoTypes.AnyInterface;
    public var _want : stdgo.GoString;
};
class T__struct_29_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_29>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_29_asInterface) class T__struct_29_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_29_static_extension) typedef T__struct_29 = {
    public var _in : stdgo.StdGoTypes.AnyInterface;
    public var _want : stdgo.GoString;
    public var _ok : Bool;
};
class T__struct_30_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_30>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_30_asInterface) class T__struct_30_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_30_static_extension) typedef T__struct_30 = {
    public var m : stdgo.encoding.json.Json.RawMessage;
};
class T__struct_31_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_31>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_31_asInterface) class T__struct_31_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_31_static_extension) typedef T__struct_31 = {
    public var m : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage>;
};
class T__struct_32_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_32>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_32_asInterface) class T__struct_32_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_32_static_extension) typedef T__struct_32 = {
    public var x : stdgo.encoding.json.Json.RawMessage;
};
class T__struct_33_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_33>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_33_asInterface) class T__struct_33_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_33_static_extension) typedef T__struct_33 = {
    public var x : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage>;
};
class T__struct_34_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_34>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_34_asInterface) class T__struct_34_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_34_static_extension) typedef T__struct_34 = {
    public var a0 : stdgo.StdGoTypes.GoInt;
    public var __192 : stdgo.StdGoTypes.GoInt;
    public var a946 : stdgo.StdGoTypes.GoInt;
};
class T__struct_35_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_35>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_35_asInterface) class T__struct_35_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_35_static_extension) typedef T__struct_35 = {
    public var _err : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.MarshalerError>;
    public var _want : stdgo.GoString;
};
class T__struct_36_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_36>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_36_asInterface) class T__struct_36_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_36_static_extension) typedef T__struct_36 = {
    public var _data : stdgo.GoString;
    public var _ok : Bool;
};
class T__struct_37_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_37>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_37_asInterface) class T__struct_37_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_37_static_extension) typedef T__struct_37 = {
    public var _in : stdgo.GoString;
    public var _compact : stdgo.GoString;
};
class T__struct_38_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_38>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_38_asInterface) class T__struct_38_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_38_static_extension) typedef T__struct_38 = {
    @:tag("`json:\"<>&#! \"`")
    public var valid : stdgo.StdGoTypes.GoInt;
    @:tag("`json:\"\\\\\"`")
    public var invalid : stdgo.StdGoTypes.GoInt;
};
class T__struct_39_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_39>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_39_asInterface) class T__struct_39_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_39_static_extension) typedef T__struct_39 = {
    public var nonPtr : stdgo.encoding.json.Json.T_strMarshaler;
    public var ptr : stdgo.encoding.json.Json.T_strPtrMarshaler;
};
class T__struct_40_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_40>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_40_asInterface) class T__struct_40_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_40_static_extension) typedef T__struct_40 = {
    public var _name : stdgo.GoString;
    public var _v : stdgo.StdGoTypes.AnyInterface;
    public var _wantEscape : stdgo.GoString;
    public var _want : stdgo.GoString;
};
class T__struct_41_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_41>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_41_asInterface) class T__struct_41_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_41_static_extension) typedef T__struct_41 = {
    public var name : stdgo.GoString;
};
class T__struct_42_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_42>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_42_asInterface) class T__struct_42_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_42_static_extension) typedef T__struct_42 = {
    public var x : stdgo.StdGoTypes.GoFloat64;
    public var id : stdgo.encoding.json.Json.RawMessage;
    public var y : stdgo.StdGoTypes.GoFloat32;
};
class T__struct_43_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_43>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_43_asInterface) class T__struct_43_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_43_static_extension) typedef T__struct_43 = {
    public var x : stdgo.StdGoTypes.GoFloat64;
    public var id : stdgo.encoding.json.Json.RawMessage;
    public var idPtr : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage>;
    public var y : stdgo.StdGoTypes.GoFloat32;
};
class T__struct_44_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_44>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_44_asInterface) class T__struct_44_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_44_static_extension) typedef T__struct_44 = {
    public var foo : stdgo.GoString;
};
class T__struct_45_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_45>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_45_asInterface) class T__struct_45_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_45_static_extension) typedef T__struct_45 = {
    public var _raw : stdgo.StdGoTypes.AnyInterface;
    public var _value : stdgo.GoString;
    public var _key : stdgo.GoString;
};
class T__struct_46_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_46>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T__struct_46_asInterface) class T__struct_46_static_extension {

}
@:local @:using(stdgo.encoding.json.Json.T__struct_46_static_extension) typedef T__struct_46 = {
    public var _opt : stdgo.GoString;
    public var _want : Bool;
};
/**
    // A Number represents a JSON number literal.
**/
@:named @:using(stdgo.encoding.json.Json.Number_static_extension) typedef Number = stdgo.GoString;
@:named @:using(stdgo.encoding.json.Json.SS_static_extension) typedef SS = stdgo.GoString;
@:named typedef T_u8 = stdgo.StdGoTypes.GoUInt8;
/**
    // u8marshal is an integer type that can marshal/unmarshal itself.
**/
@:named @:using(stdgo.encoding.json.Json.T_u8marshal_static_extension) typedef T_u8marshal = stdgo.StdGoTypes.GoUInt8;
@:named typedef Embed0b = stdgo.encoding.json.Json.Embed0;
@:named typedef Embed0c = stdgo.encoding.json.Json.Embed0;
@:named typedef S7 = stdgo.encoding.json.Json.S6;
@:named @:using(stdgo.encoding.json.Json.T_byteWithMarshalJSON_static_extension) typedef T_byteWithMarshalJSON = stdgo.StdGoTypes.GoUInt8;
@:named @:using(stdgo.encoding.json.Json.T_byteWithPtrMarshalJSON_static_extension) typedef T_byteWithPtrMarshalJSON = stdgo.StdGoTypes.GoUInt8;
@:named @:using(stdgo.encoding.json.Json.T_byteWithMarshalText_static_extension) typedef T_byteWithMarshalText = stdgo.StdGoTypes.GoUInt8;
@:named @:using(stdgo.encoding.json.Json.T_byteWithPtrMarshalText_static_extension) typedef T_byteWithPtrMarshalText = stdgo.StdGoTypes.GoUInt8;
@:named @:using(stdgo.encoding.json.Json.T_intWithMarshalJSON_static_extension) typedef T_intWithMarshalJSON = stdgo.StdGoTypes.GoInt;
@:named @:using(stdgo.encoding.json.Json.T_intWithPtrMarshalJSON_static_extension) typedef T_intWithPtrMarshalJSON = stdgo.StdGoTypes.GoInt;
@:named @:using(stdgo.encoding.json.Json.T_intWithMarshalText_static_extension) typedef T_intWithMarshalText = stdgo.StdGoTypes.GoInt;
@:named @:using(stdgo.encoding.json.Json.T_intWithPtrMarshalText_static_extension) typedef T_intWithPtrMarshalText = stdgo.StdGoTypes.GoInt;
/**
    // Time3339 is a time.Time which encodes to and from JSON
    // as an RFC 3339 time in UTC.
**/
@:named @:using(stdgo.encoding.json.Json.Time3339_static_extension) typedef Time3339 = stdgo.time.Time.Time;
@:named @:using(stdgo.encoding.json.Json.T_textUnmarshalerString_static_extension) typedef T_textUnmarshalerString = stdgo.GoString;
@:named typedef T_encoderFunc = (stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_encodeState>, stdgo.reflect.Reflect.Value, stdgo.encoding.json.Json.T_encOpts) -> Void;
@:named @:using(stdgo.encoding.json.Json.T_floatEncoder_static_extension) typedef T_floatEncoder = stdgo.StdGoTypes.GoInt;
/**
    // byIndex sorts field by index sequence.
**/
@:named @:using(stdgo.encoding.json.Json.T_byIndex_static_extension) typedef T_byIndex = stdgo.Slice<stdgo.encoding.json.Json.T_field>;
/**
    // byte slices are special even if they're renamed types.
**/
@:named typedef T_renamedByte = stdgo.StdGoTypes.GoUInt8;
@:named typedef T_renamedByteSlice = stdgo.Slice<stdgo.StdGoTypes.GoUInt8>;
@:named typedef T_renamedRenamedByteSlice = stdgo.Slice<stdgo.encoding.json.Json.T_renamedByte>;
@:named typedef RecursiveSlice = stdgo.Slice<stdgo.encoding.json.Json.RecursiveSlice>;
/**
    // Ref has Marshaler and Unmarshaler methods with pointer receiver.
**/
@:named @:using(stdgo.encoding.json.Json.Ref_static_extension) typedef Ref = stdgo.StdGoTypes.GoInt;
/**
    // Val has Marshaler methods with value receiver.
**/
@:named @:using(stdgo.encoding.json.Json.Val_static_extension) typedef Val = stdgo.StdGoTypes.GoInt;
/**
    // RefText has Marshaler and Unmarshaler methods with pointer receiver.
**/
@:named @:using(stdgo.encoding.json.Json.RefText_static_extension) typedef RefText = stdgo.StdGoTypes.GoInt;
/**
    // ValText has Marshaler methods with value receiver.
**/
@:named @:using(stdgo.encoding.json.Json.ValText_static_extension) typedef ValText = stdgo.StdGoTypes.GoInt;
/**
    // C implements Marshaler and returns unescaped JSON.
**/
@:named @:using(stdgo.encoding.json.Json.C_static_extension) typedef C = stdgo.StdGoTypes.GoInt;
/**
    // CText implements Marshaler and returns unescaped text.
**/
@:named @:using(stdgo.encoding.json.Json.CText_static_extension) typedef CText = stdgo.StdGoTypes.GoInt;
/**
    // golang.org/issue/16042.
    // Even if a nil interface value is passed in, as long as
    // it implements Marshaler, it should be marshaled.
**/
@:named @:using(stdgo.encoding.json.Json.T_nilJSONMarshaler_static_extension) typedef T_nilJSONMarshaler = stdgo.GoString;
/**
    // golang.org/issue/34235.
    // Even if a nil interface value is passed in, as long as
    // it implements encoding.TextMarshaler, it should be marshaled.
**/
@:named @:using(stdgo.encoding.json.Json.T_nilTextMarshaler_static_extension) typedef T_nilTextMarshaler = stdgo.GoString;
@:named @:using(stdgo.encoding.json.Json.T_jsonbyte_static_extension) typedef T_jsonbyte = stdgo.StdGoTypes.GoUInt8;
@:named @:using(stdgo.encoding.json.Json.T_textbyte_static_extension) typedef T_textbyte = stdgo.StdGoTypes.GoUInt8;
@:named @:using(stdgo.encoding.json.Json.T_jsonint_static_extension) typedef T_jsonint = stdgo.StdGoTypes.GoInt;
@:named @:using(stdgo.encoding.json.Json.T_textint_static_extension) typedef T_textint = stdgo.StdGoTypes.GoInt;
@:named @:using(stdgo.encoding.json.Json.T_textfloat_static_extension) typedef T_textfloat = stdgo.StdGoTypes.GoFloat64;
/**
    // RawMessage is a raw encoded JSON value.
    // It implements Marshaler and Unmarshaler and can
    // be used to delay JSON decoding or precompute a JSON encoding.
**/
@:named @:using(stdgo.encoding.json.Json.RawMessage_static_extension) typedef RawMessage = stdgo.Slice<stdgo.StdGoTypes.GoUInt8>;
/**
    // A Token holds a value of one of these types:
    //
    //	Delim, for the four JSON delimiters [ ] { }
    //	bool, for JSON booleans
    //	float64, for JSON numbers
    //	Number, for JSON numbers
    //	string, for JSON string literals
    //	nil, for JSON null
**/
@:follow typedef Token = stdgo.StdGoTypes.AnyInterface;
/**
    // A Delim is a JSON array or object delimiter, one of [ ] { or }.
**/
@:named @:using(stdgo.encoding.json.Json.Delim_static_extension) typedef Delim = stdgo.StdGoTypes.GoInt32;
@:named @:using(stdgo.encoding.json.Json.T_strMarshaler_static_extension) typedef T_strMarshaler = stdgo.GoString;
@:named @:using(stdgo.encoding.json.Json.T_strPtrMarshaler_static_extension) typedef T_strPtrMarshaler = stdgo.GoString;
/**
    // tagOptions is the string following a comma in a struct field's "json"
    // tag, or the empty string. It does not include the leading comma.
**/
@:named @:using(stdgo.encoding.json.Json.T_tagOptions_static_extension) typedef T_tagOptions = stdgo.GoString;
function _codeInit():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo.os.Os.open(("testdata/code.json.gz" : stdgo.GoString)), _f:stdgo.StdGoTypes.Ref<stdgo.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                throw stdgo.Go.toInterface(_err);
            };
            __deferstack__.unshift(() -> _f.close());
            var __tmp__ = stdgo.compress.gzip.Gzip.newReader(stdgo.Go.asInterface(_f)), _gz:stdgo.StdGoTypes.Ref<stdgo.compress.gzip.Gzip.Reader> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                throw stdgo.Go.toInterface(_err);
            };
            var __tmp__ = stdgo.io.Io.readAll(stdgo.Go.asInterface(_gz)), _data:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                throw stdgo.Go.toInterface(_err);
            };
            _codeJSON = _data;
            {
                var _err:stdgo.Error = unmarshal(_codeJSON, stdgo.Go.toInterface((stdgo.Go.setRef(_codeStruct) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_codeResponse>)));
                if (_err != null) {
                    throw stdgo.Go.toInterface(("unmarshal code.json: " : stdgo.GoString) + _err.error()?.__copy__());
                };
            };
            {
                {
                    var __tmp__ = marshal(stdgo.Go.toInterface((stdgo.Go.setRef(_codeStruct) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_codeResponse>)));
                    _data = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    throw stdgo.Go.toInterface(("marshal code.json: " : stdgo.GoString) + _err.error()?.__copy__());
                };
            };
            if (!stdgo.bytes.Bytes.equal(_data, _codeJSON)) {
                stdgo.Go.println(("different lengths" : stdgo.GoString), (_data.length), (_codeJSON.length));
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor((_i < _data.length) && (_i < _codeJSON.length), _i++, {
                        if (_data[(_i : stdgo.StdGoTypes.GoInt)] != (_codeJSON[(_i : stdgo.StdGoTypes.GoInt)])) {
                            stdgo.Go.println(("re-marshal: changed at byte" : stdgo.GoString), _i);
                            stdgo.Go.println(("orig: " : stdgo.GoString), ((_codeJSON.__slice__(_i - (10 : stdgo.StdGoTypes.GoInt), _i + (10 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : stdgo.GoString));
                            stdgo.Go.println(("new: " : stdgo.GoString), ((_data.__slice__(_i - (10 : stdgo.StdGoTypes.GoInt), _i + (10 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : stdgo.GoString));
                            break;
                        };
                    });
                };
                throw stdgo.Go.toInterface(("re-marshal code.json: different result" : stdgo.GoString));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
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
            return;
        };
    }
function benchmarkCodeEncoder(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.reportAllocs();
        if (_codeJSON == null) {
            _b.stopTimer();
            _codeInit();
            _b.startTimer();
        };
        _b.runParallel(function(_pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>):Void {
            var _enc = newEncoder(stdgo.io.Io.discard);
            while (_pb.next()) {
                {
                    var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface((stdgo.Go.setRef(_codeStruct) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_codeResponse>)));
                    if (_err != null) {
                        _b.fatal(stdgo.Go.toInterface(("Encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
        _b.setBytes((_codeJSON.length : stdgo.StdGoTypes.GoInt64));
    }
/**
    // Trigger an error in Marshal with cyclic data.
    
    
**/
@:structInit class T_benchmarkCodeEncoderError_81___localname___Dummy {
    public var name : stdgo.GoString = "";
    public var next : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_benchmarkCodeEncoderError_81___localname___Dummy> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_benchmarkCodeEncoderError_81___localname___Dummy>);
    public function new(?name:stdgo.GoString, ?next:stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_benchmarkCodeEncoderError_81___localname___Dummy>) {
        if (name != null) this.name = name;
        if (next != null) this.next = next;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_benchmarkCodeEncoderError_81___localname___Dummy(name, next);
    }
}
function benchmarkCodeEncoderError(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.reportAllocs();
        if (_codeJSON == null) {
            _b.stopTimer();
            _codeInit();
            _b.startTimer();
        };
        {};
        var _dummy:stdgo.encoding.json.Json.T_benchmarkCodeEncoderError_81___localname___Dummy = ({ name : ("Dummy" : stdgo.GoString) } : stdgo.encoding.json.Json.T_benchmarkCodeEncoderError_81___localname___Dummy);
        _dummy.next = (stdgo.Go.setRef(_dummy) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_benchmarkCodeEncoderError_81___localname___Dummy>);
        _b.runParallel(function(_pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>):Void {
            var _enc = newEncoder(stdgo.io.Io.discard);
            while (_pb.next()) {
                {
                    var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface((stdgo.Go.setRef(_codeStruct) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_codeResponse>)));
                    if (_err != null) {
                        _b.fatal(stdgo.Go.toInterface(("Encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
                {
                    var __tmp__ = marshal(stdgo.Go.toInterface(_dummy)), __48:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        _b.fatal(stdgo.Go.toInterface(("expect an error here" : stdgo.GoString)));
                    };
                };
            };
        });
        _b.setBytes((_codeJSON.length : stdgo.StdGoTypes.GoInt64));
    }
function benchmarkCodeMarshal(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.reportAllocs();
        if (_codeJSON == null) {
            _b.stopTimer();
            _codeInit();
            _b.startTimer();
        };
        _b.runParallel(function(_pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>):Void {
            while (_pb.next()) {
                {
                    var __tmp__ = marshal(stdgo.Go.toInterface((stdgo.Go.setRef(_codeStruct) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_codeResponse>))), __40:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _b.fatal(stdgo.Go.toInterface(("Marshal:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
        _b.setBytes((_codeJSON.length : stdgo.StdGoTypes.GoInt64));
    }
/**
    // Trigger an error in Marshal with cyclic data.
    
    
**/
@:structInit class T_benchmarkCodeMarshalError_82___localname___Dummy {
    public var name : stdgo.GoString = "";
    public var next : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_benchmarkCodeMarshalError_82___localname___Dummy> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_benchmarkCodeMarshalError_82___localname___Dummy>);
    public function new(?name:stdgo.GoString, ?next:stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_benchmarkCodeMarshalError_82___localname___Dummy>) {
        if (name != null) this.name = name;
        if (next != null) this.next = next;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_benchmarkCodeMarshalError_82___localname___Dummy(name, next);
    }
}
function benchmarkCodeMarshalError(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.reportAllocs();
        if (_codeJSON == null) {
            _b.stopTimer();
            _codeInit();
            _b.startTimer();
        };
        {};
        var _dummy:stdgo.encoding.json.Json.T_benchmarkCodeMarshalError_82___localname___Dummy = ({ name : ("Dummy" : stdgo.GoString) } : stdgo.encoding.json.Json.T_benchmarkCodeMarshalError_82___localname___Dummy);
        _dummy.next = (stdgo.Go.setRef(_dummy) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_benchmarkCodeMarshalError_82___localname___Dummy>);
        _b.runParallel(function(_pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>):Void {
            while (_pb.next()) {
                {
                    var __tmp__ = marshal(stdgo.Go.toInterface((stdgo.Go.setRef(_codeStruct) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_codeResponse>))), __40:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _b.fatal(stdgo.Go.toInterface(("Marshal:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
                {
                    var __tmp__ = marshal(stdgo.Go.toInterface(_dummy)), __49:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        _b.fatal(stdgo.Go.toInterface(("expect an error here" : stdgo.GoString)));
                    };
                };
            };
        });
        _b.setBytes((_codeJSON.length : stdgo.StdGoTypes.GoInt64));
    }
function _benchMarshalBytes(_n:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B> -> Void {
        var _sample = (("hello world" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        var _v = (stdgo.Go.setRef(({ bytes : (stdgo.bytes.Bytes.repeat(_sample, (_n / _sample.length) + (1 : stdgo.StdGoTypes.GoInt)).__slice__(0, _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) } : T__struct_0)) : stdgo.StdGoTypes.Ref<T__struct_0>);
        return function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _b.n, _i++, {
                    {
                        var __tmp__ = marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_v))), __16:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            _b.fatal(stdgo.Go.toInterface(("Marshal:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                        };
                    };
                });
            };
        };
    }
/**
    // Trigger an error in Marshal with cyclic data.
    
    
**/
@:structInit class T__benchMarshalBytesError_83___localname___Dummy {
    public var name : stdgo.GoString = "";
    public var next : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T__benchMarshalBytesError_83___localname___Dummy> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T__benchMarshalBytesError_83___localname___Dummy>);
    public function new(?name:stdgo.GoString, ?next:stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T__benchMarshalBytesError_83___localname___Dummy>) {
        if (name != null) this.name = name;
        if (next != null) this.next = next;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T__benchMarshalBytesError_83___localname___Dummy(name, next);
    }
}
function _benchMarshalBytesError(_n:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B> -> Void {
        var _sample = (("hello world" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        var _v = (stdgo.Go.setRef(({ bytes : (stdgo.bytes.Bytes.repeat(_sample, (_n / _sample.length) + (1 : stdgo.StdGoTypes.GoInt)).__slice__(0, _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) } : T__struct_0)) : stdgo.StdGoTypes.Ref<T__struct_0>);
        {};
        var _dummy:stdgo.encoding.json.Json.T__benchMarshalBytesError_83___localname___Dummy = ({ name : ("Dummy" : stdgo.GoString) } : stdgo.encoding.json.Json.T__benchMarshalBytesError_83___localname___Dummy);
        _dummy.next = (stdgo.Go.setRef(_dummy) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T__benchMarshalBytesError_83___localname___Dummy>);
        return function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _b.n, _i++, {
                    {
                        var __tmp__ = marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_v))), __16:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            _b.fatal(stdgo.Go.toInterface(("Marshal:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                        };
                    };
                    {
                        var __tmp__ = marshal(stdgo.Go.toInterface(_dummy)), __25:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err == null) {
                            _b.fatal(stdgo.Go.toInterface(("expect an error here" : stdgo.GoString)));
                        };
                    };
                });
            };
        };
    }
function benchmarkMarshalBytes(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.reportAllocs();
        _b.run(("32" : stdgo.GoString), _benchMarshalBytes((32 : stdgo.StdGoTypes.GoInt)));
        _b.run(("256" : stdgo.GoString), _benchMarshalBytes((256 : stdgo.StdGoTypes.GoInt)));
        _b.run(("4096" : stdgo.GoString), _benchMarshalBytes((4096 : stdgo.StdGoTypes.GoInt)));
    }
function benchmarkMarshalBytesError(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.reportAllocs();
        _b.run(("32" : stdgo.GoString), _benchMarshalBytesError((32 : stdgo.StdGoTypes.GoInt)));
        _b.run(("256" : stdgo.GoString), _benchMarshalBytesError((256 : stdgo.StdGoTypes.GoInt)));
        _b.run(("4096" : stdgo.GoString), _benchMarshalBytesError((4096 : stdgo.StdGoTypes.GoInt)));
    }
function benchmarkCodeDecoder(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.reportAllocs();
        if (_codeJSON == null) {
            _b.stopTimer();
            _codeInit();
            _b.startTimer();
        };
        _b.runParallel(function(_pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>):Void {
            var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
            var _dec = newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
            var _r:T_codeResponse = ({} : stdgo.encoding.json.Json.T_codeResponse);
            while (_pb.next()) {
                _buf.write(_codeJSON);
                _buf.writeByte((10 : stdgo.StdGoTypes.GoUInt8));
                _buf.writeByte((10 : stdgo.StdGoTypes.GoUInt8));
                _buf.writeByte((10 : stdgo.StdGoTypes.GoUInt8));
                {
                    var _err:stdgo.Error = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_r) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_codeResponse>)));
                    if (_err != null) {
                        _b.fatal(stdgo.Go.toInterface(("Decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
        _b.setBytes((_codeJSON.length : stdgo.StdGoTypes.GoInt64));
    }
function benchmarkUnicodeDecoder(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.reportAllocs();
        var _j = (("\"\\uD83D\\uDE01\"" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        _b.setBytes((_j.length : stdgo.StdGoTypes.GoInt64));
        var _r = stdgo.bytes.Bytes.newReader(_j);
        var _dec = newDecoder(stdgo.Go.asInterface(_r));
        var _out:stdgo.GoString = ("" : stdgo.GoString);
        _b.resetTimer();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                {
                    var _err:stdgo.Error = _dec.decode(stdgo.Go.toInterface(stdgo.Go.pointer(_out)));
                    if (_err != null) {
                        _b.fatal(stdgo.Go.toInterface(("Decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
                _r.seek((0i64 : stdgo.StdGoTypes.GoInt64), (0 : stdgo.StdGoTypes.GoInt));
            });
        };
    }
function benchmarkDecoderStream(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.reportAllocs();
        _b.stopTimer();
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        var _dec = newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
        _buf.writeString(("\"" : stdgo.GoString) + stdgo.strings.Strings.repeat(("x" : stdgo.GoString), (1000000 : stdgo.StdGoTypes.GoInt))?.__copy__() + ("\"" : stdgo.GoString)?.__copy__() + ("\n\n\n" : stdgo.GoString)?.__copy__()?.__copy__());
        var _x:stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
        {
            var _err:stdgo.Error = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_x) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>)));
            if (_err != null) {
                _b.fatal(stdgo.Go.toInterface(("Decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        var _ones:stdgo.GoString = stdgo.strings.Strings.repeat((" 1\n" : stdgo.GoString), (300000 : stdgo.StdGoTypes.GoInt)) + ("\n\n\n" : stdgo.GoString)?.__copy__()?.__copy__();
        _b.startTimer();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                if (_i % (300000 : stdgo.StdGoTypes.GoInt) == ((0 : stdgo.StdGoTypes.GoInt))) {
                    _buf.writeString(_ones?.__copy__());
                };
                _x = (null : stdgo.StdGoTypes.AnyInterface);
                {
                    var _err:stdgo.Error = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_x) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>)));
                    if ((_err != null) || (_x != stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoFloat64)))) {
                        _b.fatalf(("Decode: %v after %d" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_i));
                    };
                };
            });
        };
    }
function benchmarkCodeUnmarshal(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.reportAllocs();
        if (_codeJSON == null) {
            _b.stopTimer();
            _codeInit();
            _b.startTimer();
        };
        _b.runParallel(function(_pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>):Void {
            while (_pb.next()) {
                var _r:T_codeResponse = ({} : stdgo.encoding.json.Json.T_codeResponse);
                {
                    var _err:stdgo.Error = unmarshal(_codeJSON, stdgo.Go.toInterface((stdgo.Go.setRef(_r) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_codeResponse>)));
                    if (_err != null) {
                        _b.fatal(stdgo.Go.toInterface(("Unmarshal:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
        _b.setBytes((_codeJSON.length : stdgo.StdGoTypes.GoInt64));
    }
function benchmarkCodeUnmarshalReuse(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.reportAllocs();
        if (_codeJSON == null) {
            _b.stopTimer();
            _codeInit();
            _b.startTimer();
        };
        _b.runParallel(function(_pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>):Void {
            var _r:T_codeResponse = ({} : stdgo.encoding.json.Json.T_codeResponse);
            while (_pb.next()) {
                {
                    var _err:stdgo.Error = unmarshal(_codeJSON, stdgo.Go.toInterface((stdgo.Go.setRef(_r) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_codeResponse>)));
                    if (_err != null) {
                        _b.fatal(stdgo.Go.toInterface(("Unmarshal:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
        _b.setBytes((_codeJSON.length : stdgo.StdGoTypes.GoInt64));
    }
function benchmarkUnmarshalString(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.reportAllocs();
        var _data = (("\"hello, world\"" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        _b.runParallel(function(_pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>):Void {
            var _s:stdgo.GoString = ("" : stdgo.GoString);
            while (_pb.next()) {
                {
                    var _err:stdgo.Error = unmarshal(_data, stdgo.Go.toInterface(stdgo.Go.pointer(_s)));
                    if (_err != null) {
                        _b.fatal(stdgo.Go.toInterface(("Unmarshal:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
    }
function benchmarkUnmarshalFloat64(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.reportAllocs();
        var _data = (("3.14" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        _b.runParallel(function(_pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>):Void {
            var _f:stdgo.StdGoTypes.GoFloat64 = (0 : stdgo.StdGoTypes.GoFloat64);
            while (_pb.next()) {
                {
                    var _err:stdgo.Error = unmarshal(_data, stdgo.Go.toInterface(stdgo.Go.pointer(_f)));
                    if (_err != null) {
                        _b.fatal(stdgo.Go.toInterface(("Unmarshal:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
    }
function benchmarkUnmarshalInt64(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.reportAllocs();
        var _data = (("3" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        _b.runParallel(function(_pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>):Void {
            var _x:stdgo.StdGoTypes.GoInt64 = (0 : stdgo.StdGoTypes.GoInt64);
            while (_pb.next()) {
                {
                    var _err:stdgo.Error = unmarshal(_data, stdgo.Go.toInterface(stdgo.Go.pointer(_x)));
                    if (_err != null) {
                        _b.fatal(stdgo.Go.toInterface(("Unmarshal:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
    }
function benchmarkIssue10335(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.reportAllocs();
        var _j = (("{\"a\":{ }}" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        _b.runParallel(function(_pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>):Void {
            var _s:T__struct_1 = ({} : T_unquotedValue);
            while (_pb.next()) {
                {
                    var _err:stdgo.Error = unmarshal(_j, stdgo.Go.toInterface((stdgo.Go.setRef(_s) : stdgo.StdGoTypes.Ref<T_unquotedValue>)));
                    if (_err != null) {
                        _b.fatal(stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
    }
function benchmarkIssue34127(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.reportAllocs();
        var _j:T__struct_2 = ({ bar : ("foobar" : stdgo.GoString) } : T__struct_2);
        _b.runParallel(function(_pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>):Void {
            while (_pb.next()) {
                {
                    var __tmp__ = marshal(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_j) : stdgo.StdGoTypes.Ref<T__struct_2>)))), __24:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _b.fatal(stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
    }
function benchmarkUnmapped(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.reportAllocs();
        var _j = (("{\"s\": \"hello\", \"y\": 2, \"o\": {\"x\": 0}, \"a\": [1, 99, {\"x\": 1}]}" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        _b.runParallel(function(_pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>):Void {
            var _s:T__struct_1 = ({} : T_unquotedValue);
            while (_pb.next()) {
                {
                    var _err:stdgo.Error = unmarshal(_j, stdgo.Go.toInterface((stdgo.Go.setRef(_s) : stdgo.StdGoTypes.Ref<T_unquotedValue>)));
                    if (_err != null) {
                        _b.fatal(stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
    }
function benchmarkTypeFieldsCache(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.reportAllocs();
        var _maxTypes:stdgo.StdGoTypes.GoInt = (1000000 : stdgo.StdGoTypes.GoInt);
        if (stdgo.internal.testenv.Testenv.builder() != (stdgo.Go.str())) {
            _maxTypes = (1000 : stdgo.StdGoTypes.GoInt);
        };
        var _types = new stdgo.Slice<stdgo.reflect.Reflect.Type_>((_maxTypes : stdgo.StdGoTypes.GoInt).toBasic(), 0);
        var _fs = (new stdgo.Slice<stdgo.reflect.Reflect.StructField>(1, 1, ({ type : stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(stdgo.Go.str())), index : (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(1, 1, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>) } : stdgo.reflect.Reflect.StructField)) : stdgo.Slice<stdgo.reflect.Reflect.StructField>);
        for (_i in 0 ... _types.length.toBasic()) {
            _fs[(0 : stdgo.StdGoTypes.GoInt)].name = stdgo.fmt.Fmt.sprintf(("TypeFieldsCache%d" : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__();
            _types[(_i : stdgo.StdGoTypes.GoInt)] = stdgo.reflect.Reflect.structOf(_fs);
        };
        var _clearCache:() -> Void = function():Void {
            _fieldCache = (new stdgo.sync.Sync.Map_() : stdgo.sync.Sync.Map_);
        };
        {
            var _nt:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_nt <= _maxTypes, _nt = _nt * ((10 : stdgo.StdGoTypes.GoInt)), {
                var _ts = (_types.__slice__(0, _nt) : stdgo.Slice<stdgo.reflect.Reflect.Type_>);
                _b.run(stdgo.fmt.Fmt.sprintf(("MissTypes%d" : stdgo.GoString), stdgo.Go.toInterface(_nt))?.__copy__(), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                    var _nc:stdgo.StdGoTypes.GoInt = stdgo.runtime.Runtime.gomaxprocs((0 : stdgo.StdGoTypes.GoInt));
                    {
                        var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                        stdgo.Go.cfor(_i < _b.n, _i++, {
                            _clearCache();
                            var _wg:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
                            {
                                var _j:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                                stdgo.Go.cfor(_j < _nc, _j++, {
                                    _wg.add((1 : stdgo.StdGoTypes.GoInt));
                                    stdgo.Go.routine(() -> {
                                        var a = function(_j:stdgo.StdGoTypes.GoInt):Void {
                                            for (__36 => _t in (_ts.__slice__((_j * _ts.length) / _nc, ((_j + (1 : stdgo.StdGoTypes.GoInt)) * _ts.length) / _nc) : stdgo.Slice<stdgo.reflect.Reflect.Type_>)) {
                                                _cachedTypeFields(_t);
                                            };
                                            _wg.done();
                                        };
                                        a(_j);
                                    });
                                });
                            };
                            _wg.wait_();
                        });
                    };
                });
            });
        };
        {
            var _nt:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_nt <= _maxTypes, _nt = _nt * ((10 : stdgo.StdGoTypes.GoInt)), {
                _clearCache();
                for (__24 => _t in (_types.__slice__(0, _nt) : stdgo.Slice<stdgo.reflect.Reflect.Type_>)) {
                    _cachedTypeFields(_t);
                };
                _b.run(stdgo.fmt.Fmt.sprintf(("HitTypes%d" : stdgo.GoString), stdgo.Go.toInterface(_nt))?.__copy__(), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                    _b.runParallel(function(_pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>):Void {
                        while (_pb.next()) {
                            _cachedTypeFields(_types[(0 : stdgo.StdGoTypes.GoInt)]);
                        };
                    });
                });
            });
        };
    }
function benchmarkEncodeMarshaler(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.reportAllocs();
        var _m:T__struct_3 = ({ a : (0 : stdgo.StdGoTypes.GoInt), b : new stdgo.encoding.json.Json.RawMessage(0, 0) } : T__struct_3);
        _b.runParallel(function(_pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>):Void {
            var _enc = newEncoder(stdgo.io.Io.discard);
            while (_pb.next()) {
                {
                    var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_m) : stdgo.StdGoTypes.Ref<T__struct_3>))));
                    if (_err != null) {
                        _b.fatal(stdgo.Go.toInterface(("Encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
    }
/**
    
    
    
**/
@:structInit class T_benchmarkEncoderEncode_84___localname___T {
    public var x : stdgo.GoString = "";
    public var y : stdgo.GoString = "";
    public function new(?x:stdgo.GoString, ?y:stdgo.GoString) {
        if (x != null) this.x = x;
        if (y != null) this.y = y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_benchmarkEncoderEncode_84___localname___T(x, y);
    }
}
function benchmarkEncoderEncode(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.reportAllocs();
        {};
        var _v = (stdgo.Go.setRef((new stdgo.encoding.json.Json.T_benchmarkEncoderEncode_84___localname___T(("foo" : stdgo.GoString), ("bar" : stdgo.GoString)) : stdgo.encoding.json.Json.T_benchmarkEncoderEncode_84___localname___T)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_benchmarkEncoderEncode_84___localname___T>);
        _b.runParallel(function(_pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>):Void {
            while (_pb.next()) {
                {
                    var _err:stdgo.Error = newEncoder(stdgo.io.Io.discard).encode(stdgo.Go.toInterface(_v));
                    if (_err != null) {
                        _b.fatal(stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
    }
function benchmarkNumberIsValid(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _s:stdgo.GoString = ("-61657.61667E+61673" : stdgo.GoString);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _isValidNumber(_s?.__copy__());
            });
        };
    }
function benchmarkNumberIsValidRegexp(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _jsonNumberRegexp:stdgo.StdGoTypes.Ref<stdgo.regexp.Regexp.Regexp> = stdgo.regexp.Regexp.mustCompile(("^-?(?:0|[1-9]\\d*)(?:\\.\\d+)?(?:[eE][+-]?\\d+)?$" : stdgo.GoString));
        var _s:stdgo.GoString = ("-61657.61667E+61673" : stdgo.GoString);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _jsonNumberRegexp.matchString(_s?.__copy__());
            });
        };
    }
/**
    // Unmarshal parses the JSON-encoded data and stores the result
    // in the value pointed to by v. If v is nil or not a pointer,
    // Unmarshal returns an InvalidUnmarshalError.
    //
    // Unmarshal uses the inverse of the encodings that
    // Marshal uses, allocating maps, slices, and pointers as necessary,
    // with the following additional rules:
    //
    // To unmarshal JSON into a pointer, Unmarshal first handles the case of
    // the JSON being the JSON literal null. In that case, Unmarshal sets
    // the pointer to nil. Otherwise, Unmarshal unmarshals the JSON into
    // the value pointed at by the pointer. If the pointer is nil, Unmarshal
    // allocates a new value for it to point to.
    //
    // To unmarshal JSON into a value implementing the Unmarshaler interface,
    // Unmarshal calls that value's UnmarshalJSON method, including
    // when the input is a JSON null.
    // Otherwise, if the value implements encoding.TextUnmarshaler
    // and the input is a JSON quoted string, Unmarshal calls that value's
    // UnmarshalText method with the unquoted form of the string.
    //
    // To unmarshal JSON into a struct, Unmarshal matches incoming object
    // keys to the keys used by Marshal (either the struct field name or its tag),
    // preferring an exact match but also accepting a case-insensitive match. By
    // default, object keys which don't have a corresponding struct field are
    // ignored (see Decoder.DisallowUnknownFields for an alternative).
    //
    // To unmarshal JSON into an interface value,
    // Unmarshal stores one of these in the interface value:
    //
    //	bool, for JSON booleans
    //	float64, for JSON numbers
    //	string, for JSON strings
    //	[]interface{}, for JSON arrays
    //	map[string]interface{}, for JSON objects
    //	nil for JSON null
    //
    // To unmarshal a JSON array into a slice, Unmarshal resets the slice length
    // to zero and then appends each element to the slice.
    // As a special case, to unmarshal an empty JSON array into a slice,
    // Unmarshal replaces the slice with a new empty slice.
    //
    // To unmarshal a JSON array into a Go array, Unmarshal decodes
    // JSON array elements into corresponding Go array elements.
    // If the Go array is smaller than the JSON array,
    // the additional JSON array elements are discarded.
    // If the JSON array is smaller than the Go array,
    // the additional Go array elements are set to zero values.
    //
    // To unmarshal a JSON object into a map, Unmarshal first establishes a map to
    // use. If the map is nil, Unmarshal allocates a new map. Otherwise Unmarshal
    // reuses the existing map, keeping existing entries. Unmarshal then stores
    // key-value pairs from the JSON object into the map. The map's key type must
    // either be any string type, an integer, implement json.Unmarshaler, or
    // implement encoding.TextUnmarshaler.
    //
    // If the JSON-encoded data contain a syntax error, Unmarshal returns a SyntaxError.
    //
    // If a JSON value is not appropriate for a given target type,
    // or if a JSON number overflows the target type, Unmarshal
    // skips that field and completes the unmarshaling as best it can.
    // If no more serious errors are encountered, Unmarshal returns
    // an UnmarshalTypeError describing the earliest such error. In any
    // case, it's not guaranteed that all the remaining fields following
    // the problematic one will be unmarshaled into the target object.
    //
    // The JSON null value unmarshals into an interface, map, pointer, or slice
    // by setting that Go value to nil. Because null is often used in JSON to mean
    // “not present,” unmarshaling a JSON null into any other Go type has no effect
    // on the value and produces no error.
    //
    // When unmarshaling quoted strings, invalid UTF-8 or
    // invalid UTF-16 surrogate pairs are not treated as an error.
    // Instead, they are replaced by the Unicode replacement
    // character U+FFFD.
**/
function unmarshal(_data:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _v:stdgo.StdGoTypes.AnyInterface):stdgo.Error {
        var _d:T_decodeState = ({} : stdgo.encoding.json.Json.T_decodeState);
        var _err:stdgo.Error = _checkValid(_data, (stdgo.Go.setRef(_d._scan) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_scanner>));
        if (_err != null) {
            return _err;
        };
        _d._init(_data);
        return _d._unmarshal(_v);
    }
/**
    // indirect walks down v allocating pointers as needed,
    // until it gets to a non-pointer.
    // If it encounters an Unmarshaler, indirect stops and returns that.
    // If decodingNull is true, indirect stops at the first settable pointer so it
    // can be set to nil.
**/
function _indirect(_v:stdgo.reflect.Reflect.Value, _decodingNull:Bool):{ var _0 : Unmarshaler; var _1 : stdgo.encoding.Encoding.TextUnmarshaler; var _2 : stdgo.reflect.Reflect.Value; } {
        var _v0:stdgo.reflect.Reflect.Value = _v?.__copy__();
        var _haveAddr:Bool = false;
        if (((_v.kind() != (22u32 : stdgo.reflect.Reflect.Kind)) && (_v.type().name() != stdgo.Go.str())) && _v.canAddr()) {
            _haveAddr = true;
            _v = _v.addr()?.__copy__();
        };
        while (true) {
            if ((_v.kind() == (20u32 : stdgo.reflect.Reflect.Kind)) && !_v.isNil()) {
                var _e:stdgo.reflect.Reflect.Value = _v.elem()?.__copy__();
                if (((_e.kind() == (22u32 : stdgo.reflect.Reflect.Kind)) && !_e.isNil()) && (!_decodingNull || (_e.elem().kind() == (22u32 : stdgo.reflect.Reflect.Kind)))) {
                    _haveAddr = false;
                    _v = _e?.__copy__();
                    continue;
                };
            };
            if (_v.kind() != ((22u32 : stdgo.reflect.Reflect.Kind))) {
                break;
            };
            if (_decodingNull && _v.canSet()) {
                break;
            };
            if ((_v.elem().kind() == (20u32 : stdgo.reflect.Reflect.Kind)) && (stdgo.Go.toInterface(_v.elem().elem()) == stdgo.Go.toInterface(_v))) {
                _v = _v.elem()?.__copy__();
                break;
            };
            if (_v.isNil()) {
                _v.set(stdgo.reflect.Reflect.new_(_v.type().elem())?.__copy__());
            };
            if ((_v.type().numMethod() > (0 : stdgo.StdGoTypes.GoInt)) && _v.canInterface()) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_v.interface_() : Unmarshaler)) : Unmarshaler), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.encoding.json.Json.Unmarshaler), _1 : false };
                    }, _u = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        return { _0 : _u, _1 : (null : stdgo.encoding.Encoding.TextUnmarshaler), _2 : (new stdgo.reflect.Reflect.Value() : stdgo.reflect.Reflect.Value) };
                    };
                };
                if (!_decodingNull) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((_v.interface_() : stdgo.encoding.Encoding.TextUnmarshaler)) : stdgo.encoding.Encoding.TextUnmarshaler), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.encoding.Encoding.TextUnmarshaler), _1 : false };
                        }, _u = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            return { _0 : (null : stdgo.encoding.json.Json.Unmarshaler), _1 : _u, _2 : (new stdgo.reflect.Reflect.Value() : stdgo.reflect.Reflect.Value) };
                        };
                    };
                };
            };
            if (_haveAddr) {
                _v = _v0?.__copy__();
                _haveAddr = false;
            } else {
                _v = _v.elem()?.__copy__();
            };
        };
        return { _0 : (null : stdgo.encoding.json.Json.Unmarshaler), _1 : (null : stdgo.encoding.Encoding.TextUnmarshaler), _2 : _v?.__copy__() };
    }
/**
    // getu4 decodes \uXXXX from the beginning of s, returning the hex value,
    // or it returns -1.
**/
function _getu4(_s:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.StdGoTypes.GoRune {
        if (((_s.length < (6 : stdgo.StdGoTypes.GoInt)) || (_s[(0 : stdgo.StdGoTypes.GoInt)] != (92 : stdgo.StdGoTypes.GoUInt8))) || (_s[(1 : stdgo.StdGoTypes.GoInt)] != (117 : stdgo.StdGoTypes.GoUInt8))) {
            return (-1 : stdgo.StdGoTypes.GoInt32);
        };
        var _r:stdgo.StdGoTypes.GoRune = (0 : stdgo.StdGoTypes.GoInt32);
        for (__8 => _c in (_s.__slice__((2 : stdgo.StdGoTypes.GoInt), (6 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) {
            if (((48 : stdgo.StdGoTypes.GoUInt8) <= _c) && (_c <= (57 : stdgo.StdGoTypes.GoUInt8))) {
                _c = _c - (48 : stdgo.StdGoTypes.GoUInt8);
            } else if (((97 : stdgo.StdGoTypes.GoUInt8) <= _c) && (_c <= (102 : stdgo.StdGoTypes.GoUInt8))) {
                _c = (_c - (97 : stdgo.StdGoTypes.GoUInt8)) + (10 : stdgo.StdGoTypes.GoUInt8);
            } else if (((65 : stdgo.StdGoTypes.GoUInt8) <= _c) && (_c <= (70 : stdgo.StdGoTypes.GoUInt8))) {
                _c = (_c - (65 : stdgo.StdGoTypes.GoUInt8)) + (10 : stdgo.StdGoTypes.GoUInt8);
            } else {
                return (-1 : stdgo.StdGoTypes.GoInt32);
            };
            _r = (_r * (16 : stdgo.StdGoTypes.GoInt32)) + (_c : stdgo.StdGoTypes.GoRune);
        };
        return _r;
    }
/**
    // unquote converts a quoted JSON string literal s into an actual string t.
    // The rules are different than for Go, so cannot use strconv.Unquote.
**/
function _unquote(_s:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        var _t:stdgo.GoString = ("" : stdgo.GoString), _ok:Bool = false;
        {
            var __tmp__ = _unquoteBytes(_s);
            _s = __tmp__._0;
            _ok = __tmp__._1;
        };
        _t = (_s : stdgo.GoString)?.__copy__();
        return { _0 : _t, _1 : _ok };
    }
function _unquoteBytes(_s:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : Bool; } {
        var _t:stdgo.Slice<stdgo.StdGoTypes.GoByte> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _ok:Bool = false;
        if (((_s.length < (2 : stdgo.StdGoTypes.GoInt)) || (_s[(0 : stdgo.StdGoTypes.GoInt)] != (34 : stdgo.StdGoTypes.GoUInt8))) || (_s[((_s.length) - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] != (34 : stdgo.StdGoTypes.GoUInt8))) {
            return { _0 : _t, _1 : _ok };
        };
        _s = (_s.__slice__((1 : stdgo.StdGoTypes.GoInt), (_s.length) - (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        var _r:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        while (_r < (_s.length)) {
            var _c:stdgo.StdGoTypes.GoUInt8 = _s[(_r : stdgo.StdGoTypes.GoInt)];
            if (((_c == (92 : stdgo.StdGoTypes.GoUInt8)) || (_c == (34 : stdgo.StdGoTypes.GoUInt8))) || (_c < (32 : stdgo.StdGoTypes.GoUInt8))) {
                break;
            };
            if (_c < (128 : stdgo.StdGoTypes.GoUInt8)) {
                _r++;
                continue;
            };
            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune((_s.__slice__(_r) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)), _rr:stdgo.StdGoTypes.GoInt32 = __tmp__._0, _size:stdgo.StdGoTypes.GoInt = __tmp__._1;
            if ((_rr == (65533 : stdgo.StdGoTypes.GoInt32)) && (_size == (1 : stdgo.StdGoTypes.GoInt))) {
                break;
            };
            _r = _r + (_size);
        };
        if (_r == ((_s.length))) {
            return { _0 : _s, _1 : true };
        };
        var _b = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(((_s.length) + (8 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        var _w:stdgo.StdGoTypes.GoInt = stdgo.Go.copySlice(_b, (_s.__slice__((0 : stdgo.StdGoTypes.GoInt), _r) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
        while (_r < (_s.length)) {
            if (_w >= (_b.length - (8 : stdgo.StdGoTypes.GoInt))) {
                var _nb = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(((_b.length + (4 : stdgo.StdGoTypes.GoInt)) * (2 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
                stdgo.Go.copySlice(_nb, (_b.__slice__((0 : stdgo.StdGoTypes.GoInt), _w) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                _b = _nb;
            };
            {
                var _c:stdgo.StdGoTypes.GoUInt8 = _s[(_r : stdgo.StdGoTypes.GoInt)];
                {
                    var __switchIndex__ = -1;
                    var __run__ = true;
                    while (__run__) {
                        __run__ = false;
                        if (_c == ((92 : stdgo.StdGoTypes.GoUInt8))) {
                            _r++;
                            if (_r >= (_s.length)) {
                                return { _0 : _t, _1 : _ok };
                            };
                            {
                                var __switchIndex__ = -1;
                                var __run__ = true;
                                while (__run__) {
                                    __run__ = false;
                                    {
                                        final __value__ = _s[(_r : stdgo.StdGoTypes.GoInt)];
                                        if (__value__ == ((34 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((92 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((47 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((39 : stdgo.StdGoTypes.GoUInt8))) {
                                            _b[(_w : stdgo.StdGoTypes.GoInt)] = _s[(_r : stdgo.StdGoTypes.GoInt)];
                                            _r++;
                                            _w++;
                                            break;
                                        } else if (__value__ == ((98 : stdgo.StdGoTypes.GoUInt8))) {
                                            _b[(_w : stdgo.StdGoTypes.GoInt)] = (8 : stdgo.StdGoTypes.GoUInt8);
                                            _r++;
                                            _w++;
                                            break;
                                        } else if (__value__ == ((102 : stdgo.StdGoTypes.GoUInt8))) {
                                            _b[(_w : stdgo.StdGoTypes.GoInt)] = (12 : stdgo.StdGoTypes.GoUInt8);
                                            _r++;
                                            _w++;
                                            break;
                                        } else if (__value__ == ((110 : stdgo.StdGoTypes.GoUInt8))) {
                                            _b[(_w : stdgo.StdGoTypes.GoInt)] = (10 : stdgo.StdGoTypes.GoUInt8);
                                            _r++;
                                            _w++;
                                            break;
                                        } else if (__value__ == ((114 : stdgo.StdGoTypes.GoUInt8))) {
                                            _b[(_w : stdgo.StdGoTypes.GoInt)] = (13 : stdgo.StdGoTypes.GoUInt8);
                                            _r++;
                                            _w++;
                                            break;
                                        } else if (__value__ == ((116 : stdgo.StdGoTypes.GoUInt8))) {
                                            _b[(_w : stdgo.StdGoTypes.GoInt)] = (9 : stdgo.StdGoTypes.GoUInt8);
                                            _r++;
                                            _w++;
                                            break;
                                        } else if (__value__ == ((117 : stdgo.StdGoTypes.GoUInt8))) {
                                            _r--;
                                            var _rr:stdgo.StdGoTypes.GoInt32 = _getu4((_s.__slice__(_r) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                                            if (_rr < (0 : stdgo.StdGoTypes.GoInt32)) {
                                                return { _0 : _t, _1 : _ok };
                                            };
                                            _r = _r + ((6 : stdgo.StdGoTypes.GoInt));
                                            if (stdgo.unicode.utf16.Utf16.isSurrogate(_rr)) {
                                                var _rr1:stdgo.StdGoTypes.GoInt32 = _getu4((_s.__slice__(_r) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                                                {
                                                    var _dec:stdgo.StdGoTypes.GoInt32 = stdgo.unicode.utf16.Utf16.decodeRune(_rr, _rr1);
                                                    if (_dec != ((65533 : stdgo.StdGoTypes.GoInt32))) {
                                                        _r = _r + ((6 : stdgo.StdGoTypes.GoInt));
                                                        _w = _w + (stdgo.unicode.utf8.Utf8.encodeRune((_b.__slice__(_w) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _dec));
                                                        break;
                                                    };
                                                };
                                                _rr = (65533 : stdgo.StdGoTypes.GoInt32);
                                            };
                                            _w = _w + (stdgo.unicode.utf8.Utf8.encodeRune((_b.__slice__(_w) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _rr));
                                            break;
                                        } else {
                                            return { _0 : _t, _1 : _ok };
                                        };
                                    };
                                    break;
                                };
                            };
                            break;
                        } else if (_c == ((34 : stdgo.StdGoTypes.GoUInt8)) || _c < (32 : stdgo.StdGoTypes.GoUInt8)) {
                            return { _0 : _t, _1 : _ok };
                            break;
                        } else if (_c < (128 : stdgo.StdGoTypes.GoUInt8)) {
                            _b[(_w : stdgo.StdGoTypes.GoInt)] = _c;
                            _r++;
                            _w++;
                            break;
                        } else {
                            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune((_s.__slice__(_r) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)), _rr:stdgo.StdGoTypes.GoInt32 = __tmp__._0, _size:stdgo.StdGoTypes.GoInt = __tmp__._1;
                            _r = _r + (_size);
                            _w = _w + (stdgo.unicode.utf8.Utf8.encodeRune((_b.__slice__(_w) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _rr));
                        };
                        break;
                    };
                };
            };
        };
        return { _0 : (_b.__slice__((0 : stdgo.StdGoTypes.GoInt), _w) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _1 : true };
    }
function testMarshal(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var __tmp__ = marshal(stdgo.Go.toInterface(_allValue)), _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Marshal allValue: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if ((_b : stdgo.GoString) != (_allValueCompact)) {
            _t.errorf(("Marshal allValueCompact" : stdgo.GoString));
            _diff(_t, _b, (_allValueCompact : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
            return;
        };
        {
            var __tmp__ = marshal(stdgo.Go.toInterface(_pallValue));
            _b = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatalf(("Marshal pallValue: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if ((_b : stdgo.GoString) != (_pallValueCompact)) {
            _t.errorf(("Marshal pallValueCompact" : stdgo.GoString));
            _diff(_t, _b, (_pallValueCompact : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
            return;
        };
    }
function testMarshalBadUTF8(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        for (__8 => _tt in _badUTF8) {
            var __tmp__ = marshal(stdgo.Go.toInterface(_tt._in)), _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_b : stdgo.GoString) != _tt._out) || (_err != null)) {
                _t.errorf(("Marshal(%q) = %#q, %v, want %#q, nil" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._out));
            };
        };
    }
function testMarshalNumberZeroVal(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _n:Number = (("" : stdgo.GoString) : stdgo.encoding.json.Json.Number);
        var __tmp__ = marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_n))), _out:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _outStr:stdgo.GoString = (_out : stdgo.GoString)?.__copy__();
        if (_outStr != (("0" : stdgo.GoString))) {
            _t.fatalf(("Invalid zero val for Number: %q" : stdgo.GoString), stdgo.Go.toInterface(_outStr));
        };
    }
function testMarshalEmbeds(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _top = (stdgo.Go.setRef(({ level0 : (1 : stdgo.StdGoTypes.GoInt), embed0 : ({ level1b : (2 : stdgo.StdGoTypes.GoInt), level1c : (3 : stdgo.StdGoTypes.GoInt) } : stdgo.encoding.json.Json.Embed0), embed0a : (stdgo.Go.setRef(({ level1a : (5 : stdgo.StdGoTypes.GoInt), level1b : (6 : stdgo.StdGoTypes.GoInt) } : stdgo.encoding.json.Json.Embed0a)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Embed0a>), embed0b : (stdgo.Go.setRef(({ level1a : (8 : stdgo.StdGoTypes.GoInt), level1b : (9 : stdgo.StdGoTypes.GoInt), level1c : (10 : stdgo.StdGoTypes.GoInt), level1d : (11 : stdgo.StdGoTypes.GoInt), level1e : (12 : stdgo.StdGoTypes.GoInt) } : stdgo.encoding.json.Json.Embed0b)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Embed0b>), loop : ({ loop1 : (13 : stdgo.StdGoTypes.GoInt), loop2 : (14 : stdgo.StdGoTypes.GoInt) } : stdgo.encoding.json.Json.Loop), embed0p : ({ point : ({ x : (15 : stdgo.StdGoTypes.GoInt), y : (16 : stdgo.StdGoTypes.GoInt) } : stdgo.image.Image.Point) } : stdgo.encoding.json.Json.Embed0p), embed0q : ({ point : ({ z : (17 : stdgo.StdGoTypes.GoInt) } : stdgo.encoding.json.Json.Point) } : stdgo.encoding.json.Json.Embed0q), _embed : ({ q : (18 : stdgo.StdGoTypes.GoInt) } : stdgo.encoding.json.Json.T_embed) } : stdgo.encoding.json.Json.Top)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Top>);
        var __tmp__ = marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_top))), _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _want:stdgo.GoString = ("{\"Level0\":1,\"Level1b\":2,\"Level1c\":3,\"Level1a\":5,\"LEVEL1B\":6,\"e\":{\"Level1a\":8,\"Level1b\":9,\"Level1c\":10,\"Level1d\":11,\"x\":12},\"Loop1\":13,\"Loop2\":14,\"X\":15,\"Y\":16,\"Z\":17,\"Q\":18}" : stdgo.GoString);
        if ((_b : stdgo.GoString) != (_want)) {
            _t.errorf(("Wrong marshal result.\n got: %q\nwant: %q" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_want));
        };
    }
function _equalError(_a:stdgo.Error, _b:stdgo.Error):Bool {
        if (_a == null) {
            return _b == null;
        };
        if (_b == null) {
            return _a == null;
        };
        return _a.error() == (_b.error());
    }
function testUnmarshal(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        for (_i => _tt in _unmarshalTests) {
            var _scan:T_scanner = ({} : stdgo.encoding.json.Json.T_scanner);
            var _in = (_tt._in : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
            {
                var _err:stdgo.Error = _checkValid(_in, (stdgo.Go.setRef(_scan) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_scanner>));
                if (_err != null) {
                    if (!_equalError(_err, _tt._err)) {
                        _t.errorf(("#%d: checkValid: %#v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                        continue;
                    };
                };
            };
            if (_tt._ptr == null) {
                continue;
            };
            var _typ:stdgo.reflect.Reflect.Type_ = stdgo.reflect.Reflect.typeOf(_tt._ptr);
            if (_typ.kind() != ((22u32 : stdgo.reflect.Reflect.Kind))) {
                _t.errorf(("#%d: unmarshalTest.ptr %T is not a pointer type" : stdgo.GoString), stdgo.Go.toInterface(_i), _tt._ptr);
                continue;
            };
            _typ = _typ.elem();
            var _v:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.new_(_typ)?.__copy__();
            if (!stdgo.reflect.Reflect.deepEqual(_tt._ptr, _v.interface_())) {
                _t.errorf(("#%d: unmarshalTest.ptr %#v is not a pointer to a zero value" : stdgo.GoString), stdgo.Go.toInterface(_i), _tt._ptr);
                continue;
            };
            var _dec = newDecoder(stdgo.Go.asInterface(stdgo.bytes.Bytes.newReader(_in)));
            if (_tt._useNumber) {
                _dec.useNumber();
            };
            if (_tt._disallowUnknownFields) {
                _dec.disallowUnknownFields();
            };
            {
                var _err:stdgo.Error = _dec.decode(_v.interface_());
                if (!_equalError(_err, _tt._err)) {
                    _t.errorf(("#%d: %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._err));
                    continue;
                } else if (_err != null) {
                    continue;
                };
            };
            if (!stdgo.reflect.Reflect.deepEqual(_v.elem().interface_(), _tt._out)) {
                _t.errorf(("#%d: mismatch\nhave: %#+v\nwant: %#+v" : stdgo.GoString), stdgo.Go.toInterface(_i), _v.elem().interface_(), _tt._out);
                var __tmp__ = marshal(_v.elem().interface_()), _data:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, __8:stdgo.Error = __tmp__._1;
                stdgo.Go.println((_data : stdgo.GoString));
                {
                    var __tmp__ = marshal(_tt._out);
                    _data = __tmp__._0;
                };
                stdgo.Go.println((_data : stdgo.GoString));
                continue;
            };
            if (_tt._err == null) {
                var __tmp__ = marshal(_v.interface_()), _enc:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("#%d: error re-marshaling: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                    continue;
                };
                if (_tt._golden && !stdgo.bytes.Bytes.equal(_enc, _in)) {
                    _t.errorf(("#%d: remarshal mismatch:\nhave: %s\nwant: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_enc), stdgo.Go.toInterface(_in));
                };
                var _vv:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.new_(stdgo.reflect.Reflect.typeOf(_tt._ptr).elem())?.__copy__();
                _dec = newDecoder(stdgo.Go.asInterface(stdgo.bytes.Bytes.newReader(_enc)));
                if (_tt._useNumber) {
                    _dec.useNumber();
                };
                {
                    var _err:stdgo.Error = _dec.decode(_vv.interface_());
                    if (_err != null) {
                        _t.errorf(("#%d: error re-unmarshaling %#q: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_enc), stdgo.Go.toInterface(_err));
                        continue;
                    };
                };
                if (!stdgo.reflect.Reflect.deepEqual(_v.elem().interface_(), _vv.elem().interface_())) {
                    _t.errorf(("#%d: mismatch\nhave: %#+v\nwant: %#+v" : stdgo.GoString), stdgo.Go.toInterface(_i), _v.elem().interface_(), _vv.elem().interface_());
                    _t.errorf(("     In: %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.strings.Strings.map_(_noSpace, (_in : stdgo.GoString)?.__copy__())));
                    _t.errorf(("Marshal: %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.strings.Strings.map_(_noSpace, (_enc : stdgo.GoString)?.__copy__())));
                    continue;
                };
            };
        };
    }
function testUnmarshalMarshal(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        _initBig();
        var _v:stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
        {
            var _err:stdgo.Error = unmarshal(_jsonBig, stdgo.Go.toInterface((stdgo.Go.setRef(_v) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>)));
            if (_err != null) {
                _t.fatalf(("Unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        var __tmp__ = marshal(_v), _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Marshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (!stdgo.bytes.Bytes.equal(_jsonBig, _b)) {
            _t.errorf(("Marshal jsonBig" : stdgo.GoString));
            _diff(_t, _b, _jsonBig);
            return;
        };
    }
/**
    // Independent of Decode, basic coverage of the accessors in Number
**/
function testNumberAccessors(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        for (__8 => _tt in _numberTests) {
            var _n:stdgo.encoding.json.Json.Number = (_tt._in : Number);
            {
                var _s:stdgo.GoString = (_n.string() : stdgo.GoString)?.__copy__();
                if (_s != (_tt._in)) {
                    _t.errorf(("Number(%q).String() is %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_s));
                };
            };
            {
                var __tmp__ = _n.int64(), _i:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err == null) && (_tt._intErr == stdgo.Go.str())) && (_i != _tt._i)) {
                    _t.errorf(("Number(%q).Int64() is %d" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_i));
                } else if (((_err == null) && (_tt._intErr != stdgo.Go.str())) || ((_err != null) && (_err.error() != _tt._intErr))) {
                    _t.errorf(("Number(%q).Int64() wanted error %q but got: %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_tt._intErr), stdgo.Go.toInterface(_err));
                };
            };
            {
                var __tmp__ = _n.float64(), _f:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err == null) && (_tt._floatErr == stdgo.Go.str())) && (_f != _tt._f)) {
                    _t.errorf(("Number(%q).Float64() is %g" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_f));
                } else if (((_err == null) && (_tt._floatErr != stdgo.Go.str())) || ((_err != null) && (_err.error() != _tt._floatErr))) {
                    _t.errorf(("Number(%q).Float64() wanted error %q but got: %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_tt._floatErr), stdgo.Go.toInterface(_err));
                };
            };
        };
    }
function testLargeByteSlice(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _s0 = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((2000 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        for (_i in 0 ... _s0.length.toBasic()) {
            _s0[(_i : stdgo.StdGoTypes.GoInt)] = (_i : stdgo.StdGoTypes.GoByte);
        };
        var __tmp__ = marshal(stdgo.Go.toInterface(_s0)), _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Marshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _s1:stdgo.Slice<stdgo.StdGoTypes.GoByte> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        {
            var _err:stdgo.Error = unmarshal(_b, stdgo.Go.toInterface((stdgo.Go.setRef(_s1) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoUInt8>>)));
            if (_err != null) {
                _t.fatalf(("Unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        if (!stdgo.bytes.Bytes.equal(_s0, _s1)) {
            _t.errorf(("Marshal large byte slice" : stdgo.GoString));
            _diff(_t, _s0, _s1);
        };
    }
function testUnmarshalInterface(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _xint:Xint = ({} : stdgo.encoding.json.Json.Xint);
        var _i:stdgo.StdGoTypes.AnyInterface = stdgo.Go.toInterface((stdgo.Go.setRef(_xint) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Xint>));
        {
            var _err:stdgo.Error = unmarshal((("{\"X\":1}" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), stdgo.Go.toInterface((stdgo.Go.setRef(_i) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>)));
            if (_err != null) {
                _t.fatalf(("Unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        if (_xint.x != ((1 : stdgo.StdGoTypes.GoInt))) {
            _t.fatalf(("Did not write to xint" : stdgo.GoString));
        };
    }
function testUnmarshalPtrPtr(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _xint:Xint = ({} : stdgo.encoding.json.Json.Xint);
        var _pxint = (stdgo.Go.setRef(_xint) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Xint>);
        {
            var _err:stdgo.Error = unmarshal((("{\"X\":1}" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), stdgo.Go.toInterface((stdgo.Go.setRef(_pxint) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Xint>>)));
            if (_err != null) {
                _t.fatalf(("Unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        if (_xint.x != ((1 : stdgo.StdGoTypes.GoInt))) {
            _t.fatalf(("Did not write to xint" : stdgo.GoString));
        };
    }
function testEscape(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        {};
        var __tmp__ = marshal(stdgo.Go.toInterface(("\"foobar\"<html> [\u2028 \u2029]" : stdgo.GoString))), _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Marshal error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var _s:stdgo.GoString = (_b : stdgo.GoString)?.__copy__();
            if (_s != (("\"\\\"foobar\\\"\\u003chtml\\u003e [\\u2028 \\u2029]\"" : stdgo.GoString))) {
                _t.errorf(("Encoding of [%s]:\n got [%s]\nwant [%s]" : stdgo.GoString), stdgo.Go.toInterface(("\"foobar\"<html> [\u2028 \u2029]" : stdgo.GoString)), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(("\"\\\"foobar\\\"\\u003chtml\\u003e [\\u2028 \\u2029]\"" : stdgo.GoString)));
            };
        };
    }
/**
    // If people misuse the ,string modifier, the error message should be
    // helpful, telling the user that they're doing it wrong.
**/
function testErrorMessageFromMisusedString(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        for (_n => _tt in _wrongStringTests) {
            var _r = stdgo.strings.Strings.newReader(_tt._in?.__copy__());
            var _s:WrongString = ({} : stdgo.encoding.json.Json.WrongString);
            var _err:stdgo.Error = newDecoder(stdgo.Go.asInterface(_r)).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_s) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.WrongString>)));
            var _got:stdgo.GoString = stdgo.fmt.Fmt.sprintf(("%v" : stdgo.GoString), stdgo.Go.toInterface(_err))?.__copy__();
            if (_got != (_tt._err)) {
                _t.errorf(("%d. got err = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._err));
            };
        };
    }
function _noSpace(_c:stdgo.StdGoTypes.GoRune):stdgo.StdGoTypes.GoRune {
        if (_isSpace((_c : stdgo.StdGoTypes.GoByte))) {
            return (-1 : stdgo.StdGoTypes.GoInt32);
        };
        return _c;
    }
/**
    
    
    
**/
@:structInit class T_testRefUnmarshal_85___localname___S {
    /**
        // Ref is defined in encode_test.go.
    **/
    public var r0 : stdgo.encoding.json.Json.Ref = ((0 : stdgo.StdGoTypes.GoInt) : stdgo.encoding.json.Json.Ref);
    public var r1 : stdgo.Pointer<stdgo.encoding.json.Json.Ref> = (null : stdgo.Pointer<stdgo.encoding.json.Json.Ref>);
    public var r2 : stdgo.encoding.json.Json.RefText = ((0 : stdgo.StdGoTypes.GoInt) : stdgo.encoding.json.Json.RefText);
    public var r3 : stdgo.Pointer<stdgo.encoding.json.Json.RefText> = (null : stdgo.Pointer<stdgo.encoding.json.Json.RefText>);
    public function new(?r0:stdgo.encoding.json.Json.Ref, ?r1:stdgo.Pointer<stdgo.encoding.json.Json.Ref>, ?r2:stdgo.encoding.json.Json.RefText, ?r3:stdgo.Pointer<stdgo.encoding.json.Json.RefText>) {
        if (r0 != null) this.r0 = r0;
        if (r1 != null) this.r1 = r1;
        if (r2 != null) this.r2 = r2;
        if (r3 != null) this.r3 = r3;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testRefUnmarshal_85___localname___S(r0, r1, r2, r3);
    }
}
function testRefUnmarshal(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        var _want:stdgo.encoding.json.Json.T_testRefUnmarshal_85___localname___S = ({ r0 : (12 : stdgo.encoding.json.Json.Ref), r1 : stdgo.Go.pointer(((0 : stdgo.StdGoTypes.GoInt) : stdgo.encoding.json.Json.Ref)), r2 : (13 : stdgo.encoding.json.Json.RefText), r3 : stdgo.Go.pointer(((0 : stdgo.StdGoTypes.GoInt) : stdgo.encoding.json.Json.RefText)) } : stdgo.encoding.json.Json.T_testRefUnmarshal_85___localname___S);
        _want.r1.value = (12 : stdgo.encoding.json.Json.Ref);
        _want.r3.value = (13 : stdgo.encoding.json.Json.RefText);
        var _got:T_testRefUnmarshal_85___localname___S = ({} : stdgo.encoding.json.Json.T_testRefUnmarshal_85___localname___S);
        {
            var _err:stdgo.Error = unmarshal((("{\"R0\":\"ref\",\"R1\":\"ref\",\"R2\":\"ref\",\"R3\":\"ref\"}" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), stdgo.Go.toInterface((stdgo.Go.setRef(_got) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testRefUnmarshal_85___localname___S>)));
            if (_err != null) {
                _t.fatalf(("Unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want))) {
            _t.errorf(("got %+v, want %+v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
    }
/**
    
    
    
**/
@:structInit class T_testEmptyString_86___localname___T2 {
    @:tag("`json:\",string\"`")
    public var number1 : stdgo.StdGoTypes.GoInt = 0;
    @:tag("`json:\",string\"`")
    public var number2 : stdgo.StdGoTypes.GoInt = 0;
    public function new(?number1:stdgo.StdGoTypes.GoInt, ?number2:stdgo.StdGoTypes.GoInt) {
        if (number1 != null) this.number1 = number1;
        if (number2 != null) this.number2 = number2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testEmptyString_86___localname___T2(number1, number2);
    }
}
/**
    // Test that the empty string doesn't panic decoding when ,string is specified
    // Issue 3450
**/
function testEmptyString(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        var _data:stdgo.GoString = ("{\"Number1\":\"1\", \"Number2\":\"\"}" : stdgo.GoString);
        var _dec = newDecoder(stdgo.Go.asInterface(stdgo.strings.Strings.newReader(_data?.__copy__())));
        var _t2:T_testEmptyString_86___localname___T2 = ({} : stdgo.encoding.json.Json.T_testEmptyString_86___localname___T2);
        var _err:stdgo.Error = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_t2) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testEmptyString_86___localname___T2>)));
        if (_err == null) {
            _t.fatal(stdgo.Go.toInterface(("Decode: did not return error" : stdgo.GoString)));
        };
        if (_t2.number1 != ((1 : stdgo.StdGoTypes.GoInt))) {
            _t.fatal(stdgo.Go.toInterface(("Decode: did not set Number1" : stdgo.GoString)));
        };
    }
/**
    
    
    
**/
@:structInit class T_testNullString_87___localname___T {
    @:tag("`json:\",string\"`")
    public var a : stdgo.StdGoTypes.GoInt = 0;
    @:tag("`json:\",string\"`")
    public var b : stdgo.StdGoTypes.GoInt = 0;
    @:tag("`json:\",string\"`")
    public var c : stdgo.Pointer<stdgo.StdGoTypes.GoInt> = (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt>);
    public function new(?a:stdgo.StdGoTypes.GoInt, ?b:stdgo.StdGoTypes.GoInt, ?c:stdgo.Pointer<stdgo.StdGoTypes.GoInt>) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (c != null) this.c = c;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testNullString_87___localname___T(a, b, c);
    }
}
/**
    // Test that a null for ,string is not replaced with the previous quoted string (issue 7046).
    // It should also not be an error (issue 2540, issue 8587).
**/
function testNullString(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        var _data = (("{\"A\": \"1\", \"B\": null, \"C\": null}" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        var _s:T_testNullString_87___localname___T = ({} : stdgo.encoding.json.Json.T_testNullString_87___localname___T);
        _s.b = (1 : stdgo.StdGoTypes.GoInt);
        _s.c = stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoInt));
        _s.c.value = (2 : stdgo.StdGoTypes.GoInt);
        var _err:stdgo.Error = unmarshal(_data, stdgo.Go.toInterface((stdgo.Go.setRef(_s) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testNullString_87___localname___T>)));
        if (_err != null) {
            _t.fatalf(("Unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if ((_s.b != (1 : stdgo.StdGoTypes.GoInt)) || (_s.c != null)) {
            _t.fatalf(("after Unmarshal, s.B=%d, s.C=%p, want 1, nil" : stdgo.GoString), stdgo.Go.toInterface(_s.b), stdgo.Go.toInterface(_s.c));
        };
    }
function _intp(_x:stdgo.StdGoTypes.GoInt):stdgo.Pointer<stdgo.StdGoTypes.GoInt> {
        var _p = stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoInt));
        _p.value = _x;
        return _p;
    }
function _intpp(_x:stdgo.Pointer<stdgo.StdGoTypes.GoInt>):stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>> {
        var _pp = (stdgo.Go.setRef((null : stdgo.Pointer<stdgo.StdGoTypes.GoInt>)) : stdgo.StdGoTypes.Ref<stdgo.Pointer<stdgo.StdGoTypes.GoInt>>);
        _pp = _x;
        return _pp;
    }
function testInterfaceSet(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        for (__8 => _tt in _interfaceSetTests) {
            var _b:T__struct_9 = ({ x : _tt._pre } : T__struct_9);
            var _blob:stdgo.GoString = ("{\"X\":" : stdgo.GoString) + _tt._json?.__copy__() + ("}" : stdgo.GoString)?.__copy__()?.__copy__();
            {
                var _err:stdgo.Error = unmarshal((_blob : stdgo.Slice<stdgo.StdGoTypes.GoByte>), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<T__struct_9>))));
                if (_err != null) {
                    _t.errorf(("Unmarshal %#q: %v" : stdgo.GoString), stdgo.Go.toInterface(_blob), stdgo.Go.toInterface(_err));
                    continue;
                };
            };
            if (!stdgo.reflect.Reflect.deepEqual(_b.x, _tt._post)) {
                _t.errorf(("Unmarshal %#q into %#v: X=%#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_blob), _tt._pre, _b.x, _tt._post);
            };
        };
    }
/**
    // JSON null values should be ignored for primitives and string values instead of resulting in an error.
    // Issue 2540
**/
function testUnmarshalNulls(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _jsonData = (("{\n\t\t\t\t\"Bool\"    : null,\n\t\t\t\t\"Int\"     : null,\n\t\t\t\t\"Int8\"    : null,\n\t\t\t\t\"Int16\"   : null,\n\t\t\t\t\"Int32\"   : null,\n\t\t\t\t\"Int64\"   : null,\n\t\t\t\t\"Uint\"    : null,\n\t\t\t\t\"Uint8\"   : null,\n\t\t\t\t\"Uint16\"  : null,\n\t\t\t\t\"Uint32\"  : null,\n\t\t\t\t\"Uint64\"  : null,\n\t\t\t\t\"Float32\" : null,\n\t\t\t\t\"Float64\" : null,\n\t\t\t\t\"String\"  : null,\n\t\t\t\t\"PBool\": null,\n\t\t\t\t\"Map\": null,\n\t\t\t\t\"Slice\": null,\n\t\t\t\t\"Interface\": null,\n\t\t\t\t\"PRaw\": null,\n\t\t\t\t\"PTime\": null,\n\t\t\t\t\"PBigInt\": null,\n\t\t\t\t\"PText\": null,\n\t\t\t\t\"PBuffer\": null,\n\t\t\t\t\"PStruct\": null,\n\t\t\t\t\"Raw\": null,\n\t\t\t\t\"Time\": null,\n\t\t\t\t\"BigInt\": null,\n\t\t\t\t\"Text\": null,\n\t\t\t\t\"Buffer\": null,\n\t\t\t\t\"Struct\": null\n\t\t\t}" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        var _nulls:stdgo.encoding.json.Json.NullTest = ({ bool_ : true, int_ : (2 : stdgo.StdGoTypes.GoInt), int8 : (3 : stdgo.StdGoTypes.GoInt8), int16 : (4 : stdgo.StdGoTypes.GoInt16), int32 : (5 : stdgo.StdGoTypes.GoInt32), int64 : (6i64 : stdgo.StdGoTypes.GoInt64), uint : (7u32 : stdgo.StdGoTypes.GoUInt), uint8 : (8 : stdgo.StdGoTypes.GoUInt8), uint16 : (9 : stdgo.StdGoTypes.GoUInt16), uint32 : (10u32 : stdgo.StdGoTypes.GoUInt32), uint64 : (11i64 : stdgo.StdGoTypes.GoUInt64), float32 : (12.100000381469727 : stdgo.StdGoTypes.GoFloat64), float64 : (13.1 : stdgo.StdGoTypes.GoFloat64), string : ("14" : stdgo.GoString), pbool : stdgo.Go.pointer(false), map_ : ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), slice : (new stdgo.Slice<stdgo.GoString>(0, 0) : stdgo.Slice<stdgo.GoString>), interface_ : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.MustNotUnmarshalJSON)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.MustNotUnmarshalJSON>))), praw : (stdgo.Go.setRef(new stdgo.encoding.json.Json.RawMessage(0, 0)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage>), ptime : (stdgo.Go.setRef(({} : stdgo.time.Time.Time)) : stdgo.StdGoTypes.Ref<stdgo.time.Time.Time>), pbigInt : (stdgo.Go.setRef(({} : stdgo.math.big.Big.Int_)) : stdgo.StdGoTypes.Ref<stdgo.math.big.Big.Int_>), ptext : (stdgo.Go.setRef(({} : stdgo.encoding.json.Json.MustNotUnmarshalText)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.MustNotUnmarshalText>), pbuffer : (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), pstruct : (stdgo.Go.setRef(({} : T_unquotedValue)) : stdgo.StdGoTypes.Ref<T_unquotedValue>), raw : (("123" : stdgo.GoString) : RawMessage), time : stdgo.time.Time.unix((123456789i64 : stdgo.StdGoTypes.GoInt64), (0i64 : stdgo.StdGoTypes.GoInt64))?.__copy__(), bigInt : (stdgo.math.big.Big.newInt((123i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.math.big.Big.Int_)?.__copy__() } : stdgo.encoding.json.Json.NullTest);
        var _before:stdgo.GoString = (_nulls.time.string() : stdgo.GoString)?.__copy__();
        var _err:stdgo.Error = unmarshal(_jsonData, stdgo.Go.toInterface((stdgo.Go.setRef(_nulls) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.NullTest>)));
        if (_err != null) {
            _t.errorf(("Unmarshal of null values failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (((((((((((((!_nulls.bool_ || (_nulls.int_ != (2 : stdgo.StdGoTypes.GoInt))) || (_nulls.int8 != (3 : stdgo.StdGoTypes.GoInt8))) || (_nulls.int16 != (4 : stdgo.StdGoTypes.GoInt16))) || (_nulls.int32 != (5 : stdgo.StdGoTypes.GoInt32))) || (_nulls.int64 != (6i64 : stdgo.StdGoTypes.GoInt64))) || (_nulls.uint != (7u32 : stdgo.StdGoTypes.GoUInt))) || (_nulls.uint8 != (8 : stdgo.StdGoTypes.GoUInt8))) || (_nulls.uint16 != (9 : stdgo.StdGoTypes.GoUInt16))) || (_nulls.uint32 != (10u32 : stdgo.StdGoTypes.GoUInt32))) || (_nulls.uint64 != (11i64 : stdgo.StdGoTypes.GoUInt64))) || (_nulls.float32 != (12.100000381469727 : stdgo.StdGoTypes.GoFloat64))) || (_nulls.float64 != (13.1 : stdgo.StdGoTypes.GoFloat64))) || (_nulls.string != ("14" : stdgo.GoString))) {
            _t.errorf(("Unmarshal of null values affected primitives" : stdgo.GoString));
        };
        if (_nulls.pbool != null) {
            _t.errorf(("Unmarshal of null did not clear nulls.PBool" : stdgo.GoString));
        };
        if (_nulls.map_ != null) {
            _t.errorf(("Unmarshal of null did not clear nulls.Map" : stdgo.GoString));
        };
        if (_nulls.slice != null) {
            _t.errorf(("Unmarshal of null did not clear nulls.Slice" : stdgo.GoString));
        };
        if (_nulls.interface_ != null) {
            _t.errorf(("Unmarshal of null did not clear nulls.Interface" : stdgo.GoString));
        };
        if (_nulls.praw != null && ((_nulls.praw : Dynamic).__nil__ == null || !(_nulls.praw : Dynamic).__nil__)) {
            _t.errorf(("Unmarshal of null did not clear nulls.PRaw" : stdgo.GoString));
        };
        if (_nulls.ptime != null && ((_nulls.ptime : Dynamic).__nil__ == null || !(_nulls.ptime : Dynamic).__nil__)) {
            _t.errorf(("Unmarshal of null did not clear nulls.PTime" : stdgo.GoString));
        };
        if (_nulls.pbigInt != null && ((_nulls.pbigInt : Dynamic).__nil__ == null || !(_nulls.pbigInt : Dynamic).__nil__)) {
            _t.errorf(("Unmarshal of null did not clear nulls.PBigInt" : stdgo.GoString));
        };
        if (_nulls.ptext != null && ((_nulls.ptext : Dynamic).__nil__ == null || !(_nulls.ptext : Dynamic).__nil__)) {
            _t.errorf(("Unmarshal of null did not clear nulls.PText" : stdgo.GoString));
        };
        if (_nulls.pbuffer != null && ((_nulls.pbuffer : Dynamic).__nil__ == null || !(_nulls.pbuffer : Dynamic).__nil__)) {
            _t.errorf(("Unmarshal of null did not clear nulls.PBuffer" : stdgo.GoString));
        };
        if (_nulls.pstruct != null && ((_nulls.pstruct : Dynamic).__nil__ == null || !(_nulls.pstruct : Dynamic).__nil__)) {
            _t.errorf(("Unmarshal of null did not clear nulls.PStruct" : stdgo.GoString));
        };
        if ((_nulls.raw : stdgo.GoString) != (("null" : stdgo.GoString))) {
            _t.errorf(("Unmarshal of RawMessage null did not record null: %v" : stdgo.GoString), stdgo.Go.toInterface((_nulls.raw : stdgo.GoString)));
        };
        if ((_nulls.time.string() : stdgo.GoString) != (_before)) {
            _t.errorf(("Unmarshal of time.Time null set time to %v" : stdgo.GoString), stdgo.Go.toInterface((_nulls.time.string() : stdgo.GoString)));
        };
        if ((_nulls.bigInt.string() : stdgo.GoString) != (("123" : stdgo.GoString))) {
            _t.errorf(("Unmarshal of big.Int null set int to %v" : stdgo.GoString), stdgo.Go.toInterface((_nulls.bigInt.string() : stdgo.GoString)));
        };
    }
@:named typedef T_testStringKind_88___localname___stringKind = stdgo.GoString;
function testStringKind(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        var __0:stdgo.GoMap<T_testStringKind_88___localname___stringKind, stdgo.StdGoTypes.GoInt> = (null : stdgo.GoMap<stdgo.encoding.json.Json.T_testStringKind_88___localname___stringKind, stdgo.StdGoTypes.GoInt>), __1:stdgo.GoMap<T_testStringKind_88___localname___stringKind, stdgo.StdGoTypes.GoInt> = (null : stdgo.GoMap<stdgo.encoding.json.Json.T_testStringKind_88___localname___stringKind, stdgo.StdGoTypes.GoInt>), _m2:stdgo.GoMap<T_testStringKind_88___localname___stringKind, stdgo.StdGoTypes.GoInt> = __1, _m1:stdgo.GoMap<T_testStringKind_88___localname___stringKind, stdgo.StdGoTypes.GoInt> = __0;
        _m1 = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.StdGoTypes.GoInt);
            @:mergeBlock {
                x.set((("foo" : stdgo.GoString) : stdgo.encoding.json.Json.T_testStringKind_88___localname___stringKind), (42 : stdgo.StdGoTypes.GoInt));
            };
            x;
        } : stdgo.GoMap<stdgo.encoding.json.Json.T_testStringKind_88___localname___stringKind, stdgo.StdGoTypes.GoInt>);
        var __tmp__ = marshal(stdgo.Go.toInterface(_m1)), _data:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("Unexpected error marshaling: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        _err = unmarshal(_data, stdgo.Go.toInterface((stdgo.Go.setRef(_m2) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.encoding.json.Json.T_testStringKind_88___localname___stringKind, stdgo.StdGoTypes.GoInt>>)));
        if (_err != null) {
            _t.errorf(("Unexpected error unmarshaling: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_m1), stdgo.Go.toInterface(_m2))) {
            _t.error(stdgo.Go.toInterface(("Items should be equal after encoding and then decoding" : stdgo.GoString)));
        };
    }
@:named typedef T_testByteKind_89___localname___byteKind = stdgo.Slice<stdgo.StdGoTypes.GoUInt8>;
/**
    // Custom types with []byte as underlying type could not be marshaled
    // and then unmarshaled.
    // Issue 8962.
**/
function testByteKind(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        var _a:stdgo.encoding.json.Json.T_testByteKind_89___localname___byteKind = (("hello" : stdgo.GoString) : T_testByteKind_89___localname___byteKind);
        var __tmp__ = marshal(stdgo.Go.toInterface(_a)), _data:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(_err));
        };
        var _b:T_testByteKind_89___localname___byteKind = new stdgo.encoding.json.Json.T_testByteKind_89___localname___byteKind(0, 0);
        _err = unmarshal(_data, stdgo.Go.toInterface((stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testByteKind_89___localname___byteKind>)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b))) {
            _t.errorf(("expected %v == %v" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b));
        };
    }
@:named typedef T_testSliceOfCustomByte_90___localname___Uint8 = stdgo.StdGoTypes.GoUInt8;
/**
    // The fix for issue 8962 introduced a regression.
    // Issue 12921.
**/
function testSliceOfCustomByte(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        var _a = (("hello" : stdgo.GoString) : stdgo.Slice<T_testSliceOfCustomByte_90___localname___Uint8>);
        var __tmp__ = marshal(stdgo.Go.toInterface(_a)), _data:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _b:stdgo.Slice<T_testSliceOfCustomByte_90___localname___Uint8> = (null : stdgo.Slice<stdgo.encoding.json.Json.T_testSliceOfCustomByte_90___localname___Uint8>);
        _err = unmarshal(_data, stdgo.Go.toInterface((stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.encoding.json.Json.T_testSliceOfCustomByte_90___localname___Uint8>>)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b))) {
            _t.fatalf(("expected %v == %v" : stdgo.GoString), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b));
        };
    }
function testUnmarshalTypeError(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        for (__8 => _item in _decodeTypeErrorTests) {
            var _err:stdgo.Error = unmarshal((_item._src : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _item._dest);
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.StdGoTypes.Ref<UnmarshalTypeError>)) : stdgo.StdGoTypes.Ref<UnmarshalTypeError>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>), _1 : false };
                }, __9 = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    _t.errorf(("expected type error for Unmarshal(%q, type %T): got %T" : stdgo.GoString), stdgo.Go.toInterface(_item._src), _item._dest, stdgo.Go.toInterface(_err));
                };
            };
        };
    }
function testUnmarshalSyntax(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _x:stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
        for (__8 => _src in _unmarshalSyntaxTests) {
            var _err:stdgo.Error = unmarshal((_src : stdgo.Slice<stdgo.StdGoTypes.GoByte>), stdgo.Go.toInterface((stdgo.Go.setRef(_x) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>)));
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.StdGoTypes.Ref<SyntaxError>)) : stdgo.StdGoTypes.Ref<SyntaxError>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SyntaxError>), _1 : false };
                }, __9 = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    _t.errorf(("expected syntax error for Unmarshal(%q): got %T" : stdgo.GoString), stdgo.Go.toInterface(_src), stdgo.Go.toInterface(_err));
                };
            };
        };
    }
function testUnmarshalUnexported(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _input:stdgo.GoString = ("{\"Name\": \"Bob\", \"m\": {\"x\": 123}, \"m2\": {\"y\": 456}, \"abcd\": {\"z\": 789}, \"s\": [2, 3]}" : stdgo.GoString);
        var _want = (stdgo.Go.setRef(({ name : ("Bob" : stdgo.GoString) } : stdgo.encoding.json.Json.T_unexportedFields)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_unexportedFields>);
        var _out = (stdgo.Go.setRef((new stdgo.encoding.json.Json.T_unexportedFields() : stdgo.encoding.json.Json.T_unexportedFields)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_unexportedFields>);
        var _err:stdgo.Error = unmarshal((_input : stdgo.Slice<stdgo.StdGoTypes.GoByte>), stdgo.Go.toInterface(_out));
        if (_err != null) {
            _t.errorf(("got error %v, expected nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_want))) {
            _t.errorf(("got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_want));
        };
    }
function testUnmarshalJSONLiteralError(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _t3:Time3339 = ({} : stdgo.encoding.json.Json.Time3339);
        var _err:stdgo.Error = unmarshal((("\"0000-00-00T00:00:00Z\"" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_t3) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Time3339>))));
        if (_err == null) {
            _t.fatalf(("expected error; got time %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((({
                final e = _t3;
                ({ _wall : e._wall, _ext : e._ext, _loc : e._loc } : stdgo.time.Time.Time);
            })))));
        };
        if (!stdgo.strings.Strings.contains(_err.error()?.__copy__(), ("range" : stdgo.GoString))) {
            _t.errorf(("got err = %v; want out of range error" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
/**
    // Test that extra object elements in an array do not result in a
    // "data changing underfoot" error.
    // Issue 3717
**/
function testSkipArrayObjects(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _json:stdgo.GoString = ("[{}]" : stdgo.GoString);
        var _dest:stdgo.GoArray<stdgo.StdGoTypes.AnyInterface> = new stdgo.GoArray<stdgo.StdGoTypes.AnyInterface>(...[for (i in 0 ... 0) (null : stdgo.StdGoTypes.AnyInterface)]);
        var _err:stdgo.Error = unmarshal((_json : stdgo.Slice<stdgo.StdGoTypes.GoByte>), stdgo.Go.toInterface((stdgo.Go.setRef(_dest) : stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.AnyInterface>>)));
        if (_err != null) {
            _t.errorf(("got error %q, want nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
/**
    // Test semantics of pre-filled data, such as struct fields, map elements,
    // slices, and arrays.
    // Issues 4900 and 8837, among others.
**/
function testPrefilled(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _prefillTests:stdgo.Slice<T__struct_11> = (new stdgo.Slice<T__struct_11>(6, 6, ({ _in : ("{\"X\": 1, \"Y\": 2}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({ x : stdgo.Go.toInterface(((3 : stdgo.StdGoTypes.GoFloat64) : stdgo.StdGoTypes.GoFloat32)), y : stdgo.Go.toInterface((4 : stdgo.StdGoTypes.GoInt16)), z : stdgo.Go.toInterface((1.5 : stdgo.StdGoTypes.GoFloat64)) } : stdgo.encoding.json.Json.XYZ)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.XYZ>)), _out : stdgo.Go.toInterface((stdgo.Go.setRef(({ x : stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoFloat64)), y : stdgo.Go.toInterface((2 : stdgo.StdGoTypes.GoFloat64)), z : stdgo.Go.toInterface((1.5 : stdgo.StdGoTypes.GoFloat64)) } : stdgo.encoding.json.Json.XYZ)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.XYZ>)) } : T__struct_11), ({ _in : ("{\"X\": 1, \"Y\": 2}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
            @:mergeBlock {
                x.set(("X" : stdgo.GoString), stdgo.Go.toInterface(((3 : stdgo.StdGoTypes.GoFloat64) : stdgo.StdGoTypes.GoFloat32)));
                x.set(("Y" : stdgo.GoString), stdgo.Go.toInterface((4 : stdgo.StdGoTypes.GoInt16)));
                x.set(("Z" : stdgo.GoString), stdgo.Go.toInterface((1.5 : stdgo.StdGoTypes.GoFloat64)));
            };
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>)) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>>)), _out : stdgo.Go.toInterface((stdgo.Go.setRef(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
            @:mergeBlock {
                x.set(("X" : stdgo.GoString), stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoFloat64)));
                x.set(("Y" : stdgo.GoString), stdgo.Go.toInterface((2 : stdgo.StdGoTypes.GoFloat64)));
                x.set(("Z" : stdgo.GoString), stdgo.Go.toInterface((1.5 : stdgo.StdGoTypes.GoFloat64)));
            };
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>)) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>>)) } : T__struct_11), ({ _in : ("[2]" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.Slice<stdgo.StdGoTypes.GoInt>(1, 1, (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>)) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt>>)), _out : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.Slice<stdgo.StdGoTypes.GoInt>(1, 1, (2 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>)) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt>>)) } : T__struct_11), ({ _in : ("[2, 3]" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.Slice<stdgo.StdGoTypes.GoInt>(1, 1, (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>)) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt>>)), _out : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.Slice<stdgo.StdGoTypes.GoInt>(2, 2, (2 : stdgo.StdGoTypes.GoInt), (3 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>)) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt>>)) } : T__struct_11), ({ _in : ("[2, 3]" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.GoArray<stdgo.StdGoTypes.GoInt>((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoArray<stdgo.StdGoTypes.GoInt>)) : stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoInt>>)), _out : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.GoArray<stdgo.StdGoTypes.GoInt>((2 : stdgo.StdGoTypes.GoInt)) : stdgo.GoArray<stdgo.StdGoTypes.GoInt>)) : stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoInt>>)) } : T__struct_11), ({ _in : ("[3]" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.GoArray<stdgo.StdGoTypes.GoInt>((1 : stdgo.StdGoTypes.GoInt), (2 : stdgo.StdGoTypes.GoInt)) : stdgo.GoArray<stdgo.StdGoTypes.GoInt>)) : stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoInt>>)), _out : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.GoArray<stdgo.StdGoTypes.GoInt>((3 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.GoArray<stdgo.StdGoTypes.GoInt>)) : stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoInt>>)) } : T__struct_11)) : stdgo.Slice<T__struct_11>);
        for (__8 => _tt in _prefillTests) {
            var _ptrstr:stdgo.GoString = stdgo.fmt.Fmt.sprintf(("%v" : stdgo.GoString), _tt._ptr)?.__copy__();
            var _err:stdgo.Error = unmarshal((_tt._in : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _tt._ptr);
            if (_err != null) {
                _t.errorf(("Unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            if (!stdgo.reflect.Reflect.deepEqual(_tt._ptr, _tt._out)) {
                _t.errorf(("Unmarshal(%#q, %s): have %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_ptrstr), _tt._ptr, _tt._out);
            };
        };
    }
function testInvalidUnmarshal(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _buf = (("{\"a\":\"1\"}" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        for (__8 => _tt in _invalidUnmarshalTests) {
            var _err:stdgo.Error = unmarshal(_buf, _tt._v);
            if (_err == null) {
                _t.errorf(("Unmarshal expecting error, got nil" : stdgo.GoString));
                continue;
            };
            {
                var _got:stdgo.GoString = _err.error()?.__copy__();
                if (_got != (_tt._want)) {
                    _t.errorf(("Unmarshal = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
    }
function testInvalidUnmarshalText(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _buf = (("123" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        for (__8 => _tt in _invalidUnmarshalTextTests) {
            var _err:stdgo.Error = unmarshal(_buf, _tt._v);
            if (_err == null) {
                _t.errorf(("Unmarshal expecting error, got nil" : stdgo.GoString));
                continue;
            };
            {
                var _got:stdgo.GoString = _err.error()?.__copy__();
                if (_got != (_tt._want)) {
                    _t.errorf(("Unmarshal = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
    }
/**
    // Test that string option is ignored for invalid types.
    // Issue 9812.
**/
function testInvalidStringOption(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _num:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        var _item:T__struct_13 = ({ t : ({} : stdgo.time.Time.Time), m : ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), s : new stdgo.Slice<stdgo.GoString>((0 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setString__(), a : new stdgo.GoArray<stdgo.GoString>(...[for (i in 0 ... 1) ("" : stdgo.GoString)]), i : stdgo.Go.toInterface(_num), p : stdgo.Go.pointer(_num) } : T__struct_13);
        var __tmp__ = marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_item))), _data:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Marshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        _err = unmarshal(_data, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_item) : stdgo.StdGoTypes.Ref<T__struct_13>))));
        if (_err != null) {
            _t.fatalf(("Unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
/**
    
    
    
**/
@:structInit class T_testUnmarshalEmbeddedUnexported_91___localname___embed1 {
    public var q : stdgo.StdGoTypes.GoInt = 0;
    public function new(?q:stdgo.StdGoTypes.GoInt) {
        if (q != null) this.q = q;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testUnmarshalEmbeddedUnexported_91___localname___embed1(q);
    }
}
/**
    
    
    
**/
@:structInit class T_testUnmarshalEmbeddedUnexported_92___localname___embed2 {
    public var q : stdgo.StdGoTypes.GoInt = 0;
    public function new(?q:stdgo.StdGoTypes.GoInt) {
        if (q != null) this.q = q;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testUnmarshalEmbeddedUnexported_92___localname___embed2(q);
    }
}
/**
    
    
    
**/
@:structInit class T_testUnmarshalEmbeddedUnexported_93___localname___embed3 {
    @:tag("`json:\",string\"`")
    public var q : stdgo.StdGoTypes.GoInt64 = 0;
    public function new(?q:stdgo.StdGoTypes.GoInt64) {
        if (q != null) this.q = q;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testUnmarshalEmbeddedUnexported_93___localname___embed3(q);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_94___localname___S1_static_extension) class T_testUnmarshalEmbeddedUnexported_94___localname___S1 {
    @:embedded
    public var _embed1 : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_91___localname___embed1> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_91___localname___embed1>);
    public var r : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_embed1:stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_91___localname___embed1>, ?r:stdgo.StdGoTypes.GoInt) {
        if (_embed1 != null) this._embed1 = _embed1;
        if (r != null) this.r = r;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testUnmarshalEmbeddedUnexported_94___localname___S1(_embed1, r);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_95___localname___S2_static_extension) class T_testUnmarshalEmbeddedUnexported_95___localname___S2 {
    @:embedded
    public var _embed1 : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_91___localname___embed1> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_91___localname___embed1>);
    public var q : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_embed1:stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_91___localname___embed1>, ?q:stdgo.StdGoTypes.GoInt) {
        if (_embed1 != null) this._embed1 = _embed1;
        if (q != null) this.q = q;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testUnmarshalEmbeddedUnexported_95___localname___S2(_embed1, q);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_96___localname___S3_static_extension) class T_testUnmarshalEmbeddedUnexported_96___localname___S3 {
    @:embedded
    public var _embed1 : stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_91___localname___embed1 = ({} : stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_91___localname___embed1);
    public var r : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_embed1:stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_91___localname___embed1, ?r:stdgo.StdGoTypes.GoInt) {
        if (_embed1 != null) this._embed1 = _embed1;
        if (r != null) this.r = r;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testUnmarshalEmbeddedUnexported_96___localname___S3(_embed1, r);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_97___localname___S4_static_extension) class T_testUnmarshalEmbeddedUnexported_97___localname___S4 {
    @:embedded
    public var _embed1 : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_91___localname___embed1> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_91___localname___embed1>);
    @:embedded
    public var _embed2 : stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_92___localname___embed2 = ({} : stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_92___localname___embed2);
    public function new(?_embed1:stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_91___localname___embed1>, ?_embed2:stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_92___localname___embed2) {
        if (_embed1 != null) this._embed1 = _embed1;
        if (_embed2 != null) this._embed2 = _embed2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testUnmarshalEmbeddedUnexported_97___localname___S4(_embed1, _embed2);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_98___localname___S5_static_extension) class T_testUnmarshalEmbeddedUnexported_98___localname___S5 {
    @:embedded
    public var _embed3 : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_93___localname___embed3> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_93___localname___embed3>);
    public var r : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_embed3:stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_93___localname___embed3>, ?r:stdgo.StdGoTypes.GoInt) {
        if (_embed3 != null) this._embed3 = _embed3;
        if (r != null) this.r = r;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testUnmarshalEmbeddedUnexported_98___localname___S5(_embed3, r);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_99___localname___S6_static_extension) class T_testUnmarshalEmbeddedUnexported_99___localname___S6 {
    @:embedded
    @:tag("`json:\"embed1\"`")
    public var _embed1 : stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_91___localname___embed1 = ({} : stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_91___localname___embed1);
    public function new(?_embed1:stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_91___localname___embed1) {
        if (_embed1 != null) this._embed1 = _embed1;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testUnmarshalEmbeddedUnexported_99___localname___S6(_embed1);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_100___localname___S7_static_extension) class T_testUnmarshalEmbeddedUnexported_100___localname___S7 {
    @:embedded
    @:tag("`json:\"embed1\"`")
    public var _embed1 : stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_91___localname___embed1 = ({} : stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_91___localname___embed1);
    @:embedded
    public var _embed2 : stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_92___localname___embed2 = ({} : stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_92___localname___embed2);
    public function new(?_embed1:stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_91___localname___embed1, ?_embed2:stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_92___localname___embed2) {
        if (_embed1 != null) this._embed1 = _embed1;
        if (_embed2 != null) this._embed2 = _embed2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testUnmarshalEmbeddedUnexported_100___localname___S7(_embed1, _embed2);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_101___localname___S8_static_extension) class T_testUnmarshalEmbeddedUnexported_101___localname___S8 {
    @:embedded
    @:tag("`json:\"embed1\"`")
    public var _embed1 : stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_91___localname___embed1 = ({} : stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_91___localname___embed1);
    @:embedded
    @:tag("`json:\"embed2\"`")
    public var _embed2 : stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_92___localname___embed2 = ({} : stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_92___localname___embed2);
    public var q : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_embed1:stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_91___localname___embed1, ?_embed2:stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_92___localname___embed2, ?q:stdgo.StdGoTypes.GoInt) {
        if (_embed1 != null) this._embed1 = _embed1;
        if (_embed2 != null) this._embed2 = _embed2;
        if (q != null) this.q = q;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testUnmarshalEmbeddedUnexported_101___localname___S8(_embed1, _embed2, q);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_102___localname___S9_static_extension) class T_testUnmarshalEmbeddedUnexported_102___localname___S9 {
    @:embedded
    @:tag("`json:\"embed\"`")
    public var _unexportedWithMethods : stdgo.encoding.json.Json.T_unexportedWithMethods = ({} : stdgo.encoding.json.Json.T_unexportedWithMethods);
    public function new(?_unexportedWithMethods:stdgo.encoding.json.Json.T_unexportedWithMethods) {
        if (_unexportedWithMethods != null) this._unexportedWithMethods = _unexportedWithMethods;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function f() _unexportedWithMethods.f();
    public function __copy__() {
        return new T_testUnmarshalEmbeddedUnexported_102___localname___S9(_unexportedWithMethods);
    }
}
/**
    // Test unmarshal behavior with regards to embedded unexported structs.
    //
    // (Issue 21357) If the embedded struct is a pointer and is unallocated,
    // this returns an error because unmarshal cannot set the field.
    //
    // (Issue 24152) If the embedded struct is given an explicit name,
    // ensure that the normal unmarshal logic does not panic in reflect.
    //
    // (Issue 28145) If the embedded struct is given an explicit name and has
    // exported methods, don't cause a panic trying to get its value.
**/
function testUnmarshalEmbeddedUnexported(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        var _tests = (new stdgo.Slice<T__struct_14>(
9,
9,
({ _in : ("{\"R\":2,\"Q\":1}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_94___localname___S1)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_94___localname___S1>)), _out : stdgo.Go.toInterface((stdgo.Go.setRef(({ r : (2 : stdgo.StdGoTypes.GoInt) } : stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_94___localname___S1)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_94___localname___S1>)), _err : stdgo.fmt.Fmt.errorf(("json: cannot set embedded pointer to unexported struct: json.embed1" : stdgo.GoString)) } : T__struct_14),
({ _in : ("{\"Q\":1}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_95___localname___S2)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_95___localname___S2>)), _out : stdgo.Go.toInterface((stdgo.Go.setRef(({ q : (1 : stdgo.StdGoTypes.GoInt) } : stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_95___localname___S2)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_95___localname___S2>)), _err : (null : stdgo.Error) } : T__struct_14),
({ _in : ("{\"R\":2,\"Q\":1}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_96___localname___S3)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_96___localname___S3>)), _out : stdgo.Go.toInterface((stdgo.Go.setRef(({ _embed1 : ({ q : (1 : stdgo.StdGoTypes.GoInt) } : stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_91___localname___embed1), r : (2 : stdgo.StdGoTypes.GoInt) } : stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_96___localname___S3)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_96___localname___S3>)), _err : (null : stdgo.Error) } : T__struct_14),
({ _in : ("{\"R\":2}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_97___localname___S4)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_97___localname___S4>)), _out : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_97___localname___S4)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_97___localname___S4>)), _err : (null : stdgo.Error) } : T__struct_14),
({ _in : ("{\"R\":2,\"Q\":1}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_98___localname___S5)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_98___localname___S5>)), _out : stdgo.Go.toInterface((stdgo.Go.setRef(({ r : (2 : stdgo.StdGoTypes.GoInt) } : stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_98___localname___S5)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_98___localname___S5>)), _err : stdgo.fmt.Fmt.errorf(("json: cannot set embedded pointer to unexported struct: json.embed3" : stdgo.GoString)) } : T__struct_14),
({ _in : ("{\"embed1\": {\"Q\": 1}}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_99___localname___S6)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_99___localname___S6>)), _out : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_99___localname___S6((new stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_91___localname___embed1((1 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_91___localname___embed1)) : stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_99___localname___S6)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_99___localname___S6>)), _err : (null : stdgo.Error) } : T__struct_14),
({ _in : ("{\"embed1\": {\"Q\": 1}, \"Q\": 2}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_100___localname___S7)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_100___localname___S7>)), _out : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_100___localname___S7((new stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_91___localname___embed1((1 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_91___localname___embed1), (new stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_92___localname___embed2((2 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_92___localname___embed2)) : stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_100___localname___S7)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_100___localname___S7>)), _err : (null : stdgo.Error) } : T__struct_14),
({ _in : ("{\"embed1\": {\"Q\": 1}, \"embed2\": {\"Q\": 2}, \"Q\": 3}" : stdgo.GoString), _ptr : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_101___localname___S8)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_101___localname___S8>)), _out : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_101___localname___S8((new stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_91___localname___embed1((1 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_91___localname___embed1), (new stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_92___localname___embed2((2 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_92___localname___embed2), (3 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_101___localname___S8)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_101___localname___S8>)), _err : (null : stdgo.Error) } : T__struct_14),
({ _in : ("{\"embed\": {}}" : stdgo.GoString), _ptr : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_102___localname___S9)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_102___localname___S9>))), _out : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_102___localname___S9() : stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_102___localname___S9)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_102___localname___S9>))), _err : (null : stdgo.Error) } : T__struct_14)) : stdgo.Slice<T__struct_14>);
        for (_i => _tt in _tests) {
            var _err:stdgo.Error = unmarshal((_tt._in : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _tt._ptr);
            if (!_equalError(_err, _tt._err)) {
                _t.errorf(("#%d: %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._err));
            };
            if (!stdgo.reflect.Reflect.deepEqual(_tt._ptr, _tt._out)) {
                _t.errorf(("#%d: mismatch\ngot:  %#+v\nwant: %#+v" : stdgo.GoString), stdgo.Go.toInterface(_i), _tt._ptr, _tt._out);
            };
        };
    }
function testUnmarshalErrorAfterMultipleJSON(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _tests = (new stdgo.Slice<T_indentErrorTest>(5, 5, ({ _in : ("1 false null :" : stdgo.GoString), _err : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.SyntaxError(("invalid character \':\' looking for beginning of value" : stdgo.GoString), (14i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.encoding.json.Json.SyntaxError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SyntaxError>)) } : T_indentErrorTest), ({ _in : ("1 [] [,]" : stdgo.GoString), _err : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.SyntaxError(("invalid character \',\' looking for beginning of value" : stdgo.GoString), (7i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.encoding.json.Json.SyntaxError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SyntaxError>)) } : T_indentErrorTest), ({ _in : ("1 [] [true:]" : stdgo.GoString), _err : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.SyntaxError(("invalid character \':\' after array element" : stdgo.GoString), (11i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.encoding.json.Json.SyntaxError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SyntaxError>)) } : T_indentErrorTest), ({ _in : ("1  {}    {\"x\"=}" : stdgo.GoString), _err : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.SyntaxError(("invalid character \'=\' after object key" : stdgo.GoString), (14i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.encoding.json.Json.SyntaxError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SyntaxError>)) } : T_indentErrorTest), ({ _in : ("falsetruenul#" : stdgo.GoString), _err : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.SyntaxError(("invalid character \'#\' in literal null (expecting \'l\')" : stdgo.GoString), (13i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.encoding.json.Json.SyntaxError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SyntaxError>)) } : T_indentErrorTest)) : stdgo.Slice<T_indentErrorTest>);
        for (_i => _tt in _tests) {
            var _dec = newDecoder(stdgo.Go.asInterface(stdgo.strings.Strings.newReader(_tt._in?.__copy__())));
            var _err:stdgo.Error = (null : stdgo.Error);
            while (true) {
                var _v:stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
                {
                    _err = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_v) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>)));
                    if (_err != null) {
                        break;
                    };
                };
            };
            if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._err))) {
                _t.errorf(("#%d: got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._err));
            };
        };
    }
function testUnmarshalPanic(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _got:stdgo.StdGoTypes.AnyInterface = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (!stdgo.reflect.Reflect.deepEqual(_got, stdgo.Go.toInterface((57005 : stdgo.StdGoTypes.GoInt)))) {
                            _t.errorf(("panic() = (%T)(%v), want 0xdead" : stdgo.GoString), _got, _got);
                        };
                    };
                };
                a();
            });
            unmarshal((("{}" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.T_unmarshalPanic() : stdgo.encoding.json.Json.T_unmarshalPanic)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_unmarshalPanic>))));
            _t.fatalf(("Unmarshal should have panicked" : stdgo.GoString));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
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
            return;
        };
    }
/**
    // The decoder used to hang if decoding into an interface pointing to its own address.
    // See golang.org/issues/31740.
**/
function testUnmarshalRecursivePointer(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _v:stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
        _v = stdgo.Go.toInterface((stdgo.Go.setRef(_v) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>));
        var _data = (("{\"a\": \"b\"}" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        {
            var _err:stdgo.Error = unmarshal(_data, _v);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
/**
    // Test unmarshal to a map, where the map key is a user defined type.
    // See golang.org/issues/34437.
**/
function testUnmarshalMapWithTextUnmarshalerStringKey(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _p:stdgo.GoMap<T_textUnmarshalerString, stdgo.GoString> = (null : stdgo.GoMap<stdgo.encoding.json.Json.T_textUnmarshalerString, stdgo.GoString>);
        {
            var _err:stdgo.Error = unmarshal((("{\"FOO\": \"1\"}" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), stdgo.Go.toInterface((stdgo.Go.setRef(_p) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.encoding.json.Json.T_textUnmarshalerString, stdgo.GoString>>)));
            if (_err != null) {
                _t.fatalf(("Unmarshal unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (_p != null && _p.exists((("foo" : stdgo.GoString) : stdgo.encoding.json.Json.T_textUnmarshalerString)) ? { _0 : _p[(("foo" : stdgo.GoString) : stdgo.encoding.json.Json.T_textUnmarshalerString)], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), __8:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                _t.errorf(("Key \"foo\" does not exist in map: %v" : stdgo.GoString), stdgo.Go.toInterface(_p));
            };
        };
    }
/**
    // See golang.org/issues/38126.
    
    
**/
@:structInit class T_testUnmarshalRescanLiteralMangledUnquote_103___localname___T {
    @:tag("`json:\"F1,string\"`")
    public var f1 : stdgo.GoString = "";
    public function new(?f1:stdgo.GoString) {
        if (f1 != null) this.f1 = f1;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testUnmarshalRescanLiteralMangledUnquote_103___localname___T(f1);
    }
}
function testUnmarshalRescanLiteralMangledUnquote(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _p:stdgo.GoMap<T_textUnmarshalerString, stdgo.GoString> = (null : stdgo.GoMap<stdgo.encoding.json.Json.T_textUnmarshalerString, stdgo.GoString>);
        {
            var _err:stdgo.Error = unmarshal((("{\"开源\":\"12345开源\"}" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), stdgo.Go.toInterface((stdgo.Go.setRef(_p) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.encoding.json.Json.T_textUnmarshalerString, stdgo.GoString>>)));
            if (_err != null) {
                _t.fatalf(("Unmarshal unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = (_p != null && _p.exists((("开源" : stdgo.GoString) : stdgo.encoding.json.Json.T_textUnmarshalerString)) ? { _0 : _p[(("开源" : stdgo.GoString) : stdgo.encoding.json.Json.T_textUnmarshalerString)], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), __8:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                _t.errorf(("Key \"开源\" does not exist in map: %v" : stdgo.GoString), stdgo.Go.toInterface(_p));
            };
        };
        {};
        var _t1:stdgo.encoding.json.Json.T_testUnmarshalRescanLiteralMangledUnquote_103___localname___T = (new stdgo.encoding.json.Json.T_testUnmarshalRescanLiteralMangledUnquote_103___localname___T(("aaa\tbbb" : stdgo.GoString)) : stdgo.encoding.json.Json.T_testUnmarshalRescanLiteralMangledUnquote_103___localname___T);
        var __tmp__ = marshal(stdgo.Go.toInterface(_t1)), _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Marshal unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _t2:T_testUnmarshalRescanLiteralMangledUnquote_103___localname___T = ({} : stdgo.encoding.json.Json.T_testUnmarshalRescanLiteralMangledUnquote_103___localname___T);
        {
            var _err:stdgo.Error = unmarshal(_b, stdgo.Go.toInterface((stdgo.Go.setRef(_t2) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testUnmarshalRescanLiteralMangledUnquote_103___localname___T>)));
            if (_err != null) {
                _t.fatalf(("Unmarshal unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        if (stdgo.Go.toInterface(_t1) != stdgo.Go.toInterface(_t2)) {
            _t.errorf(("Marshal and Unmarshal roundtrip mismatch: want %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_t1), stdgo.Go.toInterface(_t2));
        };
        var _input = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            @:mergeBlock {
                x.set((("FOO" : stdgo.GoString) : stdgo.encoding.json.Json.T_textUnmarshalerString), stdgo.Go.str());
                x.set((("\"" : stdgo.GoString) : stdgo.encoding.json.Json.T_textUnmarshalerString), stdgo.Go.str());
            };
            x;
        } : stdgo.GoMap<stdgo.encoding.json.Json.T_textUnmarshalerString, stdgo.GoString>);
        var __tmp__ = marshal(stdgo.Go.toInterface(_input)), _encoded:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Marshal unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _got:stdgo.GoMap<T_textUnmarshalerString, stdgo.GoString> = (null : stdgo.GoMap<stdgo.encoding.json.Json.T_textUnmarshalerString, stdgo.GoString>);
        {
            var _err:stdgo.Error = unmarshal(_encoded, stdgo.Go.toInterface((stdgo.Go.setRef(_got) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.encoding.json.Json.T_textUnmarshalerString, stdgo.GoString>>)));
            if (_err != null) {
                _t.fatalf(("Unmarshal unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        var _want = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            @:mergeBlock {
                x.set((("foo" : stdgo.GoString) : stdgo.encoding.json.Json.T_textUnmarshalerString), stdgo.Go.str());
                x.set((("\"" : stdgo.GoString) : stdgo.encoding.json.Json.T_textUnmarshalerString), stdgo.Go.str());
            };
            x;
        } : stdgo.GoMap<stdgo.encoding.json.Json.T_textUnmarshalerString, stdgo.GoString>);
        if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got))) {
            _t.fatalf(("Unexpected roundtrip result:\nwant: %q\ngot:  %q" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
        };
    }
function testUnmarshalMaxDepth(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _testcases = (new stdgo.Slice<T__struct_16>(6, 6, ({ _name : ("ArrayUnderMaxNestingDepth" : stdgo.GoString), _data : ("{\"a\":" : stdgo.GoString) + stdgo.strings.Strings.repeat(("[" : stdgo.GoString), (9999 : stdgo.StdGoTypes.GoInt))?.__copy__() + stdgo.strings.Strings.repeat(("]" : stdgo.GoString), (9999 : stdgo.StdGoTypes.GoInt))?.__copy__() + ("}" : stdgo.GoString)?.__copy__()?.__copy__(), _errMaxDepth : false } : T__struct_16), ({ _name : ("ArrayOverMaxNestingDepth" : stdgo.GoString), _data : ("{\"a\":" : stdgo.GoString) + stdgo.strings.Strings.repeat(("[" : stdgo.GoString), (10000 : stdgo.StdGoTypes.GoInt))?.__copy__() + stdgo.strings.Strings.repeat(("]" : stdgo.GoString), (10000 : stdgo.StdGoTypes.GoInt))?.__copy__() + ("}" : stdgo.GoString)?.__copy__()?.__copy__(), _errMaxDepth : true } : T__struct_16), ({ _name : ("ArrayOverStackDepth" : stdgo.GoString), _data : ("{\"a\":" : stdgo.GoString) + stdgo.strings.Strings.repeat(("[" : stdgo.GoString), (3000000 : stdgo.StdGoTypes.GoInt))?.__copy__() + stdgo.strings.Strings.repeat(("]" : stdgo.GoString), (3000000 : stdgo.StdGoTypes.GoInt))?.__copy__() + ("}" : stdgo.GoString)?.__copy__()?.__copy__(), _errMaxDepth : true } : T__struct_16), ({ _name : ("ObjectUnderMaxNestingDepth" : stdgo.GoString), _data : ("{\"a\":" : stdgo.GoString) + stdgo.strings.Strings.repeat(("{\"a\":" : stdgo.GoString), (9999 : stdgo.StdGoTypes.GoInt))?.__copy__() + ("0" : stdgo.GoString)?.__copy__() + stdgo.strings.Strings.repeat(("}" : stdgo.GoString), (9999 : stdgo.StdGoTypes.GoInt))?.__copy__() + ("}" : stdgo.GoString)?.__copy__()?.__copy__(), _errMaxDepth : false } : T__struct_16), ({ _name : ("ObjectOverMaxNestingDepth" : stdgo.GoString), _data : ("{\"a\":" : stdgo.GoString) + stdgo.strings.Strings.repeat(("{\"a\":" : stdgo.GoString), (10000 : stdgo.StdGoTypes.GoInt))?.__copy__() + ("0" : stdgo.GoString)?.__copy__() + stdgo.strings.Strings.repeat(("}" : stdgo.GoString), (10000 : stdgo.StdGoTypes.GoInt))?.__copy__() + ("}" : stdgo.GoString)?.__copy__()?.__copy__(), _errMaxDepth : true } : T__struct_16), ({ _name : ("ObjectOverStackDepth" : stdgo.GoString), _data : ("{\"a\":" : stdgo.GoString) + stdgo.strings.Strings.repeat(("{\"a\":" : stdgo.GoString), (3000000 : stdgo.StdGoTypes.GoInt))?.__copy__() + ("0" : stdgo.GoString)?.__copy__() + stdgo.strings.Strings.repeat(("}" : stdgo.GoString), (3000000 : stdgo.StdGoTypes.GoInt))?.__copy__() + ("}" : stdgo.GoString)?.__copy__()?.__copy__(), _errMaxDepth : true } : T__struct_16)) : stdgo.Slice<T__struct_16>);
        var _targets = (new stdgo.Slice<T__struct_17>(4, 4, ({ _name : ("unstructured" : stdgo.GoString), _newValue : function():stdgo.StdGoTypes.AnyInterface {
            var _v:stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
            return stdgo.Go.toInterface((stdgo.Go.setRef(_v) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>));
        } } : T__struct_17), ({ _name : ("typed named field" : stdgo.GoString), _newValue : function():stdgo.StdGoTypes.AnyInterface {
            var _v:T__struct_18 = ({ a : (null : stdgo.StdGoTypes.AnyInterface) } : T__struct_18);
            return stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_v) : stdgo.StdGoTypes.Ref<T__struct_18>)));
        } } : T__struct_17), ({ _name : ("typed missing field" : stdgo.GoString), _newValue : function():stdgo.StdGoTypes.AnyInterface {
            var _v:T__struct_19 = ({ b : (null : stdgo.StdGoTypes.AnyInterface) } : T__struct_19);
            return stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_v) : stdgo.StdGoTypes.Ref<T__struct_19>)));
        } } : T__struct_17), ({ _name : ("custom unmarshaler" : stdgo.GoString), _newValue : function():stdgo.StdGoTypes.AnyInterface {
            var _v:stdgo.encoding.json.Json.T_unmarshaler = (new stdgo.encoding.json.Json.T_unmarshaler() : stdgo.encoding.json.Json.T_unmarshaler);
            return stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_v) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_unmarshaler>)));
        } } : T__struct_17)) : stdgo.Slice<T__struct_17>);
        for (__8 => _tc in _testcases) {
            for (__9 => _target in _targets) {
                _t.run(_target._name + ("-" : stdgo.GoString)?.__copy__() + _tc._name?.__copy__()?.__copy__(), function(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
                    var _err:stdgo.Error = unmarshal((_tc._data : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _target._newValue());
                    if (!_tc._errMaxDepth) {
                        if (_err != null) {
                            _t.errorf(("unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                        };
                    } else {
                        if (_err == null) {
                            _t.errorf(("expected error containing \'exceeded max depth\', got none" : stdgo.GoString));
                        } else if (!stdgo.strings.Strings.contains(_err.error()?.__copy__(), ("exceeded max depth" : stdgo.GoString))) {
                            _t.errorf(("expected error containing \'exceeded max depth\', got: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                        };
                    };
                });
            };
        };
    }
/**
    // Marshal returns the JSON encoding of v.
    //
    // Marshal traverses the value v recursively.
    // If an encountered value implements the Marshaler interface
    // and is not a nil pointer, Marshal calls its MarshalJSON method
    // to produce JSON. If no MarshalJSON method is present but the
    // value implements encoding.TextMarshaler instead, Marshal calls
    // its MarshalText method and encodes the result as a JSON string.
    // The nil pointer exception is not strictly necessary
    // but mimics a similar, necessary exception in the behavior of
    // UnmarshalJSON.
    //
    // Otherwise, Marshal uses the following type-dependent default encodings:
    //
    // Boolean values encode as JSON booleans.
    //
    // Floating point, integer, and Number values encode as JSON numbers.
    // NaN and +/-Inf values will return an [UnsupportedValueError].
    //
    // String values encode as JSON strings coerced to valid UTF-8,
    // replacing invalid bytes with the Unicode replacement rune.
    // So that the JSON will be safe to embed inside HTML <script> tags,
    // the string is encoded using HTMLEscape,
    // which replaces "<", ">", "&", U+2028, and U+2029 are escaped
    // to "\u003c","\u003e", "\u0026", "\u2028", and "\u2029".
    // This replacement can be disabled when using an Encoder,
    // by calling SetEscapeHTML(false).
    //
    // Array and slice values encode as JSON arrays, except that
    // []byte encodes as a base64-encoded string, and a nil slice
    // encodes as the null JSON value.
    //
    // Struct values encode as JSON objects.
    // Each exported struct field becomes a member of the object, using the
    // field name as the object key, unless the field is omitted for one of the
    // reasons given below.
    //
    // The encoding of each struct field can be customized by the format string
    // stored under the "json" key in the struct field's tag.
    // The format string gives the name of the field, possibly followed by a
    // comma-separated list of options. The name may be empty in order to
    // specify options without overriding the default field name.
    //
    // The "omitempty" option specifies that the field should be omitted
    // from the encoding if the field has an empty value, defined as
    // false, 0, a nil pointer, a nil interface value, and any empty array,
    // slice, map, or string.
    //
    // As a special case, if the field tag is "-", the field is always omitted.
    // Note that a field with name "-" can still be generated using the tag "-,".
    //
    // Examples of struct field tags and their meanings:
    //
    //	// Field appears in JSON as key "myName".
    //	Field int `json:"myName"`
    //
    //	// Field appears in JSON as key "myName" and
    //	// the field is omitted from the object if its value is empty,
    //	// as defined above.
    //	Field int `json:"myName,omitempty"`
    //
    //	// Field appears in JSON as key "Field" (the default), but
    //	// the field is skipped if empty.
    //	// Note the leading comma.
    //	Field int `json:",omitempty"`
    //
    //	// Field is ignored by this package.
    //	Field int `json:"-"`
    //
    //	// Field appears in JSON as key "-".
    //	Field int `json:"-,"`
    //
    // The "string" option signals that a field is stored as JSON inside a
    // JSON-encoded string. It applies only to fields of string, floating point,
    // integer, or boolean types. This extra level of encoding is sometimes used
    // when communicating with JavaScript programs:
    //
    //	Int64String int64 `json:",string"`
    //
    // The key name will be used if it's a non-empty string consisting of
    // only Unicode letters, digits, and ASCII punctuation except quotation
    // marks, backslash, and comma.
    //
    // Anonymous struct fields are usually marshaled as if their inner exported fields
    // were fields in the outer struct, subject to the usual Go visibility rules amended
    // as described in the next paragraph.
    // An anonymous struct field with a name given in its JSON tag is treated as
    // having that name, rather than being anonymous.
    // An anonymous struct field of interface type is treated the same as having
    // that type as its name, rather than being anonymous.
    //
    // The Go visibility rules for struct fields are amended for JSON when
    // deciding which field to marshal or unmarshal. If there are
    // multiple fields at the same level, and that level is the least
    // nested (and would therefore be the nesting level selected by the
    // usual Go rules), the following extra rules apply:
    //
    // 1) Of those fields, if any are JSON-tagged, only tagged fields are considered,
    // even if there are multiple untagged fields that would otherwise conflict.
    //
    // 2) If there is exactly one field (tagged or not according to the first rule), that is selected.
    //
    // 3) Otherwise there are multiple fields, and all are ignored; no error occurs.
    //
    // Handling of anonymous struct fields is new in Go 1.1.
    // Prior to Go 1.1, anonymous struct fields were ignored. To force ignoring of
    // an anonymous struct field in both current and earlier versions, give the field
    // a JSON tag of "-".
    //
    // Map values encode as JSON objects. The map's key type must either be a
    // string, an integer type, or implement encoding.TextMarshaler. The map keys
    // are sorted and used as JSON object keys by applying the following rules,
    // subject to the UTF-8 coercion described for string values above:
    //   - keys of any string type are used directly
    //   - encoding.TextMarshalers are marshaled
    //   - integer keys are converted to strings
    //
    // Pointer values encode as the value pointed to.
    // A nil pointer encodes as the null JSON value.
    //
    // Interface values encode as the value contained in the interface.
    // A nil interface value encodes as the null JSON value.
    //
    // Channel, complex, and function values cannot be encoded in JSON.
    // Attempting to encode such a value causes Marshal to return
    // an UnsupportedTypeError.
    //
    // JSON cannot represent cyclic data structures and Marshal does not
    // handle them. Passing cyclic structures to Marshal will result in
    // an error.
**/
function marshal(_v:stdgo.StdGoTypes.AnyInterface):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _e = _newEncodeState();
            {
                var _a0 = _e;
                __deferstack__.unshift(() -> _encodeStatePool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_a0))));
            };
            var _err:stdgo.Error = _e._marshal(_v, ({ _escapeHTML : true } : stdgo.encoding.json.Json.T_encOpts));
            if (_err != null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return { _0 : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _1 : _err };
                };
            };
            var _buf = (((null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : stdgo.Slice<stdgo.StdGoTypes.GoByte>).__append__(..._e.bytes().__toArray__()));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return { _0 : _buf, _1 : (null : stdgo.Error) };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _1 : (null : stdgo.Error) };
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
            return { _0 : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _1 : (null : stdgo.Error) };
        };
    }
/**
    // MarshalIndent is like Marshal but applies Indent to format the output.
    // Each JSON element in the output will begin on a new line beginning with prefix
    // followed by one or more copies of indent according to the indentation nesting.
**/
function marshalIndent(_v:stdgo.StdGoTypes.AnyInterface, _prefix:stdgo.GoString, _indent:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        var __tmp__ = marshal(_v), _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _1 : _err };
        };
        var _b2 = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((0 : stdgo.StdGoTypes.GoInt).toBasic(), (2 : stdgo.StdGoTypes.GoInt) * (_b.length)).__setNumber32__();
        {
            var __tmp__ = _appendIndent(_b2, _b, _prefix?.__copy__(), _indent?.__copy__());
            _b2 = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _1 : _err };
        };
        return { _0 : _b2, _1 : (null : stdgo.Error) };
    }
function _newEncodeState():stdgo.StdGoTypes.Ref<T_encodeState> {
        {
            var _v:stdgo.StdGoTypes.AnyInterface = _encodeStatePool.get();
            if (_v != null) {
                var _e = (stdgo.Go.typeAssert((_v : stdgo.StdGoTypes.Ref<T_encodeState>)) : stdgo.StdGoTypes.Ref<T_encodeState>);
                _e.reset();
                if ((_e._ptrSeen.length) > (0 : stdgo.StdGoTypes.GoInt)) {
                    throw stdgo.Go.toInterface(("ptrEncoder.encode should have emptied ptrSeen via defers" : stdgo.GoString));
                };
                _e._ptrLevel = (0u32 : stdgo.StdGoTypes.GoUInt);
                return _e;
            };
        };
        return (stdgo.Go.setRef(({ _ptrSeen : ({
            final x = new stdgo.GoMap.GoAnyInterfaceMap<T_unquotedValue>();
            x.__defaultValue__ = () -> ({} : T_unquotedValue);
            @:mergeBlock {};
            cast x;
        } : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, T_unquotedValue>) } : stdgo.encoding.json.Json.T_encodeState)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_encodeState>);
    }
function _isEmptyValue(_v:stdgo.reflect.Reflect.Value):Bool {
        {
            final __value__ = _v.kind();
            if (__value__ == ((17u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((21u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((23u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((24u32 : stdgo.reflect.Reflect.Kind))) {
                return _v.len() == ((0 : stdgo.StdGoTypes.GoInt));
            } else if (__value__ == ((1u32 : stdgo.reflect.Reflect.Kind))) {
                return _v.bool_() == (false);
            } else if (__value__ == ((2u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((3u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((4u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((5u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((6u32 : stdgo.reflect.Reflect.Kind))) {
                return _v.int_() == ((0i64 : stdgo.StdGoTypes.GoInt64));
            } else if (__value__ == ((7u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((8u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((9u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((10u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((11u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((12u32 : stdgo.reflect.Reflect.Kind))) {
                return _v.uint() == ((0i64 : stdgo.StdGoTypes.GoUInt64));
            } else if (__value__ == ((13u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((14u32 : stdgo.reflect.Reflect.Kind))) {
                return _v.float_() == (0 : stdgo.StdGoTypes.GoFloat64);
            } else if (__value__ == ((20u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((22u32 : stdgo.reflect.Reflect.Kind))) {
                return _v.isNil();
            };
        };
        return false;
    }
function _valueEncoder(_v:stdgo.reflect.Reflect.Value):T_encoderFunc {
        if (!_v.isValid()) {
            return _invalidValueEncoder;
        };
        return _typeEncoder(_v.type());
    }
function _typeEncoder(_t:stdgo.reflect.Reflect.Type_):T_encoderFunc {
        {
            var __tmp__ = _encoderCache.load(stdgo.Go.toInterface(_t)), _fi:stdgo.StdGoTypes.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return (stdgo.Go.typeAssert((_fi : T_encoderFunc)) : T_encoderFunc);
            };
        };
        var __0:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup), __1:T_encoderFunc = (null : stdgo.encoding.json.Json.T_encoderFunc), _f:T_encoderFunc = __1, _wg:stdgo.sync.Sync.WaitGroup = __0;
        _wg.add((1 : stdgo.StdGoTypes.GoInt));
        var __tmp__ = _encoderCache.loadOrStore(stdgo.Go.toInterface(_t), stdgo.Go.toInterface((function(_e:stdgo.StdGoTypes.Ref<T_encodeState>, _v:stdgo.reflect.Reflect.Value, _opts:T_encOpts):Void {
            _wg.wait_();
            _f(_e, _v?.__copy__(), _opts?.__copy__());
        } : T_encoderFunc))), _fi:stdgo.StdGoTypes.AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1;
        if (_loaded) {
            return (stdgo.Go.typeAssert((_fi : T_encoderFunc)) : T_encoderFunc);
        };
        _f = _newTypeEncoder(_t, true);
        _wg.done();
        _encoderCache.store(stdgo.Go.toInterface(_t), stdgo.Go.toInterface(_f));
        return _f;
    }
/**
    // newTypeEncoder constructs an encoderFunc for a type.
    // The returned encoder only checks CanAddr when allowAddr is true.
**/
function _newTypeEncoder(_t:stdgo.reflect.Reflect.Type_, _allowAddr:Bool):T_encoderFunc {
        if (((_t.kind() != (22u32 : stdgo.reflect.Reflect.Kind)) && _allowAddr) && stdgo.reflect.Reflect.pointerTo(_t).implements_(_marshalerType)) {
            return _newCondAddrEncoder(_addrMarshalerEncoder, _newTypeEncoder(_t, false));
        };
        if (_t.implements_(_marshalerType)) {
            return _marshalerEncoder;
        };
        if (((_t.kind() != (22u32 : stdgo.reflect.Reflect.Kind)) && _allowAddr) && stdgo.reflect.Reflect.pointerTo(_t).implements_(_textMarshalerType)) {
            return _newCondAddrEncoder(_addrTextMarshalerEncoder, _newTypeEncoder(_t, false));
        };
        if (_t.implements_(_textMarshalerType)) {
            return _textMarshalerEncoder;
        };
        {
            final __value__ = _t.kind();
            if (__value__ == ((1u32 : stdgo.reflect.Reflect.Kind))) {
                return _boolEncoder;
            } else if (__value__ == ((2u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((3u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((4u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((5u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((6u32 : stdgo.reflect.Reflect.Kind))) {
                return _intEncoder;
            } else if (__value__ == ((7u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((8u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((9u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((10u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((11u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((12u32 : stdgo.reflect.Reflect.Kind))) {
                return _uintEncoder;
            } else if (__value__ == ((13u32 : stdgo.reflect.Reflect.Kind))) {
                return _float32Encoder;
            } else if (__value__ == ((14u32 : stdgo.reflect.Reflect.Kind))) {
                return _float64Encoder;
            } else if (__value__ == ((24u32 : stdgo.reflect.Reflect.Kind))) {
                return _stringEncoder;
            } else if (__value__ == ((20u32 : stdgo.reflect.Reflect.Kind))) {
                return _interfaceEncoder;
            } else if (__value__ == ((25u32 : stdgo.reflect.Reflect.Kind))) {
                return _newStructEncoder(_t);
            } else if (__value__ == ((21u32 : stdgo.reflect.Reflect.Kind))) {
                return _newMapEncoder(_t);
            } else if (__value__ == ((23u32 : stdgo.reflect.Reflect.Kind))) {
                return _newSliceEncoder(_t);
            } else if (__value__ == ((17u32 : stdgo.reflect.Reflect.Kind))) {
                return _newArrayEncoder(_t);
            } else if (__value__ == ((22u32 : stdgo.reflect.Reflect.Kind))) {
                return _newPtrEncoder(_t);
            } else {
                return _unsupportedTypeEncoder;
            };
        };
    }
function _invalidValueEncoder(_e:stdgo.StdGoTypes.Ref<T_encodeState>, _v:stdgo.reflect.Reflect.Value, __8:T_encOpts):Void {
        _e.writeString(("null" : stdgo.GoString));
    }
function _marshalerEncoder(_e:stdgo.StdGoTypes.Ref<T_encodeState>, _v:stdgo.reflect.Reflect.Value, _opts:T_encOpts):Void {
        if ((_v.kind() == (22u32 : stdgo.reflect.Reflect.Kind)) && _v.isNil()) {
            _e.writeString(("null" : stdgo.GoString));
            return;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_v.interface_() : Marshaler)) : Marshaler), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.encoding.json.Json.Marshaler), _1 : false };
        }, _m = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _e.writeString(("null" : stdgo.GoString));
            return;
        };
        var __tmp__ = _m.marshalJSON(), _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _e.grow((_b.length));
            var _out = _e.availableBuffer();
            {
                var __tmp__ = _appendCompact(_out, _b, _opts._escapeHTML);
                _out = __tmp__._0;
                _err = __tmp__._1;
            };
            _e.buffer.write(_out);
        };
        if (_err != null) {
            _e._error(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.MarshalerError(_v.type(), _err, ("MarshalJSON" : stdgo.GoString)) : stdgo.encoding.json.Json.MarshalerError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.MarshalerError>)));
        };
    }
function _addrMarshalerEncoder(_e:stdgo.StdGoTypes.Ref<T_encodeState>, _v:stdgo.reflect.Reflect.Value, _opts:T_encOpts):Void {
        var _va:stdgo.reflect.Reflect.Value = _v.addr()?.__copy__();
        if (_va.isNil()) {
            _e.writeString(("null" : stdgo.GoString));
            return;
        };
        var _m:stdgo.encoding.json.Json.Marshaler = (stdgo.Go.typeAssert((_va.interface_() : Marshaler)) : Marshaler);
        var __tmp__ = _m.marshalJSON(), _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _e.grow((_b.length));
            var _out = _e.availableBuffer();
            {
                var __tmp__ = _appendCompact(_out, _b, _opts._escapeHTML);
                _out = __tmp__._0;
                _err = __tmp__._1;
            };
            _e.buffer.write(_out);
        };
        if (_err != null) {
            _e._error(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.MarshalerError(_v.type(), _err, ("MarshalJSON" : stdgo.GoString)) : stdgo.encoding.json.Json.MarshalerError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.MarshalerError>)));
        };
    }
function _textMarshalerEncoder(_e:stdgo.StdGoTypes.Ref<T_encodeState>, _v:stdgo.reflect.Reflect.Value, _opts:T_encOpts):Void {
        if ((_v.kind() == (22u32 : stdgo.reflect.Reflect.Kind)) && _v.isNil()) {
            _e.writeString(("null" : stdgo.GoString));
            return;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_v.interface_() : stdgo.encoding.Encoding.TextMarshaler)) : stdgo.encoding.Encoding.TextMarshaler), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.encoding.Encoding.TextMarshaler), _1 : false };
        }, _m = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _e.writeString(("null" : stdgo.GoString));
            return;
        };
        var __tmp__ = _m.marshalText(), _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _e._error(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.MarshalerError(_v.type(), _err, ("MarshalText" : stdgo.GoString)) : stdgo.encoding.json.Json.MarshalerError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.MarshalerError>)));
        };
        _e.write(_appendString((null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _e.availableBuffer(), _b, _opts._escapeHTML));
    }
function _addrTextMarshalerEncoder(_e:stdgo.StdGoTypes.Ref<T_encodeState>, _v:stdgo.reflect.Reflect.Value, _opts:T_encOpts):Void {
        var _va:stdgo.reflect.Reflect.Value = _v.addr()?.__copy__();
        if (_va.isNil()) {
            _e.writeString(("null" : stdgo.GoString));
            return;
        };
        var _m:stdgo.encoding.Encoding.TextMarshaler = (stdgo.Go.typeAssert((_va.interface_() : stdgo.encoding.Encoding.TextMarshaler)) : stdgo.encoding.Encoding.TextMarshaler);
        var __tmp__ = _m.marshalText(), _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _e._error(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.MarshalerError(_v.type(), _err, ("MarshalText" : stdgo.GoString)) : stdgo.encoding.json.Json.MarshalerError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.MarshalerError>)));
        };
        _e.write(_appendString((null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _e.availableBuffer(), _b, _opts._escapeHTML));
    }
function _boolEncoder(_e:stdgo.StdGoTypes.Ref<T_encodeState>, _v:stdgo.reflect.Reflect.Value, _opts:T_encOpts):Void {
        var _b = _e.availableBuffer();
        _b = _mayAppendQuote(_b, _opts._quoted);
        _b = stdgo.strconv.Strconv.appendBool(_b, _v.bool_());
        _b = _mayAppendQuote(_b, _opts._quoted);
        _e.write(_b);
    }
function _intEncoder(_e:stdgo.StdGoTypes.Ref<T_encodeState>, _v:stdgo.reflect.Reflect.Value, _opts:T_encOpts):Void {
        var _b = _e.availableBuffer();
        _b = _mayAppendQuote(_b, _opts._quoted);
        _b = stdgo.strconv.Strconv.appendInt(_b, _v.int_(), (10 : stdgo.StdGoTypes.GoInt));
        _b = _mayAppendQuote(_b, _opts._quoted);
        _e.write(_b);
    }
function _uintEncoder(_e:stdgo.StdGoTypes.Ref<T_encodeState>, _v:stdgo.reflect.Reflect.Value, _opts:T_encOpts):Void {
        var _b = _e.availableBuffer();
        _b = _mayAppendQuote(_b, _opts._quoted);
        _b = stdgo.strconv.Strconv.appendUint(_b, _v.uint(), (10 : stdgo.StdGoTypes.GoInt));
        _b = _mayAppendQuote(_b, _opts._quoted);
        _e.write(_b);
    }
function _stringEncoder(_e:stdgo.StdGoTypes.Ref<T_encodeState>, _v:stdgo.reflect.Reflect.Value, _opts:T_encOpts):Void {
        if ((_v.type().string() : String) == (_numberType.string() : String)) {
            var _numStr:stdgo.GoString = (_v.string() : stdgo.GoString)?.__copy__();
            if (_numStr == (stdgo.Go.str())) {
                _numStr = ("0" : stdgo.GoString);
            };
            if (!_isValidNumber(_numStr?.__copy__())) {
                _e._error(stdgo.fmt.Fmt.errorf(("json: invalid number literal %q" : stdgo.GoString), stdgo.Go.toInterface(_numStr)));
            };
            var _b = _e.availableBuffer();
            _b = _mayAppendQuote(_b, _opts._quoted);
            _b = (_b.__append__(..._numStr.__toArray__()));
            _b = _mayAppendQuote(_b, _opts._quoted);
            _e.write(_b);
            return;
        };
        if (_opts._quoted) {
            var _b = _appendString(("" : stdgo.GoString), (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_v.string() : stdgo.GoString)?.__copy__(), _opts._escapeHTML);
            _e.write(_appendString((null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _e.availableBuffer(), _b, false));
        } else {
            _e.write(_appendString(("" : stdgo.GoString), _e.availableBuffer(), (_v.string() : stdgo.GoString)?.__copy__(), _opts._escapeHTML));
        };
    }
/**
    // isValidNumber reports whether s is a valid JSON number literal.
**/
function _isValidNumber(_s:stdgo.GoString):Bool {
        if (_s == (stdgo.Go.str())) {
            return false;
        };
        if (_s[(0 : stdgo.StdGoTypes.GoInt)] == ((45 : stdgo.StdGoTypes.GoUInt8))) {
            _s = (_s.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
            if (_s == (stdgo.Go.str())) {
                return false;
            };
        };
        if (_s[(0 : stdgo.StdGoTypes.GoInt)] == ((48 : stdgo.StdGoTypes.GoUInt8))) {
            _s = (_s.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
        } else if (((49 : stdgo.StdGoTypes.GoUInt8) <= _s[(0 : stdgo.StdGoTypes.GoInt)]) && (_s[(0 : stdgo.StdGoTypes.GoInt)] <= (57 : stdgo.StdGoTypes.GoUInt8))) {
            _s = (_s.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
            while (((_s.length > (0 : stdgo.StdGoTypes.GoInt)) && ((48 : stdgo.StdGoTypes.GoUInt8) <= _s[(0 : stdgo.StdGoTypes.GoInt)])) && (_s[(0 : stdgo.StdGoTypes.GoInt)] <= (57 : stdgo.StdGoTypes.GoUInt8))) {
                _s = (_s.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
            };
        } else {
            return false;
        };
        if ((((_s.length >= (2 : stdgo.StdGoTypes.GoInt)) && (_s[(0 : stdgo.StdGoTypes.GoInt)] == (46 : stdgo.StdGoTypes.GoUInt8))) && ((48 : stdgo.StdGoTypes.GoUInt8) <= _s[(1 : stdgo.StdGoTypes.GoInt)])) && (_s[(1 : stdgo.StdGoTypes.GoInt)] <= (57 : stdgo.StdGoTypes.GoUInt8))) {
            _s = (_s.__slice__((2 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
            while (((_s.length > (0 : stdgo.StdGoTypes.GoInt)) && ((48 : stdgo.StdGoTypes.GoUInt8) <= _s[(0 : stdgo.StdGoTypes.GoInt)])) && (_s[(0 : stdgo.StdGoTypes.GoInt)] <= (57 : stdgo.StdGoTypes.GoUInt8))) {
                _s = (_s.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
            };
        };
        if ((_s.length >= (2 : stdgo.StdGoTypes.GoInt)) && ((_s[(0 : stdgo.StdGoTypes.GoInt)] == (101 : stdgo.StdGoTypes.GoUInt8)) || (_s[(0 : stdgo.StdGoTypes.GoInt)] == (69 : stdgo.StdGoTypes.GoUInt8)))) {
            _s = (_s.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
            if ((_s[(0 : stdgo.StdGoTypes.GoInt)] == (43 : stdgo.StdGoTypes.GoUInt8)) || (_s[(0 : stdgo.StdGoTypes.GoInt)] == (45 : stdgo.StdGoTypes.GoUInt8))) {
                _s = (_s.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
                if (_s == (stdgo.Go.str())) {
                    return false;
                };
            };
            while (((_s.length > (0 : stdgo.StdGoTypes.GoInt)) && ((48 : stdgo.StdGoTypes.GoUInt8) <= _s[(0 : stdgo.StdGoTypes.GoInt)])) && (_s[(0 : stdgo.StdGoTypes.GoInt)] <= (57 : stdgo.StdGoTypes.GoUInt8))) {
                _s = (_s.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
            };
        };
        return _s == (stdgo.Go.str());
    }
function _interfaceEncoder(_e:stdgo.StdGoTypes.Ref<T_encodeState>, _v:stdgo.reflect.Reflect.Value, _opts:T_encOpts):Void {
        if (_v.isNil()) {
            _e.writeString(("null" : stdgo.GoString));
            return;
        };
        _e._reflectValue(_v.elem()?.__copy__(), _opts?.__copy__());
    }
function _unsupportedTypeEncoder(_e:stdgo.StdGoTypes.Ref<T_encodeState>, _v:stdgo.reflect.Reflect.Value, __8:T_encOpts):Void {
        _e._error(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.UnsupportedTypeError(_v.type()) : stdgo.encoding.json.Json.UnsupportedTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnsupportedTypeError>)));
    }
function _newStructEncoder(_t:stdgo.reflect.Reflect.Type_):T_encoderFunc {
        var _se:stdgo.encoding.json.Json.T_structEncoder = ({ _fields : _cachedTypeFields(_t)?.__copy__() } : stdgo.encoding.json.Json.T_structEncoder);
        return _se._encode;
    }
function _newMapEncoder(_t:stdgo.reflect.Reflect.Type_):T_encoderFunc {
        {
            final __value__ = _t.key().kind();
            if (__value__ == ((24u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((2u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((3u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((4u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((5u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((6u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((7u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((8u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((9u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((10u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((11u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((12u32 : stdgo.reflect.Reflect.Kind))) {} else {
                if (!_t.key().implements_(_textMarshalerType)) {
                    return _unsupportedTypeEncoder;
                };
            };
        };
        var _me:stdgo.encoding.json.Json.T_mapEncoder = (new stdgo.encoding.json.Json.T_mapEncoder(_typeEncoder(_t.elem())) : stdgo.encoding.json.Json.T_mapEncoder);
        return _me._encode;
    }
function _encodeByteSlice(_e:stdgo.StdGoTypes.Ref<T_encodeState>, _v:stdgo.reflect.Reflect.Value, __8:T_encOpts):Void {
        if (_v.isNil()) {
            _e.writeString(("null" : stdgo.GoString));
            return;
        };
        var _s = _v.bytes();
        var _encodedLen:stdgo.StdGoTypes.GoInt = stdgo.encoding.base64.Base64.stdEncoding.encodedLen((_s.length));
        _e.grow((("\"" : stdgo.GoString).length + _encodedLen) + (("\"" : stdgo.GoString).length));
        var _b = _e.availableBuffer();
        _b = (_b.__append__((34 : stdgo.StdGoTypes.GoUInt8)));
        stdgo.encoding.base64.Base64.stdEncoding.encode(((_b.__slice__((_b.length)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>).__slice__(0, _encodedLen) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _s);
        _b = (_b.__slice__(0, (_b.length) + _encodedLen) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        _b = (_b.__append__((34 : stdgo.StdGoTypes.GoUInt8)));
        _e.write(_b);
    }
function _newSliceEncoder(_t:stdgo.reflect.Reflect.Type_):T_encoderFunc {
        if (_t.elem().kind() == ((8u32 : stdgo.reflect.Reflect.Kind))) {
            var _p:stdgo.reflect.Reflect.Type_ = stdgo.reflect.Reflect.pointerTo(_t.elem());
            if (!_p.implements_(_marshalerType) && !_p.implements_(_textMarshalerType)) {
                return _encodeByteSlice;
            };
        };
        var _enc:stdgo.encoding.json.Json.T_sliceEncoder = (new stdgo.encoding.json.Json.T_sliceEncoder(_newArrayEncoder(_t)) : stdgo.encoding.json.Json.T_sliceEncoder);
        return _enc._encode;
    }
function _newArrayEncoder(_t:stdgo.reflect.Reflect.Type_):T_encoderFunc {
        var _enc:stdgo.encoding.json.Json.T_arrayEncoder = (new stdgo.encoding.json.Json.T_arrayEncoder(_typeEncoder(_t.elem())) : stdgo.encoding.json.Json.T_arrayEncoder);
        return _enc._encode;
    }
function _newPtrEncoder(_t:stdgo.reflect.Reflect.Type_):T_encoderFunc {
        var _enc:stdgo.encoding.json.Json.T_ptrEncoder = (new stdgo.encoding.json.Json.T_ptrEncoder(_typeEncoder(_t.elem())) : stdgo.encoding.json.Json.T_ptrEncoder);
        return _enc._encode;
    }
/**
    // newCondAddrEncoder returns an encoder that checks whether its value
    // CanAddr and delegates to canAddrEnc if so, else to elseEnc.
**/
function _newCondAddrEncoder(_canAddrEnc:T_encoderFunc, _elseEnc:T_encoderFunc):T_encoderFunc {
        var _enc:stdgo.encoding.json.Json.T_condAddrEncoder = ({ _canAddrEnc : _canAddrEnc, _elseEnc : _elseEnc } : stdgo.encoding.json.Json.T_condAddrEncoder);
        return _enc._encode;
    }
function _isValidTag(_s:stdgo.GoString):Bool {
        if (_s == (stdgo.Go.str())) {
            return false;
        };
        for (__8 => _c in _s) {
            if (stdgo.strings.Strings.containsRune(("!#$%&()*+-./:;<=>?@[]^_{|}~ " : stdgo.GoString), _c)) {} else if (!stdgo.unicode.Unicode.isLetter(_c) && !stdgo.unicode.Unicode.isDigit(_c)) {
                return false;
            };
        };
        return true;
    }
function _typeByIndex(_t:stdgo.reflect.Reflect.Type_, _index:stdgo.Slice<stdgo.StdGoTypes.GoInt>):stdgo.reflect.Reflect.Type_ {
        for (__8 => _i in _index) {
            if (_t.kind() == ((22u32 : stdgo.reflect.Reflect.Kind))) {
                _t = _t.elem();
            };
            _t = _t.field(_i).type;
        };
        return _t;
    }
macro function _appendString<Bytes>(__generic__0:haxe.macro.Expr.ExprOf<Bytes>, _dst:haxe.macro.Expr.ExprOf<stdgo.Slice<stdgo.StdGoTypes.GoByte>>, _src:haxe.macro.Expr.ExprOf<Bytes>, _escapeHTML:haxe.macro.Expr.ExprOf<Bool>):haxe.macro.Expr.ExprOf<stdgo.Slice<stdgo.StdGoTypes.GoByte>>;
/**
    // typeFields returns a list of fields that JSON should recognize for the given type.
    // The algorithm is breadth-first search over the set of structs to include - the top struct
    // and then any reachable anonymous structs.
**/
function _typeFields(_t:stdgo.reflect.Reflect.Type_):T_structFields {
        var _current = (new stdgo.Slice<stdgo.encoding.json.Json.T_field>(0, 0) : stdgo.Slice<stdgo.encoding.json.Json.T_field>);
        var _next = (new stdgo.Slice<stdgo.encoding.json.Json.T_field>(1, 1, ({ _typ : _t } : stdgo.encoding.json.Json.T_field)) : stdgo.Slice<stdgo.encoding.json.Json.T_field>);
        var __0:stdgo.GoMap<stdgo.reflect.Reflect.Type_, stdgo.StdGoTypes.GoInt> = (null : stdgo.GoMap<stdgo.reflect.Reflect.Type_, stdgo.StdGoTypes.GoInt>), __1:stdgo.GoMap<stdgo.reflect.Reflect.Type_, stdgo.StdGoTypes.GoInt> = (null : stdgo.GoMap<stdgo.reflect.Reflect.Type_, stdgo.StdGoTypes.GoInt>), _nextCount:stdgo.GoMap<stdgo.reflect.Reflect.Type_, stdgo.StdGoTypes.GoInt> = __1, _count:stdgo.GoMap<stdgo.reflect.Reflect.Type_, stdgo.StdGoTypes.GoInt> = __0;
        var _visited = ({
            final x = new stdgo.GoMap.GoObjectMap<stdgo.reflect.Reflect.Type_, Bool>();
            x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.reflect.Reflect.Type_", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
            x.__defaultValue__ = () -> false;
            @:mergeBlock {};
            cast x;
        } : stdgo.GoMap<stdgo.reflect.Reflect.Type_, Bool>);
        var _fields:stdgo.Slice<T_field> = (null : stdgo.Slice<stdgo.encoding.json.Json.T_field>);
        var _nameEscBuf:stdgo.Slice<stdgo.StdGoTypes.GoByte> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        while ((_next.length) > (0 : stdgo.StdGoTypes.GoInt)) {
            {
                final __tmp__0 = _next;
                final __tmp__1 = (_current.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.encoding.json.Json.T_field>);
                _current = __tmp__0;
                _next = __tmp__1;
            };
            {
                final __tmp__0 = _nextCount;
                final __tmp__1 = ({
                    final x = new stdgo.GoMap.GoObjectMap<stdgo.reflect.Reflect.Type_, stdgo.StdGoTypes.GoInt>();
                    x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.reflect.Reflect.Type_", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
                    x.__defaultValue__ = () -> (0 : stdgo.StdGoTypes.GoInt);
                    @:mergeBlock {};
                    cast x;
                } : stdgo.GoMap<stdgo.reflect.Reflect.Type_, stdgo.StdGoTypes.GoInt>);
                _count = __tmp__0;
                _nextCount = __tmp__1;
            };
            for (__8 => _f in _current) {
                if ((_visited[_f._typ] ?? false)) {
                    continue;
                };
                _visited[_f._typ] = true;
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < _f._typ.numField(), _i++, {
                        var _sf:stdgo.reflect.Reflect.StructField = _f._typ.field(_i)?.__copy__();
                        if (_sf.anonymous) {
                            var _t:stdgo.reflect.Reflect.Type_ = _sf.type;
                            if (_t.kind() == ((22u32 : stdgo.reflect.Reflect.Kind))) {
                                _t = _t.elem();
                            };
                            if (!_sf.isExported() && (_t.kind() != (25u32 : stdgo.reflect.Reflect.Kind))) {
                                continue;
                            };
                        } else if (!_sf.isExported()) {
                            continue;
                        };
                        var _tag:stdgo.GoString = _sf.tag.get(("json" : stdgo.GoString))?.__copy__();
                        if (_tag == (("-" : stdgo.GoString))) {
                            continue;
                        };
                        var __tmp__ = _parseTag(_tag?.__copy__()), _name:stdgo.GoString = __tmp__._0, _opts:stdgo.encoding.json.Json.T_tagOptions = __tmp__._1;
                        if (!_isValidTag(_name?.__copy__())) {
                            _name = stdgo.Go.str()?.__copy__();
                        };
                        var _index = new stdgo.Slice<stdgo.StdGoTypes.GoInt>(((_f._index.length) + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
                        stdgo.Go.copySlice(_index, _f._index);
                        _index[(_f._index.length : stdgo.StdGoTypes.GoInt)] = _i;
                        var _ft:stdgo.reflect.Reflect.Type_ = _sf.type;
                        if ((_ft.name() == stdgo.Go.str()) && (_ft.kind() == (22u32 : stdgo.reflect.Reflect.Kind))) {
                            _ft = _ft.elem();
                        };
                        var _quoted:Bool = false;
                        if (_opts.contains(("string" : stdgo.GoString))) {
                            {
                                final __value__ = _ft.kind();
                                if (__value__ == ((1u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((2u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((3u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((4u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((5u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((6u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((7u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((8u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((9u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((10u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((11u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((12u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((13u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((14u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((24u32 : stdgo.reflect.Reflect.Kind))) {
                                    _quoted = true;
                                };
                            };
                        };
                        if (((_name != stdgo.Go.str()) || !_sf.anonymous) || (_ft.kind() != (25u32 : stdgo.reflect.Reflect.Kind))) {
                            var _tagged:Bool = _name != (stdgo.Go.str());
                            if (_name == (stdgo.Go.str())) {
                                _name = _sf.name?.__copy__();
                            };
                            var _field:stdgo.encoding.json.Json.T_field = ({ _name : _name?.__copy__(), _tag : _tagged, _index : _index, _typ : _ft, _omitEmpty : _opts.contains(("omitempty" : stdgo.GoString)), _quoted : _quoted } : stdgo.encoding.json.Json.T_field);
                            _field._nameBytes = (_field._name : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
                            _nameEscBuf = _appendHTMLEscape((_nameEscBuf.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _field._nameBytes);
                            _field._nameEscHTML = ("\"" : stdgo.GoString) + (_nameEscBuf : stdgo.GoString)?.__copy__() + ("\":" : stdgo.GoString)?.__copy__()?.__copy__();
                            _field._nameNonEsc = ("\"" : stdgo.GoString) + _field._name?.__copy__() + ("\":" : stdgo.GoString)?.__copy__()?.__copy__();
                            _fields = (_fields.__append__(_field?.__copy__()));
                            if ((_count[_f._typ] ?? (0 : stdgo.StdGoTypes.GoInt)) > (1 : stdgo.StdGoTypes.GoInt)) {
                                _fields = (_fields.__append__(_fields[((_fields.length) - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)]));
                            };
                            continue;
                        };
                        (_nextCount[_ft] != null ? _nextCount[_ft]++ : (0 : stdgo.StdGoTypes.GoInt));
                        if ((_nextCount[_ft] ?? (0 : stdgo.StdGoTypes.GoInt)) == ((1 : stdgo.StdGoTypes.GoInt))) {
                            _next = (_next.__append__(({ _name : _ft.name()?.__copy__(), _index : _index, _typ : _ft } : stdgo.encoding.json.Json.T_field)));
                        };
                    });
                };
            };
        };
        stdgo.sort.Sort.slice(stdgo.Go.toInterface(_fields), function(_i:stdgo.StdGoTypes.GoInt, _j:stdgo.StdGoTypes.GoInt):Bool {
            var _x = _fields;
            if (_x[(_i : stdgo.StdGoTypes.GoInt)]._name != (_x[(_j : stdgo.StdGoTypes.GoInt)]._name)) {
                return _x[(_i : stdgo.StdGoTypes.GoInt)]._name < _x[(_j : stdgo.StdGoTypes.GoInt)]._name;
            };
            if ((_x[(_i : stdgo.StdGoTypes.GoInt)]._index.length) != ((_x[(_j : stdgo.StdGoTypes.GoInt)]._index.length))) {
                return (_x[(_i : stdgo.StdGoTypes.GoInt)]._index.length) < (_x[(_j : stdgo.StdGoTypes.GoInt)]._index.length);
            };
            if (_x[(_i : stdgo.StdGoTypes.GoInt)]._tag != (_x[(_j : stdgo.StdGoTypes.GoInt)]._tag)) {
                return _x[(_i : stdgo.StdGoTypes.GoInt)]._tag;
            };
            return (_x : T_byIndex).less(_i, _j);
        });
        var _out = (_fields.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.encoding.json.Json.T_field>);
        {
            var __0:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), __1:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _i:stdgo.StdGoTypes.GoInt = __1, _advance:stdgo.StdGoTypes.GoInt = __0;
            stdgo.Go.cfor(_i < (_fields.length), _i = _i + (_advance), {
                var _fi:stdgo.encoding.json.Json.T_field = _fields[(_i : stdgo.StdGoTypes.GoInt)];
                var _name:stdgo.GoString = _fi._name?.__copy__();
                {
                    _advance = (1 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor((_i + _advance) < (_fields.length), _advance++, {
                        var _fj:stdgo.encoding.json.Json.T_field = _fields[(_i + _advance : stdgo.StdGoTypes.GoInt)];
                        if (_fj._name != (_name)) {
                            break;
                        };
                    });
                };
                if (_advance == ((1 : stdgo.StdGoTypes.GoInt))) {
                    _out = (_out.__append__(_fi?.__copy__()));
                    continue;
                };
                var __tmp__ = _dominantField((_fields.__slice__(_i, _i + _advance) : stdgo.Slice<stdgo.encoding.json.Json.T_field>)), _dominant:stdgo.encoding.json.Json.T_field = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _out = (_out.__append__(_dominant?.__copy__()));
                };
            });
        };
        _fields = _out;
        stdgo.sort.Sort.sort(stdgo.Go.asInterface((_fields : T_byIndex)));
        for (_i in 0 ... _fields.length.toBasic()) {
            var _f = (stdgo.Go.setRef(_fields[(_i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_field>);
            _f._encoder = _typeEncoder(_typeByIndex(_t, _f._index));
        };
        var _exactNameIndex = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_field>>();
            x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_field>);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_field>>);
        var _foldedNameIndex = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_field>>();
            x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_field>);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_field>>);
        for (_i => _field in _fields) {
            _exactNameIndex[_field._name] = (stdgo.Go.setRef(_fields[(_i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_field>);
            {
                var __tmp__ = (_foldedNameIndex != null && _foldedNameIndex.exists((_foldName(_field._nameBytes) : stdgo.GoString)?.__copy__()) ? { _0 : _foldedNameIndex[(_foldName(_field._nameBytes) : stdgo.GoString)?.__copy__()], _1 : true } : { _0 : (null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_field>), _1 : false }), __9:stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_field> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    _foldedNameIndex[(_foldName(_field._nameBytes) : stdgo.GoString)] = (stdgo.Go.setRef(_fields[(_i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_field>);
                };
            };
        };
        return (new stdgo.encoding.json.Json.T_structFields(_fields, _exactNameIndex, _foldedNameIndex) : stdgo.encoding.json.Json.T_structFields);
    }
/**
    // dominantField looks through the fields, all of which are known to
    // have the same name, to find the single field that dominates the
    // others using Go's embedding rules, modified by the presence of
    // JSON tags. If there are multiple top-level fields, the boolean
    // will be false: This condition is an error in Go and we skip all
    // the fields.
**/
function _dominantField(_fields:stdgo.Slice<T_field>):{ var _0 : T_field; var _1 : Bool; } {
        if (((_fields.length > (1 : stdgo.StdGoTypes.GoInt)) && (_fields[(0 : stdgo.StdGoTypes.GoInt)]._index.length == (_fields[(1 : stdgo.StdGoTypes.GoInt)]._index.length))) && (_fields[(0 : stdgo.StdGoTypes.GoInt)]._tag == _fields[(1 : stdgo.StdGoTypes.GoInt)]._tag)) {
            return { _0 : (new stdgo.encoding.json.Json.T_field() : stdgo.encoding.json.Json.T_field), _1 : false };
        };
        return { _0 : _fields[(0 : stdgo.StdGoTypes.GoInt)], _1 : true };
    }
/**
    // cachedTypeFields is like typeFields but uses a cache to avoid repeated work.
**/
function _cachedTypeFields(_t:stdgo.reflect.Reflect.Type_):T_structFields {
        {
            var __tmp__ = _fieldCache.load(stdgo.Go.toInterface(_t)), _f:stdgo.StdGoTypes.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return (stdgo.Go.typeAssert((_f : T_structFields)) : T_structFields)?.__copy__();
            };
        };
        var __tmp__ = _fieldCache.loadOrStore(stdgo.Go.toInterface(_t), stdgo.Go.toInterface(_typeFields(_t))), _f:stdgo.StdGoTypes.AnyInterface = __tmp__._0, __16:Bool = __tmp__._1;
        return (stdgo.Go.typeAssert((_f : T_structFields)) : T_structFields)?.__copy__();
    }
function _mayAppendQuote(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _quoted:Bool):stdgo.Slice<stdgo.StdGoTypes.GoByte> {
        if (_quoted) {
            _b = (_b.__append__((34 : stdgo.StdGoTypes.GoUInt8)));
        };
        return _b;
    }
function testOmitEmpty(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _o:Optionals = ({} : stdgo.encoding.json.Json.Optionals);
        _o.sw = ("something" : stdgo.GoString);
        _o.mr = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>);
        _o.mo = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>);
        var __tmp__ = marshalIndent(stdgo.Go.toInterface((stdgo.Go.setRef(_o) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Optionals>)), stdgo.Go.str()?.__copy__(), (" " : stdgo.GoString)), _got:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var _got:stdgo.GoString = (_got : stdgo.GoString)?.__copy__();
            if (_got != (_optionalsExpected)) {
                _t.errorf((" got: %s\nwant: %s\n" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_optionalsExpected));
            };
        };
    }
function testRoundtripStringTag(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _tests = (new stdgo.Slice<T__struct_21>(2, 2, ({ _name : ("AllTypes" : stdgo.GoString), _in : ({ boolStr : true, intStr : (42i64 : stdgo.StdGoTypes.GoInt64), uintptrStr : (44 : stdgo.StdGoTypes.GoUIntptr), strStr : ("xzbit" : stdgo.GoString), numberStr : (("46" : stdgo.GoString) : stdgo.encoding.json.Json.Number) } : stdgo.encoding.json.Json.StringTag), _want : ("{\n\t\t\t\t\"BoolStr\": \"true\",\n\t\t\t\t\"IntStr\": \"42\",\n\t\t\t\t\"UintptrStr\": \"44\",\n\t\t\t\t\"StrStr\": \"\\\"xzbit\\\"\",\n\t\t\t\t\"NumberStr\": \"46\"\n\t\t\t}" : stdgo.GoString) } : T__struct_21), ({ _name : ("StringDoubleEscapes" : stdgo.GoString), _in : ({ strStr : ("\x08\x0C\n\r\t\"\\" : stdgo.GoString), numberStr : (("0" : stdgo.GoString) : stdgo.encoding.json.Json.Number) } : stdgo.encoding.json.Json.StringTag), _want : ("{\n\t\t\t\t\"BoolStr\": \"false\",\n\t\t\t\t\"IntStr\": \"0\",\n\t\t\t\t\"UintptrStr\": \"0\",\n\t\t\t\t\"StrStr\": \"\\\"\\\\u0008\\\\u000c\\\\n\\\\r\\\\t\\\\\\\"\\\\\\\\\\\"\",\n\t\t\t\t\"NumberStr\": \"0\"\n\t\t\t}" : stdgo.GoString) } : T__struct_21)) : stdgo.Slice<T__struct_21>);
        for (__8 => _test in _tests) {
            _t.run(_test._name?.__copy__(), function(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
                var __tmp__ = marshalIndent(stdgo.Go.toInterface((stdgo.Go.setRef(_test._in) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.StringTag>)), ("\t\t\t" : stdgo.GoString), ("\t" : stdgo.GoString)), _got:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
                {
                    var _got:stdgo.GoString = (_got : stdgo.GoString)?.__copy__();
                    if (_got != (_test._want)) {
                        _t.fatalf((" got: %s\nwant: %s\n" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                    };
                };
                var _s2:StringTag = ({} : stdgo.encoding.json.Json.StringTag);
                {
                    var _err:stdgo.Error = unmarshal(_got, stdgo.Go.toInterface((stdgo.Go.setRef(_s2) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.StringTag>)));
                    if (_err != null) {
                        _t.fatalf(("Decode: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    };
                };
                if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_s2))) {
                    _t.fatalf(("decode didn\'t match.\nsource: %#v\nEncoded as:\n%s\ndecode: %#v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface((_got : stdgo.GoString)), stdgo.Go.toInterface(_s2));
                };
            });
        };
    }
function testEncodeRenamedByteSlice(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _s:stdgo.encoding.json.Json.T_renamedByteSlice = (("abc" : stdgo.GoString) : T_renamedByteSlice);
        var __tmp__ = marshal(stdgo.Go.toInterface(_s)), _result:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _expect:stdgo.GoString = ("\"YWJj\"" : stdgo.GoString);
        if ((_result : stdgo.GoString) != (_expect)) {
            _t.errorf((" got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(_expect));
        };
        var _r:stdgo.encoding.json.Json.T_renamedRenamedByteSlice = (("abc" : stdgo.GoString) : T_renamedRenamedByteSlice);
        {
            var __tmp__ = marshal(stdgo.Go.toInterface(_r));
            _result = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        if ((_result : stdgo.GoString) != (_expect)) {
            _t.errorf((" got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(_expect));
        };
    }
function testSamePointerNoCycle(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        {
            var __tmp__ = marshal(stdgo.Go.toInterface(_samePointerNoCycle)), __8:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
    }
function testSliceNoCycle(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        {
            var __tmp__ = marshal(stdgo.Go.toInterface(_sliceNoCycle)), __8:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
    }
function testUnsupportedValues(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        for (__8 => _v in _unsupportedValues) {
            {
                var __tmp__ = marshal(_v), __9:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.StdGoTypes.Ref<UnsupportedValueError>)) : stdgo.StdGoTypes.Ref<UnsupportedValueError>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnsupportedValueError>), _1 : false };
                        }, __10 = __tmp__._0, _ok = __tmp__._1;
                        if (!_ok) {
                            _t.errorf(("for %v, got %T want UnsupportedValueError" : stdgo.GoString), _v, stdgo.Go.toInterface(_err));
                        };
                    };
                } else {
                    _t.errorf(("for %v, expected error" : stdgo.GoString), _v);
                };
            };
        };
    }
/**
    // Issue 43207
**/
function testMarshalTextFloatMap(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _m = ({
            final x = new stdgo.GoMap.GoFloat64Map<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            @:mergeBlock {
                x.set((stdgo.math.Math.naN() : T_textfloat), ("1" : stdgo.GoString));
                x.set((stdgo.math.Math.naN() : T_textfloat), ("1" : stdgo.GoString));
            };
            x;
        } : stdgo.GoMap<stdgo.encoding.json.Json.T_textfloat, stdgo.GoString>);
        var __tmp__ = marshal(stdgo.Go.toInterface(_m)), _got:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("Marshal() error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _want:stdgo.GoString = ("{\"TF:NaN\":\"1\",\"TF:NaN\":\"1\"}" : stdgo.GoString);
        if ((_got : stdgo.GoString) != (_want)) {
            _t.errorf(("Marshal() = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
    }
function testRefValMarshal(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _s:T__struct_22 = ({ r0 : (12 : stdgo.encoding.json.Json.Ref), r1 : stdgo.Go.pointer(((0 : stdgo.StdGoTypes.GoInt) : stdgo.encoding.json.Json.Ref)), r2 : (14 : stdgo.encoding.json.Json.RefText), r3 : stdgo.Go.pointer(((0 : stdgo.StdGoTypes.GoInt) : stdgo.encoding.json.Json.RefText)), v0 : (13 : stdgo.encoding.json.Json.Val), v1 : stdgo.Go.pointer(((0 : stdgo.StdGoTypes.GoInt) : stdgo.encoding.json.Json.Val)), v2 : (15 : stdgo.encoding.json.Json.ValText), v3 : stdgo.Go.pointer(((0 : stdgo.StdGoTypes.GoInt) : stdgo.encoding.json.Json.ValText)) } : T__struct_22);
        {};
        var __tmp__ = marshal(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_s) : stdgo.StdGoTypes.Ref<T__struct_22>)))), _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Marshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var _got:stdgo.GoString = (_b : stdgo.GoString)?.__copy__();
            if (_got != (("{\"R0\":\"ref\",\"R1\":\"ref\",\"R2\":\"\\\"ref\\\"\",\"R3\":\"\\\"ref\\\"\",\"V0\":\"val\",\"V1\":\"val\",\"V2\":\"\\\"val\\\"\",\"V3\":\"\\\"val\\\"\"}" : stdgo.GoString))) {
                _t.errorf(("got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("{\"R0\":\"ref\",\"R1\":\"ref\",\"R2\":\"\\\"ref\\\"\",\"R3\":\"\\\"ref\\\"\",\"V0\":\"val\",\"V1\":\"val\",\"V2\":\"\\\"val\\\"\",\"V3\":\"\\\"val\\\"\"}" : stdgo.GoString)));
            };
        };
    }
function testMarshalerEscaping(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _c:C = ((0 : stdgo.StdGoTypes.GoInt) : stdgo.encoding.json.Json.C);
        var _want:stdgo.GoString = ("\"\\u003c\\u0026\\u003e\"" : stdgo.GoString);
        var __tmp__ = marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_c))), _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Marshal(c): %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var _got:stdgo.GoString = (_b : stdgo.GoString)?.__copy__();
            if (_got != (_want)) {
                _t.errorf(("Marshal(c) = %#q, want %#q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        var _ct:CText = ((0 : stdgo.StdGoTypes.GoInt) : stdgo.encoding.json.Json.CText);
        _want = ("\"\\\"\\u003c\\u0026\\u003e\\\"\"" : stdgo.GoString);
        {
            var __tmp__ = marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_ct)));
            _b = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatalf(("Marshal(ct): %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var _got:stdgo.GoString = (_b : stdgo.GoString)?.__copy__();
            if (_got != (_want)) {
                _t.errorf(("Marshal(ct) = %#q, want %#q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
/**
    
    
    
**/
@:structInit class T_testAnonymousFields_104___localname___S1 {
    public var _x : stdgo.StdGoTypes.GoInt = 0;
    public var x : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_x:stdgo.StdGoTypes.GoInt, ?x:stdgo.StdGoTypes.GoInt) {
        if (_x != null) this._x = _x;
        if (x != null) this.x = x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields_104___localname___S1(_x, x);
    }
}
/**
    
    
    
**/
@:structInit class T_testAnonymousFields_105___localname___S2 {
    public var _x : stdgo.StdGoTypes.GoInt = 0;
    public var x : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_x:stdgo.StdGoTypes.GoInt, ?x:stdgo.StdGoTypes.GoInt) {
        if (_x != null) this._x = _x;
        if (x != null) this.x = x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields_105___localname___S2(_x, x);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields_106___localname___S_static_extension) class T_testAnonymousFields_106___localname___S {
    @:embedded
    public var s1 : stdgo.encoding.json.Json.T_testAnonymousFields_104___localname___S1 = ({} : stdgo.encoding.json.Json.T_testAnonymousFields_104___localname___S1);
    @:embedded
    public var s2 : stdgo.encoding.json.Json.T_testAnonymousFields_105___localname___S2 = ({} : stdgo.encoding.json.Json.T_testAnonymousFields_105___localname___S2);
    public function new(?s1:stdgo.encoding.json.Json.T_testAnonymousFields_104___localname___S1, ?s2:stdgo.encoding.json.Json.T_testAnonymousFields_105___localname___S2) {
        if (s1 != null) this.s1 = s1;
        if (s2 != null) this.s2 = s2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields_106___localname___S(s1, s2);
    }
}
/**
    
    
    
**/
@:structInit class T_testAnonymousFields_107___localname___S1 {
    public var _x : stdgo.StdGoTypes.GoInt = 0;
    public var x : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_x:stdgo.StdGoTypes.GoInt, ?x:stdgo.StdGoTypes.GoInt) {
        if (_x != null) this._x = _x;
        if (x != null) this.x = x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields_107___localname___S1(_x, x);
    }
}
/**
    
    
    
**/
@:structInit class T_testAnonymousFields_108___localname___S2 {
    public var _x : stdgo.StdGoTypes.GoInt = 0;
    public var x : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_x:stdgo.StdGoTypes.GoInt, ?x:stdgo.StdGoTypes.GoInt) {
        if (_x != null) this._x = _x;
        if (x != null) this.x = x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields_108___localname___S2(_x, x);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields_109___localname___S_static_extension) class T_testAnonymousFields_109___localname___S {
    @:embedded
    public var s1 : stdgo.encoding.json.Json.T_testAnonymousFields_107___localname___S1 = ({} : stdgo.encoding.json.Json.T_testAnonymousFields_107___localname___S1);
    @:embedded
    public var s2 : stdgo.encoding.json.Json.T_testAnonymousFields_108___localname___S2 = ({} : stdgo.encoding.json.Json.T_testAnonymousFields_108___localname___S2);
    public var _x : stdgo.StdGoTypes.GoInt = 0;
    public var x : stdgo.StdGoTypes.GoInt = 0;
    public function new(?s1:stdgo.encoding.json.Json.T_testAnonymousFields_107___localname___S1, ?s2:stdgo.encoding.json.Json.T_testAnonymousFields_108___localname___S2, ?_x:stdgo.StdGoTypes.GoInt, ?x:stdgo.StdGoTypes.GoInt) {
        if (s1 != null) this.s1 = s1;
        if (s2 != null) this.s2 = s2;
        if (_x != null) this._x = _x;
        if (x != null) this.x = x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields_109___localname___S(s1, s2, _x, x);
    }
}
@:named typedef T_testAnonymousFields_110___localname___myInt = stdgo.StdGoTypes.GoInt;
/**
    
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields_111___localname___S_static_extension) class T_testAnonymousFields_111___localname___S {
    @:embedded
    public var _myInt : stdgo.encoding.json.Json.T_testAnonymousFields_110___localname___myInt = ((0 : stdgo.StdGoTypes.GoInt) : stdgo.encoding.json.Json.T_testAnonymousFields_110___localname___myInt);
    public function new(?_myInt:stdgo.encoding.json.Json.T_testAnonymousFields_110___localname___myInt) {
        if (_myInt != null) this._myInt = _myInt;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields_111___localname___S(_myInt);
    }
}
@:named typedef T_testAnonymousFields_112___localname___MyInt = stdgo.StdGoTypes.GoInt;
/**
    
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields_113___localname___S_static_extension) class T_testAnonymousFields_113___localname___S {
    @:embedded
    public var myInt : stdgo.encoding.json.Json.T_testAnonymousFields_112___localname___MyInt = ((0 : stdgo.StdGoTypes.GoInt) : stdgo.encoding.json.Json.T_testAnonymousFields_112___localname___MyInt);
    public function new(?myInt:stdgo.encoding.json.Json.T_testAnonymousFields_112___localname___MyInt) {
        if (myInt != null) this.myInt = myInt;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields_113___localname___S(myInt);
    }
}
@:named typedef T_testAnonymousFields_114___localname___myInt = stdgo.StdGoTypes.GoInt;
/**
    
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields_115___localname___S_static_extension) class T_testAnonymousFields_115___localname___S {
    @:embedded
    public var _myInt : stdgo.Pointer<stdgo.encoding.json.Json.T_testAnonymousFields_114___localname___myInt> = (null : stdgo.Pointer<stdgo.encoding.json.Json.T_testAnonymousFields_114___localname___myInt>);
    public function new(?_myInt:stdgo.Pointer<stdgo.encoding.json.Json.T_testAnonymousFields_114___localname___myInt>) {
        if (_myInt != null) this._myInt = _myInt;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields_115___localname___S(_myInt);
    }
}
@:named typedef T_testAnonymousFields_116___localname___MyInt = stdgo.StdGoTypes.GoInt;
/**
    
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields_117___localname___S_static_extension) class T_testAnonymousFields_117___localname___S {
    @:embedded
    public var myInt : stdgo.Pointer<stdgo.encoding.json.Json.T_testAnonymousFields_116___localname___MyInt> = (null : stdgo.Pointer<stdgo.encoding.json.Json.T_testAnonymousFields_116___localname___MyInt>);
    public function new(?myInt:stdgo.Pointer<stdgo.encoding.json.Json.T_testAnonymousFields_116___localname___MyInt>) {
        if (myInt != null) this.myInt = myInt;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields_117___localname___S(myInt);
    }
}
/**
    
    
    
**/
@:structInit class T_testAnonymousFields_118___localname___s1 {
    public var _x : stdgo.StdGoTypes.GoInt = 0;
    public var x : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_x:stdgo.StdGoTypes.GoInt, ?x:stdgo.StdGoTypes.GoInt) {
        if (_x != null) this._x = _x;
        if (x != null) this.x = x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields_118___localname___s1(_x, x);
    }
}
/**
    
    
    
**/
@:structInit class T_testAnonymousFields_119___localname___S2 {
    public var _y : stdgo.StdGoTypes.GoInt = 0;
    public var y : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_y:stdgo.StdGoTypes.GoInt, ?y:stdgo.StdGoTypes.GoInt) {
        if (_y != null) this._y = _y;
        if (y != null) this.y = y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields_119___localname___S2(_y, y);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields_120___localname___S_static_extension) class T_testAnonymousFields_120___localname___S {
    @:embedded
    public var _s1 : stdgo.encoding.json.Json.T_testAnonymousFields_118___localname___s1 = ({} : stdgo.encoding.json.Json.T_testAnonymousFields_118___localname___s1);
    @:embedded
    public var s2 : stdgo.encoding.json.Json.T_testAnonymousFields_119___localname___S2 = ({} : stdgo.encoding.json.Json.T_testAnonymousFields_119___localname___S2);
    public function new(?_s1:stdgo.encoding.json.Json.T_testAnonymousFields_118___localname___s1, ?s2:stdgo.encoding.json.Json.T_testAnonymousFields_119___localname___S2) {
        if (_s1 != null) this._s1 = _s1;
        if (s2 != null) this.s2 = s2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields_120___localname___S(_s1, s2);
    }
}
/**
    
    
    
**/
@:structInit class T_testAnonymousFields_121___localname___s1 {
    public var _x : stdgo.StdGoTypes.GoInt = 0;
    public var x : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_x:stdgo.StdGoTypes.GoInt, ?x:stdgo.StdGoTypes.GoInt) {
        if (_x != null) this._x = _x;
        if (x != null) this.x = x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields_121___localname___s1(_x, x);
    }
}
/**
    
    
    
**/
@:structInit class T_testAnonymousFields_122___localname___S2 {
    public var _y : stdgo.StdGoTypes.GoInt = 0;
    public var y : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_y:stdgo.StdGoTypes.GoInt, ?y:stdgo.StdGoTypes.GoInt) {
        if (_y != null) this._y = _y;
        if (y != null) this.y = y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields_122___localname___S2(_y, y);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields_123___localname___S_static_extension) class T_testAnonymousFields_123___localname___S {
    @:embedded
    public var _s1 : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testAnonymousFields_121___localname___s1> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testAnonymousFields_121___localname___s1>);
    @:embedded
    public var s2 : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testAnonymousFields_122___localname___S2> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testAnonymousFields_122___localname___S2>);
    public function new(?_s1:stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testAnonymousFields_121___localname___s1>, ?s2:stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testAnonymousFields_122___localname___S2>) {
        if (_s1 != null) this._s1 = _s1;
        if (s2 != null) this.s2 = s2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields_123___localname___S(_s1, s2);
    }
}
@:named typedef T_testAnonymousFields_124___localname___MyInt1 = stdgo.StdGoTypes.GoInt;
@:named typedef T_testAnonymousFields_125___localname___MyInt2 = stdgo.StdGoTypes.GoInt;
@:named typedef T_testAnonymousFields_126___localname___myInt = stdgo.StdGoTypes.GoInt;
/**
    
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields_127___localname___s2_static_extension) class T_testAnonymousFields_127___localname___s2 {
    @:embedded
    public var myInt2 : stdgo.encoding.json.Json.T_testAnonymousFields_125___localname___MyInt2 = ((0 : stdgo.StdGoTypes.GoInt) : stdgo.encoding.json.Json.T_testAnonymousFields_125___localname___MyInt2);
    @:embedded
    public var _myInt : stdgo.encoding.json.Json.T_testAnonymousFields_126___localname___myInt = ((0 : stdgo.StdGoTypes.GoInt) : stdgo.encoding.json.Json.T_testAnonymousFields_126___localname___myInt);
    public function new(?myInt2:stdgo.encoding.json.Json.T_testAnonymousFields_125___localname___MyInt2, ?_myInt:stdgo.encoding.json.Json.T_testAnonymousFields_126___localname___myInt) {
        if (myInt2 != null) this.myInt2 = myInt2;
        if (_myInt != null) this._myInt = _myInt;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields_127___localname___s2(myInt2, _myInt);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields_128___localname___s1_static_extension) class T_testAnonymousFields_128___localname___s1 {
    @:embedded
    public var myInt1 : stdgo.encoding.json.Json.T_testAnonymousFields_124___localname___MyInt1 = ((0 : stdgo.StdGoTypes.GoInt) : stdgo.encoding.json.Json.T_testAnonymousFields_124___localname___MyInt1);
    @:embedded
    public var _myInt : stdgo.encoding.json.Json.T_testAnonymousFields_126___localname___myInt = ((0 : stdgo.StdGoTypes.GoInt) : stdgo.encoding.json.Json.T_testAnonymousFields_126___localname___myInt);
    @:embedded
    public var _s2 : stdgo.encoding.json.Json.T_testAnonymousFields_127___localname___s2 = ({} : stdgo.encoding.json.Json.T_testAnonymousFields_127___localname___s2);
    public function new(?myInt1:stdgo.encoding.json.Json.T_testAnonymousFields_124___localname___MyInt1, ?_myInt:stdgo.encoding.json.Json.T_testAnonymousFields_126___localname___myInt, ?_s2:stdgo.encoding.json.Json.T_testAnonymousFields_127___localname___s2) {
        if (myInt1 != null) this.myInt1 = myInt1;
        if (_myInt != null) this._myInt = _myInt;
        if (_s2 != null) this._s2 = _s2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields_128___localname___s1(myInt1, _myInt, _s2);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields_129___localname___S_static_extension) class T_testAnonymousFields_129___localname___S {
    @:embedded
    public var _s1 : stdgo.encoding.json.Json.T_testAnonymousFields_128___localname___s1 = ({} : stdgo.encoding.json.Json.T_testAnonymousFields_128___localname___s1);
    @:embedded
    public var _myInt : stdgo.encoding.json.Json.T_testAnonymousFields_126___localname___myInt = ((0 : stdgo.StdGoTypes.GoInt) : stdgo.encoding.json.Json.T_testAnonymousFields_126___localname___myInt);
    public function new(?_s1:stdgo.encoding.json.Json.T_testAnonymousFields_128___localname___s1, ?_myInt:stdgo.encoding.json.Json.T_testAnonymousFields_126___localname___myInt) {
        if (_s1 != null) this._s1 = _s1;
        if (_myInt != null) this._myInt = _myInt;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields_129___localname___S(_s1, _myInt);
    }
}
/**
    
    
    
**/
@:structInit class T_testAnonymousFields_130___localname___S2 {
    public var field : stdgo.GoString = "";
    public function new(?field:stdgo.GoString) {
        if (field != null) this.field = field;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields_130___localname___S2(field);
    }
}
/**
    
    
    
**/
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields_131___localname___S_static_extension) class T_testAnonymousFields_131___localname___S {
    @:embedded
    public var s2 : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testAnonymousFields_130___localname___S2> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testAnonymousFields_130___localname___S2>);
    public function new(?s2:stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testAnonymousFields_130___localname___S2>) {
        if (s2 != null) this.s2 = s2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testAnonymousFields_131___localname___S(s2);
    }
}
function testAnonymousFields(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _tests = (new stdgo.Slice<T__struct_23>(
10,
10,
({ _label : ("AmbiguousField" : stdgo.GoString), _makeInput : function():stdgo.StdGoTypes.AnyInterface {
            {};
            return stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_testAnonymousFields_106___localname___S((new stdgo.encoding.json.Json.T_testAnonymousFields_104___localname___S1((1 : stdgo.StdGoTypes.GoInt), (2 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.json.Json.T_testAnonymousFields_104___localname___S1), (new stdgo.encoding.json.Json.T_testAnonymousFields_105___localname___S2((3 : stdgo.StdGoTypes.GoInt), (4 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.json.Json.T_testAnonymousFields_105___localname___S2)) : stdgo.encoding.json.Json.T_testAnonymousFields_106___localname___S));
        }, _want : ("{}" : stdgo.GoString) } : T__struct_23),
({ _label : ("DominantField" : stdgo.GoString), _makeInput : function():stdgo.StdGoTypes.AnyInterface {
            {};
            return stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_testAnonymousFields_109___localname___S((new stdgo.encoding.json.Json.T_testAnonymousFields_107___localname___S1((1 : stdgo.StdGoTypes.GoInt), (2 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.json.Json.T_testAnonymousFields_107___localname___S1), (new stdgo.encoding.json.Json.T_testAnonymousFields_108___localname___S2((3 : stdgo.StdGoTypes.GoInt), (4 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.json.Json.T_testAnonymousFields_108___localname___S2), (5 : stdgo.StdGoTypes.GoInt), (6 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.json.Json.T_testAnonymousFields_109___localname___S));
        }, _want : ("{\"X\":6}" : stdgo.GoString) } : T__struct_23),
({ _label : ("UnexportedEmbeddedInt" : stdgo.GoString), _makeInput : function():stdgo.StdGoTypes.AnyInterface {
            {};
            return stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_testAnonymousFields_111___localname___S((5 : stdgo.encoding.json.Json.T_testAnonymousFields_110___localname___myInt)) : stdgo.encoding.json.Json.T_testAnonymousFields_111___localname___S));
        }, _want : ("{}" : stdgo.GoString) } : T__struct_23),
({ _label : ("ExportedEmbeddedInt" : stdgo.GoString), _makeInput : function():stdgo.StdGoTypes.AnyInterface {
            {};
            return stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_testAnonymousFields_113___localname___S((5 : stdgo.encoding.json.Json.T_testAnonymousFields_112___localname___MyInt)) : stdgo.encoding.json.Json.T_testAnonymousFields_113___localname___S));
        }, _want : ("{\"MyInt\":5}" : stdgo.GoString) } : T__struct_23),
({ _label : ("UnexportedEmbeddedIntPointer" : stdgo.GoString), _makeInput : function():stdgo.StdGoTypes.AnyInterface {
            {};
            var _s:stdgo.encoding.json.Json.T_testAnonymousFields_115___localname___S = (new stdgo.encoding.json.Json.T_testAnonymousFields_115___localname___S(stdgo.Go.pointer(((0 : stdgo.StdGoTypes.GoInt) : stdgo.encoding.json.Json.T_testAnonymousFields_114___localname___myInt))) : stdgo.encoding.json.Json.T_testAnonymousFields_115___localname___S);
            _s._myInt.value = (5 : stdgo.encoding.json.Json.T_testAnonymousFields_114___localname___myInt);
            return stdgo.Go.toInterface(_s);
        }, _want : ("{}" : stdgo.GoString) } : T__struct_23),
({ _label : ("ExportedEmbeddedIntPointer" : stdgo.GoString), _makeInput : function():stdgo.StdGoTypes.AnyInterface {
            {};
            var _s:stdgo.encoding.json.Json.T_testAnonymousFields_117___localname___S = (new stdgo.encoding.json.Json.T_testAnonymousFields_117___localname___S(stdgo.Go.pointer(((0 : stdgo.StdGoTypes.GoInt) : stdgo.encoding.json.Json.T_testAnonymousFields_116___localname___MyInt))) : stdgo.encoding.json.Json.T_testAnonymousFields_117___localname___S);
            _s.myInt.value = (5 : stdgo.encoding.json.Json.T_testAnonymousFields_116___localname___MyInt);
            return stdgo.Go.toInterface(_s);
        }, _want : ("{\"MyInt\":5}" : stdgo.GoString) } : T__struct_23),
({ _label : ("EmbeddedStruct" : stdgo.GoString), _makeInput : function():stdgo.StdGoTypes.AnyInterface {
            {};
            return stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_testAnonymousFields_120___localname___S((new stdgo.encoding.json.Json.T_testAnonymousFields_118___localname___s1((1 : stdgo.StdGoTypes.GoInt), (2 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.json.Json.T_testAnonymousFields_118___localname___s1), (new stdgo.encoding.json.Json.T_testAnonymousFields_119___localname___S2((3 : stdgo.StdGoTypes.GoInt), (4 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.json.Json.T_testAnonymousFields_119___localname___S2)) : stdgo.encoding.json.Json.T_testAnonymousFields_120___localname___S));
        }, _want : ("{\"X\":2,\"Y\":4}" : stdgo.GoString) } : T__struct_23),
({ _label : ("EmbeddedStructPointer" : stdgo.GoString), _makeInput : function():stdgo.StdGoTypes.AnyInterface {
            {};
            return stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_testAnonymousFields_123___localname___S((stdgo.Go.setRef((new stdgo.encoding.json.Json.T_testAnonymousFields_121___localname___s1((1 : stdgo.StdGoTypes.GoInt), (2 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.json.Json.T_testAnonymousFields_121___localname___s1)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testAnonymousFields_121___localname___s1>), (stdgo.Go.setRef((new stdgo.encoding.json.Json.T_testAnonymousFields_122___localname___S2((3 : stdgo.StdGoTypes.GoInt), (4 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.json.Json.T_testAnonymousFields_122___localname___S2)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testAnonymousFields_122___localname___S2>)) : stdgo.encoding.json.Json.T_testAnonymousFields_123___localname___S));
        }, _want : ("{\"X\":2,\"Y\":4}" : stdgo.GoString) } : T__struct_23),
({ _label : ("NestedStructAndInts" : stdgo.GoString), _makeInput : function():stdgo.StdGoTypes.AnyInterface {
            {};
            return stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_testAnonymousFields_129___localname___S((new stdgo.encoding.json.Json.T_testAnonymousFields_128___localname___s1((1 : stdgo.encoding.json.Json.T_testAnonymousFields_124___localname___MyInt1), (2 : stdgo.encoding.json.Json.T_testAnonymousFields_126___localname___myInt), (new stdgo.encoding.json.Json.T_testAnonymousFields_127___localname___s2((3 : stdgo.encoding.json.Json.T_testAnonymousFields_125___localname___MyInt2), (4 : stdgo.encoding.json.Json.T_testAnonymousFields_126___localname___myInt)) : stdgo.encoding.json.Json.T_testAnonymousFields_127___localname___s2)) : stdgo.encoding.json.Json.T_testAnonymousFields_128___localname___s1), (6 : stdgo.encoding.json.Json.T_testAnonymousFields_126___localname___myInt)) : stdgo.encoding.json.Json.T_testAnonymousFields_129___localname___S));
        }, _want : ("{\"MyInt1\":1,\"MyInt2\":3}" : stdgo.GoString) } : T__struct_23),
({ _label : ("EmbeddedFieldBehindNilPointer" : stdgo.GoString), _makeInput : function():stdgo.StdGoTypes.AnyInterface {
            {};
            return stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_testAnonymousFields_131___localname___S() : stdgo.encoding.json.Json.T_testAnonymousFields_131___localname___S));
        }, _want : ("{}" : stdgo.GoString) } : T__struct_23)) : stdgo.Slice<T__struct_23>);
        for (__8 => _tt in _tests) {
            _t.run(_tt._label?.__copy__(), function(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
                var __tmp__ = marshal(_tt._makeInput()), _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(("Marshal() = %v, want nil error" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
                if ((_b : stdgo.GoString) != (_tt._want)) {
                    _t.fatalf(("Marshal() = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_tt._want));
                };
            });
        };
    }
/**
    // See golang.org/issue/16042 and golang.org/issue/34235.
**/
function testNilMarshal(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _testCases = (new stdgo.Slice<T__struct_12>(
13,
13,
({ _v : (null : stdgo.StdGoTypes.AnyInterface), _want : ("null" : stdgo.GoString) } : T__struct_12),
({ _v : stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoFloat64))), _want : ("0" : stdgo.GoString) } : T__struct_12),
({ _v : stdgo.Go.toInterface((null : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>)), _want : ("null" : stdgo.GoString) } : T__struct_12),
({ _v : stdgo.Go.toInterface((null : stdgo.Slice<stdgo.GoString>)), _want : ("null" : stdgo.GoString) } : T__struct_12),
({ _v : stdgo.Go.toInterface((null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>)), _want : ("null" : stdgo.GoString) } : T__struct_12),
({ _v : stdgo.Go.toInterface(((null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)), _want : ("null" : stdgo.GoString) } : T__struct_12),
({ _v : stdgo.Go.toInterface(stdgo.Go.asInterface(({ m : ("gopher" : stdgo.GoString) } : T__struct_24))), _want : ("{\"M\":\"gopher\"}" : stdgo.GoString) } : T__struct_12),
({ _v : stdgo.Go.toInterface(stdgo.Go.asInterface(({ m : (null : stdgo.encoding.json.Json.Marshaler) } : T__struct_25))), _want : ("{\"M\":null}" : stdgo.GoString) } : T__struct_12),
({ _v : stdgo.Go.toInterface(stdgo.Go.asInterface(({ m : stdgo.Go.asInterface(((null : stdgo.Pointer<stdgo.encoding.json.Json.T_nilJSONMarshaler>) : stdgo.Pointer<T_nilJSONMarshaler>)) } : T__struct_25))), _want : ("{\"M\":\"0zenil0\"}" : stdgo.GoString) } : T__struct_12),
({ _v : stdgo.Go.toInterface(stdgo.Go.asInterface(({ m : stdgo.Go.toInterface(((null : stdgo.Pointer<stdgo.encoding.json.Json.T_nilJSONMarshaler>) : stdgo.Pointer<T_nilJSONMarshaler>)) } : T__struct_26))), _want : ("{\"M\":null}" : stdgo.GoString) } : T__struct_12),
({ _v : stdgo.Go.toInterface(stdgo.Go.asInterface(({ m : (null : stdgo.encoding.Encoding.TextMarshaler) } : T__struct_27))), _want : ("{\"M\":null}" : stdgo.GoString) } : T__struct_12),
({ _v : stdgo.Go.toInterface(stdgo.Go.asInterface(({ m : stdgo.Go.asInterface(((null : stdgo.Pointer<stdgo.encoding.json.Json.T_nilTextMarshaler>) : stdgo.Pointer<T_nilTextMarshaler>)) } : T__struct_27))), _want : ("{\"M\":\"0zenil0\"}" : stdgo.GoString) } : T__struct_12),
({ _v : stdgo.Go.toInterface(stdgo.Go.asInterface(({ m : stdgo.Go.toInterface(((null : stdgo.Pointer<stdgo.encoding.json.Json.T_nilTextMarshaler>) : stdgo.Pointer<T_nilTextMarshaler>)) } : T__struct_26))), _want : ("{\"M\":null}" : stdgo.GoString) } : T__struct_12)) : stdgo.Slice<T__struct_12>);
        for (__8 => _tt in _testCases) {
            var __tmp__ = marshal(_tt._v), _out:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err != null) || ((_out : stdgo.GoString) != _tt._want)) {
                _t.errorf(("Marshal(%#v) = %#q, %#v, want %#q, nil" : stdgo.GoString), _tt._v, stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._want));
                continue;
            };
        };
    }
/**
    // Issue 5245.
**/
function testEmbeddedBug(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _v:stdgo.encoding.json.Json.BugB = (new stdgo.encoding.json.Json.BugB((new stdgo.encoding.json.Json.BugA(("A" : stdgo.GoString)) : stdgo.encoding.json.Json.BugA), ("B" : stdgo.GoString)) : stdgo.encoding.json.Json.BugB);
        var __tmp__ = marshal(stdgo.Go.toInterface(_v)), _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("Marshal:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _want:stdgo.GoString = ("{\"S\":\"B\"}" : stdgo.GoString);
        var _got:stdgo.GoString = (_b : stdgo.GoString)?.__copy__();
        if (_got != (_want)) {
            _t.fatalf(("Marshal: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
        var _x:stdgo.encoding.json.Json.BugX = ({ a : (23 : stdgo.StdGoTypes.GoInt) } : stdgo.encoding.json.Json.BugX);
        {
            var __tmp__ = marshal(stdgo.Go.toInterface(_x));
            _b = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("Marshal:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _want = ("{\"A\":23}" : stdgo.GoString);
        _got = (_b : stdgo.GoString)?.__copy__();
        if (_got != (_want)) {
            _t.fatalf(("Marshal: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
    }
/**
    // Test that a field with a tag dominates untagged fields.
**/
function testTaggedFieldDominates(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _v:stdgo.encoding.json.Json.BugY = (new stdgo.encoding.json.Json.BugY((new stdgo.encoding.json.Json.BugA(("BugA" : stdgo.GoString)) : stdgo.encoding.json.Json.BugA), (new stdgo.encoding.json.Json.BugD(("BugD" : stdgo.GoString)) : stdgo.encoding.json.Json.BugD)) : stdgo.encoding.json.Json.BugY);
        var __tmp__ = marshal(stdgo.Go.toInterface(_v)), _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("Marshal:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _want:stdgo.GoString = ("{\"S\":\"BugD\"}" : stdgo.GoString);
        var _got:stdgo.GoString = (_b : stdgo.GoString)?.__copy__();
        if (_got != (_want)) {
            _t.fatalf(("Marshal: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
    }
function testDuplicatedFieldDisappears(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _v:stdgo.encoding.json.Json.BugZ = (new stdgo.encoding.json.Json.BugZ((new stdgo.encoding.json.Json.BugA(("BugA" : stdgo.GoString)) : stdgo.encoding.json.Json.BugA), (new stdgo.encoding.json.Json.BugC(("BugC" : stdgo.GoString)) : stdgo.encoding.json.Json.BugC), (new stdgo.encoding.json.Json.BugY((new stdgo.encoding.json.Json.BugA(("nested BugA" : stdgo.GoString)) : stdgo.encoding.json.Json.BugA), (new stdgo.encoding.json.Json.BugD(("nested BugD" : stdgo.GoString)) : stdgo.encoding.json.Json.BugD)) : stdgo.encoding.json.Json.BugY)) : stdgo.encoding.json.Json.BugZ);
        var __tmp__ = marshal(stdgo.Go.toInterface(_v)), _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("Marshal:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _want:stdgo.GoString = ("{}" : stdgo.GoString);
        var _got:stdgo.GoString = (_b : stdgo.GoString)?.__copy__();
        if (_got != (_want)) {
            _t.fatalf(("Marshal: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
    }
/**
    
    
    
**/
@:structInit class T_testIssue10281_132___localname___Foo {
    public var n : stdgo.encoding.json.Json.Number = (("" : stdgo.GoString) : stdgo.encoding.json.Json.Number);
    public function new(?n:stdgo.encoding.json.Json.Number) {
        if (n != null) this.n = n;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testIssue10281_132___localname___Foo(n);
    }
}
function testIssue10281(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        var _x:stdgo.encoding.json.Json.T_testIssue10281_132___localname___Foo = (new stdgo.encoding.json.Json.T_testIssue10281_132___localname___Foo(((("invalid" : stdgo.GoString) : stdgo.encoding.json.Json.Number) : Number)) : stdgo.encoding.json.Json.T_testIssue10281_132___localname___Foo);
        var __tmp__ = marshal(stdgo.Go.toInterface((stdgo.Go.setRef(_x) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testIssue10281_132___localname___Foo>))), _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _t.errorf(("Marshal(&x) = %#q; want error" : stdgo.GoString), stdgo.Go.toInterface(_b));
        };
    }
/**
    // Trigger an error in Marshal with cyclic data.
    
    
**/
@:structInit class T_testMarshalErrorAndReuseEncodeState_133___localname___Dummy {
    public var name : stdgo.GoString = "";
    public var next : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testMarshalErrorAndReuseEncodeState_133___localname___Dummy> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testMarshalErrorAndReuseEncodeState_133___localname___Dummy>);
    public function new(?name:stdgo.GoString, ?next:stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testMarshalErrorAndReuseEncodeState_133___localname___Dummy>) {
        if (name != null) this.name = name;
        if (next != null) this.next = next;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testMarshalErrorAndReuseEncodeState_133___localname___Dummy(name, next);
    }
}
/**
    
    
    
**/
@:structInit class T_testMarshalErrorAndReuseEncodeState_134___localname___Data {
    public var a : stdgo.GoString = "";
    public var i : stdgo.StdGoTypes.GoInt = 0;
    public function new(?a:stdgo.GoString, ?i:stdgo.StdGoTypes.GoInt) {
        if (a != null) this.a = a;
        if (i != null) this.i = i;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testMarshalErrorAndReuseEncodeState_134___localname___Data(a, i);
    }
}
function testMarshalErrorAndReuseEncodeState(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _percent:stdgo.StdGoTypes.GoInt = stdgo.runtime.debug.Debug.setGCPercent((-1 : stdgo.StdGoTypes.GoInt));
            {
                var _a0 = _percent;
                __deferstack__.unshift(() -> stdgo.runtime.debug.Debug.setGCPercent(_a0));
            };
            {};
            var _dummy:stdgo.encoding.json.Json.T_testMarshalErrorAndReuseEncodeState_133___localname___Dummy = ({ name : ("Dummy" : stdgo.GoString) } : stdgo.encoding.json.Json.T_testMarshalErrorAndReuseEncodeState_133___localname___Dummy);
            _dummy.next = (stdgo.Go.setRef(_dummy) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testMarshalErrorAndReuseEncodeState_133___localname___Dummy>);
            {
                var __tmp__ = marshal(stdgo.Go.toInterface(_dummy)), _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    _t.errorf(("Marshal(dummy) = %#q; want error" : stdgo.GoString), stdgo.Go.toInterface(_b));
                };
            };
            {};
            var _data:stdgo.encoding.json.Json.T_testMarshalErrorAndReuseEncodeState_134___localname___Data = ({ a : ("a" : stdgo.GoString), i : (1 : stdgo.StdGoTypes.GoInt) } : stdgo.encoding.json.Json.T_testMarshalErrorAndReuseEncodeState_134___localname___Data);
            var __tmp__ = marshal(stdgo.Go.toInterface(_data)), _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("Marshal(%v) = %v" : stdgo.GoString), stdgo.Go.toInterface(_data), stdgo.Go.toInterface(_err));
            };
            var _data2:T_testMarshalErrorAndReuseEncodeState_134___localname___Data = ({} : stdgo.encoding.json.Json.T_testMarshalErrorAndReuseEncodeState_134___localname___Data);
            {
                var _err:stdgo.Error = unmarshal(_b, stdgo.Go.toInterface((stdgo.Go.setRef(_data2) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testMarshalErrorAndReuseEncodeState_134___localname___Data>)));
                if (_err != null) {
                    _t.errorf(("Unmarshal(%v) = %v" : stdgo.GoString), stdgo.Go.toInterface(_data2), stdgo.Go.toInterface(_err));
                };
            };
            if (stdgo.Go.toInterface(_data2) != stdgo.Go.toInterface(_data)) {
                _t.errorf(("expect: %v, but get: %v" : stdgo.GoString), stdgo.Go.toInterface(_data), stdgo.Go.toInterface(_data2));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
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
            return;
        };
    }
function testHTMLEscape(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var __0:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer), __1:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer), _want:stdgo.bytes.Bytes.Buffer = __1, _b:stdgo.bytes.Bytes.Buffer = __0;
        var _m:stdgo.GoString = ("{\"M\":\"<html>foo &\u2028 \u2029</html>\"}" : stdgo.GoString);
        _want.write((("{\"M\":\"\\u003chtml\\u003efoo \\u0026\\u2028 \\u2029\\u003c/html\\u003e\"}" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
        htmlescape((stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), (_m : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
        if (!stdgo.bytes.Bytes.equal(_b.bytes(), _want.bytes())) {
            _t.errorf(("HTMLEscape(&b, []byte(m)) = %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_b.bytes()), stdgo.Go.toInterface(_want.bytes()));
        };
    }
/**
    
    
    
**/
@:structInit class T_testEncodePointerString_135___localname___stringPointer {
    @:tag("`json:\"n,string\"`")
    public var n : stdgo.Pointer<stdgo.StdGoTypes.GoInt64> = (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt64>);
    public function new(?n:stdgo.Pointer<stdgo.StdGoTypes.GoInt64>) {
        if (n != null) this.n = n;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testEncodePointerString_135___localname___stringPointer(n);
    }
}
/**
    // golang.org/issue/8582
**/
function testEncodePointerString(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        var _n:stdgo.StdGoTypes.GoInt64 = (42i64 : stdgo.StdGoTypes.GoInt64);
        var __tmp__ = marshal(stdgo.Go.toInterface(({ n : stdgo.Go.pointer(_n) } : stdgo.encoding.json.Json.T_testEncodePointerString_135___localname___stringPointer))), _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Marshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var __0:stdgo.GoString = (_b : stdgo.GoString)?.__copy__(), __1:stdgo.GoString = ("{\"n\":\"42\"}" : stdgo.GoString), _want:stdgo.GoString = __1, _got:stdgo.GoString = __0;
            if (_got != (_want)) {
                _t.errorf(("Marshal = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        var _back:T_testEncodePointerString_135___localname___stringPointer = ({} : stdgo.encoding.json.Json.T_testEncodePointerString_135___localname___stringPointer);
        _err = unmarshal(_b, stdgo.Go.toInterface((stdgo.Go.setRef(_back) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testEncodePointerString_135___localname___stringPointer>)));
        if (_err != null) {
            _t.fatalf(("Unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (_back.n == null) {
            _t.fatalf(("Unmarshaled nil N field" : stdgo.GoString));
        };
        if (_back.n.value != ((42i64 : stdgo.StdGoTypes.GoInt64))) {
            _t.fatalf(("*N = %d; want 42" : stdgo.GoString), stdgo.Go.toInterface(_back.n.value));
        };
    }
function testEncodeString(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        for (__8 => _tt in _encodeStringTests) {
            var __tmp__ = marshal(stdgo.Go.toInterface(_tt._in)), _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("Marshal(%q): %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_err));
                continue;
            };
            var _out:stdgo.GoString = (_b : stdgo.GoString)?.__copy__();
            if (_out != (_tt._out)) {
                _t.errorf(("Marshal(%q) = %#q, want %#q" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._out));
            };
        };
    }
function _tenc(_format:stdgo.GoString, _a:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        var _a = new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(_a.length, 0, ..._a);
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        stdgo.fmt.Fmt.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)), _format?.__copy__(), ..._a.__toArray__());
        return { _0 : _buf.bytes(), _1 : (null : stdgo.Error) };
    }
/**
    // Issue 13783
**/
function testEncodeBytekind(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _testdata = (new stdgo.Slice<T__struct_28>(
13,
13,
({ _data : stdgo.Go.toInterface(((7 : stdgo.StdGoTypes.GoUInt8) : stdgo.StdGoTypes.GoByte)), _want : ("7" : stdgo.GoString) } : T__struct_28),
({ _data : stdgo.Go.toInterface(stdgo.Go.asInterface(((7 : stdgo.encoding.json.Json.T_jsonbyte) : T_jsonbyte))), _want : ("{\"JB\":7}" : stdgo.GoString) } : T__struct_28),
({ _data : stdgo.Go.toInterface(stdgo.Go.asInterface(((4 : stdgo.encoding.json.Json.T_textbyte) : T_textbyte))), _want : ("\"TB:4\"" : stdgo.GoString) } : T__struct_28),
({ _data : stdgo.Go.toInterface(stdgo.Go.asInterface(((5 : stdgo.encoding.json.Json.T_jsonint) : T_jsonint))), _want : ("{\"JI\":5}" : stdgo.GoString) } : T__struct_28),
({ _data : stdgo.Go.toInterface(stdgo.Go.asInterface(((1 : stdgo.encoding.json.Json.T_textint) : T_textint))), _want : ("\"TI:1\"" : stdgo.GoString) } : T__struct_28),
({ _data : stdgo.Go.toInterface((new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(2, 2, (0 : stdgo.StdGoTypes.GoUInt8), (1 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)), _want : ("\"AAE=\"" : stdgo.GoString) } : T__struct_28),
({ _data : stdgo.Go.toInterface((new stdgo.Slice<stdgo.encoding.json.Json.T_jsonbyte>(2, 2, (0 : stdgo.encoding.json.Json.T_jsonbyte), (1 : stdgo.encoding.json.Json.T_jsonbyte)) : stdgo.Slice<stdgo.encoding.json.Json.T_jsonbyte>)), _want : ("[{\"JB\":0},{\"JB\":1}]" : stdgo.GoString) } : T__struct_28),
({ _data : stdgo.Go.toInterface((new stdgo.Slice<stdgo.Slice<stdgo.encoding.json.Json.T_jsonbyte>>(2, 2, (new stdgo.Slice<stdgo.encoding.json.Json.T_jsonbyte>(2, 2, (0 : stdgo.encoding.json.Json.T_jsonbyte), (1 : stdgo.encoding.json.Json.T_jsonbyte)) : stdgo.Slice<stdgo.encoding.json.Json.T_jsonbyte>), (new stdgo.Slice<stdgo.encoding.json.Json.T_jsonbyte>(1, 1, (3 : stdgo.encoding.json.Json.T_jsonbyte)) : stdgo.Slice<stdgo.encoding.json.Json.T_jsonbyte>)) : stdgo.Slice<stdgo.Slice<stdgo.encoding.json.Json.T_jsonbyte>>)), _want : ("[[{\"JB\":0},{\"JB\":1}],[{\"JB\":3}]]" : stdgo.GoString) } : T__struct_28),
({ _data : stdgo.Go.toInterface((new stdgo.Slice<stdgo.encoding.json.Json.T_textbyte>(2, 2, (2 : stdgo.encoding.json.Json.T_textbyte), (3 : stdgo.encoding.json.Json.T_textbyte)) : stdgo.Slice<stdgo.encoding.json.Json.T_textbyte>)), _want : ("[\"TB:2\",\"TB:3\"]" : stdgo.GoString) } : T__struct_28),
({ _data : stdgo.Go.toInterface((new stdgo.Slice<stdgo.encoding.json.Json.T_jsonint>(2, 2, (5 : stdgo.encoding.json.Json.T_jsonint), (4 : stdgo.encoding.json.Json.T_jsonint)) : stdgo.Slice<stdgo.encoding.json.Json.T_jsonint>)), _want : ("[{\"JI\":5},{\"JI\":4}]" : stdgo.GoString) } : T__struct_28),
({ _data : stdgo.Go.toInterface((new stdgo.Slice<stdgo.encoding.json.Json.T_textint>(2, 2, (9 : stdgo.encoding.json.Json.T_textint), (3 : stdgo.encoding.json.Json.T_textint)) : stdgo.Slice<stdgo.encoding.json.Json.T_textint>)), _want : ("[\"TI:9\",\"TI:3\"]" : stdgo.GoString) } : T__struct_28),
({ _data : stdgo.Go.toInterface((new stdgo.Slice<stdgo.StdGoTypes.GoInt>(2, 2, (9 : stdgo.StdGoTypes.GoInt), (3 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>)), _want : ("[9,3]" : stdgo.GoString) } : T__struct_28),
({ _data : stdgo.Go.toInterface((new stdgo.Slice<stdgo.encoding.json.Json.T_textfloat>(2, 2, (12 : stdgo.StdGoTypes.GoFloat64), (3 : stdgo.StdGoTypes.GoFloat64)) : stdgo.Slice<stdgo.encoding.json.Json.T_textfloat>)), _want : ("[\"TF:12.00\",\"TF:3.00\"]" : stdgo.GoString) } : T__struct_28)) : stdgo.Slice<T__struct_28>);
        for (__8 => _d in _testdata) {
            var __tmp__ = marshal(_d._data), _js:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
                continue;
            };
            var __0:stdgo.GoString = (_js : stdgo.GoString)?.__copy__(), __1:stdgo.GoString = _d._want?.__copy__(), _want:stdgo.GoString = __1, _got:stdgo.GoString = __0;
            if (_got != (_want)) {
                _t.errorf(("got %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
function testTextMarshalerMapKeysAreSorted(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var __tmp__ = marshal(stdgo.Go.toInterface(({
            final x = new stdgo.GoMap.GoObjectMap<stdgo.encoding.json.Json.T_unmarshalerText, stdgo.StdGoTypes.GoInt>();
            x.t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.named("stdgo.encoding.json.Json.T_unmarshalerText", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "a", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "b", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }]), false, { get : () -> null }));
            x.__defaultValue__ = () -> (0 : stdgo.StdGoTypes.GoInt);
            @:mergeBlock {
                x.set((new stdgo.encoding.json.Json.T_unmarshalerText(("x" : stdgo.GoString), ("y" : stdgo.GoString)) : stdgo.encoding.json.Json.T_unmarshalerText), (1 : stdgo.StdGoTypes.GoInt));
                x.set((new stdgo.encoding.json.Json.T_unmarshalerText(("y" : stdgo.GoString), ("x" : stdgo.GoString)) : stdgo.encoding.json.Json.T_unmarshalerText), (2 : stdgo.StdGoTypes.GoInt));
                x.set((new stdgo.encoding.json.Json.T_unmarshalerText(("a" : stdgo.GoString), ("z" : stdgo.GoString)) : stdgo.encoding.json.Json.T_unmarshalerText), (3 : stdgo.StdGoTypes.GoInt));
                x.set((new stdgo.encoding.json.Json.T_unmarshalerText(("z" : stdgo.GoString), ("a" : stdgo.GoString)) : stdgo.encoding.json.Json.T_unmarshalerText), (4 : stdgo.StdGoTypes.GoInt));
            };
            cast x;
        } : stdgo.GoMap<stdgo.encoding.json.Json.T_unmarshalerText, stdgo.StdGoTypes.GoInt>))), _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Failed to Marshal text.Marshaler: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {};
        if ((_b : stdgo.GoString) != (("{\"a:z\":3,\"x:y\":1,\"y:x\":2,\"z:a\":4}" : stdgo.GoString))) {
            _t.errorf(("Marshal map with text.Marshaler keys: got %#q, want %#q" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(("{\"a:z\":3,\"x:y\":1,\"y:x\":2,\"z:a\":4}" : stdgo.GoString)));
        };
    }
/**
    // https://golang.org/issue/33675
**/
function testNilMarshalerTextMapKey(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var __tmp__ = marshal(stdgo.Go.toInterface(({
            final x = new stdgo.GoMap.GoRefMap<stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_unmarshalerText>, stdgo.StdGoTypes.GoInt>();
            @:mergeBlock {
                x.set(((null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_unmarshalerText>) : stdgo.StdGoTypes.Ref<T_unmarshalerText>), (1 : stdgo.StdGoTypes.GoInt));
                x.set((new stdgo.encoding.json.Json.T_unmarshalerText(("A" : stdgo.GoString), ("B" : stdgo.GoString)) : stdgo.encoding.json.Json.T_unmarshalerText), (2 : stdgo.StdGoTypes.GoInt));
            };
            cast x;
        } : stdgo.GoMap<stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_unmarshalerText>, stdgo.StdGoTypes.GoInt>))), _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Failed to Marshal *text.Marshaler: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {};
        if ((_b : stdgo.GoString) != (("{\"\":1,\"A:B\":2}" : stdgo.GoString))) {
            _t.errorf(("Marshal map with *text.Marshaler keys: got %#q, want %#q" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(("{\"\":1,\"A:B\":2}" : stdgo.GoString)));
        };
    }
function testMarshalFloat(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        _t.parallel();
        var _nfail:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        var _test:(stdgo.StdGoTypes.GoFloat64, stdgo.StdGoTypes.GoInt) -> Void = function(_f:stdgo.StdGoTypes.GoFloat64, _bits:stdgo.StdGoTypes.GoInt):Void {
            var _vf:stdgo.StdGoTypes.AnyInterface = stdgo.Go.toInterface(_f);
            if (_bits == ((32 : stdgo.StdGoTypes.GoInt))) {
                _f = ((_f : stdgo.StdGoTypes.GoFloat32) : stdgo.StdGoTypes.GoFloat64);
                _vf = stdgo.Go.toInterface((_f : stdgo.StdGoTypes.GoFloat32));
            };
            var __tmp__ = marshal(_vf), _bout:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("Marshal(%T(%g)): %v" : stdgo.GoString), _vf, _vf, stdgo.Go.toInterface(_err));
                _nfail++;
                return;
            };
            var _out:stdgo.GoString = (_bout : stdgo.GoString)?.__copy__();
            var __tmp__ = stdgo.strconv.Strconv.parseFloat(_out?.__copy__(), _bits), _g:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("Marshal(%T(%g)) = %q, cannot parse back: %v" : stdgo.GoString), _vf, _vf, stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_err));
                _nfail++;
                return;
            };
            if ((_f != _g) || (stdgo.fmt.Fmt.sprint(stdgo.Go.toInterface(_f)) != stdgo.fmt.Fmt.sprint(stdgo.Go.toInterface(_g)))) {
                _t.errorf(("Marshal(%T(%g)) = %q (is %g, not %g)" : stdgo.GoString), _vf, _vf, stdgo.Go.toInterface(_out), stdgo.Go.toInterface((_g : stdgo.StdGoTypes.GoFloat32)), _vf);
                _nfail++;
                return;
            };
            var _bad = _badFloatREs;
            if (_bits == ((64 : stdgo.StdGoTypes.GoInt))) {
                _bad = (_bad.__slice__(0, (_bad.length) - (2 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.regexp.Regexp.Regexp>>);
            };
            for (__8 => _re in _bad) {
                if (_re.matchString(_out?.__copy__())) {
                    _t.errorf(("Marshal(%T(%g)) = %q, must not match /%s/" : stdgo.GoString), _vf, _vf, stdgo.Go.toInterface(_out), stdgo.Go.toInterface(stdgo.Go.asInterface(_re)));
                    _nfail++;
                    return;
                };
            };
        };
        var __0:stdgo.StdGoTypes.GoFloat64 = stdgo.math.Math.inf((1 : stdgo.StdGoTypes.GoInt)), __1:stdgo.StdGoTypes.GoFloat64 = stdgo.math.Math.inf((-1 : stdgo.StdGoTypes.GoInt)), _smaller:stdgo.StdGoTypes.GoFloat64 = __1, _bigger:stdgo.StdGoTypes.GoFloat64 = __0;
        var _digits:stdgo.GoString = ("1.2345678901234567890123" : stdgo.GoString);
        {
            var _i:stdgo.StdGoTypes.GoInt = (_digits.length);
            stdgo.Go.cfor(_i >= (2 : stdgo.StdGoTypes.GoInt), _i--, {
                if (stdgo.testing.Testing.short() && (_i < (_digits.length - (4 : stdgo.StdGoTypes.GoInt)))) {
                    break;
                };
                {
                    var _exp:stdgo.StdGoTypes.GoInt = (-30 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_exp <= (30 : stdgo.StdGoTypes.GoInt), _exp++, {
                        for (__8 => _sign in ("+-" : stdgo.GoString)) {
                            {
                                var _bits:stdgo.StdGoTypes.GoInt = (32 : stdgo.StdGoTypes.GoInt);
                                stdgo.Go.cfor(_bits <= (64 : stdgo.StdGoTypes.GoInt), _bits = _bits + ((32 : stdgo.StdGoTypes.GoInt)), {
                                    var _s:stdgo.GoString = stdgo.fmt.Fmt.sprintf(("%c%se%d" : stdgo.GoString), stdgo.Go.toInterface(_sign), stdgo.Go.toInterface((_digits.__slice__(0, _i) : stdgo.GoString)), stdgo.Go.toInterface(_exp))?.__copy__();
                                    var __tmp__ = stdgo.strconv.Strconv.parseFloat(_s?.__copy__(), _bits), _f:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                    if (_err != null) {
                                        stdgo.log.Log.fatal(stdgo.Go.toInterface(_err));
                                    };
                                    var _next:(stdgo.StdGoTypes.GoFloat64, stdgo.StdGoTypes.GoFloat64) -> stdgo.StdGoTypes.GoFloat64 = stdgo.math.Math.nextafter;
                                    if (_bits == ((32 : stdgo.StdGoTypes.GoInt))) {
                                        _next = function(_g:stdgo.StdGoTypes.GoFloat64, _h:stdgo.StdGoTypes.GoFloat64):stdgo.StdGoTypes.GoFloat64 {
                                            return (stdgo.math.Math.nextafter32((_g : stdgo.StdGoTypes.GoFloat32), (_h : stdgo.StdGoTypes.GoFloat32)) : stdgo.StdGoTypes.GoFloat64);
                                        };
                                    };
                                    _test(_f, _bits);
                                    _test(_next(_f, _bigger), _bits);
                                    _test(_next(_f, _smaller), _bits);
                                    if (_nfail > (50 : stdgo.StdGoTypes.GoInt)) {
                                        _t.fatalf(("stopping test early" : stdgo.GoString));
                                    };
                                });
                            };
                        };
                    });
                };
            });
        };
        _test((0 : stdgo.StdGoTypes.GoFloat64), (64 : stdgo.StdGoTypes.GoInt));
        _test(stdgo.math.Math.copysign((0 : stdgo.StdGoTypes.GoFloat64), (-1 : stdgo.StdGoTypes.GoFloat64)), (64 : stdgo.StdGoTypes.GoInt));
        _test((0 : stdgo.StdGoTypes.GoFloat64), (32 : stdgo.StdGoTypes.GoInt));
        _test(stdgo.math.Math.copysign((0 : stdgo.StdGoTypes.GoFloat64), (-1 : stdgo.StdGoTypes.GoFloat64)), (32 : stdgo.StdGoTypes.GoInt));
    }
/**
    
    
    
**/
@:structInit class T_testMarshalRawMessageValue_136___localname___T1 {
    @:tag("`json:\",omitempty\"`")
    public var m : stdgo.encoding.json.Json.RawMessage = new stdgo.encoding.json.Json.RawMessage(0, 0);
    public function new(?m:stdgo.encoding.json.Json.RawMessage) {
        if (m != null) this.m = m;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testMarshalRawMessageValue_136___localname___T1(m);
    }
}
/**
    
    
    
**/
@:structInit class T_testMarshalRawMessageValue_137___localname___T2 {
    @:tag("`json:\",omitempty\"`")
    public var m : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage>);
    public function new(?m:stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage>) {
        if (m != null) this.m = m;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testMarshalRawMessageValue_137___localname___T2(m);
    }
}
function testMarshalRawMessageValue(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        var __0:stdgo.encoding.json.Json.RawMessage = (new stdgo.encoding.json.Json.RawMessage(0, 0) : RawMessage), __1:stdgo.encoding.json.Json.RawMessage = ((new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(0, 0) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : RawMessage), __2:stdgo.encoding.json.Json.RawMessage = ((("\"foo\"" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>) : RawMessage), _rawText:stdgo.encoding.json.Json.RawMessage = __2, _rawEmpty:stdgo.encoding.json.Json.RawMessage = __1, _rawNil:stdgo.encoding.json.Json.RawMessage = __0;
        var _tests = (new stdgo.Slice<T__struct_29>(
54,
54,
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface(_rawNil)), _want : ("null" : stdgo.GoString), _ok : true } : T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rawNil) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage>))), _want : ("null" : stdgo.GoString), _ok : true } : T__struct_29),
({ _in : stdgo.Go.toInterface((new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(1, 1, stdgo.Go.toInterface(stdgo.Go.asInterface(_rawNil))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>)), _want : ("[null]" : stdgo.GoString), _ok : true } : T__struct_29),
({ _in : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(1, 1, stdgo.Go.toInterface(stdgo.Go.asInterface(_rawNil))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>)) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.AnyInterface>>)), _want : ("[null]" : stdgo.GoString), _ok : true } : T__struct_29),
({ _in : stdgo.Go.toInterface((new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(1, 1, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rawNil) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage>)))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>)), _want : ("[null]" : stdgo.GoString), _ok : true } : T__struct_29),
({ _in : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(1, 1, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rawNil) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage>)))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>)) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.AnyInterface>>)), _want : ("[null]" : stdgo.GoString), _ok : true } : T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface(({ m : _rawNil } : T__struct_30))), _want : ("{\"M\":null}" : stdgo.GoString), _ok : true } : T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ m : _rawNil } : T__struct_30)) : stdgo.StdGoTypes.Ref<T__struct_30>))), _want : ("{\"M\":null}" : stdgo.GoString), _ok : true } : T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface(({ m : (stdgo.Go.setRef(_rawNil) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage>) } : T__struct_31))), _want : ("{\"M\":null}" : stdgo.GoString), _ok : true } : T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ m : (stdgo.Go.setRef(_rawNil) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage>) } : T__struct_31)) : stdgo.StdGoTypes.Ref<T__struct_31>))), _want : ("{\"M\":null}" : stdgo.GoString), _ok : true } : T__struct_29),
({ _in : stdgo.Go.toInterface(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
            @:mergeBlock {
                x.set(("M" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_rawNil)));
            };
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>)), _want : ("{\"M\":null}" : stdgo.GoString), _ok : true } : T__struct_29),
({ _in : stdgo.Go.toInterface((stdgo.Go.setRef(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
            @:mergeBlock {
                x.set(("M" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_rawNil)));
            };
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>)) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>>)), _want : ("{\"M\":null}" : stdgo.GoString), _ok : true } : T__struct_29),
({ _in : stdgo.Go.toInterface(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
            @:mergeBlock {
                x.set(("M" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rawNil) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage>))));
            };
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>)), _want : ("{\"M\":null}" : stdgo.GoString), _ok : true } : T__struct_29),
({ _in : stdgo.Go.toInterface((stdgo.Go.setRef(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
            @:mergeBlock {
                x.set(("M" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rawNil) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage>))));
            };
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>)) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>>)), _want : ("{\"M\":null}" : stdgo.GoString), _ok : true } : T__struct_29),
({ _in : stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_testMarshalRawMessageValue_136___localname___T1(_rawNil) : stdgo.encoding.json.Json.T_testMarshalRawMessageValue_136___localname___T1)), _want : ("{}" : stdgo.GoString), _ok : true } : T__struct_29),
({ _in : stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_testMarshalRawMessageValue_137___localname___T2((stdgo.Go.setRef(_rawNil) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage>)) : stdgo.encoding.json.Json.T_testMarshalRawMessageValue_137___localname___T2)), _want : ("{\"M\":null}" : stdgo.GoString), _ok : true } : T__struct_29),
({ _in : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.T_testMarshalRawMessageValue_136___localname___T1(_rawNil) : stdgo.encoding.json.Json.T_testMarshalRawMessageValue_136___localname___T1)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testMarshalRawMessageValue_136___localname___T1>)), _want : ("{}" : stdgo.GoString), _ok : true } : T__struct_29),
({ _in : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.T_testMarshalRawMessageValue_137___localname___T2((stdgo.Go.setRef(_rawNil) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage>)) : stdgo.encoding.json.Json.T_testMarshalRawMessageValue_137___localname___T2)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testMarshalRawMessageValue_137___localname___T2>)), _want : ("{\"M\":null}" : stdgo.GoString), _ok : true } : T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface(_rawEmpty)), _want : stdgo.Go.str()?.__copy__(), _ok : false } : T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rawEmpty) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage>))), _want : stdgo.Go.str()?.__copy__(), _ok : false } : T__struct_29),
({ _in : stdgo.Go.toInterface((new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(1, 1, stdgo.Go.toInterface(stdgo.Go.asInterface(_rawEmpty))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>)), _want : stdgo.Go.str()?.__copy__(), _ok : false } : T__struct_29),
({ _in : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(1, 1, stdgo.Go.toInterface(stdgo.Go.asInterface(_rawEmpty))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>)) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.AnyInterface>>)), _want : stdgo.Go.str()?.__copy__(), _ok : false } : T__struct_29),
({ _in : stdgo.Go.toInterface((new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(1, 1, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rawEmpty) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage>)))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>)), _want : stdgo.Go.str()?.__copy__(), _ok : false } : T__struct_29),
({ _in : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(1, 1, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rawEmpty) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage>)))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>)) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.AnyInterface>>)), _want : stdgo.Go.str()?.__copy__(), _ok : false } : T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface(({ x : _rawEmpty } : T__struct_32))), _want : stdgo.Go.str()?.__copy__(), _ok : false } : T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ x : _rawEmpty } : T__struct_32)) : stdgo.StdGoTypes.Ref<T__struct_32>))), _want : stdgo.Go.str()?.__copy__(), _ok : false } : T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface(({ x : (stdgo.Go.setRef(_rawEmpty) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage>) } : T__struct_33))), _want : stdgo.Go.str()?.__copy__(), _ok : false } : T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ x : (stdgo.Go.setRef(_rawEmpty) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage>) } : T__struct_33)) : stdgo.StdGoTypes.Ref<T__struct_33>))), _want : stdgo.Go.str()?.__copy__(), _ok : false } : T__struct_29),
({ _in : stdgo.Go.toInterface(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
            @:mergeBlock {
                x.set(("nil" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_rawEmpty)));
            };
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>)), _want : stdgo.Go.str()?.__copy__(), _ok : false } : T__struct_29),
({ _in : stdgo.Go.toInterface((stdgo.Go.setRef(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
            @:mergeBlock {
                x.set(("nil" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_rawEmpty)));
            };
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>)) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>>)), _want : stdgo.Go.str()?.__copy__(), _ok : false } : T__struct_29),
({ _in : stdgo.Go.toInterface(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
            @:mergeBlock {
                x.set(("nil" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rawEmpty) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage>))));
            };
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>)), _want : stdgo.Go.str()?.__copy__(), _ok : false } : T__struct_29),
({ _in : stdgo.Go.toInterface((stdgo.Go.setRef(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
            @:mergeBlock {
                x.set(("nil" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rawEmpty) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage>))));
            };
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>)) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>>)), _want : stdgo.Go.str()?.__copy__(), _ok : false } : T__struct_29),
({ _in : stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_testMarshalRawMessageValue_136___localname___T1(_rawEmpty) : stdgo.encoding.json.Json.T_testMarshalRawMessageValue_136___localname___T1)), _want : ("{}" : stdgo.GoString), _ok : true } : T__struct_29),
({ _in : stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_testMarshalRawMessageValue_137___localname___T2((stdgo.Go.setRef(_rawEmpty) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage>)) : stdgo.encoding.json.Json.T_testMarshalRawMessageValue_137___localname___T2)), _want : stdgo.Go.str()?.__copy__(), _ok : false } : T__struct_29),
({ _in : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.T_testMarshalRawMessageValue_136___localname___T1(_rawEmpty) : stdgo.encoding.json.Json.T_testMarshalRawMessageValue_136___localname___T1)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testMarshalRawMessageValue_136___localname___T1>)), _want : ("{}" : stdgo.GoString), _ok : true } : T__struct_29),
({ _in : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.T_testMarshalRawMessageValue_137___localname___T2((stdgo.Go.setRef(_rawEmpty) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage>)) : stdgo.encoding.json.Json.T_testMarshalRawMessageValue_137___localname___T2)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testMarshalRawMessageValue_137___localname___T2>)), _want : stdgo.Go.str()?.__copy__(), _ok : false } : T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface(_rawText)), _want : ("\"foo\"" : stdgo.GoString), _ok : true } : T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rawText) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage>))), _want : ("\"foo\"" : stdgo.GoString), _ok : true } : T__struct_29),
({ _in : stdgo.Go.toInterface((new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(1, 1, stdgo.Go.toInterface(stdgo.Go.asInterface(_rawText))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>)), _want : ("[\"foo\"]" : stdgo.GoString), _ok : true } : T__struct_29),
({ _in : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(1, 1, stdgo.Go.toInterface(stdgo.Go.asInterface(_rawText))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>)) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.AnyInterface>>)), _want : ("[\"foo\"]" : stdgo.GoString), _ok : true } : T__struct_29),
({ _in : stdgo.Go.toInterface((new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(1, 1, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rawText) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage>)))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>)), _want : ("[\"foo\"]" : stdgo.GoString), _ok : true } : T__struct_29),
({ _in : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(1, 1, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rawText) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage>)))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>)) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.AnyInterface>>)), _want : ("[\"foo\"]" : stdgo.GoString), _ok : true } : T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface(({ m : _rawText } : T__struct_30))), _want : ("{\"M\":\"foo\"}" : stdgo.GoString), _ok : true } : T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ m : _rawText } : T__struct_30)) : stdgo.StdGoTypes.Ref<T__struct_30>))), _want : ("{\"M\":\"foo\"}" : stdgo.GoString), _ok : true } : T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface(({ m : (stdgo.Go.setRef(_rawText) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage>) } : T__struct_31))), _want : ("{\"M\":\"foo\"}" : stdgo.GoString), _ok : true } : T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ m : (stdgo.Go.setRef(_rawText) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage>) } : T__struct_31)) : stdgo.StdGoTypes.Ref<T__struct_31>))), _want : ("{\"M\":\"foo\"}" : stdgo.GoString), _ok : true } : T__struct_29),
({ _in : stdgo.Go.toInterface(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
            @:mergeBlock {
                x.set(("M" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_rawText)));
            };
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>)), _want : ("{\"M\":\"foo\"}" : stdgo.GoString), _ok : true } : T__struct_29),
({ _in : stdgo.Go.toInterface((stdgo.Go.setRef(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
            @:mergeBlock {
                x.set(("M" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_rawText)));
            };
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>)) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>>)), _want : ("{\"M\":\"foo\"}" : stdgo.GoString), _ok : true } : T__struct_29),
({ _in : stdgo.Go.toInterface(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
            @:mergeBlock {
                x.set(("M" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rawText) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage>))));
            };
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>)), _want : ("{\"M\":\"foo\"}" : stdgo.GoString), _ok : true } : T__struct_29),
({ _in : stdgo.Go.toInterface((stdgo.Go.setRef(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
            @:mergeBlock {
                x.set(("M" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rawText) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage>))));
            };
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>)) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>>)), _want : ("{\"M\":\"foo\"}" : stdgo.GoString), _ok : true } : T__struct_29),
({ _in : stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_testMarshalRawMessageValue_136___localname___T1(_rawText) : stdgo.encoding.json.Json.T_testMarshalRawMessageValue_136___localname___T1)), _want : ("{\"M\":\"foo\"}" : stdgo.GoString), _ok : true } : T__struct_29),
({ _in : stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_testMarshalRawMessageValue_137___localname___T2((stdgo.Go.setRef(_rawText) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage>)) : stdgo.encoding.json.Json.T_testMarshalRawMessageValue_137___localname___T2)), _want : ("{\"M\":\"foo\"}" : stdgo.GoString), _ok : true } : T__struct_29),
({ _in : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.T_testMarshalRawMessageValue_136___localname___T1(_rawText) : stdgo.encoding.json.Json.T_testMarshalRawMessageValue_136___localname___T1)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testMarshalRawMessageValue_136___localname___T1>)), _want : ("{\"M\":\"foo\"}" : stdgo.GoString), _ok : true } : T__struct_29),
({ _in : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.T_testMarshalRawMessageValue_137___localname___T2((stdgo.Go.setRef(_rawText) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage>)) : stdgo.encoding.json.Json.T_testMarshalRawMessageValue_137___localname___T2)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testMarshalRawMessageValue_137___localname___T2>)), _want : ("{\"M\":\"foo\"}" : stdgo.GoString), _ok : true } : T__struct_29)) : stdgo.Slice<T__struct_29>);
        for (_i => _tt in _tests) {
            var __tmp__ = marshal(_tt._in), _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            {
                var _ok:Bool = (_err == null);
                if (_ok != (_tt._ok)) {
                    if (_err != null) {
                        _t.errorf(("test %d, unexpected failure: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                    } else {
                        _t.errorf(("test %d, unexpected success" : stdgo.GoString), stdgo.Go.toInterface(_i));
                    };
                };
            };
            {
                var _got:stdgo.GoString = (_b : stdgo.GoString)?.__copy__();
                if (_got != (_tt._want)) {
                    _t.errorf(("test %d, Marshal(%#v) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_i), _tt._in, stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
    }
function testMarshalPanic(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _got:stdgo.StdGoTypes.AnyInterface = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (!stdgo.reflect.Reflect.deepEqual(_got, stdgo.Go.toInterface((57005 : stdgo.StdGoTypes.GoInt)))) {
                            _t.errorf(("panic() = (%T)(%v), want 0xdead" : stdgo.GoString), _got, _got);
                        };
                    };
                };
                a();
            });
            marshal(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.T_marshalPanic() : stdgo.encoding.json.Json.T_marshalPanic)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_marshalPanic>))));
            _t.error(stdgo.Go.toInterface(("Marshal should have panicked" : stdgo.GoString)));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
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
            return;
        };
    }
function testMarshalUncommonFieldNames(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _v:T__struct_34 = ({ a0 : (0 : stdgo.StdGoTypes.GoInt), __192 : (0 : stdgo.StdGoTypes.GoInt), a946 : (0 : stdgo.StdGoTypes.GoInt) } : T__struct_34);
        var __tmp__ = marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_v))), _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("Marshal:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _want:stdgo.GoString = ("{\"A0\":0,\"À\":0,\"Aβ\":0}" : stdgo.GoString);
        var _got:stdgo.GoString = (_b : stdgo.GoString)?.__copy__();
        if (_got != (_want)) {
            _t.fatalf(("Marshal: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
    }
function testMarshalerError(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _s:stdgo.GoString = ("test variable" : stdgo.GoString);
        var _st:stdgo.reflect.Reflect.Type_ = stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(_s));
        var _errText:stdgo.GoString = ("json: test error" : stdgo.GoString);
        var _tests = (new stdgo.Slice<T__struct_35>(2, 2, ({ _err : (stdgo.Go.setRef((new stdgo.encoding.json.Json.MarshalerError(_st, stdgo.fmt.Fmt.errorf(_errText?.__copy__()), stdgo.Go.str()?.__copy__()) : stdgo.encoding.json.Json.MarshalerError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.MarshalerError>), _want : ("json: error calling MarshalJSON for type " : stdgo.GoString) + (_st.string() : stdgo.GoString)?.__copy__() + (": " : stdgo.GoString)?.__copy__() + _errText?.__copy__()?.__copy__() } : T__struct_35), ({ _err : (stdgo.Go.setRef((new stdgo.encoding.json.Json.MarshalerError(_st, stdgo.fmt.Fmt.errorf(_errText?.__copy__()), ("TestMarshalerError" : stdgo.GoString)) : stdgo.encoding.json.Json.MarshalerError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.MarshalerError>), _want : ("json: error calling TestMarshalerError for type " : stdgo.GoString) + (_st.string() : stdgo.GoString)?.__copy__() + (": " : stdgo.GoString)?.__copy__() + _errText?.__copy__()?.__copy__() } : T__struct_35)) : stdgo.Slice<T__struct_35>);
        for (_i => _tt in _tests) {
            var _got:stdgo.GoString = _tt._err.error()?.__copy__();
            if (_got != (_tt._want)) {
                _t.errorf(("MarshalerError test %d, got: %s, want: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
            };
        };
    }
/**
    // foldName returns a folded string such that foldName(x) == foldName(y)
    // is identical to bytes.EqualFold(x, y).
**/
function _foldName(_in:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Slice<stdgo.StdGoTypes.GoByte> {
        var _arr:stdgo.GoArray<stdgo.StdGoTypes.GoByte> = new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>(...[for (i in 0 ... 32) (0 : stdgo.StdGoTypes.GoUInt8)]);
        return _appendFoldedName((_arr.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _in);
    }
function _appendFoldedName(_out:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _in:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Slice<stdgo.StdGoTypes.GoByte> {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            while (_i < (_in.length)) {
                {
                    var _c:stdgo.StdGoTypes.GoUInt8 = _in[(_i : stdgo.StdGoTypes.GoInt)];
                    if (_c < (128 : stdgo.StdGoTypes.GoUInt8)) {
                        if (((97 : stdgo.StdGoTypes.GoUInt8) <= _c) && (_c <= (122 : stdgo.StdGoTypes.GoUInt8))) {
                            _c = _c - ((32 : stdgo.StdGoTypes.GoUInt8));
                        };
                        _out = (_out.__append__(_c));
                        _i++;
                        continue;
                    };
                };
                var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune((_in.__slice__(_i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)), _r:stdgo.StdGoTypes.GoInt32 = __tmp__._0, _n:stdgo.StdGoTypes.GoInt = __tmp__._1;
                _out = stdgo.unicode.utf8.Utf8.appendRune(_out, _foldRune(_r));
                _i = _i + (_n);
            };
        };
        return _out;
    }
/**
    // foldRune is returns the smallest rune for all runes in the same fold set.
**/
function _foldRune(_r:stdgo.StdGoTypes.GoRune):stdgo.StdGoTypes.GoRune {
        while (true) {
            var _r2:stdgo.StdGoTypes.GoInt32 = stdgo.unicode.Unicode.simpleFold(_r);
            if (_r2 <= _r) {
                return _r2;
            };
            _r = _r2;
        };
    }
function fuzzEqualFold(_f:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.F>):Void {
        for (__8 => _ss in (new stdgo.Slice<stdgo.GoArray<stdgo.GoString>>(
25,
25,
(new stdgo.GoArray<stdgo.GoString>(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo.GoArray<stdgo.GoString>),
(new stdgo.GoArray<stdgo.GoString>(("123abc" : stdgo.GoString), ("123ABC" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>),
(new stdgo.GoArray<stdgo.GoString>(("αβδ" : stdgo.GoString), ("ΑΒΔ" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>),
(new stdgo.GoArray<stdgo.GoString>(("abc" : stdgo.GoString), ("xyz" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>),
(new stdgo.GoArray<stdgo.GoString>(("abc" : stdgo.GoString), ("XYZ" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>),
(new stdgo.GoArray<stdgo.GoString>(("1" : stdgo.GoString), ("2" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>),
(new stdgo.GoArray<stdgo.GoString>(("hello, world!" : stdgo.GoString), ("hello, world!" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>),
(new stdgo.GoArray<stdgo.GoString>(("hello, world!" : stdgo.GoString), ("Hello, World!" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>),
(new stdgo.GoArray<stdgo.GoString>(("hello, world!" : stdgo.GoString), ("HELLO, WORLD!" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>),
(new stdgo.GoArray<stdgo.GoString>(("hello, world!" : stdgo.GoString), ("jello, world!" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>),
(new stdgo.GoArray<stdgo.GoString>(("γειά, κόσμε!" : stdgo.GoString), ("γειά, κόσμε!" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>),
(new stdgo.GoArray<stdgo.GoString>(("γειά, κόσμε!" : stdgo.GoString), ("Γειά, Κόσμε!" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>),
(new stdgo.GoArray<stdgo.GoString>(("γειά, κόσμε!" : stdgo.GoString), ("ΓΕΙΆ, ΚΌΣΜΕ!" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>),
(new stdgo.GoArray<stdgo.GoString>(("γειά, κόσμε!" : stdgo.GoString), ("ΛΕΙΆ, ΚΌΣΜΕ!" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>),
(new stdgo.GoArray<stdgo.GoString>(("AESKey" : stdgo.GoString), ("aesKey" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>),
(new stdgo.GoArray<stdgo.GoString>(("AESKEY" : stdgo.GoString), ("aes_key" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>),
(new stdgo.GoArray<stdgo.GoString>(("aes_key" : stdgo.GoString), ("AES_KEY" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>),
(new stdgo.GoArray<stdgo.GoString>(("AES_KEY" : stdgo.GoString), ("aes-key" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>),
(new stdgo.GoArray<stdgo.GoString>(("aes-key" : stdgo.GoString), ("AES-KEY" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>),
(new stdgo.GoArray<stdgo.GoString>(("AES-KEY" : stdgo.GoString), ("aesKey" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>),
(new stdgo.GoArray<stdgo.GoString>(("aesKey" : stdgo.GoString), ("AesKey" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>),
(new stdgo.GoArray<stdgo.GoString>(("AesKey" : stdgo.GoString), ("AESKey" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>),
(new stdgo.GoArray<stdgo.GoString>(("AESKey" : stdgo.GoString), ("aeskey" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>),
(new stdgo.GoArray<stdgo.GoString>(("DESKey" : stdgo.GoString), ("aeskey" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>),
(new stdgo.GoArray<stdgo.GoString>(("AES Key" : stdgo.GoString), ("aeskey" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>)) : stdgo.Slice<stdgo.GoArray<stdgo.GoString>>)) {
            _f.add(stdgo.Go.toInterface((_ss[(0 : stdgo.StdGoTypes.GoInt)] : stdgo.Slice<stdgo.StdGoTypes.GoByte>)), stdgo.Go.toInterface((_ss[(1 : stdgo.StdGoTypes.GoInt)] : stdgo.Slice<stdgo.StdGoTypes.GoByte>)));
        };
        var _equalFold = function(_x:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _y:stdgo.Slice<stdgo.StdGoTypes.GoByte>):Bool {
            return (_foldName(_x) : stdgo.GoString) == ((_foldName(_y) : stdgo.GoString));
        };
        _f.fuzz(stdgo.Go.toInterface(function(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>, _x:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _y:stdgo.Slice<stdgo.StdGoTypes.GoByte>):Void {
            var _got:Bool = _equalFold(_x, _y);
            var _want:Bool = stdgo.bytes.Bytes.equalFold(_x, _y);
            if (_got != (_want)) {
                _t.errorf(("equalFold(%q, %q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        }));
    }
function fuzzUnmarshalJSON(_f:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.F>):Void {
        _f.add(stdgo.Go.toInterface((("{\n\"object\": {\n\t\"slice\": [\n\t\t1,\n\t\t2.0,\n\t\t\"3\",\n\t\t[4],\n\t\t{5: {}}\n\t]\n},\n\"slice\": [[]],\n\"string\": \":)\",\n\"int\": 1e5,\n\"float\": 3e-9\"\n}" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)));
        _f.fuzz(stdgo.Go.toInterface(function(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):Void {
            for (__24 => _typ in (new stdgo.Slice<() -> stdgo.StdGoTypes.AnyInterface>(3, 3, function():stdgo.StdGoTypes.AnyInterface {
                return stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.StdGoTypes.AnyInterface)) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>));
            }, function():stdgo.StdGoTypes.AnyInterface {
                return stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>)) : stdgo.StdGoTypes.Ref<stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>>));
            }, function():stdgo.StdGoTypes.AnyInterface {
                return stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>)) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.AnyInterface>>));
            }) : stdgo.Slice<() -> stdgo.StdGoTypes.AnyInterface>)) {
                var _i:stdgo.StdGoTypes.AnyInterface = _typ();
                {
                    var _err:stdgo.Error = unmarshal(_b, _i);
                    if (_err != null) {
                        return;
                    };
                };
                var __tmp__ = marshal(_i), _encoded:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(("failed to marshal: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
                {
                    var _err:stdgo.Error = unmarshal(_encoded, _i);
                    if (_err != null) {
                        _t.fatalf(("failed to roundtrip: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    };
                };
            };
        }));
    }
function fuzzDecoderToken(_f:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.F>):Void {
        _f.add(stdgo.Go.toInterface((("{\n\"object\": {\n\t\"slice\": [\n\t\t1,\n\t\t2.0,\n\t\t\"3\",\n\t\t[4],\n\t\t{5: {}}\n\t]\n},\n\"slice\": [[]],\n\"string\": \":)\",\n\"int\": 1e5,\n\"float\": 3e-9\"\n}" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>)));
        _f.fuzz(stdgo.Go.toInterface(function(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):Void {
            var _r = stdgo.bytes.Bytes.newReader(_b);
            var _d = newDecoder(stdgo.Go.asInterface(_r));
            while (true) {
                var __tmp__ = _d.token(), __24:stdgo.encoding.json.Json.Token = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo.io.Io.eof))) {
                        break;
                    };
                    return;
                };
            };
        }));
    }
/**
    // HTMLEscape appends to dst the JSON-encoded src with <, >, &, U+2028 and U+2029
    // characters inside string literals changed to \u003c, \u003e, \u0026, \u2028, \u2029
    // so that the JSON will be safe to embed inside HTML <script> tags.
    // For historical reasons, web browsers don't honor standard HTML
    // escaping within <script> tags, so an alternative JSON encoding must be used.
**/
function htmlescape(_dst:stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>, _src:stdgo.Slice<stdgo.StdGoTypes.GoByte>):Void {
        _dst.grow((_src.length));
        _dst.write(_appendHTMLEscape(_dst.availableBuffer(), _src));
    }
function _appendHTMLEscape(_dst:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _src:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Slice<stdgo.StdGoTypes.GoByte> {
        var _start:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        for (_i => _c in _src) {
            if (((_c == (60 : stdgo.StdGoTypes.GoUInt8)) || (_c == (62 : stdgo.StdGoTypes.GoUInt8))) || (_c == (38 : stdgo.StdGoTypes.GoUInt8))) {
                _dst = (_dst.__append__(...(_src.__slice__(_start, _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>).__toArray__()));
                _dst = (_dst.__append__((92 : stdgo.StdGoTypes.GoUInt8), (117 : stdgo.StdGoTypes.GoUInt8), (48 : stdgo.StdGoTypes.GoUInt8), (48 : stdgo.StdGoTypes.GoUInt8), _hex[(_c >> (4i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoInt)], _hex[(_c & (15 : stdgo.StdGoTypes.GoUInt8) : stdgo.StdGoTypes.GoInt)]));
                _start = _i + (1 : stdgo.StdGoTypes.GoInt);
            };
            if ((((_c == (226 : stdgo.StdGoTypes.GoUInt8)) && ((_i + (2 : stdgo.StdGoTypes.GoInt)) < _src.length)) && (_src[(_i + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] == (128 : stdgo.StdGoTypes.GoUInt8))) && ((_src[(_i + (2 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] & ((1 : stdgo.StdGoTypes.GoUInt8) ^ (-1i32 : stdgo.StdGoTypes.GoInt))) == (168 : stdgo.StdGoTypes.GoUInt8))) {
                _dst = (_dst.__append__(...(_src.__slice__(_start, _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>).__toArray__()));
                _dst = (_dst.__append__((92 : stdgo.StdGoTypes.GoUInt8), (117 : stdgo.StdGoTypes.GoUInt8), (50 : stdgo.StdGoTypes.GoUInt8), (48 : stdgo.StdGoTypes.GoUInt8), (50 : stdgo.StdGoTypes.GoUInt8), _hex[(_src[(_i + (2 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] & (15 : stdgo.StdGoTypes.GoUInt8) : stdgo.StdGoTypes.GoInt)]));
                _start = _i + (("\u2029" : stdgo.GoString).length);
            };
        };
        return (_dst.__append__(...(_src.__slice__(_start) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>).__toArray__()));
    }
/**
    // Compact appends to dst the JSON-encoded src with
    // insignificant space characters elided.
**/
function compact(_dst:stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>, _src:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error {
        _dst.grow((_src.length));
        var _b = _dst.availableBuffer();
        var __tmp__ = _appendCompact(_b, _src, false), _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _dst.write(_b);
        return _err;
    }
function _appendCompact(_dst:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _src:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _escape:Bool):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _origLen:stdgo.StdGoTypes.GoInt = (_dst.length);
            var _scan = _newScanner();
            {
                var _a0 = _scan;
                __deferstack__.unshift(() -> _freeScanner(_a0));
            };
            var _start:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            for (_i => _c in _src) {
                if (_escape && (((_c == (60 : stdgo.StdGoTypes.GoUInt8)) || (_c == (62 : stdgo.StdGoTypes.GoUInt8))) || (_c == (38 : stdgo.StdGoTypes.GoUInt8)))) {
                    _dst = (_dst.__append__(...(_src.__slice__(_start, _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>).__toArray__()));
                    _dst = (_dst.__append__((92 : stdgo.StdGoTypes.GoUInt8), (117 : stdgo.StdGoTypes.GoUInt8), (48 : stdgo.StdGoTypes.GoUInt8), (48 : stdgo.StdGoTypes.GoUInt8), _hex[(_c >> (4i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoInt)], _hex[(_c & (15 : stdgo.StdGoTypes.GoUInt8) : stdgo.StdGoTypes.GoInt)]));
                    _start = _i + (1 : stdgo.StdGoTypes.GoInt);
                };
                if ((((_escape && (_c == (226 : stdgo.StdGoTypes.GoUInt8))) && ((_i + (2 : stdgo.StdGoTypes.GoInt)) < _src.length)) && (_src[(_i + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] == (128 : stdgo.StdGoTypes.GoUInt8))) && ((_src[(_i + (2 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] & ((1 : stdgo.StdGoTypes.GoUInt8) ^ (-1i32 : stdgo.StdGoTypes.GoInt))) == (168 : stdgo.StdGoTypes.GoUInt8))) {
                    _dst = (_dst.__append__(...(_src.__slice__(_start, _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>).__toArray__()));
                    _dst = (_dst.__append__((92 : stdgo.StdGoTypes.GoUInt8), (117 : stdgo.StdGoTypes.GoUInt8), (50 : stdgo.StdGoTypes.GoUInt8), (48 : stdgo.StdGoTypes.GoUInt8), (50 : stdgo.StdGoTypes.GoUInt8), _hex[(_src[(_i + (2 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] & (15 : stdgo.StdGoTypes.GoUInt8) : stdgo.StdGoTypes.GoInt)]));
                    _start = _i + (("\u2029" : stdgo.GoString).length);
                };
                var _v:stdgo.StdGoTypes.GoInt = _scan._step(_scan, _c);
                if (_v >= (9 : stdgo.StdGoTypes.GoInt)) {
                    if (_v == ((11 : stdgo.StdGoTypes.GoInt))) {
                        break;
                    };
                    _dst = (_dst.__append__(...(_src.__slice__(_start, _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>).__toArray__()));
                    _start = _i + (1 : stdgo.StdGoTypes.GoInt);
                };
            };
            if (_scan._eof() == ((11 : stdgo.StdGoTypes.GoInt))) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return { _0 : (_dst.__slice__(0, _origLen) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _1 : _scan._err };
                };
            };
            _dst = (_dst.__append__(...(_src.__slice__(_start) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>).__toArray__()));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return { _0 : _dst, _1 : (null : stdgo.Error) };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _1 : (null : stdgo.Error) };
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
            return { _0 : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _1 : (null : stdgo.Error) };
        };
    }
function _appendNewline(_dst:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _prefix:stdgo.GoString, _indent:stdgo.GoString, _depth:stdgo.StdGoTypes.GoInt):stdgo.Slice<stdgo.StdGoTypes.GoByte> {
        _dst = (_dst.__append__((10 : stdgo.StdGoTypes.GoUInt8)));
        _dst = (_dst.__append__(..._prefix.__toArray__()));
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _depth, _i++, {
                _dst = (_dst.__append__(..._indent.__toArray__()));
            });
        };
        return _dst;
    }
/**
    // Indent appends to dst an indented form of the JSON-encoded src.
    // Each element in a JSON object or array begins on a new,
    // indented line beginning with prefix followed by one or more
    // copies of indent according to the indentation nesting.
    // The data appended to dst does not begin with the prefix nor
    // any indentation, to make it easier to embed inside other formatted JSON data.
    // Although leading space characters (space, tab, carriage return, newline)
    // at the beginning of src are dropped, trailing space characters
    // at the end of src are preserved and copied to dst.
    // For example, if src has no trailing spaces, neither will dst;
    // if src ends in a trailing newline, so will dst.
**/
function indent(_dst:stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>, _src:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _prefix:stdgo.GoString, _indent:stdgo.GoString):stdgo.Error {
        _dst.grow((2 : stdgo.StdGoTypes.GoInt) * (_src.length));
        var _b = _dst.availableBuffer();
        var __tmp__ = _appendIndent(_b, _src, _prefix?.__copy__(), _indent?.__copy__()), _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _dst.write(_b);
        return _err;
    }
function _appendIndent(_dst:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _src:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _prefix:stdgo.GoString, _indent:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _origLen:stdgo.StdGoTypes.GoInt = (_dst.length);
            var _scan = _newScanner();
            {
                var _a0 = _scan;
                __deferstack__.unshift(() -> _freeScanner(_a0));
            };
            var _needIndent:Bool = false;
            var _depth:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            for (__8 => _c in _src) {
                _scan._bytes++;
                var _v:stdgo.StdGoTypes.GoInt = _scan._step(_scan, _c);
                if (_v == ((9 : stdgo.StdGoTypes.GoInt))) {
                    continue;
                };
                if (_v == ((11 : stdgo.StdGoTypes.GoInt))) {
                    break;
                };
                if ((_needIndent && (_v != (5 : stdgo.StdGoTypes.GoInt))) && (_v != (8 : stdgo.StdGoTypes.GoInt))) {
                    _needIndent = false;
                    _depth++;
                    _dst = _appendNewline(_dst, _prefix?.__copy__(), _indent?.__copy__(), _depth);
                };
                if (_v == ((0 : stdgo.StdGoTypes.GoInt))) {
                    _dst = (_dst.__append__(_c));
                    continue;
                };
                {
                    final __value__ = _c;
                    if (__value__ == ((123 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((91 : stdgo.StdGoTypes.GoUInt8))) {
                        _needIndent = true;
                        _dst = (_dst.__append__(_c));
                    } else if (__value__ == ((44 : stdgo.StdGoTypes.GoUInt8))) {
                        _dst = (_dst.__append__(_c));
                        _dst = _appendNewline(_dst, _prefix?.__copy__(), _indent?.__copy__(), _depth);
                    } else if (__value__ == ((58 : stdgo.StdGoTypes.GoUInt8))) {
                        _dst = (_dst.__append__(_c, (32 : stdgo.StdGoTypes.GoUInt8)));
                    } else if (__value__ == ((125 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((93 : stdgo.StdGoTypes.GoUInt8))) {
                        if (_needIndent) {
                            _needIndent = false;
                        } else {
                            _depth--;
                            _dst = _appendNewline(_dst, _prefix?.__copy__(), _indent?.__copy__(), _depth);
                        };
                        _dst = (_dst.__append__(_c));
                    } else {
                        _dst = (_dst.__append__(_c));
                    };
                };
            };
            if (_scan._eof() == ((11 : stdgo.StdGoTypes.GoInt))) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return { _0 : (_dst.__slice__(0, _origLen) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _1 : _scan._err };
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return { _0 : _dst, _1 : (null : stdgo.Error) };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _1 : (null : stdgo.Error) };
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
            return { _0 : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _1 : (null : stdgo.Error) };
        };
    }
function testNumberIsValid(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _jsonNumberRegexp:stdgo.StdGoTypes.Ref<stdgo.regexp.Regexp.Regexp> = stdgo.regexp.Regexp.mustCompile(("^-?(?:0|[1-9]\\d*)(?:\\.\\d+)?(?:[eE][+-]?\\d+)?$" : stdgo.GoString));
        var _validTests = (new stdgo.Slice<stdgo.GoString>(
46,
46,
("0" : stdgo.GoString),
("-0" : stdgo.GoString),
("1" : stdgo.GoString),
("-1" : stdgo.GoString),
("0.1" : stdgo.GoString),
("-0.1" : stdgo.GoString),
("1234" : stdgo.GoString),
("-1234" : stdgo.GoString),
("12.34" : stdgo.GoString),
("-12.34" : stdgo.GoString),
("12E0" : stdgo.GoString),
("12E1" : stdgo.GoString),
("12e34" : stdgo.GoString),
("12E-0" : stdgo.GoString),
("12e+1" : stdgo.GoString),
("12e-34" : stdgo.GoString),
("-12E0" : stdgo.GoString),
("-12E1" : stdgo.GoString),
("-12e34" : stdgo.GoString),
("-12E-0" : stdgo.GoString),
("-12e+1" : stdgo.GoString),
("-12e-34" : stdgo.GoString),
("1.2E0" : stdgo.GoString),
("1.2E1" : stdgo.GoString),
("1.2e34" : stdgo.GoString),
("1.2E-0" : stdgo.GoString),
("1.2e+1" : stdgo.GoString),
("1.2e-34" : stdgo.GoString),
("-1.2E0" : stdgo.GoString),
("-1.2E1" : stdgo.GoString),
("-1.2e34" : stdgo.GoString),
("-1.2E-0" : stdgo.GoString),
("-1.2e+1" : stdgo.GoString),
("-1.2e-34" : stdgo.GoString),
("0E0" : stdgo.GoString),
("0E1" : stdgo.GoString),
("0e34" : stdgo.GoString),
("0E-0" : stdgo.GoString),
("0e+1" : stdgo.GoString),
("0e-34" : stdgo.GoString),
("-0E0" : stdgo.GoString),
("-0E1" : stdgo.GoString),
("-0e34" : stdgo.GoString),
("-0E-0" : stdgo.GoString),
("-0e+1" : stdgo.GoString),
("-0e-34" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        for (__8 => _test in _validTests) {
            if (!_isValidNumber(_test?.__copy__())) {
                _t.errorf(("%s should be valid" : stdgo.GoString), stdgo.Go.toInterface(_test));
            };
            var _f:stdgo.StdGoTypes.GoFloat64 = (0 : stdgo.StdGoTypes.GoFloat64);
            {
                var _err:stdgo.Error = unmarshal((_test : stdgo.Slice<stdgo.StdGoTypes.GoByte>), stdgo.Go.toInterface(stdgo.Go.pointer(_f)));
                if (_err != null) {
                    _t.errorf(("%s should be valid but Unmarshal failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_err));
                };
            };
            if (!_jsonNumberRegexp.matchString(_test?.__copy__())) {
                _t.errorf(("%s should be valid but regexp does not match" : stdgo.GoString), stdgo.Go.toInterface(_test));
            };
        };
        var _invalidTests = (new stdgo.Slice<stdgo.GoString>(
21,
21,
stdgo.Go.str()?.__copy__(),
("invalid" : stdgo.GoString),
("1.0.1" : stdgo.GoString),
("1..1" : stdgo.GoString),
("-1-2" : stdgo.GoString),
("012a42" : stdgo.GoString),
("01.2" : stdgo.GoString),
("012" : stdgo.GoString),
("12E12.12" : stdgo.GoString),
("1e2e3" : stdgo.GoString),
("1e+-2" : stdgo.GoString),
("1e--23" : stdgo.GoString),
("1e" : stdgo.GoString),
("e1" : stdgo.GoString),
("1e+" : stdgo.GoString),
("1ea" : stdgo.GoString),
("1a" : stdgo.GoString),
("1.a" : stdgo.GoString),
("1." : stdgo.GoString),
("01" : stdgo.GoString),
("1.e1" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        for (__9 => _test in _invalidTests) {
            if (_isValidNumber(_test?.__copy__())) {
                _t.errorf(("%s should be invalid" : stdgo.GoString), stdgo.Go.toInterface(_test));
            };
            var _f:stdgo.StdGoTypes.GoFloat64 = (0 : stdgo.StdGoTypes.GoFloat64);
            {
                var _err:stdgo.Error = unmarshal((_test : stdgo.Slice<stdgo.StdGoTypes.GoByte>), stdgo.Go.toInterface(stdgo.Go.pointer(_f)));
                if (_err == null) {
                    _t.errorf(("%s should be invalid but unmarshal wrote %v" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_f));
                };
            };
            if (_jsonNumberRegexp.matchString(_test?.__copy__())) {
                _t.errorf(("%s should be invalid but matches regexp" : stdgo.GoString), stdgo.Go.toInterface(_test));
            };
        };
    }
/**
    // Valid reports whether data is a valid JSON encoding.
**/
function valid(_data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):Bool {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _scan = _newScanner();
            {
                var _a0 = _scan;
                __deferstack__.unshift(() -> _freeScanner(_a0));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _checkValid(_data, _scan) == null;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return false;
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
            return false;
        };
    }
/**
    // checkValid verifies that data is valid JSON-encoded data.
    // scan is passed in for use by checkValid to avoid an allocation.
    // checkValid returns nil or a SyntaxError.
**/
function _checkValid(_data:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _scan:stdgo.StdGoTypes.Ref<T_scanner>):stdgo.Error {
        _scan._reset();
        for (__8 => _c in _data) {
            _scan._bytes++;
            if (_scan._step(_scan, _c) == ((11 : stdgo.StdGoTypes.GoInt))) {
                return _scan._err;
            };
        };
        if (_scan._eof() == ((11 : stdgo.StdGoTypes.GoInt))) {
            return _scan._err;
        };
        return (null : stdgo.Error);
    }
function _newScanner():stdgo.StdGoTypes.Ref<T_scanner> {
        var _scan = (stdgo.Go.typeAssert((_scannerPool.get() : stdgo.StdGoTypes.Ref<T_scanner>)) : stdgo.StdGoTypes.Ref<T_scanner>);
        _scan._bytes = (0i64 : stdgo.StdGoTypes.GoInt64);
        _scan._reset();
        return _scan;
    }
function _freeScanner(_scan:stdgo.StdGoTypes.Ref<T_scanner>):Void {
        if ((_scan._parseState.length) > (1024 : stdgo.StdGoTypes.GoInt)) {
            _scan._parseState = (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>);
        };
        _scannerPool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_scan)));
    }
function _isSpace(_c:stdgo.StdGoTypes.GoByte):Bool {
        return (_c <= (32 : stdgo.StdGoTypes.GoUInt8)) && ((((_c == (32 : stdgo.StdGoTypes.GoUInt8)) || (_c == (9 : stdgo.StdGoTypes.GoUInt8))) || (_c == (13 : stdgo.StdGoTypes.GoUInt8))) || (_c == (10 : stdgo.StdGoTypes.GoUInt8)));
    }
/**
    // stateBeginValueOrEmpty is the state after reading `[`.
**/
function _stateBeginValueOrEmpty(_s:stdgo.StdGoTypes.Ref<T_scanner>, _c:stdgo.StdGoTypes.GoByte):stdgo.StdGoTypes.GoInt {
        if (_isSpace(_c)) {
            return (9 : stdgo.StdGoTypes.GoInt);
        };
        if (_c == ((93 : stdgo.StdGoTypes.GoUInt8))) {
            return _stateEndValue(_s, _c);
        };
        return _stateBeginValue(_s, _c);
    }
/**
    // stateBeginValue is the state at the beginning of the input.
**/
function _stateBeginValue(_s:stdgo.StdGoTypes.Ref<T_scanner>, _c:stdgo.StdGoTypes.GoByte):stdgo.StdGoTypes.GoInt {
        if (_isSpace(_c)) {
            return (9 : stdgo.StdGoTypes.GoInt);
        };
        {
            final __value__ = _c;
            if (__value__ == ((123 : stdgo.StdGoTypes.GoUInt8))) {
                _s._step = _stateBeginStringOrEmpty;
                return _s._pushParseState(_c, (0 : stdgo.StdGoTypes.GoInt), (2 : stdgo.StdGoTypes.GoInt));
            } else if (__value__ == ((91 : stdgo.StdGoTypes.GoUInt8))) {
                _s._step = _stateBeginValueOrEmpty;
                return _s._pushParseState(_c, (2 : stdgo.StdGoTypes.GoInt), (6 : stdgo.StdGoTypes.GoInt));
            } else if (__value__ == ((34 : stdgo.StdGoTypes.GoUInt8))) {
                _s._step = _stateInString;
                return (1 : stdgo.StdGoTypes.GoInt);
            } else if (__value__ == ((45 : stdgo.StdGoTypes.GoUInt8))) {
                _s._step = _stateNeg;
                return (1 : stdgo.StdGoTypes.GoInt);
            } else if (__value__ == ((48 : stdgo.StdGoTypes.GoUInt8))) {
                _s._step = _state0;
                return (1 : stdgo.StdGoTypes.GoInt);
            } else if (__value__ == ((116 : stdgo.StdGoTypes.GoUInt8))) {
                _s._step = _stateT;
                return (1 : stdgo.StdGoTypes.GoInt);
            } else if (__value__ == ((102 : stdgo.StdGoTypes.GoUInt8))) {
                _s._step = _stateF;
                return (1 : stdgo.StdGoTypes.GoInt);
            } else if (__value__ == ((110 : stdgo.StdGoTypes.GoUInt8))) {
                _s._step = _stateN;
                return (1 : stdgo.StdGoTypes.GoInt);
            };
        };
        if (((49 : stdgo.StdGoTypes.GoUInt8) <= _c) && (_c <= (57 : stdgo.StdGoTypes.GoUInt8))) {
            _s._step = _state1;
            return (1 : stdgo.StdGoTypes.GoInt);
        };
        return _s._error(_c, ("looking for beginning of value" : stdgo.GoString));
    }
/**
    // stateBeginStringOrEmpty is the state after reading `{`.
**/
function _stateBeginStringOrEmpty(_s:stdgo.StdGoTypes.Ref<T_scanner>, _c:stdgo.StdGoTypes.GoByte):stdgo.StdGoTypes.GoInt {
        if (_isSpace(_c)) {
            return (9 : stdgo.StdGoTypes.GoInt);
        };
        if (_c == ((125 : stdgo.StdGoTypes.GoUInt8))) {
            var _n:stdgo.StdGoTypes.GoInt = (_s._parseState.length);
            _s._parseState[(_n - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = (1 : stdgo.StdGoTypes.GoInt);
            return _stateEndValue(_s, _c);
        };
        return _stateBeginString(_s, _c);
    }
/**
    // stateBeginString is the state after reading `{"key": value,`.
**/
function _stateBeginString(_s:stdgo.StdGoTypes.Ref<T_scanner>, _c:stdgo.StdGoTypes.GoByte):stdgo.StdGoTypes.GoInt {
        if (_isSpace(_c)) {
            return (9 : stdgo.StdGoTypes.GoInt);
        };
        if (_c == ((34 : stdgo.StdGoTypes.GoUInt8))) {
            _s._step = _stateInString;
            return (1 : stdgo.StdGoTypes.GoInt);
        };
        return _s._error(_c, ("looking for beginning of object key string" : stdgo.GoString));
    }
/**
    // stateEndValue is the state after completing a value,
    // such as after reading `{}` or `true` or `["x"`.
**/
function _stateEndValue(_s:stdgo.StdGoTypes.Ref<T_scanner>, _c:stdgo.StdGoTypes.GoByte):stdgo.StdGoTypes.GoInt {
        var _n:stdgo.StdGoTypes.GoInt = (_s._parseState.length);
        if (_n == ((0 : stdgo.StdGoTypes.GoInt))) {
            _s._step = _stateEndTop;
            _s._endTop = true;
            return _stateEndTop(_s, _c);
        };
        if (_isSpace(_c)) {
            _s._step = _stateEndValue;
            return (9 : stdgo.StdGoTypes.GoInt);
        };
        var _ps:stdgo.StdGoTypes.GoInt = _s._parseState[(_n - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)];
        {
            final __value__ = _ps;
            if (__value__ == ((0 : stdgo.StdGoTypes.GoInt))) {
                if (_c == ((58 : stdgo.StdGoTypes.GoUInt8))) {
                    _s._parseState[(_n - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = (1 : stdgo.StdGoTypes.GoInt);
                    _s._step = _stateBeginValue;
                    return (3 : stdgo.StdGoTypes.GoInt);
                };
                return _s._error(_c, ("after object key" : stdgo.GoString));
            } else if (__value__ == ((1 : stdgo.StdGoTypes.GoInt))) {
                if (_c == ((44 : stdgo.StdGoTypes.GoUInt8))) {
                    _s._parseState[(_n - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = (0 : stdgo.StdGoTypes.GoInt);
                    _s._step = _stateBeginString;
                    return (4 : stdgo.StdGoTypes.GoInt);
                };
                if (_c == ((125 : stdgo.StdGoTypes.GoUInt8))) {
                    _s._popParseState();
                    return (5 : stdgo.StdGoTypes.GoInt);
                };
                return _s._error(_c, ("after object key:value pair" : stdgo.GoString));
            } else if (__value__ == ((2 : stdgo.StdGoTypes.GoInt))) {
                if (_c == ((44 : stdgo.StdGoTypes.GoUInt8))) {
                    _s._step = _stateBeginValue;
                    return (7 : stdgo.StdGoTypes.GoInt);
                };
                if (_c == ((93 : stdgo.StdGoTypes.GoUInt8))) {
                    _s._popParseState();
                    return (8 : stdgo.StdGoTypes.GoInt);
                };
                return _s._error(_c, ("after array element" : stdgo.GoString));
            };
        };
        return _s._error(_c, stdgo.Go.str()?.__copy__());
    }
/**
    // stateEndTop is the state after finishing the top-level value,
    // such as after reading `{}` or `[1,2,3]`.
    // Only space characters should be seen now.
**/
function _stateEndTop(_s:stdgo.StdGoTypes.Ref<T_scanner>, _c:stdgo.StdGoTypes.GoByte):stdgo.StdGoTypes.GoInt {
        if (!_isSpace(_c)) {
            _s._error(_c, ("after top-level value" : stdgo.GoString));
        };
        return (10 : stdgo.StdGoTypes.GoInt);
    }
/**
    // stateInString is the state after reading `"`.
**/
function _stateInString(_s:stdgo.StdGoTypes.Ref<T_scanner>, _c:stdgo.StdGoTypes.GoByte):stdgo.StdGoTypes.GoInt {
        if (_c == ((34 : stdgo.StdGoTypes.GoUInt8))) {
            _s._step = _stateEndValue;
            return (0 : stdgo.StdGoTypes.GoInt);
        };
        if (_c == ((92 : stdgo.StdGoTypes.GoUInt8))) {
            _s._step = _stateInStringEsc;
            return (0 : stdgo.StdGoTypes.GoInt);
        };
        if (_c < (32 : stdgo.StdGoTypes.GoUInt8)) {
            return _s._error(_c, ("in string literal" : stdgo.GoString));
        };
        return (0 : stdgo.StdGoTypes.GoInt);
    }
/**
    // stateInStringEsc is the state after reading `"\` during a quoted string.
**/
function _stateInStringEsc(_s:stdgo.StdGoTypes.Ref<T_scanner>, _c:stdgo.StdGoTypes.GoByte):stdgo.StdGoTypes.GoInt {
        {
            final __value__ = _c;
            if (__value__ == ((98 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((102 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((110 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((114 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((116 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((92 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((47 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((34 : stdgo.StdGoTypes.GoUInt8))) {
                _s._step = _stateInString;
                return (0 : stdgo.StdGoTypes.GoInt);
            } else if (__value__ == ((117 : stdgo.StdGoTypes.GoUInt8))) {
                _s._step = _stateInStringEscU;
                return (0 : stdgo.StdGoTypes.GoInt);
            };
        };
        return _s._error(_c, ("in string escape code" : stdgo.GoString));
    }
/**
    // stateInStringEscU is the state after reading `"\u` during a quoted string.
**/
function _stateInStringEscU(_s:stdgo.StdGoTypes.Ref<T_scanner>, _c:stdgo.StdGoTypes.GoByte):stdgo.StdGoTypes.GoInt {
        if (((((48 : stdgo.StdGoTypes.GoUInt8) <= _c) && (_c <= (57 : stdgo.StdGoTypes.GoUInt8))) || (((97 : stdgo.StdGoTypes.GoUInt8) <= _c) && (_c <= (102 : stdgo.StdGoTypes.GoUInt8)))) || (((65 : stdgo.StdGoTypes.GoUInt8) <= _c) && (_c <= (70 : stdgo.StdGoTypes.GoUInt8)))) {
            _s._step = _stateInStringEscU1;
            return (0 : stdgo.StdGoTypes.GoInt);
        };
        return _s._error(_c, ("in \\u hexadecimal character escape" : stdgo.GoString));
    }
/**
    // stateInStringEscU1 is the state after reading `"\u1` during a quoted string.
**/
function _stateInStringEscU1(_s:stdgo.StdGoTypes.Ref<T_scanner>, _c:stdgo.StdGoTypes.GoByte):stdgo.StdGoTypes.GoInt {
        if (((((48 : stdgo.StdGoTypes.GoUInt8) <= _c) && (_c <= (57 : stdgo.StdGoTypes.GoUInt8))) || (((97 : stdgo.StdGoTypes.GoUInt8) <= _c) && (_c <= (102 : stdgo.StdGoTypes.GoUInt8)))) || (((65 : stdgo.StdGoTypes.GoUInt8) <= _c) && (_c <= (70 : stdgo.StdGoTypes.GoUInt8)))) {
            _s._step = _stateInStringEscU12;
            return (0 : stdgo.StdGoTypes.GoInt);
        };
        return _s._error(_c, ("in \\u hexadecimal character escape" : stdgo.GoString));
    }
/**
    // stateInStringEscU12 is the state after reading `"\u12` during a quoted string.
**/
function _stateInStringEscU12(_s:stdgo.StdGoTypes.Ref<T_scanner>, _c:stdgo.StdGoTypes.GoByte):stdgo.StdGoTypes.GoInt {
        if (((((48 : stdgo.StdGoTypes.GoUInt8) <= _c) && (_c <= (57 : stdgo.StdGoTypes.GoUInt8))) || (((97 : stdgo.StdGoTypes.GoUInt8) <= _c) && (_c <= (102 : stdgo.StdGoTypes.GoUInt8)))) || (((65 : stdgo.StdGoTypes.GoUInt8) <= _c) && (_c <= (70 : stdgo.StdGoTypes.GoUInt8)))) {
            _s._step = _stateInStringEscU123;
            return (0 : stdgo.StdGoTypes.GoInt);
        };
        return _s._error(_c, ("in \\u hexadecimal character escape" : stdgo.GoString));
    }
/**
    // stateInStringEscU123 is the state after reading `"\u123` during a quoted string.
**/
function _stateInStringEscU123(_s:stdgo.StdGoTypes.Ref<T_scanner>, _c:stdgo.StdGoTypes.GoByte):stdgo.StdGoTypes.GoInt {
        if (((((48 : stdgo.StdGoTypes.GoUInt8) <= _c) && (_c <= (57 : stdgo.StdGoTypes.GoUInt8))) || (((97 : stdgo.StdGoTypes.GoUInt8) <= _c) && (_c <= (102 : stdgo.StdGoTypes.GoUInt8)))) || (((65 : stdgo.StdGoTypes.GoUInt8) <= _c) && (_c <= (70 : stdgo.StdGoTypes.GoUInt8)))) {
            _s._step = _stateInString;
            return (0 : stdgo.StdGoTypes.GoInt);
        };
        return _s._error(_c, ("in \\u hexadecimal character escape" : stdgo.GoString));
    }
/**
    // stateNeg is the state after reading `-` during a number.
**/
function _stateNeg(_s:stdgo.StdGoTypes.Ref<T_scanner>, _c:stdgo.StdGoTypes.GoByte):stdgo.StdGoTypes.GoInt {
        if (_c == ((48 : stdgo.StdGoTypes.GoUInt8))) {
            _s._step = _state0;
            return (0 : stdgo.StdGoTypes.GoInt);
        };
        if (((49 : stdgo.StdGoTypes.GoUInt8) <= _c) && (_c <= (57 : stdgo.StdGoTypes.GoUInt8))) {
            _s._step = _state1;
            return (0 : stdgo.StdGoTypes.GoInt);
        };
        return _s._error(_c, ("in numeric literal" : stdgo.GoString));
    }
/**
    // state1 is the state after reading a non-zero integer during a number,
    // such as after reading `1` or `100` but not `0`.
**/
function _state1(_s:stdgo.StdGoTypes.Ref<T_scanner>, _c:stdgo.StdGoTypes.GoByte):stdgo.StdGoTypes.GoInt {
        if (((48 : stdgo.StdGoTypes.GoUInt8) <= _c) && (_c <= (57 : stdgo.StdGoTypes.GoUInt8))) {
            _s._step = _state1;
            return (0 : stdgo.StdGoTypes.GoInt);
        };
        return _state0(_s, _c);
    }
/**
    // state0 is the state after reading `0` during a number.
**/
function _state0(_s:stdgo.StdGoTypes.Ref<T_scanner>, _c:stdgo.StdGoTypes.GoByte):stdgo.StdGoTypes.GoInt {
        if (_c == ((46 : stdgo.StdGoTypes.GoUInt8))) {
            _s._step = _stateDot;
            return (0 : stdgo.StdGoTypes.GoInt);
        };
        if ((_c == (101 : stdgo.StdGoTypes.GoUInt8)) || (_c == (69 : stdgo.StdGoTypes.GoUInt8))) {
            _s._step = _stateE;
            return (0 : stdgo.StdGoTypes.GoInt);
        };
        return _stateEndValue(_s, _c);
    }
/**
    // stateDot is the state after reading the integer and decimal point in a number,
    // such as after reading `1.`.
**/
function _stateDot(_s:stdgo.StdGoTypes.Ref<T_scanner>, _c:stdgo.StdGoTypes.GoByte):stdgo.StdGoTypes.GoInt {
        if (((48 : stdgo.StdGoTypes.GoUInt8) <= _c) && (_c <= (57 : stdgo.StdGoTypes.GoUInt8))) {
            _s._step = _stateDot0;
            return (0 : stdgo.StdGoTypes.GoInt);
        };
        return _s._error(_c, ("after decimal point in numeric literal" : stdgo.GoString));
    }
/**
    // stateDot0 is the state after reading the integer, decimal point, and subsequent
    // digits of a number, such as after reading `3.14`.
**/
function _stateDot0(_s:stdgo.StdGoTypes.Ref<T_scanner>, _c:stdgo.StdGoTypes.GoByte):stdgo.StdGoTypes.GoInt {
        if (((48 : stdgo.StdGoTypes.GoUInt8) <= _c) && (_c <= (57 : stdgo.StdGoTypes.GoUInt8))) {
            return (0 : stdgo.StdGoTypes.GoInt);
        };
        if ((_c == (101 : stdgo.StdGoTypes.GoUInt8)) || (_c == (69 : stdgo.StdGoTypes.GoUInt8))) {
            _s._step = _stateE;
            return (0 : stdgo.StdGoTypes.GoInt);
        };
        return _stateEndValue(_s, _c);
    }
/**
    // stateE is the state after reading the mantissa and e in a number,
    // such as after reading `314e` or `0.314e`.
**/
function _stateE(_s:stdgo.StdGoTypes.Ref<T_scanner>, _c:stdgo.StdGoTypes.GoByte):stdgo.StdGoTypes.GoInt {
        if ((_c == (43 : stdgo.StdGoTypes.GoUInt8)) || (_c == (45 : stdgo.StdGoTypes.GoUInt8))) {
            _s._step = _stateESign;
            return (0 : stdgo.StdGoTypes.GoInt);
        };
        return _stateESign(_s, _c);
    }
/**
    // stateESign is the state after reading the mantissa, e, and sign in a number,
    // such as after reading `314e-` or `0.314e+`.
**/
function _stateESign(_s:stdgo.StdGoTypes.Ref<T_scanner>, _c:stdgo.StdGoTypes.GoByte):stdgo.StdGoTypes.GoInt {
        if (((48 : stdgo.StdGoTypes.GoUInt8) <= _c) && (_c <= (57 : stdgo.StdGoTypes.GoUInt8))) {
            _s._step = _stateE0;
            return (0 : stdgo.StdGoTypes.GoInt);
        };
        return _s._error(_c, ("in exponent of numeric literal" : stdgo.GoString));
    }
/**
    // stateE0 is the state after reading the mantissa, e, optional sign,
    // and at least one digit of the exponent in a number,
    // such as after reading `314e-2` or `0.314e+1` or `3.14e0`.
**/
function _stateE0(_s:stdgo.StdGoTypes.Ref<T_scanner>, _c:stdgo.StdGoTypes.GoByte):stdgo.StdGoTypes.GoInt {
        if (((48 : stdgo.StdGoTypes.GoUInt8) <= _c) && (_c <= (57 : stdgo.StdGoTypes.GoUInt8))) {
            return (0 : stdgo.StdGoTypes.GoInt);
        };
        return _stateEndValue(_s, _c);
    }
/**
    // stateT is the state after reading `t`.
**/
function _stateT(_s:stdgo.StdGoTypes.Ref<T_scanner>, _c:stdgo.StdGoTypes.GoByte):stdgo.StdGoTypes.GoInt {
        if (_c == ((114 : stdgo.StdGoTypes.GoUInt8))) {
            _s._step = _stateTr;
            return (0 : stdgo.StdGoTypes.GoInt);
        };
        return _s._error(_c, ("in literal true (expecting \'r\')" : stdgo.GoString));
    }
/**
    // stateTr is the state after reading `tr`.
**/
function _stateTr(_s:stdgo.StdGoTypes.Ref<T_scanner>, _c:stdgo.StdGoTypes.GoByte):stdgo.StdGoTypes.GoInt {
        if (_c == ((117 : stdgo.StdGoTypes.GoUInt8))) {
            _s._step = _stateTru;
            return (0 : stdgo.StdGoTypes.GoInt);
        };
        return _s._error(_c, ("in literal true (expecting \'u\')" : stdgo.GoString));
    }
/**
    // stateTru is the state after reading `tru`.
**/
function _stateTru(_s:stdgo.StdGoTypes.Ref<T_scanner>, _c:stdgo.StdGoTypes.GoByte):stdgo.StdGoTypes.GoInt {
        if (_c == ((101 : stdgo.StdGoTypes.GoUInt8))) {
            _s._step = _stateEndValue;
            return (0 : stdgo.StdGoTypes.GoInt);
        };
        return _s._error(_c, ("in literal true (expecting \'e\')" : stdgo.GoString));
    }
/**
    // stateF is the state after reading `f`.
**/
function _stateF(_s:stdgo.StdGoTypes.Ref<T_scanner>, _c:stdgo.StdGoTypes.GoByte):stdgo.StdGoTypes.GoInt {
        if (_c == ((97 : stdgo.StdGoTypes.GoUInt8))) {
            _s._step = _stateFa;
            return (0 : stdgo.StdGoTypes.GoInt);
        };
        return _s._error(_c, ("in literal false (expecting \'a\')" : stdgo.GoString));
    }
/**
    // stateFa is the state after reading `fa`.
**/
function _stateFa(_s:stdgo.StdGoTypes.Ref<T_scanner>, _c:stdgo.StdGoTypes.GoByte):stdgo.StdGoTypes.GoInt {
        if (_c == ((108 : stdgo.StdGoTypes.GoUInt8))) {
            _s._step = _stateFal;
            return (0 : stdgo.StdGoTypes.GoInt);
        };
        return _s._error(_c, ("in literal false (expecting \'l\')" : stdgo.GoString));
    }
/**
    // stateFal is the state after reading `fal`.
**/
function _stateFal(_s:stdgo.StdGoTypes.Ref<T_scanner>, _c:stdgo.StdGoTypes.GoByte):stdgo.StdGoTypes.GoInt {
        if (_c == ((115 : stdgo.StdGoTypes.GoUInt8))) {
            _s._step = _stateFals;
            return (0 : stdgo.StdGoTypes.GoInt);
        };
        return _s._error(_c, ("in literal false (expecting \'s\')" : stdgo.GoString));
    }
/**
    // stateFals is the state after reading `fals`.
**/
function _stateFals(_s:stdgo.StdGoTypes.Ref<T_scanner>, _c:stdgo.StdGoTypes.GoByte):stdgo.StdGoTypes.GoInt {
        if (_c == ((101 : stdgo.StdGoTypes.GoUInt8))) {
            _s._step = _stateEndValue;
            return (0 : stdgo.StdGoTypes.GoInt);
        };
        return _s._error(_c, ("in literal false (expecting \'e\')" : stdgo.GoString));
    }
/**
    // stateN is the state after reading `n`.
**/
function _stateN(_s:stdgo.StdGoTypes.Ref<T_scanner>, _c:stdgo.StdGoTypes.GoByte):stdgo.StdGoTypes.GoInt {
        if (_c == ((117 : stdgo.StdGoTypes.GoUInt8))) {
            _s._step = _stateNu;
            return (0 : stdgo.StdGoTypes.GoInt);
        };
        return _s._error(_c, ("in literal null (expecting \'u\')" : stdgo.GoString));
    }
/**
    // stateNu is the state after reading `nu`.
**/
function _stateNu(_s:stdgo.StdGoTypes.Ref<T_scanner>, _c:stdgo.StdGoTypes.GoByte):stdgo.StdGoTypes.GoInt {
        if (_c == ((108 : stdgo.StdGoTypes.GoUInt8))) {
            _s._step = _stateNul;
            return (0 : stdgo.StdGoTypes.GoInt);
        };
        return _s._error(_c, ("in literal null (expecting \'l\')" : stdgo.GoString));
    }
/**
    // stateNul is the state after reading `nul`.
**/
function _stateNul(_s:stdgo.StdGoTypes.Ref<T_scanner>, _c:stdgo.StdGoTypes.GoByte):stdgo.StdGoTypes.GoInt {
        if (_c == ((108 : stdgo.StdGoTypes.GoUInt8))) {
            _s._step = _stateEndValue;
            return (0 : stdgo.StdGoTypes.GoInt);
        };
        return _s._error(_c, ("in literal null (expecting \'l\')" : stdgo.GoString));
    }
/**
    // stateError is the state after reaching a syntax error,
    // such as after reading `[1}` or `5.1.2`.
**/
function _stateError(_s:stdgo.StdGoTypes.Ref<T_scanner>, _c:stdgo.StdGoTypes.GoByte):stdgo.StdGoTypes.GoInt {
        return (11 : stdgo.StdGoTypes.GoInt);
    }
/**
    // quoteChar formats c as a quoted character literal.
**/
function _quoteChar(_c:stdgo.StdGoTypes.GoByte):stdgo.GoString {
        if (_c == ((39 : stdgo.StdGoTypes.GoUInt8))) {
            return ("\'\\\'\'" : stdgo.GoString);
        };
        if (_c == ((34 : stdgo.StdGoTypes.GoUInt8))) {
            return ("\'\"\'" : stdgo.GoString);
        };
        var _s:stdgo.GoString = stdgo.strconv.Strconv.quote((_c : stdgo.GoString)?.__copy__())?.__copy__();
        return ("\'" : stdgo.GoString) + (_s.__slice__((1 : stdgo.StdGoTypes.GoInt), (_s.length) - (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__() + ("\'" : stdgo.GoString)?.__copy__()?.__copy__();
    }
function testValid(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        for (__8 => _tt in _validTests) {
            {
                var _ok:Bool = valid((_tt._data : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
                if (_ok != (_tt._ok)) {
                    _t.errorf(("Valid(%#q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._data), stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_tt._ok));
                };
            };
        };
    }
function testCompact(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        for (__8 => _tt in _examples) {
            _buf.reset();
            {
                var _err:stdgo.Error = compact((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), (_tt._compact : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
                if (_err != null) {
                    _t.errorf(("Compact(%#q): %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._compact), stdgo.Go.toInterface(_err));
                } else {
                    var _s:stdgo.GoString = (_buf.string() : stdgo.GoString)?.__copy__();
                    if (_s != (_tt._compact)) {
                        _t.errorf(("Compact(%#q) = %#q, want original" : stdgo.GoString), stdgo.Go.toInterface(_tt._compact), stdgo.Go.toInterface(_s));
                    };
                };
            };
            _buf.reset();
            {
                var _err:stdgo.Error = compact((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), (_tt._indent : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
                if (_err != null) {
                    _t.errorf(("Compact(%#q): %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._indent), stdgo.Go.toInterface(_err));
                    continue;
                } else {
                    var _s:stdgo.GoString = (_buf.string() : stdgo.GoString)?.__copy__();
                    if (_s != (_tt._compact)) {
                        _t.errorf(("Compact(%#q) = %#q, want %#q" : stdgo.GoString), stdgo.Go.toInterface(_tt._indent), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._compact));
                    };
                };
            };
        };
    }
function testCompactSeparators(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _tests = (new stdgo.Slice<T__struct_37>(2, 2, ({ _in : ("{\"\u2028\": 1}" : stdgo.GoString), _compact : ("{\"\u2028\":1}" : stdgo.GoString) } : T__struct_37), ({ _in : ("{\"\u2029\" :2}" : stdgo.GoString), _compact : ("{\"\u2029\":2}" : stdgo.GoString) } : T__struct_37)) : stdgo.Slice<T__struct_37>);
        for (__8 => _tt in _tests) {
            var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
            {
                var _err:stdgo.Error = compact((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), (_tt._in : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
                if (_err != null) {
                    _t.errorf(("Compact(%q): %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_err));
                } else {
                    var _s:stdgo.GoString = (_buf.string() : stdgo.GoString)?.__copy__();
                    if (_s != (_tt._compact)) {
                        _t.errorf(("Compact(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._compact));
                    };
                };
            };
        };
    }
function testIndent(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        for (__8 => _tt in _examples) {
            _buf.reset();
            {
                var _err:stdgo.Error = indent((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), (_tt._indent : stdgo.Slice<stdgo.StdGoTypes.GoByte>), stdgo.Go.str()?.__copy__(), ("\t" : stdgo.GoString));
                if (_err != null) {
                    _t.errorf(("Indent(%#q): %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._indent), stdgo.Go.toInterface(_err));
                } else {
                    var _s:stdgo.GoString = (_buf.string() : stdgo.GoString)?.__copy__();
                    if (_s != (_tt._indent)) {
                        _t.errorf(("Indent(%#q) = %#q, want original" : stdgo.GoString), stdgo.Go.toInterface(_tt._indent), stdgo.Go.toInterface(_s));
                    };
                };
            };
            _buf.reset();
            {
                var _err:stdgo.Error = indent((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), (_tt._compact : stdgo.Slice<stdgo.StdGoTypes.GoByte>), stdgo.Go.str()?.__copy__(), ("\t" : stdgo.GoString));
                if (_err != null) {
                    _t.errorf(("Indent(%#q): %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._compact), stdgo.Go.toInterface(_err));
                    continue;
                } else {
                    var _s:stdgo.GoString = (_buf.string() : stdgo.GoString)?.__copy__();
                    if (_s != (_tt._indent)) {
                        _t.errorf(("Indent(%#q) = %#q, want %#q" : stdgo.GoString), stdgo.Go.toInterface(_tt._compact), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._indent));
                    };
                };
            };
        };
    }
function testCompactBig(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        _initBig();
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        {
            var _err:stdgo.Error = compact((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), _jsonBig);
            if (_err != null) {
                _t.fatalf(("Compact: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        var _b = _buf.bytes();
        if (!stdgo.bytes.Bytes.equal(_b, _jsonBig)) {
            _t.error(stdgo.Go.toInterface(("Compact(jsonBig) != jsonBig" : stdgo.GoString)));
            _diff(_t, _b, _jsonBig);
            return;
        };
    }
function testIndentBig(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        _t.parallel();
        _initBig();
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        {
            var _err:stdgo.Error = indent((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), _jsonBig, stdgo.Go.str()?.__copy__(), ("\t" : stdgo.GoString));
            if (_err != null) {
                _t.fatalf(("Indent1: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        var _b = _buf.bytes();
        if ((_b.length) == ((_jsonBig.length))) {
            _t.fatalf(("Indent(jsonBig) did not get bigger" : stdgo.GoString));
        };
        var _buf1:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        {
            var _err:stdgo.Error = indent((stdgo.Go.setRef(_buf1) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), _b, stdgo.Go.str()?.__copy__(), ("\t" : stdgo.GoString));
            if (_err != null) {
                _t.fatalf(("Indent2: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        var _b1 = _buf1.bytes();
        if (!stdgo.bytes.Bytes.equal(_b1, _b)) {
            _t.error(stdgo.Go.toInterface(("Indent(Indent(jsonBig)) != Indent(jsonBig)" : stdgo.GoString)));
            _diff(_t, _b1, _b);
            return;
        };
        _buf1.reset();
        {
            var _err:stdgo.Error = compact((stdgo.Go.setRef(_buf1) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>), _b);
            if (_err != null) {
                _t.fatalf(("Compact: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        _b1 = _buf1.bytes();
        if (!stdgo.bytes.Bytes.equal(_b1, _jsonBig)) {
            _t.error(stdgo.Go.toInterface(("Compact(Indent(jsonBig)) != jsonBig" : stdgo.GoString)));
            _diff(_t, _b1, _jsonBig);
            return;
        };
    }
function testIndentErrors(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        for (_i => _tt in _indentErrorTests) {
            var _slice = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((0 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
            var _buf = stdgo.bytes.Bytes.newBuffer(_slice);
            {
                var _err:stdgo.Error = indent(_buf, (_tt._in : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__());
                if (_err != null) {
                    if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._err))) {
                        _t.errorf(("#%d: Indent: %#v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                        continue;
                    };
                };
            };
        };
    }
function _diff(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>, _a:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(true, _i++, {
                if (((_i >= _a.length) || (_i >= _b.length)) || (_a[(_i : stdgo.StdGoTypes.GoInt)] != _b[(_i : stdgo.StdGoTypes.GoInt)])) {
                    var _j:stdgo.StdGoTypes.GoInt = _i - (10 : stdgo.StdGoTypes.GoInt);
                    if (_j < (0 : stdgo.StdGoTypes.GoInt)) {
                        _j = (0 : stdgo.StdGoTypes.GoInt);
                    };
                    _t.errorf(("diverge at %d: «%s» vs «%s»" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_trim((_a.__slice__(_j) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>))), stdgo.Go.toInterface(_trim((_b.__slice__(_j) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>))));
                    return;
                };
            });
        };
    }
function _trim(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Slice<stdgo.StdGoTypes.GoByte> {
        if ((_b.length) > (20 : stdgo.StdGoTypes.GoInt)) {
            return (_b.__slice__((0 : stdgo.StdGoTypes.GoInt), (20 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        };
        return _b;
    }
function _initBig():Void {
        var _n:stdgo.StdGoTypes.GoInt = (10000 : stdgo.StdGoTypes.GoInt);
        if (stdgo.testing.Testing.short()) {
            _n = (100 : stdgo.StdGoTypes.GoInt);
        };
        var __tmp__ = marshal(_genValue(_n)), _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        _jsonBig = _b;
    }
function _genValue(_n:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.AnyInterface {
        if (_n > (1 : stdgo.StdGoTypes.GoInt)) {
            {
                final __value__ = stdgo.math.rand.Rand.intn((2 : stdgo.StdGoTypes.GoInt));
                if (__value__ == ((0 : stdgo.StdGoTypes.GoInt))) {
                    return stdgo.Go.toInterface(_genArray(_n));
                } else if (__value__ == ((1 : stdgo.StdGoTypes.GoInt))) {
                    return stdgo.Go.toInterface(_genMap(_n));
                };
            };
        };
        {
            final __value__ = stdgo.math.rand.Rand.intn((3 : stdgo.StdGoTypes.GoInt));
            if (__value__ == ((0 : stdgo.StdGoTypes.GoInt))) {
                return stdgo.Go.toInterface(stdgo.math.rand.Rand.intn((2 : stdgo.StdGoTypes.GoInt)) == ((0 : stdgo.StdGoTypes.GoInt)));
            } else if (__value__ == ((1 : stdgo.StdGoTypes.GoInt))) {
                return stdgo.Go.toInterface(stdgo.math.rand.Rand.normFloat64());
            } else if (__value__ == ((2 : stdgo.StdGoTypes.GoInt))) {
                return stdgo.Go.toInterface(_genString((30 : stdgo.StdGoTypes.GoFloat64)));
            };
        };
        throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
    }
function _genString(_stddev:stdgo.StdGoTypes.GoFloat64):stdgo.GoString {
        var _n:stdgo.StdGoTypes.GoInt = (stdgo.math.Math.abs((stdgo.math.rand.Rand.normFloat64() * _stddev) + (_stddev / (2 : stdgo.StdGoTypes.GoFloat64))) : stdgo.StdGoTypes.GoInt);
        var _c = new stdgo.Slice<stdgo.StdGoTypes.GoInt32>((_n : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        for (_i in 0 ... _c.length.toBasic()) {
            var _f:stdgo.StdGoTypes.GoFloat64 = stdgo.math.Math.abs((stdgo.math.rand.Rand.normFloat64() * (64 : stdgo.StdGoTypes.GoFloat64)) + (32 : stdgo.StdGoTypes.GoFloat64));
            if (_f > (1.114111e+06 : stdgo.StdGoTypes.GoFloat64)) {
                _f = (1.114111e+06 : stdgo.StdGoTypes.GoFloat64);
            };
            _c[(_i : stdgo.StdGoTypes.GoInt)] = (_f : stdgo.StdGoTypes.GoRune);
        };
        return (_c : stdgo.GoString)?.__copy__();
    }
function _genArray(_n:stdgo.StdGoTypes.GoInt):stdgo.Slice<stdgo.StdGoTypes.AnyInterface> {
        var _f:stdgo.StdGoTypes.GoInt = (stdgo.math.Math.abs(stdgo.math.rand.Rand.normFloat64()) * stdgo.math.Math.min((10 : stdgo.StdGoTypes.GoFloat64), (_n / (2 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoFloat64)) : stdgo.StdGoTypes.GoInt);
        if (_f > _n) {
            _f = _n;
        };
        if (_f < (1 : stdgo.StdGoTypes.GoInt)) {
            _f = (1 : stdgo.StdGoTypes.GoInt);
        };
        var _x = new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>((_f : stdgo.StdGoTypes.GoInt).toBasic(), 0);
        for (_i in 0 ... _x.length.toBasic()) {
            _x[(_i : stdgo.StdGoTypes.GoInt)] = _genValue((((_i + (1 : stdgo.StdGoTypes.GoInt)) * _n) / _f) - ((_i * _n) / _f));
        };
        return _x;
    }
function _genMap(_n:stdgo.StdGoTypes.GoInt):stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface> {
        var _f:stdgo.StdGoTypes.GoInt = (stdgo.math.Math.abs(stdgo.math.rand.Rand.normFloat64()) * stdgo.math.Math.min((10 : stdgo.StdGoTypes.GoFloat64), (_n / (2 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoFloat64)) : stdgo.StdGoTypes.GoInt);
        if (_f > _n) {
            _f = _n;
        };
        if ((_n > (0 : stdgo.StdGoTypes.GoInt)) && (_f == (0 : stdgo.StdGoTypes.GoInt))) {
            _f = (1 : stdgo.StdGoTypes.GoInt);
        };
        var _x = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _f, _i++, {
                _x[_genString((10 : stdgo.StdGoTypes.GoFloat64))] = _genValue((((_i + (1 : stdgo.StdGoTypes.GoInt)) * _n) / _f) - ((_i * _n) / _f));
            });
        };
        return _x;
    }
/**
    // NewDecoder returns a new decoder that reads from r.
    //
    // The decoder introduces its own buffering and may
    // read data from r beyond the JSON values requested.
**/
function newDecoder(_r:stdgo.io.Io.Reader):stdgo.StdGoTypes.Ref<Decoder> {
        return (stdgo.Go.setRef(({ _r : _r } : stdgo.encoding.json.Json.Decoder)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Decoder>);
    }
function _nonSpace(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):Bool {
        for (__8 => _c in _b) {
            if (!_isSpace(_c)) {
                return true;
            };
        };
        return false;
    }
/**
    // NewEncoder returns a new encoder that writes to w.
**/
function newEncoder(_w:stdgo.io.Io.Writer):stdgo.StdGoTypes.Ref<Encoder> {
        return (stdgo.Go.setRef(({ _w : _w, _escapeHTML : true } : stdgo.encoding.json.Json.Encoder)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.Encoder>);
    }
function testEncoder(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i <= (_streamTest.length), _i++, {
                var _buf:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
                var _enc = newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>)));
                _enc.setIndent((">" : stdgo.GoString), ("." : stdgo.GoString));
                _enc.setIndent(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__());
                for (_j => _v in (_streamTest.__slice__((0 : stdgo.StdGoTypes.GoInt), _i) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>)) {
                    {
                        var _err:stdgo.Error = _enc.encode(_v);
                        if (_err != null) {
                            _t.fatalf(("encode #%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_err));
                        };
                    };
                };
                {
                    var __0:stdgo.GoString = (_buf.string() : stdgo.GoString)?.__copy__(), __1:stdgo.GoString = _nlines(_streamEncoded?.__copy__(), _i)?.__copy__(), _want:stdgo.GoString = __1, _have:stdgo.GoString = __0;
                    if (_have != (_want)) {
                        _t.errorf(("encoding %d items: mismatch" : stdgo.GoString), stdgo.Go.toInterface(_i));
                        _diff(_t, (_have : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (_want : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
                        break;
                    };
                };
            });
        };
    }
/**
    // Trigger an error in Marshal with cyclic data.
    
    
**/
@:structInit class T_testEncoderErrorAndReuseEncodeState_138___localname___Dummy {
    public var name : stdgo.GoString = "";
    public var next : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testEncoderErrorAndReuseEncodeState_138___localname___Dummy> = (null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testEncoderErrorAndReuseEncodeState_138___localname___Dummy>);
    public function new(?name:stdgo.GoString, ?next:stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testEncoderErrorAndReuseEncodeState_138___localname___Dummy>) {
        if (name != null) this.name = name;
        if (next != null) this.next = next;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testEncoderErrorAndReuseEncodeState_138___localname___Dummy(name, next);
    }
}
/**
    
    
    
**/
@:structInit class T_testEncoderErrorAndReuseEncodeState_139___localname___Data {
    public var a : stdgo.GoString = "";
    public var i : stdgo.StdGoTypes.GoInt = 0;
    public function new(?a:stdgo.GoString, ?i:stdgo.StdGoTypes.GoInt) {
        if (a != null) this.a = a;
        if (i != null) this.i = i;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testEncoderErrorAndReuseEncodeState_139___localname___Data(a, i);
    }
}
function testEncoderErrorAndReuseEncodeState(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _percent:stdgo.StdGoTypes.GoInt = stdgo.runtime.debug.Debug.setGCPercent((-1 : stdgo.StdGoTypes.GoInt));
            {
                var _a0 = _percent;
                __deferstack__.unshift(() -> stdgo.runtime.debug.Debug.setGCPercent(_a0));
            };
            {};
            var _dummy:stdgo.encoding.json.Json.T_testEncoderErrorAndReuseEncodeState_138___localname___Dummy = ({ name : ("Dummy" : stdgo.GoString) } : stdgo.encoding.json.Json.T_testEncoderErrorAndReuseEncodeState_138___localname___Dummy);
            _dummy.next = (stdgo.Go.setRef(_dummy) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testEncoderErrorAndReuseEncodeState_138___localname___Dummy>);
            var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
            var _enc = newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
            {
                var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface(_dummy));
                if (_err == null) {
                    _t.errorf(("Encode(dummy) == nil; want error" : stdgo.GoString));
                };
            };
            {};
            var _data:stdgo.encoding.json.Json.T_testEncoderErrorAndReuseEncodeState_139___localname___Data = ({ a : ("a" : stdgo.GoString), i : (1 : stdgo.StdGoTypes.GoInt) } : stdgo.encoding.json.Json.T_testEncoderErrorAndReuseEncodeState_139___localname___Data);
            {
                var _err:stdgo.Error = _enc.encode(stdgo.Go.toInterface(_data));
                if (_err != null) {
                    _t.errorf(("Marshal(%v) = %v" : stdgo.GoString), stdgo.Go.toInterface(_data), stdgo.Go.toInterface(_err));
                };
            };
            var _data2:T_testEncoderErrorAndReuseEncodeState_139___localname___Data = ({} : stdgo.encoding.json.Json.T_testEncoderErrorAndReuseEncodeState_139___localname___Data);
            {
                var _err:stdgo.Error = unmarshal(_buf.bytes(), stdgo.Go.toInterface((stdgo.Go.setRef(_data2) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_testEncoderErrorAndReuseEncodeState_139___localname___Data>)));
                if (_err != null) {
                    _t.errorf(("Unmarshal(%v) = %v" : stdgo.GoString), stdgo.Go.toInterface(_data2), stdgo.Go.toInterface(_err));
                };
            };
            if (stdgo.Go.toInterface(_data2) != stdgo.Go.toInterface(_data)) {
                _t.errorf(("expect: %v, but get: %v" : stdgo.GoString), stdgo.Go.toInterface(_data), stdgo.Go.toInterface(_data2));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
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
            return;
        };
    }
function testEncoderIndent(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _buf:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
        var _enc = newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>)));
        _enc.setIndent((">" : stdgo.GoString), ("." : stdgo.GoString));
        for (__8 => _v in _streamTest) {
            _enc.encode(_v);
        };
        {
            var __0:stdgo.GoString = (_buf.string() : stdgo.GoString)?.__copy__(), __1:stdgo.GoString = _streamEncodedIndent?.__copy__(), _want:stdgo.GoString = __1, _have:stdgo.GoString = __0;
            if (_have != (_want)) {
                _t.error(stdgo.Go.toInterface(("indented encoding mismatch" : stdgo.GoString)));
                _diff(_t, (_have : stdgo.Slice<stdgo.StdGoTypes.GoByte>), (_want : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
            };
        };
    }
function testEncoderSetEscapeHTML(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _c:C = ((0 : stdgo.StdGoTypes.GoInt) : stdgo.encoding.json.Json.C);
        var _ct:CText = ((0 : stdgo.StdGoTypes.GoInt) : stdgo.encoding.json.Json.CText);
        var _tagStruct:T__struct_38 = ({ valid : (0 : stdgo.StdGoTypes.GoInt), invalid : (0 : stdgo.StdGoTypes.GoInt) } : T__struct_38);
        var _marshalerStruct = (stdgo.Go.setRef(({ nonPtr : (("\"<str>\"" : stdgo.GoString) : stdgo.encoding.json.Json.T_strMarshaler), ptr : (("\"<str>\"" : stdgo.GoString) : stdgo.encoding.json.Json.T_strPtrMarshaler) } : T__struct_39)) : stdgo.StdGoTypes.Ref<T__struct_39>);
        var _stringOption:T__struct_2 = ({ bar : ("<html>foobar</html>" : stdgo.GoString) } : T__struct_2);
        for (__8 => _tt in (new stdgo.Slice<T__struct_40>(6, 6, ({ _name : ("c" : stdgo.GoString), _v : stdgo.Go.toInterface(stdgo.Go.asInterface(_c)), _wantEscape : ("\"\\u003c\\u0026\\u003e\"" : stdgo.GoString), _want : ("\"<&>\"" : stdgo.GoString) } : T__struct_40), ({ _name : ("ct" : stdgo.GoString), _v : stdgo.Go.toInterface(stdgo.Go.asInterface(_ct)), _wantEscape : ("\"\\\"\\u003c\\u0026\\u003e\\\"\"" : stdgo.GoString), _want : ("\"\\\"<&>\\\"\"" : stdgo.GoString) } : T__struct_40), ({ _name : ("\"<&>\"" : stdgo.GoString), _v : stdgo.Go.toInterface(("<&>" : stdgo.GoString)), _wantEscape : ("\"\\u003c\\u0026\\u003e\"" : stdgo.GoString), _want : ("\"<&>\"" : stdgo.GoString) } : T__struct_40), ({ _name : ("tagStruct" : stdgo.GoString), _v : stdgo.Go.toInterface(stdgo.Go.asInterface(_tagStruct)), _wantEscape : ("{\"\\u003c\\u003e\\u0026#! \":0,\"Invalid\":0}" : stdgo.GoString), _want : ("{\"<>&#! \":0,\"Invalid\":0}" : stdgo.GoString) } : T__struct_40), ({ _name : ("\"<str>\"" : stdgo.GoString), _v : stdgo.Go.toInterface(stdgo.Go.asInterface(_marshalerStruct)), _wantEscape : ("{\"NonPtr\":\"\\u003cstr\\u003e\",\"Ptr\":\"\\u003cstr\\u003e\"}" : stdgo.GoString), _want : ("{\"NonPtr\":\"<str>\",\"Ptr\":\"<str>\"}" : stdgo.GoString) } : T__struct_40), ({ _name : ("stringOption" : stdgo.GoString), _v : stdgo.Go.toInterface(stdgo.Go.asInterface(_stringOption)), _wantEscape : ("{\"bar\":\"\\\"\\\\u003chtml\\\\u003efoobar\\\\u003c/html\\\\u003e\\\"\"}" : stdgo.GoString), _want : ("{\"bar\":\"\\\"<html>foobar</html>\\\"\"}" : stdgo.GoString) } : T__struct_40)) : stdgo.Slice<T__struct_40>)) {
            var _buf:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
            var _enc = newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>)));
            {
                var _err:stdgo.Error = _enc.encode(_tt._v);
                if (_err != null) {
                    _t.errorf(("Encode(%s): %s" : stdgo.GoString), stdgo.Go.toInterface(_tt._name), stdgo.Go.toInterface(_err));
                    continue;
                };
            };
            {
                var _got:stdgo.GoString = stdgo.strings.Strings.trimSpace((_buf.string() : stdgo.GoString)?.__copy__())?.__copy__();
                if (_got != (_tt._wantEscape)) {
                    _t.errorf(("Encode(%s) = %#q, want %#q" : stdgo.GoString), stdgo.Go.toInterface(_tt._name), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._wantEscape));
                };
            };
            _buf.reset();
            _enc.setEscapeHTML(false);
            {
                var _err:stdgo.Error = _enc.encode(_tt._v);
                if (_err != null) {
                    _t.errorf(("SetEscapeHTML(false) Encode(%s): %s" : stdgo.GoString), stdgo.Go.toInterface(_tt._name), stdgo.Go.toInterface(_err));
                    continue;
                };
            };
            {
                var _got:stdgo.GoString = stdgo.strings.Strings.trimSpace((_buf.string() : stdgo.GoString)?.__copy__())?.__copy__();
                if (_got != (_tt._want)) {
                    _t.errorf(("SetEscapeHTML(false) Encode(%s) = %#q, want %#q" : stdgo.GoString), stdgo.Go.toInterface(_tt._name), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
    }
function testDecoder(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i <= (_streamTest.length), _i++, {
                var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
                for (__8 => _c in _nlines(_streamEncoded?.__copy__(), _i)) {
                    if (_c != ((10 : stdgo.StdGoTypes.GoInt32))) {
                        _buf.writeRune(_c);
                    };
                };
                var _out = new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>((_i : stdgo.StdGoTypes.GoInt).toBasic(), 0);
                var _dec = newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)));
                for (_j in 0 ... _out.length.toBasic()) {
                    {
                        var _err:stdgo.Error = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_out[(_j : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>)));
                        if (_err != null) {
                            _t.fatalf(("decode #%d/%d: %v" : stdgo.GoString), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                        };
                    };
                };
                if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_out), stdgo.Go.toInterface((_streamTest.__slice__((0 : stdgo.StdGoTypes.GoInt), _i) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>)))) {
                    _t.errorf(("decoding %d items: mismatch" : stdgo.GoString), stdgo.Go.toInterface(_i));
                    for (_j in 0 ... _out.length.toBasic()) {
                        if (!stdgo.reflect.Reflect.deepEqual(_out[(_j : stdgo.StdGoTypes.GoInt)], _streamTest[(_j : stdgo.StdGoTypes.GoInt)])) {
                            _t.errorf(("#%d: have %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_j), _out[(_j : stdgo.StdGoTypes.GoInt)], _streamTest[(_j : stdgo.StdGoTypes.GoInt)]);
                        };
                    };
                    break;
                };
            });
        };
    }
function testDecoderBuffered(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _r = stdgo.strings.Strings.newReader(("{\"Name\": \"Gopher\"} extra " : stdgo.GoString));
        var _m:T__struct_41 = ({ name : ("" : stdgo.GoString) } : T__struct_41);
        var _d = newDecoder(stdgo.Go.asInterface(_r));
        var _err:stdgo.Error = _d.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_m) : stdgo.StdGoTypes.Ref<T__struct_41>))));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        if (_m.name != (("Gopher" : stdgo.GoString))) {
            _t.errorf(("Name = %q; want Gopher" : stdgo.GoString), stdgo.Go.toInterface(_m.name));
        };
        var __tmp__ = stdgo.io.Io.readAll(_d.buffered()), _rest:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var __0:stdgo.GoString = (_rest : stdgo.GoString)?.__copy__(), __1:stdgo.GoString = (" extra " : stdgo.GoString), _w:stdgo.GoString = __1, _g:stdgo.GoString = __0;
            if (_g != (_w)) {
                _t.errorf(("Remaining = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w));
            };
        };
    }
function _nlines(_s:stdgo.GoString, _n:stdgo.StdGoTypes.GoInt):stdgo.GoString {
        if (_n <= (0 : stdgo.StdGoTypes.GoInt)) {
            return stdgo.Go.str()?.__copy__();
        };
        for (_i => _c in _s) {
            if (_c == ((10 : stdgo.StdGoTypes.GoInt32))) {
                {
                    _n--;
                    if (_n == ((0 : stdgo.StdGoTypes.GoInt))) {
                        return (_s.__slice__((0 : stdgo.StdGoTypes.GoInt), _i + (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString)?.__copy__();
                    };
                };
            };
        };
        return _s?.__copy__();
    }
function testRawMessage(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _data:T__struct_42 = ({ x : (0 : stdgo.StdGoTypes.GoFloat64), id : new stdgo.encoding.json.Json.RawMessage(0, 0), y : (0 : stdgo.StdGoTypes.GoFloat32) } : T__struct_42);
        {};
        {};
        var _err:stdgo.Error = unmarshal((("{\"X\":0.1,\"Id\":[\"\\u0056\",null],\"Y\":0.2}" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_data) : stdgo.StdGoTypes.Ref<T__struct_42>))));
        if (_err != null) {
            _t.fatalf(("Unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (((_data.id : stdgo.Slice<stdgo.StdGoTypes.GoByte>) : stdgo.GoString) != (("[\"\\u0056\",null]" : stdgo.GoString))) {
            _t.fatalf(("Raw mismatch: have %#q want %#q" : stdgo.GoString), stdgo.Go.toInterface((_data.id : stdgo.Slice<stdgo.StdGoTypes.GoByte>)), stdgo.Go.toInterface(("[\"\\u0056\",null]" : stdgo.GoString)));
        };
        var __tmp__ = marshal(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_data) : stdgo.StdGoTypes.Ref<T__struct_42>)))), _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Marshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if ((_b : stdgo.GoString) != (("{\"X\":0.1,\"Id\":[\"\\u0056\",null],\"Y\":0.2}" : stdgo.GoString))) {
            _t.fatalf(("Marshal: have %#q want %#q" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(("{\"X\":0.1,\"Id\":[\"\\u0056\",null],\"Y\":0.2}" : stdgo.GoString)));
        };
    }
function testNullRawMessage(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _data:T__struct_43 = ({ x : (0 : stdgo.StdGoTypes.GoFloat64), id : new stdgo.encoding.json.Json.RawMessage(0, 0), idPtr : (null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.RawMessage>), y : (0 : stdgo.StdGoTypes.GoFloat32) } : T__struct_43);
        {};
        var _err:stdgo.Error = unmarshal((("{\"X\":0.1,\"Id\":null,\"IdPtr\":null,\"Y\":0.2}" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_data) : stdgo.StdGoTypes.Ref<T__struct_43>))));
        if (_err != null) {
            _t.fatalf(("Unmarshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var __0:stdgo.GoString = ("null" : stdgo.GoString), __1:stdgo.GoString = (_data.id : stdgo.GoString)?.__copy__(), _got:stdgo.GoString = __1, _want:stdgo.GoString = __0;
            if (_want != (_got)) {
                _t.fatalf(("Raw mismatch: have %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        if (_data.idPtr != null && ((_data.idPtr : Dynamic).__nil__ == null || !(_data.idPtr : Dynamic).__nil__)) {
            _t.fatalf(("Raw pointer mismatch: have non-nil, want nil" : stdgo.GoString));
        };
        var __tmp__ = marshal(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_data) : stdgo.StdGoTypes.Ref<T__struct_43>)))), _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Marshal: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if ((_b : stdgo.GoString) != (("{\"X\":0.1,\"Id\":null,\"IdPtr\":null,\"Y\":0.2}" : stdgo.GoString))) {
            _t.fatalf(("Marshal: have %#q want %#q" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(("{\"X\":0.1,\"Id\":null,\"IdPtr\":null,\"Y\":0.2}" : stdgo.GoString)));
        };
    }
function testBlocking(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        for (__8 => _enc in _blockingTests) {
            var __tmp__ = stdgo.net.Net.pipe(), _r:stdgo.net.Net.Conn = __tmp__._0, _w:stdgo.net.Net.Conn = __tmp__._1;
            stdgo.Go.routine(() -> _w.write((_enc : stdgo.Slice<stdgo.StdGoTypes.GoByte>)));
            var _val:stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
            {
                var _err:stdgo.Error = newDecoder(_r).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_val) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>)));
                if (_err != null) {
                    _t.errorf(("decoding %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_enc), stdgo.Go.toInterface(_err));
                };
            };
            _r.close();
            _w.close();
        };
    }
function testDecodeInStream(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        for (_ci => _tcase in _tokenStreamCases) {
            var _dec = newDecoder(stdgo.Go.asInterface(stdgo.strings.Strings.newReader(_tcase._json?.__copy__())));
            for (_i => _etk in _tcase._expTokens) {
                var _tk:stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_etk : T_decodeThis)) : T_decodeThis), _1 : true };
                    } catch(_) {
                        { _0 : ({} : stdgo.encoding.json.Json.T_decodeThis), _1 : false };
                    }, _dt = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        _etk = _dt._v;
                        _err = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_tk) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>)));
                    } else {
                        {
                            var __tmp__ = _dec.token();
                            _tk = stdgo.Go.toInterface(__tmp__._0);
                            _err = __tmp__._1;
                        };
                    };
                };
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_etk : stdgo.Error)) : stdgo.Error), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Error), _1 : false };
                    }, _experr = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        if ((_err == null) || !stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_experr))) {
                            _t.errorf(("case %v: Expected error %#v in %q, but was %#v" : stdgo.GoString), stdgo.Go.toInterface(_ci), stdgo.Go.toInterface(_experr), stdgo.Go.toInterface(_tcase._json), stdgo.Go.toInterface(_err));
                        };
                        break;
                    } else if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo.io.Io.eof))) {
                        _t.errorf(("case %v: Unexpected EOF in %q" : stdgo.GoString), stdgo.Go.toInterface(_ci), stdgo.Go.toInterface(_tcase._json));
                        break;
                    } else if (_err != null) {
                        _t.errorf(("case %v: Unexpected error \'%#v\' in %q" : stdgo.GoString), stdgo.Go.toInterface(_ci), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tcase._json));
                        break;
                    };
                };
                if (!stdgo.reflect.Reflect.deepEqual(_tk, _etk)) {
                    _t.errorf(("case %v: %q @ %v expected %T(%v) was %T(%v)" : stdgo.GoString), stdgo.Go.toInterface(_ci), stdgo.Go.toInterface(_tcase._json), stdgo.Go.toInterface(_i), _etk, _etk, _tk, _tk);
                    break;
                };
            };
        };
    }
/**
    // Test from golang.org/issue/11893
**/
function testHTTPDecoding(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {};
            var _ts = stdgo.net.http.httptest.Httptest.newServer(stdgo.Go.asInterface((function(_w:stdgo.net.http.Http.ResponseWriter, _r:stdgo.StdGoTypes.Ref<stdgo.net.http.Http.Request>):Void {
                _w.write((("{ \"foo\": \"bar\" }" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
            } : stdgo.net.http.Http.HandlerFunc)));
            __deferstack__.unshift(() -> _ts.close());
            var __tmp__ = stdgo.net.http.Http.get(_ts.url?.__copy__()), _res:stdgo.StdGoTypes.Ref<stdgo.net.http.Http.Response> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo.log.Log.fatalf(("GET failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _res.body.close());
            var _foo:T__struct_44 = ({ foo : ("" : stdgo.GoString) } : T__struct_44);
            var _d = newDecoder(_res.body);
            _err = _d.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_foo) : stdgo.StdGoTypes.Ref<T__struct_44>))));
            if (_err != null) {
                _t.fatalf(("Decode: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            if (_foo.foo != (("bar" : stdgo.GoString))) {
                _t.errorf(("decoded %q; want \"bar\"" : stdgo.GoString), stdgo.Go.toInterface(_foo.foo));
            };
            _err = _d.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_foo) : stdgo.StdGoTypes.Ref<T__struct_44>))));
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo.io.Io.eof))) {
                _t.errorf(("err = %v; want io.EOF" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
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
            return;
        };
    }
function testStructTagObjectKey(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        for (__8 => _tt in _structTagObjectKeyTests) {
            var __tmp__ = marshal(_tt._raw), _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Marshal(%#q) failed: %v" : stdgo.GoString), _tt._raw, stdgo.Go.toInterface(_err));
            };
            var _f:stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
            _err = unmarshal(_b, stdgo.Go.toInterface((stdgo.Go.setRef(_f) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>)));
            if (_err != null) {
                _t.fatalf(("Unmarshal(%#q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_err));
            };
            for (_i => _v in (stdgo.Go.typeAssert((_f : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>)) : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>)) {
                {
                    final __value__ = _i;
                    if (__value__ == (_tt._key)) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_v : stdgo.GoString)) : stdgo.GoString), _1 : true };
                            } catch(_) {
                                { _0 : ("" : stdgo.GoString), _1 : false };
                            }, _s = __tmp__._0, _ok = __tmp__._1;
                            if (!_ok || (_s != _tt._value)) {
                                _t.fatalf(("Unexpected value: %#q, want %v" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt._value));
                            };
                        };
                    } else {
                        _t.fatalf(("Unexpected key: %#q, from %#q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_b));
                    };
                };
            };
        };
    }
/**
    // parseTag splits a struct field's json tag into its name and
    // comma-separated options.
**/
function _parseTag(_tag:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : T_tagOptions; } {
        var __tmp__ = stdgo.strings.Strings.cut(_tag?.__copy__(), ("," : stdgo.GoString)), _tag:stdgo.GoString = __tmp__._0, _opt:stdgo.GoString = __tmp__._1, __8:Bool = __tmp__._2;
        return { _0 : _tag?.__copy__(), _1 : (_opt : T_tagOptions) };
    }
function testTagParsing(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var __tmp__ = _parseTag(("field,foobar,foo" : stdgo.GoString)), _name:stdgo.GoString = __tmp__._0, _opts:stdgo.encoding.json.Json.T_tagOptions = __tmp__._1;
        if (_name != (("field" : stdgo.GoString))) {
            _t.fatalf(("name = %q, want field" : stdgo.GoString), stdgo.Go.toInterface(_name));
        };
        for (__8 => _tt in (new stdgo.Slice<T__struct_46>(3, 3, ({ _opt : ("foobar" : stdgo.GoString), _want : true } : T__struct_46), ({ _opt : ("foo" : stdgo.GoString), _want : true } : T__struct_46), ({ _opt : ("bar" : stdgo.GoString), _want : false } : T__struct_46)) : stdgo.Slice<T__struct_46>)) {
            if (_opts.contains(_tt._opt?.__copy__()) != (_tt._want)) {
                _t.errorf(("Contains(%q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._opt), stdgo.Go.toInterface(!_tt._want));
            };
        };
    }
@:keep var _ = {
        try {
            var _ptr = (stdgo.Go.setRef((new stdgo.encoding.json.Json.SamePointerNoCycle() : stdgo.encoding.json.Json.SamePointerNoCycle)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SamePointerNoCycle>);
            _samePointerNoCycle.ptr1 = _ptr;
            _samePointerNoCycle.ptr2 = _ptr;
            _pointerCycle.ptr = _pointerCycle;
            _pointerCycleIndirect.ptrs = (new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(1, 1, stdgo.Go.toInterface(_pointerCycleIndirect)) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>);
            _mapCycle[("x" : stdgo.GoString)] = stdgo.Go.toInterface(_mapCycle);
            _sliceCycle[(0 : stdgo.StdGoTypes.GoInt)] = stdgo.Go.toInterface(_sliceCycle);
            _sliceNoCycle[(1 : stdgo.StdGoTypes.GoInt)] = stdgo.Go.toInterface((_sliceNoCycle.__slice__(0, (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>));
            {
                var _i:stdgo.StdGoTypes.GoInt = (1000 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i > (0 : stdgo.StdGoTypes.GoInt), _i--, {
                    _sliceNoCycle = (new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(1, 1, stdgo.Go.toInterface(_sliceNoCycle)) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>);
                });
            };
            _recursiveSliceCycle[(0 : stdgo.StdGoTypes.GoInt)] = _recursiveSliceCycle;
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class UnmarshalTypeError_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<UnmarshalTypeError>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.UnmarshalTypeError_asInterface) class UnmarshalTypeError_static_extension {
    @:keep
    static public function error( _e:stdgo.StdGoTypes.Ref<UnmarshalTypeError>):stdgo.GoString {
        @:recv var _e:stdgo.StdGoTypes.Ref<UnmarshalTypeError> = _e;
        if ((_e.struct_ != stdgo.Go.str()) || (_e.field != stdgo.Go.str())) {
            return ("json: cannot unmarshal " : stdgo.GoString) + _e.value?.__copy__() + (" into Go struct field " : stdgo.GoString)?.__copy__() + _e.struct_?.__copy__() + ("." : stdgo.GoString)?.__copy__() + _e.field?.__copy__() + (" of type " : stdgo.GoString)?.__copy__() + (_e.type.string() : stdgo.GoString)?.__copy__()?.__copy__();
        };
        return ("json: cannot unmarshal " : stdgo.GoString) + _e.value?.__copy__() + (" into Go value of type " : stdgo.GoString)?.__copy__() + (_e.type.string() : stdgo.GoString)?.__copy__()?.__copy__();
    }
}
class UnmarshalFieldError_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<UnmarshalFieldError>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.UnmarshalFieldError_asInterface) class UnmarshalFieldError_static_extension {
    @:keep
    static public function error( _e:stdgo.StdGoTypes.Ref<UnmarshalFieldError>):stdgo.GoString {
        @:recv var _e:stdgo.StdGoTypes.Ref<UnmarshalFieldError> = _e;
        return ("json: cannot unmarshal object key " : stdgo.GoString) + stdgo.strconv.Strconv.quote(_e.key?.__copy__())?.__copy__() + (" into unexported field " : stdgo.GoString)?.__copy__() + _e.field.name?.__copy__() + (" of type " : stdgo.GoString)?.__copy__() + (_e.type.string() : stdgo.GoString)?.__copy__()?.__copy__();
    }
}
class InvalidUnmarshalError_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<InvalidUnmarshalError>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.InvalidUnmarshalError_asInterface) class InvalidUnmarshalError_static_extension {
    @:keep
    static public function error( _e:stdgo.StdGoTypes.Ref<InvalidUnmarshalError>):stdgo.GoString {
        @:recv var _e:stdgo.StdGoTypes.Ref<InvalidUnmarshalError> = _e;
        if ((_e.type.string() : String) == (null.string() : String)) {
            return ("json: Unmarshal(nil)" : stdgo.GoString);
        };
        if (_e.type.kind() != ((22u32 : stdgo.reflect.Reflect.Kind))) {
            return ("json: Unmarshal(non-pointer " : stdgo.GoString) + (_e.type.string() : stdgo.GoString)?.__copy__() + (")" : stdgo.GoString)?.__copy__()?.__copy__();
        };
        return ("json: Unmarshal(nil " : stdgo.GoString) + (_e.type.string() : stdgo.GoString)?.__copy__() + (")" : stdgo.GoString)?.__copy__()?.__copy__();
    }
}
class T_decodeState_asInterface {
    /**
        // literalInterface consumes and returns a literal from d.data[d.off-1:] and
        // it reads the following byte ahead. The first byte of the literal has been
        // read already (that's how the caller knows it's a literal).
    **/
    @:keep
    public dynamic function _literalInterface():stdgo.StdGoTypes.AnyInterface return __self__.value._literalInterface();
    /**
        // objectInterface is like object but returns map[string]interface{}.
    **/
    @:keep
    public dynamic function _objectInterface():stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface> return __self__.value._objectInterface();
    /**
        // arrayInterface is like array but returns []interface{}.
    **/
    @:keep
    public dynamic function _arrayInterface():stdgo.Slice<stdgo.StdGoTypes.AnyInterface> return __self__.value._arrayInterface();
    /**
        // valueInterface is like value but returns interface{}
    **/
    @:keep
    public dynamic function _valueInterface():stdgo.StdGoTypes.AnyInterface return __self__.value._valueInterface();
    /**
        // literalStore decodes a literal stored in item into v.
        //
        // fromQuoted indicates whether this literal came from unwrapping a
        // string from the ",string" struct tag option. this is used only to
        // produce more helpful error messages.
    **/
    @:keep
    public dynamic function _literalStore(_item:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _v:stdgo.reflect.Reflect.Value, _fromQuoted:Bool):stdgo.Error return __self__.value._literalStore(_item, _v, _fromQuoted);
    /**
        // convertNumber converts the number literal s to a float64 or a Number
        // depending on the setting of d.useNumber.
    **/
    @:keep
    public dynamic function _convertNumber(_s:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : stdgo.Error; } return __self__.value._convertNumber(_s);
    /**
        // object consumes an object from d.data[d.off-1:], decoding into v.
        // The first byte ('{') of the object has been read already.
    **/
    @:keep
    public dynamic function _object(_v:stdgo.reflect.Reflect.Value):stdgo.Error return __self__.value._object(_v);
    /**
        // array consumes an array from d.data[d.off-1:], decoding into v.
        // The first byte of the array ('[') has been read already.
    **/
    @:keep
    public dynamic function _array(_v:stdgo.reflect.Reflect.Value):stdgo.Error return __self__.value._array(_v);
    /**
        // valueQuoted is like value but decodes a
        // quoted string literal or literal null into an interface value.
        // If it finds anything other than a quoted string literal or null,
        // valueQuoted returns unquotedValue{}.
    **/
    @:keep
    public dynamic function _valueQuoted():stdgo.StdGoTypes.AnyInterface return __self__.value._valueQuoted();
    /**
        // value consumes a JSON value from d.data[d.off-1:], decoding into v, and
        // reads the following byte ahead. If v is invalid, the value is discarded.
        // The first byte of the value has been read already.
    **/
    @:keep
    public dynamic function _value(_v:stdgo.reflect.Reflect.Value):stdgo.Error return __self__.value._value(_v);
    /**
        // rescanLiteral is similar to scanWhile(scanContinue), but it specialises the
        // common case where we're decoding a literal. The decoder scans the input
        // twice, once for syntax errors and to check the length of the value, and the
        // second to perform the decoding.
        //
        // Only in the second step do we use decodeState to tokenize literals, so we
        // know there aren't any syntax errors. We can take advantage of that knowledge,
        // and scan a literal's bytes much more quickly.
    **/
    @:keep
    public dynamic function _rescanLiteral():Void __self__.value._rescanLiteral();
    /**
        // scanWhile processes bytes in d.data[d.off:] until it
        // receives a scan code not equal to op.
    **/
    @:keep
    public dynamic function _scanWhile(_op:stdgo.StdGoTypes.GoInt):Void __self__.value._scanWhile(_op);
    /**
        // scanNext processes the byte at d.data[d.off].
    **/
    @:keep
    public dynamic function _scanNext():Void __self__.value._scanNext();
    /**
        // skip scans to the end of what was started.
    **/
    @:keep
    public dynamic function _skip():Void __self__.value._skip();
    /**
        // addErrorContext returns a new error enhanced with information from d.errorContext
    **/
    @:keep
    public dynamic function _addErrorContext(_err:stdgo.Error):stdgo.Error return __self__.value._addErrorContext(_err);
    /**
        // saveError saves the first err it is called with,
        // for reporting at the end of the unmarshal.
    **/
    @:keep
    public dynamic function _saveError(_err:stdgo.Error):Void __self__.value._saveError(_err);
    @:keep
    public dynamic function _init(_data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.StdGoTypes.Ref<T_decodeState> return __self__.value._init(_data);
    /**
        // readIndex returns the position of the last byte read.
    **/
    @:keep
    public dynamic function _readIndex():stdgo.StdGoTypes.GoInt return __self__.value._readIndex();
    @:keep
    public dynamic function _unmarshal(_v:stdgo.StdGoTypes.AnyInterface):stdgo.Error return __self__.value._unmarshal(_v);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_decodeState>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_decodeState_asInterface) class T_decodeState_static_extension {
    /**
        // literalInterface consumes and returns a literal from d.data[d.off-1:] and
        // it reads the following byte ahead. The first byte of the literal has been
        // read already (that's how the caller knows it's a literal).
    **/
    @:keep
    static public function _literalInterface( _d:stdgo.StdGoTypes.Ref<T_decodeState>):stdgo.StdGoTypes.AnyInterface {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_decodeState> = _d;
        var _start:stdgo.StdGoTypes.GoInt = _d._readIndex();
        _d._rescanLiteral();
        var _item = (_d._data.__slice__(_start, _d._readIndex()) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        {
            var _c:stdgo.StdGoTypes.GoUInt8 = _item[(0 : stdgo.StdGoTypes.GoInt)];
            {
                final __value__ = _c;
                if (__value__ == ((110 : stdgo.StdGoTypes.GoUInt8))) {
                    return (null : stdgo.StdGoTypes.AnyInterface);
                } else if (__value__ == ((116 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((102 : stdgo.StdGoTypes.GoUInt8))) {
                    return stdgo.Go.toInterface(_c == ((116 : stdgo.StdGoTypes.GoUInt8)));
                } else if (__value__ == ((34 : stdgo.StdGoTypes.GoUInt8))) {
                    var __tmp__ = _unquote(_item), _s:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok) {
                        throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
                    };
                    return stdgo.Go.toInterface(_s);
                } else {
                    if ((_c != (45 : stdgo.StdGoTypes.GoUInt8)) && ((_c < (48 : stdgo.StdGoTypes.GoUInt8)) || (_c > (57 : stdgo.StdGoTypes.GoUInt8)))) {
                        throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
                    };
                    var __tmp__ = _d._convertNumber((_item : stdgo.GoString)?.__copy__()), _n:stdgo.StdGoTypes.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _d._saveError(_err);
                    };
                    return _n;
                };
            };
        };
    }
    /**
        // objectInterface is like object but returns map[string]interface{}.
    **/
    @:keep
    static public function _objectInterface( _d:stdgo.StdGoTypes.Ref<T_decodeState>):stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface> {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_decodeState> = _d;
        var _m = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.AnyInterface>);
        while (true) {
            _d._scanWhile((9 : stdgo.StdGoTypes.GoInt));
            if (_d._opcode == ((5 : stdgo.StdGoTypes.GoInt))) {
                break;
            };
            if (_d._opcode != ((1 : stdgo.StdGoTypes.GoInt))) {
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
            var _start:stdgo.StdGoTypes.GoInt = _d._readIndex();
            _d._rescanLiteral();
            var _item = (_d._data.__slice__(_start, _d._readIndex()) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
            var __tmp__ = _unquote(_item), _key:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
            if (_d._opcode == ((9 : stdgo.StdGoTypes.GoInt))) {
                _d._scanWhile((9 : stdgo.StdGoTypes.GoInt));
            };
            if (_d._opcode != ((3 : stdgo.StdGoTypes.GoInt))) {
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
            _d._scanWhile((9 : stdgo.StdGoTypes.GoInt));
            _m[_key] = _d._valueInterface();
            if (_d._opcode == ((9 : stdgo.StdGoTypes.GoInt))) {
                _d._scanWhile((9 : stdgo.StdGoTypes.GoInt));
            };
            if (_d._opcode == ((5 : stdgo.StdGoTypes.GoInt))) {
                break;
            };
            if (_d._opcode != ((4 : stdgo.StdGoTypes.GoInt))) {
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
        };
        return _m;
    }
    /**
        // arrayInterface is like array but returns []interface{}.
    **/
    @:keep
    static public function _arrayInterface( _d:stdgo.StdGoTypes.Ref<T_decodeState>):stdgo.Slice<stdgo.StdGoTypes.AnyInterface> {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_decodeState> = _d;
        var _v:stdgo.Slice<stdgo.StdGoTypes.AnyInterface> = new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>((0 : stdgo.StdGoTypes.GoInt).toBasic(), 0);
        while (true) {
            _d._scanWhile((9 : stdgo.StdGoTypes.GoInt));
            if (_d._opcode == ((8 : stdgo.StdGoTypes.GoInt))) {
                break;
            };
            _v = (_v.__append__(_d._valueInterface()));
            if (_d._opcode == ((9 : stdgo.StdGoTypes.GoInt))) {
                _d._scanWhile((9 : stdgo.StdGoTypes.GoInt));
            };
            if (_d._opcode == ((8 : stdgo.StdGoTypes.GoInt))) {
                break;
            };
            if (_d._opcode != ((7 : stdgo.StdGoTypes.GoInt))) {
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
        };
        return _v;
    }
    /**
        // valueInterface is like value but returns interface{}
    **/
    @:keep
    static public function _valueInterface( _d:stdgo.StdGoTypes.Ref<T_decodeState>):stdgo.StdGoTypes.AnyInterface {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_decodeState> = _d;
        var _val:stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
        {
            final __value__ = _d._opcode;
            if (__value__ == ((6 : stdgo.StdGoTypes.GoInt))) {
                _val = stdgo.Go.toInterface(_d._arrayInterface());
                _d._scanNext();
            } else if (__value__ == ((2 : stdgo.StdGoTypes.GoInt))) {
                _val = stdgo.Go.toInterface(_d._objectInterface());
                _d._scanNext();
            } else if (__value__ == ((1 : stdgo.StdGoTypes.GoInt))) {
                _val = _d._literalInterface();
            } else {
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
        };
        return _val;
    }
    /**
        // literalStore decodes a literal stored in item into v.
        //
        // fromQuoted indicates whether this literal came from unwrapping a
        // string from the ",string" struct tag option. this is used only to
        // produce more helpful error messages.
    **/
    @:keep
    static public function _literalStore( _d:stdgo.StdGoTypes.Ref<T_decodeState>, _item:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _v:stdgo.reflect.Reflect.Value, _fromQuoted:Bool):stdgo.Error {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_decodeState> = _d;
        if ((_item.length) == ((0 : stdgo.StdGoTypes.GoInt))) {
            _d._saveError(stdgo.fmt.Fmt.errorf(("json: invalid use of ,string struct tag, trying to unmarshal %q into %v" : stdgo.GoString), stdgo.Go.toInterface(_item), stdgo.Go.toInterface(_v.type())));
            return (null : stdgo.Error);
        };
        var _isNull:Bool = _item[(0 : stdgo.StdGoTypes.GoInt)] == ((110 : stdgo.StdGoTypes.GoUInt8));
        var __tmp__ = _indirect(_v?.__copy__(), _isNull), _u:stdgo.encoding.json.Json.Unmarshaler = __tmp__._0, _ut:stdgo.encoding.Encoding.TextUnmarshaler = __tmp__._1, _pv:stdgo.reflect.Reflect.Value = __tmp__._2;
        if (_u != null) {
            return _u.unmarshalJSON(_item);
        };
        if (_ut != null) {
            if (_item[(0 : stdgo.StdGoTypes.GoInt)] != ((34 : stdgo.StdGoTypes.GoUInt8))) {
                if (_fromQuoted) {
                    _d._saveError(stdgo.fmt.Fmt.errorf(("json: invalid use of ,string struct tag, trying to unmarshal %q into %v" : stdgo.GoString), stdgo.Go.toInterface(_item), stdgo.Go.toInterface(_v.type())));
                    return (null : stdgo.Error);
                };
                var _val:stdgo.GoString = ("number" : stdgo.GoString);
                {
                    final __value__ = _item[(0 : stdgo.StdGoTypes.GoInt)];
                    if (__value__ == ((110 : stdgo.StdGoTypes.GoUInt8))) {
                        _val = ("null" : stdgo.GoString);
                    } else if (__value__ == ((116 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((102 : stdgo.StdGoTypes.GoUInt8))) {
                        _val = ("bool" : stdgo.GoString);
                    };
                };
                _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : _val?.__copy__(), type : _v.type(), offset : (_d._readIndex() : stdgo.StdGoTypes.GoInt64) } : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>)));
                return (null : stdgo.Error);
            };
            var __tmp__ = _unquoteBytes(_item), _s:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                if (_fromQuoted) {
                    return stdgo.fmt.Fmt.errorf(("json: invalid use of ,string struct tag, trying to unmarshal %q into %v" : stdgo.GoString), stdgo.Go.toInterface(_item), stdgo.Go.toInterface(_v.type()));
                };
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
            return _ut.unmarshalText(_s);
        };
        _v = _pv?.__copy__();
        {
            var _c:stdgo.StdGoTypes.GoUInt8 = _item[(0 : stdgo.StdGoTypes.GoInt)];
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _c;
                        if (__value__ == ((110 : stdgo.StdGoTypes.GoUInt8))) {
                            if (_fromQuoted && ((_item : stdgo.GoString) != ("null" : stdgo.GoString))) {
                                _d._saveError(stdgo.fmt.Fmt.errorf(("json: invalid use of ,string struct tag, trying to unmarshal %q into %v" : stdgo.GoString), stdgo.Go.toInterface(_item), stdgo.Go.toInterface(_v.type())));
                                break;
                            };
                            {
                                final __value__ = _v.kind();
                                if (__value__ == ((20u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((22u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((21u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((23u32 : stdgo.reflect.Reflect.Kind))) {
                                    _v.setZero();
                                };
                            };
                            break;
                        } else if (__value__ == ((116 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((102 : stdgo.StdGoTypes.GoUInt8))) {
                            var _value:Bool = _item[(0 : stdgo.StdGoTypes.GoInt)] == ((116 : stdgo.StdGoTypes.GoUInt8));
                            if ((_fromQuoted && ((_item : stdgo.GoString) != ("true" : stdgo.GoString))) && ((_item : stdgo.GoString) != ("false" : stdgo.GoString))) {
                                _d._saveError(stdgo.fmt.Fmt.errorf(("json: invalid use of ,string struct tag, trying to unmarshal %q into %v" : stdgo.GoString), stdgo.Go.toInterface(_item), stdgo.Go.toInterface(_v.type())));
                                break;
                            };
                            {
                                final __value__ = _v.kind();
                                if (__value__ == ((1u32 : stdgo.reflect.Reflect.Kind))) {
                                    _v.setBool(_value);
                                } else if (__value__ == ((20u32 : stdgo.reflect.Reflect.Kind))) {
                                    if (_v.numMethod() == ((0 : stdgo.StdGoTypes.GoInt))) {
                                        _v.set(stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(_value))?.__copy__());
                                    } else {
                                        _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("bool" : stdgo.GoString), type : _v.type(), offset : (_d._readIndex() : stdgo.StdGoTypes.GoInt64) } : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>)));
                                    };
                                } else {
                                    if (_fromQuoted) {
                                        _d._saveError(stdgo.fmt.Fmt.errorf(("json: invalid use of ,string struct tag, trying to unmarshal %q into %v" : stdgo.GoString), stdgo.Go.toInterface(_item), stdgo.Go.toInterface(_v.type())));
                                    } else {
                                        _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("bool" : stdgo.GoString), type : _v.type(), offset : (_d._readIndex() : stdgo.StdGoTypes.GoInt64) } : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>)));
                                    };
                                };
                            };
                            break;
                        } else if (__value__ == ((34 : stdgo.StdGoTypes.GoUInt8))) {
                            var __tmp__ = _unquoteBytes(_item), _s:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (!_ok) {
                                if (_fromQuoted) {
                                    return stdgo.fmt.Fmt.errorf(("json: invalid use of ,string struct tag, trying to unmarshal %q into %v" : stdgo.GoString), stdgo.Go.toInterface(_item), stdgo.Go.toInterface(_v.type()));
                                };
                                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
                            };
                            {
                                var __switchIndex__ = -1;
                                var __run__ = true;
                                while (__run__) {
                                    __run__ = false;
                                    {
                                        final __value__ = _v.kind();
                                        if (__value__ == ((23u32 : stdgo.reflect.Reflect.Kind))) {
                                            if (_v.type().elem().kind() != ((8u32 : stdgo.reflect.Reflect.Kind))) {
                                                _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("string" : stdgo.GoString), type : _v.type(), offset : (_d._readIndex() : stdgo.StdGoTypes.GoInt64) } : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>)));
                                                break;
                                            };
                                            var _b = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((stdgo.encoding.base64.Base64.stdEncoding.decodedLen((_s.length)) : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
                                            var __tmp__ = stdgo.encoding.base64.Base64.stdEncoding.decode(_b, _s), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                            if (_err != null) {
                                                _d._saveError(_err);
                                                break;
                                            };
                                            _v.setBytes((_b.__slice__(0, _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                                            break;
                                        } else if (__value__ == ((24u32 : stdgo.reflect.Reflect.Kind))) {
                                            if (((_v.type().string() : String) == (_numberType.string() : String)) && !_isValidNumber((_s : stdgo.GoString)?.__copy__())) {
                                                return stdgo.fmt.Fmt.errorf(("json: invalid number literal, trying to unmarshal %q into Number" : stdgo.GoString), stdgo.Go.toInterface(_item));
                                            };
                                            _v.setString((_s : stdgo.GoString)?.__copy__());
                                            break;
                                        } else if (__value__ == ((20u32 : stdgo.reflect.Reflect.Kind))) {
                                            if (_v.numMethod() == ((0 : stdgo.StdGoTypes.GoInt))) {
                                                _v.set(stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface((_s : stdgo.GoString)))?.__copy__());
                                            } else {
                                                _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("string" : stdgo.GoString), type : _v.type(), offset : (_d._readIndex() : stdgo.StdGoTypes.GoInt64) } : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>)));
                                            };
                                            break;
                                        } else {
                                            _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("string" : stdgo.GoString), type : _v.type(), offset : (_d._readIndex() : stdgo.StdGoTypes.GoInt64) } : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>)));
                                        };
                                    };
                                    break;
                                };
                            };
                            break;
                        } else {
                            if ((_c != (45 : stdgo.StdGoTypes.GoUInt8)) && ((_c < (48 : stdgo.StdGoTypes.GoUInt8)) || (_c > (57 : stdgo.StdGoTypes.GoUInt8)))) {
                                if (_fromQuoted) {
                                    return stdgo.fmt.Fmt.errorf(("json: invalid use of ,string struct tag, trying to unmarshal %q into %v" : stdgo.GoString), stdgo.Go.toInterface(_item), stdgo.Go.toInterface(_v.type()));
                                };
                                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
                            };
                            var _s:stdgo.GoString = (_item : stdgo.GoString)?.__copy__();
                            {
                                var __switchIndex__ = -1;
                                var __run__ = true;
                                while (__run__) {
                                    __run__ = false;
                                    {
                                        final __value__ = _v.kind();
                                        if (__value__ == ((20u32 : stdgo.reflect.Reflect.Kind))) {
                                            var __tmp__ = _d._convertNumber(_s?.__copy__()), _n:stdgo.StdGoTypes.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                            if (_err != null) {
                                                _d._saveError(_err);
                                                break;
                                            };
                                            if (_v.numMethod() != ((0 : stdgo.StdGoTypes.GoInt))) {
                                                _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("number" : stdgo.GoString), type : _v.type(), offset : (_d._readIndex() : stdgo.StdGoTypes.GoInt64) } : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>)));
                                                break;
                                            };
                                            _v.set(stdgo.reflect.Reflect.valueOf(_n)?.__copy__());
                                            break;
                                        } else if (__value__ == ((2u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((3u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((4u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((5u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((6u32 : stdgo.reflect.Reflect.Kind))) {
                                            var __tmp__ = stdgo.strconv.Strconv.parseInt(_s?.__copy__(), (10 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt)), _n:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                            if ((_err != null) || _v.overflowInt(_n)) {
                                                _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("number " : stdgo.GoString) + _s?.__copy__()?.__copy__(), type : _v.type(), offset : (_d._readIndex() : stdgo.StdGoTypes.GoInt64) } : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>)));
                                                break;
                                            };
                                            _v.setInt(_n);
                                            break;
                                        } else if (__value__ == ((7u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((8u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((9u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((10u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((11u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((12u32 : stdgo.reflect.Reflect.Kind))) {
                                            var __tmp__ = stdgo.strconv.Strconv.parseUint(_s?.__copy__(), (10 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt)), _n:stdgo.StdGoTypes.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                            if ((_err != null) || _v.overflowUint(_n)) {
                                                _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("number " : stdgo.GoString) + _s?.__copy__()?.__copy__(), type : _v.type(), offset : (_d._readIndex() : stdgo.StdGoTypes.GoInt64) } : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>)));
                                                break;
                                            };
                                            _v.setUint(_n);
                                            break;
                                        } else if (__value__ == ((13u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((14u32 : stdgo.reflect.Reflect.Kind))) {
                                            var __tmp__ = stdgo.strconv.Strconv.parseFloat(_s?.__copy__(), _v.type().bits()), _n:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                            if ((_err != null) || _v.overflowFloat(_n)) {
                                                _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("number " : stdgo.GoString) + _s?.__copy__()?.__copy__(), type : _v.type(), offset : (_d._readIndex() : stdgo.StdGoTypes.GoInt64) } : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>)));
                                                break;
                                            };
                                            _v.setFloat(_n);
                                            break;
                                        } else {
                                            if ((_v.kind() == (24u32 : stdgo.reflect.Reflect.Kind)) && ((_v.type().string() : String) == (_numberType.string() : String))) {
                                                _v.setString(_s?.__copy__());
                                                break;
                                            };
                                            if (_fromQuoted) {
                                                return stdgo.fmt.Fmt.errorf(("json: invalid use of ,string struct tag, trying to unmarshal %q into %v" : stdgo.GoString), stdgo.Go.toInterface(_item), stdgo.Go.toInterface(_v.type()));
                                            };
                                            _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("number" : stdgo.GoString), type : _v.type(), offset : (_d._readIndex() : stdgo.StdGoTypes.GoInt64) } : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>)));
                                        };
                                    };
                                    break;
                                };
                            };
                        };
                    };
                    break;
                };
            };
        };
        return (null : stdgo.Error);
    }
    /**
        // convertNumber converts the number literal s to a float64 or a Number
        // depending on the setting of d.useNumber.
    **/
    @:keep
    static public function _convertNumber( _d:stdgo.StdGoTypes.Ref<T_decodeState>, _s:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_decodeState> = _d;
        if (_d._useNumber) {
            return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((_s : Number))), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = stdgo.strconv.Strconv.parseFloat(_s?.__copy__(), (64 : stdgo.StdGoTypes.GoInt)), _f:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.StdGoTypes.AnyInterface), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("number " : stdgo.GoString) + _s?.__copy__()?.__copy__(), type : stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoFloat64))), offset : (_d._off : stdgo.StdGoTypes.GoInt64) } : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>)) };
        };
        return { _0 : stdgo.Go.toInterface(_f), _1 : (null : stdgo.Error) };
    }
    /**
        // object consumes an object from d.data[d.off-1:], decoding into v.
        // The first byte ('{') of the object has been read already.
    **/
    @:keep
    static public function _object( _d:stdgo.StdGoTypes.Ref<T_decodeState>, _v:stdgo.reflect.Reflect.Value):stdgo.Error {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_decodeState> = _d;
        var __tmp__ = _indirect(_v?.__copy__(), false), _u:stdgo.encoding.json.Json.Unmarshaler = __tmp__._0, _ut:stdgo.encoding.Encoding.TextUnmarshaler = __tmp__._1, _pv:stdgo.reflect.Reflect.Value = __tmp__._2;
        if (_u != null) {
            var _start:stdgo.StdGoTypes.GoInt = _d._readIndex();
            _d._skip();
            return _u.unmarshalJSON((_d._data.__slice__(_start, _d._off) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
        };
        if (_ut != null) {
            _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("object" : stdgo.GoString), type : _v.type(), offset : (_d._off : stdgo.StdGoTypes.GoInt64) } : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>)));
            _d._skip();
            return (null : stdgo.Error);
        };
        _v = _pv?.__copy__();
        var _t:stdgo.reflect.Reflect.Type_ = _v.type();
        if ((_v.kind() == (20u32 : stdgo.reflect.Reflect.Kind)) && (_v.numMethod() == (0 : stdgo.StdGoTypes.GoInt))) {
            var _oi = _d._objectInterface();
            _v.set(stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(_oi))?.__copy__());
            return (null : stdgo.Error);
        };
        var _fields:T_structFields = ({} : stdgo.encoding.json.Json.T_structFields);
        {
            final __value__ = _v.kind();
            if (__value__ == ((21u32 : stdgo.reflect.Reflect.Kind))) {
                {
                    final __value__ = _t.key().kind();
                    if (__value__ == ((24u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((2u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((3u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((4u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((5u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((6u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((7u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((8u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((9u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((10u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((11u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((12u32 : stdgo.reflect.Reflect.Kind))) {} else {
                        if (!stdgo.reflect.Reflect.pointerTo(_t.key()).implements_(_textUnmarshalerType)) {
                            _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("object" : stdgo.GoString), type : _t, offset : (_d._off : stdgo.StdGoTypes.GoInt64) } : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>)));
                            _d._skip();
                            return (null : stdgo.Error);
                        };
                    };
                };
                if (_v.isNil()) {
                    _v.set(stdgo.reflect.Reflect.makeMap(_t)?.__copy__());
                };
            } else if (__value__ == ((25u32 : stdgo.reflect.Reflect.Kind))) {
                _fields = _cachedTypeFields(_t)?.__copy__();
            } else {
                _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("object" : stdgo.GoString), type : _t, offset : (_d._off : stdgo.StdGoTypes.GoInt64) } : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>)));
                _d._skip();
                return (null : stdgo.Error);
            };
        };
        var _mapElem:stdgo.reflect.Reflect.Value = ({} : stdgo.reflect.Reflect.Value);
        var _origErrorContext:T_errorContext = ({} : stdgo.encoding.json.Json.T_errorContext);
        if (_d._errorContext != null && ((_d._errorContext : Dynamic).__nil__ == null || !(_d._errorContext : Dynamic).__nil__)) {
            _origErrorContext = (_d._errorContext : stdgo.encoding.json.Json.T_errorContext)?.__copy__();
        };
        while (true) {
            _d._scanWhile((9 : stdgo.StdGoTypes.GoInt));
            if (_d._opcode == ((5 : stdgo.StdGoTypes.GoInt))) {
                break;
            };
            if (_d._opcode != ((1 : stdgo.StdGoTypes.GoInt))) {
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
            var _start:stdgo.StdGoTypes.GoInt = _d._readIndex();
            _d._rescanLiteral();
            var _item = (_d._data.__slice__(_start, _d._readIndex()) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
            var __tmp__ = _unquoteBytes(_item), _key:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
            var _subv:stdgo.reflect.Reflect.Value = ({} : stdgo.reflect.Reflect.Value);
            var _destring:Bool = false;
            if (_v.kind() == ((21u32 : stdgo.reflect.Reflect.Kind))) {
                var _elemType:stdgo.reflect.Reflect.Type_ = _t.elem();
                if (!_mapElem.isValid()) {
                    _mapElem = stdgo.reflect.Reflect.new_(_elemType).elem()?.__copy__();
                } else {
                    _mapElem.setZero();
                };
                _subv = _mapElem?.__copy__();
            } else {
                var _f = (_fields._byExactName[(_key : stdgo.GoString)] ?? (null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_field>));
                if (_f == null || (_f : Dynamic).__nil__) {
                    _f = (_fields._byFoldedName[(_foldName(_key) : stdgo.GoString)] ?? (null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_field>));
                };
                if (_f != null && ((_f : Dynamic).__nil__ == null || !(_f : Dynamic).__nil__)) {
                    _subv = _v?.__copy__();
                    _destring = _f._quoted;
                    for (__8 => _i in _f._index) {
                        if (_subv.kind() == ((22u32 : stdgo.reflect.Reflect.Kind))) {
                            if (_subv.isNil()) {
                                if (!_subv.canSet()) {
                                    _d._saveError(stdgo.fmt.Fmt.errorf(("json: cannot set embedded pointer to unexported struct: %v" : stdgo.GoString), stdgo.Go.toInterface(_subv.type().elem())));
                                    _subv = (new stdgo.reflect.Reflect.Value() : stdgo.reflect.Reflect.Value);
                                    _destring = false;
                                    break;
                                };
                                _subv.set(stdgo.reflect.Reflect.new_(_subv.type().elem())?.__copy__());
                            };
                            _subv = _subv.elem()?.__copy__();
                        };
                        _subv = _subv.field(_i)?.__copy__();
                    };
                    if (_d._errorContext == null || (_d._errorContext : Dynamic).__nil__) {
                        _d._errorContext = (stdgo.Go.setRef(({} : stdgo.encoding.json.Json.T_errorContext)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_errorContext>);
                    };
                    _d._errorContext.fieldStack = (_d._errorContext.fieldStack.__append__(_f._name?.__copy__()));
                    _d._errorContext.struct_ = _t;
                } else if (_d._disallowUnknownFields) {
                    _d._saveError(stdgo.fmt.Fmt.errorf(("json: unknown field %q" : stdgo.GoString), stdgo.Go.toInterface(_key)));
                };
            };
            if (_d._opcode == ((9 : stdgo.StdGoTypes.GoInt))) {
                _d._scanWhile((9 : stdgo.StdGoTypes.GoInt));
            };
            if (_d._opcode != ((3 : stdgo.StdGoTypes.GoInt))) {
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
            _d._scanWhile((9 : stdgo.StdGoTypes.GoInt));
            if (_destring) {
                {
                    final __type__ = _d._valueQuoted();
                    if (__type__ == null) {
                        var _qv:stdgo.StdGoTypes.AnyInterface = __type__ == null ? (null : stdgo.StdGoTypes.AnyInterface) : __type__.__underlying__();
                        {
                            var _err:stdgo.Error = _d._literalStore(_nullLiteral, _subv?.__copy__(), false);
                            if (_err != null) {
                                return _err;
                            };
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                        var _qv:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                        {
                            var _err:stdgo.Error = _d._literalStore((_qv : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _subv?.__copy__(), true);
                            if (_err != null) {
                                return _err;
                            };
                        };
                    } else {
                        var _qv:stdgo.StdGoTypes.AnyInterface = __type__?.__underlying__();
                        _d._saveError(stdgo.fmt.Fmt.errorf(("json: invalid use of ,string struct tag, trying to unmarshal unquoted value into %v" : stdgo.GoString), stdgo.Go.toInterface(_subv.type())));
                    };
                };
            } else {
                {
                    var _err:stdgo.Error = _d._value(_subv?.__copy__());
                    if (_err != null) {
                        return _err;
                    };
                };
            };
            if (_v.kind() == ((21u32 : stdgo.reflect.Reflect.Kind))) {
                var _kt:stdgo.reflect.Reflect.Type_ = _t.key();
                var _kv:stdgo.reflect.Reflect.Value = ({} : stdgo.reflect.Reflect.Value);
                {
                    var __switchIndex__ = -1;
                    var __run__ = true;
                    while (__run__) {
                        __run__ = false;
                        if (stdgo.reflect.Reflect.pointerTo(_kt).implements_(_textUnmarshalerType)) {
                            _kv = stdgo.reflect.Reflect.new_(_kt)?.__copy__();
                            {
                                var _err:stdgo.Error = _d._literalStore(_item, _kv?.__copy__(), true);
                                if (_err != null) {
                                    return _err;
                                };
                            };
                            _kv = _kv.elem()?.__copy__();
                            break;
                        } else if (_kt.kind() == ((24u32 : stdgo.reflect.Reflect.Kind))) {
                            _kv = stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(_key)).convert(_kt)?.__copy__();
                            break;
                        } else {
                            {
                                var __switchIndex__ = -1;
                                var __run__ = true;
                                while (__run__) {
                                    __run__ = false;
                                    {
                                        final __value__ = _kt.kind();
                                        if (__value__ == ((2u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((3u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((4u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((5u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((6u32 : stdgo.reflect.Reflect.Kind))) {
                                            var _s:stdgo.GoString = (_key : stdgo.GoString)?.__copy__();
                                            var __tmp__ = stdgo.strconv.Strconv.parseInt(_s?.__copy__(), (10 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt)), _n:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                            if ((_err != null) || stdgo.reflect.Reflect.zero(_kt).overflowInt(_n)) {
                                                _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("number " : stdgo.GoString) + _s?.__copy__()?.__copy__(), type : _kt, offset : (_start + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt64) } : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>)));
                                                break;
                                            };
                                            _kv = stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(_n)).convert(_kt)?.__copy__();
                                            break;
                                        } else if (__value__ == ((7u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((8u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((9u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((10u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((11u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((12u32 : stdgo.reflect.Reflect.Kind))) {
                                            var _s:stdgo.GoString = (_key : stdgo.GoString)?.__copy__();
                                            var __tmp__ = stdgo.strconv.Strconv.parseUint(_s?.__copy__(), (10 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt)), _n:stdgo.StdGoTypes.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                            if ((_err != null) || stdgo.reflect.Reflect.zero(_kt).overflowUint(_n)) {
                                                _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("number " : stdgo.GoString) + _s?.__copy__()?.__copy__(), type : _kt, offset : (_start + (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt64) } : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>)));
                                                break;
                                            };
                                            _kv = stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(_n)).convert(_kt)?.__copy__();
                                            break;
                                        } else {
                                            throw stdgo.Go.toInterface(("json: Unexpected key type" : stdgo.GoString));
                                        };
                                    };
                                    break;
                                };
                            };
                        };
                        break;
                    };
                };
                if (_kv.isValid()) {
                    _v.setMapIndex(_kv?.__copy__(), _subv?.__copy__());
                };
            };
            if (_d._opcode == ((9 : stdgo.StdGoTypes.GoInt))) {
                _d._scanWhile((9 : stdgo.StdGoTypes.GoInt));
            };
            if (_d._errorContext != null && ((_d._errorContext : Dynamic).__nil__ == null || !(_d._errorContext : Dynamic).__nil__)) {
                _d._errorContext.fieldStack = (_d._errorContext.fieldStack.__slice__(0, (_origErrorContext.fieldStack.length)) : stdgo.Slice<stdgo.GoString>);
                _d._errorContext.struct_ = _origErrorContext.struct_;
            };
            if (_d._opcode == ((5 : stdgo.StdGoTypes.GoInt))) {
                break;
            };
            if (_d._opcode != ((4 : stdgo.StdGoTypes.GoInt))) {
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
        };
        return (null : stdgo.Error);
    }
    /**
        // array consumes an array from d.data[d.off-1:], decoding into v.
        // The first byte of the array ('[') has been read already.
    **/
    @:keep
    static public function _array( _d:stdgo.StdGoTypes.Ref<T_decodeState>, _v:stdgo.reflect.Reflect.Value):stdgo.Error {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_decodeState> = _d;
        var __tmp__ = _indirect(_v?.__copy__(), false), _u:stdgo.encoding.json.Json.Unmarshaler = __tmp__._0, _ut:stdgo.encoding.Encoding.TextUnmarshaler = __tmp__._1, _pv:stdgo.reflect.Reflect.Value = __tmp__._2;
        if (_u != null) {
            var _start:stdgo.StdGoTypes.GoInt = _d._readIndex();
            _d._skip();
            return _u.unmarshalJSON((_d._data.__slice__(_start, _d._off) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
        };
        if (_ut != null) {
            _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("array" : stdgo.GoString), type : _v.type(), offset : (_d._off : stdgo.StdGoTypes.GoInt64) } : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>)));
            _d._skip();
            return (null : stdgo.Error);
        };
        _v = _pv?.__copy__();
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _v.kind();
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (20u32 : stdgo.reflect.Reflect.Kind)))) {
                        if (_v.numMethod() == ((0 : stdgo.StdGoTypes.GoInt))) {
                            var _ai = _d._arrayInterface();
                            _v.set(stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(_ai))?.__copy__());
                            return (null : stdgo.Error);
                        };
                        @:fallthrough {
                            __switchIndex__ = 1;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == ((17u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((23u32 : stdgo.reflect.Reflect.Kind))))) {
                        break;
                        break;
                        break;
                    } else {
                        _d._saveError(stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("array" : stdgo.GoString), type : _v.type(), offset : (_d._off : stdgo.StdGoTypes.GoInt64) } : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>)));
                        _d._skip();
                        return (null : stdgo.Error);
                        break;
                    };
                };
                break;
            };
        };
        var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        while (true) {
            _d._scanWhile((9 : stdgo.StdGoTypes.GoInt));
            if (_d._opcode == ((8 : stdgo.StdGoTypes.GoInt))) {
                break;
            };
            if (_v.kind() == ((23u32 : stdgo.reflect.Reflect.Kind))) {
                if (_i >= _v.cap()) {
                    _v.grow((1 : stdgo.StdGoTypes.GoInt));
                };
                if (_i >= _v.len()) {
                    _v.setLen(_i + (1 : stdgo.StdGoTypes.GoInt));
                };
            };
            if (_i < _v.len()) {
                {
                    var _err:stdgo.Error = _d._value(_v.index(_i)?.__copy__());
                    if (_err != null) {
                        return _err;
                    };
                };
            } else {
                {
                    var _err:stdgo.Error = _d._value((new stdgo.reflect.Reflect.Value() : stdgo.reflect.Reflect.Value));
                    if (_err != null) {
                        return _err;
                    };
                };
            };
            _i++;
            if (_d._opcode == ((9 : stdgo.StdGoTypes.GoInt))) {
                _d._scanWhile((9 : stdgo.StdGoTypes.GoInt));
            };
            if (_d._opcode == ((8 : stdgo.StdGoTypes.GoInt))) {
                break;
            };
            if (_d._opcode != ((7 : stdgo.StdGoTypes.GoInt))) {
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
        };
        if (_i < _v.len()) {
            if (_v.kind() == ((17u32 : stdgo.reflect.Reflect.Kind))) {
                stdgo.Go.cfor(_i < _v.len(), _i++, {
                    _v.index(_i).setZero();
                });
            } else {
                _v.setLen(_i);
            };
        };
        if ((_i == (0 : stdgo.StdGoTypes.GoInt)) && (_v.kind() == (23u32 : stdgo.reflect.Reflect.Kind))) {
            _v.set(stdgo.reflect.Reflect.makeSlice(_v.type(), (0 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt))?.__copy__());
        };
        return (null : stdgo.Error);
    }
    /**
        // valueQuoted is like value but decodes a
        // quoted string literal or literal null into an interface value.
        // If it finds anything other than a quoted string literal or null,
        // valueQuoted returns unquotedValue{}.
    **/
    @:keep
    static public function _valueQuoted( _d:stdgo.StdGoTypes.Ref<T_decodeState>):stdgo.StdGoTypes.AnyInterface {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_decodeState> = _d;
        {
            final __value__ = _d._opcode;
            if (__value__ == ((6 : stdgo.StdGoTypes.GoInt)) || __value__ == ((2 : stdgo.StdGoTypes.GoInt))) {
                _d._skip();
                _d._scanNext();
            } else if (__value__ == ((1 : stdgo.StdGoTypes.GoInt))) {
                var _v:stdgo.StdGoTypes.AnyInterface = _d._literalInterface();
                {
                    final __type__ = _v;
                    if (__type__ == null || stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                        return _v;
                    };
                };
            } else {
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
        };
        return stdgo.Go.toInterface((new stdgo.encoding.json.Json.T_unquotedValue() : stdgo.encoding.json.Json.T_unquotedValue));
    }
    /**
        // value consumes a JSON value from d.data[d.off-1:], decoding into v, and
        // reads the following byte ahead. If v is invalid, the value is discarded.
        // The first byte of the value has been read already.
    **/
    @:keep
    static public function _value( _d:stdgo.StdGoTypes.Ref<T_decodeState>, _v:stdgo.reflect.Reflect.Value):stdgo.Error {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_decodeState> = _d;
        {
            final __value__ = _d._opcode;
            if (__value__ == ((6 : stdgo.StdGoTypes.GoInt))) {
                if (_v.isValid()) {
                    {
                        var _err:stdgo.Error = _d._array(_v?.__copy__());
                        if (_err != null) {
                            return _err;
                        };
                    };
                } else {
                    _d._skip();
                };
                _d._scanNext();
            } else if (__value__ == ((2 : stdgo.StdGoTypes.GoInt))) {
                if (_v.isValid()) {
                    {
                        var _err:stdgo.Error = _d._object(_v?.__copy__());
                        if (_err != null) {
                            return _err;
                        };
                    };
                } else {
                    _d._skip();
                };
                _d._scanNext();
            } else if (__value__ == ((1 : stdgo.StdGoTypes.GoInt))) {
                var _start:stdgo.StdGoTypes.GoInt = _d._readIndex();
                _d._rescanLiteral();
                if (_v.isValid()) {
                    {
                        var _err:stdgo.Error = _d._literalStore((_d._data.__slice__(_start, _d._readIndex()) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _v?.__copy__(), false);
                        if (_err != null) {
                            return _err;
                        };
                    };
                };
            } else {
                throw stdgo.Go.toInterface(("JSON decoder out of sync - data changing underfoot?" : stdgo.GoString));
            };
        };
        return (null : stdgo.Error);
    }
    /**
        // rescanLiteral is similar to scanWhile(scanContinue), but it specialises the
        // common case where we're decoding a literal. The decoder scans the input
        // twice, once for syntax errors and to check the length of the value, and the
        // second to perform the decoding.
        //
        // Only in the second step do we use decodeState to tokenize literals, so we
        // know there aren't any syntax errors. We can take advantage of that knowledge,
        // and scan a literal's bytes much more quickly.
    **/
    @:keep
    static public function _rescanLiteral( _d:stdgo.StdGoTypes.Ref<T_decodeState>):Void {
        stdgo.internal.Macro.controlFlow({
            @:recv var _d:stdgo.StdGoTypes.Ref<T_decodeState> = _d;
            var __0 = _d._data, __1:stdgo.StdGoTypes.GoInt = _d._off, _i:stdgo.StdGoTypes.GoInt = __1, _data = __0;
            @:label("Switch") {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _data[(_i - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)];
                        if (__value__ == ((34 : stdgo.StdGoTypes.GoUInt8))) {
                            stdgo.Go.cfor(_i < (_data.length), _i++, {
                                {
                                    var __switchIndex__ = -1;
                                    var __run__ = true;
                                    while (__run__) {
                                        __run__ = false;
                                        {
                                            final __value__ = _data[(_i : stdgo.StdGoTypes.GoInt)];
                                            if (__value__ == ((92 : stdgo.StdGoTypes.GoUInt8))) {
                                                _i++;
                                                break;
                                            } else if (__value__ == ((34 : stdgo.StdGoTypes.GoUInt8))) {
                                                _i++;
                                                @:jump("Switch") break;
                                                break;
                                            };
                                        };
                                        break;
                                    };
                                };
                            });
                            break;
                        } else if (__value__ == ((48 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((49 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((50 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((51 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((52 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((53 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((54 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((55 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((56 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((57 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((45 : stdgo.StdGoTypes.GoUInt8))) {
                            stdgo.Go.cfor(_i < (_data.length), _i++, {
                                {
                                    var __switchIndex__ = -1;
                                    var __run__ = true;
                                    while (__run__) {
                                        __run__ = false;
                                        {
                                            final __value__ = _data[(_i : stdgo.StdGoTypes.GoInt)];
                                            if (__value__ == ((48 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((49 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((50 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((51 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((52 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((53 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((54 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((55 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((56 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((57 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((46 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((101 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((69 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((43 : stdgo.StdGoTypes.GoUInt8)) || __value__ == ((45 : stdgo.StdGoTypes.GoUInt8))) {
                                                break;
                                            } else {
                                                @:jump("Switch") break;
                                            };
                                        };
                                        break;
                                    };
                                };
                            });
                            break;
                        } else if (__value__ == ((116 : stdgo.StdGoTypes.GoUInt8))) {
                            _i = _i + ((("rue" : stdgo.GoString).length));
                            break;
                        } else if (__value__ == ((102 : stdgo.StdGoTypes.GoUInt8))) {
                            _i = _i + ((("alse" : stdgo.GoString).length));
                            break;
                        } else if (__value__ == ((110 : stdgo.StdGoTypes.GoUInt8))) {
                            _i = _i + ((("ull" : stdgo.GoString).length));
                            break;
                        };
                    };
                    break;
                };
            };
            if (_i < (_data.length)) {
                _d._opcode = _stateEndValue((stdgo.Go.setRef(_d._scan) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_scanner>), _data[(_i : stdgo.StdGoTypes.GoInt)]);
            } else {
                _d._opcode = (10 : stdgo.StdGoTypes.GoInt);
            };
            _d._off = _i + (1 : stdgo.StdGoTypes.GoInt);
        });
    }
    /**
        // scanWhile processes bytes in d.data[d.off:] until it
        // receives a scan code not equal to op.
    **/
    @:keep
    static public function _scanWhile( _d:stdgo.StdGoTypes.Ref<T_decodeState>, _op:stdgo.StdGoTypes.GoInt):Void {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_decodeState> = _d;
        var __0 = (stdgo.Go.setRef(_d._scan) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_scanner>), __1 = _d._data, __2:stdgo.StdGoTypes.GoInt = _d._off, _i:stdgo.StdGoTypes.GoInt = __2, _data = __1, _s = __0;
        while (_i < (_data.length)) {
            var _newOp:stdgo.StdGoTypes.GoInt = _s._step(_s, _data[(_i : stdgo.StdGoTypes.GoInt)]);
            _i++;
            if (_newOp != (_op)) {
                _d._opcode = _newOp;
                _d._off = _i;
                return;
            };
        };
        _d._off = (_data.length) + (1 : stdgo.StdGoTypes.GoInt);
        _d._opcode = _d._scan._eof();
    }
    /**
        // scanNext processes the byte at d.data[d.off].
    **/
    @:keep
    static public function _scanNext( _d:stdgo.StdGoTypes.Ref<T_decodeState>):Void {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_decodeState> = _d;
        if (_d._off < (_d._data.length)) {
            _d._opcode = _d._scan._step((stdgo.Go.setRef(_d._scan) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_scanner>), _d._data[(_d._off : stdgo.StdGoTypes.GoInt)]);
            _d._off++;
        } else {
            _d._opcode = _d._scan._eof();
            _d._off = (_d._data.length) + (1 : stdgo.StdGoTypes.GoInt);
        };
    }
    /**
        // skip scans to the end of what was started.
    **/
    @:keep
    static public function _skip( _d:stdgo.StdGoTypes.Ref<T_decodeState>):Void {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_decodeState> = _d;
        var __0 = (stdgo.Go.setRef(_d._scan) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_scanner>), __1 = _d._data, __2:stdgo.StdGoTypes.GoInt = _d._off, _i:stdgo.StdGoTypes.GoInt = __2, _data = __1, _s = __0;
        var _depth:stdgo.StdGoTypes.GoInt = (_s._parseState.length);
        while (true) {
            var _op:stdgo.StdGoTypes.GoInt = _s._step(_s, _data[(_i : stdgo.StdGoTypes.GoInt)]);
            _i++;
            if ((_s._parseState.length) < _depth) {
                _d._off = _i;
                _d._opcode = _op;
                return;
            };
        };
    }
    /**
        // addErrorContext returns a new error enhanced with information from d.errorContext
    **/
    @:keep
    static public function _addErrorContext( _d:stdgo.StdGoTypes.Ref<T_decodeState>, _err:stdgo.Error):stdgo.Error {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_decodeState> = _d;
        if (((_d._errorContext != null) && ((_d._errorContext : Dynamic).__nil__ == null || !(_d._errorContext : Dynamic).__nil__)) && (!((_d._errorContext.struct_.string() : String) == (null.string() : String)) || (_d._errorContext.fieldStack.length > (0 : stdgo.StdGoTypes.GoInt)))) {
            {
                final __type__ = _err;
                if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.Ref<UnmarshalTypeError>))) {
                    var _err:stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError> = __type__ == null ? (null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>) : __type__.__underlying__() == null ? (null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>) : __type__ == null ? (null : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>) : __type__.__underlying__().value;
                    _err.struct_ = _d._errorContext.struct_.name()?.__copy__();
                    _err.field = stdgo.strings.Strings.join(_d._errorContext.fieldStack, ("." : stdgo.GoString))?.__copy__();
                };
            };
        };
        return _err;
    }
    /**
        // saveError saves the first err it is called with,
        // for reporting at the end of the unmarshal.
    **/
    @:keep
    static public function _saveError( _d:stdgo.StdGoTypes.Ref<T_decodeState>, _err:stdgo.Error):Void {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_decodeState> = _d;
        if (_d._savedError == null) {
            _d._savedError = _d._addErrorContext(_err);
        };
    }
    @:keep
    static public function _init( _d:stdgo.StdGoTypes.Ref<T_decodeState>, _data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.StdGoTypes.Ref<T_decodeState> {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_decodeState> = _d;
        _d._data = _data;
        _d._off = (0 : stdgo.StdGoTypes.GoInt);
        _d._savedError = (null : stdgo.Error);
        if (_d._errorContext != null && ((_d._errorContext : Dynamic).__nil__ == null || !(_d._errorContext : Dynamic).__nil__)) {
            _d._errorContext.struct_ = (null : stdgo.reflect.Reflect.Type_);
            _d._errorContext.fieldStack = (_d._errorContext.fieldStack.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.GoString>);
        };
        return _d;
    }
    /**
        // readIndex returns the position of the last byte read.
    **/
    @:keep
    static public function _readIndex( _d:stdgo.StdGoTypes.Ref<T_decodeState>):stdgo.StdGoTypes.GoInt {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_decodeState> = _d;
        return _d._off - (1 : stdgo.StdGoTypes.GoInt);
    }
    @:keep
    static public function _unmarshal( _d:stdgo.StdGoTypes.Ref<T_decodeState>, _v:stdgo.StdGoTypes.AnyInterface):stdgo.Error {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_decodeState> = _d;
        var _rv:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.valueOf(_v)?.__copy__();
        if ((_rv.kind() != (22u32 : stdgo.reflect.Reflect.Kind)) || _rv.isNil()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.InvalidUnmarshalError(stdgo.reflect.Reflect.typeOf(_v)) : stdgo.encoding.json.Json.InvalidUnmarshalError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.InvalidUnmarshalError>));
        };
        _d._scan._reset();
        _d._scanWhile((9 : stdgo.StdGoTypes.GoInt));
        var _err:stdgo.Error = _d._value(_rv?.__copy__());
        if (_err != null) {
            return _d._addErrorContext(_err);
        };
        return _d._savedError;
    }
}
class T_unmarshaler_asInterface {
    @:keep
    public dynamic function unmarshalJSON(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error return __self__.value.unmarshalJSON(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_unmarshaler>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_unmarshaler_asInterface) class T_unmarshaler_static_extension {
    @:keep
    static public function unmarshalJSON( _u:stdgo.StdGoTypes.Ref<T_unmarshaler>, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error {
        @:recv var _u:stdgo.StdGoTypes.Ref<T_unmarshaler> = _u;
        {
            var __tmp__ = (new stdgo.encoding.json.Json.T_unmarshaler(true) : stdgo.encoding.json.Json.T_unmarshaler);
            _u.t = __tmp__.t;
        };
        return (null : stdgo.Error);
    }
}
class T_unmarshalerText_asInterface {
    @:keep
    public dynamic function unmarshalText(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error return __self__.value.unmarshalText(_b);
    /**
        // needed for re-marshaling tests
    **/
    @:keep
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalText();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_unmarshalerText>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_unmarshalerText_asInterface) class T_unmarshalerText_static_extension {
    @:keep
    static public function unmarshalText( _u:stdgo.StdGoTypes.Ref<T_unmarshalerText>, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error {
        @:recv var _u:stdgo.StdGoTypes.Ref<T_unmarshalerText> = _u;
        var _pos:stdgo.StdGoTypes.GoInt = stdgo.bytes.Bytes.indexByte(_b, (58 : stdgo.StdGoTypes.GoUInt8));
        if (_pos == ((-1 : stdgo.StdGoTypes.GoInt))) {
            return stdgo.errors.Errors.new_(("missing separator" : stdgo.GoString));
        };
        {
            final __tmp__0 = ((_b.__slice__(0, _pos) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : stdgo.GoString)?.__copy__();
            final __tmp__1 = ((_b.__slice__(_pos + (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : stdgo.GoString)?.__copy__();
            _u.a = __tmp__0;
            _u.b = __tmp__1;
        };
        return (null : stdgo.Error);
    }
    /**
        // needed for re-marshaling tests
    **/
    @:keep
    static public function marshalText( _u:T_unmarshalerText):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _u:T_unmarshalerText = _u?.__copy__();
        return { _0 : (_u.a + (":" : stdgo.GoString)?.__copy__() + _u.b?.__copy__() : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _1 : (null : stdgo.Error) };
    }
}
class Top_asInterface {
    @:embedded
    public dynamic function sub(_q:stdgo.image.Image.Point):stdgo.image.Image.Point return __self__.value.sub(_q);
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function mul(_n:stdgo.StdGoTypes.GoInt):stdgo.image.Image.Point return __self__.value.mul(_n);
    @:embedded
    public dynamic function mod(_r:stdgo.image.Image.Rectangle):stdgo.image.Image.Point return __self__.value.mod(_r);
    @:embedded
    public dynamic function in_(_r:stdgo.image.Image.Rectangle):Bool return __self__.value.in_(_r);
    @:embedded
    public dynamic function eq(_q:stdgo.image.Image.Point):Bool return __self__.value.eq(_q);
    @:embedded
    public dynamic function div(_n:stdgo.StdGoTypes.GoInt):stdgo.image.Image.Point return __self__.value.div(_n);
    @:embedded
    public dynamic function add(_q:stdgo.image.Image.Point):stdgo.image.Image.Point return __self__.value.add(_q);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Top>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.Top_asInterface) class Top_static_extension {
    @:embedded
    public static function sub( __self__:Top, _q:stdgo.image.Image.Point):stdgo.image.Image.Point return __self__.sub(_q);
    @:embedded
    public static function string( __self__:Top):stdgo.GoString return __self__.string();
    @:embedded
    public static function mul( __self__:Top, _n:stdgo.StdGoTypes.GoInt):stdgo.image.Image.Point return __self__.mul(_n);
    @:embedded
    public static function mod( __self__:Top, _r:stdgo.image.Image.Rectangle):stdgo.image.Image.Point return __self__.mod(_r);
    @:embedded
    public static function in_( __self__:Top, _r:stdgo.image.Image.Rectangle):Bool return __self__.in_(_r);
    @:embedded
    public static function eq( __self__:Top, _q:stdgo.image.Image.Point):Bool return __self__.eq(_q);
    @:embedded
    public static function div( __self__:Top, _n:stdgo.StdGoTypes.GoInt):stdgo.image.Image.Point return __self__.div(_n);
    @:embedded
    public static function add( __self__:Top, _q:stdgo.image.Image.Point):stdgo.image.Image.Point return __self__.add(_q);
}
class Embed0p_asInterface {
    @:embedded
    public dynamic function sub(_q:stdgo.image.Image.Point):stdgo.image.Image.Point return __self__.value.sub(_q);
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function mul(_n:stdgo.StdGoTypes.GoInt):stdgo.image.Image.Point return __self__.value.mul(_n);
    @:embedded
    public dynamic function mod(_r:stdgo.image.Image.Rectangle):stdgo.image.Image.Point return __self__.value.mod(_r);
    @:embedded
    public dynamic function in_(_r:stdgo.image.Image.Rectangle):Bool return __self__.value.in_(_r);
    @:embedded
    public dynamic function eq(_q:stdgo.image.Image.Point):Bool return __self__.value.eq(_q);
    @:embedded
    public dynamic function div(_n:stdgo.StdGoTypes.GoInt):stdgo.image.Image.Point return __self__.value.div(_n);
    @:embedded
    public dynamic function add(_q:stdgo.image.Image.Point):stdgo.image.Image.Point return __self__.value.add(_q);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Embed0p>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.Embed0p_asInterface) class Embed0p_static_extension {
    @:embedded
    public static function sub( __self__:Embed0p, _q:stdgo.image.Image.Point):stdgo.image.Image.Point return __self__.sub(_q);
    @:embedded
    public static function string( __self__:Embed0p):stdgo.GoString return __self__.string();
    @:embedded
    public static function mul( __self__:Embed0p, _n:stdgo.StdGoTypes.GoInt):stdgo.image.Image.Point return __self__.mul(_n);
    @:embedded
    public static function mod( __self__:Embed0p, _r:stdgo.image.Image.Rectangle):stdgo.image.Image.Point return __self__.mod(_r);
    @:embedded
    public static function in_( __self__:Embed0p, _r:stdgo.image.Image.Rectangle):Bool return __self__.in_(_r);
    @:embedded
    public static function eq( __self__:Embed0p, _q:stdgo.image.Image.Point):Bool return __self__.eq(_q);
    @:embedded
    public static function div( __self__:Embed0p, _n:stdgo.StdGoTypes.GoInt):stdgo.image.Image.Point return __self__.div(_n);
    @:embedded
    public static function add( __self__:Embed0p, _q:stdgo.image.Image.Point):stdgo.image.Image.Point return __self__.add(_q);
}
class Embed0q_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Embed0q>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.Embed0q_asInterface) class Embed0q_static_extension {

}
class Loop_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Loop>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.Loop_asInterface) class Loop_static_extension {

}
class S5_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<S5>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.S5_asInterface) class S5_static_extension {

}
class S8_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<S8>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.S8_asInterface) class S8_static_extension {

}
class S10_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<S10>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.S10_asInterface) class S10_static_extension {

}
class S11_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<S11>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.S11_asInterface) class S11_static_extension {

}
class S12_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<S12>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.S12_asInterface) class S12_static_extension {

}
class S13_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<S13>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.S13_asInterface) class S13_static_extension {

}
class T_unexportedWithMethods_asInterface {
    @:keep
    public dynamic function f():Void __self__.value.f();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_unexportedWithMethods>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_unexportedWithMethods_asInterface) class T_unexportedWithMethods_static_extension {
    @:keep
    static public function f( _:T_unexportedWithMethods):Void {
        @:recv var _:T_unexportedWithMethods = _?.__copy__();
    }
}
class MustNotUnmarshalJSON_asInterface {
    @:keep
    public dynamic function unmarshalJSON(_data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error return __self__.value.unmarshalJSON(_data);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<MustNotUnmarshalJSON>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.MustNotUnmarshalJSON_asInterface) class MustNotUnmarshalJSON_static_extension {
    @:keep
    static public function unmarshalJSON( _x:MustNotUnmarshalJSON, _data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error {
        @:recv var _x:MustNotUnmarshalJSON = _x?.__copy__();
        return stdgo.errors.Errors.new_(("MustNotUnmarshalJSON was used" : stdgo.GoString));
    }
}
class MustNotUnmarshalText_asInterface {
    @:keep
    public dynamic function unmarshalText(_text:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error return __self__.value.unmarshalText(_text);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<MustNotUnmarshalText>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.MustNotUnmarshalText_asInterface) class MustNotUnmarshalText_static_extension {
    @:keep
    static public function unmarshalText( _x:MustNotUnmarshalText, _text:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error {
        @:recv var _x:MustNotUnmarshalText = _x?.__copy__();
        return stdgo.errors.Errors.new_(("MustNotUnmarshalText was used" : stdgo.GoString));
    }
}
class T_unmarshalPanic_asInterface {
    @:keep
    public dynamic function unmarshalJSON(_0:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error return __self__.value.unmarshalJSON(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_unmarshalPanic>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_unmarshalPanic_asInterface) class T_unmarshalPanic_static_extension {
    @:keep
    static public function unmarshalJSON( _:T_unmarshalPanic, _0:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error {
        @:recv var _:T_unmarshalPanic = _?.__copy__();
        throw stdgo.Go.toInterface((57005 : stdgo.StdGoTypes.GoInt));
    }
}
class UnsupportedTypeError_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<UnsupportedTypeError>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.UnsupportedTypeError_asInterface) class UnsupportedTypeError_static_extension {
    @:keep
    static public function error( _e:stdgo.StdGoTypes.Ref<UnsupportedTypeError>):stdgo.GoString {
        @:recv var _e:stdgo.StdGoTypes.Ref<UnsupportedTypeError> = _e;
        return ("json: unsupported type: " : stdgo.GoString) + (_e.type.string() : stdgo.GoString)?.__copy__()?.__copy__();
    }
}
class UnsupportedValueError_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<UnsupportedValueError>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.UnsupportedValueError_asInterface) class UnsupportedValueError_static_extension {
    @:keep
    static public function error( _e:stdgo.StdGoTypes.Ref<UnsupportedValueError>):stdgo.GoString {
        @:recv var _e:stdgo.StdGoTypes.Ref<UnsupportedValueError> = _e;
        return ("json: unsupported value: " : stdgo.GoString) + _e.str?.__copy__()?.__copy__();
    }
}
class InvalidUTF8Error_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<InvalidUTF8Error>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.InvalidUTF8Error_asInterface) class InvalidUTF8Error_static_extension {
    @:keep
    static public function error( _e:stdgo.StdGoTypes.Ref<InvalidUTF8Error>):stdgo.GoString {
        @:recv var _e:stdgo.StdGoTypes.Ref<InvalidUTF8Error> = _e;
        return ("json: invalid UTF-8 in string: " : stdgo.GoString) + stdgo.strconv.Strconv.quote(_e.s?.__copy__())?.__copy__()?.__copy__();
    }
}
class MarshalerError_asInterface {
    /**
        // Unwrap returns the underlying error.
    **/
    @:keep
    public dynamic function unwrap():stdgo.Error return __self__.value.unwrap();
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<MarshalerError>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.MarshalerError_asInterface) class MarshalerError_static_extension {
    /**
        // Unwrap returns the underlying error.
    **/
    @:keep
    static public function unwrap( _e:stdgo.StdGoTypes.Ref<MarshalerError>):stdgo.Error {
        @:recv var _e:stdgo.StdGoTypes.Ref<MarshalerError> = _e;
        return _e.err;
    }
    @:keep
    static public function error( _e:stdgo.StdGoTypes.Ref<MarshalerError>):stdgo.GoString {
        @:recv var _e:stdgo.StdGoTypes.Ref<MarshalerError> = _e;
        var _srcFunc:stdgo.GoString = _e._sourceFunc?.__copy__();
        if (_srcFunc == (stdgo.Go.str())) {
            _srcFunc = ("MarshalJSON" : stdgo.GoString);
        };
        return ("json: error calling " : stdgo.GoString) + _srcFunc?.__copy__() + (" for type " : stdgo.GoString)?.__copy__() + (_e.type.string() : stdgo.GoString)?.__copy__() + (": " : stdgo.GoString)?.__copy__() + _e.err.error()?.__copy__()?.__copy__();
    }
}
class T_encodeState_asInterface {
    @:keep
    public dynamic function _reflectValue(_v:stdgo.reflect.Reflect.Value, _opts:T_encOpts):Void __self__.value._reflectValue(_v, _opts);
    /**
        // error aborts the encoding by panicking with err wrapped in jsonError.
    **/
    @:keep
    public dynamic function _error(_err:stdgo.Error):Void __self__.value._error(_err);
    @:keep
    public dynamic function _marshal(_v:stdgo.StdGoTypes.AnyInterface, _opts:T_encOpts):stdgo.Error return __self__.value._marshal(_v, _opts);
    @:embedded
    public dynamic function _tryGrowByReslice(_n:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : Bool; } return __self__.value._tryGrowByReslice(_n);
    @:embedded
    public dynamic function _readSlice(__0:stdgo.StdGoTypes.GoUInt8):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>; var _1 : stdgo.Error; } return __self__.value._readSlice(__0);
    @:embedded
    public dynamic function _grow(_n:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.GoInt return __self__.value._grow(_n);
    @:embedded
    public dynamic function _empty():Bool return __self__.value._empty();
    @:embedded
    public dynamic function writeTo(_w:stdgo.io.Io.Writer):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } return __self__.value.writeTo(_w);
    @:embedded
    public dynamic function writeString(__0:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(__0);
    @:embedded
    public dynamic function writeRune(__0:stdgo.StdGoTypes.GoInt32):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.writeRune(__0);
    @:embedded
    public dynamic function writeByte(__0:stdgo.StdGoTypes.GoUInt8):stdgo.Error return __self__.value.writeByte(__0);
    @:embedded
    public dynamic function write(_b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_b);
    @:embedded
    public dynamic function unreadRune():stdgo.Error return __self__.value.unreadRune();
    @:embedded
    public dynamic function unreadByte():stdgo.Error return __self__.value.unreadByte();
    @:embedded
    public dynamic function truncate(_n:stdgo.StdGoTypes.GoInt):Void __self__.value.truncate(_n);
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function reset():Void __self__.value.reset();
    @:embedded
    public dynamic function readString(__0:stdgo.StdGoTypes.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value.readString(__0);
    @:embedded
    public dynamic function readRune():{ var _0 : stdgo.StdGoTypes.GoInt32; var _1 : stdgo.StdGoTypes.GoInt; var _2 : stdgo.Error; } return __self__.value.readRune();
    @:embedded
    public dynamic function readFrom(_r:stdgo.io.Io.Reader):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } return __self__.value.readFrom(_r);
    @:embedded
    public dynamic function readBytes(__0:stdgo.StdGoTypes.GoUInt8):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.readBytes(__0);
    @:embedded
    public dynamic function readByte():{ var _0 : stdgo.StdGoTypes.GoUInt8; var _1 : stdgo.Error; } return __self__.value.readByte();
    @:embedded
    public dynamic function read(_b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_b);
    @:embedded
    public dynamic function next(_n:stdgo.StdGoTypes.GoInt):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return __self__.value.next(_n);
    @:embedded
    public dynamic function len():stdgo.StdGoTypes.GoInt return __self__.value.len();
    @:embedded
    public dynamic function grow(_n:stdgo.StdGoTypes.GoInt):Void __self__.value.grow(_n);
    @:embedded
    public dynamic function cap():stdgo.StdGoTypes.GoInt return __self__.value.cap();
    @:embedded
    public dynamic function bytes():stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return __self__.value.bytes();
    @:embedded
    public dynamic function availableBuffer():stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return __self__.value.availableBuffer();
    @:embedded
    public dynamic function available():stdgo.StdGoTypes.GoInt return __self__.value.available();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_encodeState>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_encodeState_asInterface) class T_encodeState_static_extension {
    @:keep
    static public function _reflectValue( _e:stdgo.StdGoTypes.Ref<T_encodeState>, _v:stdgo.reflect.Reflect.Value, _opts:T_encOpts):Void {
        @:recv var _e:stdgo.StdGoTypes.Ref<T_encodeState> = _e;
        _valueEncoder(_v?.__copy__())(_e, _v?.__copy__(), _opts?.__copy__());
    }
    /**
        // error aborts the encoding by panicking with err wrapped in jsonError.
    **/
    @:keep
    static public function _error( _e:stdgo.StdGoTypes.Ref<T_encodeState>, _err:stdgo.Error):Void {
        @:recv var _e:stdgo.StdGoTypes.Ref<T_encodeState> = _e;
        throw stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo.encoding.json.Json.T_jsonError(_err) : stdgo.encoding.json.Json.T_jsonError)));
    }
    @:keep
    static public function _marshal( _e:stdgo.StdGoTypes.Ref<T_encodeState>, _v:stdgo.StdGoTypes.AnyInterface, _opts:T_encOpts):stdgo.Error {
        @:recv var _e:stdgo.StdGoTypes.Ref<T_encodeState> = _e;
        var __deferstack__:Array<Void -> Void> = [];
        var _err:stdgo.Error = (null : stdgo.Error);
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _r:stdgo.StdGoTypes.AnyInterface = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (_r != null) {
                            {
                                var __tmp__ = try {
                                    { _0 : (stdgo.Go.typeAssert((_r : T_jsonError)) : T_jsonError), _1 : true };
                                } catch(_) {
                                    { _0 : ({} : stdgo.encoding.json.Json.T_jsonError), _1 : false };
                                }, _je = __tmp__._0, _ok = __tmp__._1;
                                if (_ok) {
                                    _err = _je._error;
                                } else {
                                    throw stdgo.Go.toInterface(_r);
                                };
                            };
                        };
                    };
                };
                a();
            });
            _e._reflectValue(stdgo.reflect.Reflect.valueOf(_v)?.__copy__(), _opts?.__copy__());
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return (null : stdgo.Error);
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _err;
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
            return _err;
        };
    }
    @:embedded
    public static function _tryGrowByReslice( __self__:T_encodeState, _n:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : Bool; } return __self__._tryGrowByReslice(_n);
    @:embedded
    public static function _readSlice( __self__:T_encodeState, __0:stdgo.StdGoTypes.GoUInt8):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>; var _1 : stdgo.Error; } return __self__._readSlice(__0);
    @:embedded
    public static function _grow( __self__:T_encodeState, _n:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.GoInt return __self__._grow(_n);
    @:embedded
    public static function _empty( __self__:T_encodeState):Bool return __self__._empty();
    @:embedded
    public static function writeTo( __self__:T_encodeState, _w:stdgo.io.Io.Writer):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } return __self__.writeTo(_w);
    @:embedded
    public static function writeString( __self__:T_encodeState, __0:stdgo.GoString):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.writeString(__0);
    @:embedded
    public static function writeRune( __self__:T_encodeState, __0:stdgo.StdGoTypes.GoInt32):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.writeRune(__0);
    @:embedded
    public static function writeByte( __self__:T_encodeState, __0:stdgo.StdGoTypes.GoUInt8):stdgo.Error return __self__.writeByte(__0);
    @:embedded
    public static function write( __self__:T_encodeState, _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.write(_b);
    @:embedded
    public static function unreadRune( __self__:T_encodeState):stdgo.Error return __self__.unreadRune();
    @:embedded
    public static function unreadByte( __self__:T_encodeState):stdgo.Error return __self__.unreadByte();
    @:embedded
    public static function truncate( __self__:T_encodeState, _n:stdgo.StdGoTypes.GoInt) __self__.truncate(_n);
    @:embedded
    public static function string( __self__:T_encodeState):stdgo.GoString return __self__.string();
    @:embedded
    public static function reset( __self__:T_encodeState) __self__.reset();
    @:embedded
    public static function readString( __self__:T_encodeState, __0:stdgo.StdGoTypes.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.readString(__0);
    @:embedded
    public static function readRune( __self__:T_encodeState):{ var _0 : stdgo.StdGoTypes.GoInt32; var _1 : stdgo.StdGoTypes.GoInt; var _2 : stdgo.Error; } return __self__.readRune();
    @:embedded
    public static function readFrom( __self__:T_encodeState, _r:stdgo.io.Io.Reader):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } return __self__.readFrom(_r);
    @:embedded
    public static function readBytes( __self__:T_encodeState, __0:stdgo.StdGoTypes.GoUInt8):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>; var _1 : stdgo.Error; } return __self__.readBytes(__0);
    @:embedded
    public static function readByte( __self__:T_encodeState):{ var _0 : stdgo.StdGoTypes.GoUInt8; var _1 : stdgo.Error; } return __self__.readByte();
    @:embedded
    public static function read( __self__:T_encodeState, _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.read(_b);
    @:embedded
    public static function next( __self__:T_encodeState, _n:stdgo.StdGoTypes.GoInt):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return __self__.next(_n);
    @:embedded
    public static function len( __self__:T_encodeState):stdgo.StdGoTypes.GoInt return __self__.len();
    @:embedded
    public static function grow( __self__:T_encodeState, _n:stdgo.StdGoTypes.GoInt) __self__.grow(_n);
    @:embedded
    public static function cap( __self__:T_encodeState):stdgo.StdGoTypes.GoInt return __self__.cap();
    @:embedded
    public static function bytes( __self__:T_encodeState):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return __self__.bytes();
    @:embedded
    public static function availableBuffer( __self__:T_encodeState):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return __self__.availableBuffer();
    @:embedded
    public static function available( __self__:T_encodeState):stdgo.StdGoTypes.GoInt return __self__.available();
}
class T_jsonError_asInterface {
    @:embedded
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_jsonError>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_jsonError_asInterface) class T_jsonError_static_extension {
    @:embedded
    public static function error( __self__:T_jsonError):stdgo.GoString return __self__.error();
}
class T_structEncoder_asInterface {
    @:keep
    public dynamic function _encode(_e:stdgo.StdGoTypes.Ref<T_encodeState>, _v:stdgo.reflect.Reflect.Value, _opts:T_encOpts):Void __self__.value._encode(_e, _v, _opts);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_structEncoder>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:T_structEncoder, _e:stdgo.StdGoTypes.Ref<T_encodeState>, _v:stdgo.reflect.Reflect.Value, _opts:T_encOpts):Void {
        stdgo.internal.Macro.controlFlow({
            @:recv var _se:T_structEncoder = _se?.__copy__();
            var _next:stdgo.StdGoTypes.GoUInt8 = ((123 : stdgo.StdGoTypes.GoUInt8) : stdgo.StdGoTypes.GoByte);
            @:label("FieldLoop") for (_i in 0 ... _se._fields._list.length.toBasic()) {
                var _f = (stdgo.Go.setRef(_se._fields._list[(_i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_field>);
                var _fv:stdgo.reflect.Reflect.Value = _v?.__copy__();
                for (__8 => _i in _f._index) {
                    if (_fv.kind() == ((22u32 : stdgo.reflect.Reflect.Kind))) {
                        if (_fv.isNil()) {
                            @:jump("FieldLoop") continue;
                        };
                        _fv = _fv.elem()?.__copy__();
                    };
                    _fv = _fv.field(_i)?.__copy__();
                };
                if (_f._omitEmpty && _isEmptyValue(_fv?.__copy__())) {
                    continue;
                };
                _e.writeByte(_next);
                _next = (44 : stdgo.StdGoTypes.GoUInt8);
                if (_opts._escapeHTML) {
                    _e.writeString(_f._nameEscHTML?.__copy__());
                } else {
                    _e.writeString(_f._nameNonEsc?.__copy__());
                };
                _opts._quoted = _f._quoted;
                _f._encoder(_e, _fv?.__copy__(), _opts?.__copy__());
            };
            if (_next == ((123 : stdgo.StdGoTypes.GoUInt8))) {
                _e.writeString(("{}" : stdgo.GoString));
            } else {
                _e.writeByte((125 : stdgo.StdGoTypes.GoUInt8));
            };
        });
    }
}
class T_mapEncoder_asInterface {
    @:keep
    public dynamic function _encode(_e:stdgo.StdGoTypes.Ref<T_encodeState>, _v:stdgo.reflect.Reflect.Value, _opts:T_encOpts):Void __self__.value._encode(_e, _v, _opts);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_mapEncoder>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_mapEncoder_asInterface) class T_mapEncoder_static_extension {
    @:keep
    static public function _encode( _me:T_mapEncoder, _e:stdgo.StdGoTypes.Ref<T_encodeState>, _v:stdgo.reflect.Reflect.Value, _opts:T_encOpts):Void {
        @:recv var _me:T_mapEncoder = _me?.__copy__();
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_v.isNil()) {
                _e.writeString(("null" : stdgo.GoString));
                return;
            };
            {
                _e._ptrLevel++;
                if (_e._ptrLevel > (1000u32 : stdgo.StdGoTypes.GoUInt)) {
                    var _ptr:stdgo.unsafe.Unsafe.UnsafePointer = _v.unsafePointer();
                    {
                        var __tmp__ = (_e._ptrSeen != null && _e._ptrSeen.exists(stdgo.Go.toInterface(_ptr)) ? { _0 : _e._ptrSeen[stdgo.Go.toInterface(_ptr)], _1 : true } : { _0 : ({} : T_unquotedValue), _1 : false }), __8:T_unquotedValue = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_ok) {
                            _e._error(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.UnsupportedValueError(_v?.__copy__(), stdgo.fmt.Fmt.sprintf(("encountered a cycle via %s" : stdgo.GoString), stdgo.Go.toInterface(_v.type()))?.__copy__()) : stdgo.encoding.json.Json.UnsupportedValueError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnsupportedValueError>)));
                        };
                    };
                    _e._ptrSeen[stdgo.Go.toInterface(_ptr)] = (new T_unquotedValue() : T_unquotedValue);
                    {
                        var _a0 = _e._ptrSeen;
                        var _a1 = _ptr;
                        __deferstack__.unshift(() -> if (_a0 != null) _a0.remove(stdgo.Go.toInterface(_a1)));
                    };
                };
            };
            _e.writeByte((123 : stdgo.StdGoTypes.GoUInt8));
            var _sv = new stdgo.Slice<stdgo.encoding.json.Json.T_reflectWithString>((_v.len() : stdgo.StdGoTypes.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_v.len() : stdgo.StdGoTypes.GoInt).toBasic() > 0 ? (_v.len() : stdgo.StdGoTypes.GoInt).toBasic() : 0 : stdgo.StdGoTypes.GoInt).toBasic()) ({} : stdgo.encoding.json.Json.T_reflectWithString)]);
            var _mi = _v.mapRange();
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_mi.next(), _i++, {
                    _sv[(_i : stdgo.StdGoTypes.GoInt)]._k = _mi.key()?.__copy__();
                    _sv[(_i : stdgo.StdGoTypes.GoInt)]._v = _mi.value()?.__copy__();
                    {
                        var _err:stdgo.Error = _sv[(_i : stdgo.StdGoTypes.GoInt)]._resolve();
                        if (_err != null) {
                            _e._error(stdgo.fmt.Fmt.errorf(("json: encoding error for type %q: %q" : stdgo.GoString), stdgo.Go.toInterface((_v.type().string() : stdgo.GoString)), stdgo.Go.toInterface(_err.error())));
                        };
                    };
                });
            };
            stdgo.sort.Sort.slice(stdgo.Go.toInterface(_sv), function(_i:stdgo.StdGoTypes.GoInt, _j:stdgo.StdGoTypes.GoInt):Bool {
                return _sv[(_i : stdgo.StdGoTypes.GoInt)]._ks < _sv[(_j : stdgo.StdGoTypes.GoInt)]._ks;
            });
            for (_i => _kv in _sv) {
                if (_i > (0 : stdgo.StdGoTypes.GoInt)) {
                    _e.writeByte((44 : stdgo.StdGoTypes.GoUInt8));
                };
                _e.write(_appendString(("" : stdgo.GoString), _e.availableBuffer(), _kv._ks?.__copy__(), _opts._escapeHTML));
                _e.writeByte((58 : stdgo.StdGoTypes.GoUInt8));
                _me._elemEnc(_e, _kv._v?.__copy__(), _opts?.__copy__());
            };
            _e.writeByte((125 : stdgo.StdGoTypes.GoUInt8));
            _e._ptrLevel--;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
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
            return;
        };
    }
}
class T_sliceEncoder_asInterface {
    @:keep
    public dynamic function _encode(_e:stdgo.StdGoTypes.Ref<T_encodeState>, _v:stdgo.reflect.Reflect.Value, _opts:T_encOpts):Void __self__.value._encode(_e, _v, _opts);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_sliceEncoder>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_sliceEncoder_asInterface) class T_sliceEncoder_static_extension {
    @:keep
    static public function _encode( _se:T_sliceEncoder, _e:stdgo.StdGoTypes.Ref<T_encodeState>, _v:stdgo.reflect.Reflect.Value, _opts:T_encOpts):Void {
        @:recv var _se:T_sliceEncoder = _se?.__copy__();
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_v.isNil()) {
                _e.writeString(("null" : stdgo.GoString));
                return;
            };
            {
                _e._ptrLevel++;
                if (_e._ptrLevel > (1000u32 : stdgo.StdGoTypes.GoUInt)) {
                    var _ptr:T__struct_20 = ({ _ptr : stdgo.Go.toInterface(_v.unsafePointer()), _len : _v.len() } : T__struct_20);
                    {
                        var __tmp__ = (_e._ptrSeen != null && _e._ptrSeen.exists(stdgo.Go.toInterface(stdgo.Go.asInterface(_ptr))) ? { _0 : _e._ptrSeen[stdgo.Go.toInterface(stdgo.Go.asInterface(_ptr))], _1 : true } : { _0 : ({} : T_unquotedValue), _1 : false }), __8:T_unquotedValue = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_ok) {
                            _e._error(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.UnsupportedValueError(_v?.__copy__(), stdgo.fmt.Fmt.sprintf(("encountered a cycle via %s" : stdgo.GoString), stdgo.Go.toInterface(_v.type()))?.__copy__()) : stdgo.encoding.json.Json.UnsupportedValueError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnsupportedValueError>)));
                        };
                    };
                    _e._ptrSeen[stdgo.Go.toInterface(stdgo.Go.asInterface(_ptr))] = (new T_unquotedValue() : T_unquotedValue);
                    {
                        var _a0 = _e._ptrSeen;
                        var _a1 = _ptr;
                        __deferstack__.unshift(() -> if (_a0 != null) _a0.remove(stdgo.Go.toInterface(stdgo.Go.asInterface(_a1))));
                    };
                };
            };
            _se._arrayEnc(_e, _v?.__copy__(), _opts?.__copy__());
            _e._ptrLevel--;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
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
            return;
        };
    }
}
class T_arrayEncoder_asInterface {
    @:keep
    public dynamic function _encode(_e:stdgo.StdGoTypes.Ref<T_encodeState>, _v:stdgo.reflect.Reflect.Value, _opts:T_encOpts):Void __self__.value._encode(_e, _v, _opts);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_arrayEncoder>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_arrayEncoder_asInterface) class T_arrayEncoder_static_extension {
    @:keep
    static public function _encode( _ae:T_arrayEncoder, _e:stdgo.StdGoTypes.Ref<T_encodeState>, _v:stdgo.reflect.Reflect.Value, _opts:T_encOpts):Void {
        @:recv var _ae:T_arrayEncoder = _ae?.__copy__();
        _e.writeByte((91 : stdgo.StdGoTypes.GoUInt8));
        var _n:stdgo.StdGoTypes.GoInt = _v.len();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _n, _i++, {
                if (_i > (0 : stdgo.StdGoTypes.GoInt)) {
                    _e.writeByte((44 : stdgo.StdGoTypes.GoUInt8));
                };
                _ae._elemEnc(_e, _v.index(_i)?.__copy__(), _opts?.__copy__());
            });
        };
        _e.writeByte((93 : stdgo.StdGoTypes.GoUInt8));
    }
}
class T_ptrEncoder_asInterface {
    @:keep
    public dynamic function _encode(_e:stdgo.StdGoTypes.Ref<T_encodeState>, _v:stdgo.reflect.Reflect.Value, _opts:T_encOpts):Void __self__.value._encode(_e, _v, _opts);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_ptrEncoder>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_ptrEncoder_asInterface) class T_ptrEncoder_static_extension {
    @:keep
    static public function _encode( _pe:T_ptrEncoder, _e:stdgo.StdGoTypes.Ref<T_encodeState>, _v:stdgo.reflect.Reflect.Value, _opts:T_encOpts):Void {
        @:recv var _pe:T_ptrEncoder = _pe?.__copy__();
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_v.isNil()) {
                _e.writeString(("null" : stdgo.GoString));
                return;
            };
            {
                _e._ptrLevel++;
                if (_e._ptrLevel > (1000u32 : stdgo.StdGoTypes.GoUInt)) {
                    var _ptr:stdgo.StdGoTypes.AnyInterface = _v.interface_();
                    {
                        var __tmp__ = (_e._ptrSeen != null && _e._ptrSeen.exists(_ptr) ? { _0 : _e._ptrSeen[_ptr], _1 : true } : { _0 : ({} : T_unquotedValue), _1 : false }), __8:T_unquotedValue = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_ok) {
                            _e._error(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.UnsupportedValueError(_v?.__copy__(), stdgo.fmt.Fmt.sprintf(("encountered a cycle via %s" : stdgo.GoString), stdgo.Go.toInterface(_v.type()))?.__copy__()) : stdgo.encoding.json.Json.UnsupportedValueError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnsupportedValueError>)));
                        };
                    };
                    _e._ptrSeen[_ptr] = (new T_unquotedValue() : T_unquotedValue);
                    {
                        var _a0 = _e._ptrSeen;
                        var _a1 = _ptr;
                        __deferstack__.unshift(() -> if (_a0 != null) _a0.remove(_a1));
                    };
                };
            };
            _pe._elemEnc(_e, _v.elem()?.__copy__(), _opts?.__copy__());
            _e._ptrLevel--;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
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
            return;
        };
    }
}
class T_condAddrEncoder_asInterface {
    @:keep
    public dynamic function _encode(_e:stdgo.StdGoTypes.Ref<T_encodeState>, _v:stdgo.reflect.Reflect.Value, _opts:T_encOpts):Void __self__.value._encode(_e, _v, _opts);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_condAddrEncoder>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_condAddrEncoder_asInterface) class T_condAddrEncoder_static_extension {
    @:keep
    static public function _encode( _ce:T_condAddrEncoder, _e:stdgo.StdGoTypes.Ref<T_encodeState>, _v:stdgo.reflect.Reflect.Value, _opts:T_encOpts):Void {
        @:recv var _ce:T_condAddrEncoder = _ce?.__copy__();
        if (_v.canAddr()) {
            _ce._canAddrEnc(_e, _v?.__copy__(), _opts?.__copy__());
        } else {
            _ce._elseEnc(_e, _v?.__copy__(), _opts?.__copy__());
        };
    }
}
class T_reflectWithString_asInterface {
    @:keep
    public dynamic function _resolve():stdgo.Error return __self__.value._resolve();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_reflectWithString>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_reflectWithString_asInterface) class T_reflectWithString_static_extension {
    @:keep
    static public function _resolve( _w:stdgo.StdGoTypes.Ref<T_reflectWithString>):stdgo.Error {
        @:recv var _w:stdgo.StdGoTypes.Ref<T_reflectWithString> = _w;
        if (_w._k.kind() == ((24u32 : stdgo.reflect.Reflect.Kind))) {
            _w._ks = (_w._k.string() : stdgo.GoString)?.__copy__();
            return (null : stdgo.Error);
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_w._k.interface_() : stdgo.encoding.Encoding.TextMarshaler)) : stdgo.encoding.Encoding.TextMarshaler), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.encoding.Encoding.TextMarshaler), _1 : false };
            }, _tm = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                if ((_w._k.kind() == (22u32 : stdgo.reflect.Reflect.Kind)) && _w._k.isNil()) {
                    return (null : stdgo.Error);
                };
                var __tmp__ = _tm.marshalText(), _buf:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _w._ks = (_buf : stdgo.GoString)?.__copy__();
                return _err;
            };
        };
        {
            final __value__ = _w._k.kind();
            if (__value__ == ((2u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((3u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((4u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((5u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((6u32 : stdgo.reflect.Reflect.Kind))) {
                _w._ks = stdgo.strconv.Strconv.formatInt(_w._k.int_(), (10 : stdgo.StdGoTypes.GoInt))?.__copy__();
                return (null : stdgo.Error);
            } else if (__value__ == ((7u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((8u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((9u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((10u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((11u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((12u32 : stdgo.reflect.Reflect.Kind))) {
                _w._ks = stdgo.strconv.Strconv.formatUint(_w._k.uint(), (10 : stdgo.StdGoTypes.GoInt))?.__copy__();
                return (null : stdgo.Error);
            };
        };
        throw stdgo.Go.toInterface(("unexpected map key type" : stdgo.GoString));
    }
}
class BugB_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<BugB>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.BugB_asInterface) class BugB_static_extension {

}
class BugX_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<BugX>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.BugX_asInterface) class BugX_static_extension {

}
class BugY_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<BugY>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.BugY_asInterface) class BugY_static_extension {

}
class BugZ_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<BugZ>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.BugZ_asInterface) class BugZ_static_extension {

}
class T_marshalPanic_asInterface {
    @:keep
    public dynamic function marshalJSON():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalJSON();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_marshalPanic>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_marshalPanic_asInterface) class T_marshalPanic_static_extension {
    @:keep
    static public function marshalJSON( _:T_marshalPanic):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _:T_marshalPanic = _?.__copy__();
        throw stdgo.Go.toInterface((57005 : stdgo.StdGoTypes.GoInt));
    }
}
class SyntaxError_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<SyntaxError>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.SyntaxError_asInterface) class SyntaxError_static_extension {
    @:keep
    static public function error( _e:stdgo.StdGoTypes.Ref<SyntaxError>):stdgo.GoString {
        @:recv var _e:stdgo.StdGoTypes.Ref<SyntaxError> = _e;
        return _e._msg?.__copy__();
    }
}
class T_scanner_asInterface {
    /**
        // error records an error and switches to the error state.
    **/
    @:keep
    public dynamic function _error(_c:stdgo.StdGoTypes.GoByte, _context:stdgo.GoString):stdgo.StdGoTypes.GoInt return __self__.value._error(_c, _context);
    /**
        // popParseState pops a parse state (already obtained) off the stack
        // and updates s.step accordingly.
    **/
    @:keep
    public dynamic function _popParseState():Void __self__.value._popParseState();
    /**
        // pushParseState pushes a new parse state p onto the parse stack.
        // an error state is returned if maxNestingDepth was exceeded, otherwise successState is returned.
    **/
    @:keep
    public dynamic function _pushParseState(_c:stdgo.StdGoTypes.GoByte, _newParseState:stdgo.StdGoTypes.GoInt, _successState:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.GoInt return __self__.value._pushParseState(_c, _newParseState, _successState);
    /**
        // eof tells the scanner that the end of input has been reached.
        // It returns a scan status just as s.step does.
    **/
    @:keep
    public dynamic function _eof():stdgo.StdGoTypes.GoInt return __self__.value._eof();
    /**
        // reset prepares the scanner for use.
        // It must be called before calling s.step.
    **/
    @:keep
    public dynamic function _reset():Void __self__.value._reset();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_scanner>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_scanner_asInterface) class T_scanner_static_extension {
    /**
        // error records an error and switches to the error state.
    **/
    @:keep
    static public function _error( _s:stdgo.StdGoTypes.Ref<T_scanner>, _c:stdgo.StdGoTypes.GoByte, _context:stdgo.GoString):stdgo.StdGoTypes.GoInt {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_scanner> = _s;
        _s._step = _stateError;
        _s._err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.SyntaxError(("invalid character " : stdgo.GoString) + _quoteChar(_c)?.__copy__() + (" " : stdgo.GoString)?.__copy__() + _context?.__copy__()?.__copy__(), _s._bytes) : stdgo.encoding.json.Json.SyntaxError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SyntaxError>));
        return (11 : stdgo.StdGoTypes.GoInt);
    }
    /**
        // popParseState pops a parse state (already obtained) off the stack
        // and updates s.step accordingly.
    **/
    @:keep
    static public function _popParseState( _s:stdgo.StdGoTypes.Ref<T_scanner>):Void {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_scanner> = _s;
        var _n:stdgo.StdGoTypes.GoInt = (_s._parseState.length) - (1 : stdgo.StdGoTypes.GoInt);
        _s._parseState = (_s._parseState.__slice__((0 : stdgo.StdGoTypes.GoInt), _n) : stdgo.Slice<stdgo.StdGoTypes.GoInt>);
        if (_n == ((0 : stdgo.StdGoTypes.GoInt))) {
            _s._step = _stateEndTop;
            _s._endTop = true;
        } else {
            _s._step = _stateEndValue;
        };
    }
    /**
        // pushParseState pushes a new parse state p onto the parse stack.
        // an error state is returned if maxNestingDepth was exceeded, otherwise successState is returned.
    **/
    @:keep
    static public function _pushParseState( _s:stdgo.StdGoTypes.Ref<T_scanner>, _c:stdgo.StdGoTypes.GoByte, _newParseState:stdgo.StdGoTypes.GoInt, _successState:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.GoInt {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_scanner> = _s;
        _s._parseState = (_s._parseState.__append__(_newParseState));
        if ((_s._parseState.length) <= (10000 : stdgo.StdGoTypes.GoInt)) {
            return _successState;
        };
        return _s._error(_c, ("exceeded max depth" : stdgo.GoString));
    }
    /**
        // eof tells the scanner that the end of input has been reached.
        // It returns a scan status just as s.step does.
    **/
    @:keep
    static public function _eof( _s:stdgo.StdGoTypes.Ref<T_scanner>):stdgo.StdGoTypes.GoInt {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_scanner> = _s;
        if (_s._err != null) {
            return (11 : stdgo.StdGoTypes.GoInt);
        };
        if (_s._endTop) {
            return (10 : stdgo.StdGoTypes.GoInt);
        };
        _s._step(_s, (32 : stdgo.StdGoTypes.GoUInt8));
        if (_s._endTop) {
            return (10 : stdgo.StdGoTypes.GoInt);
        };
        if (_s._err == null) {
            _s._err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.SyntaxError(("unexpected end of JSON input" : stdgo.GoString), _s._bytes) : stdgo.encoding.json.Json.SyntaxError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SyntaxError>));
        };
        return (11 : stdgo.StdGoTypes.GoInt);
    }
    /**
        // reset prepares the scanner for use.
        // It must be called before calling s.step.
    **/
    @:keep
    static public function _reset( _s:stdgo.StdGoTypes.Ref<T_scanner>):Void {
        @:recv var _s:stdgo.StdGoTypes.Ref<T_scanner> = _s;
        _s._step = _stateBeginValue;
        _s._parseState = (_s._parseState.__slice__((0 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>);
        _s._err = (null : stdgo.Error);
        _s._endTop = false;
    }
}
class Decoder_asInterface {
    /**
        // InputOffset returns the input stream byte offset of the current decoder position.
        // The offset gives the location of the end of the most recently returned token
        // and the beginning of the next token.
    **/
    @:keep
    public dynamic function inputOffset():stdgo.StdGoTypes.GoInt64 return __self__.value.inputOffset();
    @:keep
    public dynamic function _peek():{ var _0 : stdgo.StdGoTypes.GoByte; var _1 : stdgo.Error; } return __self__.value._peek();
    /**
        // More reports whether there is another element in the
        // current array or object being parsed.
    **/
    @:keep
    public dynamic function more():Bool return __self__.value.more();
    @:keep
    public dynamic function _tokenError(_c:stdgo.StdGoTypes.GoByte):{ var _0 : Token; var _1 : stdgo.Error; } return __self__.value._tokenError(_c);
    /**
        // Token returns the next JSON token in the input stream.
        // At the end of the input stream, Token returns nil, io.EOF.
        //
        // Token guarantees that the delimiters [ ] { } it returns are
        // properly nested and matched: if Token encounters an unexpected
        // delimiter in the input, it will return an error.
        //
        // The input stream consists of basic JSON values—bool, string,
        // number, and null—along with delimiters [ ] { } of type Delim
        // to mark the start and end of arrays and objects.
        // Commas and colons are elided.
    **/
    @:keep
    public dynamic function token():{ var _0 : Token; var _1 : stdgo.Error; } return __self__.value.token();
    @:keep
    public dynamic function _tokenValueEnd():Void __self__.value._tokenValueEnd();
    @:keep
    public dynamic function _tokenValueAllowed():Bool return __self__.value._tokenValueAllowed();
    /**
        // advance tokenstate from a separator state to a value state
    **/
    @:keep
    public dynamic function _tokenPrepareForDecode():stdgo.Error return __self__.value._tokenPrepareForDecode();
    @:keep
    public dynamic function _refill():stdgo.Error return __self__.value._refill();
    /**
        // readValue reads a JSON value into dec.buf.
        // It returns the length of the encoding.
    **/
    @:keep
    public dynamic function _readValue():{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value._readValue();
    /**
        // Buffered returns a reader of the data remaining in the Decoder's
        // buffer. The reader is valid until the next call to Decode.
    **/
    @:keep
    public dynamic function buffered():stdgo.io.Io.Reader return __self__.value.buffered();
    /**
        // Decode reads the next JSON-encoded value from its
        // input and stores it in the value pointed to by v.
        //
        // See the documentation for Unmarshal for details about
        // the conversion of JSON into a Go value.
    **/
    @:keep
    public dynamic function decode(_v:stdgo.StdGoTypes.AnyInterface):stdgo.Error return __self__.value.decode(_v);
    /**
        // DisallowUnknownFields causes the Decoder to return an error when the destination
        // is a struct and the input contains object keys which do not match any
        // non-ignored, exported fields in the destination.
    **/
    @:keep
    public dynamic function disallowUnknownFields():Void __self__.value.disallowUnknownFields();
    /**
        // UseNumber causes the Decoder to unmarshal a number into an interface{} as a
        // Number instead of as a float64.
    **/
    @:keep
    public dynamic function useNumber():Void __self__.value.useNumber();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Decoder>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.Decoder_asInterface) class Decoder_static_extension {
    /**
        // InputOffset returns the input stream byte offset of the current decoder position.
        // The offset gives the location of the end of the most recently returned token
        // and the beginning of the next token.
    **/
    @:keep
    static public function inputOffset( _dec:stdgo.StdGoTypes.Ref<Decoder>):stdgo.StdGoTypes.GoInt64 {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        return _dec._scanned + (_dec._scanp : stdgo.StdGoTypes.GoInt64);
    }
    @:keep
    static public function _peek( _dec:stdgo.StdGoTypes.Ref<Decoder>):{ var _0 : stdgo.StdGoTypes.GoByte; var _1 : stdgo.Error; } {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        var _err:stdgo.Error = (null : stdgo.Error);
        while (true) {
            {
                var _i:stdgo.StdGoTypes.GoInt = _dec._scanp;
                stdgo.Go.cfor(_i < (_dec._buf.length), _i++, {
                    var _c:stdgo.StdGoTypes.GoUInt8 = _dec._buf[(_i : stdgo.StdGoTypes.GoInt)];
                    if (_isSpace(_c)) {
                        continue;
                    };
                    _dec._scanp = _i;
                    return { _0 : _c, _1 : (null : stdgo.Error) };
                });
            };
            if (_err != null) {
                return { _0 : (0 : stdgo.StdGoTypes.GoUInt8), _1 : _err };
            };
            _err = _dec._refill();
        };
    }
    /**
        // More reports whether there is another element in the
        // current array or object being parsed.
    **/
    @:keep
    static public function more( _dec:stdgo.StdGoTypes.Ref<Decoder>):Bool {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        var __tmp__ = _dec._peek(), _c:stdgo.StdGoTypes.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return ((_err == null) && (_c != (93 : stdgo.StdGoTypes.GoUInt8))) && (_c != (125 : stdgo.StdGoTypes.GoUInt8));
    }
    @:keep
    static public function _tokenError( _dec:stdgo.StdGoTypes.Ref<Decoder>, _c:stdgo.StdGoTypes.GoByte):{ var _0 : Token; var _1 : stdgo.Error; } {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        var _context:stdgo.GoString = ("" : stdgo.GoString);
        {
            final __value__ = _dec._tokenState;
            if (__value__ == ((0 : stdgo.StdGoTypes.GoInt))) {
                _context = (" looking for beginning of value" : stdgo.GoString);
            } else if (__value__ == ((1 : stdgo.StdGoTypes.GoInt)) || __value__ == ((2 : stdgo.StdGoTypes.GoInt)) || __value__ == ((7 : stdgo.StdGoTypes.GoInt))) {
                _context = (" looking for beginning of value" : stdgo.GoString);
            } else if (__value__ == ((3 : stdgo.StdGoTypes.GoInt))) {
                _context = (" after array element" : stdgo.GoString);
            } else if (__value__ == ((5 : stdgo.StdGoTypes.GoInt))) {
                _context = (" looking for beginning of object key string" : stdgo.GoString);
            } else if (__value__ == ((6 : stdgo.StdGoTypes.GoInt))) {
                _context = (" after object key" : stdgo.GoString);
            } else if (__value__ == ((8 : stdgo.StdGoTypes.GoInt))) {
                _context = (" after object key:value pair" : stdgo.GoString);
            };
        };
        return { _0 : (null : stdgo.encoding.json.Json.Token), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.SyntaxError(("invalid character " : stdgo.GoString) + _quoteChar(_c)?.__copy__() + _context?.__copy__()?.__copy__(), _dec.inputOffset()) : stdgo.encoding.json.Json.SyntaxError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SyntaxError>)) };
    }
    /**
        // Token returns the next JSON token in the input stream.
        // At the end of the input stream, Token returns nil, io.EOF.
        //
        // Token guarantees that the delimiters [ ] { } it returns are
        // properly nested and matched: if Token encounters an unexpected
        // delimiter in the input, it will return an error.
        //
        // The input stream consists of basic JSON values—bool, string,
        // number, and null—along with delimiters [ ] { } of type Delim
        // to mark the start and end of arrays and objects.
        // Commas and colons are elided.
    **/
    @:keep
    static public function token( _dec:stdgo.StdGoTypes.Ref<Decoder>):{ var _0 : Token; var _1 : stdgo.Error; } {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        while (true) {
            var __tmp__ = _dec._peek(), _c:stdgo.StdGoTypes.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.encoding.json.Json.Token), _1 : _err };
            };
            {
                var __continue__ = false;
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _c;
                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (91 : stdgo.StdGoTypes.GoUInt8)))) {
                            if (!_dec._tokenValueAllowed()) {
                                return _dec._tokenError(_c);
                            };
                            _dec._scanp++;
                            _dec._tokenStack = (_dec._tokenStack.__append__(_dec._tokenState));
                            _dec._tokenState = (1 : stdgo.StdGoTypes.GoInt);
                            return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface(((91 : stdgo.encoding.json.Json.Delim) : Delim))), _1 : (null : stdgo.Error) };
                            break;
                            break;
                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (93 : stdgo.StdGoTypes.GoUInt8)))) {
                            if ((_dec._tokenState != (1 : stdgo.StdGoTypes.GoInt)) && (_dec._tokenState != (3 : stdgo.StdGoTypes.GoInt))) {
                                return _dec._tokenError(_c);
                            };
                            _dec._scanp++;
                            _dec._tokenState = _dec._tokenStack[((_dec._tokenStack.length) - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)];
                            _dec._tokenStack = (_dec._tokenStack.__slice__(0, (_dec._tokenStack.length) - (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>);
                            _dec._tokenValueEnd();
                            return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface(((93 : stdgo.encoding.json.Json.Delim) : Delim))), _1 : (null : stdgo.Error) };
                            break;
                            break;
                        } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (123 : stdgo.StdGoTypes.GoUInt8)))) {
                            if (!_dec._tokenValueAllowed()) {
                                return _dec._tokenError(_c);
                            };
                            _dec._scanp++;
                            _dec._tokenStack = (_dec._tokenStack.__append__(_dec._tokenState));
                            _dec._tokenState = (4 : stdgo.StdGoTypes.GoInt);
                            return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface(((123 : stdgo.encoding.json.Json.Delim) : Delim))), _1 : (null : stdgo.Error) };
                            break;
                            break;
                        } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (__value__ == (125 : stdgo.StdGoTypes.GoUInt8)))) {
                            if ((_dec._tokenState != (4 : stdgo.StdGoTypes.GoInt)) && (_dec._tokenState != (8 : stdgo.StdGoTypes.GoInt))) {
                                return _dec._tokenError(_c);
                            };
                            _dec._scanp++;
                            _dec._tokenState = _dec._tokenStack[((_dec._tokenStack.length) - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)];
                            _dec._tokenStack = (_dec._tokenStack.__slice__(0, (_dec._tokenStack.length) - (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>);
                            _dec._tokenValueEnd();
                            return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface(((125 : stdgo.encoding.json.Json.Delim) : Delim))), _1 : (null : stdgo.Error) };
                            break;
                            break;
                        } else if (__switchIndex__ == 4 || (__switchIndex__ == -1 && (__value__ == (58 : stdgo.StdGoTypes.GoUInt8)))) {
                            if (_dec._tokenState != ((6 : stdgo.StdGoTypes.GoInt))) {
                                return _dec._tokenError(_c);
                            };
                            _dec._scanp++;
                            _dec._tokenState = (7 : stdgo.StdGoTypes.GoInt);
                            {
                                __continue__ = true;
                                break;
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 5 || (__switchIndex__ == -1 && (__value__ == (44 : stdgo.StdGoTypes.GoUInt8)))) {
                            if (_dec._tokenState == ((3 : stdgo.StdGoTypes.GoInt))) {
                                _dec._scanp++;
                                _dec._tokenState = (2 : stdgo.StdGoTypes.GoInt);
                                {
                                    __continue__ = true;
                                    break;
                                };
                            };
                            if (_dec._tokenState == ((8 : stdgo.StdGoTypes.GoInt))) {
                                _dec._scanp++;
                                _dec._tokenState = (5 : stdgo.StdGoTypes.GoInt);
                                {
                                    __continue__ = true;
                                    break;
                                };
                            };
                            return _dec._tokenError(_c);
                            break;
                            break;
                        } else if (__switchIndex__ == 6 || (__switchIndex__ == -1 && (__value__ == (34 : stdgo.StdGoTypes.GoUInt8)))) {
                            if ((_dec._tokenState == (4 : stdgo.StdGoTypes.GoInt)) || (_dec._tokenState == (5 : stdgo.StdGoTypes.GoInt))) {
                                var _x:stdgo.GoString = ("" : stdgo.GoString);
                                var _old:stdgo.StdGoTypes.GoInt = _dec._tokenState;
                                _dec._tokenState = (0 : stdgo.StdGoTypes.GoInt);
                                var _err:stdgo.Error = _dec.decode(stdgo.Go.toInterface(stdgo.Go.pointer(_x)));
                                _dec._tokenState = _old;
                                if (_err != null) {
                                    return { _0 : (null : stdgo.encoding.json.Json.Token), _1 : _err };
                                };
                                _dec._tokenState = (6 : stdgo.StdGoTypes.GoInt);
                                return { _0 : stdgo.Go.toInterface(_x), _1 : (null : stdgo.Error) };
                            };
                            @:fallthrough {
                                __switchIndex__ = 7;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else {
                            if (!_dec._tokenValueAllowed()) {
                                return _dec._tokenError(_c);
                            };
                            var _x:stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
                            {
                                var _err:stdgo.Error = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_x) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.AnyInterface>)));
                                if (_err != null) {
                                    return { _0 : (null : stdgo.encoding.json.Json.Token), _1 : _err };
                                };
                            };
                            return { _0 : stdgo.Go.toInterface(_x), _1 : (null : stdgo.Error) };
                            break;
                        };
                    };
                    break;
                };
                if (__continue__) continue;
            };
        };
    }
    @:keep
    static public function _tokenValueEnd( _dec:stdgo.StdGoTypes.Ref<Decoder>):Void {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        {
            final __value__ = _dec._tokenState;
            if (__value__ == ((1 : stdgo.StdGoTypes.GoInt)) || __value__ == ((2 : stdgo.StdGoTypes.GoInt))) {
                _dec._tokenState = (3 : stdgo.StdGoTypes.GoInt);
            } else if (__value__ == ((7 : stdgo.StdGoTypes.GoInt))) {
                _dec._tokenState = (8 : stdgo.StdGoTypes.GoInt);
            };
        };
    }
    @:keep
    static public function _tokenValueAllowed( _dec:stdgo.StdGoTypes.Ref<Decoder>):Bool {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        {
            final __value__ = _dec._tokenState;
            if (__value__ == ((0 : stdgo.StdGoTypes.GoInt)) || __value__ == ((1 : stdgo.StdGoTypes.GoInt)) || __value__ == ((2 : stdgo.StdGoTypes.GoInt)) || __value__ == ((7 : stdgo.StdGoTypes.GoInt))) {
                return true;
            };
        };
        return false;
    }
    /**
        // advance tokenstate from a separator state to a value state
    **/
    @:keep
    static public function _tokenPrepareForDecode( _dec:stdgo.StdGoTypes.Ref<Decoder>):stdgo.Error {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        {
            final __value__ = _dec._tokenState;
            if (__value__ == ((3 : stdgo.StdGoTypes.GoInt))) {
                var __tmp__ = _dec._peek(), _c:stdgo.StdGoTypes.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
                if (_c != ((44 : stdgo.StdGoTypes.GoUInt8))) {
                    return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.SyntaxError(("expected comma after array element" : stdgo.GoString), _dec.inputOffset()) : stdgo.encoding.json.Json.SyntaxError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SyntaxError>));
                };
                _dec._scanp++;
                _dec._tokenState = (2 : stdgo.StdGoTypes.GoInt);
            } else if (__value__ == ((6 : stdgo.StdGoTypes.GoInt))) {
                var __tmp__ = _dec._peek(), _c:stdgo.StdGoTypes.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
                if (_c != ((58 : stdgo.StdGoTypes.GoUInt8))) {
                    return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.SyntaxError(("expected colon after object key" : stdgo.GoString), _dec.inputOffset()) : stdgo.encoding.json.Json.SyntaxError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SyntaxError>));
                };
                _dec._scanp++;
                _dec._tokenState = (7 : stdgo.StdGoTypes.GoInt);
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _refill( _dec:stdgo.StdGoTypes.Ref<Decoder>):stdgo.Error {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        if (_dec._scanp > (0 : stdgo.StdGoTypes.GoInt)) {
            _dec._scanned = _dec._scanned + ((_dec._scanp : stdgo.StdGoTypes.GoInt64));
            var _n:stdgo.StdGoTypes.GoInt = stdgo.Go.copySlice(_dec._buf, (_dec._buf.__slice__(_dec._scanp) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
            _dec._buf = (_dec._buf.__slice__(0, _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
            _dec._scanp = (0 : stdgo.StdGoTypes.GoInt);
        };
        {};
        if ((_dec._buf.capacity - _dec._buf.length) < (512 : stdgo.StdGoTypes.GoInt)) {
            var _newBuf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_dec._buf.length : stdgo.StdGoTypes.GoInt).toBasic(), ((2 : stdgo.StdGoTypes.GoInt) * _dec._buf.capacity) + (512 : stdgo.StdGoTypes.GoInt)).__setNumber32__();
            stdgo.Go.copySlice(_newBuf, _dec._buf);
            _dec._buf = _newBuf;
        };
        var __tmp__ = _dec._r.read((_dec._buf.__slice__((_dec._buf.length), _dec._buf.capacity) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _dec._buf = (_dec._buf.__slice__((0 : stdgo.StdGoTypes.GoInt), (_dec._buf.length) + _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        return _err;
    }
    /**
        // readValue reads a JSON value into dec.buf.
        // It returns the length of the encoding.
    **/
    @:keep
    static public function _readValue( _dec:stdgo.StdGoTypes.Ref<Decoder>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        stdgo.internal.Macro.controlFlow({
            @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
            _dec._scan._reset();
            var _scanp:stdgo.StdGoTypes.GoInt = _dec._scanp;
            var _err:stdgo.Error = (null : stdgo.Error);
            @:label("Input") while (_scanp >= (0 : stdgo.StdGoTypes.GoInt)) {
                stdgo.Go.cfor(_scanp < (_dec._buf.length), _scanp++, {
                    var _c:stdgo.StdGoTypes.GoUInt8 = _dec._buf[(_scanp : stdgo.StdGoTypes.GoInt)];
                    _dec._scan._bytes++;
                    {
                        var __switchIndex__ = -1;
                        var __run__ = true;
                        while (__run__) {
                            __run__ = false;
                            {
                                final __value__ = _dec._scan._step((stdgo.Go.setRef(_dec._scan) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_scanner>), _c);
                                if (__value__ == ((10 : stdgo.StdGoTypes.GoInt))) {
                                    _dec._scan._bytes--;
                                    @:jump("Input") break;
                                    break;
                                } else if (__value__ == ((5 : stdgo.StdGoTypes.GoInt)) || __value__ == ((8 : stdgo.StdGoTypes.GoInt))) {
                                    if (_stateEndValue((stdgo.Go.setRef(_dec._scan) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_scanner>), (32 : stdgo.StdGoTypes.GoUInt8)) == ((10 : stdgo.StdGoTypes.GoInt))) {
                                        _scanp++;
                                        @:jump("Input") break;
                                    };
                                    break;
                                } else if (__value__ == ((11 : stdgo.StdGoTypes.GoInt))) {
                                    _dec._err = _dec._scan._err;
                                    return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : _dec._scan._err };
                                    break;
                                };
                            };
                            break;
                        };
                    };
                });
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo.io.Io.eof))) {
                        if (_dec._scan._step((stdgo.Go.setRef(_dec._scan) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.T_scanner>), (32 : stdgo.StdGoTypes.GoUInt8)) == ((10 : stdgo.StdGoTypes.GoInt))) {
                            @:jump("Input") break;
                        };
                        if (_nonSpace(_dec._buf)) {
                            _err = stdgo.io.Io.errUnexpectedEOF;
                        };
                    };
                    _dec._err = _err;
                    return { _0 : (0 : stdgo.StdGoTypes.GoInt), _1 : _err };
                };
                var _n:stdgo.StdGoTypes.GoInt = _scanp - _dec._scanp;
                _err = _dec._refill();
                _scanp = _dec._scanp + _n;
            };
            return { _0 : _scanp - _dec._scanp, _1 : (null : stdgo.Error) };
        });
        throw "controlFlow did not return";
    }
    /**
        // Buffered returns a reader of the data remaining in the Decoder's
        // buffer. The reader is valid until the next call to Decode.
    **/
    @:keep
    static public function buffered( _dec:stdgo.StdGoTypes.Ref<Decoder>):stdgo.io.Io.Reader {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        return stdgo.Go.asInterface(stdgo.bytes.Bytes.newReader((_dec._buf.__slice__(_dec._scanp) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)));
    }
    /**
        // Decode reads the next JSON-encoded value from its
        // input and stores it in the value pointed to by v.
        //
        // See the documentation for Unmarshal for details about
        // the conversion of JSON into a Go value.
    **/
    @:keep
    static public function decode( _dec:stdgo.StdGoTypes.Ref<Decoder>, _v:stdgo.StdGoTypes.AnyInterface):stdgo.Error {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        if (_dec._err != null) {
            return _dec._err;
        };
        {
            var _err:stdgo.Error = _dec._tokenPrepareForDecode();
            if (_err != null) {
                return _err;
            };
        };
        if (!_dec._tokenValueAllowed()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef(({ _msg : ("not at beginning of value" : stdgo.GoString), offset : _dec.inputOffset() } : stdgo.encoding.json.Json.SyntaxError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.SyntaxError>));
        };
        var __tmp__ = _dec._readValue(), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        _dec._d._init((_dec._buf.__slice__(_dec._scanp, _dec._scanp + _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
        _dec._scanp = _dec._scanp + (_n);
        _err = _dec._d._unmarshal(_v);
        _dec._tokenValueEnd();
        return _err;
    }
    /**
        // DisallowUnknownFields causes the Decoder to return an error when the destination
        // is a struct and the input contains object keys which do not match any
        // non-ignored, exported fields in the destination.
    **/
    @:keep
    static public function disallowUnknownFields( _dec:stdgo.StdGoTypes.Ref<Decoder>):Void {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        _dec._d._disallowUnknownFields = true;
    }
    /**
        // UseNumber causes the Decoder to unmarshal a number into an interface{} as a
        // Number instead of as a float64.
    **/
    @:keep
    static public function useNumber( _dec:stdgo.StdGoTypes.Ref<Decoder>):Void {
        @:recv var _dec:stdgo.StdGoTypes.Ref<Decoder> = _dec;
        _dec._d._useNumber = true;
    }
}
class Encoder_asInterface {
    /**
        // SetEscapeHTML specifies whether problematic HTML characters
        // should be escaped inside JSON quoted strings.
        // The default behavior is to escape &, <, and > to \u0026, \u003c, and \u003e
        // to avoid certain safety problems that can arise when embedding JSON in HTML.
        //
        // In non-HTML settings where the escaping interferes with the readability
        // of the output, SetEscapeHTML(false) disables this behavior.
    **/
    @:keep
    public dynamic function setEscapeHTML(_on:Bool):Void __self__.value.setEscapeHTML(_on);
    /**
        // SetIndent instructs the encoder to format each subsequent encoded
        // value as if indented by the package-level function Indent(dst, src, prefix, indent).
        // Calling SetIndent("", "") disables indentation.
    **/
    @:keep
    public dynamic function setIndent(_prefix:stdgo.GoString, _indent:stdgo.GoString):Void __self__.value.setIndent(_prefix, _indent);
    /**
        // Encode writes the JSON encoding of v to the stream,
        // followed by a newline character.
        //
        // See the documentation for Marshal for details about the
        // conversion of Go values to JSON.
    **/
    @:keep
    public dynamic function encode(_v:stdgo.StdGoTypes.AnyInterface):stdgo.Error return __self__.value.encode(_v);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Encoder>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.Encoder_asInterface) class Encoder_static_extension {
    /**
        // SetEscapeHTML specifies whether problematic HTML characters
        // should be escaped inside JSON quoted strings.
        // The default behavior is to escape &, <, and > to \u0026, \u003c, and \u003e
        // to avoid certain safety problems that can arise when embedding JSON in HTML.
        //
        // In non-HTML settings where the escaping interferes with the readability
        // of the output, SetEscapeHTML(false) disables this behavior.
    **/
    @:keep
    static public function setEscapeHTML( _enc:stdgo.StdGoTypes.Ref<Encoder>, _on:Bool):Void {
        @:recv var _enc:stdgo.StdGoTypes.Ref<Encoder> = _enc;
        _enc._escapeHTML = _on;
    }
    /**
        // SetIndent instructs the encoder to format each subsequent encoded
        // value as if indented by the package-level function Indent(dst, src, prefix, indent).
        // Calling SetIndent("", "") disables indentation.
    **/
    @:keep
    static public function setIndent( _enc:stdgo.StdGoTypes.Ref<Encoder>, _prefix:stdgo.GoString, _indent:stdgo.GoString):Void {
        @:recv var _enc:stdgo.StdGoTypes.Ref<Encoder> = _enc;
        _enc._indentPrefix = _prefix?.__copy__();
        _enc._indentValue = _indent?.__copy__();
    }
    /**
        // Encode writes the JSON encoding of v to the stream,
        // followed by a newline character.
        //
        // See the documentation for Marshal for details about the
        // conversion of Go values to JSON.
    **/
    @:keep
    static public function encode( _enc:stdgo.StdGoTypes.Ref<Encoder>, _v:stdgo.StdGoTypes.AnyInterface):stdgo.Error {
        @:recv var _enc:stdgo.StdGoTypes.Ref<Encoder> = _enc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_enc._err != null) {
                return _enc._err;
            };
            var _e = _newEncodeState();
            {
                var _a0 = _e;
                __deferstack__.unshift(() -> _encodeStatePool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_a0))));
            };
            var _err:stdgo.Error = _e._marshal(_v, ({ _escapeHTML : _enc._escapeHTML } : stdgo.encoding.json.Json.T_encOpts));
            if (_err != null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return _err;
                };
            };
            _e.writeByte((10 : stdgo.StdGoTypes.GoUInt8));
            var _b = _e.bytes();
            if ((_enc._indentPrefix != stdgo.Go.str()) || (_enc._indentValue != stdgo.Go.str())) {
                {
                    var __tmp__ = _appendIndent((_enc._indentBuf.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _b, _enc._indentPrefix?.__copy__(), _enc._indentValue?.__copy__());
                    _enc._indentBuf = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return _err;
                    };
                };
                _b = _enc._indentBuf;
            };
            {
                {
                    var __tmp__ = _enc._w.write(_b);
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    _enc._err = _err;
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _err;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return (null : stdgo.Error);
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
            return (null : stdgo.Error);
        };
    }
}
class Number_asInterface {
    /**
        // Int64 returns the number as an int64.
    **/
    @:keep
    public dynamic function int64():{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } return __self__.value.int64();
    /**
        // Float64 returns the number as a float64.
    **/
    @:keep
    public dynamic function float64():{ var _0 : stdgo.StdGoTypes.GoFloat64; var _1 : stdgo.Error; } return __self__.value.float64();
    /**
        // String returns the literal text of the number.
    **/
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Number>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.Number_asInterface) class Number_static_extension {
    /**
        // Int64 returns the number as an int64.
    **/
    @:keep
    static public function int64( _n:Number):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _n:Number = _n;
        return stdgo.strconv.Strconv.parseInt((_n : stdgo.GoString)?.__copy__(), (10 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt));
    }
    /**
        // Float64 returns the number as a float64.
    **/
    @:keep
    static public function float64( _n:Number):{ var _0 : stdgo.StdGoTypes.GoFloat64; var _1 : stdgo.Error; } {
        @:recv var _n:Number = _n;
        return stdgo.strconv.Strconv.parseFloat((_n : stdgo.GoString)?.__copy__(), (64 : stdgo.StdGoTypes.GoInt));
    }
    /**
        // String returns the literal text of the number.
    **/
    @:keep
    static public function string( _n:Number):stdgo.GoString {
        @:recv var _n:Number = _n;
        return (_n : stdgo.GoString)?.__copy__();
    }
}
class SS_asInterface {
    @:keep
    public dynamic function unmarshalJSON(_data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error return __self__.value.unmarshalJSON(__self__, _data);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<SS>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.SS_asInterface) class SS_static_extension {
    @:keep
    static public function unmarshalJSON(____:SS,  _:stdgo.Pointer<SS>, _data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error {
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ value : ("number" : stdgo.GoString), type : stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(stdgo.Go.asInterface(((stdgo.Go.str() : stdgo.encoding.json.Json.SS) : SS)))) } : stdgo.encoding.json.Json.UnmarshalTypeError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnmarshalTypeError>));
    }
}
class T_u8marshal_asInterface {
    @:keep
    @:pointer
    public dynamic function unmarshalText(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error return __self__.value.unmarshalText(__self__, _b);
    @:keep
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalText();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_u8marshal>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_u8marshal_asInterface) class T_u8marshal_static_extension {
    @:keep
    @:pointer
    static public function unmarshalText(____:T_u8marshal,  _u8:stdgo.Pointer<T_u8marshal>, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error {
        if (!stdgo.bytes.Bytes.hasPrefix(_b, (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(1, 1, (117 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>))) {
            return _errMissingU8Prefix;
        };
        var __tmp__ = stdgo.strconv.Strconv.atoi(((_b.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : stdgo.GoString)?.__copy__()), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        _u8.value = (_n : T_u8marshal);
        return (null : stdgo.Error);
    }
    @:keep
    static public function marshalText( _u8:T_u8marshal):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _u8:T_u8marshal = _u8;
        return { _0 : (stdgo.fmt.Fmt.sprintf(("u%d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_u8))) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _1 : (null : stdgo.Error) };
    }
}
class T_byteWithMarshalJSON_asInterface {
    @:keep
    @:pointer
    public dynamic function unmarshalJSON(_data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error return __self__.value.unmarshalJSON(__self__, _data);
    @:keep
    public dynamic function marshalJSON():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalJSON();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_byteWithMarshalJSON>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_byteWithMarshalJSON_asInterface) class T_byteWithMarshalJSON_static_extension {
    @:keep
    @:pointer
    static public function unmarshalJSON(____:T_byteWithMarshalJSON,  _b:stdgo.Pointer<T_byteWithMarshalJSON>, _data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error {
        if ((((_data.length != (5 : stdgo.StdGoTypes.GoInt)) || (_data[(0 : stdgo.StdGoTypes.GoInt)] != (34 : stdgo.StdGoTypes.GoUInt8))) || (_data[(1 : stdgo.StdGoTypes.GoInt)] != (90 : stdgo.StdGoTypes.GoUInt8))) || (_data[(4 : stdgo.StdGoTypes.GoInt)] != (34 : stdgo.StdGoTypes.GoUInt8))) {
            return stdgo.fmt.Fmt.errorf(("bad quoted string" : stdgo.GoString));
        };
        var __tmp__ = stdgo.strconv.Strconv.parseInt(((_data.__slice__((2 : stdgo.StdGoTypes.GoInt), (4 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : stdgo.GoString)?.__copy__(), (16 : stdgo.StdGoTypes.GoInt), (8 : stdgo.StdGoTypes.GoInt)), _i:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return stdgo.fmt.Fmt.errorf(("bad hex" : stdgo.GoString));
        };
        _b.value = (_i : T_byteWithMarshalJSON);
        return (null : stdgo.Error);
    }
    @:keep
    static public function marshalJSON( _b:T_byteWithMarshalJSON):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _b:T_byteWithMarshalJSON = _b;
        return { _0 : (stdgo.fmt.Fmt.sprintf(("\"Z%.2x\"" : stdgo.GoString), stdgo.Go.toInterface((_b : stdgo.StdGoTypes.GoByte))) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _1 : (null : stdgo.Error) };
    }
}
class T_byteWithPtrMarshalJSON_asInterface {
    @:keep
    @:pointer
    public dynamic function unmarshalJSON(_data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error return __self__.value.unmarshalJSON(__self__, _data);
    @:keep
    @:pointer
    public dynamic function marshalJSON():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalJSON(__self__);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_byteWithPtrMarshalJSON>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_byteWithPtrMarshalJSON_asInterface) class T_byteWithPtrMarshalJSON_static_extension {
    @:keep
    @:pointer
    static public function unmarshalJSON(____:T_byteWithPtrMarshalJSON,  _b:stdgo.Pointer<T_byteWithPtrMarshalJSON>, _data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error {
        return new stdgo.Pointer<stdgo.encoding.json.Json.T_byteWithMarshalJSON>(() -> (_b.value : stdgo.encoding.json.Json.T_byteWithMarshalJSON), v -> (_b.value = (v : stdgo.encoding.json.Json.T_byteWithPtrMarshalJSON) : stdgo.encoding.json.Json.T_byteWithMarshalJSON)).value.unmarshalJSON(new stdgo.Pointer<stdgo.encoding.json.Json.T_byteWithMarshalJSON>(() -> (_b.value : stdgo.encoding.json.Json.T_byteWithMarshalJSON), v -> (_b.value = (v : stdgo.encoding.json.Json.T_byteWithPtrMarshalJSON) : stdgo.encoding.json.Json.T_byteWithMarshalJSON)), _data);
    }
    @:keep
    @:pointer
    static public function marshalJSON(____:T_byteWithPtrMarshalJSON,  _b:stdgo.Pointer<T_byteWithPtrMarshalJSON>):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        return (_b.value : T_byteWithMarshalJSON).marshalJSON();
    }
}
class T_byteWithMarshalText_asInterface {
    @:keep
    @:pointer
    public dynamic function unmarshalText(_data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error return __self__.value.unmarshalText(__self__, _data);
    @:keep
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalText();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_byteWithMarshalText>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_byteWithMarshalText_asInterface) class T_byteWithMarshalText_static_extension {
    @:keep
    @:pointer
    static public function unmarshalText(____:T_byteWithMarshalText,  _b:stdgo.Pointer<T_byteWithMarshalText>, _data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error {
        if ((_data.length != (3 : stdgo.StdGoTypes.GoInt)) || (_data[(0 : stdgo.StdGoTypes.GoInt)] != (90 : stdgo.StdGoTypes.GoUInt8))) {
            return stdgo.fmt.Fmt.errorf(("bad quoted string" : stdgo.GoString));
        };
        var __tmp__ = stdgo.strconv.Strconv.parseInt(((_data.__slice__((1 : stdgo.StdGoTypes.GoInt), (3 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : stdgo.GoString)?.__copy__(), (16 : stdgo.StdGoTypes.GoInt), (8 : stdgo.StdGoTypes.GoInt)), _i:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return stdgo.fmt.Fmt.errorf(("bad hex" : stdgo.GoString));
        };
        _b.value = (_i : T_byteWithMarshalText);
        return (null : stdgo.Error);
    }
    @:keep
    static public function marshalText( _b:T_byteWithMarshalText):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _b:T_byteWithMarshalText = _b;
        return { _0 : (stdgo.fmt.Fmt.sprintf(("Z%.2x" : stdgo.GoString), stdgo.Go.toInterface((_b : stdgo.StdGoTypes.GoByte))) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _1 : (null : stdgo.Error) };
    }
}
class T_byteWithPtrMarshalText_asInterface {
    @:keep
    @:pointer
    public dynamic function unmarshalText(_data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error return __self__.value.unmarshalText(__self__, _data);
    @:keep
    @:pointer
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalText(__self__);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_byteWithPtrMarshalText>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_byteWithPtrMarshalText_asInterface) class T_byteWithPtrMarshalText_static_extension {
    @:keep
    @:pointer
    static public function unmarshalText(____:T_byteWithPtrMarshalText,  _b:stdgo.Pointer<T_byteWithPtrMarshalText>, _data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error {
        return new stdgo.Pointer<stdgo.encoding.json.Json.T_byteWithMarshalText>(() -> (_b.value : stdgo.encoding.json.Json.T_byteWithMarshalText), v -> (_b.value = (v : stdgo.encoding.json.Json.T_byteWithPtrMarshalText) : stdgo.encoding.json.Json.T_byteWithMarshalText)).value.unmarshalText(new stdgo.Pointer<stdgo.encoding.json.Json.T_byteWithMarshalText>(() -> (_b.value : stdgo.encoding.json.Json.T_byteWithMarshalText), v -> (_b.value = (v : stdgo.encoding.json.Json.T_byteWithPtrMarshalText) : stdgo.encoding.json.Json.T_byteWithMarshalText)), _data);
    }
    @:keep
    @:pointer
    static public function marshalText(____:T_byteWithPtrMarshalText,  _b:stdgo.Pointer<T_byteWithPtrMarshalText>):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        return (_b.value : T_byteWithMarshalText).marshalText();
    }
}
class T_intWithMarshalJSON_asInterface {
    @:keep
    @:pointer
    public dynamic function unmarshalJSON(_data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error return __self__.value.unmarshalJSON(__self__, _data);
    @:keep
    public dynamic function marshalJSON():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalJSON();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_intWithMarshalJSON>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_intWithMarshalJSON_asInterface) class T_intWithMarshalJSON_static_extension {
    @:keep
    @:pointer
    static public function unmarshalJSON(____:T_intWithMarshalJSON,  _b:stdgo.Pointer<T_intWithMarshalJSON>, _data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error {
        if ((((_data.length != (5 : stdgo.StdGoTypes.GoInt)) || (_data[(0 : stdgo.StdGoTypes.GoInt)] != (34 : stdgo.StdGoTypes.GoUInt8))) || (_data[(1 : stdgo.StdGoTypes.GoInt)] != (90 : stdgo.StdGoTypes.GoUInt8))) || (_data[(4 : stdgo.StdGoTypes.GoInt)] != (34 : stdgo.StdGoTypes.GoUInt8))) {
            return stdgo.fmt.Fmt.errorf(("bad quoted string" : stdgo.GoString));
        };
        var __tmp__ = stdgo.strconv.Strconv.parseInt(((_data.__slice__((2 : stdgo.StdGoTypes.GoInt), (4 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : stdgo.GoString)?.__copy__(), (16 : stdgo.StdGoTypes.GoInt), (8 : stdgo.StdGoTypes.GoInt)), _i:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return stdgo.fmt.Fmt.errorf(("bad hex" : stdgo.GoString));
        };
        _b.value = (_i : T_intWithMarshalJSON);
        return (null : stdgo.Error);
    }
    @:keep
    static public function marshalJSON( _b:T_intWithMarshalJSON):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _b:T_intWithMarshalJSON = _b;
        return { _0 : (stdgo.fmt.Fmt.sprintf(("\"Z%.2x\"" : stdgo.GoString), stdgo.Go.toInterface((_b : stdgo.StdGoTypes.GoInt))) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _1 : (null : stdgo.Error) };
    }
}
class T_intWithPtrMarshalJSON_asInterface {
    @:keep
    @:pointer
    public dynamic function unmarshalJSON(_data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error return __self__.value.unmarshalJSON(__self__, _data);
    @:keep
    @:pointer
    public dynamic function marshalJSON():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalJSON(__self__);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_intWithPtrMarshalJSON>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_intWithPtrMarshalJSON_asInterface) class T_intWithPtrMarshalJSON_static_extension {
    @:keep
    @:pointer
    static public function unmarshalJSON(____:T_intWithPtrMarshalJSON,  _b:stdgo.Pointer<T_intWithPtrMarshalJSON>, _data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error {
        return new stdgo.Pointer<stdgo.encoding.json.Json.T_intWithMarshalJSON>(() -> (_b.value : stdgo.encoding.json.Json.T_intWithMarshalJSON), v -> (_b.value = (v : stdgo.encoding.json.Json.T_intWithPtrMarshalJSON) : stdgo.encoding.json.Json.T_intWithMarshalJSON)).value.unmarshalJSON(new stdgo.Pointer<stdgo.encoding.json.Json.T_intWithMarshalJSON>(() -> (_b.value : stdgo.encoding.json.Json.T_intWithMarshalJSON), v -> (_b.value = (v : stdgo.encoding.json.Json.T_intWithPtrMarshalJSON) : stdgo.encoding.json.Json.T_intWithMarshalJSON)), _data);
    }
    @:keep
    @:pointer
    static public function marshalJSON(____:T_intWithPtrMarshalJSON,  _b:stdgo.Pointer<T_intWithPtrMarshalJSON>):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        return (_b.value : T_intWithMarshalJSON).marshalJSON();
    }
}
class T_intWithMarshalText_asInterface {
    @:keep
    @:pointer
    public dynamic function unmarshalText(_data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error return __self__.value.unmarshalText(__self__, _data);
    @:keep
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalText();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_intWithMarshalText>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_intWithMarshalText_asInterface) class T_intWithMarshalText_static_extension {
    @:keep
    @:pointer
    static public function unmarshalText(____:T_intWithMarshalText,  _b:stdgo.Pointer<T_intWithMarshalText>, _data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error {
        if ((_data.length != (3 : stdgo.StdGoTypes.GoInt)) || (_data[(0 : stdgo.StdGoTypes.GoInt)] != (90 : stdgo.StdGoTypes.GoUInt8))) {
            return stdgo.fmt.Fmt.errorf(("bad quoted string" : stdgo.GoString));
        };
        var __tmp__ = stdgo.strconv.Strconv.parseInt(((_data.__slice__((1 : stdgo.StdGoTypes.GoInt), (3 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : stdgo.GoString)?.__copy__(), (16 : stdgo.StdGoTypes.GoInt), (8 : stdgo.StdGoTypes.GoInt)), _i:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return stdgo.fmt.Fmt.errorf(("bad hex" : stdgo.GoString));
        };
        _b.value = (_i : T_intWithMarshalText);
        return (null : stdgo.Error);
    }
    @:keep
    static public function marshalText( _b:T_intWithMarshalText):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _b:T_intWithMarshalText = _b;
        return { _0 : (stdgo.fmt.Fmt.sprintf(("Z%.2x" : stdgo.GoString), stdgo.Go.toInterface((_b : stdgo.StdGoTypes.GoInt))) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _1 : (null : stdgo.Error) };
    }
}
class T_intWithPtrMarshalText_asInterface {
    @:keep
    @:pointer
    public dynamic function unmarshalText(_data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error return __self__.value.unmarshalText(__self__, _data);
    @:keep
    @:pointer
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalText(__self__);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_intWithPtrMarshalText>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_intWithPtrMarshalText_asInterface) class T_intWithPtrMarshalText_static_extension {
    @:keep
    @:pointer
    static public function unmarshalText(____:T_intWithPtrMarshalText,  _b:stdgo.Pointer<T_intWithPtrMarshalText>, _data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error {
        return new stdgo.Pointer<stdgo.encoding.json.Json.T_intWithMarshalText>(() -> (_b.value : stdgo.encoding.json.Json.T_intWithMarshalText), v -> (_b.value = (v : stdgo.encoding.json.Json.T_intWithPtrMarshalText) : stdgo.encoding.json.Json.T_intWithMarshalText)).value.unmarshalText(new stdgo.Pointer<stdgo.encoding.json.Json.T_intWithMarshalText>(() -> (_b.value : stdgo.encoding.json.Json.T_intWithMarshalText), v -> (_b.value = (v : stdgo.encoding.json.Json.T_intWithPtrMarshalText) : stdgo.encoding.json.Json.T_intWithMarshalText)), _data);
    }
    @:keep
    @:pointer
    static public function marshalText(____:T_intWithPtrMarshalText,  _b:stdgo.Pointer<T_intWithPtrMarshalText>):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        return (_b.value : T_intWithMarshalText).marshalText();
    }
}
class Time3339_asInterface {
    @:keep
    public dynamic function unmarshalJSON(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error return __self__.value.unmarshalJSON(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Time3339>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.Time3339_asInterface) class Time3339_static_extension {
    @:keep
    static public function unmarshalJSON( _t:stdgo.StdGoTypes.Ref<Time3339>, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error {
        @:recv var _t:stdgo.StdGoTypes.Ref<Time3339> = _t;
        if (((_b.length < (2 : stdgo.StdGoTypes.GoInt)) || (_b[(0 : stdgo.StdGoTypes.GoInt)] != (34 : stdgo.StdGoTypes.GoUInt8))) || (_b[((_b.length) - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] != (34 : stdgo.StdGoTypes.GoUInt8))) {
            return stdgo.fmt.Fmt.errorf(("types: failed to unmarshal non-string value %q as an RFC 3339 time" : stdgo.GoString), stdgo.Go.toInterface(_b));
        };
        var __tmp__ = stdgo.time.Time.parse(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), ((_b.__slice__((1 : stdgo.StdGoTypes.GoInt), (_b.length) - (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : stdgo.GoString)?.__copy__()), _tm:stdgo.time.Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        {
            var __tmp__ = (({
                final e = _tm;
                ({ _wall : e._wall, _ext : e._ext, _loc : e._loc } : stdgo.encoding.json.Json.Time3339);
            }));
            _t._wall = __tmp__._wall;
            _t._ext = __tmp__._ext;
            _t._loc = __tmp__._loc;
        };
        return (null : stdgo.Error);
    }
}
class T_textUnmarshalerString_asInterface {
    @:keep
    @:pointer
    public dynamic function unmarshalText(_text:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error return __self__.value.unmarshalText(__self__, _text);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_textUnmarshalerString>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_textUnmarshalerString_asInterface) class T_textUnmarshalerString_static_extension {
    @:keep
    @:pointer
    static public function unmarshalText(____:T_textUnmarshalerString,  _m:stdgo.Pointer<T_textUnmarshalerString>, _text:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error {
        _m.value = (stdgo.strings.Strings.toLower((_text : stdgo.GoString)?.__copy__()) : T_textUnmarshalerString);
        return (null : stdgo.Error);
    }
}
class T_floatEncoder_asInterface {
    @:keep
    public dynamic function _encode(_e:stdgo.StdGoTypes.Ref<T_encodeState>, _v:stdgo.reflect.Reflect.Value, _opts:T_encOpts):Void __self__.value._encode(_e, _v, _opts);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_floatEncoder>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_floatEncoder_asInterface) class T_floatEncoder_static_extension {
    @:keep
    static public function _encode( _bits:T_floatEncoder, _e:stdgo.StdGoTypes.Ref<T_encodeState>, _v:stdgo.reflect.Reflect.Value, _opts:T_encOpts):Void {
        @:recv var _bits:T_floatEncoder = _bits;
        var _f:stdgo.StdGoTypes.GoFloat64 = _v.float_();
        if (stdgo.math.Math.isInf(_f, (0 : stdgo.StdGoTypes.GoInt)) || stdgo.math.Math.isNaN(_f)) {
            _e._error(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.encoding.json.Json.UnsupportedValueError(_v?.__copy__(), stdgo.strconv.Strconv.formatFloat(_f, (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), (_bits : stdgo.StdGoTypes.GoInt))?.__copy__()) : stdgo.encoding.json.Json.UnsupportedValueError)) : stdgo.StdGoTypes.Ref<stdgo.encoding.json.Json.UnsupportedValueError>)));
        };
        var _b = _e.availableBuffer();
        _b = _mayAppendQuote(_b, _opts._quoted);
        var _abs:stdgo.StdGoTypes.GoFloat64 = stdgo.math.Math.abs(_f);
        var _fmt:stdgo.StdGoTypes.GoUInt8 = ((102 : stdgo.StdGoTypes.GoUInt8) : stdgo.StdGoTypes.GoByte);
        if (_abs != (0 : stdgo.StdGoTypes.GoFloat64)) {
            if (((_bits == (64 : stdgo.encoding.json.Json.T_floatEncoder)) && ((_abs < (1e-06 : stdgo.StdGoTypes.GoFloat64)) || (_abs >= (1e+21 : stdgo.StdGoTypes.GoFloat64)))) || ((_bits == (32 : stdgo.encoding.json.Json.T_floatEncoder)) && (((_abs : stdgo.StdGoTypes.GoFloat32) < (9.999999974752427e-07 : stdgo.StdGoTypes.GoFloat64)) || ((_abs : stdgo.StdGoTypes.GoFloat32) >= (1.0000000200408773e+21 : stdgo.StdGoTypes.GoFloat64))))) {
                _fmt = (101 : stdgo.StdGoTypes.GoUInt8);
            };
        };
        _b = stdgo.strconv.Strconv.appendFloat(_b, _f, _fmt, (-1 : stdgo.StdGoTypes.GoInt), (_bits : stdgo.StdGoTypes.GoInt));
        if (_fmt == ((101 : stdgo.StdGoTypes.GoUInt8))) {
            var _n:stdgo.StdGoTypes.GoInt = (_b.length);
            if ((((_n >= (4 : stdgo.StdGoTypes.GoInt)) && (_b[(_n - (4 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] == (101 : stdgo.StdGoTypes.GoUInt8))) && (_b[(_n - (3 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] == (45 : stdgo.StdGoTypes.GoUInt8))) && (_b[(_n - (2 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] == (48 : stdgo.StdGoTypes.GoUInt8))) {
                _b[(_n - (2 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = _b[(_n - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)];
                _b = (_b.__slice__(0, _n - (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
            };
        };
        _b = _mayAppendQuote(_b, _opts._quoted);
        _e.write(_b);
    }
}
class T_byIndex_asInterface {
    @:keep
    public dynamic function less(_i:stdgo.StdGoTypes.GoInt, _j:stdgo.StdGoTypes.GoInt):Bool return __self__.value.less(_i, _j);
    @:keep
    public dynamic function swap(_i:stdgo.StdGoTypes.GoInt, _j:stdgo.StdGoTypes.GoInt):Void __self__.value.swap(_i, _j);
    @:keep
    public dynamic function len():stdgo.StdGoTypes.GoInt return __self__.value.len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_byIndex>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_byIndex_asInterface) class T_byIndex_static_extension {
    @:keep
    static public function less( _x:T_byIndex, _i:stdgo.StdGoTypes.GoInt, _j:stdgo.StdGoTypes.GoInt):Bool {
        @:recv var _x:T_byIndex = _x;
        for (_k => _xik in _x[(_i : stdgo.StdGoTypes.GoInt)]._index) {
            if (_k >= (_x[(_j : stdgo.StdGoTypes.GoInt)]._index.length)) {
                return false;
            };
            if (_xik != (_x[(_j : stdgo.StdGoTypes.GoInt)]._index[(_k : stdgo.StdGoTypes.GoInt)])) {
                return _xik < _x[(_j : stdgo.StdGoTypes.GoInt)]._index[(_k : stdgo.StdGoTypes.GoInt)];
            };
        };
        return (_x[(_i : stdgo.StdGoTypes.GoInt)]._index.length) < (_x[(_j : stdgo.StdGoTypes.GoInt)]._index.length);
    }
    @:keep
    static public function swap( _x:T_byIndex, _i:stdgo.StdGoTypes.GoInt, _j:stdgo.StdGoTypes.GoInt):Void {
        @:recv var _x:T_byIndex = _x;
        {
            final __tmp__0 = _x[(_j : stdgo.StdGoTypes.GoInt)];
            final __tmp__1 = _x[(_i : stdgo.StdGoTypes.GoInt)];
            _x[(_i : stdgo.StdGoTypes.GoInt)] = __tmp__0;
            _x[(_j : stdgo.StdGoTypes.GoInt)] = __tmp__1;
        };
    }
    @:keep
    static public function len( _x:T_byIndex):stdgo.StdGoTypes.GoInt {
        @:recv var _x:T_byIndex = _x;
        return (_x.length);
    }
}
class Ref_asInterface {
    @:keep
    @:pointer
    public dynamic function unmarshalJSON(_0:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error return __self__.value.unmarshalJSON(__self__, _0);
    @:keep
    public dynamic function marshalJSON():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalJSON(__self__);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Ref>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.Ref_asInterface) class Ref_static_extension {
    @:keep
    @:pointer
    static public function unmarshalJSON(____:Ref,  _r:stdgo.Pointer<Ref>, _0:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error {
        _r.value = (12 : stdgo.encoding.json.Json.Ref);
        return (null : stdgo.Error);
    }
    @:keep
    static public function marshalJSON(____:Ref,  _:stdgo.Pointer<Ref>):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        return { _0 : (("\"ref\"" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _1 : (null : stdgo.Error) };
    }
}
class Val_asInterface {
    @:keep
    public dynamic function marshalJSON():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalJSON();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Val>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.Val_asInterface) class Val_static_extension {
    @:keep
    static public function marshalJSON( _:Val):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _:Val = _;
        return { _0 : (("\"val\"" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _1 : (null : stdgo.Error) };
    }
}
class RefText_asInterface {
    @:keep
    @:pointer
    public dynamic function unmarshalText(_0:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error return __self__.value.unmarshalText(__self__, _0);
    @:keep
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalText(__self__);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<RefText>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.RefText_asInterface) class RefText_static_extension {
    @:keep
    @:pointer
    static public function unmarshalText(____:RefText,  _r:stdgo.Pointer<RefText>, _0:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error {
        _r.value = (13 : stdgo.encoding.json.Json.RefText);
        return (null : stdgo.Error);
    }
    @:keep
    static public function marshalText(____:RefText,  _:stdgo.Pointer<RefText>):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        return { _0 : (("\"ref\"" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _1 : (null : stdgo.Error) };
    }
}
class ValText_asInterface {
    @:keep
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalText();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<ValText>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.ValText_asInterface) class ValText_static_extension {
    @:keep
    static public function marshalText( _:ValText):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _:ValText = _;
        return { _0 : (("\"val\"" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _1 : (null : stdgo.Error) };
    }
}
class C_asInterface {
    @:keep
    public dynamic function marshalJSON():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalJSON();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<C>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.C_asInterface) class C_static_extension {
    @:keep
    static public function marshalJSON( _:C):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _:C = _;
        return { _0 : (("\"<&>\"" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _1 : (null : stdgo.Error) };
    }
}
class CText_asInterface {
    @:keep
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalText();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<CText>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.CText_asInterface) class CText_static_extension {
    @:keep
    static public function marshalText( _:CText):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _:CText = _;
        return { _0 : (("\"<&>\"" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _1 : (null : stdgo.Error) };
    }
}
class T_nilJSONMarshaler_asInterface {
    @:keep
    @:pointer
    public dynamic function marshalJSON():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalJSON(__self__);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_nilJSONMarshaler>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_nilJSONMarshaler_asInterface) class T_nilJSONMarshaler_static_extension {
    @:keep
    @:pointer
    static public function marshalJSON(____:T_nilJSONMarshaler,  _nm:stdgo.Pointer<T_nilJSONMarshaler>):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        if (_nm == null) {
            return marshal(stdgo.Go.toInterface(("0zenil0" : stdgo.GoString)));
        };
        return marshal(stdgo.Go.toInterface(("zenil:" : stdgo.GoString) + (_nm.value : stdgo.GoString)?.__copy__()));
    }
}
class T_nilTextMarshaler_asInterface {
    @:keep
    @:pointer
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalText(__self__);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_nilTextMarshaler>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_nilTextMarshaler_asInterface) class T_nilTextMarshaler_static_extension {
    @:keep
    @:pointer
    static public function marshalText(____:T_nilTextMarshaler,  _nm:stdgo.Pointer<T_nilTextMarshaler>):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        if (_nm == null) {
            return { _0 : (("0zenil0" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _1 : (null : stdgo.Error) };
        };
        return { _0 : (("zenil:" : stdgo.GoString) + (_nm.value : stdgo.GoString)?.__copy__() : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _1 : (null : stdgo.Error) };
    }
}
class T_jsonbyte_asInterface {
    @:keep
    public dynamic function marshalJSON():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalJSON();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_jsonbyte>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_jsonbyte_asInterface) class T_jsonbyte_static_extension {
    @:keep
    static public function marshalJSON( _b:T_jsonbyte):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _b:T_jsonbyte = _b;
        return _tenc(("{\"JB\":%d}" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)));
    }
}
class T_textbyte_asInterface {
    @:keep
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalText();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_textbyte>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_textbyte_asInterface) class T_textbyte_static_extension {
    @:keep
    static public function marshalText( _b:T_textbyte):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _b:T_textbyte = _b;
        return _tenc(("TB:%d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)));
    }
}
class T_jsonint_asInterface {
    @:keep
    public dynamic function marshalJSON():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalJSON();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_jsonint>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_jsonint_asInterface) class T_jsonint_static_extension {
    @:keep
    static public function marshalJSON( _i:T_jsonint):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _i:T_jsonint = _i;
        return _tenc(("{\"JI\":%d}" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_i)));
    }
}
class T_textint_asInterface {
    @:keep
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalText();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_textint>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_textint_asInterface) class T_textint_static_extension {
    @:keep
    static public function marshalText( _i:T_textint):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _i:T_textint = _i;
        return _tenc(("TI:%d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_i)));
    }
}
class T_textfloat_asInterface {
    @:keep
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalText();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_textfloat>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_textfloat_asInterface) class T_textfloat_static_extension {
    @:keep
    static public function marshalText( _f:T_textfloat):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _f:T_textfloat = _f;
        return _tenc(("TF:%0.2f" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_f)));
    }
}
class RawMessage_asInterface {
    /**
        // UnmarshalJSON sets *m to a copy of data.
    **/
    @:keep
    public dynamic function unmarshalJSON(_data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error return __self__.value.unmarshalJSON(_data);
    /**
        // MarshalJSON returns m as the JSON encoding of m.
    **/
    @:keep
    public dynamic function marshalJSON():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalJSON();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<RawMessage>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.RawMessage_asInterface) class RawMessage_static_extension {
    /**
        // UnmarshalJSON sets *m to a copy of data.
    **/
    @:keep
    static public function unmarshalJSON( _m:stdgo.StdGoTypes.Ref<RawMessage>, _data:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.Error {
        @:recv var _m:stdgo.StdGoTypes.Ref<RawMessage> = _m;
        if (_m == null || (_m : Dynamic).__nil__) {
            return stdgo.errors.Errors.new_(("json.RawMessage: UnmarshalJSON on nil pointer" : stdgo.GoString));
        };
        _m.__setData__(((((_m : stdgo.encoding.json.Json.RawMessage)).__slice__((0 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt)) : stdgo.encoding.json.Json.RawMessage).__append__(..._data.__toArray__())));
        return (null : stdgo.Error);
    }
    /**
        // MarshalJSON returns m as the JSON encoding of m.
    **/
    @:keep
    static public function marshalJSON( _m:RawMessage):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _m:RawMessage = _m;
        if (_m == null) {
            return { _0 : (("null" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _1 : (null : stdgo.Error) };
        };
        return { _0 : _m, _1 : (null : stdgo.Error) };
    }
}
class Delim_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Delim>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.Delim_asInterface) class Delim_static_extension {
    @:keep
    static public function string( _d:Delim):stdgo.GoString {
        @:recv var _d:Delim = _d;
        return (_d : stdgo.GoString)?.__copy__();
    }
}
class T_strMarshaler_asInterface {
    @:keep
    public dynamic function marshalJSON():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalJSON();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_strMarshaler>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_strMarshaler_asInterface) class T_strMarshaler_static_extension {
    @:keep
    static public function marshalJSON( _s:T_strMarshaler):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _s:T_strMarshaler = _s;
        return { _0 : (_s : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _1 : (null : stdgo.Error) };
    }
}
class T_strPtrMarshaler_asInterface {
    @:keep
    @:pointer
    public dynamic function marshalJSON():{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } return __self__.value.marshalJSON(__self__);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_strPtrMarshaler>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_strPtrMarshaler_asInterface) class T_strPtrMarshaler_static_extension {
    @:keep
    @:pointer
    static public function marshalJSON(____:T_strPtrMarshaler,  _s:stdgo.Pointer<T_strPtrMarshaler>):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        return { _0 : (_s.value : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _1 : (null : stdgo.Error) };
    }
}
class T_tagOptions_asInterface {
    /**
        // Contains reports whether a comma-separated list of options
        // contains a particular substr flag. substr must be surrounded by a
        // string boundary or commas.
    **/
    @:keep
    public dynamic function contains(_optionName:stdgo.GoString):Bool return __self__.value.contains(_optionName);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_tagOptions>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_tagOptions_asInterface) class T_tagOptions_static_extension {
    /**
        // Contains reports whether a comma-separated list of options
        // contains a particular substr flag. substr must be surrounded by a
        // string boundary or commas.
    **/
    @:keep
    static public function contains( _o:T_tagOptions, _optionName:stdgo.GoString):Bool {
        @:recv var _o:T_tagOptions = _o;
        if ((_o.length) == ((0 : stdgo.StdGoTypes.GoInt))) {
            return false;
        };
        var _s:stdgo.GoString = (_o : stdgo.GoString)?.__copy__();
        while (_s != (stdgo.Go.str())) {
            var _name:stdgo.GoString = ("" : stdgo.GoString);
            {
                var __tmp__ = stdgo.strings.Strings.cut(_s?.__copy__(), ("," : stdgo.GoString));
                _name = __tmp__._0?.__copy__();
                _s = __tmp__._1?.__copy__();
            };
            if (_name == (_optionName)) {
                return true;
            };
        };
        return false;
    }
}
class T_testUnmarshalEmbeddedUnexported_94___localname___S1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_testUnmarshalEmbeddedUnexported_94___localname___S1>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_94___localname___S1_asInterface) class T_testUnmarshalEmbeddedUnexported_94___localname___S1_static_extension {

}
class T_testUnmarshalEmbeddedUnexported_95___localname___S2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_testUnmarshalEmbeddedUnexported_95___localname___S2>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_95___localname___S2_asInterface) class T_testUnmarshalEmbeddedUnexported_95___localname___S2_static_extension {

}
class T_testUnmarshalEmbeddedUnexported_96___localname___S3_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_testUnmarshalEmbeddedUnexported_96___localname___S3>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_96___localname___S3_asInterface) class T_testUnmarshalEmbeddedUnexported_96___localname___S3_static_extension {

}
class T_testUnmarshalEmbeddedUnexported_97___localname___S4_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_testUnmarshalEmbeddedUnexported_97___localname___S4>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_97___localname___S4_asInterface) class T_testUnmarshalEmbeddedUnexported_97___localname___S4_static_extension {

}
class T_testUnmarshalEmbeddedUnexported_98___localname___S5_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_testUnmarshalEmbeddedUnexported_98___localname___S5>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_98___localname___S5_asInterface) class T_testUnmarshalEmbeddedUnexported_98___localname___S5_static_extension {

}
class T_testUnmarshalEmbeddedUnexported_99___localname___S6_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_testUnmarshalEmbeddedUnexported_99___localname___S6>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_99___localname___S6_asInterface) class T_testUnmarshalEmbeddedUnexported_99___localname___S6_static_extension {

}
class T_testUnmarshalEmbeddedUnexported_100___localname___S7_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_testUnmarshalEmbeddedUnexported_100___localname___S7>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_100___localname___S7_asInterface) class T_testUnmarshalEmbeddedUnexported_100___localname___S7_static_extension {

}
class T_testUnmarshalEmbeddedUnexported_101___localname___S8_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_testUnmarshalEmbeddedUnexported_101___localname___S8>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_101___localname___S8_asInterface) class T_testUnmarshalEmbeddedUnexported_101___localname___S8_static_extension {

}
class T_testUnmarshalEmbeddedUnexported_102___localname___S9_asInterface {
    @:embedded
    public dynamic function f():Void __self__.value.f();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_testUnmarshalEmbeddedUnexported_102___localname___S9>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported_102___localname___S9_asInterface) class T_testUnmarshalEmbeddedUnexported_102___localname___S9_static_extension {
    @:embedded
    public static function f( __self__:T_testUnmarshalEmbeddedUnexported_102___localname___S9) __self__.f();
}
class T_testAnonymousFields_106___localname___S_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_testAnonymousFields_106___localname___S>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_testAnonymousFields_106___localname___S_asInterface) class T_testAnonymousFields_106___localname___S_static_extension {

}
class T_testAnonymousFields_109___localname___S_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_testAnonymousFields_109___localname___S>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_testAnonymousFields_109___localname___S_asInterface) class T_testAnonymousFields_109___localname___S_static_extension {

}
class T_testAnonymousFields_111___localname___S_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_testAnonymousFields_111___localname___S>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_testAnonymousFields_111___localname___S_asInterface) class T_testAnonymousFields_111___localname___S_static_extension {

}
class T_testAnonymousFields_113___localname___S_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_testAnonymousFields_113___localname___S>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_testAnonymousFields_113___localname___S_asInterface) class T_testAnonymousFields_113___localname___S_static_extension {

}
class T_testAnonymousFields_115___localname___S_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_testAnonymousFields_115___localname___S>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_testAnonymousFields_115___localname___S_asInterface) class T_testAnonymousFields_115___localname___S_static_extension {

}
class T_testAnonymousFields_117___localname___S_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_testAnonymousFields_117___localname___S>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_testAnonymousFields_117___localname___S_asInterface) class T_testAnonymousFields_117___localname___S_static_extension {

}
class T_testAnonymousFields_120___localname___S_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_testAnonymousFields_120___localname___S>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_testAnonymousFields_120___localname___S_asInterface) class T_testAnonymousFields_120___localname___S_static_extension {

}
class T_testAnonymousFields_123___localname___S_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_testAnonymousFields_123___localname___S>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_testAnonymousFields_123___localname___S_asInterface) class T_testAnonymousFields_123___localname___S_static_extension {

}
class T_testAnonymousFields_127___localname___s2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_testAnonymousFields_127___localname___s2>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_testAnonymousFields_127___localname___s2_asInterface) class T_testAnonymousFields_127___localname___s2_static_extension {

}
class T_testAnonymousFields_128___localname___s1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_testAnonymousFields_128___localname___s1>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_testAnonymousFields_128___localname___s1_asInterface) class T_testAnonymousFields_128___localname___s1_static_extension {

}
class T_testAnonymousFields_129___localname___S_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_testAnonymousFields_129___localname___S>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_testAnonymousFields_129___localname___S_asInterface) class T_testAnonymousFields_129___localname___S_static_extension {

}
class T_testAnonymousFields_131___localname___S_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_testAnonymousFields_131___localname___S>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.json.Json.T_testAnonymousFields_131___localname___S_asInterface) class T_testAnonymousFields_131___localname___S_static_extension {

}
