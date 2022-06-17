package stdgo.encoding.gob;
import stdgo.Chan;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.StdGoTypes;
function _catchError(_err:Error):Void {
    var __recover_exception__:AnyInterface = null;
    {
        var _e:AnyInterface = Go.toInterface(({
            final r = __recover_exception__;
            __recover_exception__ = null;
            r;
        }));
        if (_e != null) {
            var __tmp__ = try {
                { value : ((_e.value : T_gobError)), ok : true };
            } catch(_) {
                { value : new T_gobError(), ok : false };
            }, _ge = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok) {
                throw Go.toInterface(_e);
            };
            _err = _ge._err;
        };
    };
}
var _errBadUint : stdgo.Error = stdgo.errors.Errors.new_(((("gob: encoded unsigned integer out of range" : GoString))));
var _errBadType : stdgo.Error = stdgo.errors.Errors.new_(((("gob: unknown type id or corrupted data" : GoString))));
var _errRange : stdgo.Error = stdgo.errors.Errors.new_(((("gob: bad data: field numbers out of bounds" : GoString))));
var _emptyStructType : stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(((new T_emptyStruct() : T_emptyStruct))));
var _errBadCount : stdgo.Error = stdgo.errors.Errors.new_(((("invalid message length" : GoString))));
var _decArrayHelper : GoMap<stdgo.reflect.Reflect.Kind, T_decHelper> = Go.map(((1 : GoUInt)) => _decBoolArray,
((15 : GoUInt)) => _decComplex64Array,
((16 : GoUInt)) => _decComplex128Array,
((13 : GoUInt)) => _decFloat32Array,
((14 : GoUInt)) => _decFloat64Array,
((2 : GoUInt)) => _decIntArray,
((4 : GoUInt)) => _decInt16Array,
((5 : GoUInt)) => _decInt32Array,
((6 : GoUInt)) => _decInt64Array,
((3 : GoUInt)) => _decInt8Array,
((24 : GoUInt)) => _decStringArray,
((7 : GoUInt)) => _decUintArray,
((9 : GoUInt)) => _decUint16Array,
((10 : GoUInt)) => _decUint32Array,
((11 : GoUInt)) => _decUint64Array,
((12 : GoUInt)) => _decUintptrArray);
var _decSliceHelper : GoMap<stdgo.reflect.Reflect.Kind, T_decHelper> = Go.map(((1 : GoUInt)) => _decBoolSlice,
((15 : GoUInt)) => _decComplex64Slice,
((16 : GoUInt)) => _decComplex128Slice,
((13 : GoUInt)) => _decFloat32Slice,
((14 : GoUInt)) => _decFloat64Slice,
((2 : GoUInt)) => _decIntSlice,
((4 : GoUInt)) => _decInt16Slice,
((5 : GoUInt)) => _decInt32Slice,
((6 : GoUInt)) => _decInt64Slice,
((3 : GoUInt)) => _decInt8Slice,
((24 : GoUInt)) => _decStringSlice,
((7 : GoUInt)) => _decUintSlice,
((9 : GoUInt)) => _decUint16Slice,
((10 : GoUInt)) => _decUint32Slice,
((11 : GoUInt)) => _decUint64Slice,
((12 : GoUInt)) => _decUintptrSlice);
var _decOpTable : GoArray<T_decOp> = {
    var s:GoArray<T_decOp> = new GoArray<T_decOp>(...[for (i in 0 ... 25) ((null : T_decOp))]);
    s[1] = _decBool;
    s[3] = _decInt8;
    s[4] = _decInt16;
    s[5] = _decInt32;
    s[6] = _decInt64;
    s[8] = _decUint8;
    s[9] = _decUint16;
    s[10] = _decUint32;
    s[11] = _decUint64;
    s[13] = _decFloat32;
    s[14] = _decFloat64;
    s[15] = _decComplex64;
    s[16] = _decComplex128;
    s[24] = _decString;
    s;
};
var _encArrayHelper : GoMap<stdgo.reflect.Reflect.Kind, T_encHelper> = Go.map(((1 : GoUInt)) => _encBoolArray,
((15 : GoUInt)) => _encComplex64Array,
((16 : GoUInt)) => _encComplex128Array,
((13 : GoUInt)) => _encFloat32Array,
((14 : GoUInt)) => _encFloat64Array,
((2 : GoUInt)) => _encIntArray,
((4 : GoUInt)) => _encInt16Array,
((5 : GoUInt)) => _encInt32Array,
((6 : GoUInt)) => _encInt64Array,
((3 : GoUInt)) => _encInt8Array,
((24 : GoUInt)) => _encStringArray,
((7 : GoUInt)) => _encUintArray,
((9 : GoUInt)) => _encUint16Array,
((10 : GoUInt)) => _encUint32Array,
((11 : GoUInt)) => _encUint64Array,
((12 : GoUInt)) => _encUintptrArray);
var _encSliceHelper : GoMap<stdgo.reflect.Reflect.Kind, T_encHelper> = Go.map(((1 : GoUInt)) => _encBoolSlice,
((15 : GoUInt)) => _encComplex64Slice,
((16 : GoUInt)) => _encComplex128Slice,
((13 : GoUInt)) => _encFloat32Slice,
((14 : GoUInt)) => _encFloat64Slice,
((2 : GoUInt)) => _encIntSlice,
((4 : GoUInt)) => _encInt16Slice,
((5 : GoUInt)) => _encInt32Slice,
((6 : GoUInt)) => _encInt64Slice,
((3 : GoUInt)) => _encInt8Slice,
((24 : GoUInt)) => _encStringSlice,
((7 : GoUInt)) => _encUintSlice,
((9 : GoUInt)) => _encUint16Slice,
((10 : GoUInt)) => _encUint32Slice,
((11 : GoUInt)) => _encUint64Slice,
((12 : GoUInt)) => _encUintptrSlice);
var _encBufferPool : stdgo.sync.Sync.Pool = (({ new_ : function():AnyInterface {
    var _e:T_encBuffer = new T_encBuffer();
    _e._data = _e._scratch.__slice__(((0 : GoInt)), ((0 : GoInt)));
    return Go.toInterface(_e);
}, _noCopy : new stdgo.sync.Sync.T_noCopy(), _local : null, _localSize : 0, _victim : null, _victimSize : 0 } : stdgo.sync.Sync.Pool));
var _encOpTable : GoArray<T_encOp> = {
    var s:GoArray<T_encOp> = new GoArray<T_encOp>(...[for (i in 0 ... 25) ((null : T_encOp))]);
    s[1] = _encBool;
    s[2] = _encInt;
    s[3] = _encInt;
    s[4] = _encInt;
    s[5] = _encInt;
    s[6] = _encInt;
    s[7] = _encUint;
    s[8] = _encUint;
    s[9] = _encUint;
    s[10] = _encUint;
    s[11] = _encUint;
    s[12] = _encUint;
    s[13] = _encFloat;
    s[14] = _encFloat;
    s[15] = _encComplex;
    s[16] = _encComplex;
    s[24] = _encString;
    s;
};
var _spaceForLength : Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((9 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
var _gobEncoderInterfaceType : stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(((((null : GobEncoder)) : GobEncoder)))).elem();
var _gobDecoderInterfaceType : stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(((((null : GobDecoder)) : GobDecoder)))).elem();
var _binaryMarshalerInterfaceType : stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(((((null : stdgo.encoding.Encoding.BinaryMarshaler)) : stdgo.encoding.Encoding.BinaryMarshaler)))).elem();
var _binaryUnmarshalerInterfaceType : stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(((((null : stdgo.encoding.Encoding.BinaryUnmarshaler)) : stdgo.encoding.Encoding.BinaryUnmarshaler)))).elem();
var _textMarshalerInterfaceType : stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(((((null : stdgo.encoding.Encoding.TextMarshaler)) : stdgo.encoding.Encoding.TextMarshaler)))).elem();
var _textUnmarshalerInterfaceType : stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(((((null : stdgo.encoding.Encoding.TextUnmarshaler)) : stdgo.encoding.Encoding.TextUnmarshaler)))).elem();
var _types : GoMap<stdgo.reflect.Reflect.Type, T_gobType> = new GoObjectMap<stdgo.reflect.Reflect.Type, T_gobType>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("stdgo.reflect.Reflect.Type", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])), stdgo.reflect.Reflect.GoType.named("T_gobType", [], stdgo.reflect.Reflect.GoType.named("T_gobType", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))))));
var _idToType : GoMap<T_typeId, T_gobType> = new Map<Int, T_gobType>();
var _tBool : T_typeId = _bootstrapType(((("bool" : GoString))), Go.toInterface(((((null : Pointer<Bool>)) : Pointer<Bool>))), ((1 : GoInt32)));
var _tInt : T_typeId = _bootstrapType(((("int" : GoString))), Go.toInterface(((((null : Pointer<GoInt>)) : Pointer<GoInt>))), ((2 : GoInt32)));
var _tUint : T_typeId = _bootstrapType(((("uint" : GoString))), Go.toInterface(((((null : Pointer<GoUInt>)) : Pointer<GoUInt>))), ((3 : GoInt32)));
var _tFloat : T_typeId = _bootstrapType(((("float" : GoString))), Go.toInterface(((((null : Pointer<GoFloat64>)) : Pointer<GoFloat64>))), ((4 : GoInt32)));
var _tBytes : T_typeId = _bootstrapType(((("bytes" : GoString))), Go.toInterface(((((null : Slice<GoUInt8>)) : Slice<GoByte>))), ((5 : GoInt32)));
var _tString : T_typeId = _bootstrapType(((("string" : GoString))), Go.toInterface(((((null : Pointer<GoString>)) : Pointer<GoString>))), ((6 : GoInt32)));
var _tComplex : T_typeId = _bootstrapType(((("complex" : GoString))), Go.toInterface(((((null : Pointer<GoComplex128>)) : Pointer<GoComplex128>))), ((7 : GoInt32)));
var _decIgnoreOpMap : GoMap<T_typeId, T_decOp> = Go.map(_tBool => _ignoreUint, _tInt => _ignoreUint, _tUint => _ignoreUint, _tFloat => _ignoreUint, _tBytes => _ignoreUint8Array, _tString => _ignoreUint8Array, _tComplex => _ignoreTwoUints);
var _tInterface : T_typeId = _bootstrapType(((("interface" : GoString))), Go.toInterface(((((null : AnyInterface)) : AnyInterface))), ((8 : GoInt32)));
var _tReserved7 : T_typeId = _bootstrapType(((("_reserved1" : GoString))), Go.toInterface(((((null : T__struct_4)) : T__struct_4))), ((9 : GoInt32)));
var _tReserved6 : T_typeId = _bootstrapType(((("_reserved1" : GoString))), Go.toInterface(((((null : T__struct_5)) : T__struct_5))), ((10 : GoInt32)));
var _tReserved5 : T_typeId = _bootstrapType(((("_reserved1" : GoString))), Go.toInterface(((((null : T__struct_6)) : T__struct_6))), ((11 : GoInt32)));
var _tReserved4 : T_typeId = _bootstrapType(((("_reserved1" : GoString))), Go.toInterface(((((null : T__struct_7)) : T__struct_7))), ((12 : GoInt32)));
var _tReserved3 : T_typeId = _bootstrapType(((("_reserved1" : GoString))), Go.toInterface(((((null : T__struct_8)) : T__struct_8))), ((13 : GoInt32)));
var _tReserved2 : T_typeId = _bootstrapType(((("_reserved1" : GoString))), Go.toInterface(((((null : T__struct_9)) : T__struct_9))), ((14 : GoInt32)));
var _tReserved1 : T_typeId = _bootstrapType(((("_reserved1" : GoString))), Go.toInterface(((((null : T__struct_10)) : T__struct_10))), ((15 : GoInt32)));
var _tWireType : T_typeId = _mustGetTypeInfo(stdgo.reflect.Reflect.typeOf(Go.toInterface(((new T_wireType() : T_wireType)))))._id;
var _doFuzzTests : Pointer<Bool> = stdgo.flag.Flag.bool(((("gob.fuzz" : GoString))), false, ((("run the fuzz tests, which are large and very slow" : GoString))));
var _encodeT : Slice<EncodeT> = ((new Slice<EncodeT>(
((new EncodeT(((0 : GoUInt64)), ((new Slice<GoUInt8>(((0 : GoUInt8))) : Slice<GoUInt8>))) : EncodeT)),
((new EncodeT(((15 : GoUInt64)), ((new Slice<GoUInt8>(((15 : GoUInt8))) : Slice<GoUInt8>))) : EncodeT)),
((new EncodeT(((255 : GoUInt64)), ((new Slice<GoUInt8>(((255 : GoUInt8)), ((255 : GoUInt8))) : Slice<GoUInt8>))) : EncodeT)),
((new EncodeT(((65535 : GoUInt64)), ((new Slice<GoUInt8>(((254 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8))) : Slice<GoUInt8>))) : EncodeT)),
((new EncodeT(((16777215 : GoUInt64)), ((new Slice<GoUInt8>(((253 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8))) : Slice<GoUInt8>))) : EncodeT)),
((new EncodeT((("4294967295" : GoUInt64)), ((new Slice<GoUInt8>(((252 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8))) : Slice<GoUInt8>))) : EncodeT)),
((new EncodeT((("1099511627775" : GoUInt64)), ((new Slice<GoUInt8>(((251 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8))) : Slice<GoUInt8>))) : EncodeT)),
((new EncodeT((("281474976710655" : GoUInt64)), ((new Slice<GoUInt8>(((250 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8))) : Slice<GoUInt8>))) : EncodeT)),
((new EncodeT((("72057594037927935" : GoUInt64)), ((new Slice<GoUInt8>(((249 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8))) : Slice<GoUInt8>))) : EncodeT)),
((new EncodeT((("18446744073709551615" : GoUInt64)), ((new Slice<GoUInt8>(((248 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8))) : Slice<GoUInt8>))) : EncodeT)),
((new EncodeT(((4369 : GoUInt64)), ((new Slice<GoUInt8>(((254 : GoUInt8)), ((17 : GoUInt8)), ((17 : GoUInt8))) : Slice<GoUInt8>))) : EncodeT)),
((new EncodeT((("1229782938247303441" : GoUInt64)), ((new Slice<GoUInt8>(((248 : GoUInt8)), ((17 : GoUInt8)), ((17 : GoUInt8)), ((17 : GoUInt8)), ((17 : GoUInt8)), ((17 : GoUInt8)), ((17 : GoUInt8)), ((17 : GoUInt8)), ((17 : GoUInt8))) : Slice<GoUInt8>))) : EncodeT)),
((new EncodeT((("9838263505978427528" : GoUInt64)), ((new Slice<GoUInt8>(((248 : GoUInt8)), ((136 : GoUInt8)), ((136 : GoUInt8)), ((136 : GoUInt8)), ((136 : GoUInt8)), ((136 : GoUInt8)), ((136 : GoUInt8)), ((136 : GoUInt8)), ((136 : GoUInt8))) : Slice<GoUInt8>))) : EncodeT)),
((new EncodeT((("9223372036854775808" : GoUInt64)), ((new Slice<GoUInt8>(((248 : GoUInt8)), ((128 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8))) : Slice<GoUInt8>))) : EncodeT))) : Slice<EncodeT>));
var _boolResult : Slice<GoUInt8> = ((new Slice<GoUInt8>(((7 : GoUInt8)), ((1 : GoUInt8))) : Slice<GoUInt8>));
var _signedResult : Slice<GoUInt8> = ((new Slice<GoUInt8>(((7 : GoUInt8)), ((34 : GoUInt8))) : Slice<GoUInt8>));
var _unsignedResult : Slice<GoUInt8> = ((new Slice<GoUInt8>(((7 : GoUInt8)), ((17 : GoUInt8))) : Slice<GoUInt8>));
var _floatResult : Slice<GoUInt8> = ((new Slice<GoUInt8>(((7 : GoUInt8)), ((254 : GoUInt8)), ((49 : GoUInt8)), ((64 : GoUInt8))) : Slice<GoUInt8>));
var _complexResult : Slice<GoUInt8> = ((new Slice<GoUInt8>(((7 : GoUInt8)), ((254 : GoUInt8)), ((49 : GoUInt8)), ((64 : GoUInt8)), ((254 : GoUInt8)), ((51 : GoUInt8)), ((64 : GoUInt8))) : Slice<GoUInt8>));
var _bytesResult : Slice<GoUInt8> = ((new Slice<GoUInt8>(((7 : GoUInt8)), ((5 : GoUInt8)), ((((("h" : GoString))).code : GoRune)), ((((("e" : GoString))).code : GoRune)), ((((("l" : GoString))).code : GoRune)), ((((("l" : GoString))).code : GoRune)), ((((("o" : GoString))).code : GoRune))) : Slice<GoUInt8>));
var _singletons : Slice<AnyInterface> = ((new Slice<AnyInterface>(Go.toInterface(true), Go.toInterface(((7 : GoInt))), Go.toInterface(((((10 : GoUInt)) : GoUInt))), Go.toInterface(((3.2 : GoFloat64))), Go.toInterface(((("hello" : GoString)))), Go.toInterface(((new GoArray<GoInt>(((11 : GoInt)), ((22 : GoInt)), ((33 : GoInt))) : GoArray<GoInt>))), Go.toInterface(((new Slice<GoFloat32>(((0.5 : GoFloat32)), ((0.25 : GoFloat32)), ((0.125 : GoFloat32))) : Slice<GoFloat32>))), Go.toInterface(Go.map(((("one" : GoString))) => ((1 : GoInt)), ((("two" : GoString))) => ((2 : GoInt))))) : Slice<AnyInterface>));
var _unsupportedValues : Slice<AnyInterface> = ((new Slice<AnyInterface>(Go.toInterface(new Chan<GoInt>(0, () -> ((0 : GoInt)))), Go.toInterface(function(_a:GoInt):Bool {
    return true;
})) : Slice<AnyInterface>));
var _singleTests : Slice<SingleTest> = ((new Slice<SingleTest>(((new SingleTest(Go.toInterface(((17 : GoInt))), Go.toInterface(Go.pointer(_testInt)), ("")) : SingleTest)), ((new SingleTest(Go.toInterface(((((17.5 : GoFloat32)) : GoFloat32))), Go.toInterface(Go.pointer(_testFloat32)), ("")) : SingleTest)), ((new SingleTest(Go.toInterface(((("bike shed" : GoString)))), Go.toInterface(Go.pointer(_testString)), ("")) : SingleTest)), ((new SingleTest(Go.toInterface(((new Slice<GoString>(((("bike" : GoString))), ((("shed" : GoString))), ((("paint" : GoString))), ((("color" : GoString)))) : Slice<GoString>))), Go.toInterface(_testSlice), ("")) : SingleTest)), ((new SingleTest(Go.toInterface(Go.map(((("seven" : GoString))) => ((7 : GoInt)), ((("twelve" : GoString))) => ((12 : GoInt)))), Go.toInterface(_testMap), ("")) : SingleTest)), ((new SingleTest(Go.toInterface(((new GoArray<GoInt>(((4 : GoInt)), ((55 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt)), ((0 : GoInt))) : GoArray<GoInt>))), Go.toInterface(_testArray), ("")) : SingleTest)), ((new SingleTest(Go.toInterface(((new GoArray<GoInt>(((4 : GoInt)), ((55 : GoInt)), ((1 : GoInt)), ((44 : GoInt)), ((22 : GoInt)), ((66 : GoInt)), ((1234 : GoInt))) : GoArray<GoInt>))), Go.toInterface(_testArray), ("")) : SingleTest)), ((new SingleTest(Go.toInterface(((172 : GoInt))), Go.toInterface(Go.pointer(_testFloat32)), ((("type" : GoString)))) : SingleTest))) : Slice<SingleTest>));
var _ignoreTests : Slice<T_ignoreTest> = ((new Slice<T_ignoreTest>(((new T_ignoreTest(Go.toInterface(((new OnTheFly(((23 : GoInt))) : OnTheFly))), Go.toInterface(((new T_emptyStruct() : T_emptyStruct)))) : T_ignoreTest)), ((new T_ignoreTest(Go.toInterface(((new OnTheFly(((23 : GoInt))) : OnTheFly))), ((null : AnyInterface))) : T_ignoreTest)), ((new T_ignoreTest(Go.toInterface(((("hello, world" : GoString)))), ((null : AnyInterface))) : T_ignoreTest)), ((new T_ignoreTest(Go.toInterface(((new Slice<GoInt>(((1 : GoInt)), ((2 : GoInt)), ((3 : GoInt)), ((4 : GoInt))) : Slice<GoInt>))), ((null : AnyInterface))) : T_ignoreTest)), ((new T_ignoreTest(Go.toInterface(((new Struct0(Go.toInterface(((new NewType0(((("value0" : GoString)))) : NewType0)))) : Struct0))), ((null : AnyInterface))) : T_ignoreTest)), ((new T_ignoreTest(Go.toInterface(((new Slice<AnyInterface>(Go.toInterface(((("hi" : GoString)))), Go.toInterface(((new NewType0(((("value1" : GoString)))) : NewType0))), Go.toInterface(((23 : GoInt)))) : Slice<AnyInterface>))), ((null : AnyInterface))) : T_ignoreTest))) : Slice<T_ignoreTest>));
var _badDataTests : Slice<T_badDataTest> = ((new Slice<T_badDataTest>(((new T_badDataTest((""), ((("EOF" : GoString))), ((null : AnyInterface))) : T_badDataTest)), ((new T_badDataTest(((("7F6869" : GoString))), ((("unexpected EOF" : GoString))), ((null : AnyInterface))) : T_badDataTest)), ((new T_badDataTest(((("036e6f77206973207468652074696d6520666f7220616c6c20676f6f64206d656e" : GoString))), ((("unknown type id" : GoString))), Go.toInterface(new ET2())) : T_badDataTest)), ((new T_badDataTest(((("0424666f6f" : GoString))), ((("field numbers out of bounds" : GoString))), Go.toInterface(new ET2())) : T_badDataTest)), ((new T_badDataTest(((("05100028557b02027f8302" : GoString))), ((("interface encoding" : GoString))), ((null : AnyInterface))) : T_badDataTest)), ((new T_badDataTest(((("130a00fb5dad0bf8ff020263e70002fa28020202a89859" : GoString))), ((("slice length too large" : GoString))), ((null : AnyInterface))) : T_badDataTest)), ((new T_badDataTest(((("0f1000fb285d003316020735ff023a65c5" : GoString))), ((("interface encoding" : GoString))), ((null : AnyInterface))) : T_badDataTest)), ((new T_badDataTest(((("03fffb0616fffc00f902ff02ff03bf005d02885802a311a8120228022c028ee7" : GoString))), ((("GobDecoder" : GoString))), ((null : AnyInterface))) : T_badDataTest)), ((new T_badDataTest(((("10fe010f020102fe01100001fe010e000016fe010d030102fe010e00010101015801fe01100000000bfe011000f85555555555555555" : GoString))), ((("exceeds input size" : GoString))), ((null : AnyInterface))) : T_badDataTest))) : Slice<T_badDataTest>));
var _basicTypes : Slice<T_typeT> = ((new Slice<T_typeT>(((new T_typeT(_tBool, ((("bool" : GoString)))) : T_typeT)), ((new T_typeT(_tInt, ((("int" : GoString)))) : T_typeT)), ((new T_typeT(_tUint, ((("uint" : GoString)))) : T_typeT)), ((new T_typeT(_tFloat, ((("float" : GoString)))) : T_typeT)), ((new T_typeT(_tBytes, ((("bytes" : GoString)))) : T_typeT)), ((new T_typeT(_tString, ((("string" : GoString)))) : T_typeT))) : Slice<T_typeT>));
var _noValue : stdgo.reflect.Reflect.Value = new stdgo.reflect.Reflect.Value();
var _debugFunc : stdgo.io.Io.Reader -> Void = null;
var _testInt : GoInt = ((0 : GoInt));
var _testFloat32 : GoFloat32 = ((0 : GoFloat32));
var _testString : GoString = (("" : GoString));
var _testSlice : Slice<GoString> = ((null : Slice<GoString>));
var _testMap : GoMap<GoString, GoInt> = ((null : GoMap<GoString, GoInt>));
var _testArray : GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 7) ((0 : GoInt))]);
var _userTypeCache : stdgo.sync.Sync.Map_ = new stdgo.sync.Sync.Map_();
var _nextId : T_typeId = new T_typeId();
var _typeLock : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
var _builtinIdToType : GoMap<T_typeId, T_gobType> = ((null : GoMap<T_typeId, T_gobType>));
var _wireTypeUserInfo : T_userTypeInfo = ((null : T_userTypeInfo));
var _typeInfoMap : stdgo.sync.atomic.Atomic.Value = new stdgo.sync.atomic.Atomic.Value();
var _nameToConcreteType : stdgo.sync.Sync.Map_ = new stdgo.sync.Sync.Map_();
var _concreteTypeToName : stdgo.sync.Sync.Map_ = new stdgo.sync.Sync.Map_();
typedef Squarer = StructType & {
    public function square():GoInt;
};
typedef T_interfaceIndirectTestI = StructType & {
    public function f():Bool;
};
typedef T_gobType = StructType & {
    public function _id():T_typeId;
    public function _setId(_id:T_typeId):Void;
    public function _name():GoString;
    public function _string():GoString;
    public function _safeString(_seen:GoMap<T_typeId, Bool>):GoString;
};
typedef GobEncoder = StructType & {
    public function gobEncode():{ var _0 : Slice<GoByte>; var _1 : Error; };
};
typedef GobDecoder = StructType & {
    public function gobDecode(_0:Slice<GoByte>):Error;
};
@:structInit class EncodeT {
    public var _x : GoUInt64 = ((0 : GoUInt64));
    public var _b : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public function new(?_x:GoUInt64, ?_b:Slice<GoUInt8>) {
        if (_x != null) this._x = _x;
        if (_b != null) this._b = _b;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new EncodeT(_x, _b);
    }
}
@:structInit class T0 {
    public var a : GoInt = ((0 : GoInt));
    public var b : GoInt = ((0 : GoInt));
    public var c : GoInt = ((0 : GoInt));
    public var d : GoInt = ((0 : GoInt));
    public function new(?a:GoInt, ?b:GoInt, ?c:GoInt, ?d:GoInt) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (c != null) this.c = c;
        if (d != null) this.d = d;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T0(a, b, c, d);
    }
}
@:structInit class T1 {
    public var a : GoInt = ((0 : GoInt));
    public var b : Pointer<GoInt> = ((null : Pointer<GoInt>));
    public var c : Pointer<GoInt> = ((null : Pointer<GoInt>));
    public var d : Pointer<GoInt> = ((null : Pointer<GoInt>));
    public function new(?a:GoInt, ?b:Pointer<GoInt>, ?c:Pointer<GoInt>, ?d:Pointer<GoInt>) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (c != null) this.c = c;
        if (d != null) this.d = d;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T1(a, b, c, d);
    }
}
@:structInit class T2 {
    public var a : Pointer<GoInt> = ((null : Pointer<GoInt>));
    public var b : Pointer<GoInt> = ((null : Pointer<GoInt>));
    public var c : Pointer<GoInt> = ((null : Pointer<GoInt>));
    public var d : GoInt = ((0 : GoInt));
    public function new(?a:Pointer<GoInt>, ?b:Pointer<GoInt>, ?c:Pointer<GoInt>, ?d:GoInt) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (c != null) this.c = c;
        if (d != null) this.d = d;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T2(a, b, c, d);
    }
}
@:structInit class RT0 {
    public var a : GoInt = ((0 : GoInt));
    public var b : GoString = (("" : GoString));
    public var c : GoFloat64 = ((0 : GoFloat64));
    public function new(?a:GoInt, ?b:GoString, ?c:GoFloat64) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (c != null) this.c = c;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new RT0(a, b, c);
    }
}
@:structInit class RT1 {
    public var c : GoFloat64 = ((0 : GoFloat64));
    public var b : GoString = (("" : GoString));
    public var a : GoInt = ((0 : GoInt));
    public var notSet : GoString = (("" : GoString));
    public function new(?c:GoFloat64, ?b:GoString, ?a:GoInt, ?notSet:GoString) {
        if (c != null) this.c = c;
        if (b != null) this.b = b;
        if (a != null) this.a = a;
        if (notSet != null) this.notSet = notSet;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new RT1(c, b, a, notSet);
    }
}
@:structInit class IT0 {
    public var a : GoInt64 = ((0 : GoInt64));
    public var b : GoString = (("" : GoString));
    public var ignore_d : Slice<GoInt> = ((null : Slice<GoInt>));
    public var ignore_e : GoArray<GoFloat64> = new GoArray<GoFloat64>(...[for (i in 0 ... 3) ((0 : GoFloat64))]);
    public var ignore_f : Bool = false;
    public var ignore_g : GoString = (("" : GoString));
    public var ignore_h : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var ignore_i : RT1 = ((null : RT1));
    public var ignore_m : GoMap<GoString, GoInt> = ((null : GoMap<GoString, GoInt>));
    public var c : GoFloat64 = ((0 : GoFloat64));
    public function new(?a:GoInt64, ?b:GoString, ?ignore_d:Slice<GoInt>, ?ignore_e:GoArray<GoFloat64>, ?ignore_f:Bool, ?ignore_g:GoString, ?ignore_h:Slice<GoUInt8>, ?ignore_i:RT1, ?ignore_m:GoMap<GoString, GoInt>, ?c:GoFloat64) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (ignore_d != null) this.ignore_d = ignore_d;
        if (ignore_e != null) this.ignore_e = ignore_e;
        if (ignore_f != null) this.ignore_f = ignore_f;
        if (ignore_g != null) this.ignore_g = ignore_g;
        if (ignore_h != null) this.ignore_h = ignore_h;
        if (ignore_i != null) this.ignore_i = ignore_i;
        if (ignore_m != null) this.ignore_m = ignore_m;
        if (c != null) this.c = c;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new IT0(a, b, ignore_d, ignore_e, ignore_f, ignore_g, ignore_h, ignore_i, ignore_m, c);
    }
}
@:structInit class Indirect {
    public var a : GoArray<GoInt> = ((null : GoArray<GoInt>));
    public var s : Slice<GoInt> = ((null : Slice<GoInt>));
    public var m : GoMap<GoString, GoInt> = ((null : GoMap<GoString, GoInt>));
    public function new(?a:GoArray<GoInt>, ?s:Slice<GoInt>, ?m:GoMap<GoString, GoInt>) {
        if (a != null) this.a = a;
        if (s != null) this.s = s;
        if (m != null) this.m = m;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Indirect(a, s, m);
    }
}
@:structInit class Direct {
    public var a : GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 3) ((0 : GoInt))]);
    public var s : Slice<GoInt> = ((null : Slice<GoInt>));
    public var m : GoMap<GoString, GoInt> = ((null : GoMap<GoString, GoInt>));
    public function new(?a:GoArray<GoInt>, ?s:Slice<GoInt>, ?m:GoMap<GoString, GoInt>) {
        if (a != null) this.a = a;
        if (s != null) this.s = s;
        if (m != null) this.m = m;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Direct(a, s, m);
    }
}
@:structInit @:using(stdgo.encoding.gob.Gob.Point_static_extension) class Point {
    @:keep
    public function square():GoInt {
        var _p = this;
        (_p == null ? null : _p.__copy__());
        return (_p.x * _p.x) + (_p.y * _p.y);
    }
    public var x : GoInt = ((0 : GoInt));
    public var y : GoInt = ((0 : GoInt));
    public function new(?x:GoInt, ?y:GoInt) {
        if (x != null) this.x = x;
        if (y != null) this.y = y;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Point(x, y);
    }
}
@:structInit class InterfaceItem {
    public var i : GoInt = ((0 : GoInt));
    public var sq1 : Squarer = ((null : Squarer));
    public var sq2 : Squarer = ((null : Squarer));
    public var sq3 : Squarer = ((null : Squarer));
    public var f : GoFloat64 = ((0 : GoFloat64));
    public var sq : Slice<Squarer> = ((null : Slice<Squarer>));
    public function new(?i:GoInt, ?sq1:Squarer, ?sq2:Squarer, ?sq3:Squarer, ?f:GoFloat64, ?sq:Slice<Squarer>) {
        if (i != null) this.i = i;
        if (sq1 != null) this.sq1 = sq1;
        if (sq2 != null) this.sq2 = sq2;
        if (sq3 != null) this.sq3 = sq3;
        if (f != null) this.f = f;
        if (sq != null) this.sq = sq;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new InterfaceItem(i, sq1, sq2, sq3, f, sq);
    }
}
@:structInit class NoInterfaceItem {
    public var i : GoInt = ((0 : GoInt));
    public var f : GoFloat64 = ((0 : GoFloat64));
    public function new(?i:GoInt, ?f:GoFloat64) {
        if (i != null) this.i = i;
        if (f != null) this.f = f;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new NoInterfaceItem(i, f);
    }
}
@:structInit class BasicInterfaceItem {
    public var int : AnyInterface = ((null : AnyInterface));
    public var int8 : AnyInterface = ((null : AnyInterface));
    public var int16 : AnyInterface = ((null : AnyInterface));
    public var int32 : AnyInterface = ((null : AnyInterface));
    public var int64 : AnyInterface = ((null : AnyInterface));
    public var uint : AnyInterface = ((null : AnyInterface));
    public var uint8 : AnyInterface = ((null : AnyInterface));
    public var uint16 : AnyInterface = ((null : AnyInterface));
    public var uint32 : AnyInterface = ((null : AnyInterface));
    public var uint64 : AnyInterface = ((null : AnyInterface));
    public var float32 : AnyInterface = ((null : AnyInterface));
    public var float64 : AnyInterface = ((null : AnyInterface));
    public var complex64 : AnyInterface = ((null : AnyInterface));
    public var complex128 : AnyInterface = ((null : AnyInterface));
    public var bool : AnyInterface = ((null : AnyInterface));
    public var toString : AnyInterface = ((null : AnyInterface));
    public var bytes : AnyInterface = ((null : AnyInterface));
    public function new(?int:AnyInterface, ?int8:AnyInterface, ?int16:AnyInterface, ?int32:AnyInterface, ?int64:AnyInterface, ?uint:AnyInterface, ?uint8:AnyInterface, ?uint16:AnyInterface, ?uint32:AnyInterface, ?uint64:AnyInterface, ?float32:AnyInterface, ?float64:AnyInterface, ?complex64:AnyInterface, ?complex128:AnyInterface, ?bool:AnyInterface, ?toString:AnyInterface, ?bytes:AnyInterface) {
        if (int != null) this.int = int;
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
        if (complex64 != null) this.complex64 = complex64;
        if (complex128 != null) this.complex128 = complex128;
        if (bool != null) this.bool = bool;
        if (toString != null) this.toString = toString;
        if (bytes != null) this.bytes = bytes;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new BasicInterfaceItem(
int,
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
complex64,
complex128,
bool,
toString,
bytes);
    }
}
@:structInit class PtrInterfaceItem {
    public var str1 : AnyInterface = ((null : AnyInterface));
    public var str2 : AnyInterface = ((null : AnyInterface));
    public function new(?str1:AnyInterface, ?str2:AnyInterface) {
        if (str1 != null) this.str1 = str1;
        if (str2 != null) this.str2 = str2;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new PtrInterfaceItem(str1, str2);
    }
}
@:structInit class U {
    public var a : GoInt = ((0 : GoInt));
    public var b : GoString = (("" : GoString));
    public var _c : GoFloat64 = ((0 : GoFloat64));
    public var d : GoUInt = ((0 : GoUInt));
    public function new(?a:GoInt, ?b:GoString, ?_c:GoFloat64, ?d:GoUInt) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (_c != null) this._c = _c;
        if (d != null) this.d = d;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new U(a, b, _c, d);
    }
}
@:structInit class OnTheFly {
    public var a : GoInt = ((0 : GoInt));
    public function new(?a:GoInt) {
        if (a != null) this.a = a;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new OnTheFly(a);
    }
}
@:structInit class DT {
    public var a : GoInt = ((0 : GoInt));
    public var b : GoString = (("" : GoString));
    public var c : GoFloat64 = ((0 : GoFloat64));
    public var i : AnyInterface = ((null : AnyInterface));
    public var j : AnyInterface = ((null : AnyInterface));
    public var i_nil : AnyInterface = ((null : AnyInterface));
    public var m : GoMap<GoString, GoInt> = ((null : GoMap<GoString, GoInt>));
    public var t : GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 3) ((0 : GoInt))]);
    public var s : Slice<GoString> = ((null : Slice<GoString>));
    public function new(?a:GoInt, ?b:GoString, ?c:GoFloat64, ?i:AnyInterface, ?j:AnyInterface, ?i_nil:AnyInterface, ?m:GoMap<GoString, GoInt>, ?t:GoArray<GoInt>, ?s:Slice<GoString>) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (c != null) this.c = c;
        if (i != null) this.i = i;
        if (j != null) this.j = j;
        if (i_nil != null) this.i_nil = i_nil;
        if (m != null) this.m = m;
        if (t != null) this.t = t;
        if (s != null) this.s = s;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new DT(a, b, c, i, j, i_nil, m, t, s);
    }
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_decoderState_static_extension) class T_decoderState {
    @:keep
    public function _getLength():{ var _0 : GoInt; var _1 : Bool; } {
        var _state = this;
        _state;
        var _n:GoInt = ((_state._decodeUint() : GoInt));
        if (((_n < ((0 : GoInt))) || (_state._b.len() < _n)) || (((1073741824 : GoInt)) <= _n)) {
            return { _0 : ((0 : GoInt)), _1 : false };
        };
        return { _0 : _n, _1 : true };
    }
    @:keep
    public function _decodeInt():GoInt64 {
        var _state = this;
        _state;
        var _x:GoUInt64 = _state._decodeUint();
        if ((_x & ((1 : GoUInt64))) != ((0 : GoUInt64))) {
            return (-1 ^ (((_x >> ((1 : GoUnTypedInt))) : GoInt64)));
        };
        return (((_x >> ((1 : GoUnTypedInt))) : GoInt64));
    }
    @:keep
    public function _decodeUint():GoUInt64 {
        var _state = this;
        _state;
        var _x:GoUInt64 = ((0 : GoUInt64));
        var __tmp__ = _state._b.readByte(), _b:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _error_(_err);
        };
        if (_b <= ((127 : GoUInt8))) {
            return ((_b : GoUInt64));
        };
        var _n:GoInt = -((((_b : GoInt8)) : GoInt));
        if (_n > ((8 : GoInt))) {
            _error_(_errBadUint);
        };
        var _buf:Slice<GoUInt8> = _state._b.bytes();
        if ((_buf != null ? _buf.length : ((0 : GoInt))) < _n) {
            _errorf(((("invalid uint data length %d: exceeds input size %d" : GoString))), Go.toInterface(_n), Go.toInterface((_buf != null ? _buf.length : ((0 : GoInt)))));
        };
        for (_0 => _b in _buf.__slice__(((0 : GoInt)), _n)) {
            _x = (_x << ((8 : GoUnTypedInt))) | ((_b : GoUInt64));
        };
        _state._b.drop(_n);
        return _x;
    }
    public var _dec : Decoder = ((null : Decoder));
    public var _b : T_decBuffer = ((null : T_decBuffer));
    public var _fieldnum : GoInt = ((0 : GoInt));
    public var _next : T_decoderState = ((null : T_decoderState));
    public function new(?_dec:Decoder, ?_b:T_decBuffer, ?_fieldnum:GoInt, ?_next:T_decoderState) {
        if (_dec != null) this._dec = _dec;
        if (_b != null) this._b = _b;
        if (_fieldnum != null) this._fieldnum = _fieldnum;
        if (_next != null) this._next = _next;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_decoderState(_dec, _b, _fieldnum, _next);
    }
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_decBuffer_static_extension) class T_decBuffer {
    @:keep
    public function reset():Void {
        var _d = this;
        _d;
        _d._data = _d._data.__slice__(((0 : GoInt)), ((0 : GoInt)));
        _d._offset = ((0 : GoInt));
    }
    @:keep
    public function bytes():Slice<GoByte> {
        var _d = this;
        _d;
        return _d._data.__slice__(_d._offset);
    }
    @:keep
    public function len():GoInt {
        var _d = this;
        _d;
        return (_d._data != null ? _d._data.length : ((0 : GoInt))) - _d._offset;
    }
    @:keep
    public function readByte():{ var _0 : GoByte; var _1 : Error; } {
        var _d = this;
        _d;
        if (_d._offset >= (_d._data != null ? _d._data.length : ((0 : GoInt)))) {
            return { _0 : ((0 : GoUInt8)), _1 : stdgo.io.Io.eof };
        };
        var _c:GoUInt8 = (_d._data != null ? _d._data[_d._offset] : ((0 : GoUInt8)));
        _d._offset++;
        return { _0 : _c, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function size(_n:GoInt):Void {
        var _d = this;
        _d;
        _d.reset();
        if ((_d._data != null ? _d._data.cap() : ((0 : GoInt))) < _n) {
            _d._data = new Slice<GoUInt8>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoUInt8))]);
        } else {
            _d._data = _d._data.__slice__(((0 : GoInt)), _n);
        };
    }
    @:keep
    public function drop(_n:GoInt):Void {
        var _d = this;
        _d;
        if (_n > _d.len()) {
            throw Go.toInterface(((("drop" : GoString))));
        };
        _d._offset = _d._offset + (_n);
    }
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _d = this;
        _d;
        var _n:GoInt = Go.copySlice(_p, _d._data.__slice__(_d._offset));
        if ((_n == ((0 : GoInt))) && ((_p != null ? _p.length : ((0 : GoInt))) != ((0 : GoInt)))) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.eof };
        };
        _d._offset = _d._offset + (_n);
        return { _0 : _n, _1 : ((null : stdgo.Error)) };
    }
    public var _data : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _offset : GoInt = ((0 : GoInt));
    public function new(?_data:Slice<GoUInt8>, ?_offset:GoInt) {
        if (_data != null) this._data = _data;
        if (_offset != null) this._offset = _offset;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_decBuffer(_data, _offset);
    }
}
@:structInit class T_decInstr {
    public var _op : T_decOp = ((null : T_decOp));
    public var _field : GoInt = ((0 : GoInt));
    public var _index : Slice<GoInt> = ((null : Slice<GoInt>));
    public var _ovfl : stdgo.Error = ((null : stdgo.Error));
    public function new(?_op:T_decOp, ?_field:GoInt, ?_index:Slice<GoInt>, ?_ovfl:stdgo.Error) {
        if (_op != null) this._op = _op;
        if (_field != null) this._field = _field;
        if (_index != null) this._index = _index;
        if (_ovfl != null) this._ovfl = _ovfl;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_decInstr(_op, _field, _index, _ovfl);
    }
}
@:structInit class T_decEngine {
    public var _instr : Slice<T_decInstr> = ((null : Slice<T_decInstr>));
    public var _numInstr : GoInt = ((0 : GoInt));
    public function new(?_instr:Slice<T_decInstr>, ?_numInstr:GoInt) {
        if (_instr != null) this._instr = _instr;
        if (_numInstr != null) this._numInstr = _numInstr;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_decEngine(_instr, _numInstr);
    }
}
function _toInt(_x:GoUInt64):GoInt64 {
    var _i:GoInt64 = (((_x >> ((1 : GoUnTypedInt))) : GoInt64));
    if ((_x & ((1 : GoUInt64))) != ((0 : GoUInt64))) {
        _i = (-1 ^ _i);
    };
    return _i;
}
@:structInit class T_emptyStruct {
    public function new() {}
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_emptyStruct();
    }
}
@:structInit @:using(stdgo.encoding.gob.Gob.Decoder_static_extension) class Decoder {
    @:keep
    public function decodeValue(_v:stdgo.reflect.Reflect.Value):Error {
        var _dec = this;
        _dec;
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        if (_v.isValid()) {
            if ((_v.kind() == ((22 : GoUInt))) && !_v.isNil()) {} else if (!_v.canSet()) {
                return stdgo.errors.Errors.new_(((("gob: DecodeValue of unassignable value" : GoString))));
            };
        };
        try {
            _dec._mutex.lock();
            __deferstack__.unshift(() -> _dec._mutex.unlock());
            _dec._buf.reset();
            _dec._err = ((null : stdgo.Error));
            var _id:T_typeId = _dec._decodeTypeSequence(false);
            if (_dec._err == null) {
                _dec._decodeValue(_id, (_v == null ? null : _v.__copy__()));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _dec._err;
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return ((null : stdgo.Error));
            };
        };
    }
    @:keep
    public function decode(_e:AnyInterface):Error {
        var _dec = this;
        _dec;
        if (_e == null) {
            return _dec.decodeValue(((new stdgo.reflect.Reflect.Value() : stdgo.reflect.Reflect.Value)));
        };
        var _value:stdgo.reflect.Reflect.Value = (stdgo.reflect.Reflect.valueOf(Go.toInterface(_e)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_e)).__copy__());
        if (_value.type().kind() != ((22 : GoUInt))) {
            _dec._err = stdgo.errors.Errors.new_(((("gob: attempt to decode into a non-pointer" : GoString))));
            return _dec._err;
        };
        return _dec.decodeValue((_value == null ? null : _value.__copy__()));
    }
    @:keep
    public function _decodeTypeSequence(_isInterface:Bool):T_typeId {
        var _dec = this;
        _dec;
        var _firstMessage:Bool = true;
        while (_dec._err == null) {
            if (_dec._buf.len() == ((0 : GoInt))) {
                if (!_dec._recvMessage()) {
                    if (!_firstMessage && (_dec._err == stdgo.io.Io.eof)) {
                        _dec._err = stdgo.io.Io.errUnexpectedEOF;
                    };
                    break;
                };
            };
            var _id:T_typeId = ((_dec._nextInt() : T_typeId));
            if (_id >= ((0 : GoInt32))) {
                return _id;
            };
            _dec._recvType(-_id);
            if (_dec._err != null) {
                break;
            };
            if (_dec._buf.len() > ((0 : GoInt))) {
                if (!_isInterface) {
                    _dec._err = stdgo.errors.Errors.new_(((("extra data in buffer" : GoString))));
                    break;
                };
                _dec._nextUint();
            };
            _firstMessage = false;
        };
        return ((-1 : GoInt32));
    }
    @:keep
    public function _nextUint():GoUInt64 {
        var _dec = this;
        _dec;
        var __tmp__ = _decodeUintReader(_dec._buf, _dec._countBuf), _n:GoUInt64 = __tmp__._0, _0:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            _dec._err = _err;
        };
        return _n;
    }
    @:keep
    public function _nextInt():GoInt64 {
        var _dec = this;
        _dec;
        var __tmp__ = _decodeUintReader(_dec._buf, _dec._countBuf), _n:GoUInt64 = __tmp__._0, _0:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            _dec._err = _err;
        };
        return _toInt(_n);
    }
    @:keep
    public function _readMessage(_nbytes:GoInt):Void {
        var _dec = this;
        _dec;
        if (_dec._buf.len() != ((0 : GoInt))) {
            throw Go.toInterface(((("non-empty decoder buffer" : GoString))));
        };
        _dec._buf.size(_nbytes);
        {
            var __tmp__ = stdgo.io.Io.readFull(_dec._r, _dec._buf.bytes());
            _dec._err = __tmp__._1;
        };
        if (_dec._err == stdgo.io.Io.eof) {
            _dec._err = stdgo.io.Io.errUnexpectedEOF;
        };
    }
    @:keep
    public function _recvMessage():Bool {
        var _dec = this;
        _dec;
        var __tmp__ = _decodeUintReader(_dec._r, _dec._countBuf), _nbytes:GoUInt64 = __tmp__._0, _0:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            _dec._err = _err;
            return false;
        };
        if (_nbytes >= ((1073741824 : GoUInt64))) {
            _dec._err = _errBadCount;
            return false;
        };
        _dec._readMessage(((_nbytes : GoInt)));
        return _dec._err == null;
    }
    @:keep
    public function _recvType(_id:T_typeId):Void {
        var _dec = this;
        _dec;
        if ((_id < ((64 : GoInt32))) || ((_dec._wireType != null ? _dec._wireType[_id] : ((null : T_wireType))) != null)) {
            _dec._err = stdgo.errors.Errors.new_(((("gob: duplicate type received" : GoString))));
            return;
        };
        var _wire:T_wireType = new T_wireType();
        _dec._decodeValue(_tWireType, (stdgo.reflect.Reflect.valueOf(Go.toInterface(_wire)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_wire)).__copy__()));
        if (_dec._err != null) {
            return;
        };
        if (_dec._wireType != null) _dec._wireType[_id] = _wire;
    }
    @:keep
    public function _decodeIgnoredValue(_wireId:T_typeId):Void {
        var _dec = this;
        _dec;
        var _enginePtr:T_decEngine = ((null : T_decEngine));
        {
            var __tmp__ = _dec._getIgnoreEnginePtr(_wireId);
            _enginePtr = __tmp__._0;
            _dec._err = __tmp__._1;
        };
        if (_dec._err != null) {
            return;
        };
        var _wire:T_wireType = (_dec._wireType != null ? _dec._wireType[_wireId] : ((null : T_wireType)));
        if ((_wire != null) && (_wire.structT != null)) {
            _dec._ignoreStruct(_enginePtr);
        } else {
            _dec._ignoreSingle(_enginePtr);
        };
    }
    @:keep
    public function _decodeValue(_wireId:T_typeId, _value:stdgo.reflect.Reflect.Value):Void {
        var _dec = this;
        _dec;
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = _dec._err;
                __deferstack__.unshift(() -> _catchError(_a0));
            };
            if (!_value.isValid()) {
                _dec._decodeIgnoredValue(_wireId);
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            var _ut:T_userTypeInfo = _userType(_value.type());
            var _base:stdgo.reflect.Reflect.Type = _ut._base;
            var _enginePtr:T_decEngine = ((null : T_decEngine));
            {
                var __tmp__ = _dec._getDecEnginePtr(_wireId, _ut);
                _enginePtr = __tmp__._0;
                _dec._err = __tmp__._1;
            };
            if (_dec._err != null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            _value = (_decAlloc((_value == null ? null : _value.__copy__())) == null ? null : _decAlloc((_value == null ? null : _value.__copy__())).__copy__());
            var _engine:T_decEngine = _enginePtr;
            {
                var _st:stdgo.reflect.Reflect.Type = _base;
                if ((_st.kind() == ((25 : GoUInt))) && (_ut._externalDec == ((0 : GoInt)))) {
                    var _wt:T_wireType = (_dec._wireType != null ? _dec._wireType[_wireId] : ((null : T_wireType)));
                    if ((((_engine._numInstr == ((0 : GoInt))) && (_st.numField() > ((0 : GoInt)))) && (_wt != null)) && ((_wt.structT.field != null ? _wt.structT.field.length : ((0 : GoInt))) > ((0 : GoInt)))) {
                        var _name:GoString = _base.name();
                        _errorf(((("type mismatch: no fields matched compiling decoder for %s" : GoString))), Go.toInterface(_name));
                    };
                    _dec._decodeStruct(_engine, (_value == null ? null : _value.__copy__()));
                } else {
                    _dec._decodeSingle(_engine, (_value == null ? null : _value.__copy__()));
                };
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
    @:keep
    public function _getIgnoreEnginePtr(_wireId:T_typeId):{ var _0 : T_decEngine; var _1 : Error; } {
        var _dec = this;
        _dec;
        var _enginePtr:T_decEngine = ((null : T_decEngine)), _err:Error = ((null : stdgo.Error));
        var _ok:Bool = false;
        {
            {
                var __tmp__ = (_dec._ignorerCache != null && _dec._ignorerCache.__exists__(_wireId) ? { value : _dec._ignorerCache[_wireId], ok : true } : { value : ((null : T_decEngine)), ok : false });
                _enginePtr = __tmp__.value;
                _ok = __tmp__.ok;
            };
            if (!_ok) {
                _enginePtr = ((null : T_decEngine));
                if (_dec._ignorerCache != null) _dec._ignorerCache[_wireId] = _enginePtr;
                var _wire:T_wireType = (_dec._wireType != null ? _dec._wireType[_wireId] : ((null : T_wireType)));
                if ((_wire != null) && (_wire.structT != null)) {
                    {
                        var __tmp__ = _dec._compileDec(_wireId, _userType(_emptyStructType));
                        _enginePtr = __tmp__._0;
                        _err = __tmp__._1;
                    };
                } else {
                    {
                        var __tmp__ = _dec._compileIgnoreSingle(_wireId);
                        _enginePtr._instr = __tmp__._instr;
                        _enginePtr._numInstr = __tmp__._numInstr;
                    };
                };
                if (_err != null) {
                    if (_dec._ignorerCache != null) _dec._ignorerCache.__remove__(_wireId);
                };
            };
        };
        return { _0 : _enginePtr, _1 : _err };
    }
    @:keep
    public function _getDecEnginePtr(_remoteId:T_typeId, _ut:T_userTypeInfo):{ var _0 : T_decEngine; var _1 : Error; } {
        var _dec = this;
        _dec;
        var _enginePtr:T_decEngine = ((null : T_decEngine)), _err:Error = ((null : stdgo.Error));
        var _rt:stdgo.reflect.Reflect.Type = _ut._user;
        var __tmp__ = (_dec._decoderCache != null && _dec._decoderCache.__exists__(_rt) ? { value : _dec._decoderCache[_rt], ok : true } : { value : ((null : GoMap<T_typeId, T_decEngine>)), ok : false }), _decoderMap:GoMap<T_typeId, T_decEngine> = __tmp__.value, _ok:Bool = __tmp__.ok;
        if (!_ok) {
            _decoderMap = new Map<Int, T_decEngine>();
            if (_dec._decoderCache != null) _dec._decoderCache[_rt] = _decoderMap;
        };
        {
            {
                var __tmp__ = (_decoderMap != null && _decoderMap.__exists__(_remoteId) ? { value : _decoderMap[_remoteId], ok : true } : { value : ((null : T_decEngine)), ok : false });
                _enginePtr = __tmp__.value;
                _ok = __tmp__.ok;
            };
            if (!_ok) {
                _enginePtr = ((null : T_decEngine));
                if (_decoderMap != null) _decoderMap[_remoteId] = _enginePtr;
                {
                    var __tmp__ = _dec._compileDec(_remoteId, _ut);
                    _enginePtr = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    if (_decoderMap != null) _decoderMap.__remove__(_remoteId);
                };
            };
        };
        return { _0 : _enginePtr, _1 : _err };
    }
    @:keep
    public function _compileDec(_remoteId:T_typeId, _ut:T_userTypeInfo):{ var _0 : T_decEngine; var _1 : Error; } {
        var _dec = this;
        _dec;
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        var _engine:T_decEngine = ((null : T_decEngine)), _err:Error = ((null : stdgo.Error));
        {
            var _a0 = _err;
            __deferstack__.unshift(() -> _catchError(_a0));
        };
        try {
            var _rt:stdgo.reflect.Reflect.Type = _ut._base;
            var _srt:stdgo.reflect.Reflect.Type = _rt;
            if ((_srt.kind() != ((25 : GoUInt))) || (_ut._externalDec != ((0 : GoInt)))) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return _dec._compileSingle(_remoteId, _ut);
                };
            };
            var _wireStruct:T_structType = ((null : T_structType));
            {
                var __tmp__ = (_builtinIdToType != null && _builtinIdToType.__exists__(_remoteId) ? { value : _builtinIdToType[_remoteId], ok : true } : { value : ((null : T_gobType)), ok : false }), _t:T_gobType = __tmp__.value, _ok:Bool = __tmp__.ok;
                if (_ok) {
                    {
                        var __tmp__ = try {
                            { value : ((((_t.__underlying__().value : Dynamic)) : T_structType)), ok : true };
                        } catch(_) {
                            { value : ((null : T_structType)), ok : false };
                        };
                        _wireStruct = __tmp__.value;
                    };
                } else {
                    var _wire:T_wireType = (_dec._wireType != null ? _dec._wireType[_remoteId] : ((null : T_wireType)));
                    if (_wire == null) {
                        _error_(_errBadType);
                    };
                    _wireStruct = _wire.structT;
                };
            };
            if (_wireStruct == null) {
                _errorf(((("type mismatch in decoder: want struct type %s; got non-struct" : GoString))), Go.toInterface(_rt));
            };
            _engine = new T_decEngine();
            _engine._instr = new Slice<T_decInstr>(...[for (i in 0 ... (((_wireStruct.field != null ? _wireStruct.field.length : ((0 : GoInt))) : GoInt)).toBasic()) new T_decInstr()]);
            var _seen:GoMap<stdgo.reflect.Reflect.Type, T_decOp> = new GoObjectMap<stdgo.reflect.Reflect.Type, T_decOp>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("stdgo.reflect.Reflect.Type", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])), stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("T_decOp", [], stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType))))));
            {
                var _fieldnum:GoInt = ((0 : GoInt));
                Go.cfor(_fieldnum < (_wireStruct.field != null ? _wireStruct.field.length : ((0 : GoInt))), _fieldnum++, {
                    var _wireField:T_fieldType = (_wireStruct.field != null ? _wireStruct.field[_fieldnum] : ((null : T_fieldType)));
                    if (_wireField.name == ("")) {
                        _errorf(((("empty name for remote field of type %s" : GoString))), Go.toInterface(_wireStruct.name));
                    };
                    var _ovfl:stdgo.Error = _overflow(_wireField.name);
                    var __tmp__ = _srt.fieldByName(_wireField.name), _localField:stdgo.reflect.Reflect.StructField = __tmp__._0, _present:Bool = __tmp__._1;
                    if (!_present || !_isExported(_wireField.name)) {
                        var _op:T_decOp = _dec._decIgnoreOpFor(_wireField.id, new Map<Int, T_decOp>());
                        if (_engine._instr != null) _engine._instr[_fieldnum] = ((new T_decInstr(_op, _fieldnum, ((null : Slice<GoInt>)), _ovfl) : T_decInstr));
                        continue;
                    };
                    if (!_dec._compatibleType(_localField.type, _wireField.id, new GoObjectMap<stdgo.reflect.Reflect.Type, T_typeId>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("stdgo.reflect.Reflect.Type", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])), stdgo.reflect.Reflect.GoType.named("T_typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind))))))) {
                        _errorf(((("wrong type (%s) for received field %s.%s" : GoString))), Go.toInterface(_localField.type), Go.toInterface(_wireStruct.name), Go.toInterface(_wireField.name));
                    };
                    var _op:T_decOp = _dec._decOpFor(_wireField.id, _localField.type, _localField.name, _seen);
                    if (_engine._instr != null) _engine._instr[_fieldnum] = ((new T_decInstr(_op, _fieldnum, _localField.index, _ovfl) : T_decInstr));
                    _engine._numInstr++;
                });
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return { _0 : _engine, _1 : _err };
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return { _0 : _engine, _1 : _err };
            };
        };
    }
    @:keep
    public function _compileIgnoreSingle(_remoteId:T_typeId):T_decEngine {
        var _dec = this;
        _dec;
        var _engine:T_decEngine = new T_decEngine();
        _engine._instr = new Slice<T_decInstr>(...[for (i in 0 ... ((((1 : GoInt)) : GoInt)).toBasic()) new T_decInstr()]);
        var _op:T_decOp = _dec._decIgnoreOpFor(_remoteId, new Map<Int, T_decOp>());
        var _ovfl:stdgo.Error = _overflow(_dec._typeString(_remoteId));
        if (_engine._instr != null) _engine._instr[((0 : GoInt))] = ((new T_decInstr(_op, ((0 : GoInt)), ((null : Slice<GoInt>)), _ovfl) : T_decInstr));
        _engine._numInstr = ((1 : GoInt));
        return _engine;
    }
    @:keep
    public function _compileSingle(_remoteId:T_typeId, _ut:T_userTypeInfo):{ var _0 : T_decEngine; var _1 : Error; } {
        var _dec = this;
        _dec;
        var _engine:T_decEngine = ((null : T_decEngine)), _err:Error = ((null : stdgo.Error));
        var _rt:stdgo.reflect.Reflect.Type = _ut._user;
        _engine = new T_decEngine();
        _engine._instr = new Slice<T_decInstr>(...[for (i in 0 ... ((((1 : GoInt)) : GoInt)).toBasic()) new T_decInstr()]);
        var _name:GoString = ((_rt.toString() : GoString));
        if (!_dec._compatibleType(_rt, _remoteId, new GoObjectMap<stdgo.reflect.Reflect.Type, T_typeId>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("stdgo.reflect.Reflect.Type", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])), stdgo.reflect.Reflect.GoType.named("T_typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind))))))) {
            var _remoteType:GoString = _dec._typeString(_remoteId);
            if ((_ut._base.kind() == ((20 : GoUInt))) && (_remoteId != _tInterface)) {
                return { _0 : null, _1 : stdgo.errors.Errors.new_(((((("gob: local interface type " : GoString))) + _name) + (((" can only be decoded from remote interface type; received concrete type " : GoString)))) + _remoteType) };
            };
            return { _0 : null, _1 : stdgo.errors.Errors.new_(((((("gob: decoding into local type " : GoString))) + _name) + (((", received remote type " : GoString)))) + _remoteType) };
        };
        var _op:T_decOp = _dec._decOpFor(_remoteId, _rt, _name, new GoObjectMap<stdgo.reflect.Reflect.Type, T_decOp>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("stdgo.reflect.Reflect.Type", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])), stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("T_decOp", [], stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)))))));
        var _ovfl:stdgo.Error = stdgo.errors.Errors.new_(((("value for \"" : GoString)) + _name) + (("\" out of range" : GoString)));
        if (_engine._instr != null) _engine._instr[((0 : GoInt))] = ((new T_decInstr(_op, ((0 : GoInt)), ((null : Slice<GoInt>)), _ovfl) : T_decInstr));
        _engine._numInstr = ((1 : GoInt));
        return { _0 : _engine, _1 : _err };
    }
    @:keep
    public function _typeString(_remoteId:T_typeId):GoString {
        var _dec = this;
        _dec;
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        _typeLock.lock();
        try {
            __deferstack__.unshift(() -> _typeLock.unlock());
            {
                var _t:T_gobType = (_idToType != null ? _idToType[_remoteId] : ((null : T_gobType)));
                if (_t != null) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return _t._string();
                    };
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return (_dec._wireType != null ? _dec._wireType[_remoteId] : ((null : T_wireType)))._string();
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return (("" : GoString));
            };
        };
    }
    @:keep
    public function _compatibleType(_fr:stdgo.reflect.Reflect.Type, _fw:T_typeId, _inProgress:GoMap<stdgo.reflect.Reflect.Type, T_typeId>):Bool {
        var _dec = this;
        _dec;
        {
            var __tmp__ = (_inProgress != null && _inProgress.__exists__(_fr) ? { value : _inProgress[_fr], ok : true } : { value : new T_typeId(), ok : false }), _rhs:T_typeId = __tmp__.value, _ok:Bool = __tmp__.ok;
            if (_ok) {
                return _rhs == _fw;
            };
        };
        if (_inProgress != null) _inProgress[_fr] = _fw;
        var _ut:T_userTypeInfo = _userType(_fr);
        var __tmp__ = (_dec._wireType != null && _dec._wireType.__exists__(_fw) ? { value : _dec._wireType[_fw], ok : true } : { value : ((null : T_wireType)), ok : false }), _wire:T_wireType = __tmp__.value, _ok:Bool = __tmp__.ok;
        if ((((_ut._externalDec == ((1 : GoInt))) != (_ok && (_wire.gobEncoderT != null))) || ((_ut._externalDec == ((2 : GoInt))) != (_ok && (_wire.binaryMarshalerT != null)))) || ((_ut._externalDec == ((3 : GoInt))) != (_ok && (_wire.textMarshalerT != null)))) {
            return false;
        };
        if (_ut._externalDec != ((0 : GoInt))) {
            return true;
        };
        {
            var _t:stdgo.reflect.Reflect.Type = _ut._base;
            if (_t.kind() == ((1 : GoUInt))) {
                return _fw == _tBool;
            } else if (_t.kind() == ((2 : GoUInt)) || _t.kind() == ((3 : GoUInt)) || _t.kind() == ((4 : GoUInt)) || _t.kind() == ((5 : GoUInt)) || _t.kind() == ((6 : GoUInt))) {
                return _fw == _tInt;
            } else if (_t.kind() == ((7 : GoUInt)) || _t.kind() == ((8 : GoUInt)) || _t.kind() == ((9 : GoUInt)) || _t.kind() == ((10 : GoUInt)) || _t.kind() == ((11 : GoUInt)) || _t.kind() == ((12 : GoUInt))) {
                return _fw == _tUint;
            } else if (_t.kind() == ((13 : GoUInt)) || _t.kind() == ((14 : GoUInt))) {
                return _fw == _tFloat;
            } else if (_t.kind() == ((15 : GoUInt)) || _t.kind() == ((16 : GoUInt))) {
                return _fw == _tComplex;
            } else if (_t.kind() == ((24 : GoUInt))) {
                return _fw == _tString;
            } else if (_t.kind() == ((20 : GoUInt))) {
                return _fw == _tInterface;
            } else if (_t.kind() == ((17 : GoUInt))) {
                if (!_ok || (_wire.arrayT == null)) {
                    return false;
                };
                var _array:T_arrayType = _wire.arrayT;
                return (_t.len() == _array.len) && _dec._compatibleType(_t.elem(), _array.elem, _inProgress);
            } else if (_t.kind() == ((21 : GoUInt))) {
                if (!_ok || (_wire.mapT == null)) {
                    return false;
                };
                var mapType:T_mapType = _wire.mapT;
                return _dec._compatibleType(_t.key(), mapType.key, _inProgress) && _dec._compatibleType(_t.elem(), mapType.elem, _inProgress);
            } else if (_t.kind() == ((23 : GoUInt))) {
                if (_t.elem().kind() == ((8 : GoUInt))) {
                    return _fw == _tBytes;
                };
                var _sw:T_sliceType = ((null : T_sliceType));
                {
                    var __tmp__ = (_builtinIdToType != null && _builtinIdToType.__exists__(_fw) ? { value : _builtinIdToType[_fw], ok : true } : { value : ((null : T_gobType)), ok : false }), _tt:T_gobType = __tmp__.value, _ok:Bool = __tmp__.ok;
                    if (_ok) {
                        {
                            var __tmp__ = try {
                                { value : ((((_tt.__underlying__().value : Dynamic)) : T_sliceType)), ok : true };
                            } catch(_) {
                                { value : ((null : T_sliceType)), ok : false };
                            };
                            _sw = __tmp__.value;
                        };
                    } else if (_wire != null) {
                        _sw = _wire.sliceT;
                    };
                };
                var _elem:stdgo.reflect.Reflect.Type = _userType(_t.elem())._base;
                return (_sw != null) && _dec._compatibleType(_elem, _sw.elem, _inProgress);
            } else if (_t.kind() == ((25 : GoUInt))) {
                return true;
            };
        };
    }
    @:keep
    public function _gobDecodeOpFor(_ut:T_userTypeInfo):T_decOp {
        var _dec = this;
        _dec;
        var _rcvrType:stdgo.reflect.Reflect.Type = _ut._user;
        if (_ut._decIndir == ((-1 : GoInt8))) {
            _rcvrType = stdgo.reflect.Reflect.pointerTo(_rcvrType);
        } else if (_ut._decIndir > ((0 : GoInt8))) {
            {
                var _i:GoInt8 = ((((0 : GoInt8)) : GoInt8));
                Go.cfor(_i < _ut._decIndir, _i++, {
                    _rcvrType = _rcvrType.elem();
                });
            };
        };
        var _op:T_decOp = ((null : T_decOp));
        _op = function(_i:T_decInstr, _state:T_decoderState, _value:stdgo.reflect.Reflect.Value):Void {
            if ((_value.kind() != ((22 : GoUInt))) && (_rcvrType.kind() == ((22 : GoUInt)))) {
                _value = (_value.addr() == null ? null : _value.addr().__copy__());
            };
            _state._dec._decodeGobDecoder(_ut, _state, (_value == null ? null : _value.__copy__()));
        };
        return _op;
    }
    @:keep
    public function _decIgnoreOpFor(_wireId:T_typeId, _inProgress:GoMap<T_typeId, T_decOp>):T_decOp {
        var _dec = this;
        _dec;
        {
            var _opPtr:T_decOp = (_inProgress != null ? _inProgress[_wireId] : ((null : T_decOp)));
            if (_opPtr != null) {
                return _opPtr;
            };
        };
        var __tmp__ = (_decIgnoreOpMap != null && _decIgnoreOpMap.__exists__(_wireId) ? { value : _decIgnoreOpMap[_wireId], ok : true } : { value : ((null : T_decOp)), ok : false }), _op:T_decOp = __tmp__.value, _ok:Bool = __tmp__.ok;
        if (!_ok) {
            if (_inProgress != null) _inProgress[_wireId] = _op;
            if (_wireId == _tInterface) {
                _op = function(_i:T_decInstr, _state:T_decoderState, _value:stdgo.reflect.Reflect.Value):Void {
                    _state._dec._ignoreInterface(_state);
                };
                return _op;
            };
            var _wire:T_wireType = (_dec._wireType != null ? _dec._wireType[_wireId] : ((null : T_wireType)));
            if (_wire == null) {
                _errorf(((("bad data: undefined type %s" : GoString))), Go.toInterface(_wireId._string()));
            } else if (_wire.arrayT != null) {
                var _elemId:T_typeId = _wire.arrayT.elem;
                var _elemOp:T_decOp = _dec._decIgnoreOpFor(_elemId, _inProgress);
                _op = function(_i:T_decInstr, _state:T_decoderState, _value:stdgo.reflect.Reflect.Value):Void {
                    _state._dec._ignoreArray(_state, _elemOp, _wire.arrayT.len);
                };
            } else if (_wire.mapT != null) {
                var _keyId:T_typeId = (_dec._wireType != null ? _dec._wireType[_wireId] : ((null : T_wireType))).mapT.key;
                var _elemId:T_typeId = (_dec._wireType != null ? _dec._wireType[_wireId] : ((null : T_wireType))).mapT.elem;
                var _keyOp:T_decOp = _dec._decIgnoreOpFor(_keyId, _inProgress);
                var _elemOp:T_decOp = _dec._decIgnoreOpFor(_elemId, _inProgress);
                _op = function(_i:T_decInstr, _state:T_decoderState, _value:stdgo.reflect.Reflect.Value):Void {
                    _state._dec._ignoreMap(_state, _keyOp, _elemOp);
                };
            } else if (_wire.sliceT != null) {
                var _elemId:T_typeId = _wire.sliceT.elem;
                var _elemOp:T_decOp = _dec._decIgnoreOpFor(_elemId, _inProgress);
                _op = function(_i:T_decInstr, _state:T_decoderState, _value:stdgo.reflect.Reflect.Value):Void {
                    _state._dec._ignoreSlice(_state, _elemOp);
                };
            } else if (_wire.structT != null) {
                var __tmp__ = _dec._getIgnoreEnginePtr(_wireId), _enginePtr:T_decEngine = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _error_(_err);
                };
                _op = function(_i:T_decInstr, _state:T_decoderState, _value:stdgo.reflect.Reflect.Value):Void {
                    _state._dec._ignoreStruct(_enginePtr);
                };
            } else if (_wire.gobEncoderT != null || _wire.binaryMarshalerT != null || _wire.textMarshalerT != null) {
                _op = function(_i:T_decInstr, _state:T_decoderState, _value:stdgo.reflect.Reflect.Value):Void {
                    _state._dec._ignoreGobDecoder(_state);
                };
            };
        };
        if (_op == null) {
            _errorf(((("bad data: ignore can\'t handle type %s" : GoString))), Go.toInterface(_wireId._string()));
        };
        return _op;
    }
    @:keep
    public function _decOpFor(_wireId:T_typeId, _rt:stdgo.reflect.Reflect.Type, _name:GoString, _inProgress:GoMap<stdgo.reflect.Reflect.Type, T_decOp>):T_decOp {
        var _dec = this;
        _dec;
        var _ut:T_userTypeInfo = _userType(_rt);
        if (_ut._externalDec != ((0 : GoInt))) {
            return _dec._gobDecodeOpFor(_ut);
        };
        {
            var _opPtr:T_decOp = (_inProgress != null ? _inProgress[_rt] : ((null : T_decOp)));
            if (_opPtr != null) {
                return _opPtr;
            };
        };
        var _typ:stdgo.reflect.Reflect.Type = _ut._base;
        var _op:T_decOp = ((null : T_decOp));
        var _k:stdgo.reflect.Reflect.Kind = _typ.kind();
        if (((_k : GoInt)) < (_decOpTable != null ? _decOpTable.length : ((0 : GoInt)))) {
            _op = (_decOpTable != null ? _decOpTable[_k] : ((null : T_decOp)));
        };
        if (_op == null) {
            if (_inProgress != null) _inProgress[_rt] = _op;
            {
                var _t:stdgo.reflect.Reflect.Type = _typ;
                {
                    var __switchIndex__ = -1;
                    while (true) {
                        if (_t.kind() == ((17 : GoUInt))) {
                            _name = ((("element of " : GoString))) + _name;
                            var _elemId:T_typeId = (_dec._wireType != null ? _dec._wireType[_wireId] : ((null : T_wireType))).arrayT.elem;
                            var _elemOp:T_decOp = _dec._decOpFor(_elemId, _t.elem(), _name, _inProgress);
                            var _ovfl:stdgo.Error = _overflow(_name);
                            var _helper:T_decHelper = (_decArrayHelper != null ? _decArrayHelper[_t.elem().kind()] : ((null : T_decHelper)));
                            _op = function(_i:T_decInstr, _state:T_decoderState, _value:stdgo.reflect.Reflect.Value):Void {
                                _state._dec._decodeArray(_state, (_value == null ? null : _value.__copy__()), _elemOp, _t.len(), _ovfl, _helper);
                            };
                            break;
                        } else if (_t.kind() == ((21 : GoUInt))) {
                            var _keyId:T_typeId = (_dec._wireType != null ? _dec._wireType[_wireId] : ((null : T_wireType))).mapT.key;
                            var _elemId:T_typeId = (_dec._wireType != null ? _dec._wireType[_wireId] : ((null : T_wireType))).mapT.elem;
                            var _keyOp:T_decOp = _dec._decOpFor(_keyId, _t.key(), ((("key of " : GoString))) + _name, _inProgress);
                            var _elemOp:T_decOp = _dec._decOpFor(_elemId, _t.elem(), ((("element of " : GoString))) + _name, _inProgress);
                            var _ovfl:stdgo.Error = _overflow(_name);
                            _op = function(_i:T_decInstr, _state:T_decoderState, _value:stdgo.reflect.Reflect.Value):Void {
                                _state._dec._decodeMap(_t, _state, (_value == null ? null : _value.__copy__()), _keyOp, _elemOp, _ovfl);
                            };
                            break;
                        } else if (_t.kind() == ((23 : GoUInt))) {
                            _name = ((("element of " : GoString))) + _name;
                            if (_t.elem().kind() == ((8 : GoUInt))) {
                                _op = _decUint8Slice;
                                break;
                            };
                            var _elemId:T_typeId = new T_typeId();
                            {
                                var __tmp__ = (_builtinIdToType != null && _builtinIdToType.__exists__(_wireId) ? { value : _builtinIdToType[_wireId], ok : true } : { value : ((null : T_gobType)), ok : false }), _tt:T_gobType = __tmp__.value, _ok:Bool = __tmp__.ok;
                                if (_ok) {
                                    _elemId = ((((_tt.__underlying__().value : Dynamic)) : T_sliceType)).elem;
                                } else {
                                    _elemId = (_dec._wireType != null ? _dec._wireType[_wireId] : ((null : T_wireType))).sliceT.elem;
                                };
                            };
                            var _elemOp:T_decOp = _dec._decOpFor(_elemId, _t.elem(), _name, _inProgress);
                            var _ovfl:stdgo.Error = _overflow(_name);
                            var _helper:T_decHelper = (_decSliceHelper != null ? _decSliceHelper[_t.elem().kind()] : ((null : T_decHelper)));
                            _op = function(_i:T_decInstr, _state:T_decoderState, _value:stdgo.reflect.Reflect.Value):Void {
                                _state._dec._decodeSlice(_state, (_value == null ? null : _value.__copy__()), _elemOp, _ovfl, _helper);
                            };
                            break;
                        } else if (_t.kind() == ((25 : GoUInt))) {
                            var _ut:T_userTypeInfo = _userType(_typ);
                            var __tmp__ = _dec._getDecEnginePtr(_wireId, _ut), _enginePtr:T_decEngine = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                _error_(_err);
                            };
                            _op = function(_i:T_decInstr, _state:T_decoderState, _value:stdgo.reflect.Reflect.Value):Void {
                                _dec._decodeStruct(_enginePtr, (_value == null ? null : _value.__copy__()));
                            };
                            break;
                        } else if (_t.kind() == ((20 : GoUInt))) {
                            _op = function(_i:T_decInstr, _state:T_decoderState, _value:stdgo.reflect.Reflect.Value):Void {
                                _state._dec._decodeInterface(_t, _state, (_value == null ? null : _value.__copy__()));
                            };
                            break;
                        };
                        break;
                    };
                };
            };
        };
        if (_op == null) {
            _errorf(((("decode can\'t handle type %s" : GoString))), Go.toInterface(_rt));
        };
        return _op;
    }
    @:keep
    public function _ignoreGobDecoder(_state:T_decoderState):Void {
        var _dec = this;
        _dec;
        var __tmp__ = _state._getLength(), _n:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _errorf(((("GobDecoder: length too large for buffer" : GoString))));
        };
        var _bn:GoInt = _state._b.len();
        if (_bn < _n) {
            _errorf(((("GobDecoder: invalid data length %d: exceeds input size %d" : GoString))), Go.toInterface(_n), Go.toInterface(_bn));
        };
        _state._b.drop(_n);
    }
    @:keep
    public function _decodeGobDecoder(_ut:T_userTypeInfo, _state:T_decoderState, _value:stdgo.reflect.Reflect.Value):Void {
        var _dec = this;
        _dec;
        var __tmp__ = _state._getLength(), _n:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _errorf(((("GobDecoder: length too large for buffer" : GoString))));
        };
        var _b:Slice<GoUInt8> = _state._b.bytes();
        if ((_b != null ? _b.length : ((0 : GoInt))) < _n) {
            _errorf(((("GobDecoder: invalid data length %d: exceeds input size %d" : GoString))), Go.toInterface(_n), Go.toInterface((_b != null ? _b.length : ((0 : GoInt)))));
        };
        _b = _b.__slice__(0, _n);
        _state._b.drop(_n);
        var _err:Error = ((null : stdgo.Error));
        if (_ut._externalDec == ((1 : GoInt))) {
            _err = ((_value.interface_().value : GobDecoder)).gobDecode(_b);
        } else if (_ut._externalDec == ((2 : GoInt))) {
            _err = ((_value.interface_().value : stdgo.encoding.Encoding.BinaryUnmarshaler)).unmarshalBinary(_b);
        } else if (_ut._externalDec == ((3 : GoInt))) {
            _err = ((_value.interface_().value : stdgo.encoding.Encoding.TextUnmarshaler)).unmarshalText(_b);
        };
        if (_err != null) {
            _error_(_err);
        };
    }
    @:keep
    public function _ignoreInterface(_state:T_decoderState):Void {
        var _dec = this;
        _dec;
        var __tmp__ = _state._getLength(), _n:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _errorf(((("bad interface encoding: name too large for buffer" : GoString))));
        };
        var _bn:GoInt = _state._b.len();
        if (_bn < _n) {
            _errorf(((("invalid interface value length %d: exceeds input size %d" : GoString))), Go.toInterface(_n), Go.toInterface(_bn));
        };
        _state._b.drop(_n);
        var _id:T_typeId = _dec._decodeTypeSequence(true);
        if (_id < ((0 : GoInt32))) {
            _error_(_dec._err);
        };
        {
            var __tmp__ = _state._getLength();
            _n = __tmp__._0;
            _ok = __tmp__._1;
        };
        if (!_ok) {
            _errorf(((("bad interface encoding: data length too large for buffer" : GoString))));
        };
        _state._b.drop(_n);
    }
    @:keep
    public function _decodeInterface(_ityp:stdgo.reflect.Reflect.Type, _state:T_decoderState, _value:stdgo.reflect.Reflect.Value):Void {
        var _dec = this;
        _dec;
        var _nr:GoUInt64 = _state._decodeUint();
        if (_nr > (("2147483648" : GoUInt64))) {
            _errorf(((("invalid type name length %d" : GoString))), Go.toInterface(_nr));
        };
        if (_nr > ((_state._b.len() : GoUInt64))) {
            _errorf(((("invalid type name length %d: exceeds input size" : GoString))), Go.toInterface(_nr));
        };
        var _n:GoInt = ((_nr : GoInt));
        var _name:Slice<GoUInt8> = _state._b.bytes().__slice__(0, _n);
        _state._b.drop(_n);
        if ((_name != null ? _name.length : ((0 : GoInt))) == ((0 : GoInt))) {
            _value.set((stdgo.reflect.Reflect.zero(_value.type()) == null ? null : stdgo.reflect.Reflect.zero(_value.type()).__copy__()));
            return;
        };
        if ((_name != null ? _name.length : ((0 : GoInt))) > ((1024 : GoInt))) {
            _errorf(((("name too long (%d bytes): %.20q..." : GoString))), Go.toInterface((_name != null ? _name.length : ((0 : GoInt)))), Go.toInterface(_name));
        };
        var __tmp__ = _nameToConcreteType.load(Go.toInterface(((_name : GoString)))), _typi:AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _errorf(((("name not registered for interface: %q" : GoString))), Go.toInterface(_name));
        };
        var _typ:stdgo.reflect.Reflect.Type = ((_typi.value : stdgo.reflect.Reflect.Type));
        var _concreteId:T_typeId = _dec._decodeTypeSequence(true);
        if (_concreteId < ((0 : GoInt32))) {
            _error_(_dec._err);
        };
        _state._decodeUint();
        var _v:stdgo.reflect.Reflect.Value = (_allocValue(_typ) == null ? null : _allocValue(_typ).__copy__());
        _dec._decodeValue(_concreteId, (_v == null ? null : _v.__copy__()));
        if (_dec._err != null) {
            _error_(_dec._err);
        };
        if (!_typ.assignableTo(_ityp)) {
            _errorf(((("%s is not assignable to type %s" : GoString))), Go.toInterface(_typ), Go.toInterface(_ityp));
        };
        _value.set((_v == null ? null : _v.__copy__()));
    }
    @:keep
    public function _ignoreSlice(_state:T_decoderState, _elemOp:T_decOp):Void {
        var _dec = this;
        _dec;
        _dec._ignoreArrayHelper(_state, _elemOp, ((_state._decodeUint() : GoInt)));
    }
    @:keep
    public function _decodeSlice(_state:T_decoderState, _value:stdgo.reflect.Reflect.Value, _elemOp:T_decOp, _ovfl:Error, _helper:T_decHelper):Void {
        var _dec = this;
        _dec;
        var _u:GoUInt64 = _state._decodeUint();
        var _typ:stdgo.reflect.Reflect.Type = _value.type();
        var _size:GoUInt64 = ((_typ.elem().size() : GoUInt64));
        var _nBytes:GoUInt64 = _u * _size;
        var _n:GoInt = ((_u : GoInt));
        if ((((_n < ((0 : GoInt))) || (((_n : GoUInt64)) != _u)) || (_nBytes > ((1073741824 : GoUInt64)))) || ((_size > ((0 : GoUInt64))) && ((_nBytes / _size) != _u))) {
            _errorf(((("%s slice too big: %d elements of %d bytes" : GoString))), Go.toInterface(_typ.elem()), Go.toInterface(_u), Go.toInterface(_size));
        };
        if (_value.cap_() < _n) {
            _value.set((stdgo.reflect.Reflect.makeSlice(_typ, _n, _n) == null ? null : stdgo.reflect.Reflect.makeSlice(_typ, _n, _n).__copy__()));
        } else {
            _value.setLen(_n);
        };
        _dec._decodeArrayHelper(_state, (_value == null ? null : _value.__copy__()), _elemOp, _n, _ovfl, _helper);
    }
    @:keep
    public function _ignoreMap(_state:T_decoderState, _keyOp:T_decOp, _elemOp:T_decOp):Void {
        var _dec = this;
        _dec;
        var _n:GoInt = ((_state._decodeUint() : GoInt));
        var _keyInstr:T_decInstr = ((new T_decInstr(_keyOp, ((0 : GoInt)), ((null : Slice<GoInt>)), stdgo.errors.Errors.new_(((("no error" : GoString))))) : T_decInstr));
        var _elemInstr:T_decInstr = ((new T_decInstr(_elemOp, ((0 : GoInt)), ((null : Slice<GoInt>)), stdgo.errors.Errors.new_(((("no error" : GoString))))) : T_decInstr));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _n, _i++, {
                _keyOp(_keyInstr, _state, (_noValue == null ? null : _noValue.__copy__()));
                _elemOp(_elemInstr, _state, (_noValue == null ? null : _noValue.__copy__()));
            });
        };
    }
    @:keep
    public function _ignoreArray(_state:T_decoderState, _elemOp:T_decOp, _length:GoInt):Void {
        var _dec = this;
        _dec;
        {
            var _n:GoUInt64 = _state._decodeUint();
            if (_n != ((_length : GoUInt64))) {
                _errorf(((("length mismatch in ignoreArray" : GoString))));
            };
        };
        _dec._ignoreArrayHelper(_state, _elemOp, _length);
    }
    @:keep
    public function _ignoreArrayHelper(_state:T_decoderState, _elemOp:T_decOp, _length:GoInt):Void {
        var _dec = this;
        _dec;
        var _instr:T_decInstr = ((new T_decInstr(_elemOp, ((0 : GoInt)), ((null : Slice<GoInt>)), stdgo.errors.Errors.new_(((("no error" : GoString))))) : T_decInstr));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                if (_state._b.len() == ((0 : GoInt))) {
                    _errorf(((("decoding array or slice: length exceeds input size (%d elements)" : GoString))), Go.toInterface(_length));
                };
                _elemOp(_instr, _state, (_noValue == null ? null : _noValue.__copy__()));
            });
        };
    }
    @:keep
    public function _decodeMap(_mtyp:stdgo.reflect.Reflect.Type, _state:T_decoderState, _value:stdgo.reflect.Reflect.Value, _keyOp:T_decOp, _elemOp:T_decOp, _ovfl:Error):Void {
        var _dec = this;
        _dec;
        var _n:GoInt = ((_state._decodeUint() : GoInt));
        if (_value.isNil()) {
            _value.set((stdgo.reflect.Reflect.makeMapWithSize(_mtyp, _n) == null ? null : stdgo.reflect.Reflect.makeMapWithSize(_mtyp, _n).__copy__()));
        };
        var _keyIsPtr:Bool = _mtyp.key().kind() == ((22 : GoUInt));
        var _elemIsPtr:Bool = _mtyp.elem().kind() == ((22 : GoUInt));
        var _keyInstr:T_decInstr = ((new T_decInstr(_keyOp, ((0 : GoInt)), ((null : Slice<GoInt>)), _ovfl) : T_decInstr));
        var _elemInstr:T_decInstr = ((new T_decInstr(_elemOp, ((0 : GoInt)), ((null : Slice<GoInt>)), _ovfl) : T_decInstr));
        var _keyP:stdgo.reflect.Reflect.Value = (stdgo.reflect.Reflect.new_(_mtyp.key()) == null ? null : stdgo.reflect.Reflect.new_(_mtyp.key()).__copy__());
        var _keyZ:stdgo.reflect.Reflect.Value = (stdgo.reflect.Reflect.zero(_mtyp.key()) == null ? null : stdgo.reflect.Reflect.zero(_mtyp.key()).__copy__());
        var _elemP:stdgo.reflect.Reflect.Value = (stdgo.reflect.Reflect.new_(_mtyp.elem()) == null ? null : stdgo.reflect.Reflect.new_(_mtyp.elem()).__copy__());
        var _elemZ:stdgo.reflect.Reflect.Value = (stdgo.reflect.Reflect.zero(_mtyp.elem()) == null ? null : stdgo.reflect.Reflect.zero(_mtyp.elem()).__copy__());
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _n, _i++, {
                var _key:stdgo.reflect.Reflect.Value = (_decodeIntoValue(_state, _keyOp, _keyIsPtr, (_keyP.elem() == null ? null : _keyP.elem().__copy__()), _keyInstr) == null ? null : _decodeIntoValue(_state, _keyOp, _keyIsPtr, (_keyP.elem() == null ? null : _keyP.elem().__copy__()), _keyInstr).__copy__());
                var _elem:stdgo.reflect.Reflect.Value = (_decodeIntoValue(_state, _elemOp, _elemIsPtr, (_elemP.elem() == null ? null : _elemP.elem().__copy__()), _elemInstr) == null ? null : _decodeIntoValue(_state, _elemOp, _elemIsPtr, (_elemP.elem() == null ? null : _elemP.elem().__copy__()), _elemInstr).__copy__());
                _value.setMapIndex((_key == null ? null : _key.__copy__()), (_elem == null ? null : _elem.__copy__()));
                _keyP.elem().set((_keyZ == null ? null : _keyZ.__copy__()));
                _elemP.elem().set((_elemZ == null ? null : _elemZ.__copy__()));
            });
        };
    }
    @:keep
    public function _decodeArray(_state:T_decoderState, _value:stdgo.reflect.Reflect.Value, _elemOp:T_decOp, _length:GoInt, _ovfl:Error, _helper:T_decHelper):Void {
        var _dec = this;
        _dec;
        {
            var _n:GoUInt64 = _state._decodeUint();
            if (_n != ((_length : GoUInt64))) {
                _errorf(((("length mismatch in decodeArray" : GoString))));
            };
        };
        _dec._decodeArrayHelper(_state, (_value == null ? null : _value.__copy__()), _elemOp, _length, _ovfl, _helper);
    }
    @:keep
    public function _decodeArrayHelper(_state:T_decoderState, _value:stdgo.reflect.Reflect.Value, _elemOp:T_decOp, _length:GoInt, _ovfl:Error, _helper:T_decHelper):Void {
        var _dec = this;
        _dec;
        if ((_helper != null) && _helper(_state, _value, _length, _ovfl)) {
            return;
        };
        var _instr:T_decInstr = ((new T_decInstr(_elemOp, ((0 : GoInt)), ((null : Slice<GoInt>)), _ovfl) : T_decInstr));
        var _isPtr:Bool = _value.type().elem().kind() == ((22 : GoUInt));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                if (_state._b.len() == ((0 : GoInt))) {
                    _errorf(((("decoding array or slice: length exceeds input size (%d elements)" : GoString))), Go.toInterface(_length));
                };
                var _v:stdgo.reflect.Reflect.Value = (_value.index(_i) == null ? null : _value.index(_i).__copy__());
                if (_isPtr) {
                    _v = (_decAlloc((_v == null ? null : _v.__copy__())) == null ? null : _decAlloc((_v == null ? null : _v.__copy__())).__copy__());
                };
                _elemOp(_instr, _state, (_v == null ? null : _v.__copy__()));
            });
        };
    }
    @:keep
    public function _ignoreSingle(_engine:T_decEngine):Void {
        var _dec = this;
        _dec;
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _state:T_decoderState = _dec._newDecoderState(_dec._buf);
            {
                var _a0 = _state;
                __deferstack__.unshift(() -> _dec._freeDecoderState(_a0));
            };
            _state._fieldnum = ((0 : GoInt));
            var _delta:GoInt = ((_state._decodeUint() : GoInt));
            if (_delta != ((0 : GoInt))) {
                _errorf(((("decode: corrupted data: non-zero delta for singleton" : GoString))));
            };
            var _instr:T_decInstr = (_engine._instr != null ? _engine._instr[((0 : GoInt))] : new T_decInstr());
            _instr._op(_instr, _state, (_noValue == null ? null : _noValue.__copy__()));
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
    @:keep
    public function _ignoreStruct(_engine:T_decEngine):Void {
        var _dec = this;
        _dec;
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _state:T_decoderState = _dec._newDecoderState(_dec._buf);
            {
                var _a0 = _state;
                __deferstack__.unshift(() -> _dec._freeDecoderState(_a0));
            };
            _state._fieldnum = ((-1 : GoInt));
            while (_state._b.len() > ((0 : GoInt))) {
                var _delta:GoInt = ((_state._decodeUint() : GoInt));
                if (_delta < ((0 : GoInt))) {
                    _errorf(((("ignore decode: corrupted data: negative delta" : GoString))));
                };
                if (_delta == ((0 : GoInt))) {
                    break;
                };
                var _fieldnum:GoInt = _state._fieldnum + _delta;
                if (_fieldnum >= (_engine._instr != null ? _engine._instr.length : ((0 : GoInt)))) {
                    _error_(_errRange);
                };
                var _instr:T_decInstr = (_engine._instr != null ? _engine._instr[_fieldnum] : new T_decInstr());
                _instr._op(_instr, _state, (_noValue == null ? null : _noValue.__copy__()));
                _state._fieldnum = _fieldnum;
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
    @:keep
    public function _decodeStruct(_engine:T_decEngine, _value:stdgo.reflect.Reflect.Value):Void {
        var _dec = this;
        _dec;
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _state:T_decoderState = _dec._newDecoderState(_dec._buf);
            {
                var _a0 = _state;
                __deferstack__.unshift(() -> _dec._freeDecoderState(_a0));
            };
            _state._fieldnum = ((-1 : GoInt));
            while (_state._b.len() > ((0 : GoInt))) {
                var _delta:GoInt = ((_state._decodeUint() : GoInt));
                if (_delta < ((0 : GoInt))) {
                    _errorf(((("decode: corrupted data: negative delta" : GoString))));
                };
                if (_delta == ((0 : GoInt))) {
                    break;
                };
                var _fieldnum:GoInt = _state._fieldnum + _delta;
                if (_fieldnum >= (_engine._instr != null ? _engine._instr.length : ((0 : GoInt)))) {
                    _error_(_errRange);
                    break;
                };
                var _instr:T_decInstr = (_engine._instr != null ? _engine._instr[_fieldnum] : new T_decInstr());
                var _field:stdgo.reflect.Reflect.Value = new stdgo.reflect.Reflect.Value();
                if (_instr._index != null) {
                    _field = (_value.fieldByIndex(_instr._index) == null ? null : _value.fieldByIndex(_instr._index).__copy__());
                    if (_field.kind() == ((22 : GoUInt))) {
                        _field = (_decAlloc((_field == null ? null : _field.__copy__())) == null ? null : _decAlloc((_field == null ? null : _field.__copy__())).__copy__());
                    };
                };
                _instr._op(_instr, _state, (_field == null ? null : _field.__copy__()));
                _state._fieldnum = _fieldnum;
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
    @:keep
    public function _decodeSingle(_engine:T_decEngine, _value:stdgo.reflect.Reflect.Value):Void {
        var _dec = this;
        _dec;
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _state:T_decoderState = _dec._newDecoderState(_dec._buf);
            {
                var _a0 = _state;
                __deferstack__.unshift(() -> _dec._freeDecoderState(_a0));
            };
            _state._fieldnum = ((0 : GoInt));
            if (_state._decodeUint() != ((0 : GoUInt64))) {
                _errorf(((("decode: corrupted data: non-zero delta for singleton" : GoString))));
            };
            var _instr:T_decInstr = (_engine._instr != null ? _engine._instr[((0 : GoInt))] : new T_decInstr());
            _instr._op(_instr, _state, (_value == null ? null : _value.__copy__()));
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
    @:keep
    public function _freeDecoderState(_d:T_decoderState):Void {
        var _dec = this;
        _dec;
        _d._next = _dec._freeList;
        _dec._freeList = _d;
    }
    @:keep
    public function _newDecoderState(_buf:T_decBuffer):T_decoderState {
        var _dec = this;
        _dec;
        var _d:T_decoderState = _dec._freeList;
        if (_d == null) {
            _d = new T_decoderState();
            _d._dec = _dec;
        } else {
            _dec._freeList = _d._next;
        };
        _d._b = _buf;
        return _d;
    }
    public var _mutex : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
    public var _r : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public var _buf : T_decBuffer = new T_decBuffer();
    public var _wireType : GoMap<T_typeId, T_wireType> = ((null : GoMap<T_typeId, T_wireType>));
    public var _decoderCache : GoMap<stdgo.reflect.Reflect.Type, GoMap<T_typeId, T_decEngine>> = ((null : GoMap<stdgo.reflect.Reflect.Type, GoMap<T_typeId, T_decEngine>>));
    public var _ignorerCache : GoMap<T_typeId, T_decEngine> = ((null : GoMap<T_typeId, T_decEngine>));
    public var _freeList : T_decoderState = ((null : T_decoderState));
    public var _countBuf : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?_mutex:stdgo.sync.Sync.Mutex, ?_r:stdgo.io.Io.Reader, ?_buf:T_decBuffer, ?_wireType:GoMap<T_typeId, T_wireType>, ?_decoderCache:GoMap<stdgo.reflect.Reflect.Type, GoMap<T_typeId, T_decEngine>>, ?_ignorerCache:GoMap<T_typeId, T_decEngine>, ?_freeList:T_decoderState, ?_countBuf:Slice<GoUInt8>, ?_err:stdgo.Error) {
        if (_mutex != null) this._mutex = _mutex;
        if (_r != null) this._r = _r;
        if (_buf != null) this._buf = _buf;
        if (_wireType != null) this._wireType = _wireType;
        if (_decoderCache != null) this._decoderCache = _decoderCache;
        if (_ignorerCache != null) this._ignorerCache = _ignorerCache;
        if (_freeList != null) this._freeList = _freeList;
        if (_countBuf != null) this._countBuf = _countBuf;
        if (_err != null) this._err = _err;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Decoder(_mutex, _r, _buf, _wireType, _decoderCache, _ignorerCache, _freeList, _countBuf, _err);
    }
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_encoderState_static_extension) class T_encoderState {
    @:keep
    public function _update(_instr:T_encInstr):Void {
        var _state = this;
        _state;
        if (_instr != null) {
            _state._encodeUint((((_instr._field - _state._fieldnum) : GoUInt64)));
            _state._fieldnum = _instr._field;
        };
    }
    @:keep
    public function _encodeInt(_i:GoInt64):Void {
        var _state = this;
        _state;
        var _x:GoUInt64 = ((0 : GoUInt64));
        if (_i < ((0 : GoInt64))) {
            _x = ((((-1 ^ _i) << ((1 : GoUnTypedInt))) : GoUInt64)) | ((1 : GoUInt64));
        } else {
            _x = (((_i << ((1 : GoUnTypedInt))) : GoUInt64));
        };
        _state._encodeUint(_x);
    }
    @:keep
    public function _encodeUint(_x:GoUInt64):Void {
        var _state = this;
        _state;
        if (_x <= ((127 : GoUInt64))) {
            _state._b._writeByte(((_x : GoUInt8)));
            return;
        };
        stdgo.encoding.binary.Binary.bigEndian.putUint64(_state._buf.__slice__(((1 : GoInt))), _x);
        var _bc:GoInt = stdgo.math.bits.Bits.leadingZeros64(_x) >> ((3 : GoUnTypedInt));
        if (_state._buf != null) _state._buf[_bc] = (((_bc - ((8 : GoInt))) : GoUInt8));
        _state._b.write(_state._buf.__slice__(_bc, ((9 : GoInt))));
    }
    public var _enc : Encoder = ((null : Encoder));
    public var _b : T_encBuffer = ((null : T_encBuffer));
    public var _sendZero : Bool = false;
    public var _fieldnum : GoInt = ((0 : GoInt));
    public var _buf : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 9) ((0 : GoUInt8))]);
    public var _next : T_encoderState = ((null : T_encoderState));
    public function new(?_enc:Encoder, ?_b:T_encBuffer, ?_sendZero:Bool, ?_fieldnum:GoInt, ?_buf:GoArray<GoUInt8>, ?_next:T_encoderState) {
        if (_enc != null) this._enc = _enc;
        if (_b != null) this._b = _b;
        if (_sendZero != null) this._sendZero = _sendZero;
        if (_fieldnum != null) this._fieldnum = _fieldnum;
        if (_buf != null) this._buf = _buf;
        if (_next != null) this._next = _next;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_encoderState(_enc, _b, _sendZero, _fieldnum, _buf, _next);
    }
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_encBuffer_static_extension) class T_encBuffer {
    @:keep
    public function reset():Void {
        var _e = this;
        _e;
        if ((_e._data != null ? _e._data.length : ((0 : GoInt))) >= ((1073741824 : GoInt))) {
            _e._data = _e._scratch.__slice__(((0 : GoInt)), ((0 : GoInt)));
        } else {
            _e._data = _e._data.__slice__(((0 : GoInt)), ((0 : GoInt)));
        };
    }
    @:keep
    public function bytes():Slice<GoByte> {
        var _e = this;
        _e;
        return _e._data;
    }
    @:keep
    public function len():GoInt {
        var _e = this;
        _e;
        return (_e._data != null ? _e._data.length : ((0 : GoInt)));
    }
    @:keep
    public function writeString(_s:GoString):Void {
        var _e = this;
        _e;
        _e._data = (_e._data != null ? _e._data.__append__(..._s.__toArray__()) : new Slice<GoUInt8>(..._s.__toArray__()));
    }
    @:keep
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _e = this;
        _e;
        _e._data = (_e._data != null ? _e._data.__append__(..._p.__toArray__()) : new Slice<GoUInt8>(..._p.__toArray__()));
        return { _0 : (_p != null ? _p.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function _writeByte(_c:GoByte):Void {
        var _e = this;
        _e;
        _e._data = (_e._data != null ? _e._data.__append__(_c) : new Slice<GoUInt8>(_c));
    }
    public var _data : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _scratch : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 64) ((0 : GoUInt8))]);
    public function new(?_data:Slice<GoUInt8>, ?_scratch:GoArray<GoUInt8>) {
        if (_data != null) this._data = _data;
        if (_scratch != null) this._scratch = _scratch;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_encBuffer(_data, _scratch);
    }
}
@:structInit class T_encInstr {
    public var _op : T_encOp = ((null : T_encOp));
    public var _field : GoInt = ((0 : GoInt));
    public var _index : Slice<GoInt> = ((null : Slice<GoInt>));
    public var _indir : GoInt = ((0 : GoInt));
    public function new(?_op:T_encOp, ?_field:GoInt, ?_index:Slice<GoInt>, ?_indir:GoInt) {
        if (_op != null) this._op = _op;
        if (_field != null) this._field = _field;
        if (_index != null) this._index = _index;
        if (_indir != null) this._indir = _indir;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_encInstr(_op, _field, _index, _indir);
    }
}
@:structInit class T_encEngine {
    public var _instr : Slice<T_encInstr> = ((null : Slice<T_encInstr>));
    public function new(?_instr:Slice<T_encInstr>) {
        if (_instr != null) this._instr = _instr;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_encEngine(_instr);
    }
}
@:structInit @:using(stdgo.encoding.gob.Gob.Encoder_static_extension) class Encoder {
    @:keep
    public function encodeValue(_value:stdgo.reflect.Reflect.Value):Error {
        var _enc = this;
        _enc;
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        if (_value.kind() == ((0 : GoUInt))) {
            return stdgo.errors.Errors.new_(((("gob: cannot encode nil value" : GoString))));
        };
        try {
            if ((_value.kind() == ((22 : GoUInt))) && _value.isNil()) {
                throw Go.toInterface(((("gob: cannot encode nil pointer of type " : GoString))) + ((_value.type().toString() : GoString)));
            };
            _enc._mutex.lock();
            __deferstack__.unshift(() -> _enc._mutex.unlock());
            _enc._w = _enc._w.__slice__(((0 : GoInt)), ((1 : GoInt)));
            var __tmp__ = _validUserType(_value.type()), _ut:T_userTypeInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return _err;
                };
            };
            _enc._err = ((null : stdgo.Error));
            _enc._byteBuf.reset();
            _enc._byteBuf.write(_spaceForLength);
            var _state:T_encoderState = _enc._newEncoderState(_enc._byteBuf);
            _enc._sendTypeDescriptor(_enc._writer(), _state, _ut);
            _enc._sendTypeId(_state, _ut);
            if (_enc._err != null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return _enc._err;
                };
            };
            _enc._encode(_state._b, (_value == null ? null : _value.__copy__()), _ut);
            if (_enc._err == null) {
                _enc._writeMessage(_enc._writer(), _state._b);
            };
            _enc._freeEncoderState(_state);
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _enc._err;
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return ((null : stdgo.Error));
            };
        };
    }
    @:keep
    public function _sendTypeId(_state:T_encoderState, _ut:T_userTypeInfo):Void {
        var _enc = this;
        _enc;
        _state._encodeInt((((_enc._sent != null ? _enc._sent[_ut._base] : new T_typeId()) : GoInt64)));
    }
    @:keep
    public function _sendTypeDescriptor(_w:stdgo.io.Io.Writer, _state:T_encoderState, _ut:T_userTypeInfo):Void {
        var _enc = this;
        _enc;
        var _rt:stdgo.reflect.Reflect.Type = _ut._base;
        if (_ut._externalEnc != ((0 : GoInt))) {
            _rt = _ut._user;
        };
        {
            var __tmp__ = (_enc._sent != null && _enc._sent.__exists__(_rt) ? { value : _enc._sent[_rt], ok : true } : { value : new T_typeId(), ok : false }), _0:T_typeId = __tmp__.value, _alreadySent:Bool = __tmp__.ok;
            if (!_alreadySent) {
                var _sent:Bool = _enc._sendType(_w, _state, _rt);
                if (_enc._err != null) {
                    return;
                };
                if (!_sent) {
                    var __tmp__ = _getTypeInfo(_ut), _info:T_typeInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _enc._setError(_err);
                        return;
                    };
                    if (_enc._sent != null) _enc._sent[_rt] = _info._id;
                };
            };
        };
    }
    @:keep
    public function encode(_e:AnyInterface):Error {
        var _enc = this;
        _enc;
        return _enc.encodeValue((stdgo.reflect.Reflect.valueOf(Go.toInterface(_e)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_e)).__copy__()));
    }
    @:keep
    public function _sendType(_w:stdgo.io.Io.Writer, _state:T_encoderState, _origt:stdgo.reflect.Reflect.Type):Bool {
        var _enc = this;
        _enc;
        var _sent:Bool = false;
        var _ut:T_userTypeInfo = _userType(_origt);
        if (_ut._externalEnc != ((0 : GoInt))) {
            return _enc._sendActualType(_w, _state, _ut, _ut._base);
        };
        {
            var _rt:stdgo.reflect.Reflect.Type = _ut._base;
            {
                var __switchIndex__ = -1;
                while (true) {
                    if (_rt.kind() == ((23 : GoUInt))) {
                        if (_rt.elem().kind() == ((8 : GoUInt))) {
                            return _sent;
                        };
                        break;
                        break;
                    } else if (_rt.kind() == ((17 : GoUInt))) {
                        break;
                        break;
                    } else if (_rt.kind() == ((21 : GoUInt))) {
                        break;
                        break;
                    } else if (_rt.kind() == ((25 : GoUInt))) {
                        break;
                        break;
                    } else if (_rt.kind() == ((18 : GoUInt)) || _rt.kind() == ((19 : GoUInt))) {
                        return _sent;
                        break;
                    };
                    break;
                };
            };
        };
        return _enc._sendActualType(_w, _state, _ut, _ut._base);
    }
    @:keep
    public function _sendActualType(_w:stdgo.io.Io.Writer, _state:T_encoderState, _ut:T_userTypeInfo, _actual:stdgo.reflect.Reflect.Type):Bool {
        var _enc = this;
        _enc;
        var _sent:Bool = false;
        {
            var __tmp__ = (_enc._sent != null && _enc._sent.__exists__(_actual) ? { value : _enc._sent[_actual], ok : true } : { value : new T_typeId(), ok : false }), _0:T_typeId = __tmp__.value, _alreadySent:Bool = __tmp__.ok;
            if (_alreadySent) {
                return false;
            };
        };
        var __tmp__ = _getTypeInfo(_ut), _info:T_typeInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _enc._setError(_err);
            return _sent;
        };
        _state._encodeInt(-((_info._id : GoInt64)));
        _enc._encode(_state._b, (stdgo.reflect.Reflect.valueOf(Go.toInterface(_info._wire)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_info._wire)).__copy__()), _wireTypeUserInfo);
        _enc._writeMessage(_w, _state._b);
        if (_enc._err != null) {
            return _sent;
        };
        if (_enc._sent != null) _enc._sent[_ut._base] = _info._id;
        if (_ut._user != _ut._base) {
            if (_enc._sent != null) _enc._sent[_ut._user] = _info._id;
        };
        {
            var _st:stdgo.reflect.Reflect.Type = _actual;
            if (_st.kind() == ((25 : GoUInt))) {
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < _st.numField(), _i++, {
                        if (_isExported(_st.field(_i).name)) {
                            _enc._sendType(_w, _state, _st.field(_i).type);
                        };
                    });
                };
            } else if (_st.kind() == ((17 : GoUInt)) || _st.kind() == ((23 : GoUInt))) {
                _enc._sendType(_w, _state, _st.elem());
            } else if (_st.kind() == ((21 : GoUInt))) {
                _enc._sendType(_w, _state, _st.key());
                _enc._sendType(_w, _state, _st.elem());
            };
        };
        return true;
    }
    @:keep
    public function _writeMessage(_w:stdgo.io.Io.Writer, _b:T_encBuffer):Void {
        var _enc = this;
        _enc;
        var _message:Slice<GoUInt8> = _b.bytes();
        var _messageLen:GoInt = (_message != null ? _message.length : ((0 : GoInt))) - ((9 : GoInt));
        if (_messageLen >= ((1073741824 : GoInt))) {
            _enc._setError(stdgo.errors.Errors.new_(((("gob: encoder: message too big" : GoString)))));
            return;
        };
        _enc._countState._b.reset();
        _enc._countState._encodeUint(((_messageLen : GoUInt64)));
        var _offset:GoInt = ((9 : GoInt)) - _enc._countState._b.len();
        Go.copySlice(_message.__slice__(_offset), _enc._countState._b.bytes());
        var __tmp__ = _w.write(_message.__slice__(_offset)), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _b.reset();
        _b.write(_spaceForLength);
        if (_err != null) {
            _enc._setError(_err);
        };
    }
    @:keep
    public function _setError(_err:Error):Void {
        var _enc = this;
        _enc;
        if (_enc._err == null) {
            _enc._err = _err;
        };
    }
    @:keep
    public function _popWriter():Void {
        var _enc = this;
        _enc;
        _enc._w = _enc._w.__slice__(((0 : GoInt)), (_enc._w != null ? _enc._w.length : ((0 : GoInt))) - ((1 : GoInt)));
    }
    @:keep
    public function _pushWriter(_w:stdgo.io.Io.Writer):Void {
        var _enc = this;
        _enc;
        _enc._w = (_enc._w != null ? _enc._w.__append__(_w) : new Slice<stdgo.io.Io.Writer>(_w));
    }
    @:keep
    public function _writer():stdgo.io.Io.Writer {
        var _enc = this;
        _enc;
        return (_enc._w != null ? _enc._w[(_enc._w != null ? _enc._w.length : ((0 : GoInt))) - ((1 : GoInt))] : ((null : stdgo.io.Io.Writer)));
    }
    @:keep
    public function _encode(_b:T_encBuffer, _value:stdgo.reflect.Reflect.Value, _ut:T_userTypeInfo):Void {
        var _enc = this;
        _enc;
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = _enc._err;
                __deferstack__.unshift(() -> _catchError(_a0));
            };
            var _engine:T_encEngine = _getEncEngine(_ut, ((null : GoMap<T_typeInfo, Bool>)));
            var _indir:GoInt = _ut._indir;
            if (_ut._externalEnc != ((0 : GoInt))) {
                _indir = ((_ut._encIndir : GoInt));
            };
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _indir, _i++, {
                    _value = (stdgo.reflect.Reflect.indirect((_value == null ? null : _value.__copy__())) == null ? null : stdgo.reflect.Reflect.indirect((_value == null ? null : _value.__copy__())).__copy__());
                });
            };
            if ((_ut._externalEnc == ((0 : GoInt))) && (_value.type().kind() == ((25 : GoUInt)))) {
                _enc._encodeStruct(_b, _engine, (_value == null ? null : _value.__copy__()));
            } else {
                _enc._encodeSingle(_b, _engine, (_value == null ? null : _value.__copy__()));
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
    @:keep
    public function _encodeGobEncoder(_b:T_encBuffer, _ut:T_userTypeInfo, _v:stdgo.reflect.Reflect.Value):Void {
        var _enc = this;
        _enc;
        var _data:Slice<GoByte> = ((null : Slice<GoUInt8>));
        var _err:Error = ((null : stdgo.Error));
        if (_ut._externalEnc == ((1 : GoInt))) {
            {
                var __tmp__ = ((_v.interface_().value : GobEncoder)).gobEncode();
                _data = __tmp__._0;
                _err = __tmp__._1;
            };
        } else if (_ut._externalEnc == ((2 : GoInt))) {
            {
                var __tmp__ = ((_v.interface_().value : stdgo.encoding.Encoding.BinaryMarshaler)).marshalBinary();
                _data = __tmp__._0;
                _err = __tmp__._1;
            };
        } else if (_ut._externalEnc == ((3 : GoInt))) {
            {
                var __tmp__ = ((_v.interface_().value : stdgo.encoding.Encoding.TextMarshaler)).marshalText();
                _data = __tmp__._0;
                _err = __tmp__._1;
            };
        };
        if (_err != null) {
            _error_(_err);
        };
        var _state:T_encoderState = _enc._newEncoderState(_b);
        _state._fieldnum = ((-1 : GoInt));
        _state._encodeUint((((_data != null ? _data.length : ((0 : GoInt))) : GoUInt64)));
        _state._b.write(_data);
        _enc._freeEncoderState(_state);
    }
    @:keep
    public function _encodeInterface(_b:T_encBuffer, _iv:stdgo.reflect.Reflect.Value):Void {
        var _enc = this;
        _enc;
        var _elem:stdgo.reflect.Reflect.Value = (_iv.elem() == null ? null : _iv.elem().__copy__());
        if ((_elem.kind() == ((22 : GoUInt))) && _elem.isNil()) {
            _errorf(((("gob: cannot encode nil pointer of type %s inside interface" : GoString))), Go.toInterface(_iv.elem().type()));
        };
        var _state:T_encoderState = _enc._newEncoderState(_b);
        _state._fieldnum = ((-1 : GoInt));
        _state._sendZero = true;
        if (_iv.isNil()) {
            _state._encodeUint(((0 : GoUInt64)));
            return;
        };
        var _ut:T_userTypeInfo = _userType(_iv.elem().type());
        var __tmp__ = _concreteTypeToName.load(Go.toInterface(_ut._base)), _namei:AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _errorf(((("type not registered for interface: %s" : GoString))), Go.toInterface(_ut._base));
        };
        var _name:GoString = ((_namei.value : GoString));
        _state._encodeUint((((_name != null ? _name.length : ((0 : GoInt))) : GoUInt64)));
        _state._b.writeString(_name);
        _enc._sendTypeDescriptor(_enc._writer(), _state, _ut);
        _enc._sendTypeId(_state, _ut);
        _enc._pushWriter(_b);
        var _data:T_encBuffer = ((_encBufferPool.get().value : T_encBuffer));
        _data.write(_spaceForLength);
        _enc._encode(_data, (_elem == null ? null : _elem.__copy__()), _ut);
        if (_enc._err != null) {
            _error_(_enc._err);
        };
        _enc._popWriter();
        _enc._writeMessage(_b, _data);
        _data.reset();
        _encBufferPool.put(Go.toInterface(_data));
        if (_enc._err != null) {
            _error_(_enc._err);
        };
        _enc._freeEncoderState(_state);
    }
    @:keep
    public function _encodeMap(_b:T_encBuffer, _mv:stdgo.reflect.Reflect.Value, _keyOp:T_encOp, _elemOp:T_encOp, _keyIndir:GoInt, _elemIndir:GoInt):Void {
        var _enc = this;
        _enc;
        var _state:T_encoderState = _enc._newEncoderState(_b);
        _state._fieldnum = ((-1 : GoInt));
        _state._sendZero = true;
        _state._encodeUint(((_mv.len() : GoUInt64)));
        var _mi:stdgo.reflect.Reflect.MapIter = _mv.mapRange();
        while (_mi.next()) {
            _encodeReflectValue(_state, (_mi.key() == null ? null : _mi.key().__copy__()), _keyOp, _keyIndir);
            _encodeReflectValue(_state, (_mi.value() == null ? null : _mi.value().__copy__()), _elemOp, _elemIndir);
        };
        _enc._freeEncoderState(_state);
    }
    @:keep
    public function _encodeArray(_b:T_encBuffer, _value:stdgo.reflect.Reflect.Value, _op:T_encOp, _elemIndir:GoInt, _length:GoInt, _helper:T_encHelper):Void {
        var _enc = this;
        _enc;
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _state:T_encoderState = _enc._newEncoderState(_b);
            {
                var _a0 = _state;
                __deferstack__.unshift(() -> _enc._freeEncoderState(_a0));
            };
            _state._fieldnum = ((-1 : GoInt));
            _state._sendZero = true;
            _state._encodeUint(((_length : GoUInt64)));
            if ((_helper != null) && _helper(_state, (_value == null ? null : _value.__copy__()))) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _length, _i++, {
                    var _elem:stdgo.reflect.Reflect.Value = (_value.index(_i) == null ? null : _value.index(_i).__copy__());
                    if (_elemIndir > ((0 : GoInt))) {
                        _elem = (_encIndirect((_elem == null ? null : _elem.__copy__()), _elemIndir) == null ? null : _encIndirect((_elem == null ? null : _elem.__copy__()), _elemIndir).__copy__());
                        if (!_valid((_elem == null ? null : _elem.__copy__()))) {
                            _errorf(((("encodeArray: nil element" : GoString))));
                        };
                    };
                    _op(null, _state, (_elem == null ? null : _elem.__copy__()));
                });
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
    @:keep
    public function _encodeStruct(_b:T_encBuffer, _engine:T_encEngine, _value:stdgo.reflect.Reflect.Value):Void {
        var _enc = this;
        _enc;
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (!_valid((_value == null ? null : _value.__copy__()))) {
                return;
            };
            var _state:T_encoderState = _enc._newEncoderState(_b);
            {
                var _a0 = _state;
                __deferstack__.unshift(() -> _enc._freeEncoderState(_a0));
            };
            _state._fieldnum = ((-1 : GoInt));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < (_engine._instr != null ? _engine._instr.length : ((0 : GoInt))), _i++, {
                    var _instr:T_encInstr = (_engine._instr != null ? _engine._instr[_i] : new T_encInstr());
                    if (_i >= _value.numField()) {
                        _instr._op(_instr, _state, ((new stdgo.reflect.Reflect.Value() : stdgo.reflect.Reflect.Value)));
                        break;
                    };
                    var _field:stdgo.reflect.Reflect.Value = (_value.fieldByIndex(_instr._index) == null ? null : _value.fieldByIndex(_instr._index).__copy__());
                    if (_instr._indir > ((0 : GoInt))) {
                        _field = (_encIndirect((_field == null ? null : _field.__copy__()), _instr._indir) == null ? null : _encIndirect((_field == null ? null : _field.__copy__()), _instr._indir).__copy__());
                        if (!_valid((_field == null ? null : _field.__copy__()))) {
                            continue;
                        };
                    };
                    _instr._op(_instr, _state, (_field == null ? null : _field.__copy__()));
                });
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
    @:keep
    public function _encodeSingle(_b:T_encBuffer, _engine:T_encEngine, _value:stdgo.reflect.Reflect.Value):Void {
        var _enc = this;
        _enc;
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _state:T_encoderState = _enc._newEncoderState(_b);
            {
                var _a0 = _state;
                __deferstack__.unshift(() -> _enc._freeEncoderState(_a0));
            };
            _state._fieldnum = ((0 : GoInt));
            _state._sendZero = true;
            var _instr:T_encInstr = (_engine._instr != null ? _engine._instr[((0 : GoInt))] : new T_encInstr());
            if (_instr._indir > ((0 : GoInt))) {
                _value = (_encIndirect((_value == null ? null : _value.__copy__()), _instr._indir) == null ? null : _encIndirect((_value == null ? null : _value.__copy__()), _instr._indir).__copy__());
            };
            if (_valid((_value == null ? null : _value.__copy__()))) {
                _instr._op(_instr, _state, (_value == null ? null : _value.__copy__()));
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
    @:keep
    public function _freeEncoderState(_e:T_encoderState):Void {
        var _enc = this;
        _enc;
        _e._next = _enc._freeList;
        _enc._freeList = _e;
    }
    @:keep
    public function _newEncoderState(_b:T_encBuffer):T_encoderState {
        var _enc = this;
        _enc;
        var _e:T_encoderState = _enc._freeList;
        if (_e == null) {
            _e = new T_encoderState();
            _e._enc = _enc;
        } else {
            _enc._freeList = _e._next;
        };
        _e._sendZero = false;
        _e._fieldnum = ((0 : GoInt));
        _e._b = _b;
        if ((_b._data != null ? _b._data.length : ((0 : GoInt))) == ((0 : GoInt))) {
            _b._data = _b._scratch.__slice__(((0 : GoInt)), ((0 : GoInt)));
        };
        return _e;
    }
    public var _mutex : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
    public var _w : Slice<stdgo.io.Io.Writer> = ((null : Slice<stdgo.io.Io.Writer>));
    public var _sent : GoMap<stdgo.reflect.Reflect.Type, T_typeId> = ((null : GoMap<stdgo.reflect.Reflect.Type, T_typeId>));
    public var _countState : T_encoderState = ((null : T_encoderState));
    public var _freeList : T_encoderState = ((null : T_encoderState));
    public var _byteBuf : T_encBuffer = new T_encBuffer();
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?_mutex:stdgo.sync.Sync.Mutex, ?_w:Slice<stdgo.io.Io.Writer>, ?_sent:GoMap<stdgo.reflect.Reflect.Type, T_typeId>, ?_countState:T_encoderState, ?_freeList:T_encoderState, ?_byteBuf:T_encBuffer, ?_err:stdgo.Error) {
        if (_mutex != null) this._mutex = _mutex;
        if (_w != null) this._w = _w;
        if (_sent != null) this._sent = _sent;
        if (_countState != null) this._countState = _countState;
        if (_freeList != null) this._freeList = _freeList;
        if (_byteBuf != null) this._byteBuf = _byteBuf;
        if (_err != null) this._err = _err;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Encoder(_mutex, _w, _sent, _countState, _freeList, _byteBuf, _err);
    }
}
@:structInit class ET0 {
    public var a : GoInt = ((0 : GoInt));
    public var b : GoString = (("" : GoString));
    public function new(?a:GoInt, ?b:GoString) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ET0(a, b);
    }
}
@:structInit class ET2 {
    public var x : GoString = (("" : GoString));
    public function new(?x:GoString) {
        if (x != null) this.x = x;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ET2(x);
    }
}
@:structInit class ET1 {
    public var a : GoInt = ((0 : GoInt));
    public var et2 : ET2 = ((null : ET2));
    public var next : ET1 = ((null : ET1));
    public function new(?a:GoInt, ?et2:ET2, ?next:ET1) {
        if (a != null) this.a = a;
        if (et2 != null) this.et2 = et2;
        if (next != null) this.next = next;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ET1(a, et2, next);
    }
}
@:structInit class ET3 {
    public var a : GoInt = ((0 : GoInt));
    public var et2 : ET2 = ((null : ET2));
    public var differentNext : ET1 = ((null : ET1));
    public function new(?a:GoInt, ?et2:ET2, ?differentNext:ET1) {
        if (a != null) this.a = a;
        if (et2 != null) this.et2 = et2;
        if (differentNext != null) this.differentNext = differentNext;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ET3(a, et2, differentNext);
    }
}
@:structInit class ET4 {
    public var a : GoInt = ((0 : GoInt));
    public var et2 : GoFloat64 = ((0 : GoFloat64));
    public var next : GoInt = ((0 : GoInt));
    public function new(?a:GoInt, ?et2:GoFloat64, ?next:GoInt) {
        if (a != null) this.a = a;
        if (et2 != null) this.et2 = et2;
        if (next != null) this.next = next;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ET4(a, et2, next);
    }
}
@:structInit class SingleTest {
    public var _in : AnyInterface = ((null : AnyInterface));
    public var _out : AnyInterface = ((null : AnyInterface));
    public var _err : GoString = (("" : GoString));
    public function new(?_in:AnyInterface, ?_out:AnyInterface, ?_err:GoString) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
        if (_err != null) this._err = _err;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new SingleTest(_in, _out, _err);
    }
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_interfaceIndirectTestT_static_extension) class T_interfaceIndirectTestT {
    @:keep
    public function f():Bool {
        var _this = this;
        _this;
        return true;
    }
    public function new() {}
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_interfaceIndirectTestT();
    }
}
@:structInit class Struct0 {
    public var i : AnyInterface = ((null : AnyInterface));
    public function new(?i:AnyInterface) {
        if (i != null) this.i = i;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Struct0(i);
    }
}
@:structInit class NewType0 {
    public var s : GoString = (("" : GoString));
    public function new(?s:GoString) {
        if (s != null) this.s = s;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new NewType0(s);
    }
}
@:structInit class T_ignoreTest {
    public var _in : AnyInterface = ((null : AnyInterface));
    public var _out : AnyInterface = ((null : AnyInterface));
    public function new(?_in:AnyInterface, ?_out:AnyInterface) {
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_ignoreTest(_in, _out);
    }
}
@:structInit class Bug0Outer {
    public var bug0Field : AnyInterface = ((null : AnyInterface));
    public function new(?bug0Field:AnyInterface) {
        if (bug0Field != null) this.bug0Field = bug0Field;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Bug0Outer(bug0Field);
    }
}
@:structInit class Bug0Inner {
    public var a : GoInt = ((0 : GoInt));
    public function new(?a:GoInt) {
        if (a != null) this.a = a;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Bug0Inner(a);
    }
}
@:structInit class Bug1Elem {
    public var name : GoString = (("" : GoString));
    public var id : GoInt = ((0 : GoInt));
    public function new(?name:GoString, ?id:GoInt) {
        if (name != null) this.name = name;
        if (id != null) this.id = id;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Bug1Elem(name, id);
    }
}
@:structInit class Bug2 {
    public var a : GoInt = ((0 : GoInt));
    public var c : Chan<GoInt> = ((null : Chan<GoInt>));
    public var cp : Chan<GoInt> = ((null : Chan<GoInt>));
    public var f : () -> Void = null;
    public var fpp : () -> Void = ((null : () -> Void));
    public function new(?a:GoInt, ?c:Chan<GoInt>, ?cp:Chan<GoInt>, ?f:() -> Void, ?fpp:() -> Void) {
        if (a != null) this.a = a;
        if (c != null) this.c = c;
        if (cp != null) this.cp = cp;
        if (f != null) this.f = f;
        if (fpp != null) this.fpp = fpp;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Bug2(a, c, cp, f, fpp);
    }
}
@:structInit class Bug3 {
    public var num : GoInt = ((0 : GoInt));
    public var children : Slice<Bug3> = ((null : Slice<Bug3>));
    public function new(?num:GoInt, ?children:Slice<Bug3>) {
        if (num != null) this.num = num;
        if (children != null) this.children = children;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Bug3(num, children);
    }
}
@:structInit class Bug4Public {
    public var name : GoString = (("" : GoString));
    public var secret : Bug4Secret = new Bug4Secret();
    public function new(?name:GoString, ?secret:Bug4Secret) {
        if (name != null) this.name = name;
        if (secret != null) this.secret = secret;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Bug4Public(name, secret);
    }
}
@:structInit class Bug4Secret {
    public var _a : GoInt = ((0 : GoInt));
    public function new(?_a:GoInt) {
        if (_a != null) this._a = _a;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Bug4Secret(_a);
    }
}
@:structInit class Z {
    public function new() {}
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Z();
    }
}
@:structInit class T_badDataTest {
    public var _input : GoString = (("" : GoString));
    public var _error : GoString = (("" : GoString));
    public var _data : AnyInterface = ((null : AnyInterface));
    public function new(?_input:GoString, ?_error:GoString, ?_data:AnyInterface) {
        if (_input != null) this._input = _input;
        if (_error != null) this._error = _error;
        if (_data != null) this._data = _data;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_badDataTest(_input, _error, _data);
    }
}
@:structInit class T_gobError {
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?_err:stdgo.Error) {
        if (_err != null) this._err = _err;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_gobError(_err);
    }
}
@:structInit @:using(stdgo.encoding.gob.Gob.ByteStruct_static_extension) class ByteStruct {
    @:keep
    public function gobDecode(_data:Slice<GoByte>):Error {
        var _g = this;
        _g;
        if (_g == null) {
            return stdgo.errors.Errors.new_(((("NIL RECEIVER" : GoString))));
        };
        if ((_data != null ? _data.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return stdgo.io.Io.eof;
        };
        _g._a = (_data != null ? _data[((0 : GoInt))] : ((0 : GoUInt8)));
        for (_i => _c in _data) {
            if (_c != (_g._a + ((_i : GoByte)))) {
                return stdgo.errors.Errors.new_(((("invalid data sequence" : GoString))));
            };
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public function gobEncode():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _g = this;
        _g;
        var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((3 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        if (_b != null) _b[((0 : GoInt))] = _g._a;
        if (_b != null) _b[((1 : GoInt))] = _g._a + ((1 : GoUInt8));
        if (_b != null) _b[((2 : GoInt))] = _g._a + ((2 : GoUInt8));
        return { _0 : _b, _1 : ((null : stdgo.Error)) };
    }
    public var _a : GoUInt8 = ((0 : GoUInt8));
    public function new(?_a:GoUInt8) {
        if (_a != null) this._a = _a;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ByteStruct(_a);
    }
}
@:structInit @:using(stdgo.encoding.gob.Gob.StringStruct_static_extension) class StringStruct {
    @:keep
    public function gobDecode(_data:Slice<GoByte>):Error {
        var _g = this;
        _g;
        if ((_data != null ? _data.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return stdgo.io.Io.eof;
        };
        var _a:GoUInt8 = (_data != null ? _data[((0 : GoInt))] : ((0 : GoUInt8)));
        for (_i => _c in _data) {
            if (_c != (_a + ((_i : GoByte)))) {
                return stdgo.errors.Errors.new_(((("invalid data sequence" : GoString))));
            };
        };
        _g._s = ((_data : GoString));
        return ((null : stdgo.Error));
    }
    @:keep
    public function gobEncode():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _g = this;
        _g;
        return { _0 : ((_g._s : Slice<GoByte>)), _1 : ((null : stdgo.Error)) };
    }
    public var _s : GoString = (("" : GoString));
    public function new(?_s:GoString) {
        if (_s != null) this._s = _s;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new StringStruct(_s);
    }
}
@:structInit @:using(stdgo.encoding.gob.Gob.ArrayStruct_static_extension) class ArrayStruct {
    @:keep
    public function gobDecode(_data:Slice<GoByte>):Error {
        var _a = this;
        _a;
        if ((_data != null ? _data.length : ((0 : GoInt))) != (_a._a != null ? _a._a.length : ((0 : GoInt)))) {
            return stdgo.errors.Errors.new_(((("wrong length in array decode" : GoString))));
        };
        Go.copySlice(_a._a.__slice__(0), _data);
        return ((null : stdgo.Error));
    }
    @:keep
    public function gobEncode():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _a = this;
        _a;
        return { _0 : _a._a.__slice__(0), _1 : ((null : stdgo.Error)) };
    }
    public var _a : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 8192) ((0 : GoUInt8))]);
    public function new(?_a:GoArray<GoUInt8>) {
        if (_a != null) this._a = _a;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new ArrayStruct(_a);
    }
}
@:structInit class GobTest0 {
    public var x : GoInt = ((0 : GoInt));
    public var g : ByteStruct = ((null : ByteStruct));
    public function new(?x:GoInt, ?g:ByteStruct) {
        if (x != null) this.x = x;
        if (g != null) this.g = g;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new GobTest0(x, g);
    }
}
@:structInit class GobTest1 {
    public var x : GoInt = ((0 : GoInt));
    public var g : StringStruct = ((null : StringStruct));
    public function new(?x:GoInt, ?g:StringStruct) {
        if (x != null) this.x = x;
        if (g != null) this.g = g;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new GobTest1(x, g);
    }
}
@:structInit class GobTest2 {
    public var x : GoInt = ((0 : GoInt));
    public var g : GoString = (("" : GoString));
    public function new(?x:GoInt, ?g:GoString) {
        if (x != null) this.x = x;
        if (g != null) this.g = g;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new GobTest2(x, g);
    }
}
@:structInit class GobTest3 {
    public var x : GoInt = ((0 : GoInt));
    public var g : Pointer<Gobber> = ((null : Pointer<Gobber>));
    public var b : Pointer<BinaryGobber> = ((null : Pointer<BinaryGobber>));
    public var t : Pointer<TextGobber> = ((null : Pointer<TextGobber>));
    public function new(?x:GoInt, ?g:Pointer<Gobber>, ?b:Pointer<BinaryGobber>, ?t:Pointer<TextGobber>) {
        if (x != null) this.x = x;
        if (g != null) this.g = g;
        if (b != null) this.b = b;
        if (t != null) this.t = t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new GobTest3(x, g, b, t);
    }
}
@:structInit class GobTest4 {
    public var x : GoInt = ((0 : GoInt));
    public var v : ValueGobber = new ValueGobber();
    public var bv : BinaryValueGobber = new BinaryValueGobber();
    public var tv : TextValueGobber = new TextValueGobber();
    public function new(?x:GoInt, ?v:ValueGobber, ?bv:BinaryValueGobber, ?tv:TextValueGobber) {
        if (x != null) this.x = x;
        if (v != null) this.v = v;
        if (bv != null) this.bv = bv;
        if (tv != null) this.tv = tv;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new GobTest4(x, v, bv, tv);
    }
}
@:structInit class GobTest5 {
    public var x : GoInt = ((0 : GoInt));
    public var v : Pointer<ValueGobber> = ((null : Pointer<ValueGobber>));
    public var bv : Pointer<BinaryValueGobber> = ((null : Pointer<BinaryValueGobber>));
    public var tv : Pointer<TextValueGobber> = ((null : Pointer<TextValueGobber>));
    public function new(?x:GoInt, ?v:Pointer<ValueGobber>, ?bv:Pointer<BinaryValueGobber>, ?tv:Pointer<TextValueGobber>) {
        if (x != null) this.x = x;
        if (v != null) this.v = v;
        if (bv != null) this.bv = bv;
        if (tv != null) this.tv = tv;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new GobTest5(x, v, bv, tv);
    }
}
@:structInit class GobTest6 {
    public var x : GoInt = ((0 : GoInt));
    public var v : ValueGobber = new ValueGobber();
    public var w : Pointer<ValueGobber> = ((null : Pointer<ValueGobber>));
    public var bv : BinaryValueGobber = new BinaryValueGobber();
    public var bw : Pointer<BinaryValueGobber> = ((null : Pointer<BinaryValueGobber>));
    public var tv : TextValueGobber = new TextValueGobber();
    public var tw : Pointer<TextValueGobber> = ((null : Pointer<TextValueGobber>));
    public function new(?x:GoInt, ?v:ValueGobber, ?w:Pointer<ValueGobber>, ?bv:BinaryValueGobber, ?bw:Pointer<BinaryValueGobber>, ?tv:TextValueGobber, ?tw:Pointer<TextValueGobber>) {
        if (x != null) this.x = x;
        if (v != null) this.v = v;
        if (w != null) this.w = w;
        if (bv != null) this.bv = bv;
        if (bw != null) this.bw = bw;
        if (tv != null) this.tv = tv;
        if (tw != null) this.tw = tw;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new GobTest6(x, v, w, bv, bw, tv, tw);
    }
}
@:structInit class GobTest7 {
    public var x : GoInt = ((0 : GoInt));
    public var v : Pointer<ValueGobber> = ((null : Pointer<ValueGobber>));
    public var w : ValueGobber = new ValueGobber();
    public var bv : Pointer<BinaryValueGobber> = ((null : Pointer<BinaryValueGobber>));
    public var bw : BinaryValueGobber = new BinaryValueGobber();
    public var tv : Pointer<TextValueGobber> = ((null : Pointer<TextValueGobber>));
    public var tw : TextValueGobber = new TextValueGobber();
    public function new(?x:GoInt, ?v:Pointer<ValueGobber>, ?w:ValueGobber, ?bv:Pointer<BinaryValueGobber>, ?bw:BinaryValueGobber, ?tv:Pointer<TextValueGobber>, ?tw:TextValueGobber) {
        if (x != null) this.x = x;
        if (v != null) this.v = v;
        if (w != null) this.w = w;
        if (bv != null) this.bv = bv;
        if (bw != null) this.bw = bw;
        if (tv != null) this.tv = tv;
        if (tw != null) this.tw = tw;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new GobTest7(x, v, w, bv, bw, tv, tw);
    }
}
@:structInit class GobTestIgnoreEncoder {
    public var x : GoInt = ((0 : GoInt));
    public function new(?x:GoInt) {
        if (x != null) this.x = x;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new GobTestIgnoreEncoder(x);
    }
}
@:structInit class GobTestValueEncDec {
    public var x : GoInt = ((0 : GoInt));
    public var g : StringStruct = new StringStruct();
    public function new(?x:GoInt, ?g:StringStruct) {
        if (x != null) this.x = x;
        if (g != null) this.g = g;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new GobTestValueEncDec(x, g);
    }
}
@:structInit class GobTestIndirectEncDec {
    public var x : GoInt = ((0 : GoInt));
    public var g : StringStruct = ((null : StringStruct));
    public function new(?x:GoInt, ?g:StringStruct) {
        if (x != null) this.x = x;
        if (g != null) this.g = g;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new GobTestIndirectEncDec(x, g);
    }
}
@:structInit class GobTestArrayEncDec {
    public var x : GoInt = ((0 : GoInt));
    public var a : ArrayStruct = new ArrayStruct();
    public function new(?x:GoInt, ?a:ArrayStruct) {
        if (x != null) this.x = x;
        if (a != null) this.a = a;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new GobTestArrayEncDec(x, a);
    }
}
@:structInit class GobTestIndirectArrayEncDec {
    public var x : GoInt = ((0 : GoInt));
    public var a : ArrayStruct = ((null : ArrayStruct));
    public function new(?x:GoInt, ?a:ArrayStruct) {
        if (x != null) this.x = x;
        if (a != null) this.a = a;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new GobTestIndirectArrayEncDec(x, a);
    }
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_gobDecoderBug0_static_extension) class T_gobDecoderBug0 {
    @:keep
    public function gobDecode(_b:Slice<GoByte>):Error {
        var _br = this;
        _br;
        _br._foo = ((("foo" : GoString)));
        _br._bar = ((("bar" : GoString)));
        return ((null : stdgo.Error));
    }
    @:keep
    public function gobEncode():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _br = this;
        _br;
        return { _0 : ((((_br.toString() : GoString)) : Slice<GoByte>)), _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function toString():GoString {
        var _br = this;
        _br;
        return (_br._foo + ((("-" : GoString)))) + _br._bar;
    }
    public var _foo : GoString = (("" : GoString));
    public var _bar : GoString = (("" : GoString));
    public function new(?_foo:GoString, ?_bar:GoString) {
        if (_foo != null) this._foo = _foo;
        if (_bar != null) this._bar = _bar;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_gobDecoderBug0(_foo, _bar);
    }
}
@:structInit class T_isZeroBug {
    public var t : stdgo.time.Time.Time = new stdgo.time.Time.Time();
    public var s : GoString = (("" : GoString));
    public var i : GoInt = ((0 : GoInt));
    public var a : T_isZeroBugArray = new T_isZeroBugArray();
    public var f : T_isZeroBugInterface = new T_isZeroBugInterface();
    public function new(?t:stdgo.time.Time.Time, ?s:GoString, ?i:GoInt, ?a:T_isZeroBugArray, ?f:T_isZeroBugInterface) {
        if (t != null) this.t = t;
        if (s != null) this.s = s;
        if (i != null) this.i = i;
        if (a != null) this.a = a;
        if (f != null) this.f = f;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_isZeroBug(t, s, i, a, f);
    }
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_isZeroBugInterface_static_extension) class T_isZeroBugInterface {
    @:keep
    public function gobDecode(_data:Slice<GoByte>):Error {
        var _i = this;
        _i;
        return ((null : stdgo.Error));
    }
    @:keep
    public function gobEncode():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _i = this;
        (_i == null ? null : _i.__copy__());
        var _b:Slice<GoByte> = ((null : Slice<GoUInt8>)), _e:Error = ((null : stdgo.Error));
        return { _0 : ((new Slice<GoUInt8>() : Slice<GoUInt8>)), _1 : ((null : stdgo.Error)) };
    }
    public var i : AnyInterface = ((null : AnyInterface));
    public function new(?i:AnyInterface) {
        if (i != null) this.i = i;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_isZeroBugInterface(i);
    }
}
@:structInit class Bench {
    public var a : GoInt = ((0 : GoInt));
    public var b : GoFloat64 = ((0 : GoFloat64));
    public var c : GoString = (("" : GoString));
    public var d : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public function new(?a:GoInt, ?b:GoFloat64, ?c:GoString, ?d:Slice<GoUInt8>) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (c != null) this.c = c;
        if (d != null) this.d = d;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Bench(a, b, c, d);
    }
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_benchmarkBuf_static_extension) class T_benchmarkBuf {
    @:keep
    public function _reset():Void {
        var _b = this;
        _b;
        _b._offset = ((0 : GoInt));
    }
    @:keep
    public function readByte():{ var _0 : GoByte; var _1 : Error; } {
        var _b = this;
        _b;
        var _c:GoByte = ((0 : GoUInt8)), _err:Error = ((null : stdgo.Error));
        if (_b._offset >= (_b._data != null ? _b._data.length : ((0 : GoInt)))) {
            return { _0 : ((0 : GoUInt8)), _1 : stdgo.io.Io.eof };
        };
        _c = (_b._data != null ? _b._data[_b._offset] : ((0 : GoUInt8)));
        _b._offset++;
        return { _0 : _c, _1 : _err };
    }
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _b = this;
        _b;
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _n = Go.copySlice(_p, _b._data.__slice__(_b._offset));
        if (_n == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.eof };
        };
        _b._offset = _b._offset + (_n);
        return { _0 : _n, _1 : _err };
    }
    public var _offset : GoInt = ((0 : GoInt));
    public var _data : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public function new(?_offset:GoInt, ?_data:Slice<GoUInt8>) {
        if (_offset != null) this._offset = _offset;
        if (_data != null) this._data = _data;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_benchmarkBuf(_offset, _data);
    }
}
@:structInit class T_userTypeInfo {
    public var _user : stdgo.reflect.Reflect.Type = ((null : stdgo.reflect.Reflect.Type));
    public var _base : stdgo.reflect.Reflect.Type = ((null : stdgo.reflect.Reflect.Type));
    public var _indir : GoInt = ((0 : GoInt));
    public var _externalEnc : GoInt = ((0 : GoInt));
    public var _externalDec : GoInt = ((0 : GoInt));
    public var _encIndir : GoInt8 = ((0 : GoInt8));
    public var _decIndir : GoInt8 = ((0 : GoInt8));
    public function new(?_user:stdgo.reflect.Reflect.Type, ?_base:stdgo.reflect.Reflect.Type, ?_indir:GoInt, ?_externalEnc:GoInt, ?_externalDec:GoInt, ?_encIndir:GoInt8, ?_decIndir:GoInt8) {
        if (_user != null) this._user = _user;
        if (_base != null) this._base = _base;
        if (_indir != null) this._indir = _indir;
        if (_externalEnc != null) this._externalEnc = _externalEnc;
        if (_externalDec != null) this._externalDec = _externalDec;
        if (_encIndir != null) this._encIndir = _encIndir;
        if (_decIndir != null) this._decIndir = _decIndir;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_userTypeInfo(_user, _base, _indir, _externalEnc, _externalDec, _encIndir, _decIndir);
    }
}
@:structInit @:using(stdgo.encoding.gob.Gob.CommonType_static_extension) class CommonType {
    @:keep
    public function _name():GoString {
        var _t = this;
        _t;
        return _t.name;
    }
    @:keep
    public function _safeString(_seen:GoMap<T_typeId, Bool>):GoString {
        var _t = this;
        _t;
        return _t.name;
    }
    @:keep
    public function _string():GoString {
        var _t = this;
        _t;
        return _t.name;
    }
    @:keep
    public function _setId(_id:T_typeId):Void {
        var _t = this;
        _t;
        _t.id = _id;
    }
    @:keep
    public function _id():T_typeId {
        var _t = this;
        _t;
        return _t.id;
    }
    public var name : GoString = (("" : GoString));
    public var id : T_typeId = new T_typeId();
    public function new(?name:GoString, ?id:T_typeId) {
        if (name != null) this.name = name;
        if (id != null) this.id = id;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new CommonType(name, id);
    }
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_arrayType_static_extension) class T_arrayType {
    @:keep
    public function _string():GoString {
        var _a = this;
        _a;
        return _a._safeString(new Map<Int, Bool>());
    }
    @:keep
    public function _safeString(_seen:GoMap<T_typeId, Bool>):GoString {
        var _a = this;
        _a;
        if ((_seen != null ? _seen[_a.id] : false)) {
            return _a.name;
        };
        if (_seen != null) _seen[_a.id] = true;
        return stdgo.fmt.Fmt.sprintf(((("[%d]%s" : GoString))), Go.toInterface(_a.len), Go.toInterface(_a.elem._gobType()._safeString(_seen)));
    }
    @:keep
    public function _init(_elem:T_gobType, _len:GoInt):Void {
        var _a = this;
        _a;
        _setTypeId(_a);
        _a.elem = _elem._id();
        _a.len = _len;
    }
    @:embedded
    public var commonType : CommonType = new CommonType();
    public var elem : T_typeId = new T_typeId();
    public var len : GoInt = ((0 : GoInt));
    public function new(?commonType:CommonType, ?elem:T_typeId, ?len:GoInt) {
        if (commonType != null) this.commonType = commonType;
        if (elem != null) this.elem = elem;
        if (len != null) this.len = len;
    }
    public function _id():T_typeId return commonType._id();
    public function _name():GoString return commonType._name();
    public function _setId(_id:T_typeId) commonType._setId(_id);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_arrayType(commonType, elem, len);
    }
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_gobEncoderType_static_extension) class T_gobEncoderType {
    @:keep
    public function _string():GoString {
        var _g = this;
        _g;
        return _g.name;
    }
    @:keep
    public function _safeString(_seen:GoMap<T_typeId, Bool>):GoString {
        var _g = this;
        _g;
        return _g.name;
    }
    @:embedded
    public var commonType : CommonType = new CommonType();
    public function new(?commonType:CommonType) {
        if (commonType != null) this.commonType = commonType;
    }
    public function _id():T_typeId return commonType._id();
    public function _name():GoString return commonType._name();
    public function _setId(_id:T_typeId) commonType._setId(_id);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_gobEncoderType(commonType);
    }
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_mapType_static_extension) class T_mapType {
    @:keep
    public function _string():GoString {
        var _m = this;
        _m;
        return _m._safeString(new Map<Int, Bool>());
    }
    @:keep
    public function _safeString(_seen:GoMap<T_typeId, Bool>):GoString {
        var _m = this;
        _m;
        if ((_seen != null ? _seen[_m.id] : false)) {
            return _m.name;
        };
        if (_seen != null) _seen[_m.id] = true;
        var _key:GoString = _m.key._gobType()._safeString(_seen);
        var _elem:GoString = _m.elem._gobType()._safeString(_seen);
        return stdgo.fmt.Fmt.sprintf(((("map[%s]%s" : GoString))), Go.toInterface(_key), Go.toInterface(_elem));
    }
    @:keep
    public function _init(_key:T_gobType, _elem:T_gobType):Void {
        var _m = this;
        _m;
        _setTypeId(_m);
        _m.key = _key._id();
        _m.elem = _elem._id();
    }
    @:embedded
    public var commonType : CommonType = new CommonType();
    public var key : T_typeId = new T_typeId();
    public var elem : T_typeId = new T_typeId();
    public function new(?commonType:CommonType, ?key:T_typeId, ?elem:T_typeId) {
        if (commonType != null) this.commonType = commonType;
        if (key != null) this.key = key;
        if (elem != null) this.elem = elem;
    }
    public function _id():T_typeId return commonType._id();
    public function _name():GoString return commonType._name();
    public function _setId(_id:T_typeId) commonType._setId(_id);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_mapType(commonType, key, elem);
    }
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_sliceType_static_extension) class T_sliceType {
    @:keep
    public function _string():GoString {
        var _s = this;
        _s;
        return _s._safeString(new Map<Int, Bool>());
    }
    @:keep
    public function _safeString(_seen:GoMap<T_typeId, Bool>):GoString {
        var _s = this;
        _s;
        if ((_seen != null ? _seen[_s.id] : false)) {
            return _s.name;
        };
        if (_seen != null) _seen[_s.id] = true;
        return stdgo.fmt.Fmt.sprintf(((("[]%s" : GoString))), Go.toInterface(_s.elem._gobType()._safeString(_seen)));
    }
    @:keep
    public function _init(_elem:T_gobType):Void {
        var _s = this;
        _s;
        _setTypeId(_s);
        if (_elem._id() == ((0 : GoInt32))) {
            _setTypeId(_elem);
        };
        _s.elem = _elem._id();
    }
    @:embedded
    public var commonType : CommonType = new CommonType();
    public var elem : T_typeId = new T_typeId();
    public function new(?commonType:CommonType, ?elem:T_typeId) {
        if (commonType != null) this.commonType = commonType;
        if (elem != null) this.elem = elem;
    }
    public function _id():T_typeId return commonType._id();
    public function _name():GoString return commonType._name();
    public function _setId(_id:T_typeId) commonType._setId(_id);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_sliceType(commonType, elem);
    }
}
@:structInit class T_fieldType {
    public var name : GoString = (("" : GoString));
    public var id : T_typeId = new T_typeId();
    public function new(?name:GoString, ?id:T_typeId) {
        if (name != null) this.name = name;
        if (id != null) this.id = id;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_fieldType(name, id);
    }
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_structType_static_extension) class T_structType {
    @:keep
    public function _string():GoString {
        var _s = this;
        _s;
        return _s._safeString(new Map<Int, Bool>());
    }
    @:keep
    public function _safeString(_seen:GoMap<T_typeId, Bool>):GoString {
        var _s = this;
        _s;
        if (_s == null) {
            return ((("<nil>" : GoString)));
        };
        {
            var __tmp__ = (_seen != null && _seen.__exists__(_s.id) ? { value : _seen[_s.id], ok : true } : { value : false, ok : false }), _0:Bool = __tmp__.value, _ok:Bool = __tmp__.ok;
            if (_ok) {
                return _s.name;
            };
        };
        if (_seen != null) _seen[_s.id] = true;
        var _str:GoString = _s.name + (((" = struct { " : GoString)));
        for (_1 => _f in _s.field) {
            _str = _str + (stdgo.fmt.Fmt.sprintf(((("%s %s; " : GoString))), Go.toInterface(_f.name), Go.toInterface(_f.id._gobType()._safeString(_seen))));
        };
        _str = _str + (((("}" : GoString))));
        return _str;
    }
    @:embedded
    public var commonType : CommonType = new CommonType();
    public var field : Slice<T_fieldType> = ((null : Slice<T_fieldType>));
    public function new(?commonType:CommonType, ?field:Slice<T_fieldType>) {
        if (commonType != null) this.commonType = commonType;
        if (field != null) this.field = field;
    }
    public function _id():T_typeId return commonType._id();
    public function _name():GoString return commonType._name();
    public function _setId(_id:T_typeId) commonType._setId(_id);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_structType(commonType, field);
    }
}
@:structInit @:using(stdgo.encoding.gob.Gob.T_wireType_static_extension) class T_wireType {
    @:keep
    public function _string():GoString {
        var _w = this;
        _w;
        {};
        if (_w == null) {
            return ((("unknown type" : GoString)));
        };
        if (_w.arrayT != null) {
            return _w.arrayT.name;
        } else if (_w.sliceT != null) {
            return _w.sliceT.name;
        } else if (_w.structT != null) {
            return _w.structT.name;
        } else if (_w.mapT != null) {
            return _w.mapT.name;
        } else if (_w.gobEncoderT != null) {
            return _w.gobEncoderT.name;
        } else if (_w.binaryMarshalerT != null) {
            return _w.binaryMarshalerT.name;
        } else if (_w.textMarshalerT != null) {
            return _w.textMarshalerT.name;
        };
        return ((("unknown type" : GoString)));
    }
    public var arrayT : T_arrayType = ((null : T_arrayType));
    public var sliceT : T_sliceType = ((null : T_sliceType));
    public var structT : T_structType = ((null : T_structType));
    public var mapT : T_mapType = ((null : T_mapType));
    public var gobEncoderT : T_gobEncoderType = ((null : T_gobEncoderType));
    public var binaryMarshalerT : T_gobEncoderType = ((null : T_gobEncoderType));
    public var textMarshalerT : T_gobEncoderType = ((null : T_gobEncoderType));
    public function new(?arrayT:T_arrayType, ?sliceT:T_sliceType, ?structT:T_structType, ?mapT:T_mapType, ?gobEncoderT:T_gobEncoderType, ?binaryMarshalerT:T_gobEncoderType, ?textMarshalerT:T_gobEncoderType) {
        if (arrayT != null) this.arrayT = arrayT;
        if (sliceT != null) this.sliceT = sliceT;
        if (structT != null) this.structT = structT;
        if (mapT != null) this.mapT = mapT;
        if (gobEncoderT != null) this.gobEncoderT = gobEncoderT;
        if (binaryMarshalerT != null) this.binaryMarshalerT = binaryMarshalerT;
        if (textMarshalerT != null) this.textMarshalerT = textMarshalerT;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_wireType(arrayT, sliceT, structT, mapT, gobEncoderT, binaryMarshalerT, textMarshalerT);
    }
}
@:structInit class T_typeInfo {
    public var _id : T_typeId = new T_typeId();
    public var _encInit : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
    public var _encoder : stdgo.sync.atomic.Atomic.Value = new stdgo.sync.atomic.Atomic.Value();
    public var _wire : T_wireType = ((null : T_wireType));
    public function new(?_id:T_typeId, ?_encInit:stdgo.sync.Sync.Mutex, ?_encoder:stdgo.sync.atomic.Atomic.Value, ?_wire:T_wireType) {
        if (_id != null) this._id = _id;
        if (_encInit != null) this._encInit = _encInit;
        if (_encoder != null) this._encoder = _encoder;
        if (_wire != null) this._wire = _wire;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_typeInfo(_id, _encInit, _encoder, _wire);
    }
}
@:structInit class T_typeT {
    public var _id : T_typeId = new T_typeId();
    public var _str : GoString = (("" : GoString));
    public function new(?_id:T_typeId, ?_str:GoString) {
        if (_id != null) this._id = _id;
        if (_str != null) this._str = _str;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_typeT(_id, _str);
    }
}
@:structInit class Bar {
    public var x : GoString = (("" : GoString));
    public function new(?x:GoString) {
        if (x != null) this.x = x;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Bar(x);
    }
}
@:structInit class Foo {
    public var a : GoInt = ((0 : GoInt));
    public var b : GoInt32 = ((0 : GoInt32));
    public var c : GoString = (("" : GoString));
    public var d : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var e : Pointer<GoFloat64> = ((null : Pointer<GoFloat64>));
    public var f : Pointer<GoFloat64> = ((null : Pointer<GoFloat64>));
    public var g : Bar = ((null : Bar));
    public var h : Bar = ((null : Bar));
    public var i : Foo = ((null : Foo));
    public function new(?a:GoInt, ?b:GoInt32, ?c:GoString, ?d:Slice<GoUInt8>, ?e:Pointer<GoFloat64>, ?f:Pointer<GoFloat64>, ?g:Bar, ?h:Bar, ?i:Foo) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (c != null) this.c = c;
        if (d != null) this.d = d;
        if (e != null) this.e = e;
        if (f != null) this.f = f;
        if (g != null) this.g = g;
        if (h != null) this.h = h;
        if (i != null) this.i = i;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Foo(a, b, c, d, e, f, g, h, i);
    }
}
@:structInit class N1 {
    public function new() {}
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new N1();
    }
}
@:structInit class N2 {
    public function new() {}
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new N2();
    }
}
@:structInit @:local class T__struct_0 {
    public function toString():String return "{" + "}";
    public function new(?toString) {}
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_0();
    }
}
@:structInit @:local class T__struct_1 {
    public var a : GoInt = ((0 : GoInt));
    public function toString():String return "{" + Go.string(a) + "}";
    public function new(?a:GoInt, ?toString) {
        if (a != null) this.a = a;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_1(a);
    }
}
@:structInit @:local class T__struct_2 {
    public var _value : AnyInterface = ((null : AnyInterface));
    public var _mustPanic : Bool = false;
    public function toString():String return "{" + Go.string(_value) + " " + Go.string(_mustPanic) + "}";
    public function new(?_value:AnyInterface, ?_mustPanic:Bool, ?toString) {
        if (_value != null) this._value = _value;
        if (_mustPanic != null) this._mustPanic = _mustPanic;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_2(_value, _mustPanic);
    }
}
@:structInit @:local class T__struct_3 {
    public var i : AnyInterface = ((null : AnyInterface));
    public function toString():String return "{" + Go.string(i) + "}";
    public function new(?i:AnyInterface, ?toString) {
        if (i != null) this.i = i;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_3(i);
    }
}
@:structInit @:local class T__struct_4 {
    public var _r7 : GoInt = ((0 : GoInt));
    public function toString():String return "{" + Go.string(_r7) + "}";
    public function new(?_r7:GoInt, ?toString) {
        if (_r7 != null) this._r7 = _r7;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_4(_r7);
    }
}
@:structInit @:local class T__struct_5 {
    public var _r6 : GoInt = ((0 : GoInt));
    public function toString():String return "{" + Go.string(_r6) + "}";
    public function new(?_r6:GoInt, ?toString) {
        if (_r6 != null) this._r6 = _r6;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_5(_r6);
    }
}
@:structInit @:local class T__struct_6 {
    public var _r5 : GoInt = ((0 : GoInt));
    public function toString():String return "{" + Go.string(_r5) + "}";
    public function new(?_r5:GoInt, ?toString) {
        if (_r5 != null) this._r5 = _r5;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_6(_r5);
    }
}
@:structInit @:local class T__struct_7 {
    public var _r4 : GoInt = ((0 : GoInt));
    public function toString():String return "{" + Go.string(_r4) + "}";
    public function new(?_r4:GoInt, ?toString) {
        if (_r4 != null) this._r4 = _r4;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_7(_r4);
    }
}
@:structInit @:local class T__struct_8 {
    public var _r3 : GoInt = ((0 : GoInt));
    public function toString():String return "{" + Go.string(_r3) + "}";
    public function new(?_r3:GoInt, ?toString) {
        if (_r3 != null) this._r3 = _r3;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_8(_r3);
    }
}
@:structInit @:local class T__struct_9 {
    public var _r2 : GoInt = ((0 : GoInt));
    public function toString():String return "{" + Go.string(_r2) + "}";
    public function new(?_r2:GoInt, ?toString) {
        if (_r2 != null) this._r2 = _r2;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_9(_r2);
    }
}
@:structInit @:local class T__struct_10 {
    public var _r1 : GoInt = ((0 : GoInt));
    public function toString():String return "{" + Go.string(_r1) + "}";
    public function new(?_r1:GoInt, ?toString) {
        if (_r1 != null) this._r1 = _r1;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_10(_r1);
    }
}
@:structInit @:local class T__struct_11 {
    public var _t : AnyInterface = ((null : AnyInterface));
    public var _name : GoString = (("" : GoString));
    public function toString():String return "{" + Go.string(_t) + " " + Go.string(_name) + "}";
    public function new(?_t:AnyInterface, ?_name:GoString, ?toString) {
        if (_t != null) this._t = _t;
        if (_name != null) this._name = _name;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_11(_t, _name);
    }
}
@:named @:using(stdgo.encoding.gob.Gob.Int__static_extension) typedef Int_ = GoInt;
@:named @:using(stdgo.encoding.gob.Gob.Float__static_extension) typedef Float_ = GoFloat64;
@:named @:using(stdgo.encoding.gob.Gob.Vector_static_extension) typedef Vector = Slice<GoInt>;
@:named typedef String_ = GoString;
@:named typedef T_decHelper = (T_decoderState, stdgo.reflect.Reflect.Value, GoInt, stdgo.Error) -> Bool;
@:named typedef T_decOp = (T_decInstr, T_decoderState, stdgo.reflect.Reflect.Value) -> Void;
@:named typedef T_encHelper = (T_encoderState, stdgo.reflect.Reflect.Value) -> Bool;
@:named typedef T_encOp = (T_encInstr, T_encoderState, stdgo.reflect.Reflect.Value) -> Void;
@:named typedef Bug1StructMap = GoMap<GoString, Bug1Elem>;
@:named @:using(stdgo.encoding.gob.Gob.Gobber_static_extension) typedef Gobber = GoInt;
@:named @:using(stdgo.encoding.gob.Gob.ValueGobber_static_extension) typedef ValueGobber = GoString;
@:named @:using(stdgo.encoding.gob.Gob.BinaryGobber_static_extension) typedef BinaryGobber = GoInt;
@:named @:using(stdgo.encoding.gob.Gob.BinaryValueGobber_static_extension) typedef BinaryValueGobber = GoString;
@:named @:using(stdgo.encoding.gob.Gob.TextGobber_static_extension) typedef TextGobber = GoInt;
@:named @:using(stdgo.encoding.gob.Gob.TextValueGobber_static_extension) typedef TextValueGobber = GoString;
@:named @:using(stdgo.encoding.gob.Gob.T_isZeroBugArray_static_extension) typedef T_isZeroBugArray = GoArray<GoUInt8>;
@:named @:using(stdgo.encoding.gob.Gob.T_typeId_static_extension) typedef T_typeId = GoInt32;
function _testError(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        {
            var _e:AnyInterface = Go.toInterface(({
                final r = __recover_exception__;
                __recover_exception__ = null;
                r;
            }));
            if (_e != null) {
                _t.error(Go.toInterface(((_e.value : T_gobError))._err));
            };
        };
    }
function _newDecBuffer(_data:Slice<GoByte>):T_decBuffer {
        return (({ _data : _data, _offset : 0 } : T_decBuffer));
    }
function testUintCodec(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = _t;
                __deferstack__.unshift(() -> _testError(_a0));
            };
            var _b:T_encBuffer = new T_encBuffer();
            var _encState:T_encoderState = _newEncoderState(_b);
            for (_0 => _tt in _encodeT) {
                _b.reset();
                _encState._encodeUint(_tt._x);
                if (!stdgo.bytes.Bytes.equal(_tt._b, _b.bytes())) {
                    _t.errorf(((("encodeUint: %#x encode: expected % x got % x" : GoString))), Go.toInterface(_tt._x), Go.toInterface(_tt._b), Go.toInterface(_b.bytes()));
                };
            };
            {
                var _u:GoUInt64 = ((((0 : GoUInt64)) : GoUInt64));
                Go.cfor(true, _u = (_u + ((1 : GoUInt64))) * ((7 : GoUInt64)), {
                    _b.reset();
                    _encState._encodeUint(_u);
                    var _decState:T_decoderState = _newDecodeState(_newDecBuffer(_b.bytes()));
                    var _v:GoUInt64 = _decState._decodeUint();
                    if (_u != _v) {
                        _t.errorf(((("Encode/Decode: sent %#x received %#x" : GoString))), Go.toInterface(_u), Go.toInterface(_v));
                    };
                    if ((_u & (("9223372036854775808" : GoUInt64))) != ((0 : GoUInt64))) {
                        break;
                    };
                });
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
function _verifyInt(_i:GoInt64, _t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = _t;
                __deferstack__.unshift(() -> _testError(_a0));
            };
            var _b:T_encBuffer = new T_encBuffer();
            var _encState:T_encoderState = _newEncoderState(_b);
            _encState._encodeInt(_i);
            var _decState:T_decoderState = _newDecodeState(_newDecBuffer(_b.bytes()));
            var _j:GoInt64 = _decState._decodeInt();
            if (_i != _j) {
                _t.errorf(((("Encode/Decode: sent %#x received %#x" : GoString))), Go.toInterface(((_i : GoUInt64))), Go.toInterface(((_j : GoUInt64))));
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
function testIntCodec(_t:stdgo.testing.Testing.T_):Void {
        {
            var _u:GoUInt64 = ((((0 : GoUInt64)) : GoUInt64));
            Go.cfor(true, _u = (_u + ((1 : GoUInt64))) * ((7 : GoUInt64)), {
                var _i:GoInt64 = ((_u : GoInt64));
                _verifyInt(_i, _t);
                _verifyInt(-_i, _t);
                _verifyInt((-1 ^ _i), _t);
                if ((_u & (("9223372036854775808" : GoUInt64))) != ((0 : GoUInt64))) {
                    break;
                };
            });
        };
        _verifyInt((("-9223372036854775808" : GoInt64)), _t);
    }
function _newDecodeState(_buf:T_decBuffer):T_decoderState {
        var _d:T_decoderState = new T_decoderState();
        _d._b = _buf;
        return _d;
    }
function _newEncoderState(_b:T_encBuffer):T_encoderState {
        _b.reset();
        var _state:T_encoderState = (({ _enc : null, _b : _b, _sendZero : false, _fieldnum : 0, _buf : new GoArray<GoUInt8>(...[for (i in 0 ... 9) ((0 : GoUInt8))]), _next : ((null : T_encoderState)) } : T_encoderState));
        _state._fieldnum = ((-1 : GoInt));
        return _state;
    }
function testScalarEncInstructions(_t:stdgo.testing.Testing.T_):Void {
        var _b:T_encBuffer = new T_encBuffer();
        {
            var _data:Bool = true;
            var _instr:T_encInstr = ((new T_encInstr(_encBool, ((6 : GoInt)), ((null : Slice<GoInt>)), ((0 : GoInt))) : T_encInstr));
            var _state:T_encoderState = _newEncoderState(_b);
            _instr._op(_instr, _state, (stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)).__copy__()));
            if (!stdgo.bytes.Bytes.equal(_boolResult, _b.bytes())) {
                _t.errorf(((("bool enc instructions: expected % x got % x" : GoString))), Go.toInterface(_boolResult), Go.toInterface(_b.bytes()));
            };
        };
        {
            _b.reset();
            var _data:GoInt = ((17 : GoInt));
            var _instr:T_encInstr = ((new T_encInstr(_encInt, ((6 : GoInt)), ((null : Slice<GoInt>)), ((0 : GoInt))) : T_encInstr));
            var _state:T_encoderState = _newEncoderState(_b);
            _instr._op(_instr, _state, (stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)).__copy__()));
            if (!stdgo.bytes.Bytes.equal(_signedResult, _b.bytes())) {
                _t.errorf(((("int enc instructions: expected % x got % x" : GoString))), Go.toInterface(_signedResult), Go.toInterface(_b.bytes()));
            };
        };
        {
            _b.reset();
            var _data:GoUInt = ((17 : GoUInt));
            var _instr:T_encInstr = ((new T_encInstr(_encUint, ((6 : GoInt)), ((null : Slice<GoInt>)), ((0 : GoInt))) : T_encInstr));
            var _state:T_encoderState = _newEncoderState(_b);
            _instr._op(_instr, _state, (stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)).__copy__()));
            if (!stdgo.bytes.Bytes.equal(_unsignedResult, _b.bytes())) {
                _t.errorf(((("uint enc instructions: expected % x got % x" : GoString))), Go.toInterface(_unsignedResult), Go.toInterface(_b.bytes()));
            };
        };
        {
            _b.reset();
            var _data:GoInt8 = ((17 : GoInt8));
            var _instr:T_encInstr = ((new T_encInstr(_encInt, ((6 : GoInt)), ((null : Slice<GoInt>)), ((0 : GoInt))) : T_encInstr));
            var _state:T_encoderState = _newEncoderState(_b);
            _instr._op(_instr, _state, (stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)).__copy__()));
            if (!stdgo.bytes.Bytes.equal(_signedResult, _b.bytes())) {
                _t.errorf(((("int8 enc instructions: expected % x got % x" : GoString))), Go.toInterface(_signedResult), Go.toInterface(_b.bytes()));
            };
        };
        {
            _b.reset();
            var _data:GoUInt8 = ((17 : GoUInt8));
            var _instr:T_encInstr = ((new T_encInstr(_encUint, ((6 : GoInt)), ((null : Slice<GoInt>)), ((0 : GoInt))) : T_encInstr));
            var _state:T_encoderState = _newEncoderState(_b);
            _instr._op(_instr, _state, (stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)).__copy__()));
            if (!stdgo.bytes.Bytes.equal(_unsignedResult, _b.bytes())) {
                _t.errorf(((("uint8 enc instructions: expected % x got % x" : GoString))), Go.toInterface(_unsignedResult), Go.toInterface(_b.bytes()));
            };
        };
        {
            _b.reset();
            var _data:GoInt16 = ((17 : GoInt16));
            var _instr:T_encInstr = ((new T_encInstr(_encInt, ((6 : GoInt)), ((null : Slice<GoInt>)), ((0 : GoInt))) : T_encInstr));
            var _state:T_encoderState = _newEncoderState(_b);
            _instr._op(_instr, _state, (stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)).__copy__()));
            if (!stdgo.bytes.Bytes.equal(_signedResult, _b.bytes())) {
                _t.errorf(((("int16 enc instructions: expected % x got % x" : GoString))), Go.toInterface(_signedResult), Go.toInterface(_b.bytes()));
            };
        };
        {
            _b.reset();
            var _data:GoUInt16 = ((17 : GoUInt16));
            var _instr:T_encInstr = ((new T_encInstr(_encUint, ((6 : GoInt)), ((null : Slice<GoInt>)), ((0 : GoInt))) : T_encInstr));
            var _state:T_encoderState = _newEncoderState(_b);
            _instr._op(_instr, _state, (stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)).__copy__()));
            if (!stdgo.bytes.Bytes.equal(_unsignedResult, _b.bytes())) {
                _t.errorf(((("uint16 enc instructions: expected % x got % x" : GoString))), Go.toInterface(_unsignedResult), Go.toInterface(_b.bytes()));
            };
        };
        {
            _b.reset();
            var _data:GoInt32 = ((17 : GoInt32));
            var _instr:T_encInstr = ((new T_encInstr(_encInt, ((6 : GoInt)), ((null : Slice<GoInt>)), ((0 : GoInt))) : T_encInstr));
            var _state:T_encoderState = _newEncoderState(_b);
            _instr._op(_instr, _state, (stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)).__copy__()));
            if (!stdgo.bytes.Bytes.equal(_signedResult, _b.bytes())) {
                _t.errorf(((("int32 enc instructions: expected % x got % x" : GoString))), Go.toInterface(_signedResult), Go.toInterface(_b.bytes()));
            };
        };
        {
            _b.reset();
            var _data:GoUInt32 = ((17 : GoUInt32));
            var _instr:T_encInstr = ((new T_encInstr(_encUint, ((6 : GoInt)), ((null : Slice<GoInt>)), ((0 : GoInt))) : T_encInstr));
            var _state:T_encoderState = _newEncoderState(_b);
            _instr._op(_instr, _state, (stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)).__copy__()));
            if (!stdgo.bytes.Bytes.equal(_unsignedResult, _b.bytes())) {
                _t.errorf(((("uint32 enc instructions: expected % x got % x" : GoString))), Go.toInterface(_unsignedResult), Go.toInterface(_b.bytes()));
            };
        };
        {
            _b.reset();
            var _data:GoInt64 = ((17 : GoInt64));
            var _instr:T_encInstr = ((new T_encInstr(_encInt, ((6 : GoInt)), ((null : Slice<GoInt>)), ((0 : GoInt))) : T_encInstr));
            var _state:T_encoderState = _newEncoderState(_b);
            _instr._op(_instr, _state, (stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)).__copy__()));
            if (!stdgo.bytes.Bytes.equal(_signedResult, _b.bytes())) {
                _t.errorf(((("int64 enc instructions: expected % x got % x" : GoString))), Go.toInterface(_signedResult), Go.toInterface(_b.bytes()));
            };
        };
        {
            _b.reset();
            var _data:GoUInt64 = ((17 : GoUInt64));
            var _instr:T_encInstr = ((new T_encInstr(_encUint, ((6 : GoInt)), ((null : Slice<GoInt>)), ((0 : GoInt))) : T_encInstr));
            var _state:T_encoderState = _newEncoderState(_b);
            _instr._op(_instr, _state, (stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)).__copy__()));
            if (!stdgo.bytes.Bytes.equal(_unsignedResult, _b.bytes())) {
                _t.errorf(((("uint64 enc instructions: expected % x got % x" : GoString))), Go.toInterface(_unsignedResult), Go.toInterface(_b.bytes()));
            };
        };
        {
            _b.reset();
            var _data:GoFloat32 = ((17 : GoFloat32));
            var _instr:T_encInstr = ((new T_encInstr(_encFloat, ((6 : GoInt)), ((null : Slice<GoInt>)), ((0 : GoInt))) : T_encInstr));
            var _state:T_encoderState = _newEncoderState(_b);
            _instr._op(_instr, _state, (stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)).__copy__()));
            if (!stdgo.bytes.Bytes.equal(_floatResult, _b.bytes())) {
                _t.errorf(((("float32 enc instructions: expected % x got % x" : GoString))), Go.toInterface(_floatResult), Go.toInterface(_b.bytes()));
            };
        };
        {
            _b.reset();
            var _data:GoFloat64 = ((17 : GoFloat64));
            var _instr:T_encInstr = ((new T_encInstr(_encFloat, ((6 : GoInt)), ((null : Slice<GoInt>)), ((0 : GoInt))) : T_encInstr));
            var _state:T_encoderState = _newEncoderState(_b);
            _instr._op(_instr, _state, (stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)).__copy__()));
            if (!stdgo.bytes.Bytes.equal(_floatResult, _b.bytes())) {
                _t.errorf(((("float64 enc instructions: expected % x got % x" : GoString))), Go.toInterface(_floatResult), Go.toInterface(_b.bytes()));
            };
        };
        {
            _b.reset();
            var _data:Slice<GoUInt8> = ((((("hello" : GoString))) : Slice<GoByte>));
            var _instr:T_encInstr = ((new T_encInstr(_encUint8Array, ((6 : GoInt)), ((null : Slice<GoInt>)), ((0 : GoInt))) : T_encInstr));
            var _state:T_encoderState = _newEncoderState(_b);
            _instr._op(_instr, _state, (stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)).__copy__()));
            if (!stdgo.bytes.Bytes.equal(_bytesResult, _b.bytes())) {
                _t.errorf(((("bytes enc instructions: expected % x got % x" : GoString))), Go.toInterface(_bytesResult), Go.toInterface(_b.bytes()));
            };
        };
        {
            _b.reset();
            var _data:GoString = ((("hello" : GoString)));
            var _instr:T_encInstr = ((new T_encInstr(_encString, ((6 : GoInt)), ((null : Slice<GoInt>)), ((0 : GoInt))) : T_encInstr));
            var _state:T_encoderState = _newEncoderState(_b);
            _instr._op(_instr, _state, (stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)).__copy__()));
            if (!stdgo.bytes.Bytes.equal(_bytesResult, _b.bytes())) {
                _t.errorf(((("string enc instructions: expected % x got % x" : GoString))), Go.toInterface(_bytesResult), Go.toInterface(_b.bytes()));
            };
        };
    }
function _execDec(_instr:T_decInstr, _state:T_decoderState, _t:stdgo.testing.Testing.T_, _value:stdgo.reflect.Reflect.Value):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = _t;
                __deferstack__.unshift(() -> _testError(_a0));
            };
            var _v:GoInt = ((_state._decodeUint() : GoInt));
            if ((_v + _state._fieldnum) != ((6 : GoInt))) {
                _t.fatalf(((("decoding field number %d, got %d" : GoString))), Go.toInterface(((6 : GoInt))), Go.toInterface(_v + _state._fieldnum));
            };
            _instr._op(_instr, _state, (_value.elem() == null ? null : _value.elem().__copy__()));
            _state._fieldnum = ((6 : GoInt));
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
function _newDecodeStateFromData(_data:Slice<GoByte>):T_decoderState {
        var _b:T_decBuffer = _newDecBuffer(_data);
        var _state:T_decoderState = _newDecodeState(_b);
        _state._fieldnum = ((-1 : GoInt));
        return _state;
    }
function testScalarDecInstructions(_t:stdgo.testing.Testing.T_):Void {
        var _ovfl:stdgo.Error = stdgo.errors.Errors.new_(((("overflow" : GoString))));
        {
            var _data:Bool = false;
            var _instr:T_decInstr = ((new T_decInstr(_decBool, ((6 : GoInt)), ((null : Slice<GoInt>)), _ovfl) : T_decInstr));
            var _state:T_decoderState = _newDecodeStateFromData(_boolResult);
            _execDec(_instr, _state, _t, (stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.pointer(_data))) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.pointer(_data))).__copy__()));
            if (_data != true) {
                _t.errorf(((("bool a = %v not true" : GoString))), Go.toInterface(_data));
            };
        };
        {
            var _data:GoInt = ((0 : GoInt));
            var _instr:T_decInstr = ((new T_decInstr((_decOpTable != null ? _decOpTable[((2 : GoUInt))] : ((null : T_decOp))), ((6 : GoInt)), ((null : Slice<GoInt>)), _ovfl) : T_decInstr));
            var _state:T_decoderState = _newDecodeStateFromData(_signedResult);
            _execDec(_instr, _state, _t, (stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.pointer(_data))) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.pointer(_data))).__copy__()));
            if (_data != ((17 : GoInt))) {
                _t.errorf(((("int a = %v not 17" : GoString))), Go.toInterface(_data));
            };
        };
        {
            var _data:GoUInt = ((0 : GoUInt));
            var _instr:T_decInstr = ((new T_decInstr((_decOpTable != null ? _decOpTable[((7 : GoUInt))] : ((null : T_decOp))), ((6 : GoInt)), ((null : Slice<GoInt>)), _ovfl) : T_decInstr));
            var _state:T_decoderState = _newDecodeStateFromData(_unsignedResult);
            _execDec(_instr, _state, _t, (stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.pointer(_data))) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.pointer(_data))).__copy__()));
            if (_data != ((17 : GoUInt))) {
                _t.errorf(((("uint a = %v not 17" : GoString))), Go.toInterface(_data));
            };
        };
        {
            var _data:GoInt8 = ((0 : GoInt8));
            var _instr:T_decInstr = ((new T_decInstr(_decInt8, ((6 : GoInt)), ((null : Slice<GoInt>)), _ovfl) : T_decInstr));
            var _state:T_decoderState = _newDecodeStateFromData(_signedResult);
            _execDec(_instr, _state, _t, (stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.pointer(_data))) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.pointer(_data))).__copy__()));
            if (_data != ((17 : GoInt8))) {
                _t.errorf(((("int8 a = %v not 17" : GoString))), Go.toInterface(_data));
            };
        };
        {
            var _data:GoUInt8 = ((0 : GoUInt8));
            var _instr:T_decInstr = ((new T_decInstr(_decUint8, ((6 : GoInt)), ((null : Slice<GoInt>)), _ovfl) : T_decInstr));
            var _state:T_decoderState = _newDecodeStateFromData(_unsignedResult);
            _execDec(_instr, _state, _t, (stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.pointer(_data))) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.pointer(_data))).__copy__()));
            if (_data != ((17 : GoUInt8))) {
                _t.errorf(((("uint8 a = %v not 17" : GoString))), Go.toInterface(_data));
            };
        };
        {
            var _data:GoInt16 = ((0 : GoInt16));
            var _instr:T_decInstr = ((new T_decInstr(_decInt16, ((6 : GoInt)), ((null : Slice<GoInt>)), _ovfl) : T_decInstr));
            var _state:T_decoderState = _newDecodeStateFromData(_signedResult);
            _execDec(_instr, _state, _t, (stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.pointer(_data))) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.pointer(_data))).__copy__()));
            if (_data != ((17 : GoInt16))) {
                _t.errorf(((("int16 a = %v not 17" : GoString))), Go.toInterface(_data));
            };
        };
        {
            var _data:GoUInt16 = ((0 : GoUInt16));
            var _instr:T_decInstr = ((new T_decInstr(_decUint16, ((6 : GoInt)), ((null : Slice<GoInt>)), _ovfl) : T_decInstr));
            var _state:T_decoderState = _newDecodeStateFromData(_unsignedResult);
            _execDec(_instr, _state, _t, (stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.pointer(_data))) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.pointer(_data))).__copy__()));
            if (_data != ((17 : GoUInt16))) {
                _t.errorf(((("uint16 a = %v not 17" : GoString))), Go.toInterface(_data));
            };
        };
        {
            var _data:GoInt32 = ((0 : GoInt32));
            var _instr:T_decInstr = ((new T_decInstr(_decInt32, ((6 : GoInt)), ((null : Slice<GoInt>)), _ovfl) : T_decInstr));
            var _state:T_decoderState = _newDecodeStateFromData(_signedResult);
            _execDec(_instr, _state, _t, (stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.pointer(_data))) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.pointer(_data))).__copy__()));
            if (_data != ((17 : GoInt32))) {
                _t.errorf(((("int32 a = %v not 17" : GoString))), Go.toInterface(_data));
            };
        };
        {
            var _data:GoUInt32 = ((0 : GoUInt32));
            var _instr:T_decInstr = ((new T_decInstr(_decUint32, ((6 : GoInt)), ((null : Slice<GoInt>)), _ovfl) : T_decInstr));
            var _state:T_decoderState = _newDecodeStateFromData(_unsignedResult);
            _execDec(_instr, _state, _t, (stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.pointer(_data))) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.pointer(_data))).__copy__()));
            if (_data != ((17 : GoUInt32))) {
                _t.errorf(((("uint32 a = %v not 17" : GoString))), Go.toInterface(_data));
            };
        };
        {
            var _data:GoUIntptr = ((0 : GoUIntptr));
            var _instr:T_decInstr = ((new T_decInstr((_decOpTable != null ? _decOpTable[((12 : GoUInt))] : ((null : T_decOp))), ((6 : GoInt)), ((null : Slice<GoInt>)), _ovfl) : T_decInstr));
            var _state:T_decoderState = _newDecodeStateFromData(_unsignedResult);
            _execDec(_instr, _state, _t, (stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.pointer(_data))) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.pointer(_data))).__copy__()));
            if (_data != ((17 : GoUIntptr))) {
                _t.errorf(((("uintptr a = %v not 17" : GoString))), Go.toInterface(_data));
            };
        };
        {
            var _data:GoInt64 = ((0 : GoInt64));
            var _instr:T_decInstr = ((new T_decInstr(_decInt64, ((6 : GoInt)), ((null : Slice<GoInt>)), _ovfl) : T_decInstr));
            var _state:T_decoderState = _newDecodeStateFromData(_signedResult);
            _execDec(_instr, _state, _t, (stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.pointer(_data))) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.pointer(_data))).__copy__()));
            if (_data != ((17 : GoInt64))) {
                _t.errorf(((("int64 a = %v not 17" : GoString))), Go.toInterface(_data));
            };
        };
        {
            var _data:GoUInt64 = ((0 : GoUInt64));
            var _instr:T_decInstr = ((new T_decInstr(_decUint64, ((6 : GoInt)), ((null : Slice<GoInt>)), _ovfl) : T_decInstr));
            var _state:T_decoderState = _newDecodeStateFromData(_unsignedResult);
            _execDec(_instr, _state, _t, (stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.pointer(_data))) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.pointer(_data))).__copy__()));
            if (_data != ((17 : GoUInt64))) {
                _t.errorf(((("uint64 a = %v not 17" : GoString))), Go.toInterface(_data));
            };
        };
        {
            var _data:GoFloat32 = ((0 : GoFloat32));
            var _instr:T_decInstr = ((new T_decInstr(_decFloat32, ((6 : GoInt)), ((null : Slice<GoInt>)), _ovfl) : T_decInstr));
            var _state:T_decoderState = _newDecodeStateFromData(_floatResult);
            _execDec(_instr, _state, _t, (stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.pointer(_data))) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.pointer(_data))).__copy__()));
            if (_data != ((17 : GoFloat32))) {
                _t.errorf(((("float32 a = %v not 17" : GoString))), Go.toInterface(_data));
            };
        };
        {
            var _data:GoFloat64 = ((0 : GoFloat64));
            var _instr:T_decInstr = ((new T_decInstr(_decFloat64, ((6 : GoInt)), ((null : Slice<GoInt>)), _ovfl) : T_decInstr));
            var _state:T_decoderState = _newDecodeStateFromData(_floatResult);
            _execDec(_instr, _state, _t, (stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.pointer(_data))) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.pointer(_data))).__copy__()));
            if (_data != ((17 : GoFloat64))) {
                _t.errorf(((("float64 a = %v not 17" : GoString))), Go.toInterface(_data));
            };
        };
        {
            var _data:GoComplex64 = new GoComplex64(0, 0);
            var _instr:T_decInstr = ((new T_decInstr((_decOpTable != null ? _decOpTable[((15 : GoUInt))] : ((null : T_decOp))), ((6 : GoInt)), ((null : Slice<GoInt>)), _ovfl) : T_decInstr));
            var _state:T_decoderState = _newDecodeStateFromData(_complexResult);
            _execDec(_instr, _state, _t, (stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.pointer(_data))) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.pointer(_data))).__copy__()));
            if (_data != (((17 : GoFloat64)) + new GoComplex128(0, 19))) {
                _t.errorf(((("complex a = %v not 17+19i" : GoString))), Go.toInterface(_data));
            };
        };
        {
            var _data:GoComplex128 = new GoComplex128(0, 0);
            var _instr:T_decInstr = ((new T_decInstr((_decOpTable != null ? _decOpTable[((16 : GoUInt))] : ((null : T_decOp))), ((6 : GoInt)), ((null : Slice<GoInt>)), _ovfl) : T_decInstr));
            var _state:T_decoderState = _newDecodeStateFromData(_complexResult);
            _execDec(_instr, _state, _t, (stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.pointer(_data))) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.pointer(_data))).__copy__()));
            if (_data != (((17 : GoFloat64)) + new GoComplex128(0, 19))) {
                _t.errorf(((("complex a = %v not 17+19i" : GoString))), Go.toInterface(_data));
            };
        };
        {
            var _data:Slice<GoByte> = ((null : Slice<GoUInt8>));
            var _instr:T_decInstr = ((new T_decInstr(_decUint8Slice, ((6 : GoInt)), ((null : Slice<GoInt>)), _ovfl) : T_decInstr));
            var _state:T_decoderState = _newDecodeStateFromData(_bytesResult);
            _execDec(_instr, _state, _t, (stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)).__copy__()));
            if (((_data : GoString)) != ((("hello" : GoString)))) {
                _t.errorf("bytes a = %q not \"hello\"", Go.toInterface(((_data : GoString))));
            };
        };
        {
            var _data:GoString = (("" : GoString));
            var _instr:T_decInstr = ((new T_decInstr(_decString, ((6 : GoInt)), ((null : Slice<GoInt>)), _ovfl) : T_decInstr));
            var _state:T_decoderState = _newDecodeStateFromData(_bytesResult);
            _execDec(_instr, _state, _t, (stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.pointer(_data))) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.pointer(_data))).__copy__()));
            if (_data != ((("hello" : GoString)))) {
                _t.errorf("bytes a = %q not \"hello\"", Go.toInterface(_data));
            };
        };
    }
@:structInit class T2_testEndToEnd_0 {
    public var t : GoString = (("" : GoString));
    public function new(?t:GoString) {
        if (t != null) this.t = t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T2_testEndToEnd_0(t);
    }
}
@:structInit class T3_testEndToEnd_1 {
    public var x : GoFloat64 = ((0 : GoFloat64));
    public var z : Pointer<GoInt> = ((null : Pointer<GoInt>));
    public function new(?x:GoFloat64, ?z:Pointer<GoInt>) {
        if (x != null) this.x = x;
        if (z != null) this.z = z;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T3_testEndToEnd_1(x, z);
    }
}
@:structInit class T1_testEndToEnd_2 {
    public var a : GoInt = ((0 : GoInt));
    public var b : GoInt = ((0 : GoInt));
    public var c : GoInt = ((0 : GoInt));
    public var m : GoMap<GoString, Pointer<GoFloat64>> = ((null : GoMap<GoString, Pointer<GoFloat64>>));
    public var m2 : GoMap<GoInt, T3_testEndToEnd_1> = ((null : GoMap<GoInt, T3_testEndToEnd_1>));
    public var mstring : GoMap<GoString, GoString> = ((null : GoMap<GoString, GoString>));
    public var mintptr : GoMap<GoInt, Pointer<GoInt>> = ((null : GoMap<GoInt, Pointer<GoInt>>));
    public var mcomp : GoMap<GoComplex128, GoComplex128> = ((null : GoMap<GoComplex128, GoComplex128>));
    public var marr : GoMap<GoArray<GoString>, GoArray<Pointer<GoFloat64>>> = ((null : GoMap<GoArray<GoString>, GoArray<Pointer<GoFloat64>>>));
    public var emptyMap : GoMap<GoString, GoInt> = ((null : GoMap<GoString, GoInt>));
    public var n : GoArray<GoFloat64> = ((null : GoArray<GoFloat64>));
    public var strs : GoArray<GoString> = ((null : GoArray<GoString>));
    public var int64s : Slice<GoInt64> = ((null : Slice<GoInt64>));
    public var ri : GoComplex64 = new GoComplex64(0, 0);
    public var s : GoString = (("" : GoString));
    public var y : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var t : T2_testEndToEnd_0 = ((null : T2_testEndToEnd_0));
    public function new(?a:GoInt, ?b:GoInt, ?c:GoInt, ?m:GoMap<GoString, Pointer<GoFloat64>>, ?m2:GoMap<GoInt, T3_testEndToEnd_1>, ?mstring:GoMap<GoString, GoString>, ?mintptr:GoMap<GoInt, Pointer<GoInt>>, ?mcomp:GoMap<GoComplex128, GoComplex128>, ?marr:GoMap<GoArray<GoString>, GoArray<Pointer<GoFloat64>>>, ?emptyMap:GoMap<GoString, GoInt>, ?n:GoArray<GoFloat64>, ?strs:GoArray<GoString>, ?int64s:Slice<GoInt64>, ?ri:GoComplex64, ?s:GoString, ?y:Slice<GoUInt8>, ?t:T2_testEndToEnd_0) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (c != null) this.c = c;
        if (m != null) this.m = m;
        if (m2 != null) this.m2 = m2;
        if (mstring != null) this.mstring = mstring;
        if (mintptr != null) this.mintptr = mintptr;
        if (mcomp != null) this.mcomp = mcomp;
        if (marr != null) this.marr = marr;
        if (emptyMap != null) this.emptyMap = emptyMap;
        if (n != null) this.n = n;
        if (strs != null) this.strs = strs;
        if (int64s != null) this.int64s = int64s;
        if (ri != null) this.ri = ri;
        if (s != null) this.s = s;
        if (y != null) this.y = y;
        if (t != null) this.t = t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T1_testEndToEnd_2(
a,
b,
c,
m,
m2,
mstring,
mintptr,
mcomp,
marr,
emptyMap,
n,
strs,
int64s,
ri,
s,
y,
t);
    }
}
function testEndToEnd(_t:stdgo.testing.Testing.T_):Void {
        {};
        {};
        {};
        var _pi:GoFloat64 = ((3.14159 : GoFloat64));
        var _e:GoFloat64 = ((2.71828 : GoFloat64));
        var _two:GoFloat64 = ((2 : GoFloat64));
        var _meaning:GoInt = ((42 : GoInt));
        var _fingers:GoInt = ((5 : GoInt));
        var _s1:GoString = ((("string1" : GoString)));
        var _s2:GoString = ((("string2" : GoString)));
        var _comp1:GoComplex128 = new GoComplex128(((1 : GoUnTypedFloat)), ((1 : GoUnTypedFloat)));
        var _comp2:GoComplex128 = new GoComplex128(((1 : GoUnTypedFloat)), ((1 : GoUnTypedFloat)));
        var _arr1:GoArray<GoString> = new GoArray<GoString>(...[for (i in 0 ... 2) (("" : GoString))]);
        if (_arr1 != null) _arr1[((0 : GoInt))] = _s1;
        if (_arr1 != null) _arr1[((1 : GoInt))] = _s2;
        var _arr2:GoArray<GoString> = new GoArray<GoString>(...[for (i in 0 ... 2) (("" : GoString))]);
        if (_arr2 != null) _arr2[((0 : GoInt))] = _s2;
        if (_arr2 != null) _arr2[((1 : GoInt))] = _s1;
        var _floatArr1:GoArray<Pointer<GoFloat64>> = new GoArray<Pointer<GoFloat64>>(...[for (i in 0 ... 2) ((null : Pointer<GoFloat64>))]);
        if (_floatArr1 != null) _floatArr1[((0 : GoInt))] = Go.pointer(_pi);
        if (_floatArr1 != null) _floatArr1[((1 : GoInt))] = Go.pointer(_e);
        var _floatArr2:GoArray<Pointer<GoFloat64>> = new GoArray<Pointer<GoFloat64>>(...[for (i in 0 ... 2) ((null : Pointer<GoFloat64>))]);
        if (_floatArr2 != null) _floatArr2[((0 : GoInt))] = Go.pointer(_e);
        if (_floatArr2 != null) _floatArr2[((1 : GoInt))] = Go.pointer(_two);
        var _t1:T1_testEndToEnd_2 = (({ a : ((17 : GoInt)), b : ((18 : GoInt)), c : ((-5 : GoInt)), m : Go.map(((("pi" : GoString))) => Go.pointer(_pi), ((("e" : GoString))) => Go.pointer(_e)), m2 : Go.map(((4 : GoInt)) => ((({ x : _pi, z : Go.pointer(_meaning) } : T3_testEndToEnd_1)) == null ? null : (({ x : _pi, z : Go.pointer(_meaning) } : T3_testEndToEnd_1)).__copy__()), ((10 : GoInt)) => ((({ x : _e, z : Go.pointer(_fingers) } : T3_testEndToEnd_1)) == null ? null : (({ x : _e, z : Go.pointer(_fingers) } : T3_testEndToEnd_1)).__copy__())), mstring : Go.map(((("pi" : GoString))) => ((("3.14" : GoString))), ((("e" : GoString))) => ((("2.71" : GoString)))), mintptr : Go.map(_meaning => Go.pointer(_fingers), _fingers => Go.pointer(_meaning)), mcomp : Go.map(_comp1 => _comp2, _comp2 => _comp1), marr : Go.map((_arr1 == null ? null : _arr1.__copy__()) => (_floatArr1 == null ? null : _floatArr1.__copy__()), (_arr2 == null ? null : _arr2.__copy__()) => (_floatArr2 == null ? null : _floatArr2.__copy__())), emptyMap : new GoObjectMap<GoString, GoInt>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(int_kind)))), n : ((new GoArray<GoFloat64>(((1.5 : GoFloat64)), ((2.5 : GoFloat64)), ((3.5 : GoFloat64))) : GoArray<GoFloat64>)), strs : ((new GoArray<GoString>(_s1, _s2) : GoArray<GoString>)), int64s : ((new Slice<GoInt64>(((77 : GoInt64)), ((89 : GoInt64)), (("123412342134" : GoInt64))) : Slice<GoInt64>)), ri : (((17 : GoFloat64)) + new GoComplex128(0, -23)), s : ((("Now is the time" : GoString))), y : ((((("hello, sailor" : GoString))) : Slice<GoByte>)), t : ((new T2_testEndToEnd_0(((("this is T2" : GoString)))) : T2_testEndToEnd_0)) } : T1_testEndToEnd_2));
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _err:stdgo.Error = newEncoder(_b).encode(Go.toInterface(_t1));
        if (_err != null) {
            _t.error(Go.toInterface(((("encode:" : GoString)))), Go.toInterface(_err));
        };
        var __t1:T1_testEndToEnd_2 = new T1_testEndToEnd_2();
        _err = newDecoder(_b).decode(Go.toInterface(__t1));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("decode:" : GoString)))), Go.toInterface(_err));
        };
        if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_t1), Go.toInterface(__t1))) {
            _t.errorf(((("encode expected %v got %v" : GoString))), Go.toInterface(_t1), Go.toInterface(__t1));
        };
        if (_t1.emptyMap == null) {
            _t.errorf(((("nil map sent" : GoString))));
        };
        if (__t1.emptyMap == null) {
            _t.errorf(((("nil map received" : GoString))));
        };
    }
@:structInit class T_inputT_testOverflow_0 {
    public var maxi : GoInt64 = ((0 : GoInt64));
    public var mini : GoInt64 = ((0 : GoInt64));
    public var maxu : GoUInt64 = ((0 : GoUInt64));
    public var maxf : GoFloat64 = ((0 : GoFloat64));
    public var minf : GoFloat64 = ((0 : GoFloat64));
    public var maxc : GoComplex128 = new GoComplex128(0, 0);
    public var minc : GoComplex128 = new GoComplex128(0, 0);
    public function new(?maxi:GoInt64, ?mini:GoInt64, ?maxu:GoUInt64, ?maxf:GoFloat64, ?minf:GoFloat64, ?maxc:GoComplex128, ?minc:GoComplex128) {
        if (maxi != null) this.maxi = maxi;
        if (mini != null) this.mini = mini;
        if (maxu != null) this.maxu = maxu;
        if (maxf != null) this.maxf = maxf;
        if (minf != null) this.minf = minf;
        if (maxc != null) this.maxc = maxc;
        if (minc != null) this.minc = minc;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_inputT_testOverflow_0(maxi, mini, maxu, maxf, minf, maxc, minc);
    }
}
@:structInit class T_outi8_testOverflow_1 {
    public var maxi : GoInt8 = ((0 : GoInt8));
    public var mini : GoInt8 = ((0 : GoInt8));
    public function new(?maxi:GoInt8, ?mini:GoInt8) {
        if (maxi != null) this.maxi = maxi;
        if (mini != null) this.mini = mini;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_outi8_testOverflow_1(maxi, mini);
    }
}
@:structInit class T_outi16_testOverflow_2 {
    public var maxi : GoInt16 = ((0 : GoInt16));
    public var mini : GoInt16 = ((0 : GoInt16));
    public function new(?maxi:GoInt16, ?mini:GoInt16) {
        if (maxi != null) this.maxi = maxi;
        if (mini != null) this.mini = mini;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_outi16_testOverflow_2(maxi, mini);
    }
}
@:structInit class T_outi32_testOverflow_3 {
    public var maxi : GoInt32 = ((0 : GoInt32));
    public var mini : GoInt32 = ((0 : GoInt32));
    public function new(?maxi:GoInt32, ?mini:GoInt32) {
        if (maxi != null) this.maxi = maxi;
        if (mini != null) this.mini = mini;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_outi32_testOverflow_3(maxi, mini);
    }
}
@:structInit class T_outu8_testOverflow_4 {
    public var maxu : GoUInt8 = ((0 : GoUInt8));
    public function new(?maxu:GoUInt8) {
        if (maxu != null) this.maxu = maxu;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_outu8_testOverflow_4(maxu);
    }
}
@:structInit class T_outu16_testOverflow_5 {
    public var maxu : GoUInt16 = ((0 : GoUInt16));
    public function new(?maxu:GoUInt16) {
        if (maxu != null) this.maxu = maxu;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_outu16_testOverflow_5(maxu);
    }
}
@:structInit class T_outu32_testOverflow_6 {
    public var maxu : GoUInt32 = ((0 : GoUInt32));
    public function new(?maxu:GoUInt32) {
        if (maxu != null) this.maxu = maxu;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_outu32_testOverflow_6(maxu);
    }
}
@:structInit class T_outf32_testOverflow_7 {
    public var maxf : GoFloat32 = ((0 : GoFloat32));
    public var minf : GoFloat32 = ((0 : GoFloat32));
    public function new(?maxf:GoFloat32, ?minf:GoFloat32) {
        if (maxf != null) this.maxf = maxf;
        if (minf != null) this.minf = minf;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_outf32_testOverflow_7(maxf, minf);
    }
}
@:structInit class T_outc64_testOverflow_8 {
    public var maxc : GoComplex64 = new GoComplex64(0, 0);
    public var minc : GoComplex64 = new GoComplex64(0, 0);
    public function new(?maxc:GoComplex64, ?minc:GoComplex64) {
        if (maxc != null) this.maxc = maxc;
        if (minc != null) this.minc = minc;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_outc64_testOverflow_8(maxc, minc);
    }
}
function testOverflow(_t:stdgo.testing.Testing.T_):Void {
        {};
        var _it:T_inputT_testOverflow_0 = new T_inputT_testOverflow_0();
        var _err:Error = ((null : stdgo.Error));
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _enc:Encoder = newEncoder(_b);
        var _dec:Decoder = newDecoder(_b);
        _b.reset();
        _it = ((({ maxi : ((128 : GoInt64)), mini : 0, maxu : 0, maxf : 0, minf : 0, maxc : new GoComplex128(0, 0), minc : new GoComplex128(0, 0) } : T_inputT_testOverflow_0)) == null ? null : (({ maxi : ((128 : GoInt64)), mini : 0, maxu : 0, maxf : 0, minf : 0, maxc : new GoComplex128(0, 0), minc : new GoComplex128(0, 0) } : T_inputT_testOverflow_0)).__copy__());
        {};
        var _o1:T_outi8_testOverflow_1 = new T_outi8_testOverflow_1();
        _enc.encode(Go.toInterface(_it));
        _err = _dec.decode(Go.toInterface(_o1));
        if ((_err == null) || (_err.error() != (("value for \"Maxi\" out of range" : GoString)))) {
            _t.error(Go.toInterface(((("wrong overflow error for int8:" : GoString)))), Go.toInterface(_err));
        };
        _it = ((({ mini : ((-129 : GoInt64)), maxi : 0, maxu : 0, maxf : 0, minf : 0, maxc : new GoComplex128(0, 0), minc : new GoComplex128(0, 0) } : T_inputT_testOverflow_0)) == null ? null : (({ mini : ((-129 : GoInt64)), maxi : 0, maxu : 0, maxf : 0, minf : 0, maxc : new GoComplex128(0, 0), minc : new GoComplex128(0, 0) } : T_inputT_testOverflow_0)).__copy__());
        _b.reset();
        _enc.encode(Go.toInterface(_it));
        _err = _dec.decode(Go.toInterface(_o1));
        if ((_err == null) || (_err.error() != (("value for \"Mini\" out of range" : GoString)))) {
            _t.error(Go.toInterface(((("wrong underflow error for int8:" : GoString)))), Go.toInterface(_err));
        };
        _b.reset();
        _it = ((({ maxi : ((32768 : GoInt64)), mini : 0, maxu : 0, maxf : 0, minf : 0, maxc : new GoComplex128(0, 0), minc : new GoComplex128(0, 0) } : T_inputT_testOverflow_0)) == null ? null : (({ maxi : ((32768 : GoInt64)), mini : 0, maxu : 0, maxf : 0, minf : 0, maxc : new GoComplex128(0, 0), minc : new GoComplex128(0, 0) } : T_inputT_testOverflow_0)).__copy__());
        {};
        var _o2:T_outi16_testOverflow_2 = new T_outi16_testOverflow_2();
        _enc.encode(Go.toInterface(_it));
        _err = _dec.decode(Go.toInterface(_o2));
        if ((_err == null) || (_err.error() != (("value for \"Maxi\" out of range" : GoString)))) {
            _t.error(Go.toInterface(((("wrong overflow error for int16:" : GoString)))), Go.toInterface(_err));
        };
        _it = ((({ mini : ((-32769 : GoInt64)), maxi : 0, maxu : 0, maxf : 0, minf : 0, maxc : new GoComplex128(0, 0), minc : new GoComplex128(0, 0) } : T_inputT_testOverflow_0)) == null ? null : (({ mini : ((-32769 : GoInt64)), maxi : 0, maxu : 0, maxf : 0, minf : 0, maxc : new GoComplex128(0, 0), minc : new GoComplex128(0, 0) } : T_inputT_testOverflow_0)).__copy__());
        _b.reset();
        _enc.encode(Go.toInterface(_it));
        _err = _dec.decode(Go.toInterface(_o2));
        if ((_err == null) || (_err.error() != (("value for \"Mini\" out of range" : GoString)))) {
            _t.error(Go.toInterface(((("wrong underflow error for int16:" : GoString)))), Go.toInterface(_err));
        };
        _b.reset();
        _it = ((({ maxi : (("2147483648" : GoInt64)), mini : 0, maxu : 0, maxf : 0, minf : 0, maxc : new GoComplex128(0, 0), minc : new GoComplex128(0, 0) } : T_inputT_testOverflow_0)) == null ? null : (({ maxi : (("2147483648" : GoInt64)), mini : 0, maxu : 0, maxf : 0, minf : 0, maxc : new GoComplex128(0, 0), minc : new GoComplex128(0, 0) } : T_inputT_testOverflow_0)).__copy__());
        {};
        var _o3:T_outi32_testOverflow_3 = new T_outi32_testOverflow_3();
        _enc.encode(Go.toInterface(_it));
        _err = _dec.decode(Go.toInterface(_o3));
        if ((_err == null) || (_err.error() != (("value for \"Maxi\" out of range" : GoString)))) {
            _t.error(Go.toInterface(((("wrong overflow error for int32:" : GoString)))), Go.toInterface(_err));
        };
        _it = ((({ mini : (("-2147483649" : GoInt64)), maxi : 0, maxu : 0, maxf : 0, minf : 0, maxc : new GoComplex128(0, 0), minc : new GoComplex128(0, 0) } : T_inputT_testOverflow_0)) == null ? null : (({ mini : (("-2147483649" : GoInt64)), maxi : 0, maxu : 0, maxf : 0, minf : 0, maxc : new GoComplex128(0, 0), minc : new GoComplex128(0, 0) } : T_inputT_testOverflow_0)).__copy__());
        _b.reset();
        _enc.encode(Go.toInterface(_it));
        _err = _dec.decode(Go.toInterface(_o3));
        if ((_err == null) || (_err.error() != (("value for \"Mini\" out of range" : GoString)))) {
            _t.error(Go.toInterface(((("wrong underflow error for int32:" : GoString)))), Go.toInterface(_err));
        };
        _b.reset();
        _it = ((({ maxu : ((256 : GoUInt64)), maxi : 0, mini : 0, maxf : 0, minf : 0, maxc : new GoComplex128(0, 0), minc : new GoComplex128(0, 0) } : T_inputT_testOverflow_0)) == null ? null : (({ maxu : ((256 : GoUInt64)), maxi : 0, mini : 0, maxf : 0, minf : 0, maxc : new GoComplex128(0, 0), minc : new GoComplex128(0, 0) } : T_inputT_testOverflow_0)).__copy__());
        {};
        var _o4:T_outu8_testOverflow_4 = new T_outu8_testOverflow_4();
        _enc.encode(Go.toInterface(_it));
        _err = _dec.decode(Go.toInterface(_o4));
        if ((_err == null) || (_err.error() != (("value for \"Maxu\" out of range" : GoString)))) {
            _t.error(Go.toInterface(((("wrong overflow error for uint8:" : GoString)))), Go.toInterface(_err));
        };
        _b.reset();
        _it = ((({ maxu : ((65536 : GoUInt64)), maxi : 0, mini : 0, maxf : 0, minf : 0, maxc : new GoComplex128(0, 0), minc : new GoComplex128(0, 0) } : T_inputT_testOverflow_0)) == null ? null : (({ maxu : ((65536 : GoUInt64)), maxi : 0, mini : 0, maxf : 0, minf : 0, maxc : new GoComplex128(0, 0), minc : new GoComplex128(0, 0) } : T_inputT_testOverflow_0)).__copy__());
        {};
        var _o5:T_outu16_testOverflow_5 = new T_outu16_testOverflow_5();
        _enc.encode(Go.toInterface(_it));
        _err = _dec.decode(Go.toInterface(_o5));
        if ((_err == null) || (_err.error() != (("value for \"Maxu\" out of range" : GoString)))) {
            _t.error(Go.toInterface(((("wrong overflow error for uint16:" : GoString)))), Go.toInterface(_err));
        };
        _b.reset();
        _it = ((({ maxu : (("4294967296" : GoUInt64)), maxi : 0, mini : 0, maxf : 0, minf : 0, maxc : new GoComplex128(0, 0), minc : new GoComplex128(0, 0) } : T_inputT_testOverflow_0)) == null ? null : (({ maxu : (("4294967296" : GoUInt64)), maxi : 0, mini : 0, maxf : 0, minf : 0, maxc : new GoComplex128(0, 0), minc : new GoComplex128(0, 0) } : T_inputT_testOverflow_0)).__copy__());
        {};
        var _o6:T_outu32_testOverflow_6 = new T_outu32_testOverflow_6();
        _enc.encode(Go.toInterface(_it));
        _err = _dec.decode(Go.toInterface(_o6));
        if ((_err == null) || (_err.error() != (("value for \"Maxu\" out of range" : GoString)))) {
            _t.error(Go.toInterface(((("wrong overflow error for uint32:" : GoString)))), Go.toInterface(_err));
        };
        _b.reset();
        _it = ((({ maxf : ((6.805646932770577e+38 : GoFloat64)), maxi : 0, mini : 0, maxu : 0, minf : 0, maxc : new GoComplex128(0, 0), minc : new GoComplex128(0, 0) } : T_inputT_testOverflow_0)) == null ? null : (({ maxf : ((6.805646932770577e+38 : GoFloat64)), maxi : 0, mini : 0, maxu : 0, minf : 0, maxc : new GoComplex128(0, 0), minc : new GoComplex128(0, 0) } : T_inputT_testOverflow_0)).__copy__());
        {};
        var _o7:T_outf32_testOverflow_7 = new T_outf32_testOverflow_7();
        _enc.encode(Go.toInterface(_it));
        _err = _dec.decode(Go.toInterface(_o7));
        if ((_err == null) || (_err.error() != (("value for \"Maxf\" out of range" : GoString)))) {
            _t.error(Go.toInterface(((("wrong overflow error for float32:" : GoString)))), Go.toInterface(_err));
        };
        _b.reset();
        _it = ((({ maxc : new GoComplex128(((6.805646932770577e+38 : GoUnTypedFloat)), ((6.805646932770577e+38 : GoUnTypedFloat))), maxi : 0, mini : 0, maxu : 0, maxf : 0, minf : 0, minc : new GoComplex128(0, 0) } : T_inputT_testOverflow_0)) == null ? null : (({ maxc : new GoComplex128(((6.805646932770577e+38 : GoUnTypedFloat)), ((6.805646932770577e+38 : GoUnTypedFloat))), maxi : 0, mini : 0, maxu : 0, maxf : 0, minf : 0, minc : new GoComplex128(0, 0) } : T_inputT_testOverflow_0)).__copy__());
        {};
        var _o8:T_outc64_testOverflow_8 = new T_outc64_testOverflow_8();
        _enc.encode(Go.toInterface(_it));
        _err = _dec.decode(Go.toInterface(_o8));
        if ((_err == null) || (_err.error() != (("value for \"Maxc\" out of range" : GoString)))) {
            _t.error(Go.toInterface(((("wrong overflow error for complex64:" : GoString)))), Go.toInterface(_err));
        };
    }
@:structInit class RT_testNesting_0 {
    public var a : GoString = (("" : GoString));
    public var next : RT_testNesting_0 = ((null : RT_testNesting_0));
    public function new(?a:GoString, ?next:RT_testNesting_0) {
        if (a != null) this.a = a;
        if (next != null) this.next = next;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new RT_testNesting_0(a, next);
    }
}
function testNesting(_t:stdgo.testing.Testing.T_):Void {
        {};
        var _rt:RT_testNesting_0 = new RT_testNesting_0();
        _rt.a = ((("level1" : GoString)));
        _rt.next = new RT_testNesting_0();
        _rt.next.a = ((("level2" : GoString)));
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        newEncoder(_b).encode(Go.toInterface(_rt));
        var _drt:RT_testNesting_0 = new RT_testNesting_0();
        var _dec:Decoder = newDecoder(_b);
        var _err:stdgo.Error = _dec.decode(Go.toInterface(_drt));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("decoder error:" : GoString)))), Go.toInterface(_err));
        };
        if (_drt.a != _rt.a) {
            _t.errorf(((("nesting: encode expected %v got %v" : GoString))), Go.toInterface(_rt), Go.toInterface(_drt));
        };
        if (_drt.next == null) {
            _t.errorf(((("nesting: recursion failed" : GoString))));
        };
        if (_drt.next.a != _rt.next.a) {
            _t.errorf(((("nesting: encode expected %v got %v" : GoString))), Go.toInterface(_rt.next), Go.toInterface(_drt.next));
        };
    }
function testAutoIndirection(_t:stdgo.testing.Testing.T_):Void {
        var _t1:T1_testEndToEnd_2 = new T1_testEndToEnd_2();
        _t1.a = ((17 : GoInt));
        _t1.b = Go.pointer(((0 : GoInt)));
        _t1.b.value = ((177 : GoInt));
        _t1.c = ((null : Pointer<GoInt>));
        _t1.c = Go.pointer(((0 : GoInt)));
        _t1.c.value = ((1777 : GoInt));
        _t1.d = ((null : Pointer<GoInt>));
        _t1.d = ((null : Pointer<GoInt>));
        _t1.d = Go.pointer(((0 : GoInt)));
        _t1.d.value = ((17777 : GoInt));
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _enc:Encoder = newEncoder(_b);
        _enc.encode(Go.toInterface(_t1));
        var _dec:Decoder = newDecoder(_b);
        var _t0:T0 = new T0();
        _dec.decode(Go.toInterface(_t0));
        if ((((_t0.a != ((17 : GoInt))) || (_t0.b != ((177 : GoInt)))) || (_t0.c != ((1777 : GoInt)))) || (_t0.d != ((17777 : GoInt)))) {
            _t.errorf(((("t1->t0: expected {17 177 1777 17777}; got %v" : GoString))), Go.toInterface(_t0));
        };
        var _t2:T2_testEndToEnd_0 = new T2_testEndToEnd_0();
        _t2.d = ((17777 : GoInt));
        _t2.c = Go.pointer(((0 : GoInt)));
        _t2.c.value = ((1777 : GoInt));
        _t2.b = ((null : Pointer<GoInt>));
        _t2.b = Go.pointer(((0 : GoInt)));
        _t2.b.value = ((177 : GoInt));
        _t2.a = ((null : Pointer<GoInt>));
        _t2.a = ((null : Pointer<GoInt>));
        _t2.a = Go.pointer(((0 : GoInt)));
        _t2.a.value = ((17 : GoInt));
        _b.reset();
        _enc.encode(Go.toInterface(_t2));
        _t0 = ((new T0() : T0));
        _dec.decode(Go.toInterface(_t0));
        if ((((_t0.a != ((17 : GoInt))) || (_t0.b != ((177 : GoInt)))) || (_t0.c != ((1777 : GoInt)))) || (_t0.d != ((17777 : GoInt)))) {
            _t.errorf(((("t2->t0 expected {17 177 1777 17777}; got %v" : GoString))), Go.toInterface(_t0));
        };
        _t0 = ((new T0(((17 : GoInt)), ((177 : GoInt)), ((1777 : GoInt)), ((17777 : GoInt))) : T0));
        _b.reset();
        _enc.encode(Go.toInterface(_t0));
        _t1 = ((new T1_testEndToEnd_2() : T1_testEndToEnd_2));
        _dec.decode(Go.toInterface(_t1));
        if ((((_t1.a != ((17 : GoInt))) || (_t1.b.value != ((177 : GoInt)))) || (_t1.c.value != ((1777 : GoInt)))) || (_t1.d.value != ((17777 : GoInt)))) {
            _t.errorf(((("t0->t1 expected {17 177 1777 17777}; got {%d %d %d %d}" : GoString))), Go.toInterface(_t1.a), Go.toInterface(_t1.b.value), Go.toInterface(_t1.c.value), Go.toInterface(_t1.d.value));
        };
        _b.reset();
        _enc.encode(Go.toInterface(_t0));
        _t2 = ((new T2_testEndToEnd_0() : T2_testEndToEnd_0));
        _dec.decode(Go.toInterface(_t2));
        if ((((_t2.a.value != ((17 : GoInt))) || (_t2.b.value != ((177 : GoInt)))) || (_t2.c.value != ((1777 : GoInt)))) || (_t2.d != ((17777 : GoInt)))) {
            _t.errorf(((("t0->t2 expected {17 177 1777 17777}; got {%d %d %d %d}" : GoString))), Go.toInterface(_t2.a.value), Go.toInterface(_t2.b.value), Go.toInterface(_t2.c.value), Go.toInterface(_t2.d));
        };
        _b.reset();
        _enc.encode(Go.toInterface(_t0));
        _t2.a.value = ((0 : GoInt));
        _t2.b.value = ((0 : GoInt));
        _t2.c.value = ((0 : GoInt));
        _t2.d = ((0 : GoInt));
        _dec.decode(Go.toInterface(_t2));
        if ((((_t2.a.value != ((17 : GoInt))) || (_t2.b.value != ((177 : GoInt)))) || (_t2.c.value != ((1777 : GoInt)))) || (_t2.d != ((17777 : GoInt)))) {
            _t.errorf(((("t0->t2 expected {17 177 1777 17777}; got {%d %d %d %d}" : GoString))), Go.toInterface(_t2.a.value), Go.toInterface(_t2.b.value), Go.toInterface(_t2.c.value), Go.toInterface(_t2.d));
        };
    }
function testReorderedFields(_t:stdgo.testing.Testing.T_):Void {
        var _rt0:RT0 = new RT0();
        _rt0.a = ((17 : GoInt));
        _rt0.b = ((("hello" : GoString)));
        _rt0.c = ((3.14159 : GoFloat64));
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        newEncoder(_b).encode(Go.toInterface(_rt0));
        var _dec:Decoder = newDecoder(_b);
        var _rt1:RT1 = new RT1();
        var _err:stdgo.Error = _dec.decode(Go.toInterface(_rt1));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("decode error:" : GoString)))), Go.toInterface(_err));
        };
        if (((_rt0.a != _rt1.a) || (_rt0.b != _rt1.b)) || (_rt0.c != _rt1.c)) {
            _t.errorf(((("rt1->rt0: expected %v; got %v" : GoString))), Go.toInterface(_rt0), Go.toInterface(_rt1));
        };
    }
function testIgnoredFields(_t:stdgo.testing.Testing.T_):Void {
        var _it0:IT0 = new IT0();
        _it0.a = ((17 : GoInt64));
        _it0.b = ((("hello" : GoString)));
        _it0.c = ((3.14159 : GoFloat64));
        _it0.ignore_d = ((new Slice<GoInt>(((1 : GoInt)), ((2 : GoInt)), ((3 : GoInt))) : Slice<GoInt>));
        if (_it0.ignore_e != null) _it0.ignore_e[((0 : GoInt))] = ((1 : GoFloat64));
        if (_it0.ignore_e != null) _it0.ignore_e[((1 : GoInt))] = ((2 : GoFloat64));
        if (_it0.ignore_e != null) _it0.ignore_e[((2 : GoInt))] = ((3 : GoFloat64));
        _it0.ignore_f = true;
        _it0.ignore_g = ((("pay no attention" : GoString)));
        _it0.ignore_h = ((((("to the curtain" : GoString))) : Slice<GoByte>));
        _it0.ignore_i = ((new RT1(((3.1 : GoFloat64)), ((("hi" : GoString))), ((7 : GoInt)), ((("hello" : GoString)))) : RT1));
        _it0.ignore_m = Go.map(((("one" : GoString))) => ((1 : GoInt)), ((("two" : GoString))) => ((2 : GoInt)));
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        newEncoder(_b).encode(Go.toInterface(_it0));
        var _dec:Decoder = newDecoder(_b);
        var _rt1:RT1 = new RT1();
        var _err:stdgo.Error = _dec.decode(Go.toInterface(_rt1));
        if (_err != null) {
            _t.error(Go.toInterface(((("error: " : GoString)))), Go.toInterface(_err));
        };
        if (((((_it0.a : GoInt)) != _rt1.a) || (_it0.b != _rt1.b)) || (_it0.c != _rt1.c)) {
            _t.errorf(((("rt0->rt1: expected %v; got %v" : GoString))), Go.toInterface(_it0), Go.toInterface(_rt1));
        };
    }
/*@:named typedef Rec_testBadRecursiveType_0 = Rec_testBadRecursiveType_0;
function testBadRecursiveType(_t:stdgo.testing.Testing.T_):Void {
        {};
        var _rec:Rec_testBadRecursiveType_0 = new Rec_testBadRecursiveType_0();
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _err:stdgo.Error = newEncoder(_b).encode(Go.toInterface(_rec));
        if (_err == null) {
            _t.error(Go.toInterface(((("expected error; got none" : GoString)))));
        } else if (!stdgo.strings.Strings.contains(_err.error(), ((("recursive" : GoString))))) {
            _t.error(Go.toInterface(((("expected recursive type error; got" : GoString)))), Go.toInterface(_err));
        };
    }*/
function testIndirectSliceMapArray(_t:stdgo.testing.Testing.T_):Void {
        var _i:Indirect = new Indirect();
        _i.a = ((null : GoArray<GoInt>));
        _i.a = ((null : GoArray<GoInt>));
        _i.a = new GoArray<GoInt>(...[for (i in 0 ... 3) ((0 : GoInt))]);
        _i.a = ((new GoArray<GoInt>(((1 : GoInt)), ((2 : GoInt)), ((3 : GoInt))) : GoArray<GoInt>));
        _i.s = ((null : Slice<GoInt>));
        _i.s = ((null : Slice<GoInt>));
        _i.s = ((null : Slice<GoInt>));
        _i.s = ((new Slice<GoInt>(((4 : GoInt)), ((5 : GoInt)), ((6 : GoInt))) : Slice<GoInt>));
        _i.m = ((null : GoMap<GoString, GoInt>));
        _i.m = ((null : GoMap<GoString, GoInt>));
        _i.m = ((null : GoMap<GoString, GoInt>));
        _i.m = ((null : GoMap<GoString, GoInt>));
        _i.m = Go.map(((("one" : GoString))) => ((1 : GoInt)), ((("two" : GoString))) => ((2 : GoInt)), ((("three" : GoString))) => ((3 : GoInt)));
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        newEncoder(_b).encode(Go.toInterface(_i));
        var _dec:Decoder = newDecoder(_b);
        var _d:Direct = new Direct();
        var _err:stdgo.Error = _dec.decode(Go.toInterface(_d));
        if (_err != null) {
            _t.error(Go.toInterface(((("error: " : GoString)))), Go.toInterface(_err));
        };
        if (((false || ((_d.a != null ? _d.a[((0 : GoInt))] : ((0 : GoInt))) != ((1 : GoInt)))) || ((_d.a != null ? _d.a[((1 : GoInt))] : ((0 : GoInt))) != ((2 : GoInt)))) || ((_d.a != null ? _d.a[((2 : GoInt))] : ((0 : GoInt))) != ((3 : GoInt)))) {
            _t.errorf(((("indirect to direct: d.A is %v not %v" : GoString))), Go.toInterface(_d.a), Go.toInterface(_i.a));
        };
        if (((((_d.s != null ? _d.s.length : ((0 : GoInt))) != ((3 : GoInt))) || ((_d.s != null ? _d.s[((0 : GoInt))] : ((0 : GoInt))) != ((4 : GoInt)))) || ((_d.s != null ? _d.s[((1 : GoInt))] : ((0 : GoInt))) != ((5 : GoInt)))) || ((_d.s != null ? _d.s[((2 : GoInt))] : ((0 : GoInt))) != ((6 : GoInt)))) {
            _t.errorf(((("indirect to direct: d.S is %v not %v" : GoString))), Go.toInterface(_d.s), Go.toInterface(_i.s));
        };
        if (((((_d.m != null ? _d.m.length : ((0 : GoInt))) != ((3 : GoInt))) || ((_d.m != null ? _d.m[((("one" : GoString)))] : ((0 : GoInt))) != ((1 : GoInt)))) || ((_d.m != null ? _d.m[((("two" : GoString)))] : ((0 : GoInt))) != ((2 : GoInt)))) || ((_d.m != null ? _d.m[((("three" : GoString)))] : ((0 : GoInt))) != ((3 : GoInt)))) {
            _t.errorf(((("indirect to direct: d.M is %v not %v" : GoString))), Go.toInterface(_d.m), Go.toInterface(_i.m));
        };
        _d.a = ((new GoArray<GoInt>(((11 : GoInt)), ((22 : GoInt)), ((33 : GoInt))) : GoArray<GoInt>));
        _d.s = ((new Slice<GoInt>(((44 : GoInt)), ((55 : GoInt)), ((66 : GoInt))) : Slice<GoInt>));
        _d.m = Go.map(((("four" : GoString))) => ((4 : GoInt)), ((("five" : GoString))) => ((5 : GoInt)), ((("six" : GoString))) => ((6 : GoInt)));
        _i = new Indirect();
        _b.reset();
        newEncoder(_b).encode(Go.toInterface(_d));
        _dec = newDecoder(_b);
        _err = _dec.decode(Go.toInterface(_i));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("error: " : GoString)))), Go.toInterface(_err));
        };
        if (((false || (((_i.a) != null ? (_i.a)[((0 : GoInt))] : ((0 : GoInt))) != ((11 : GoInt)))) || (((_i.a) != null ? (_i.a)[((1 : GoInt))] : ((0 : GoInt))) != ((22 : GoInt)))) || (((_i.a) != null ? (_i.a)[((2 : GoInt))] : ((0 : GoInt))) != ((33 : GoInt)))) {
            _t.errorf(((("direct to indirect: ***i.A is %v not %v" : GoString))), Go.toInterface(_i.a), Go.toInterface(_d.a));
        };
        if (((((_i.s != null ? _i.s.length : ((0 : GoInt))) != ((3 : GoInt))) || (((_i.s) != null ? (_i.s)[((0 : GoInt))] : ((0 : GoInt))) != ((44 : GoInt)))) || (((_i.s) != null ? (_i.s)[((1 : GoInt))] : ((0 : GoInt))) != ((55 : GoInt)))) || (((_i.s) != null ? (_i.s)[((2 : GoInt))] : ((0 : GoInt))) != ((66 : GoInt)))) {
            _t.errorf(((("direct to indirect: ***i.S is %v not %v" : GoString))), Go.toInterface(_i.s), Go.toInterface(_i.s));
        };
        if (((((_i.m != null ? _i.m.length : ((0 : GoInt))) != ((3 : GoInt))) || (((_i.m) != null ? (_i.m)[((("four" : GoString)))] : ((0 : GoInt))) != ((4 : GoInt)))) || (((_i.m) != null ? (_i.m)[((("five" : GoString)))] : ((0 : GoInt))) != ((5 : GoInt)))) || (((_i.m) != null ? (_i.m)[((("six" : GoString)))] : ((0 : GoInt))) != ((6 : GoInt)))) {
            _t.errorf(((("direct to indirect: ****i.M is %v not %v" : GoString))), Go.toInterface(_i.m), Go.toInterface(_d.m));
        };
    }
function testInterface(_t:stdgo.testing.Testing.T_):Void {
        var _iVal:Int_ = ((((3 : GoInt)) : Int_));
        var _fVal:Float_ = ((((5 : GoFloat64)) : Float_));
        var _vVal:Vector = ((new Slice<GoInt>(((1 : GoInt)), ((2 : GoInt)), ((3 : GoInt))) : Vector));
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _item1:InterfaceItem = ((new InterfaceItem(((1 : GoInt)), new Int__wrapper(Go.pointer(_iVal)), new Float__wrapper(Go.pointer(_fVal)), new Vector_wrapper(_vVal), ((11.5 : GoFloat64)), ((new Slice<Squarer>(new Int__wrapper(Go.pointer(_iVal)), new Float__wrapper(Go.pointer(_fVal)), ((null : Squarer)), new Vector_wrapper(_vVal)) : Slice<Squarer>))) : InterfaceItem));
        register(Go.toInterface(((((0 : GoInt)) : Int_))));
        register(Go.toInterface(((((0 : GoFloat64)) : Float_))));
        register(Go.toInterface(((new Slice<GoInt>() : Vector))));
        var _err:stdgo.Error = newEncoder(_b).encode(Go.toInterface(_item1));
        if (_err != null) {
            _t.error(Go.toInterface(((("expected no encode error; got" : GoString)))), Go.toInterface(_err));
        };
        var _item2:InterfaceItem = ((new InterfaceItem() : InterfaceItem));
        _err = newDecoder(_b).decode(Go.toInterface(_item2));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("decode:" : GoString)))), Go.toInterface(_err));
        };
        if (_item2.i != _item1.i) {
            _t.error(Go.toInterface(((("normal int did not decode correctly" : GoString)))));
        };
        if ((_item2.sq1 == null) || (_item2.sq1.square() != _iVal.square())) {
            _t.error(Go.toInterface(((("Int did not decode correctly" : GoString)))));
        };
        if ((_item2.sq2 == null) || (_item2.sq2.square() != _fVal.square())) {
            _t.error(Go.toInterface(((("Float did not decode correctly" : GoString)))));
        };
        if ((_item2.sq3 == null) || (_item2.sq3.square() != _vVal.square())) {
            _t.error(Go.toInterface(((("Vector did not decode correctly" : GoString)))));
        };
        if (_item2.f != _item1.f) {
            _t.error(Go.toInterface(((("normal float did not decode correctly" : GoString)))));
        };
        if ((_item1.sq != null ? _item1.sq.length : ((0 : GoInt))) != (_item2.sq != null ? _item2.sq.length : ((0 : GoInt)))) {
            _t.fatalf(((("[]Squarer length wrong: got %d; expected %d" : GoString))), Go.toInterface((_item2.sq != null ? _item2.sq.length : ((0 : GoInt)))), Go.toInterface((_item1.sq != null ? _item1.sq.length : ((0 : GoInt)))));
        };
        for (_i => _v1 in _item1.sq) {
            var _v2:Squarer = (_item2.sq != null ? _item2.sq[_i] : ((null : Squarer)));
            if ((_v1 == null) || (_v2 == null)) {
                if ((_v1 != null) || (_v2 != null)) {
                    _t.errorf(((("item %d inconsistent nils" : GoString))), Go.toInterface(_i));
                };
            } else if (_v1.square() != _v2.square()) {
                _t.errorf(((("item %d inconsistent values: %v %v" : GoString))), Go.toInterface(_i), Go.toInterface(_v1), Go.toInterface(_v2));
            };
        };
    }
function testInterfaceBasic(_t:stdgo.testing.Testing.T_):Void {
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _item1:BasicInterfaceItem = ((new BasicInterfaceItem(
Go.toInterface(((((1 : GoInt)) : GoInt))),
Go.toInterface(((((1 : GoInt8)) : GoInt8))),
Go.toInterface(((((1 : GoInt16)) : GoInt16))),
Go.toInterface(((((1 : GoInt32)) : GoInt32))),
Go.toInterface(((((1 : GoInt64)) : GoInt64))),
Go.toInterface(((((1 : GoUInt)) : GoUInt))),
Go.toInterface(((((1 : GoUInt8)) : GoUInt8))),
Go.toInterface(((((1 : GoUInt16)) : GoUInt16))),
Go.toInterface(((((1 : GoUInt32)) : GoUInt32))),
Go.toInterface(((((1 : GoUInt64)) : GoUInt64))),
Go.toInterface(((((1 : GoFloat32)) : GoFloat32))),
Go.toInterface(((1 : GoFloat64))),
Go.toInterface(((new GoComplex128(0, 1) : GoComplex64))),
Go.toInterface(((new GoComplex128(0, 1) : GoComplex128))),
Go.toInterface(true),
Go.toInterface(((("hello" : GoString)))),
Go.toInterface(((((("sailor" : GoString))) : Slice<GoByte>)))) : BasicInterfaceItem));
        var _err:stdgo.Error = newEncoder(_b).encode(Go.toInterface(_item1));
        if (_err != null) {
            _t.error(Go.toInterface(((("expected no encode error; got" : GoString)))), Go.toInterface(_err));
        };
        var _item2:BasicInterfaceItem = ((new BasicInterfaceItem() : BasicInterfaceItem));
        _err = newDecoder(_b).decode(Go.toInterface(_item2));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("decode:" : GoString)))), Go.toInterface(_err));
        };
        if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_item1), Go.toInterface(_item2))) {
            _t.errorf(((("encode expected %v got %v" : GoString))), Go.toInterface(_item1), Go.toInterface(_item2));
        };
        {
            var __tmp__ = try {
                { value : ((_item2.bool.value : Bool)), ok : true };
            } catch(_) {
                { value : false, ok : false };
            }, _v = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok || !_v) {
                _t.error(Go.toInterface(((("boolean should be true" : GoString)))));
            };
        };
        {
            var __tmp__ = try {
                { value : ((_item2.toString.value : GoString)), ok : true };
            } catch(_) {
                { value : (("" : GoString)), ok : false };
            }, _v = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok || (_v != ((_item1.toString.value : GoString)))) {
                _t.errorf(((("string should be %v is %v" : GoString))), Go.toInterface(_item1.toString), Go.toInterface(_v));
            };
        };
    }
function testInterfacePointer(_t:stdgo.testing.Testing.T_):Void {
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _str1:GoString = ((("howdy" : GoString)));
        var _str2:String_ = ((((("kiddo" : GoString))) : String_));
        var _item1:PtrInterfaceItem = ((new PtrInterfaceItem(Go.toInterface(Go.pointer(_str1)), Go.toInterface(Go.pointer(_str2))) : PtrInterfaceItem));
        register(Go.toInterface(_str2));
        var _err:stdgo.Error = newEncoder(_b).encode(Go.toInterface(_item1));
        if (_err != null) {
            _t.error(Go.toInterface(((("expected no encode error; got" : GoString)))), Go.toInterface(_err));
        };
        var _item2:PtrInterfaceItem = ((new PtrInterfaceItem() : PtrInterfaceItem));
        _err = newDecoder(_b).decode(Go.toInterface(_item2));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("decode:" : GoString)))), Go.toInterface(_err));
        };
        {
            var __tmp__ = try {
                { value : ((_item2.str1.value : GoString)), ok : true };
            } catch(_) {
                { value : (("" : GoString)), ok : false };
            }, _v = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok || (_v != _str1)) {
                _t.errorf(((("basic string failed: %q should be %q" : GoString))), Go.toInterface(_v), Go.toInterface(_str1));
            };
        };
        {
            var __tmp__ = try {
                { value : ((((_item2.str2.value : Dynamic)).__t__.get() : String_)), ok : true };
            } catch(_) {
                { value : new String_(), ok : false };
            }, _v = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok || (_v != _str2)) {
                _t.errorf(((("derived type String failed: %q should be %q" : GoString))), Go.toInterface(_v), Go.toInterface(_str2));
            };
        };
    }
function testIgnoreInterface(_t:stdgo.testing.Testing.T_):Void {
        var _iVal:Int_ = ((((3 : GoInt)) : Int_));
        var _fVal:Float_ = ((((5 : GoFloat64)) : Float_));
        var _pVal:Point = ((new Point(((2 : GoInt)), ((3 : GoInt))) : Point));
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _item1:InterfaceItem = ((new InterfaceItem(((1 : GoInt)), new Int__wrapper(Go.pointer(_iVal)), new Float__wrapper(Go.pointer(_fVal)), _pVal, ((11.5 : GoFloat64)), ((null : Slice<Squarer>))) : InterfaceItem));
        register(Go.toInterface(((((0 : GoInt)) : Int_))));
        register(Go.toInterface(((((0 : GoFloat64)) : Float_))));
        register(Go.toInterface(((new Point() : Point))));
        var _err:stdgo.Error = newEncoder(_b).encode(Go.toInterface(_item1));
        if (_err != null) {
            _t.error(Go.toInterface(((("expected no encode error; got" : GoString)))), Go.toInterface(_err));
        };
        var _item2:NoInterfaceItem = ((new NoInterfaceItem() : NoInterfaceItem));
        _err = newDecoder(_b).decode(Go.toInterface(_item2));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("decode:" : GoString)))), Go.toInterface(_err));
        };
        if (_item2.i != _item1.i) {
            _t.error(Go.toInterface(((("normal int did not decode correctly" : GoString)))));
        };
        if (_item2.f != _item1.f) {
            _t.error(Go.toInterface(((("normal float did not decode correctly" : GoString)))));
        };
    }
function testUnexportedFields(_t:stdgo.testing.Testing.T_):Void {
        var _u0:U = new U();
        _u0.a = ((17 : GoInt));
        _u0.b = ((("hello" : GoString)));
        _u0._c = ((3.14159 : GoFloat64));
        _u0.d = ((23 : GoUInt));
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        newEncoder(_b).encode(Go.toInterface(_u0));
        var _dec:Decoder = newDecoder(_b);
        var _u1:U = new U();
        _u1._c = ((1234 : GoFloat64));
        var _err:stdgo.Error = _dec.decode(Go.toInterface(_u1));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("decode error:" : GoString)))), Go.toInterface(_err));
        };
        if (((_u0.a != _u1.a) || (_u0.b != _u1.b)) || (_u0.d != _u1.d)) {
            _t.errorf(((("u1->u0: expected %v; got %v" : GoString))), Go.toInterface(_u0), Go.toInterface(_u1));
        };
        if (_u1._c != ((1234 : GoFloat64))) {
            _t.error(Go.toInterface(((("u1.c modified" : GoString)))));
        };
    }
function testDebugSingleton(_t:stdgo.testing.Testing.T_):Void {
        if (_debugFunc == null) {
            return;
        };
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        for (_0 => _x in _singletons) {
            var _err:stdgo.Error = newEncoder(_b).encode(Go.toInterface(_x));
            if (_err != null) {
                _t.fatal(Go.toInterface(((("encode:" : GoString)))), Go.toInterface(_err));
            };
        };
        _debugFunc(_b);
    }
function _newDT():DT {
        var _dt:DT = new DT();
        _dt.a = ((17 : GoInt));
        _dt.b = ((("hello" : GoString)));
        _dt.c = ((3.14159 : GoFloat64));
        _dt.i = Go.toInterface(((271828 : GoInt)));
        _dt.j = Go.toInterface(((new OnTheFly(((3 : GoInt))) : OnTheFly)));
        _dt.i_nil = ((null : AnyInterface));
        _dt.m = Go.map(((("one" : GoString))) => ((1 : GoInt)), ((("two" : GoString))) => ((2 : GoInt)));
        _dt.t = ((new GoArray<GoInt>(((11 : GoInt)), ((22 : GoInt)), ((33 : GoInt))) : GoArray<GoInt>));
        _dt.s = ((new Slice<GoString>(((("hi" : GoString))), ((("joe" : GoString)))) : Slice<GoString>));
        return (_dt == null ? null : _dt.__copy__());
    }
function testDebugStruct(_t:stdgo.testing.Testing.T_):Void {
        if (_debugFunc == null) {
            return;
        };
        register(Go.toInterface(((new OnTheFly() : OnTheFly))));
        var _dt:DT = (_newDT() == null ? null : _newDT().__copy__());
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _err:stdgo.Error = newEncoder(_b).encode(Go.toInterface(_dt));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("encode:" : GoString)))), Go.toInterface(_err));
        };
        var _debugBuffer:stdgo.bytes.Bytes.Buffer = stdgo.bytes.Bytes.newBuffer(_b.bytes());
        var _dt2:DT = ((new DT() : DT));
        _err = newDecoder(_b).decode(Go.toInterface(_dt2));
        if (_err != null) {
            _t.error(Go.toInterface(((("decode:" : GoString)))), Go.toInterface(_err));
        };
        _debugFunc(_debugBuffer);
    }
function _encFuzzDec(_rng:stdgo.math.rand.Rand.Rand, _in:AnyInterface):Error {
        var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _enc:Encoder = newEncoder(_buf);
        {
            var _err:stdgo.Error = _enc.encode(Go.toInterface(_in));
            if (_err != null) {
                return _err;
            };
        };
        var _b:Slice<GoUInt8> = _buf.bytes();
        for (_i => _bi in _b) {
            if (_rng.intn(((10 : GoInt))) < ((3 : GoInt))) {
                if (_b != null) _b[_i] = _bi + ((_rng.intn(((256 : GoInt))) : GoUInt8));
            };
        };
        var _dec:Decoder = newDecoder(_buf);
        var _e:AnyInterface = ((null : AnyInterface));
        {
            var _err:stdgo.Error = _dec.decode(Go.toInterface(_e));
            if (_err != null) {
                return _err;
            };
        };
        return ((null : stdgo.Error));
    }
function testFuzz(_t:stdgo.testing.Testing.T_):Void {
        if (!_doFuzzTests.value) {
            _t.skipf(((("disabled; run with -gob.fuzz to enable" : GoString))));
        };
        var _input:Slice<AnyInterface> = ((new Slice<AnyInterface>(Go.toInterface(Go.pointer(((0 : GoInt)))), Go.toInterface(Go.pointer(((0 : GoFloat32)))), Go.toInterface(Go.pointer(((0 : GoFloat64)))), Go.toInterface(Go.pointer(new GoComplex128(0, 0))), Go.toInterface(((new ByteStruct(((255 : GoUInt8))) : ByteStruct))), Go.toInterface(((new ArrayStruct() : ArrayStruct))), Go.toInterface(((new StringStruct(((("hello" : GoString)))) : StringStruct))), Go.toInterface(((new GobTest1(((0 : GoInt)), ((new StringStruct(((("hello" : GoString)))) : StringStruct))) : GobTest1)))) : Slice<AnyInterface>));
        _testFuzz(_t, stdgo.time.Time.now().unixNano(), ((100 : GoInt)), ..._input.__toArray__());
    }
function testFuzzRegressions(_t:stdgo.testing.Testing.T_):Void {
        if (!_doFuzzTests.value) {
            _t.skipf(((("disabled; run with -gob.fuzz to enable" : GoString))));
        };
        _testFuzz(_t, (("1328492090837718000" : GoInt64)), ((100 : GoInt)), Go.toInterface(Go.pointer(((0 : GoFloat32)))));
        _testFuzz(_t, (("1330522872628565000" : GoInt64)), ((100 : GoInt)), Go.toInterface(Go.pointer(((0 : GoInt)))));
    }
function _testFuzz(_t:stdgo.testing.Testing.T_, _seed:GoInt64, _n:GoInt, _input:haxe.Rest<AnyInterface>):Void {
        var _input = new Slice<AnyInterface>(..._input);
        for (_0 => _e in _input) {
            _t.logf(((("seed=%d n=%d e=%T" : GoString))), Go.toInterface(_seed), Go.toInterface(_n), Go.toInterface(_e));
            var _rng:stdgo.math.rand.Rand.Rand = stdgo.math.rand.Rand.new_(stdgo.math.rand.Rand.newSource(_seed));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _n, _i++, {
                    _encFuzzDec(_rng, Go.toInterface(_e));
                });
            };
        };
    }
function testFuzzOneByte(_t:stdgo.testing.Testing.T_):Void {
        if (!_doFuzzTests.value) {
            _t.skipf(((("disabled; run with -gob.fuzz to enable" : GoString))));
        };
        var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        register(Go.toInterface(((new OnTheFly() : OnTheFly))));
        var _dt:DT = (_newDT() == null ? null : _newDT().__copy__());
        {
            var _err:stdgo.Error = newEncoder(_buf).encode(Go.toInterface(_dt));
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        var _s:GoString = ((_buf.toString() : GoString));
        var _indices:Slice<GoInt> = new Slice<GoInt>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt))]).__setCap__((((_s != null ? _s.length : ((0 : GoInt))) : GoInt)).toBasic());
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_s != null ? _s.length : ((0 : GoInt))), _i++, {
                if (_i == ((14 : GoInt)) || _i == ((167 : GoInt)) || _i == ((231 : GoInt)) || _i == ((265 : GoInt))) {
                    continue;
                } else if (_i == ((248 : GoInt))) {
                    continue;
                };
                _indices = (_indices != null ? _indices.__append__(_i) : new Slice<GoInt>(_i));
            });
        };
        if (stdgo.testing.Testing.short()) {
            _indices = ((new Slice<GoInt>(((1 : GoInt)), ((111 : GoInt)), ((178 : GoInt))) : Slice<GoInt>));
        };
        for (_0 => _i in _indices) {
            {
                var _j:GoInt = ((0 : GoInt));
                Go.cfor(_j < ((256 : GoInt)), _j = _j + (((3 : GoInt))), {
                    var _b:Slice<GoUInt8> = ((_s : Slice<GoByte>));
                    if (_b != null) (_b != null ? _b[_i] : ((0 : GoUInt8))) ^ (((_j : GoByte)));
                    var _e:DT = new DT();
                    {
                        var a = function():Void {
                            __deferstack__.unshift(() -> {
                                var a = function():Void {
                                    {
                                        var _p:AnyInterface = Go.toInterface(({
                                            final r = __recover_exception__;
                                            __recover_exception__ = null;
                                            r;
                                        }));
                                        if (_p != null) {
                                            _t.errorf(((("crash for b[%d] ^= 0x%x" : GoString))), Go.toInterface(_i), Go.toInterface(_j));
                                            throw Go.toInterface(_p);
                                        };
                                    };
                                };
                                a();
                            });
                            var _err:stdgo.Error = newDecoder(stdgo.bytes.Bytes.newReader(_b)).decode(Go.toInterface(_e));
                            _err;
                        };
                        a();
                    };
                });
            };
        };
    }
function testErrorInvalidTypeId(_t:stdgo.testing.Testing.T_):Void {
        var _data:Slice<GoUInt8> = ((new Slice<GoUInt8>(((1 : GoUInt8)), ((0 : GoUInt8)), ((1 : GoUInt8)), ((0 : GoUInt8))) : Slice<GoUInt8>));
        var _d:Decoder = newDecoder(stdgo.bytes.Bytes.newReader(_data));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((2 : GoInt)), _i++, {
                var _foo:T__struct_0 = new T__struct_0();
                var _err:stdgo.Error = _d.decode(Go.toInterface(_foo));
                if (_err != _errBadType) {
                    _t.fatalf(((("decode: expected %s, got %s" : GoString))), Go.toInterface(_errBadType), Go.toInterface(_err));
                };
            });
        };
    }
function _decBoolArray(_state:T_decoderState, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decBoolSlice(_state, (_v.slice(((0 : GoInt)), _v.len()) == null ? null : _v.slice(((0 : GoInt)), _v.len()).__copy__()), _length, _ovfl);
    }
function _decBoolSlice(_state:T_decoderState, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<Bool>)), ok : true };
        } catch(_) {
            { value : ((null : Slice<Bool>)), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                if (_state._b.len() == ((0 : GoInt))) {
                    _errorf(((("decoding bool array or slice: length exceeds input size (%d elements)" : GoString))), Go.toInterface(_length));
                };
                if (_slice != null) _slice[_i] = _state._decodeUint() != ((0 : GoUInt64));
            });
        };
        return true;
    }
function _decComplex64Array(_state:T_decoderState, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decComplex64Slice(_state, (_v.slice(((0 : GoInt)), _v.len()) == null ? null : _v.slice(((0 : GoInt)), _v.len()).__copy__()), _length, _ovfl);
    }
function _decComplex64Slice(_state:T_decoderState, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoComplex64>)), ok : true };
        } catch(_) {
            { value : ((null : Slice<GoComplex64>)), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                if (_state._b.len() == ((0 : GoInt))) {
                    _errorf(((("decoding complex64 array or slice: length exceeds input size (%d elements)" : GoString))), Go.toInterface(_length));
                };
                var _real:GoFloat64 = _float32FromBits(_state._decodeUint(), _ovfl);
                var _imag:GoFloat64 = _float32FromBits(_state._decodeUint(), _ovfl);
                if (_slice != null) _slice[_i] = new GoComplex128(((_real : GoFloat32)), ((_imag : GoFloat32)));
            });
        };
        return true;
    }
function _decComplex128Array(_state:T_decoderState, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decComplex128Slice(_state, (_v.slice(((0 : GoInt)), _v.len()) == null ? null : _v.slice(((0 : GoInt)), _v.len()).__copy__()), _length, _ovfl);
    }
function _decComplex128Slice(_state:T_decoderState, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoComplex128>)), ok : true };
        } catch(_) {
            { value : ((null : Slice<GoComplex128>)), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                if (_state._b.len() == ((0 : GoInt))) {
                    _errorf(((("decoding complex128 array or slice: length exceeds input size (%d elements)" : GoString))), Go.toInterface(_length));
                };
                var _real:GoFloat64 = _float64FromBits(_state._decodeUint());
                var _imag:GoFloat64 = _float64FromBits(_state._decodeUint());
                if (_slice != null) _slice[_i] = new GoComplex128(_real, _imag);
            });
        };
        return true;
    }
function _decFloat32Array(_state:T_decoderState, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decFloat32Slice(_state, (_v.slice(((0 : GoInt)), _v.len()) == null ? null : _v.slice(((0 : GoInt)), _v.len()).__copy__()), _length, _ovfl);
    }
function _decFloat32Slice(_state:T_decoderState, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoFloat32>)), ok : true };
        } catch(_) {
            { value : ((null : Slice<GoFloat32>)), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                if (_state._b.len() == ((0 : GoInt))) {
                    _errorf(((("decoding float32 array or slice: length exceeds input size (%d elements)" : GoString))), Go.toInterface(_length));
                };
                if (_slice != null) _slice[_i] = ((_float32FromBits(_state._decodeUint(), _ovfl) : GoFloat32));
            });
        };
        return true;
    }
function _decFloat64Array(_state:T_decoderState, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decFloat64Slice(_state, (_v.slice(((0 : GoInt)), _v.len()) == null ? null : _v.slice(((0 : GoInt)), _v.len()).__copy__()), _length, _ovfl);
    }
function _decFloat64Slice(_state:T_decoderState, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoFloat64>)), ok : true };
        } catch(_) {
            { value : ((null : Slice<GoFloat64>)), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                if (_state._b.len() == ((0 : GoInt))) {
                    _errorf(((("decoding float64 array or slice: length exceeds input size (%d elements)" : GoString))), Go.toInterface(_length));
                };
                if (_slice != null) _slice[_i] = _float64FromBits(_state._decodeUint());
            });
        };
        return true;
    }
function _decIntArray(_state:T_decoderState, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decIntSlice(_state, (_v.slice(((0 : GoInt)), _v.len()) == null ? null : _v.slice(((0 : GoInt)), _v.len()).__copy__()), _length, _ovfl);
    }
function _decIntSlice(_state:T_decoderState, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoInt>)), ok : true };
        } catch(_) {
            { value : ((null : Slice<GoInt>)), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                if (_state._b.len() == ((0 : GoInt))) {
                    _errorf(((("decoding int array or slice: length exceeds input size (%d elements)" : GoString))), Go.toInterface(_length));
                };
                var _x:GoInt64 = _state._decodeInt();
                if ((_x < ((-2147483648 : GoInt64))) || (((((2147483647 : GoUInt)) : GoInt64)) < _x)) {
                    _error_(_ovfl);
                };
                if (_slice != null) _slice[_i] = ((_x : GoInt));
            });
        };
        return true;
    }
function _decInt16Array(_state:T_decoderState, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decInt16Slice(_state, (_v.slice(((0 : GoInt)), _v.len()) == null ? null : _v.slice(((0 : GoInt)), _v.len()).__copy__()), _length, _ovfl);
    }
function _decInt16Slice(_state:T_decoderState, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoInt16>)), ok : true };
        } catch(_) {
            { value : ((null : Slice<GoInt16>)), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                if (_state._b.len() == ((0 : GoInt))) {
                    _errorf(((("decoding int16 array or slice: length exceeds input size (%d elements)" : GoString))), Go.toInterface(_length));
                };
                var _x:GoInt64 = _state._decodeInt();
                if ((_x < ((-32768 : GoInt64))) || (((32767 : GoInt64)) < _x)) {
                    _error_(_ovfl);
                };
                if (_slice != null) _slice[_i] = ((_x : GoInt16));
            });
        };
        return true;
    }
function _decInt32Array(_state:T_decoderState, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decInt32Slice(_state, (_v.slice(((0 : GoInt)), _v.len()) == null ? null : _v.slice(((0 : GoInt)), _v.len()).__copy__()), _length, _ovfl);
    }
function _decInt32Slice(_state:T_decoderState, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoInt32>)), ok : true };
        } catch(_) {
            { value : ((null : Slice<GoInt32>)), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                if (_state._b.len() == ((0 : GoInt))) {
                    _errorf(((("decoding int32 array or slice: length exceeds input size (%d elements)" : GoString))), Go.toInterface(_length));
                };
                var _x:GoInt64 = _state._decodeInt();
                if ((_x < ((-2147483648 : GoInt64))) || (((2147483647 : GoInt64)) < _x)) {
                    _error_(_ovfl);
                };
                if (_slice != null) _slice[_i] = ((_x : GoInt32));
            });
        };
        return true;
    }
function _decInt64Array(_state:T_decoderState, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decInt64Slice(_state, (_v.slice(((0 : GoInt)), _v.len()) == null ? null : _v.slice(((0 : GoInt)), _v.len()).__copy__()), _length, _ovfl);
    }
function _decInt64Slice(_state:T_decoderState, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoInt64>)), ok : true };
        } catch(_) {
            { value : ((null : Slice<GoInt64>)), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                if (_state._b.len() == ((0 : GoInt))) {
                    _errorf(((("decoding int64 array or slice: length exceeds input size (%d elements)" : GoString))), Go.toInterface(_length));
                };
                if (_slice != null) _slice[_i] = _state._decodeInt();
            });
        };
        return true;
    }
function _decInt8Array(_state:T_decoderState, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decInt8Slice(_state, (_v.slice(((0 : GoInt)), _v.len()) == null ? null : _v.slice(((0 : GoInt)), _v.len()).__copy__()), _length, _ovfl);
    }
function _decInt8Slice(_state:T_decoderState, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoInt8>)), ok : true };
        } catch(_) {
            { value : ((null : Slice<GoInt8>)), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                if (_state._b.len() == ((0 : GoInt))) {
                    _errorf(((("decoding int8 array or slice: length exceeds input size (%d elements)" : GoString))), Go.toInterface(_length));
                };
                var _x:GoInt64 = _state._decodeInt();
                if ((_x < ((-128 : GoInt64))) || (((127 : GoInt64)) < _x)) {
                    _error_(_ovfl);
                };
                if (_slice != null) _slice[_i] = ((_x : GoInt8));
            });
        };
        return true;
    }
function _decStringArray(_state:T_decoderState, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decStringSlice(_state, (_v.slice(((0 : GoInt)), _v.len()) == null ? null : _v.slice(((0 : GoInt)), _v.len()).__copy__()), _length, _ovfl);
    }
function _decStringSlice(_state:T_decoderState, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoString>)), ok : true };
        } catch(_) {
            { value : ((null : Slice<GoString>)), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                if (_state._b.len() == ((0 : GoInt))) {
                    _errorf(((("decoding string array or slice: length exceeds input size (%d elements)" : GoString))), Go.toInterface(_length));
                };
                var _u:GoUInt64 = _state._decodeUint();
                var _n:GoInt = ((_u : GoInt));
                if (((_n < ((0 : GoInt))) || (((_n : GoUInt64)) != _u)) || (_n > _state._b.len())) {
                    _errorf(((("length of string exceeds input size (%d bytes)" : GoString))), Go.toInterface(_u));
                };
                if (_n > _state._b.len()) {
                    _errorf(((("string data too long for buffer: %d" : GoString))), Go.toInterface(_n));
                };
                var _data:Slice<GoUInt8> = _state._b.bytes();
                if ((_data != null ? _data.length : ((0 : GoInt))) < _n) {
                    _errorf(((("invalid string length %d: exceeds input size %d" : GoString))), Go.toInterface(_n), Go.toInterface((_data != null ? _data.length : ((0 : GoInt)))));
                };
                if (_slice != null) _slice[_i] = ((_data.__slice__(0, _n) : GoString));
                _state._b.drop(_n);
            });
        };
        return true;
    }
function _decUintArray(_state:T_decoderState, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decUintSlice(_state, (_v.slice(((0 : GoInt)), _v.len()) == null ? null : _v.slice(((0 : GoInt)), _v.len()).__copy__()), _length, _ovfl);
    }
function _decUintSlice(_state:T_decoderState, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoUInt>)), ok : true };
        } catch(_) {
            { value : ((null : Slice<GoUInt>)), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                if (_state._b.len() == ((0 : GoInt))) {
                    _errorf(((("decoding uint array or slice: length exceeds input size (%d elements)" : GoString))), Go.toInterface(_length));
                };
                var _x:GoUInt64 = _state._decodeUint();
                if (_slice != null) _slice[_i] = ((_x : GoUInt));
            });
        };
        return true;
    }
function _decUint16Array(_state:T_decoderState, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decUint16Slice(_state, (_v.slice(((0 : GoInt)), _v.len()) == null ? null : _v.slice(((0 : GoInt)), _v.len()).__copy__()), _length, _ovfl);
    }
function _decUint16Slice(_state:T_decoderState, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoUInt16>)), ok : true };
        } catch(_) {
            { value : ((null : Slice<GoUInt16>)), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                if (_state._b.len() == ((0 : GoInt))) {
                    _errorf(((("decoding uint16 array or slice: length exceeds input size (%d elements)" : GoString))), Go.toInterface(_length));
                };
                var _x:GoUInt64 = _state._decodeUint();
                if (((65535 : GoUInt64)) < _x) {
                    _error_(_ovfl);
                };
                if (_slice != null) _slice[_i] = ((_x : GoUInt16));
            });
        };
        return true;
    }
function _decUint32Array(_state:T_decoderState, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decUint32Slice(_state, (_v.slice(((0 : GoInt)), _v.len()) == null ? null : _v.slice(((0 : GoInt)), _v.len()).__copy__()), _length, _ovfl);
    }
function _decUint32Slice(_state:T_decoderState, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoUInt32>)), ok : true };
        } catch(_) {
            { value : ((null : Slice<GoUInt32>)), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                if (_state._b.len() == ((0 : GoInt))) {
                    _errorf(((("decoding uint32 array or slice: length exceeds input size (%d elements)" : GoString))), Go.toInterface(_length));
                };
                var _x:GoUInt64 = _state._decodeUint();
                if ((("4294967295" : GoUInt64)) < _x) {
                    _error_(_ovfl);
                };
                if (_slice != null) _slice[_i] = ((_x : GoUInt32));
            });
        };
        return true;
    }
function _decUint64Array(_state:T_decoderState, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decUint64Slice(_state, (_v.slice(((0 : GoInt)), _v.len()) == null ? null : _v.slice(((0 : GoInt)), _v.len()).__copy__()), _length, _ovfl);
    }
function _decUint64Slice(_state:T_decoderState, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoUInt64>)), ok : true };
        } catch(_) {
            { value : ((null : Slice<GoUInt64>)), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                if (_state._b.len() == ((0 : GoInt))) {
                    _errorf(((("decoding uint64 array or slice: length exceeds input size (%d elements)" : GoString))), Go.toInterface(_length));
                };
                if (_slice != null) _slice[_i] = _state._decodeUint();
            });
        };
        return true;
    }
function _decUintptrArray(_state:T_decoderState, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _decUintptrSlice(_state, (_v.slice(((0 : GoInt)), _v.len()) == null ? null : _v.slice(((0 : GoInt)), _v.len()).__copy__()), _length, _ovfl);
    }
function _decUintptrSlice(_state:T_decoderState, _v:stdgo.reflect.Reflect.Value, _length:GoInt, _ovfl:Error):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoUIntptr>)), ok : true };
        } catch(_) {
            { value : ((null : Slice<GoUIntptr>)), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                if (_state._b.len() == ((0 : GoInt))) {
                    _errorf(((("decoding uintptr array or slice: length exceeds input size (%d elements)" : GoString))), Go.toInterface(_length));
                };
                var _x:GoUInt64 = _state._decodeUint();
                if ((((("4294967295" : GoUIntptr)) : GoUInt64)) < _x) {
                    _error_(_ovfl);
                };
                if (_slice != null) _slice[_i] = ((_x : GoUIntptr));
            });
        };
        return true;
    }
function _overflow(_name:GoString):Error {
        return stdgo.errors.Errors.new_(((("value for \"" : GoString)) + _name) + (("\" out of range" : GoString)));
    }
function _decodeUintReader(_r:stdgo.io.Io.Reader, _buf:Slice<GoByte>):{ var _0 : GoUInt64; var _1 : GoInt; var _2 : Error; } {
        var _x:GoUInt64 = ((0 : GoUInt64)), _width:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _width = ((1 : GoInt));
        var __tmp__ = stdgo.io.Io.readFull(_r, _buf.__slice__(((0 : GoInt)), _width)), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_n == ((0 : GoInt))) {
            return { _0 : _x, _1 : _width, _2 : _err };
        };
        var _b:GoUInt8 = (_buf != null ? _buf[((0 : GoInt))] : ((0 : GoUInt8)));
        if (_b <= ((127 : GoUInt8))) {
            return { _0 : ((_b : GoUInt64)), _1 : _width, _2 : ((null : stdgo.Error)) };
        };
        _n = -((((_b : GoInt8)) : GoInt));
        if (_n > ((8 : GoInt))) {
            _err = _errBadUint;
            return { _0 : _x, _1 : _width, _2 : _err };
        };
        {
            var __tmp__ = stdgo.io.Io.readFull(_r, _buf.__slice__(((0 : GoInt)), _n));
            _width = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            if (_err == stdgo.io.Io.eof) {
                _err = stdgo.io.Io.errUnexpectedEOF;
            };
            return { _0 : _x, _1 : _width, _2 : _err };
        };
        for (_0 => _b in _buf.__slice__(((0 : GoInt)), _width)) {
            _x = (_x << ((8 : GoUnTypedInt))) | ((_b : GoUInt64));
        };
        _width++;
        return { _0 : _x, _1 : _width, _2 : _err };
    }
function _ignoreUint(_i:T_decInstr, _state:T_decoderState, _v:stdgo.reflect.Reflect.Value):Void {
        _state._decodeUint();
    }
function _ignoreTwoUints(_i:T_decInstr, _state:T_decoderState, _v:stdgo.reflect.Reflect.Value):Void {
        _state._decodeUint();
        _state._decodeUint();
    }
function _decAlloc(_v:stdgo.reflect.Reflect.Value):stdgo.reflect.Reflect.Value {
        while (_v.kind() == ((22 : GoUInt))) {
            if (_v.isNil()) {
                _v.set((stdgo.reflect.Reflect.new_(_v.type().elem()) == null ? null : stdgo.reflect.Reflect.new_(_v.type().elem()).__copy__()));
            };
            _v = (_v.elem() == null ? null : _v.elem().__copy__());
        };
        return (_v == null ? null : _v.__copy__());
    }
function _decBool(_i:T_decInstr, _state:T_decoderState, _value:stdgo.reflect.Reflect.Value):Void {
        _value.setBool(_state._decodeUint() != ((0 : GoUInt64)));
    }
function _decInt8(_i:T_decInstr, _state:T_decoderState, _value:stdgo.reflect.Reflect.Value):Void {
        var _v:GoInt64 = _state._decodeInt();
        if ((_v < ((-128 : GoInt64))) || (((127 : GoInt64)) < _v)) {
            _error_(_i._ovfl);
        };
        _value.setInt(_v);
    }
function _decUint8(_i:T_decInstr, _state:T_decoderState, _value:stdgo.reflect.Reflect.Value):Void {
        var _v:GoUInt64 = _state._decodeUint();
        if (((255 : GoUInt64)) < _v) {
            _error_(_i._ovfl);
        };
        _value.setUint(_v);
    }
function _decInt16(_i:T_decInstr, _state:T_decoderState, _value:stdgo.reflect.Reflect.Value):Void {
        var _v:GoInt64 = _state._decodeInt();
        if ((_v < ((-32768 : GoInt64))) || (((32767 : GoInt64)) < _v)) {
            _error_(_i._ovfl);
        };
        _value.setInt(_v);
    }
function _decUint16(_i:T_decInstr, _state:T_decoderState, _value:stdgo.reflect.Reflect.Value):Void {
        var _v:GoUInt64 = _state._decodeUint();
        if (((65535 : GoUInt64)) < _v) {
            _error_(_i._ovfl);
        };
        _value.setUint(_v);
    }
function _decInt32(_i:T_decInstr, _state:T_decoderState, _value:stdgo.reflect.Reflect.Value):Void {
        var _v:GoInt64 = _state._decodeInt();
        if ((_v < ((-2147483648 : GoInt64))) || (((2147483647 : GoInt64)) < _v)) {
            _error_(_i._ovfl);
        };
        _value.setInt(_v);
    }
function _decUint32(_i:T_decInstr, _state:T_decoderState, _value:stdgo.reflect.Reflect.Value):Void {
        var _v:GoUInt64 = _state._decodeUint();
        if ((("4294967295" : GoUInt64)) < _v) {
            _error_(_i._ovfl);
        };
        _value.setUint(_v);
    }
function _decInt64(_i:T_decInstr, _state:T_decoderState, _value:stdgo.reflect.Reflect.Value):Void {
        var _v:GoInt64 = _state._decodeInt();
        _value.setInt(_v);
    }
function _decUint64(_i:T_decInstr, _state:T_decoderState, _value:stdgo.reflect.Reflect.Value):Void {
        var _v:GoUInt64 = _state._decodeUint();
        _value.setUint(_v);
    }
function _float64FromBits(_u:GoUInt64):GoFloat64 {
        var _v:GoUInt64 = stdgo.math.bits.Bits.reverseBytes64(_u);
        return stdgo.math.Math.float64frombits(_v);
    }
function _float32FromBits(_u:GoUInt64, _ovfl:Error):GoFloat64 {
        var _v:GoFloat64 = _float64FromBits(_u);
        var _av:GoFloat64 = _v;
        if (_av < ((0 : GoFloat64))) {
            _av = -_av;
        };
        if ((((3.4028234663852886e+38 : GoFloat64)) < _av) && (_av <= ((1.7976931348623157e+308 : GoFloat64)))) {
            _error_(_ovfl);
        };
        return _v;
    }
function _decFloat32(_i:T_decInstr, _state:T_decoderState, _value:stdgo.reflect.Reflect.Value):Void {
        _value.setFloat(_float32FromBits(_state._decodeUint(), _i._ovfl));
    }
function _decFloat64(_i:T_decInstr, _state:T_decoderState, _value:stdgo.reflect.Reflect.Value):Void {
        _value.setFloat(_float64FromBits(_state._decodeUint()));
    }
function _decComplex64(_i:T_decInstr, _state:T_decoderState, _value:stdgo.reflect.Reflect.Value):Void {
        var _real:GoFloat64 = _float32FromBits(_state._decodeUint(), _i._ovfl);
        var _imag:GoFloat64 = _float32FromBits(_state._decodeUint(), _i._ovfl);
        _value.setComplex(new GoComplex128(_real, _imag));
    }
function _decComplex128(_i:T_decInstr, _state:T_decoderState, _value:stdgo.reflect.Reflect.Value):Void {
        var _real:GoFloat64 = _float64FromBits(_state._decodeUint());
        var _imag:GoFloat64 = _float64FromBits(_state._decodeUint());
        _value.setComplex(new GoComplex128(_real, _imag));
    }
function _decUint8Slice(_i:T_decInstr, _state:T_decoderState, _value:stdgo.reflect.Reflect.Value):Void {
        var __tmp__ = _state._getLength(), _n:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _errorf(((("bad %s slice length: %d" : GoString))), Go.toInterface(_value.type()), Go.toInterface(_n));
        };
        if (_value.cap_() < _n) {
            _value.set((stdgo.reflect.Reflect.makeSlice(_value.type(), _n, _n) == null ? null : stdgo.reflect.Reflect.makeSlice(_value.type(), _n, _n).__copy__()));
        } else {
            _value.setLen(_n);
        };
        {
            var __tmp__ = _state._b.read(_value.bytes()), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _errorf(((("error decoding []byte: %s" : GoString))), Go.toInterface(_err));
            };
        };
    }
function _decString(_i:T_decInstr, _state:T_decoderState, _value:stdgo.reflect.Reflect.Value):Void {
        var __tmp__ = _state._getLength(), _n:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _errorf(((("bad %s slice length: %d" : GoString))), Go.toInterface(_value.type()), Go.toInterface(_n));
        };
        var _data:Slice<GoUInt8> = _state._b.bytes();
        if ((_data != null ? _data.length : ((0 : GoInt))) < _n) {
            _errorf(((("invalid string length %d: exceeds input size %d" : GoString))), Go.toInterface(_n), Go.toInterface((_data != null ? _data.length : ((0 : GoInt)))));
        };
        var _s:GoString = ((_data.__slice__(0, _n) : GoString));
        _state._b.drop(_n);
        _value.setString(_s);
    }
function _ignoreUint8Array(_i:T_decInstr, _state:T_decoderState, _value:stdgo.reflect.Reflect.Value):Void {
        var __tmp__ = _state._getLength(), _n:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _errorf(((("slice length too large" : GoString))));
        };
        var _bn:GoInt = _state._b.len();
        if (_bn < _n) {
            _errorf(((("invalid slice length %d: exceeds input size %d" : GoString))), Go.toInterface(_n), Go.toInterface(_bn));
        };
        _state._b.drop(_n);
    }
function _decodeIntoValue(_state:T_decoderState, _op:T_decOp, _isPtr:Bool, _value:stdgo.reflect.Reflect.Value, _instr:T_decInstr):stdgo.reflect.Reflect.Value {
        var _v:stdgo.reflect.Reflect.Value = (_value == null ? null : _value.__copy__());
        if (_isPtr) {
            _v = (_decAlloc((_value == null ? null : _value.__copy__())) == null ? null : _decAlloc((_value == null ? null : _value.__copy__())).__copy__());
        };
        _op(_instr, _state, (_v == null ? null : _v.__copy__()));
        return (_value == null ? null : _value.__copy__());
    }
function _allocValue(_t:stdgo.reflect.Reflect.Type):stdgo.reflect.Reflect.Value {
        return (stdgo.reflect.Reflect.new_(_t).elem() == null ? null : stdgo.reflect.Reflect.new_(_t).elem().__copy__());
    }
function newDecoder(_r:stdgo.io.Io.Reader):Decoder {
        var _dec:Decoder = new Decoder();
        {
            var __tmp__ = try {
                { value : ((((_r.__underlying__().value : Dynamic)) : stdgo.io.Io.ByteReader)), ok : true };
            } catch(_) {
                { value : ((null : stdgo.io.Io.ByteReader)), ok : false };
            }, _0 = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok) {
                _r = stdgo.bufio.Bufio.newReader(_r);
            };
        };
        _dec._r = _r;
        _dec._wireType = new Map<Int, T_wireType>();
        _dec._decoderCache = new GoObjectMap<stdgo.reflect.Reflect.Type, GoMap<T_typeId, T_decEngine>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("stdgo.reflect.Reflect.Type", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])), stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("T_typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)), stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("T_decEngine", [], stdgo.reflect.Reflect.GoType.named("T_decEngine", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_instr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("T_decInstr", [], stdgo.reflect.Reflect.GoType.named("T_decInstr", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_op", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("T_decOp", [], stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "_field", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "_index", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_ovfl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("stdgo.Error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }])))) }, { name : "_numInstr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }])))))))));
        _dec._ignorerCache = new Map<Int, T_decEngine>();
        _dec._countBuf = new Slice<GoUInt8>(...[for (i in 0 ... ((((9 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        return _dec;
    }
function _encBoolArray(_state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encBoolSlice(_state, (_v.slice(((0 : GoInt)), _v.len()) == null ? null : _v.slice(((0 : GoInt)), _v.len()).__copy__()));
    }
function _encBoolSlice(_state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<Bool>)), ok : true };
        } catch(_) {
            { value : ((null : Slice<Bool>)), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (_0 => _x in _slice) {
            if ((_x != false) || _state._sendZero) {
                if (_x) {
                    _state._encodeUint(((1 : GoUInt64)));
                } else {
                    _state._encodeUint(((0 : GoUInt64)));
                };
            };
        };
        return true;
    }
function _encComplex64Array(_state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encComplex64Slice(_state, (_v.slice(((0 : GoInt)), _v.len()) == null ? null : _v.slice(((0 : GoInt)), _v.len()).__copy__()));
    }
function _encComplex64Slice(_state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoComplex64>)), ok : true };
        } catch(_) {
            { value : ((null : Slice<GoComplex64>)), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (_0 => _x in _slice) {
            if ((_x != (((0 : GoFloat64)) + new GoComplex128(0, 0))) || _state._sendZero) {
                var _rpart:GoUInt64 = _floatBits(((_x.real : GoFloat64)));
                var _ipart:GoUInt64 = _floatBits(((_x.imag : GoFloat64)));
                _state._encodeUint(_rpart);
                _state._encodeUint(_ipart);
            };
        };
        return true;
    }
function _encComplex128Array(_state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encComplex128Slice(_state, (_v.slice(((0 : GoInt)), _v.len()) == null ? null : _v.slice(((0 : GoInt)), _v.len()).__copy__()));
    }
function _encComplex128Slice(_state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoComplex128>)), ok : true };
        } catch(_) {
            { value : ((null : Slice<GoComplex128>)), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (_0 => _x in _slice) {
            if ((_x != (((0 : GoFloat64)) + new GoComplex128(0, 0))) || _state._sendZero) {
                var _rpart:GoUInt64 = _floatBits(_x.real);
                var _ipart:GoUInt64 = _floatBits(_x.imag);
                _state._encodeUint(_rpart);
                _state._encodeUint(_ipart);
            };
        };
        return true;
    }
function _encFloat32Array(_state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encFloat32Slice(_state, (_v.slice(((0 : GoInt)), _v.len()) == null ? null : _v.slice(((0 : GoInt)), _v.len()).__copy__()));
    }
function _encFloat32Slice(_state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoFloat32>)), ok : true };
        } catch(_) {
            { value : ((null : Slice<GoFloat32>)), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (_0 => _x in _slice) {
            if ((_x != ((0 : GoFloat32))) || _state._sendZero) {
                var _bits:GoUInt64 = _floatBits(((_x : GoFloat64)));
                _state._encodeUint(_bits);
            };
        };
        return true;
    }
function _encFloat64Array(_state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encFloat64Slice(_state, (_v.slice(((0 : GoInt)), _v.len()) == null ? null : _v.slice(((0 : GoInt)), _v.len()).__copy__()));
    }
function _encFloat64Slice(_state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoFloat64>)), ok : true };
        } catch(_) {
            { value : ((null : Slice<GoFloat64>)), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (_0 => _x in _slice) {
            if ((_x != ((0 : GoFloat64))) || _state._sendZero) {
                var _bits:GoUInt64 = _floatBits(_x);
                _state._encodeUint(_bits);
            };
        };
        return true;
    }
function _encIntArray(_state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encIntSlice(_state, (_v.slice(((0 : GoInt)), _v.len()) == null ? null : _v.slice(((0 : GoInt)), _v.len()).__copy__()));
    }
function _encIntSlice(_state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoInt>)), ok : true };
        } catch(_) {
            { value : ((null : Slice<GoInt>)), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (_0 => _x in _slice) {
            if ((_x != ((0 : GoInt))) || _state._sendZero) {
                _state._encodeInt(((_x : GoInt64)));
            };
        };
        return true;
    }
function _encInt16Array(_state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encInt16Slice(_state, (_v.slice(((0 : GoInt)), _v.len()) == null ? null : _v.slice(((0 : GoInt)), _v.len()).__copy__()));
    }
function _encInt16Slice(_state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoInt16>)), ok : true };
        } catch(_) {
            { value : ((null : Slice<GoInt16>)), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (_0 => _x in _slice) {
            if ((_x != ((0 : GoInt16))) || _state._sendZero) {
                _state._encodeInt(((_x : GoInt64)));
            };
        };
        return true;
    }
function _encInt32Array(_state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encInt32Slice(_state, (_v.slice(((0 : GoInt)), _v.len()) == null ? null : _v.slice(((0 : GoInt)), _v.len()).__copy__()));
    }
function _encInt32Slice(_state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoInt32>)), ok : true };
        } catch(_) {
            { value : ((null : Slice<GoInt32>)), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (_0 => _x in _slice) {
            if ((_x != ((0 : GoInt32))) || _state._sendZero) {
                _state._encodeInt(((_x : GoInt64)));
            };
        };
        return true;
    }
function _encInt64Array(_state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encInt64Slice(_state, (_v.slice(((0 : GoInt)), _v.len()) == null ? null : _v.slice(((0 : GoInt)), _v.len()).__copy__()));
    }
function _encInt64Slice(_state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoInt64>)), ok : true };
        } catch(_) {
            { value : ((null : Slice<GoInt64>)), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (_0 => _x in _slice) {
            if ((_x != ((0 : GoInt64))) || _state._sendZero) {
                _state._encodeInt(_x);
            };
        };
        return true;
    }
function _encInt8Array(_state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encInt8Slice(_state, (_v.slice(((0 : GoInt)), _v.len()) == null ? null : _v.slice(((0 : GoInt)), _v.len()).__copy__()));
    }
function _encInt8Slice(_state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoInt8>)), ok : true };
        } catch(_) {
            { value : ((null : Slice<GoInt8>)), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (_0 => _x in _slice) {
            if ((_x != ((0 : GoInt8))) || _state._sendZero) {
                _state._encodeInt(((_x : GoInt64)));
            };
        };
        return true;
    }
function _encStringArray(_state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encStringSlice(_state, (_v.slice(((0 : GoInt)), _v.len()) == null ? null : _v.slice(((0 : GoInt)), _v.len()).__copy__()));
    }
function _encStringSlice(_state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoString>)), ok : true };
        } catch(_) {
            { value : ((null : Slice<GoString>)), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (_0 => _x in _slice) {
            if ((_x != ("")) || _state._sendZero) {
                _state._encodeUint((((_x != null ? _x.length : ((0 : GoInt))) : GoUInt64)));
                _state._b.writeString(_x);
            };
        };
        return true;
    }
function _encUintArray(_state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encUintSlice(_state, (_v.slice(((0 : GoInt)), _v.len()) == null ? null : _v.slice(((0 : GoInt)), _v.len()).__copy__()));
    }
function _encUintSlice(_state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoUInt>)), ok : true };
        } catch(_) {
            { value : ((null : Slice<GoUInt>)), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (_0 => _x in _slice) {
            if ((_x != ((0 : GoUInt))) || _state._sendZero) {
                _state._encodeUint(((_x : GoUInt64)));
            };
        };
        return true;
    }
function _encUint16Array(_state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encUint16Slice(_state, (_v.slice(((0 : GoInt)), _v.len()) == null ? null : _v.slice(((0 : GoInt)), _v.len()).__copy__()));
    }
function _encUint16Slice(_state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoUInt16>)), ok : true };
        } catch(_) {
            { value : ((null : Slice<GoUInt16>)), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (_0 => _x in _slice) {
            if ((_x != ((0 : GoUInt16))) || _state._sendZero) {
                _state._encodeUint(((_x : GoUInt64)));
            };
        };
        return true;
    }
function _encUint32Array(_state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encUint32Slice(_state, (_v.slice(((0 : GoInt)), _v.len()) == null ? null : _v.slice(((0 : GoInt)), _v.len()).__copy__()));
    }
function _encUint32Slice(_state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoUInt32>)), ok : true };
        } catch(_) {
            { value : ((null : Slice<GoUInt32>)), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (_0 => _x in _slice) {
            if ((_x != ((0 : GoUInt32))) || _state._sendZero) {
                _state._encodeUint(((_x : GoUInt64)));
            };
        };
        return true;
    }
function _encUint64Array(_state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encUint64Slice(_state, (_v.slice(((0 : GoInt)), _v.len()) == null ? null : _v.slice(((0 : GoInt)), _v.len()).__copy__()));
    }
function _encUint64Slice(_state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoUInt64>)), ok : true };
        } catch(_) {
            { value : ((null : Slice<GoUInt64>)), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (_0 => _x in _slice) {
            if ((_x != ((0 : GoUInt64))) || _state._sendZero) {
                _state._encodeUint(_x);
            };
        };
        return true;
    }
function _encUintptrArray(_state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Bool {
        if (!_v.canAddr()) {
            return false;
        };
        return _encUintptrSlice(_state, (_v.slice(((0 : GoInt)), _v.len()) == null ? null : _v.slice(((0 : GoInt)), _v.len()).__copy__()));
    }
function _encUintptrSlice(_state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Bool {
        var __tmp__ = try {
            { value : ((_v.interface_().value : Slice<GoUIntptr>)), ok : true };
        } catch(_) {
            { value : ((null : Slice<GoUIntptr>)), ok : false };
        }, _slice = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return false;
        };
        for (_0 => _x in _slice) {
            if ((_x != ((0 : GoUIntptr))) || _state._sendZero) {
                _state._encodeUint(((_x : GoUInt64)));
            };
        };
        return true;
    }
function _encIndirect(_pv:stdgo.reflect.Reflect.Value, _indir:GoInt):stdgo.reflect.Reflect.Value {
        Go.cfor(_indir > ((0 : GoInt)), _indir--, {
            if (_pv.isNil()) {
                break;
            };
            _pv = (_pv.elem() == null ? null : _pv.elem().__copy__());
        });
        return (_pv == null ? null : _pv.__copy__());
    }
function _encBool(_i:T_encInstr, _state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Void {
        var _b:Bool = _v.bool();
        if (_b || _state._sendZero) {
            _state._update(_i);
            if (_b) {
                _state._encodeUint(((1 : GoUInt64)));
            } else {
                _state._encodeUint(((0 : GoUInt64)));
            };
        };
    }
function _encInt(_i:T_encInstr, _state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Void {
        var _value:GoInt64 = _v.int();
        if ((_value != ((0 : GoInt64))) || _state._sendZero) {
            _state._update(_i);
            _state._encodeInt(_value);
        };
    }
function _encUint(_i:T_encInstr, _state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Void {
        var _value:GoUInt64 = _v.uint();
        if ((_value != ((0 : GoUInt64))) || _state._sendZero) {
            _state._update(_i);
            _state._encodeUint(_value);
        };
    }
function _floatBits(_f:GoFloat64):GoUInt64 {
        var _u:GoUInt64 = stdgo.math.Math.float64bits(_f);
        return stdgo.math.bits.Bits.reverseBytes64(_u);
    }
function _encFloat(_i:T_encInstr, _state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Void {
        var _f:GoFloat64 = _v.float();
        if ((_f != ((0 : GoFloat64))) || _state._sendZero) {
            var _bits:GoUInt64 = _floatBits(_f);
            _state._update(_i);
            _state._encodeUint(_bits);
        };
    }
function _encComplex(_i:T_encInstr, _state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Void {
        var _c:GoComplex128 = _v.complex();
        if ((_c != (((0 : GoFloat64)) + new GoComplex128(0, 0))) || _state._sendZero) {
            var _rpart:GoUInt64 = _floatBits(_c.real);
            var _ipart:GoUInt64 = _floatBits(_c.imag);
            _state._update(_i);
            _state._encodeUint(_rpart);
            _state._encodeUint(_ipart);
        };
    }
function _encUint8Array(_i:T_encInstr, _state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Void {
        var _b:Slice<GoUInt8> = _v.bytes();
        if (((_b != null ? _b.length : ((0 : GoInt))) > ((0 : GoInt))) || _state._sendZero) {
            _state._update(_i);
            _state._encodeUint((((_b != null ? _b.length : ((0 : GoInt))) : GoUInt64)));
            _state._b.write(_b);
        };
    }
function _encString(_i:T_encInstr, _state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Void {
        var _s:GoString = ((_v.toString() : GoString));
        if (((_s != null ? _s.length : ((0 : GoInt))) > ((0 : GoInt))) || _state._sendZero) {
            _state._update(_i);
            _state._encodeUint((((_s != null ? _s.length : ((0 : GoInt))) : GoUInt64)));
            _state._b.writeString(_s);
        };
    }
function _encStructTerminator(_i:T_encInstr, _state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Void {
        _state._encodeUint(((0 : GoUInt64)));
    }
function _valid(_v:stdgo.reflect.Reflect.Value):Bool {
        if (_v.kind() == ((0 : GoUInt))) {
            return false;
        } else if (_v.kind() == ((22 : GoUInt))) {
            return !_v.isNil();
        };
        return true;
    }
function _encodeReflectValue(_state:T_encoderState, _v:stdgo.reflect.Reflect.Value, _op:T_encOp, _indir:GoInt):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor((_i < _indir) && _v.isValid(), _i++, {
                _v = (stdgo.reflect.Reflect.indirect((_v == null ? null : _v.__copy__())) == null ? null : stdgo.reflect.Reflect.indirect((_v == null ? null : _v.__copy__())).__copy__());
            });
        };
        if (!_v.isValid()) {
            _errorf(((("encodeReflectValue: nil element" : GoString))));
        };
        _op(null, _state, (_v == null ? null : _v.__copy__()));
    }
function _isZero(_val:stdgo.reflect.Reflect.Value):Bool {
        if (_val.kind() == ((17 : GoUInt))) {
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _val.len(), _i++, {
                    if (!_isZero((_val.index(_i) == null ? null : _val.index(_i).__copy__()))) {
                        return false;
                    };
                });
            };
            return true;
        } else if (_val.kind() == ((21 : GoUInt)) || _val.kind() == ((23 : GoUInt)) || _val.kind() == ((24 : GoUInt))) {
            return _val.len() == ((0 : GoInt));
        } else if (_val.kind() == ((1 : GoUInt))) {
            return !_val.bool();
        } else if (_val.kind() == ((15 : GoUInt)) || _val.kind() == ((16 : GoUInt))) {
            return _val.complex() == ((0 : GoComplex128));
        } else if (_val.kind() == ((18 : GoUInt)) || _val.kind() == ((19 : GoUInt)) || _val.kind() == ((20 : GoUInt)) || _val.kind() == ((22 : GoUInt))) {
            return _val.isNil();
        } else if (_val.kind() == ((2 : GoUInt)) || _val.kind() == ((3 : GoUInt)) || _val.kind() == ((4 : GoUInt)) || _val.kind() == ((5 : GoUInt)) || _val.kind() == ((6 : GoUInt))) {
            return _val.int() == ((0 : GoInt64));
        } else if (_val.kind() == ((13 : GoUInt)) || _val.kind() == ((14 : GoUInt))) {
            return _val.float() == ((0 : GoFloat64));
        } else if (_val.kind() == ((7 : GoUInt)) || _val.kind() == ((8 : GoUInt)) || _val.kind() == ((9 : GoUInt)) || _val.kind() == ((10 : GoUInt)) || _val.kind() == ((11 : GoUInt)) || _val.kind() == ((12 : GoUInt))) {
            return _val.uint() == ((0 : GoUInt64));
        } else if (_val.kind() == ((25 : GoUInt))) {
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _val.numField(), _i++, {
                    if (!_isZero((_val.field(_i) == null ? null : _val.field(_i).__copy__()))) {
                        return false;
                    };
                });
            };
            return true;
        };
        throw Go.toInterface(((("unknown type in isZero " : GoString))) + ((_val.type().toString() : GoString)));
    }
function _encOpFor(_rt:stdgo.reflect.Reflect.Type, _inProgress:GoMap<stdgo.reflect.Reflect.Type, T_encOp>, _building:GoMap<T_typeInfo, Bool>):{ var _0 : T_encOp; var _1 : GoInt; } {
        var _ut:T_userTypeInfo = _userType(_rt);
        if (_ut._externalEnc != ((0 : GoInt))) {
            return _gobEncodeOpFor(_ut);
        };
        {
            var _opPtr:T_encOp = (_inProgress != null ? _inProgress[_rt] : ((null : T_encOp)));
            if (_opPtr != null) {
                return { _0 : _opPtr, _1 : _ut._indir };
            };
        };
        var _typ:stdgo.reflect.Reflect.Type = _ut._base;
        var _indir:GoInt = _ut._indir;
        var _k:stdgo.reflect.Reflect.Kind = _typ.kind();
        var _op:T_encOp = ((null : T_encOp));
        if (((_k : GoInt)) < (_encOpTable != null ? _encOpTable.length : ((0 : GoInt)))) {
            _op = (_encOpTable != null ? _encOpTable[_k] : ((null : T_encOp)));
        };
        if (_op == null) {
            if (_inProgress != null) _inProgress[_rt] = _op;
            {
                var _t:stdgo.reflect.Reflect.Type = _typ;
                {
                    var __switchIndex__ = -1;
                    while (true) {
                        if (_t.kind() == ((23 : GoUInt))) {
                            if (_t.elem().kind() == ((8 : GoUInt))) {
                                _op = _encUint8Array;
                                break;
                            };
                            var __tmp__ = _encOpFor(_t.elem(), _inProgress, _building), _elemOp:T_encOp = __tmp__._0, _elemIndir:GoInt = __tmp__._1;
                            var _helper:T_encHelper = (_encSliceHelper != null ? _encSliceHelper[_t.elem().kind()] : ((null : T_encHelper)));
                            _op = function(_i:T_encInstr, _state:T_encoderState, _slice:stdgo.reflect.Reflect.Value):Void {
                                if (!_state._sendZero && (_slice.len() == ((0 : GoInt)))) {
                                    return;
                                };
                                _state._update(_i);
                                _state._enc._encodeArray(_state._b, (_slice == null ? null : _slice.__copy__()), _elemOp, _elemIndir, _slice.len(), _helper);
                            };
                            break;
                        } else if (_t.kind() == ((17 : GoUInt))) {
                            var __tmp__ = _encOpFor(_t.elem(), _inProgress, _building), _elemOp:T_encOp = __tmp__._0, _elemIndir:GoInt = __tmp__._1;
                            var _helper:T_encHelper = (_encArrayHelper != null ? _encArrayHelper[_t.elem().kind()] : ((null : T_encHelper)));
                            _op = function(_i:T_encInstr, _state:T_encoderState, _array:stdgo.reflect.Reflect.Value):Void {
                                _state._update(_i);
                                _state._enc._encodeArray(_state._b, (_array == null ? null : _array.__copy__()), _elemOp, _elemIndir, _array.len(), _helper);
                            };
                            break;
                        } else if (_t.kind() == ((21 : GoUInt))) {
                            var __tmp__ = _encOpFor(_t.key(), _inProgress, _building), _keyOp:T_encOp = __tmp__._0, _keyIndir:GoInt = __tmp__._1;
                            var __tmp__ = _encOpFor(_t.elem(), _inProgress, _building), _elemOp:T_encOp = __tmp__._0, _elemIndir:GoInt = __tmp__._1;
                            _op = function(_i:T_encInstr, _state:T_encoderState, _mv:stdgo.reflect.Reflect.Value):Void {
                                if (!_state._sendZero && _mv.isNil()) {
                                    return;
                                };
                                _state._update(_i);
                                _state._enc._encodeMap(_state._b, (_mv == null ? null : _mv.__copy__()), _keyOp, _elemOp, _keyIndir, _elemIndir);
                            };
                            break;
                        } else if (_t.kind() == ((25 : GoUInt))) {
                            _getEncEngine(_userType(_typ), _building);
                            var _info:T_typeInfo = _mustGetTypeInfo(_typ);
                            _op = function(_i:T_encInstr, _state:T_encoderState, _sv:stdgo.reflect.Reflect.Value):Void {
                                _state._update(_i);
                                var _enc:T_encEngine = ((_info._encoder.load().value : T_encEngine));
                                _state._enc._encodeStruct(_state._b, _enc, (_sv == null ? null : _sv.__copy__()));
                            };
                            break;
                        } else if (_t.kind() == ((20 : GoUInt))) {
                            _op = function(_i:T_encInstr, _state:T_encoderState, _iv:stdgo.reflect.Reflect.Value):Void {
                                if (!_state._sendZero && (!_iv.isValid() || _iv.isNil())) {
                                    return;
                                };
                                _state._update(_i);
                                _state._enc._encodeInterface(_state._b, (_iv == null ? null : _iv.__copy__()));
                            };
                            break;
                        };
                        break;
                    };
                };
            };
        };
        if (_op == null) {
            _errorf(((("can\'t happen: encode type %s" : GoString))), Go.toInterface(_rt));
        };
        return { _0 : _op, _1 : _indir };
    }
function _gobEncodeOpFor(_ut:T_userTypeInfo):{ var _0 : T_encOp; var _1 : GoInt; } {
        var _rt:stdgo.reflect.Reflect.Type = _ut._user;
        if (_ut._encIndir == ((-1 : GoInt8))) {
            _rt = stdgo.reflect.Reflect.pointerTo(_rt);
        } else if (_ut._encIndir > ((0 : GoInt8))) {
            {
                var _i:GoInt8 = ((((0 : GoInt8)) : GoInt8));
                Go.cfor(_i < _ut._encIndir, _i++, {
                    _rt = _rt.elem();
                });
            };
        };
        var _op:T_encOp = ((null : T_encOp));
        _op = function(_i:T_encInstr, _state:T_encoderState, _v:stdgo.reflect.Reflect.Value):Void {
            if (_ut._encIndir == ((-1 : GoInt8))) {
                if (!_v.canAddr()) {
                    _errorf(((("unaddressable value of type %s" : GoString))), Go.toInterface(_rt));
                };
                _v = (_v.addr() == null ? null : _v.addr().__copy__());
            };
            if (!_state._sendZero && _isZero((_v == null ? null : _v.__copy__()))) {
                return;
            };
            _state._update(_i);
            _state._enc._encodeGobEncoder(_state._b, _ut, (_v == null ? null : _v.__copy__()));
        };
        return { _0 : _op, _1 : ((_ut._encIndir : GoInt)) };
    }
function _compileEnc(_ut:T_userTypeInfo, _building:GoMap<T_typeInfo, Bool>):T_encEngine {
        var _srt:stdgo.reflect.Reflect.Type = _ut._base;
        var _engine:T_encEngine = new T_encEngine();
        var _seen:GoMap<stdgo.reflect.Reflect.Type, T_encOp> = new GoObjectMap<stdgo.reflect.Reflect.Type, T_encOp>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("stdgo.reflect.Reflect.Type", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])), stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("T_encOp", [], stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType))))));
        var _rt:stdgo.reflect.Reflect.Type = _ut._base;
        if (_ut._externalEnc != ((0 : GoInt))) {
            _rt = _ut._user;
        };
        if ((_ut._externalEnc == ((0 : GoInt))) && (_srt.kind() == ((25 : GoUInt)))) {
            {
                var _fieldNum:GoInt = ((0 : GoInt)), _wireFieldNum:GoInt = ((0 : GoInt));
                Go.cfor(_fieldNum < _srt.numField(), _fieldNum++, {
                    var _f:stdgo.reflect.Reflect.StructField = (_srt.field(_fieldNum) == null ? null : _srt.field(_fieldNum).__copy__());
                    if (!_isSent(_f)) {
                        continue;
                    };
                    var __tmp__ = _encOpFor(_f.type, _seen, _building), _op:T_encOp = __tmp__._0, _indir:GoInt = __tmp__._1;
                    _engine._instr = (_engine._instr != null ? _engine._instr.__append__(((new T_encInstr(_op, _wireFieldNum, _f.index, _indir) : T_encInstr))) : new Slice<T_encInstr>(((new T_encInstr(_op, _wireFieldNum, _f.index, _indir) : T_encInstr))));
                    _wireFieldNum++;
                });
            };
            if ((_srt.numField() > ((0 : GoInt))) && ((_engine._instr != null ? _engine._instr.length : ((0 : GoInt))) == ((0 : GoInt)))) {
                _errorf(((("type %s has no exported fields" : GoString))), Go.toInterface(_rt));
            };
            _engine._instr = (_engine._instr != null ? _engine._instr.__append__(((new T_encInstr(_encStructTerminator, ((0 : GoInt)), ((null : Slice<GoInt>)), ((0 : GoInt))) : T_encInstr))) : new Slice<T_encInstr>(((new T_encInstr(_encStructTerminator, ((0 : GoInt)), ((null : Slice<GoInt>)), ((0 : GoInt))) : T_encInstr))));
        } else {
            _engine._instr = new Slice<T_encInstr>(...[for (i in 0 ... ((((1 : GoInt)) : GoInt)).toBasic()) new T_encInstr()]);
            var __tmp__ = _encOpFor(_rt, _seen, _building), _op:T_encOp = __tmp__._0, _indir:GoInt = __tmp__._1;
            if (_engine._instr != null) _engine._instr[((0 : GoInt))] = ((new T_encInstr(_op, ((0 : GoInt)), ((null : Slice<GoInt>)), _indir) : T_encInstr));
        };
        return _engine;
    }
function _getEncEngine(_ut:T_userTypeInfo, _building:GoMap<T_typeInfo, Bool>):T_encEngine {
        var __tmp__ = _getTypeInfo(_ut), _info:T_typeInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _error_(_err);
        };
        var __tmp__ = try {
            { value : ((_info._encoder.load().value : T_encEngine)), ok : true };
        } catch(_) {
            { value : ((null : T_encEngine)), ok : false };
        }, _enc = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            _enc = _buildEncEngine(_info, _ut, _building);
        };
        return _enc;
    }
function _buildEncEngine(_info:T_typeInfo, _ut:T_userTypeInfo, _building:GoMap<T_typeInfo, Bool>):T_encEngine {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        if ((_building != null) && (_building != null ? _building[_info] : false)) {
            return null;
        };
        try {
            _info._encInit.lock();
            __deferstack__.unshift(() -> _info._encInit.unlock());
            var __tmp__ = try {
                { value : ((_info._encoder.load().value : T_encEngine)), ok : true };
            } catch(_) {
                { value : ((null : T_encEngine)), ok : false };
            }, _enc = __tmp__.value, _ok = __tmp__.ok;
            if (!_ok) {
                if (_building == null) {
                    _building = new GoObjectMap<T_typeInfo, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("T_typeInfo", [], stdgo.reflect.Reflect.GoType.named("T_typeInfo", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("T_typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }, { name : "_encInit", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("stdgo.sync.Sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) }, { name : "_encoder", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("stdgo.sync.atomic.Atomic.Value", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_v", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.interfaceType(true, []) }])) }, { name : "_wire", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("T_wireType", [], stdgo.reflect.Reflect.GoType.named("T_wireType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "arrayT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("T_arrayType", [], stdgo.reflect.Reflect.GoType.named("T_arrayType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("CommonType", [], stdgo.reflect.Reflect.GoType.named("CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("T_typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "elem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("T_typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }, { name : "len", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }])))) }, { name : "sliceT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("T_sliceType", [], stdgo.reflect.Reflect.GoType.named("T_sliceType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("CommonType", [], stdgo.reflect.Reflect.GoType.named("CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("T_typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "elem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("T_typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }])))) }, { name : "structT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("T_structType", [], stdgo.reflect.Reflect.GoType.named("T_structType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("CommonType", [], stdgo.reflect.Reflect.GoType.named("CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("T_typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "field", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("T_fieldType", [], stdgo.reflect.Reflect.GoType.named("CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("T_typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))))) }])))) }, { name : "mapT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("T_mapType", [], stdgo.reflect.Reflect.GoType.named("T_mapType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("CommonType", [], stdgo.reflect.Reflect.GoType.named("CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("T_typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "key", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("T_typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }, { name : "elem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("T_typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }])))) }, { name : "gobEncoderT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("T_gobEncoderType", [], stdgo.reflect.Reflect.GoType.named("T_gobEncoderType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("CommonType", [], stdgo.reflect.Reflect.GoType.named("CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("T_typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }])))) }, { name : "binaryMarshalerT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("T_gobEncoderType", [], stdgo.reflect.Reflect.GoType.named("T_gobEncoderType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("CommonType", [], stdgo.reflect.Reflect.GoType.named("CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("T_typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }])))) }, { name : "textMarshalerT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("T_gobEncoderType", [], stdgo.reflect.Reflect.GoType.named("T_gobEncoderType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("CommonType", [], stdgo.reflect.Reflect.GoType.named("CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("T_typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }])))) }])))) }])))), stdgo.reflect.Reflect.GoType.basic(bool_kind))));
                };
                if (_building != null) _building[_info] = true;
                _enc = _compileEnc(_ut, _building);
                _info._encoder.store(Go.toInterface(_enc));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _enc;
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return ((null : T_encEngine));
            };
        };
    }
function newEncoder(_w:stdgo.io.Io.Writer):Encoder {
        var _enc:Encoder = new Encoder();
        _enc._w = ((new Slice<stdgo.io.Io.Writer>(_w) : Slice<stdgo.io.Io.Writer>));
        _enc._sent = new GoObjectMap<stdgo.reflect.Reflect.Type, T_typeId>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("stdgo.reflect.Reflect.Type", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])), stdgo.reflect.Reflect.GoType.named("T_typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)))));
        _enc._countState = _enc._newEncoderState(new T_encBuffer());
        return _enc;
    }
function testBasicEncoderDecoder(_t:stdgo.testing.Testing.T_):Void {
        var _values:Slice<AnyInterface> = ((new Slice<AnyInterface>(
Go.toInterface(true),
Go.toInterface(((((123 : GoInt)) : GoInt))),
Go.toInterface(((((123 : GoInt8)) : GoInt8))),
Go.toInterface(((((-12345 : GoInt16)) : GoInt16))),
Go.toInterface(((((123456 : GoInt32)) : GoInt32))),
Go.toInterface(((((-1234567 : GoInt64)) : GoInt64))),
Go.toInterface(((((123 : GoUInt)) : GoUInt))),
Go.toInterface(((((123 : GoUInt8)) : GoUInt8))),
Go.toInterface(((((12345 : GoUInt16)) : GoUInt16))),
Go.toInterface(((((123456 : GoUInt32)) : GoUInt32))),
Go.toInterface(((((1234567 : GoUInt64)) : GoUInt64))),
Go.toInterface(((((12345678 : GoUIntptr)) : GoUIntptr))),
Go.toInterface(((((1.2345 : GoFloat32)) : GoFloat32))),
Go.toInterface(((((1.2345678 : GoFloat64)) : GoFloat64))),
Go.toInterface((((((1.2345 : GoFloat64)) + new GoComplex128(0, 2.3456)) : GoComplex64))),
Go.toInterface((((((1.2345678 : GoFloat64)) + new GoComplex128(0, 2.3456789)) : GoComplex128))),
Go.toInterface(((((("hello" : GoString))) : Slice<GoByte>))),
Go.toInterface(((((("hello" : GoString))) : GoString)))) : Slice<AnyInterface>));
        for (_0 => _value in _values) {
            var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
            var _enc:Encoder = newEncoder(_b);
            var _err:stdgo.Error = _enc.encode(Go.toInterface(_value));
            if (_err != null) {
                _t.error(Go.toInterface(((("encoder fail:" : GoString)))), Go.toInterface(_err));
            };
            var _dec:Decoder = newDecoder(_b);
            var _result:stdgo.reflect.Reflect.Value = (stdgo.reflect.Reflect.new_(stdgo.reflect.Reflect.typeOf(Go.toInterface(_value))) == null ? null : stdgo.reflect.Reflect.new_(stdgo.reflect.Reflect.typeOf(Go.toInterface(_value))).__copy__());
            _err = _dec.decode(Go.toInterface(_result.interface_()));
            if (_err != null) {
                _t.fatalf(((("error decoding %T: %v:" : GoString))), Go.toInterface(stdgo.reflect.Reflect.typeOf(Go.toInterface(_value))), Go.toInterface(_err));
            };
            if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_value), Go.toInterface(_result.elem().interface_()))) {
                _t.fatalf(((("%T: expected %v got %v" : GoString))), Go.toInterface(_value), Go.toInterface(_value), Go.toInterface(_result.elem().interface_()));
            };
        };
    }
function testEncodeIntSlice(_t:stdgo.testing.Testing.T_):Void {
        var _s8:Slice<GoInt8> = ((new Slice<GoInt8>(((1 : GoInt8)), ((5 : GoInt8)), ((12 : GoInt8)), ((22 : GoInt8)), ((35 : GoInt8)), ((51 : GoInt8)), ((70 : GoInt8)), ((92 : GoInt8)), ((117 : GoInt8))) : Slice<GoInt8>));
        var _s16:Slice<GoInt16> = ((new Slice<GoInt16>(((145 : GoInt16)), ((176 : GoInt16)), ((210 : GoInt16)), ((247 : GoInt16)), ((287 : GoInt16)), ((330 : GoInt16)), ((376 : GoInt16)), ((425 : GoInt16)), ((477 : GoInt16))) : Slice<GoInt16>));
        var _s32:Slice<GoInt32> = ((new Slice<GoInt32>(((532 : GoInt32)), ((590 : GoInt32)), ((651 : GoInt32)), ((715 : GoInt32)), ((782 : GoInt32)), ((852 : GoInt32)), ((925 : GoInt32)), ((1001 : GoInt32)), ((1080 : GoInt32))) : Slice<GoInt32>));
        var _s64:Slice<GoInt64> = ((new Slice<GoInt64>(((1162 : GoInt64)), ((1247 : GoInt64)), ((1335 : GoInt64)), ((1426 : GoInt64)), ((1520 : GoInt64)), ((1617 : GoInt64)), ((1717 : GoInt64)), ((1820 : GoInt64)), ((1926 : GoInt64))) : Slice<GoInt64>));
        _t.run(((("int8" : GoString))), function(_t:stdgo.testing.Testing.T_):Void {
            var _sink:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
            var _enc:Encoder = newEncoder(_sink);
            _enc.encode(Go.toInterface(_s8));
            var _dec:Decoder = newDecoder(_sink);
            var _res:Slice<GoInt8> = new Slice<GoInt8>(...[for (i in 0 ... ((((9 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt8))]);
            _dec.decode(Go.toInterface(_res));
            if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_s8), Go.toInterface(_res))) {
                _t.fatalf(((("EncodeIntSlice: expected %v, got %v" : GoString))), Go.toInterface(_s8), Go.toInterface(_res));
            };
        });
        _t.run(((("int16" : GoString))), function(_t:stdgo.testing.Testing.T_):Void {
            var _sink:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
            var _enc:Encoder = newEncoder(_sink);
            _enc.encode(Go.toInterface(_s16));
            var _dec:Decoder = newDecoder(_sink);
            var _res:Slice<GoInt16> = new Slice<GoInt16>(...[for (i in 0 ... ((((9 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt16))]);
            _dec.decode(Go.toInterface(_res));
            if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_s16), Go.toInterface(_res))) {
                _t.fatalf(((("EncodeIntSlice: expected %v, got %v" : GoString))), Go.toInterface(_s16), Go.toInterface(_res));
            };
        });
        _t.run(((("int32" : GoString))), function(_t:stdgo.testing.Testing.T_):Void {
            var _sink:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
            var _enc:Encoder = newEncoder(_sink);
            _enc.encode(Go.toInterface(_s32));
            var _dec:Decoder = newDecoder(_sink);
            var _res:Slice<GoInt32> = new Slice<GoInt32>(...[for (i in 0 ... ((((9 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt32))]);
            _dec.decode(Go.toInterface(_res));
            if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_s32), Go.toInterface(_res))) {
                _t.fatalf(((("EncodeIntSlice: expected %v, got %v" : GoString))), Go.toInterface(_s32), Go.toInterface(_res));
            };
        });
        _t.run(((("int64" : GoString))), function(_t:stdgo.testing.Testing.T_):Void {
            var _sink:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
            var _enc:Encoder = newEncoder(_sink);
            _enc.encode(Go.toInterface(_s64));
            var _dec:Decoder = newDecoder(_sink);
            var _res:Slice<GoInt64> = new Slice<GoInt64>(...[for (i in 0 ... ((((9 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt64))]);
            _dec.decode(Go.toInterface(_res));
            if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_s64), Go.toInterface(_res))) {
                _t.fatalf(((("EncodeIntSlice: expected %v, got %v" : GoString))), Go.toInterface(_s64), Go.toInterface(_res));
            };
        });
    }
function testEncoderDecoder(_t:stdgo.testing.Testing.T_):Void {
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _enc:Encoder = newEncoder(_b);
        var _et0:ET0 = new ET0();
        _et0.a = ((7 : GoInt));
        _et0.b = ((("gobs of fun" : GoString)));
        var _err:stdgo.Error = _enc.encode(Go.toInterface(_et0));
        if (_err != null) {
            _t.error(Go.toInterface(((("encoder fail:" : GoString)))), Go.toInterface(_err));
        };
        var _dec:Decoder = newDecoder(_b);
        var _newEt0:ET0 = new ET0();
        _err = _dec.decode(Go.toInterface(_newEt0));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("error decoding ET0:" : GoString)))), Go.toInterface(_err));
        };
        if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_et0), Go.toInterface(_newEt0))) {
            _t.fatalf(((("invalid data for et0: expected %+v; got %+v" : GoString))), Go.toInterface(_et0), Go.toInterface(_newEt0));
        };
        if (_b.len() != ((0 : GoInt))) {
            _t.error(Go.toInterface(((("not at eof;" : GoString)))), Go.toInterface(_b.len()), Go.toInterface(((("bytes left" : GoString)))));
        };
        _b = new stdgo.bytes.Bytes.Buffer();
        _enc = newEncoder(_b);
        var _et1:ET1 = new ET1();
        _et1.a = ((7 : GoInt));
        _et1.et2 = new ET2();
        _err = _enc.encode(Go.toInterface(_et1));
        if (_err != null) {
            _t.error(Go.toInterface(((("encoder fail:" : GoString)))), Go.toInterface(_err));
        };
        _dec = newDecoder(_b);
        var _newEt1:ET1 = new ET1();
        _err = _dec.decode(Go.toInterface(_newEt1));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("error decoding ET1:" : GoString)))), Go.toInterface(_err));
        };
        if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_et1), Go.toInterface(_newEt1))) {
            _t.fatalf(((("invalid data for et1: expected %+v; got %+v" : GoString))), Go.toInterface(_et1), Go.toInterface(_newEt1));
        };
        if (_b.len() != ((0 : GoInt))) {
            _t.error(Go.toInterface(((("not at eof;" : GoString)))), Go.toInterface(_b.len()), Go.toInterface(((("bytes left" : GoString)))));
        };
        _enc.encode(Go.toInterface(_et1));
        _newEt1 = new ET1();
        _err = _dec.decode(Go.toInterface(_newEt1));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("round 2: error decoding ET1:" : GoString)))), Go.toInterface(_err));
        };
        if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_et1), Go.toInterface(_newEt1))) {
            _t.fatalf(((("round 2: invalid data for et1: expected %+v; got %+v" : GoString))), Go.toInterface(_et1), Go.toInterface(_newEt1));
        };
        if (_b.len() != ((0 : GoInt))) {
            _t.error(Go.toInterface(((("round 2: not at eof;" : GoString)))), Go.toInterface(_b.len()), Go.toInterface(((("bytes left" : GoString)))));
        };
        _err = _enc.encode(Go.toInterface(_et1));
        if (_err != null) {
            _t.error(Go.toInterface(((("round 3: encoder fail:" : GoString)))), Go.toInterface(_err));
        };
        var _newEt2:ET2 = new ET2();
        _err = _dec.decode(Go.toInterface(_newEt2));
        if (_err == null) {
            _t.fatal(Go.toInterface(((("round 3: expected `bad type\' error decoding ET2" : GoString)))));
        };
    }
function _badTypeCheck(_e:AnyInterface, _shouldFail:Bool, _msg:GoString, _t:stdgo.testing.Testing.T_):Void {
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _enc:Encoder = newEncoder(_b);
        var _et1:ET1 = new ET1();
        _et1.a = ((7 : GoInt));
        _et1.et2 = new ET2();
        var _err:stdgo.Error = _enc.encode(Go.toInterface(_et1));
        if (_err != null) {
            _t.error(Go.toInterface(((("encoder fail:" : GoString)))), Go.toInterface(_err));
        };
        var _dec:Decoder = newDecoder(_b);
        _err = _dec.decode(Go.toInterface(_e));
        if (_shouldFail && (_err == null)) {
            _t.error(Go.toInterface(((("expected error for" : GoString)))), Go.toInterface(_msg));
        };
        if (!_shouldFail && (_err != null)) {
            _t.error(Go.toInterface(((("unexpected error for" : GoString)))), Go.toInterface(_msg), Go.toInterface(_err));
        };
    }
function testWrongTypeDecoder(_t:stdgo.testing.Testing.T_):Void {
        _badTypeCheck(Go.toInterface(new ET2()), true, ((("no fields in common" : GoString))), _t);
        _badTypeCheck(Go.toInterface(new ET3()), false, ((("different name of field" : GoString))), _t);
        _badTypeCheck(Go.toInterface(new ET4()), true, ((("different type of field" : GoString))), _t);
    }
function testUnsupported(_t:stdgo.testing.Testing.T_):Void {
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _enc:Encoder = newEncoder(_b);
        for (_0 => _v in _unsupportedValues) {
            var _err:stdgo.Error = _enc.encode(Go.toInterface(_v));
            if (_err == null) {
                _t.errorf(((("expected error for %T; got none" : GoString))), Go.toInterface(_v));
            };
        };
    }
function _encAndDec(_in:AnyInterface, _out:AnyInterface):Error {
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _enc:Encoder = newEncoder(_b);
        var _err:stdgo.Error = _enc.encode(Go.toInterface(_in));
        if (_err != null) {
            return _err;
        };
        var _dec:Decoder = newDecoder(_b);
        _err = _dec.decode(Go.toInterface(_out));
        if (_err != null) {
            return _err;
        };
        return ((null : stdgo.Error));
    }
@:structInit class Type0_testTypeToPtrType_0 {
    public var a : GoInt = ((0 : GoInt));
    public function new(?a:GoInt) {
        if (a != null) this.a = a;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Type0_testTypeToPtrType_0(a);
    }
}
function testTypeToPtrType(_t:stdgo.testing.Testing.T_):Void {
        {};
        var _t0:Type0_testTypeToPtrType_0 = ((new Type0_testTypeToPtrType_0(((7 : GoInt))) : Type0_testTypeToPtrType_0));
        var _t0p:Type0_testTypeToPtrType_0 = new Type0_testTypeToPtrType_0();
        {
            var _err:stdgo.Error = _encAndDec(Go.toInterface(_t0), Go.toInterface(_t0p));
            if (_err != null) {
                _t.error(Go.toInterface(_err));
            };
        };
    }
@:structInit class Type1_testPtrTypeToType_0 {
    public var a : GoUInt = ((0 : GoUInt));
    public function new(?a:GoUInt) {
        if (a != null) this.a = a;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Type1_testPtrTypeToType_0(a);
    }
}
function testPtrTypeToType(_t:stdgo.testing.Testing.T_):Void {
        {};
        var _t1p:Type1_testPtrTypeToType_0 = ((new Type1_testPtrTypeToType_0(((17 : GoUInt))) : Type1_testPtrTypeToType_0));
        var _t1:Type1_testPtrTypeToType_0 = new Type1_testPtrTypeToType_0();
        {
            var _err:stdgo.Error = _encAndDec(Go.toInterface(_t1), Go.toInterface(_t1p));
            if (_err != null) {
                _t.error(Go.toInterface(_err));
            };
        };
    }
@:structInit class Type2_testTypeToPtrPtrPtrPtrType_0 {
    public var a : Pointer<GoFloat64> = ((null : Pointer<GoFloat64>));
    public function new(?a:Pointer<GoFloat64>) {
        if (a != null) this.a = a;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Type2_testTypeToPtrPtrPtrPtrType_0(a);
    }
}
function testTypeToPtrPtrPtrPtrType(_t:stdgo.testing.Testing.T_):Void {
        {};
        var _t2:Type2_testTypeToPtrPtrPtrPtrType_0 = ((new Type2_testTypeToPtrPtrPtrPtrType_0() : Type2_testTypeToPtrPtrPtrPtrType_0));
        _t2.a = ((null : Pointer<GoFloat64>));
        _t2.a = ((null : Pointer<GoFloat64>));
        _t2.a = ((null : Pointer<GoFloat64>));
        _t2.a = Go.pointer(((0 : GoFloat64)));
        _t2.a.value = ((27.4 : GoFloat64));
        var _t2pppp:Type2_testTypeToPtrPtrPtrPtrType_0 = ((null : Type2_testTypeToPtrPtrPtrPtrType_0));
        {
            var _err:stdgo.Error = _encAndDec(Go.toInterface(_t2), Go.toInterface(_t2pppp));
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        if ((_t2pppp).a.value != _t2.a.value) {
            _t.errorf(((("wrong value after decode: %g not %g" : GoString))), Go.toInterface((_t2pppp).a.value), Go.toInterface(_t2.a.value));
        };
    }
@:structInit class Type3_testSlice_0 {
    public var a : Slice<GoString> = ((null : Slice<GoString>));
    public function new(?a:Slice<GoString>) {
        if (a != null) this.a = a;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Type3_testSlice_0(a);
    }
}
function testSlice(_t:stdgo.testing.Testing.T_):Void {
        {};
        var _t3p:Type3_testSlice_0 = ((new Type3_testSlice_0(((new Slice<GoString>(((("hello" : GoString))), ((("world" : GoString)))) : Slice<GoString>))) : Type3_testSlice_0));
        var _t3:Type3_testSlice_0 = new Type3_testSlice_0();
        {
            var _err:stdgo.Error = _encAndDec(Go.toInterface(_t3), Go.toInterface(_t3p));
            if (_err != null) {
                _t.error(Go.toInterface(_err));
            };
        };
    }
@:structInit class Type4_testValueError_0 {
    public var a : GoInt = ((0 : GoInt));
    public function new(?a:GoInt) {
        if (a != null) this.a = a;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Type4_testValueError_0(a);
    }
}
function testValueError(_t:stdgo.testing.Testing.T_):Void {
        {};
        var _t4p:Type4_testValueError_0 = ((new Type4_testValueError_0(((3 : GoInt))) : Type4_testValueError_0));
        var _t4:Type4_testValueError_0 = new Type4_testValueError_0();
        {
            var _err:stdgo.Error = _encAndDec(Go.toInterface(_t4p), Go.toInterface(_t4));
            if ((_err == null) || !stdgo.strings.Strings.contains(_err.error(), ((("pointer" : GoString))))) {
                _t.error(Go.toInterface(((("expected error about pointer; got" : GoString)))), Go.toInterface(_err));
            };
        };
    }
@:structInit class Type5_testArray_0 {
    public var a : GoArray<GoString> = new GoArray<GoString>(...[for (i in 0 ... 3) (("" : GoString))]);
    public var b : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 3) ((0 : GoUInt8))]);
    public function new(?a:GoArray<GoString>, ?b:GoArray<GoUInt8>) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Type5_testArray_0(a, b);
    }
}
@:structInit class Type6_testArray_1 {
    public var a : GoArray<GoString> = new GoArray<GoString>(...[for (i in 0 ... 2) (("" : GoString))]);
    public function new(?a:GoArray<GoString>) {
        if (a != null) this.a = a;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Type6_testArray_1(a);
    }
}
function testArray(_t:stdgo.testing.Testing.T_):Void {
        {};
        {};
        var _t5:Type5_testArray_0 = ((new Type5_testArray_0(((new GoArray<GoString>(((("hello" : GoString))), ((("," : GoString))), ((("world" : GoString)))) : GoArray<GoString>)), ((new GoArray<GoUInt8>(((1 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8))) : GoArray<GoUInt8>))) : Type5_testArray_0));
        var _t5p:Type5_testArray_0 = new Type5_testArray_0();
        {
            var _err:stdgo.Error = _encAndDec(Go.toInterface(_t5), Go.toInterface(_t5p));
            if (_err != null) {
                _t.error(Go.toInterface(_err));
            };
        };
        var _t6:Type6_testArray_1 = new Type6_testArray_1();
        {
            var _err:stdgo.Error = _encAndDec(Go.toInterface(_t5), Go.toInterface(_t6));
            if (_err == null) {
                _t.error(Go.toInterface(((("should fail with mismatched array sizes" : GoString)))));
            };
        };
    }
@:named typedef T_recursiveMap_testRecursiveMapType_0 = GoMap<GoString, T_recursiveMap_testRecursiveMapType_0>;
function testRecursiveMapType(_t:stdgo.testing.Testing.T_):Void {
        {};
        var _r1:T_recursiveMap_testRecursiveMapType_0 = (Go.map(((("A" : GoString))) => Go.map(((("B" : GoString))) => null, ((("C" : GoString))) => null), ((("D" : GoString))) => null) == null ? null : Go.map(((("A" : GoString))) => Go.map(((("B" : GoString))) => null, ((("C" : GoString))) => null), ((("D" : GoString))) => null).__copy__());
        var _r2:T_recursiveMap_testRecursiveMapType_0 = new GoObjectMap<GoString, T_recursiveMap_testRecursiveMapType_0>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.named("T_recursiveMap_testRecursiveMapType_0", [], stdgo.reflect.Reflect.GoType.invalidType))));
        {
            var _err:stdgo.Error = _encAndDec(Go.toInterface(_r1), Go.toInterface(_r2));
            if (_err != null) {
                _t.error(Go.toInterface(_err));
            };
        };
    }
@:named typedef T_recursiveSlice_testRecursiveSliceType_0 = Slice<T_recursiveSlice_testRecursiveSliceType_0>;
function testRecursiveSliceType(_t:stdgo.testing.Testing.T_):Void {
        {};
        var _r1:T_recursiveSlice_testRecursiveSliceType_0 = {
            var s:T_recursiveSlice_testRecursiveSliceType_0 = new Slice<T_recursiveSlice_testRecursiveSliceType_0>(...([for (i in 0 ... 2) new T_recursiveSlice_testRecursiveSliceType_0()]));
            s[0] = {
                var s:T_recursiveSlice_testRecursiveSliceType_0 = new Slice<T_recursiveSlice_testRecursiveSliceType_0>(...([for (i in 0 ... 1) new T_recursiveSlice_testRecursiveSliceType_0()]));
                s[0] = null;
                s;
            };
            s[1] = null;
            s;
        };
        var _r2:T_recursiveSlice_testRecursiveSliceType_0 = new Slice<T_recursiveSlice_testRecursiveSliceType_0>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new T_recursiveSlice_testRecursiveSliceType_0()]);
        {
            var _err:stdgo.Error = _encAndDec(Go.toInterface(_r1), Go.toInterface(_r2));
            if (_err != null) {
                _t.error(Go.toInterface(_err));
            };
        };
    }
@:structInit class Type7_testDefaultsInArray_0 {
    public var b : Slice<Bool> = ((null : Slice<Bool>));
    public var i : Slice<GoInt> = ((null : Slice<GoInt>));
    public var s : Slice<GoString> = ((null : Slice<GoString>));
    public var f : Slice<GoFloat64> = ((null : Slice<GoFloat64>));
    public function new(?b:Slice<Bool>, ?i:Slice<GoInt>, ?s:Slice<GoString>, ?f:Slice<GoFloat64>) {
        if (b != null) this.b = b;
        if (i != null) this.i = i;
        if (s != null) this.s = s;
        if (f != null) this.f = f;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Type7_testDefaultsInArray_0(b, i, s, f);
    }
}
function testDefaultsInArray(_t:stdgo.testing.Testing.T_):Void {
        {};
        var _t7:Type7_testDefaultsInArray_0 = ((new Type7_testDefaultsInArray_0(((new Slice<Bool>(false, false, true) : Slice<Bool>)), ((new Slice<GoInt>(((0 : GoInt)), ((0 : GoInt)), ((1 : GoInt))) : Slice<GoInt>)), ((new Slice<GoString>(((("hi" : GoString))), (""), ((("there" : GoString)))) : Slice<GoString>)), ((new Slice<GoFloat64>(((0 : GoFloat64)), ((0 : GoFloat64)), ((1 : GoFloat64))) : Slice<GoFloat64>))) : Type7_testDefaultsInArray_0));
        var _t7p:Type7_testDefaultsInArray_0 = new Type7_testDefaultsInArray_0();
        {
            var _err:stdgo.Error = _encAndDec(Go.toInterface(_t7), Go.toInterface(_t7p));
            if (_err != null) {
                _t.error(Go.toInterface(_err));
            };
        };
    }
function testSingletons(_t:stdgo.testing.Testing.T_):Void {
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _enc:Encoder = newEncoder(_b);
        var _dec:Decoder = newDecoder(_b);
        for (_0 => _test in _singleTests) {
            _b.reset();
            var _err:stdgo.Error = _enc.encode(Go.toInterface(_test._in));
            if (_err != null) {
                _t.errorf(((("error encoding %v: %s" : GoString))), Go.toInterface(_test._in), Go.toInterface(_err));
                continue;
            };
            _err = _dec.decode(Go.toInterface(_test._out));
            if ((_err != null) && (_test._err == (""))) {
                _t.errorf(((("error decoding %v: %s" : GoString))), Go.toInterface(_test._in), Go.toInterface(_err));
                continue;
            } else if ((_err == null) && (_test._err != (""))) {
                _t.errorf(((("expected error decoding %v: %s" : GoString))), Go.toInterface(_test._in), Go.toInterface(_test._err));
                continue;
            } else if ((_err != null) && (_test._err != (""))) {
                if (!stdgo.strings.Strings.contains(_err.error(), _test._err)) {
                    _t.errorf(((("wrong error decoding %v: wanted %s, got %v" : GoString))), Go.toInterface(_test._in), Go.toInterface(_test._err), Go.toInterface(_err));
                };
                continue;
            };
            var _val:AnyInterface = Go.toInterface(stdgo.reflect.Reflect.valueOf(Go.toInterface(_test._out)).elem().interface_());
            if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_test._in), Go.toInterface(_val))) {
                _t.errorf(((("decoding singleton: expected %v got %v" : GoString))), Go.toInterface(_test._in), Go.toInterface(_val));
            };
        };
    }
@:structInit class Struct_testStructNonStruct_0 {
    public var a : GoString = (("" : GoString));
    public function new(?a:GoString) {
        if (a != null) this.a = a;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Struct_testStructNonStruct_0(a);
    }
}
@:named typedef NonStruct_testStructNonStruct_1 = GoString;
function testStructNonStruct(_t:stdgo.testing.Testing.T_):Void {
        {};
        {};
        var _s:Struct_testStructNonStruct_0 = ((new Struct_testStructNonStruct_0(((("hello" : GoString)))) : Struct_testStructNonStruct_0));
        var _sp:Struct_testStructNonStruct_0 = new Struct_testStructNonStruct_0();
        {
            var _err:stdgo.Error = _encAndDec(Go.toInterface(_s), Go.toInterface(_sp));
            if (_err != null) {
                _t.error(Go.toInterface(_err));
            };
        };
        var _ns:NonStruct_testStructNonStruct_1 = new NonStruct_testStructNonStruct_1();
        {
            var _err:stdgo.Error = _encAndDec(Go.toInterface(_s), Go.toInterface(Go.pointer(_ns)));
            if (_err == null) {
                _t.error(Go.toInterface(((("should get error for struct/non-struct" : GoString)))));
            } else if (!stdgo.strings.Strings.contains(_err.error(), ((("type" : GoString))))) {
                _t.error(Go.toInterface(((("for struct/non-struct expected type error; got" : GoString)))), Go.toInterface(_err));
            };
        };
        var _nsp:NonStruct_testStructNonStruct_1 = new NonStruct_testStructNonStruct_1();
        {
            var _err:stdgo.Error = _encAndDec(Go.toInterface(_ns), Go.toInterface(Go.pointer(_nsp)));
            if (_err != null) {
                _t.error(Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _encAndDec(Go.toInterface(_ns), Go.toInterface(_s));
            if (_err == null) {
                _t.error(Go.toInterface(((("should get error for non-struct/struct" : GoString)))));
            } else if (!stdgo.strings.Strings.contains(_err.error(), ((("type" : GoString))))) {
                _t.error(Go.toInterface(((("for non-struct/struct expected type error; got" : GoString)))), Go.toInterface(_err));
            };
        };
    }
function testInterfaceIndirect(_t:stdgo.testing.Testing.T_):Void {
        register(Go.toInterface(((new T_interfaceIndirectTestT() : T_interfaceIndirectTestT))));
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _w:Slice<T_interfaceIndirectTestI> = ((new Slice<T_interfaceIndirectTestI>(((new T_interfaceIndirectTestT() : T_interfaceIndirectTestT))) : Slice<T_interfaceIndirectTestI>));
        var _err:stdgo.Error = newEncoder(_b).encode(Go.toInterface(_w));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("encode error:" : GoString)))), Go.toInterface(_err));
        };
        var _r:Slice<T_interfaceIndirectTestI> = ((null : Slice<T_interfaceIndirectTestI>));
        _err = newDecoder(_b).decode(Go.toInterface(_r));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("decode error:" : GoString)))), Go.toInterface(_err));
        };
    }
function testDecodeIntoNothing(_t:stdgo.testing.Testing.T_):Void {
        register(Go.toInterface(new NewType0()));
        for (_i => _test in _ignoreTests) {
            var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
            var _enc:Encoder = newEncoder(_b);
            var _err:stdgo.Error = _enc.encode(Go.toInterface(_test._in));
            if (_err != null) {
                _t.errorf(((("%d: encode error %s:" : GoString))), Go.toInterface(_i), Go.toInterface(_err));
                continue;
            };
            var _dec:Decoder = newDecoder(_b);
            _err = _dec.decode(Go.toInterface(_test._out));
            if (_err != null) {
                _t.errorf(((("%d: decode error: %s" : GoString))), Go.toInterface(_i), Go.toInterface(_err));
                continue;
            };
            var _str:GoString = stdgo.fmt.Fmt.sprintf(((("Value %d" : GoString))), Go.toInterface(_i));
            _err = _enc.encode(Go.toInterface(((new NewType0(_str) : NewType0))));
            if (_err != null) {
                _t.fatalf(((("%d: NewType0 encode error: %s" : GoString))), Go.toInterface(_i), Go.toInterface(_err));
            };
            var _ns:NewType0 = new NewType0();
            _err = _dec.decode(Go.toInterface(_ns));
            if (_err != null) {
                _t.fatalf(((("%d: NewType0 decode error: %s" : GoString))), Go.toInterface(_i), Go.toInterface(_err));
            };
            if (_ns.s != _str) {
                _t.fatalf(((("%d: expected %q got %q" : GoString))), Go.toInterface(_i), Go.toInterface(_str), Go.toInterface(_ns.s));
            };
        };
    }
function testIgnoreRecursiveType(_t:stdgo.testing.Testing.T_):Void {
        var _data:Slice<GoUInt8> = ((new Slice<GoUInt8>(
((29 : GoUInt8)),
((255 : GoUInt8)),
((211 : GoUInt8)),
((2 : GoUInt8)),
((1 : GoUInt8)),
((1 : GoUInt8)),
((14 : GoUInt8)),
((114 : GoUInt8)),
((101 : GoUInt8)),
((99 : GoUInt8)),
((117 : GoUInt8)),
((114 : GoUInt8)),
((115 : GoUInt8)),
((105 : GoUInt8)),
((118 : GoUInt8)),
((101 : GoUInt8)),
((83 : GoUInt8)),
((108 : GoUInt8)),
((105 : GoUInt8)),
((99 : GoUInt8)),
((101 : GoUInt8)),
((1 : GoUInt8)),
((255 : GoUInt8)),
((212 : GoUInt8)),
((0 : GoUInt8)),
((1 : GoUInt8)),
((255 : GoUInt8)),
((212 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((7 : GoUInt8)),
((255 : GoUInt8)),
((212 : GoUInt8)),
((0 : GoUInt8)),
((2 : GoUInt8)),
((1 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8))) : Slice<GoUInt8>));
        var _dec:Decoder = newDecoder(stdgo.bytes.Bytes.newReader(_data));
        var _err:stdgo.Error = _dec.decode(((null : AnyInterface)));
        if (_err != null) {
            _t.fatal(Go.toInterface(_err));
        };
    }
function testNestedInterfaces(_t:stdgo.testing.Testing.T_):Void {
        var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _e:Encoder = newEncoder(_buf);
        var _d:Decoder = newDecoder(_buf);
        register(Go.toInterface(new Bug0Outer()));
        register(Go.toInterface(new Bug0Inner()));
        var _f:Bug0Outer = ((new Bug0Outer(Go.toInterface(((new Bug0Outer(Go.toInterface(((new Bug0Inner(((7 : GoInt))) : Bug0Inner)))) : Bug0Outer)))) : Bug0Outer));
        var _v:AnyInterface = Go.toInterface(_f);
        var _err:stdgo.Error = _e.encode(Go.toInterface(_v));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("Encode:" : GoString)))), Go.toInterface(_err));
        };
        _err = _d.decode(Go.toInterface(_v));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("Decode:" : GoString)))), Go.toInterface(_err));
        };
        var __tmp__ = try {
            { value : ((_v.value : Bug0Outer)), ok : true };
        } catch(_) {
            { value : ((null : Bug0Outer)), ok : false };
        }, _outer1 = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            _t.fatalf(((("v not Bug0Outer: %T" : GoString))), Go.toInterface(_v));
        };
        var __tmp__ = try {
            { value : ((_outer1.bug0Field.value : Bug0Outer)), ok : true };
        } catch(_) {
            { value : ((null : Bug0Outer)), ok : false };
        }, _outer2 = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            _t.fatalf(((("v.Bug0Field not Bug0Outer: %T" : GoString))), Go.toInterface(_outer1.bug0Field));
        };
        var __tmp__ = try {
            { value : ((_outer2.bug0Field.value : Bug0Inner)), ok : true };
        } catch(_) {
            { value : ((null : Bug0Inner)), ok : false };
        }, _inner = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            _t.fatalf(((("v.Bug0Field.Bug0Field not Bug0Inner: %T" : GoString))), Go.toInterface(_outer2.bug0Field));
        };
        if (_inner.a != ((7 : GoInt))) {
            _t.fatalf(((("final value %d; expected %d" : GoString))), Go.toInterface(_inner.a), Go.toInterface(((7 : GoInt))));
        };
    }
function testMapBug1(_t:stdgo.testing.Testing.T_):Void {
        var _in:Bug1StructMap = new GoObjectMap<GoString, Bug1Elem>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.named("Bug1Elem", [], stdgo.reflect.Reflect.GoType.named("Bug1Elem", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))))));
        if (_in != null) _in[((("val1" : GoString)))] = ((new Bug1Elem(((("elem1" : GoString))), ((1 : GoInt))) : Bug1Elem));
        if (_in != null) _in[((("val2" : GoString)))] = ((new Bug1Elem(((("elem2" : GoString))), ((2 : GoInt))) : Bug1Elem));
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _enc:Encoder = newEncoder(_b);
        var _err:stdgo.Error = _enc.encode(Go.toInterface(_in));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("encode:" : GoString)))), Go.toInterface(_err));
        };
        var _dec:Decoder = newDecoder(_b);
        var _out:Bug1StructMap = new GoObjectMap<GoString, Bug1Elem>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.named("Bug1Elem", [], stdgo.reflect.Reflect.GoType.named("Bug1Elem", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))))));
        _err = _dec.decode(Go.toInterface(_out));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("decode:" : GoString)))), Go.toInterface(_err));
        };
        if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_in), Go.toInterface(_out))) {
            _t.errorf(((("mismatch: %v %v" : GoString))), Go.toInterface(_in), Go.toInterface(_out));
        };
    }
function testGobMapInterfaceEncode(_t:stdgo.testing.Testing.T_):Void {
        var _m:GoMap<GoString, AnyInterface> = Go.map(((("up" : GoString))) => Go.toInterface(((((0 : GoUIntptr)) : GoUIntptr))),
((("i0" : GoString))) => Go.toInterface(((new Slice<GoInt>(((-1 : GoInt))) : Slice<GoInt>))),
((("i1" : GoString))) => Go.toInterface(((new Slice<GoInt8>(((-1 : GoInt8))) : Slice<GoInt8>))),
((("i2" : GoString))) => Go.toInterface(((new Slice<GoInt16>(((-1 : GoInt16))) : Slice<GoInt16>))),
((("i3" : GoString))) => Go.toInterface(((new Slice<GoInt32>(((-1 : GoInt32))) : Slice<GoInt32>))),
((("i4" : GoString))) => Go.toInterface(((new Slice<GoInt64>(((-1 : GoInt64))) : Slice<GoInt64>))),
((("u0" : GoString))) => Go.toInterface(((new Slice<GoUInt>(((1 : GoUInt))) : Slice<GoUInt>))),
((("u1" : GoString))) => Go.toInterface(((new Slice<GoUInt8>(((1 : GoUInt8))) : Slice<GoUInt8>))),
((("u2" : GoString))) => Go.toInterface(((new Slice<GoUInt16>(((1 : GoUInt16))) : Slice<GoUInt16>))),
((("u3" : GoString))) => Go.toInterface(((new Slice<GoUInt32>(((1 : GoUInt32))) : Slice<GoUInt32>))),
((("u4" : GoString))) => Go.toInterface(((new Slice<GoUInt64>(((1 : GoUInt64))) : Slice<GoUInt64>))),
((("f0" : GoString))) => Go.toInterface(((new Slice<GoFloat32>(((1 : GoFloat32))) : Slice<GoFloat32>))),
((("f1" : GoString))) => Go.toInterface(((new Slice<GoFloat64>(((1 : GoFloat64))) : Slice<GoFloat64>))),
((("c0" : GoString))) => Go.toInterface(((new Slice<GoComplex64>(new GoComplex128(((2 : GoUnTypedInt)), ((-2 : GoUnTypedInt)))) : Slice<GoComplex64>))),
((("c1" : GoString))) => Go.toInterface(((new Slice<GoComplex128>(new GoComplex128(((2 : GoFloat64)), ((((-2 : GoFloat64)) : GoFloat64)))) : Slice<GoComplex128>))),
((("us" : GoString))) => Go.toInterface(((new Slice<GoUIntptr>(((0 : GoUIntptr))) : Slice<GoUIntptr>))),
((("bo" : GoString))) => Go.toInterface(((new Slice<Bool>(false) : Slice<Bool>))),
((("st" : GoString))) => Go.toInterface(((new Slice<GoString>(((("s" : GoString)))) : Slice<GoString>))));
        var _enc:Encoder = newEncoder(new stdgo.bytes.Bytes.Buffer());
        var _err:stdgo.Error = _enc.encode(Go.toInterface(_m));
        if (_err != null) {
            _t.errorf(((("encode map: %s" : GoString))), Go.toInterface(_err));
        };
    }
function testSliceReusesMemory(_t:stdgo.testing.Testing.T_):Void {
        var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        {
            var _x:Slice<GoUInt8> = ((((("abcd" : GoString))) : Slice<GoByte>));
            var _enc:Encoder = newEncoder(_buf);
            var _err:stdgo.Error = _enc.encode(Go.toInterface(_x));
            if (_err != null) {
                _t.errorf(((("bytes: encode: %s" : GoString))), Go.toInterface(_err));
            };
            var _y:Slice<GoUInt8> = ((((("ABCDE" : GoString))) : Slice<GoByte>));
            var _addr:Pointer<GoUInt8> = Go.pointer((_y != null ? _y[((0 : GoInt))] : ((0 : GoUInt8))));
            var _dec:Decoder = newDecoder(_buf);
            _err = _dec.decode(Go.toInterface(_y));
            if (_err != null) {
                _t.fatal(Go.toInterface(((("bytes: decode:" : GoString)))), Go.toInterface(_err));
            };
            if (!stdgo.bytes.Bytes.equal(_x, _y)) {
                _t.errorf(((("bytes: expected %q got %q\n" : GoString))), Go.toInterface(_x), Go.toInterface(_y));
            };
            if (_addr != Go.pointer((_y != null ? _y[((0 : GoInt))] : ((0 : GoUInt8))))) {
                _t.errorf(((("bytes: unnecessary reallocation" : GoString))));
            };
        };
        {
            var _x:Slice<GoInt32> = ((((("abcd" : GoString))) : Slice<GoRune>));
            var _enc:Encoder = newEncoder(_buf);
            var _err:stdgo.Error = _enc.encode(Go.toInterface(_x));
            if (_err != null) {
                _t.errorf(((("ints: encode: %s" : GoString))), Go.toInterface(_err));
            };
            var _y:Slice<GoInt32> = ((((("ABCDE" : GoString))) : Slice<GoRune>));
            var _addr:Pointer<GoInt32> = Go.pointer((_y != null ? _y[((0 : GoInt))] : ((0 : GoInt32))));
            var _dec:Decoder = newDecoder(_buf);
            _err = _dec.decode(Go.toInterface(_y));
            if (_err != null) {
                _t.fatal(Go.toInterface(((("ints: decode:" : GoString)))), Go.toInterface(_err));
            };
            if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_x), Go.toInterface(_y))) {
                _t.errorf(((("ints: expected %q got %q\n" : GoString))), Go.toInterface(_x), Go.toInterface(_y));
            };
            if (_addr != Go.pointer((_y != null ? _y[((0 : GoInt))] : ((0 : GoInt32))))) {
                _t.errorf(((("ints: unnecessary reallocation" : GoString))));
            };
        };
    }
function testBadCount(_t:stdgo.testing.Testing.T_):Void {
        var _b:Slice<GoUInt8> = ((new Slice<GoUInt8>(((251 : GoUInt8)), ((165 : GoUInt8)), ((130 : GoUInt8)), ((47 : GoUInt8)), ((202 : GoUInt8)), ((1 : GoUInt8))) : Slice<GoUInt8>));
        {
            var _err:stdgo.Error = newDecoder(stdgo.bytes.Bytes.newReader(_b)).decode(((null : AnyInterface)));
            if (_err == null) {
                _t.error(Go.toInterface(((("expected error from bad count" : GoString)))));
            } else if (_err.error() != _errBadCount.error()) {
                _t.error(Go.toInterface(((("expected bad count error; got" : GoString)))), Go.toInterface(_err));
            };
        };
    }
function testSequentialDecoder(_t:stdgo.testing.Testing.T_):Void {
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _enc:Encoder = newEncoder(_b);
        {};
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((10 : GoInt)), _i++, {
                var _s:GoString = stdgo.fmt.Fmt.sprintf(((("%d" : GoString))), Go.toInterface(_i));
                {
                    var _err:stdgo.Error = _enc.encode(Go.toInterface(_s));
                    if (_err != null) {
                        _t.error(Go.toInterface(((("encoder fail:" : GoString)))), Go.toInterface(_err));
                    };
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((10 : GoInt)), _i++, {
                var _dec:Decoder = newDecoder(_b);
                var _s:GoString = (("" : GoString));
                {
                    var _err:stdgo.Error = _dec.decode(Go.toInterface(Go.pointer(_s)));
                    if (_err != null) {
                        _t.fatal(Go.toInterface(((("decoder fail:" : GoString)))), Go.toInterface(_err));
                    };
                };
                if (_s != stdgo.fmt.Fmt.sprintf(((("%d" : GoString))), Go.toInterface(_i))) {
                    _t.fatalf(((("decode expected %d got %s" : GoString))), Go.toInterface(_i), Go.toInterface(_s));
                };
            });
        };
    }
function testChanFuncIgnored(_t:stdgo.testing.Testing.T_):Void {
        var _c:Chan<GoInt> = new Chan<GoInt>(0, () -> ((0 : GoInt)));
        var _f:() -> Void = function():Void {};
        var _fp:() -> Void = _f;
        var _b0:Bug2 = ((new Bug2(((23 : GoInt)), _c, _c, _f, _fp) : Bug2));
        var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _enc:Encoder = newEncoder(_buf);
        {
            var _err:stdgo.Error = _enc.encode(Go.toInterface(_b0));
            if (_err != null) {
                _t.fatal(Go.toInterface(((("error encoding:" : GoString)))), Go.toInterface(_err));
            };
        };
        var _b1:Bug2 = new Bug2();
        var _err:stdgo.Error = newDecoder(_buf).decode(Go.toInterface(_b1));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("decode:" : GoString)))), Go.toInterface(_err));
        };
        if (_b1.a != _b0.a) {
            _t.fatalf(((("got %d want %d" : GoString))), Go.toInterface(_b1.a), Go.toInterface(_b0.a));
        };
        if ((((_b1.c != null) || (_b1.cp != null)) || (_b1.f != null)) || (_b1.fpp != null)) {
            _t.fatal(Go.toInterface(((("unexpected value for chan or func" : GoString)))));
        };
    }
function testSliceIncompatibility(_t:stdgo.testing.Testing.T_):Void {
        var _in:Slice<GoUInt8> = ((new Slice<GoUInt8>(((1 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8))) : Slice<GoUInt8>));
        var _out:Slice<GoInt> = ((null : Slice<GoInt>));
        {
            var _err:stdgo.Error = _encAndDec(Go.toInterface(_in), Go.toInterface(_out));
            if (_err == null) {
                _t.error(Go.toInterface(((("expected compatibility error" : GoString)))));
            };
        };
    }
function testGobPtrSlices(_t:stdgo.testing.Testing.T_):Void {
        var _in:Slice<Bug3> = ((new Slice<Bug3>(((new Bug3(((1 : GoInt)), ((null : Slice<Bug3>))) : Bug3)), ((new Bug3(((2 : GoInt)), ((null : Slice<Bug3>))) : Bug3))) : Slice<Bug3>));
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _err:stdgo.Error = newEncoder(_b).encode(Go.toInterface(_in));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("encode:" : GoString)))), Go.toInterface(_err));
        };
        var _out:Slice<Bug3> = ((null : Slice<Bug3>));
        _err = newDecoder(_b).decode(Go.toInterface(_out));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("decode:" : GoString)))), Go.toInterface(_err));
        };
        if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_in), Go.toInterface(_out))) {
            _t.fatalf(((("got %v; wanted %v" : GoString))), Go.toInterface(_out), Go.toInterface(_in));
        };
    }
function testPtrToMapOfMap(_t:stdgo.testing.Testing.T_):Void {
        register(Go.toInterface(new GoObjectMap<GoString, AnyInterface>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))))));
        var _subdata:GoMap<GoString, AnyInterface> = new GoObjectMap<GoString, AnyInterface>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))));
        if (_subdata != null) _subdata[((("bar" : GoString)))] = Go.toInterface(((("baz" : GoString))));
        var _data:GoMap<GoString, AnyInterface> = new GoObjectMap<GoString, AnyInterface>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))));
        if (_data != null) _data[((("foo" : GoString)))] = Go.toInterface(_subdata);
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _err:stdgo.Error = newEncoder(_b).encode(Go.toInterface(_data));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("encode:" : GoString)))), Go.toInterface(_err));
        };
        var _newData:GoMap<GoString, AnyInterface> = ((null : GoMap<GoString, AnyInterface>));
        _err = newDecoder(_b).decode(Go.toInterface(_newData));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("decode:" : GoString)))), Go.toInterface(_err));
        };
        if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_data), Go.toInterface(_newData))) {
            _t.fatalf(((("expected %v got %v" : GoString))), Go.toInterface(_data), Go.toInterface(_newData));
        };
    }
function testCatchInvalidNilValue(_t:stdgo.testing.Testing.T_):Void {
        var __tmp__ = _encodeAndRecover(((null : AnyInterface))), _encodeErr:stdgo.Error = __tmp__._0, _panicErr:stdgo.Error = __tmp__._1;
        if (_panicErr != null) {
            _t.fatalf(((("panicErr=%v, should not panic encoding untyped nil" : GoString))), Go.toInterface(_panicErr));
        };
        if (_encodeErr == null) {
            _t.errorf(((("got err=nil, want non-nil error when encoding untyped nil value" : GoString))));
        } else if (!stdgo.strings.Strings.contains(_encodeErr.error(), ((("nil value" : GoString))))) {
            _t.errorf(((("expected \'nil value\' error; got err=%v" : GoString))), Go.toInterface(_encodeErr));
        };
    }
function testTopLevelNilPointer(_t:stdgo.testing.Testing.T_):Void {
        var _ip:Pointer<GoInt> = ((null : Pointer<GoInt>));
        var __tmp__ = _encodeAndRecover(Go.toInterface(_ip)), _encodeErr:stdgo.Error = __tmp__._0, _panicErr:stdgo.Error = __tmp__._1;
        if (_encodeErr != null) {
            _t.fatal(Go.toInterface(((("error in encode:" : GoString)))), Go.toInterface(_encodeErr));
        };
        if (_panicErr == null) {
            _t.fatal(Go.toInterface(((("top-level nil pointer did not panic" : GoString)))));
        };
        var _errMsg:GoString = _panicErr.error();
        if (!stdgo.strings.Strings.contains(_errMsg, ((("nil pointer" : GoString))))) {
            _t.fatal(Go.toInterface(((("expected nil pointer error, got:" : GoString)))), Go.toInterface(_errMsg));
        };
    }
function _encodeAndRecover(_value:AnyInterface):{ var _0 : Error; var _1 : Error; } {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        var _encodeErr:Error = ((null : stdgo.Error)), _panicErr:Error = ((null : stdgo.Error));
        __deferstack__.unshift(() -> {
            var a = function():Void {
                var _e:AnyInterface = Go.toInterface(({
                    final r = __recover_exception__;
                    __recover_exception__ = null;
                    r;
                }));
                if (_e != null) {
                    if (Go.assertable(((_e : Error)))) {
                        var _err:stdgo.Error = _e == null ? null : _e.__underlying__() == null ? null : _e == null ? null : _e.__underlying__().value;
                        _panicErr = _err;
                    } else {
                        var _err:AnyInterface = _e == null ? null : _e.__underlying__();
                        _panicErr = stdgo.fmt.Fmt.errorf(((("%v" : GoString))), Go.toInterface(_err));
                    };
                };
            };
            a();
        });
        try {
            _encodeErr = newEncoder(stdgo.io.Io.discard).encode(Go.toInterface(_value));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return { _0 : _encodeErr, _1 : _panicErr };
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return { _0 : _encodeErr, _1 : _panicErr };
            };
        };
    }
function testNilPointerPanics(_t:stdgo.testing.Testing.T_):Void {
        var _nilStringPtr:Pointer<GoString> = ((null : Pointer<GoString>)), _intMap:GoMap<GoInt, GoInt> = new Map<Int, GoInt>(), _intMapPtr:GoMap<GoInt, GoInt> = _intMap, _nilIntMapPtr:GoMap<GoInt, GoInt> = ((null : GoMap<GoInt, GoInt>)), _zero:GoInt = ((0 : GoInt)), _nilBoolChannel:Chan<Bool> = ((null : Chan<Bool>)), _nilBoolChannelPtr:Chan<Bool> = ((null : Chan<Bool>)), _nilStringSlice:Slice<GoString> = ((null : Slice<GoString>)), _stringSlice:Slice<GoString> = new Slice<GoString>(...[for (i in 0 ... ((((1 : GoInt)) : GoInt)).toBasic()) (("" : GoString))]), _nilStringSlicePtr:Slice<GoString> = ((null : Slice<GoString>));
        var _testCases:Slice<T__struct_2> = ((new Slice<T__struct_2>(((new T__struct_2(Go.toInterface(_nilStringPtr), true) : T__struct_2)), ((new T__struct_2(Go.toInterface(_intMap), false) : T__struct_2)), ((new T__struct_2(Go.toInterface(_intMapPtr), false) : T__struct_2)), ((new T__struct_2(Go.toInterface(_nilIntMapPtr), true) : T__struct_2)), ((new T__struct_2(Go.toInterface(_zero), false) : T__struct_2)), ((new T__struct_2(Go.toInterface(_nilStringSlice), false) : T__struct_2)), ((new T__struct_2(Go.toInterface(_stringSlice), false) : T__struct_2)), ((new T__struct_2(Go.toInterface(_nilStringSlicePtr), true) : T__struct_2)), ((new T__struct_2(Go.toInterface(_nilBoolChannel), false) : T__struct_2)), ((new T__struct_2(Go.toInterface(_nilBoolChannelPtr), true) : T__struct_2))) : Slice<T__struct_2>));
        for (_0 => _tt in _testCases) {
            var __tmp__ = _encodeAndRecover(Go.toInterface(_tt._value)), _1:stdgo.Error = __tmp__._0, _panicErr:stdgo.Error = __tmp__._1;
            if (_tt._mustPanic) {
                if (_panicErr == null) {
                    _t.errorf(((("expected panic with input %#v, did not panic" : GoString))), Go.toInterface(_tt._value));
                };
                continue;
            };
            if (_panicErr != null) {
                _t.fatalf(((("expected no panic with input %#v, got panic=%v" : GoString))), Go.toInterface(_tt._value), Go.toInterface(_panicErr));
            };
        };
    }
function testNilPointerInsideInterface(_t:stdgo.testing.Testing.T_):Void {
        var _ip:Pointer<GoInt> = ((null : Pointer<GoInt>));
        var _si:T__struct_3 = ((({ i : Go.toInterface(_ip) } : Struct0)) == null ? null : (({ i : Go.toInterface(_ip) } : Struct0)).__copy__());
        var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _err:stdgo.Error = newEncoder(_buf).encode(Go.toInterface(_si));
        if (_err == null) {
            _t.fatal(Go.toInterface(((("expected error, got none" : GoString)))));
        };
        var _errMsg:GoString = _err.error();
        if (!stdgo.strings.Strings.contains(_errMsg, ((("nil pointer" : GoString)))) || !stdgo.strings.Strings.contains(_errMsg, ((("interface" : GoString))))) {
            _t.fatal(Go.toInterface(((("expected error about nil pointer and interface, got:" : GoString)))), Go.toInterface(_errMsg));
        };
    }
function testMutipleEncodingsOfBadType(_t:stdgo.testing.Testing.T_):Void {
        var _x:Bug4Public = ((({ name : ((("name" : GoString))), secret : ((new Bug4Secret(((1 : GoInt))) : Bug4Secret)) } : Bug4Public)) == null ? null : (({ name : ((("name" : GoString))), secret : ((new Bug4Secret(((1 : GoInt))) : Bug4Secret)) } : Bug4Public)).__copy__());
        var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _enc:Encoder = newEncoder(_buf);
        var _err:stdgo.Error = _enc.encode(Go.toInterface(_x));
        if (_err == null) {
            _t.fatal(Go.toInterface(((("first encoding: expected error" : GoString)))));
        };
        _buf.reset();
        _enc = newEncoder(_buf);
        _err = _enc.encode(Go.toInterface(_x));
        if (_err == null) {
            _t.fatal(Go.toInterface(((("second encoding: expected error" : GoString)))));
        };
        if (!stdgo.strings.Strings.contains(_err.error(), ((("no exported fields" : GoString))))) {
            _t.errorf(((("expected error about no exported fields; got %v" : GoString))), Go.toInterface(_err));
        };
    }
function test29ElementSlice(_t:stdgo.testing.Testing.T_):Void {
        register(Go.toInterface(((new Z() : Z))));
        var _src:Slice<AnyInterface> = new Slice<AnyInterface>(...[for (i in 0 ... ((((100 : GoInt)) : GoInt)).toBasic()) ((null : AnyInterface))]);
        for (_i => _ in _src) {
            if (_src != null) _src[_i] = Go.toInterface(((new Z() : Z)));
        };
        var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _err:stdgo.Error = newEncoder(_buf).encode(Go.toInterface(_src));
        if (_err != null) {
            _t.fatalf(((("encode: %v" : GoString))), Go.toInterface(_err));
            return;
        };
        var _dst:Slice<AnyInterface> = ((null : Slice<AnyInterface>));
        _err = newDecoder(_buf).decode(Go.toInterface(_dst));
        if (_err != null) {
            _t.errorf(((("decode: %v" : GoString))), Go.toInterface(_err));
            return;
        };
    }
function testErrorForHugeSlice(_t:stdgo.testing.Testing.T_):Void {
        var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _slice:Slice<GoInt> = ((new Slice<GoInt>(((1 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((1 : GoInt)), ((1 : GoInt))) : Slice<GoInt>));
        var _err:stdgo.Error = newEncoder(_buf).encode(Go.toInterface(_slice));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("encode:" : GoString)))), Go.toInterface(_err));
        };
        if (_buf.bytes() != null) _buf.bytes()[(_buf.len() - (_slice != null ? _slice.length : ((0 : GoInt)))) - ((1 : GoInt))] = ((250 : GoUInt8));
        _err = newDecoder(_buf).decode(Go.toInterface(_slice));
        if (_err == null) {
            _t.fatal(Go.toInterface(((("decode: no error" : GoString)))));
        };
        if (!stdgo.strings.Strings.contains(_err.error(), ((("slice too big" : GoString))))) {
            _t.fatalf(((("decode: expected slice too big error, got %s" : GoString))), Go.toInterface(_err.error()));
        };
    }
function testBadData(_t:stdgo.testing.Testing.T_):Void {
        for (_i => _test in _badDataTests) {
            var __tmp__ = stdgo.encoding.hex.Hex.decodeString(_test._input), _data:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(((("#%d: hex error: %s" : GoString))), Go.toInterface(_i), Go.toInterface(_err));
            };
            var _d:Decoder = newDecoder(stdgo.bytes.Bytes.newReader(_data));
            _err = _d.decode(Go.toInterface(_test._data));
            if (_err == null) {
                _t.errorf(((("decode: no error" : GoString))));
                continue;
            };
            if (!stdgo.strings.Strings.contains(_err.error(), _test._error)) {
                _t.errorf(((("#%d: decode: expected %q error, got %s" : GoString))), Go.toInterface(_i), Go.toInterface(_test._error), Go.toInterface(_err.error()));
            };
        };
    }
@:structInit class Test_testDecodeErrorMultipleTypes_0 {
    public var a : GoString = (("" : GoString));
    public var b : GoInt = ((0 : GoInt));
    public function new(?a:GoString, ?b:GoInt) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Test_testDecodeErrorMultipleTypes_0(a, b);
    }
}
function testDecodeErrorMultipleTypes(_t:stdgo.testing.Testing.T_):Void {
        {};
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        newEncoder(_b).encode(Go.toInterface(((new Test_testDecodeErrorMultipleTypes_0(((("one" : GoString))), ((1 : GoInt))) : Test_testDecodeErrorMultipleTypes_0))));
        var _result:Test_testDecodeErrorMultipleTypes_0 = new Test_testDecodeErrorMultipleTypes_0(), _result2:Test_testDecodeErrorMultipleTypes_0 = new Test_testDecodeErrorMultipleTypes_0();
        var _dec:Decoder = newDecoder(_b);
        var _err:stdgo.Error = _dec.decode(Go.toInterface(_result));
        if (_err != null) {
            _t.errorf(((("decode: unexpected error %v" : GoString))), Go.toInterface(_err));
        };
        _b.reset();
        newEncoder(_b).encode(Go.toInterface(((new Test_testDecodeErrorMultipleTypes_0(((("two" : GoString))), ((2 : GoInt))) : Test_testDecodeErrorMultipleTypes_0))));
        _err = _dec.decode(Go.toInterface(_result2));
        if (_err == null) {
            _t.errorf(((("decode: expected duplicate type error, got nil" : GoString))));
        } else if (!stdgo.strings.Strings.contains(_err.error(), ((("duplicate type" : GoString))))) {
            _t.errorf(((("decode: expected duplicate type error, got %s" : GoString))), Go.toInterface(_err.error()));
        };
    }
@:structInit class T_mapEntry_testMarshalFloatMap_0 {
    public var _keyBits : GoUInt64 = ((0 : GoUInt64));
    public var _value : GoString = (("" : GoString));
    public function new(?_keyBits:GoUInt64, ?_value:GoString) {
        if (_keyBits != null) this._keyBits = _keyBits;
        if (_value != null) this._value = _value;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_mapEntry_testMarshalFloatMap_0(_keyBits, _value);
    }
}
function testMarshalFloatMap(_t:stdgo.testing.Testing.T_):Void {
        var _nan1:GoFloat64 = stdgo.math.Math.naN();
        var _nan2:GoFloat64 = stdgo.math.Math.float64frombits(stdgo.math.Math.float64bits(_nan1) ^ ((1 : GoUInt64)));
        var _in:GoMap<GoFloat64, GoString> = Go.map(_nan1 => ((("a" : GoString))), _nan1 => ((("b" : GoString))), _nan2 => ((("c" : GoString))));
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _enc:Encoder = newEncoder(_b);
        {
            var _err:stdgo.Error = _enc.encode(Go.toInterface(_in));
            if (_err != null) {
                _t.errorf(((("Encode : %v" : GoString))), Go.toInterface(_err));
            };
        };
        var _out:GoMap<GoFloat64, GoString> = Go.map();
        var _dec:Decoder = newDecoder(_b);
        {
            var _err:stdgo.Error = _dec.decode(Go.toInterface(_out));
            if (_err != null) {
                _t.fatalf(((("Decode : %v" : GoString))), Go.toInterface(_err));
            };
        };
        {};
        var _readMap:GoMap<GoFloat64, GoString> -> Slice<T_mapEntry_testMarshalFloatMap_0> = function(_m:GoMap<GoFloat64, GoString>):Slice<T_mapEntry_testMarshalFloatMap_0> {
            var _entries:Slice<T_mapEntry_testMarshalFloatMap_0> = ((null : Slice<T_mapEntry_testMarshalFloatMap_0>));
            for (_k => _v in _m) {
                _entries = (_entries != null ? _entries.__append__(((new T_mapEntry_testMarshalFloatMap_0(stdgo.math.Math.float64bits(_k), _v) : T_mapEntry_testMarshalFloatMap_0))) : new Slice<T_mapEntry_testMarshalFloatMap_0>(((new T_mapEntry_testMarshalFloatMap_0(stdgo.math.Math.float64bits(_k), _v) : T_mapEntry_testMarshalFloatMap_0))));
            };
            stdgo.sort.Sort.slice(Go.toInterface(_entries), function(_i:GoInt, _j:GoInt):Bool {
                var _ei:T_mapEntry_testMarshalFloatMap_0 = ((_entries != null ? _entries[_i] : new T_mapEntry_testMarshalFloatMap_0()) == null ? null : (_entries != null ? _entries[_i] : new T_mapEntry_testMarshalFloatMap_0()).__copy__()), _ej:T_mapEntry_testMarshalFloatMap_0 = ((_entries != null ? _entries[_j] : new T_mapEntry_testMarshalFloatMap_0()) == null ? null : (_entries != null ? _entries[_j] : new T_mapEntry_testMarshalFloatMap_0()).__copy__());
                if (_ei._keyBits != _ej._keyBits) {
                    return _ei._keyBits < _ej._keyBits;
                };
                return _ei._value < _ej._value;
            });
            return _entries;
        };
        var _got:Slice<T_mapEntry_testMarshalFloatMap_0> = _readMap(_out);
        var _want:Slice<T_mapEntry_testMarshalFloatMap_0> = _readMap(_in);
        if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_got), Go.toInterface(_want))) {
            _t.fatalf(((("\nEncode: %v\nDecode: %v" : GoString))), Go.toInterface(_want), Go.toInterface(_got));
        };
    }
@:structInit class T_testDecodePartial_0 {
    public var x : Slice<GoInt> = ((null : Slice<GoInt>));
    public var y : GoString = (("" : GoString));
    public function new(?x:Slice<GoInt>, ?y:GoString) {
        if (x != null) this.x = x;
        if (y != null) this.y = y;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_testDecodePartial_0(x, y);
    }
}
function testDecodePartial(_t:stdgo.testing.Testing.T_):Void {
        {};
        var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _t1:T_testDecodePartial_0 = ((({ x : ((new Slice<GoInt>(((1 : GoInt)), ((2 : GoInt)), ((3 : GoInt))) : Slice<GoInt>)), y : ((("foo" : GoString))) } : T_testDecodePartial_0)) == null ? null : (({ x : ((new Slice<GoInt>(((1 : GoInt)), ((2 : GoInt)), ((3 : GoInt))) : Slice<GoInt>)), y : ((("foo" : GoString))) } : T_testDecodePartial_0)).__copy__());
        var _t2:T_testDecodePartial_0 = ((({ x : ((new Slice<GoInt>(((4 : GoInt)), ((5 : GoInt)), ((6 : GoInt))) : Slice<GoInt>)), y : ((("bar" : GoString))) } : T_testDecodePartial_0)) == null ? null : (({ x : ((new Slice<GoInt>(((4 : GoInt)), ((5 : GoInt)), ((6 : GoInt))) : Slice<GoInt>)), y : ((("bar" : GoString))) } : T_testDecodePartial_0)).__copy__());
        var _enc:Encoder = newEncoder(_buf);
        var _t1start:GoInt = ((0 : GoInt));
        {
            var _err:stdgo.Error = _enc.encode(Go.toInterface(_t1));
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        var _t2start:GoInt = _buf.len();
        {
            var _err:stdgo.Error = _enc.encode(Go.toInterface(_t2));
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        var _data:Slice<GoUInt8> = _buf.bytes();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i <= (_data != null ? _data.length : ((0 : GoInt))), _i++, {
                var _bufr:stdgo.bytes.Bytes.Reader = stdgo.bytes.Bytes.newReader(_data.__slice__(0, _i));
                var _t1b:T_testDecodePartial_0 = new T_testDecodePartial_0(), _t2b:T_testDecodePartial_0 = new T_testDecodePartial_0();
                var _dec:Decoder = newDecoder(_bufr);
                var _err:Error = ((null : stdgo.Error));
                _err = _dec.decode(Go.toInterface(_t1b));
                if (_err == null) {
                    _err = _dec.decode(Go.toInterface(_t2b));
                };
                if (_i == _t1start || _i == _t2start) {
                    if (_err != stdgo.io.Io.eof) {
                        _t.errorf(((("%d/%d: expected io.EOF: %v" : GoString))), Go.toInterface(_i), Go.toInterface((_data != null ? _data.length : ((0 : GoInt)))), Go.toInterface(_err));
                    };
                } else if (_i == (_data != null ? _data.length : ((0 : GoInt)))) {
                    if (_err != null) {
                        _t.errorf(((("%d/%d: unexpected error: %v" : GoString))), Go.toInterface(_i), Go.toInterface((_data != null ? _data.length : ((0 : GoInt)))), Go.toInterface(_err));
                    };
                    if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_t1b), Go.toInterface(_t1))) {
                        _t.fatalf(((("t1 value mismatch: got %v, want %v" : GoString))), Go.toInterface(_t1b), Go.toInterface(_t1));
                    };
                    if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_t2b), Go.toInterface(_t2))) {
                        _t.fatalf(((("t2 value mismatch: got %v, want %v" : GoString))), Go.toInterface(_t2b), Go.toInterface(_t2));
                    };
                } else {
                    if (_err != stdgo.io.Io.errUnexpectedEOF) {
                        _t.errorf(((("%d/%d: expected io.ErrUnexpectedEOF: %v" : GoString))), Go.toInterface(_i), Go.toInterface((_data != null ? _data.length : ((0 : GoInt)))), Go.toInterface(_err));
                    };
                };
            });
        };
    }
function _errorf(_format:GoString, _args:haxe.Rest<AnyInterface>):Void {
        var _args = new Slice<AnyInterface>(..._args);
        _error_(stdgo.fmt.Fmt.errorf(((("gob: " : GoString))) + _format, ..._args.__toArray__()));
    }
function _error_(_err:Error):Void {
        throw Go.toInterface(((new T_gobError(_err) : T_gobError)));
    }
function testGobEncoderField(_t:stdgo.testing.Testing.T_testDecodePartial_0):Void {
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _enc:Encoder = newEncoder(_b);
        var _err:stdgo.Error = _enc.encode(Go.toInterface(((new GobTest0(((17 : GoInt)), ((new ByteStruct(((((("A" : GoString))).code : GoRune))) : ByteStruct))) : GobTest0))));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("encode error:" : GoString)))), Go.toInterface(_err));
        };
        var _dec:Decoder = newDecoder(_b);
        var _x:GobTest0 = new GobTest0();
        _err = _dec.decode(Go.toInterface(_x));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("decode error:" : GoString)))), Go.toInterface(_err));
        };
        if (_x.g._a != ((((("A" : GoString))).code : GoRune))) {
            _t.errorf(((("expected \'A\' got %c" : GoString))), Go.toInterface(_x.g._a));
        };
        _b.reset();
        var _gobber:Gobber = ((((23 : GoInt)) : Gobber));
        var _bgobber:BinaryGobber = ((((24 : GoInt)) : BinaryGobber));
        var _tgobber:TextGobber = ((((25 : GoInt)) : TextGobber));
        _err = _enc.encode(Go.toInterface(((new GobTest3(((17 : GoInt)), Go.pointer(_gobber), Go.pointer(_bgobber), Go.pointer(_tgobber)) : GobTest3))));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("encode error:" : GoString)))), Go.toInterface(_err));
        };
        var _y:GobTest3 = new GobTest3();
        _err = _dec.decode(Go.toInterface(_y));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("decode error:" : GoString)))), Go.toInterface(_err));
        };
        if (((_y.g.value != ((23 : GoInt))) || (_y.b.value != ((24 : GoInt)))) || (_y.t.value != ((25 : GoInt)))) {
            _t.errorf(((("expected \'23 got %d" : GoString))), Go.toInterface(_y.g.value));
        };
    }
function testGobEncoderValueField(_t:stdgo.testing.Testing.T_testDecodePartial_0):Void {
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _enc:Encoder = newEncoder(_b);
        var _err:stdgo.Error = _enc.encode(Go.toInterface(((new GobTestValueEncDec(((17 : GoInt)), ((new StringStruct(((("HIJKL" : GoString)))) : StringStruct))) : GobTestValueEncDec))));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("encode error:" : GoString)))), Go.toInterface(_err));
        };
        var _dec:Decoder = newDecoder(_b);
        var _x:GobTestValueEncDec = new GobTestValueEncDec();
        _err = _dec.decode(Go.toInterface(_x));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("decode error:" : GoString)))), Go.toInterface(_err));
        };
        if (_x.g._s != ((("HIJKL" : GoString)))) {
            _t.errorf(((("expected `HIJKL` got %s" : GoString))), Go.toInterface(_x.g._s));
        };
    }
function testGobEncoderIndirectField(_t:stdgo.testing.Testing.T_testDecodePartial_0):Void {
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _enc:Encoder = newEncoder(_b);
        var _s:StringStruct = ((new StringStruct(((("HIJKL" : GoString)))) : StringStruct));
        var _sp:StringStruct = _s;
        var _err:stdgo.Error = _enc.encode(Go.toInterface(((new GobTestIndirectEncDec(((17 : GoInt)), _sp) : GobTestIndirectEncDec))));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("encode error:" : GoString)))), Go.toInterface(_err));
        };
        var _dec:Decoder = newDecoder(_b);
        var _x:GobTestIndirectEncDec = new GobTestIndirectEncDec();
        _err = _dec.decode(Go.toInterface(_x));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("decode error:" : GoString)))), Go.toInterface(_err));
        };
        if ((_x.g)._s != ((("HIJKL" : GoString)))) {
            _t.errorf(((("expected `HIJKL` got %s" : GoString))), Go.toInterface((_x.g)._s));
        };
    }
function testGobEncoderArrayField(_t:stdgo.testing.Testing.T_testDecodePartial_0):Void {
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _enc:Encoder = newEncoder(_b);
        var _a:GobTestArrayEncDec = new GobTestArrayEncDec();
        _a.x = ((17 : GoInt));
        for (_i => _ in _a.a._a) {
            if (_a.a._a != null) _a.a._a[_i] = ((_i : GoByte));
        };
        var _err:stdgo.Error = _enc.encode(Go.toInterface(_a));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("encode error:" : GoString)))), Go.toInterface(_err));
        };
        var _dec:Decoder = newDecoder(_b);
        var _x:GobTestArrayEncDec = new GobTestArrayEncDec();
        _err = _dec.decode(Go.toInterface(_x));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("decode error:" : GoString)))), Go.toInterface(_err));
        };
        for (_i => _v in _x.a._a) {
            if (_v != ((_i : GoByte))) {
                _t.errorf(((("expected %x got %x" : GoString))), Go.toInterface(((_i : GoByte))), Go.toInterface(_v));
                break;
            };
        };
    }
function testGobEncoderIndirectArrayField(_t:stdgo.testing.Testing.T_testDecodePartial_0):Void {
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _enc:Encoder = newEncoder(_b);
        var _a:GobTestIndirectArrayEncDec = new GobTestIndirectArrayEncDec();
        _a.x = ((17 : GoInt));
        var _array:ArrayStruct = new ArrayStruct();
        var _ap:ArrayStruct = _array;
        var _app:ArrayStruct = _ap;
        _a.a = _app;
        for (_i => _ in _array._a) {
            if (_array._a != null) _array._a[_i] = ((_i : GoByte));
        };
        var _err:stdgo.Error = _enc.encode(Go.toInterface(_a));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("encode error:" : GoString)))), Go.toInterface(_err));
        };
        var _dec:Decoder = newDecoder(_b);
        var _x:GobTestIndirectArrayEncDec = new GobTestIndirectArrayEncDec();
        _err = _dec.decode(Go.toInterface(_x));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("decode error:" : GoString)))), Go.toInterface(_err));
        };
        for (_i => _v in (_x.a)._a) {
            if (_v != ((_i : GoByte))) {
                _t.errorf(((("expected %x got %x" : GoString))), Go.toInterface(((_i : GoByte))), Go.toInterface(_v));
                break;
            };
        };
    }
function testGobEncoderFieldsOfDifferentType(_t:stdgo.testing.Testing.T_testDecodePartial_0):Void {
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _enc:Encoder = newEncoder(_b);
        var _err:stdgo.Error = _enc.encode(Go.toInterface(((new GobTest1(((17 : GoInt)), ((new StringStruct(((("ABC" : GoString)))) : StringStruct))) : GobTest1))));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("encode error:" : GoString)))), Go.toInterface(_err));
        };
        var _dec:Decoder = newDecoder(_b);
        var _x:GobTest0 = new GobTest0();
        _err = _dec.decode(Go.toInterface(_x));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("decode error:" : GoString)))), Go.toInterface(_err));
        };
        if (_x.g._a != ((((("A" : GoString))).code : GoRune))) {
            _t.errorf(((("expected \'A\' got %c" : GoString))), Go.toInterface(_x.g._a));
        };
        _b.reset();
        _err = _enc.encode(Go.toInterface(((new GobTest0(((17 : GoInt)), ((new ByteStruct(((((("X" : GoString))).code : GoRune))) : ByteStruct))) : GobTest0))));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("encode error:" : GoString)))), Go.toInterface(_err));
        };
        var _y:GobTest1 = new GobTest1();
        _err = _dec.decode(Go.toInterface(_y));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("decode error:" : GoString)))), Go.toInterface(_err));
        };
        if (_y.g._s != ((("XYZ" : GoString)))) {
            _t.fatalf(((("expected `XYZ` got %q" : GoString))), Go.toInterface(_y.g._s));
        };
    }
function testGobEncoderValueEncoder(_t:stdgo.testing.Testing.T_testDecodePartial_0):Void {
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _enc:Encoder = newEncoder(_b);
        var _err:stdgo.Error = _enc.encode(Go.toInterface(((new GobTest4(((17 : GoInt)), ((((("hello" : GoString))) : ValueGobber)), ((((("Καλημέρα" : GoString))) : BinaryValueGobber)), ((((("こんにちは" : GoString))) : TextValueGobber))) : GobTest4))));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("encode error:" : GoString)))), Go.toInterface(_err));
        };
        var _dec:Decoder = newDecoder(_b);
        var _x:GobTest5 = new GobTest5();
        _err = _dec.decode(Go.toInterface(_x));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("decode error:" : GoString)))), Go.toInterface(_err));
        };
        if (((_x.v.value != ((("hello" : GoString)))) || (_x.bv.value != ((("Καλημέρα" : GoString))))) || (_x.tv.value != ((("こんにちは" : GoString))))) {
            _t.errorf(((("expected `hello` got %s" : GoString))), Go.toInterface(_x.v.value));
        };
    }
function testGobEncoderValueThenPointer(_t:stdgo.testing.Testing.T_testDecodePartial_0):Void {
        var _v:ValueGobber = ((((("forty-two" : GoString))) : ValueGobber));
        var _w:ValueGobber = ((((("six-by-nine" : GoString))) : ValueGobber));
        var _bv:BinaryValueGobber = ((((("1nanocentury" : GoString))) : BinaryValueGobber));
        var _bw:BinaryValueGobber = ((((("πseconds" : GoString))) : BinaryValueGobber));
        var _tv:TextValueGobber = ((((("gravitationalacceleration" : GoString))) : TextValueGobber));
        var _tw:TextValueGobber = ((((("π²ft/s²" : GoString))) : TextValueGobber));
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _enc:Encoder = newEncoder(_b);
        {
            var _err:stdgo.Error = _enc.encode(Go.toInterface(((new GobTest6(((42 : GoInt)), _v, Go.pointer(_w), _bv, Go.pointer(_bw), _tv, Go.pointer(_tw)) : GobTest6))));
            if (_err != null) {
                _t.fatal(Go.toInterface(((("encode error:" : GoString)))), Go.toInterface(_err));
            };
        };
        var _dec:Decoder = newDecoder(_b);
        var _x:GobTest6 = new GobTest6();
        {
            var _err:stdgo.Error = _dec.decode(Go.toInterface(_x));
            if (_err != null) {
                _t.fatal(Go.toInterface(((("decode error:" : GoString)))), Go.toInterface(_err));
            };
        };
        {
            var _got:ValueGobber = _x.v, _want:ValueGobber = _v;
            if (_got != _want) {
                _t.errorf(((("v = %q, want %q" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _got:Pointer<ValueGobber> = _x.w, _want:ValueGobber = _w;
            if (_got == null) {
                _t.errorf(((("w = nil, want %q" : GoString))), Go.toInterface(_want));
            } else if (_got.value != _want) {
                _t.errorf(((("w = %q, want %q" : GoString))), Go.toInterface(_got.value), Go.toInterface(_want));
            };
        };
        {
            var _got:BinaryValueGobber = _x.bv, _want:BinaryValueGobber = _bv;
            if (_got != _want) {
                _t.errorf(((("bv = %q, want %q" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _got:Pointer<BinaryValueGobber> = _x.bw, _want:BinaryValueGobber = _bw;
            if (_got == null) {
                _t.errorf(((("bw = nil, want %q" : GoString))), Go.toInterface(_want));
            } else if (_got.value != _want) {
                _t.errorf(((("bw = %q, want %q" : GoString))), Go.toInterface(_got.value), Go.toInterface(_want));
            };
        };
        {
            var _got:TextValueGobber = _x.tv, _want:TextValueGobber = _tv;
            if (_got != _want) {
                _t.errorf(((("tv = %q, want %q" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _got:Pointer<TextValueGobber> = _x.tw, _want:TextValueGobber = _tw;
            if (_got == null) {
                _t.errorf(((("tw = nil, want %q" : GoString))), Go.toInterface(_want));
            } else if (_got.value != _want) {
                _t.errorf(((("tw = %q, want %q" : GoString))), Go.toInterface(_got.value), Go.toInterface(_want));
            };
        };
    }
function testGobEncoderPointerThenValue(_t:stdgo.testing.Testing.T_testDecodePartial_0):Void {
        var _v:ValueGobber = ((((("forty-two" : GoString))) : ValueGobber));
        var _w:ValueGobber = ((((("six-by-nine" : GoString))) : ValueGobber));
        var _bv:BinaryValueGobber = ((((("1nanocentury" : GoString))) : BinaryValueGobber));
        var _bw:BinaryValueGobber = ((((("πseconds" : GoString))) : BinaryValueGobber));
        var _tv:TextValueGobber = ((((("gravitationalacceleration" : GoString))) : TextValueGobber));
        var _tw:TextValueGobber = ((((("π²ft/s²" : GoString))) : TextValueGobber));
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _enc:Encoder = newEncoder(_b);
        {
            var _err:stdgo.Error = _enc.encode(Go.toInterface(((new GobTest7(((42 : GoInt)), Go.pointer(_v), _w, Go.pointer(_bv), _bw, Go.pointer(_tv), _tw) : GobTest7))));
            if (_err != null) {
                _t.fatal(Go.toInterface(((("encode error:" : GoString)))), Go.toInterface(_err));
            };
        };
        var _dec:Decoder = newDecoder(_b);
        var _x:GobTest7 = new GobTest7();
        {
            var _err:stdgo.Error = _dec.decode(Go.toInterface(_x));
            if (_err != null) {
                _t.fatal(Go.toInterface(((("decode error:" : GoString)))), Go.toInterface(_err));
            };
        };
        {
            var _got:Pointer<ValueGobber> = _x.v, _want:ValueGobber = _v;
            if (_got == null) {
                _t.errorf(((("v = nil, want %q" : GoString))), Go.toInterface(_want));
            } else if (_got.value != _want) {
                _t.errorf(((("v = %q, want %q" : GoString))), Go.toInterface(_got.value), Go.toInterface(_want));
            };
        };
        {
            var _got:ValueGobber = _x.w, _want:ValueGobber = _w;
            if (_got != _want) {
                _t.errorf(((("w = %q, want %q" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _got:Pointer<BinaryValueGobber> = _x.bv, _want:BinaryValueGobber = _bv;
            if (_got == null) {
                _t.errorf(((("bv = nil, want %q" : GoString))), Go.toInterface(_want));
            } else if (_got.value != _want) {
                _t.errorf(((("bv = %q, want %q" : GoString))), Go.toInterface(_got.value), Go.toInterface(_want));
            };
        };
        {
            var _got:BinaryValueGobber = _x.bw, _want:BinaryValueGobber = _bw;
            if (_got != _want) {
                _t.errorf(((("bw = %q, want %q" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
        {
            var _got:Pointer<TextValueGobber> = _x.tv, _want:TextValueGobber = _tv;
            if (_got == null) {
                _t.errorf(((("tv = nil, want %q" : GoString))), Go.toInterface(_want));
            } else if (_got.value != _want) {
                _t.errorf(((("tv = %q, want %q" : GoString))), Go.toInterface(_got.value), Go.toInterface(_want));
            };
        };
        {
            var _got:TextValueGobber = _x.tw, _want:TextValueGobber = _tw;
            if (_got != _want) {
                _t.errorf(((("tw = %q, want %q" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
            };
        };
    }
function testGobEncoderFieldTypeError(_t:stdgo.testing.Testing.T_testDecodePartial_0):Void {
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _enc:Encoder = newEncoder(_b);
        var _err:stdgo.Error = _enc.encode(Go.toInterface(((new GobTest1(((17 : GoInt)), ((new StringStruct(((("ABC" : GoString)))) : StringStruct))) : GobTest1))));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("encode error:" : GoString)))), Go.toInterface(_err));
        };
        var _dec:Decoder = newDecoder(_b);
        var _x:GobTest2 = ((new GobTest2() : GobTest2));
        _err = _dec.decode(Go.toInterface(_x));
        if (_err == null) {
            _t.fatal(Go.toInterface(((("expected decode error for mismatched fields (encoder to non-decoder)" : GoString)))));
        };
        if (!stdgo.strings.Strings.contains(_err.error(), ((("type" : GoString))))) {
            _t.fatal(Go.toInterface(((("expected type error; got" : GoString)))), Go.toInterface(_err));
        };
        _b.reset();
        _err = _enc.encode(Go.toInterface(((new GobTest2(((17 : GoInt)), ((("ABC" : GoString)))) : GobTest2))));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("encode error:" : GoString)))), Go.toInterface(_err));
        };
        var _y:GobTest1 = ((new GobTest1() : GobTest1));
        _err = _dec.decode(Go.toInterface(_y));
        if (_err == null) {
            _t.fatal(Go.toInterface(((("expected decode error for mismatched fields (non-encoder to decoder)" : GoString)))));
        };
        if (!stdgo.strings.Strings.contains(_err.error(), ((("type" : GoString))))) {
            _t.fatal(Go.toInterface(((("expected type error; got" : GoString)))), Go.toInterface(_err));
        };
    }
function testGobEncoderStructSingleton(_t:stdgo.testing.Testing.T_testDecodePartial_0):Void {
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _enc:Encoder = newEncoder(_b);
        var _err:stdgo.Error = _enc.encode(Go.toInterface(((new ByteStruct(((((("A" : GoString))).code : GoRune))) : ByteStruct))));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("encode error:" : GoString)))), Go.toInterface(_err));
        };
        var _dec:Decoder = newDecoder(_b);
        var _x:ByteStruct = new ByteStruct();
        _err = _dec.decode(Go.toInterface(_x));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("decode error:" : GoString)))), Go.toInterface(_err));
        };
        if (_x._a != ((((("A" : GoString))).code : GoRune))) {
            _t.errorf(((("expected \'A\' got %c" : GoString))), Go.toInterface(_x._a));
        };
    }
function testGobEncoderNonStructSingleton(_t:stdgo.testing.Testing.T_testDecodePartial_0):Void {
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _enc:Encoder = newEncoder(_b);
        var _g:Gobber = ((1234 : GoInt));
        var _err:stdgo.Error = _enc.encode(Go.toInterface(Go.pointer(_g)));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("encode error:" : GoString)))), Go.toInterface(_err));
        };
        var _dec:Decoder = newDecoder(_b);
        var _x:Gobber = new Gobber();
        _err = _dec.decode(Go.toInterface(Go.pointer(_x)));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("decode error:" : GoString)))), Go.toInterface(_err));
        };
        if (_x != ((1234 : GoInt))) {
            _t.errorf(((("expected 1234 got %d" : GoString))), Go.toInterface(_x));
        };
    }
function testGobEncoderIgnoreStructField(_t:stdgo.testing.Testing.T_testDecodePartial_0):Void {
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _enc:Encoder = newEncoder(_b);
        var _err:stdgo.Error = _enc.encode(Go.toInterface(((new GobTest0(((17 : GoInt)), ((new ByteStruct(((((("A" : GoString))).code : GoRune))) : ByteStruct))) : GobTest0))));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("encode error:" : GoString)))), Go.toInterface(_err));
        };
        var _dec:Decoder = newDecoder(_b);
        var _x:GobTestIgnoreEncoder = new GobTestIgnoreEncoder();
        _err = _dec.decode(Go.toInterface(_x));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("decode error:" : GoString)))), Go.toInterface(_err));
        };
        if (_x.x != ((17 : GoInt))) {
            _t.errorf(((("expected 17 got %c" : GoString))), Go.toInterface(_x.x));
        };
    }
function testGobEncoderIgnoreNonStructField(_t:stdgo.testing.Testing.T_testDecodePartial_0):Void {
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _enc:Encoder = newEncoder(_b);
        var _gobber:Gobber = ((((23 : GoInt)) : Gobber));
        var _bgobber:BinaryGobber = ((((24 : GoInt)) : BinaryGobber));
        var _tgobber:TextGobber = ((((25 : GoInt)) : TextGobber));
        var _err:stdgo.Error = _enc.encode(Go.toInterface(((new GobTest3(((17 : GoInt)), Go.pointer(_gobber), Go.pointer(_bgobber), Go.pointer(_tgobber)) : GobTest3))));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("encode error:" : GoString)))), Go.toInterface(_err));
        };
        var _dec:Decoder = newDecoder(_b);
        var _x:GobTestIgnoreEncoder = new GobTestIgnoreEncoder();
        _err = _dec.decode(Go.toInterface(_x));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("decode error:" : GoString)))), Go.toInterface(_err));
        };
        if (_x.x != ((17 : GoInt))) {
            _t.errorf(((("expected 17 got %c" : GoString))), Go.toInterface(_x.x));
        };
    }
function testGobEncoderIgnoreNilEncoder(_t:stdgo.testing.Testing.T_testDecodePartial_0):Void {
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _enc:Encoder = newEncoder(_b);
        var _err:stdgo.Error = _enc.encode(Go.toInterface((({ x : ((18 : GoInt)), g : ((null : ByteStruct)) } : GobTest0))));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("encode error:" : GoString)))), Go.toInterface(_err));
        };
        var _dec:Decoder = newDecoder(_b);
        var _x:GobTest0 = new GobTest0();
        _err = _dec.decode(Go.toInterface(_x));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("decode error:" : GoString)))), Go.toInterface(_err));
        };
        if (_x.x != ((18 : GoInt))) {
            _t.errorf(((("expected x.X = 18, got %v" : GoString))), Go.toInterface(_x.x));
        };
        if (_x.g != null) {
            _t.errorf(((("expected x.G = nil, got %v" : GoString))), Go.toInterface(_x.g));
        };
    }
function testGobEncoderExtraIndirect(_t:stdgo.testing.Testing.T_testDecodePartial_0):Void {
        var _gdb:T_gobDecoderBug0 = ((new T_gobDecoderBug0(((("foo" : GoString))), ((("bar" : GoString)))) : T_gobDecoderBug0));
        var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _e:Encoder = newEncoder(_buf);
        {
            var _err:stdgo.Error = _e.encode(Go.toInterface(_gdb));
            if (_err != null) {
                _t.fatalf(((("encode: %v" : GoString))), Go.toInterface(_err));
            };
        };
        var _d:Decoder = newDecoder(_buf);
        var _got:T_gobDecoderBug0 = ((null : T_gobDecoderBug0));
        {
            var _err:stdgo.Error = _d.decode(Go.toInterface(_got));
            if (_err != null) {
                _t.fatalf(((("decode: %v" : GoString))), Go.toInterface(_err));
            };
        };
        if ((_got._foo != _gdb._foo) || (_got._bar != _gdb._bar)) {
            _t.errorf(((("got = %q, want %q" : GoString))), Go.toInterface(_got), Go.toInterface(_gdb));
        };
    }
function testGobEncodeIsZero(_t:stdgo.testing.Testing.T_testDecodePartial_0):Void {
        var _x:T_isZeroBug = ((new T_isZeroBug((stdgo.time.Time.unix(((1e+09 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((1e+09 : GoInt64)), ((0 : GoInt64))).__copy__()), ((("hello" : GoString))), ((-55 : GoInt)), ((new GoArray<GoUInt8>(((1 : GoUInt8)), ((2 : GoUInt8))) : T_isZeroBugArray)), ((new T_isZeroBugInterface() : T_isZeroBugInterface))) : T_isZeroBug));
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _enc:Encoder = newEncoder(_b);
        var _err:stdgo.Error = _enc.encode(Go.toInterface(_x));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("encode:" : GoString)))), Go.toInterface(_err));
        };
        var _y:T_isZeroBug = new T_isZeroBug();
        var _dec:Decoder = newDecoder(_b);
        _err = _dec.decode(Go.toInterface(_y));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("decode:" : GoString)))), Go.toInterface(_err));
        };
        if (_x != _y) {
            _t.fatalf(((("%v != %v" : GoString))), Go.toInterface(_x), Go.toInterface(_y));
        };
    }
function testGobEncodePtrError(_t:stdgo.testing.Testing.T_testDecodePartial_0):Void {
        var _err:Error = ((null : stdgo.Error));
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _enc:Encoder = newEncoder(_b);
        _err = _enc.encode(Go.toInterface(_err));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("encode:" : GoString)))), Go.toInterface(_err));
        };
        var _dec:Decoder = newDecoder(_b);
        var _err2:stdgo.Error = stdgo.fmt.Fmt.errorf(((("foo" : GoString))));
        _err = _dec.decode(Go.toInterface(_err2));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("decode:" : GoString)))), Go.toInterface(_err));
        };
        if (_err2 != null) {
            _t.fatalf(((("expected nil, got %v" : GoString))), Go.toInterface(_err2));
        };
    }
function testNetIP(_t:stdgo.testing.Testing.T_testDecodePartial_0):Void {
        var _enc:Slice<GoUInt8> = ((new Slice<GoUInt8>(((7 : GoUInt8)), ((10 : GoUInt8)), ((0 : GoUInt8)), ((4 : GoUInt8)), ((1 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8)), ((4 : GoUInt8))) : Slice<GoUInt8>));
        var _ip:stdgo.net.Net.IP = new stdgo.net.Net.IP();
        var _err:stdgo.Error = newDecoder(stdgo.bytes.Bytes.newReader(_enc)).decode(Go.toInterface(_ip));
        if (_err != null) {
            _t.fatalf(((("decode: %v" : GoString))), Go.toInterface(_err));
        };
        if (((_ip.toString() : GoString)) != ((("1.2.3.4" : GoString)))) {
            _t.errorf(((("decoded to %v, want 1.2.3.4" : GoString))), Go.toInterface(((_ip.toString() : GoString))));
        };
    }
function _benchmarkEndToEnd(_b:stdgo.testing.Testing.B, _ctor:() -> AnyInterface, _pipe:() -> { var _0 : stdgo.io.Io.Reader; var _1 : stdgo.io.Io.Writer; var _2 : Error; }):Void {
        _b.runParallel(function(_pb:stdgo.testing.Testing.PB):Void {
            var __tmp__ = _pipe(), _r:stdgo.io.Io.Reader = __tmp__._0, _w:stdgo.io.Io.Writer = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                _b.fatal(Go.toInterface(((("can\'t get pipe:" : GoString)))), Go.toInterface(_err));
            };
            var _v:AnyInterface = Go.toInterface(_ctor());
            var _enc:Encoder = newEncoder(_w);
            var _dec:Decoder = newDecoder(_r);
            while (_pb.next()) {
                {
                    var _err:stdgo.Error = _enc.encode(Go.toInterface(_v));
                    if (_err != null) {
                        _b.fatal(Go.toInterface(((("encode error:" : GoString)))), Go.toInterface(_err));
                    };
                };
                {
                    var _err:stdgo.Error = _dec.decode(Go.toInterface(_v));
                    if (_err != null) {
                        _b.fatal(Go.toInterface(((("decode error:" : GoString)))), Go.toInterface(_err));
                    };
                };
            };
        });
    }
function benchmarkEndToEndPipe(_b:stdgo.testing.Testing.B):Void {
        _benchmarkEndToEnd(_b, function():AnyInterface {
            return Go.toInterface(((new Bench(((7 : GoInt)), ((3.2 : GoFloat64)), ((("now is the time" : GoString))), stdgo.bytes.Bytes.repeat(((((("for all good men" : GoString))) : Slice<GoByte>)), ((100 : GoInt)))) : Bench)));
        }, function():{ var _0 : stdgo.io.Io.Reader; var _1 : stdgo.io.Io.Writer; var _2 : Error; } {
            var _r:stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader)), _w:stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer)), _err:Error = ((null : stdgo.Error));
            {
                var __tmp__ = stdgo.os.Os.pipe();
                _r = __tmp__._0;
                _w = __tmp__._1;
                _err = __tmp__._2;
            };
            return { _0 : _r, _1 : _w, _2 : _err };
        });
    }
function benchmarkEndToEndByteBuffer(_b:stdgo.testing.Testing.B):Void {
        _benchmarkEndToEnd(_b, function():AnyInterface {
            return Go.toInterface(((new Bench(((7 : GoInt)), ((3.2 : GoFloat64)), ((("now is the time" : GoString))), stdgo.bytes.Bytes.repeat(((((("for all good men" : GoString))) : Slice<GoByte>)), ((100 : GoInt)))) : Bench)));
        }, function():{ var _0 : stdgo.io.Io.Reader; var _1 : stdgo.io.Io.Writer; var _2 : Error; } {
            var _r:stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader)), _w:stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer)), _err:Error = ((null : stdgo.Error));
            var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
            return { _0 : _buf, _1 : _buf, _2 : ((null : stdgo.Error)) };
        });
    }
function benchmarkEndToEndSliceByteBuffer(_b:stdgo.testing.Testing.B):Void {
        _benchmarkEndToEnd(_b, function():AnyInterface {
            var _v:Bench = ((new Bench(((7 : GoInt)), ((3.2 : GoFloat64)), ((("now is the time" : GoString))), ((null : Slice<GoUInt8>))) : Bench));
            register(Go.toInterface(_v));
            var _arr:Slice<AnyInterface> = new Slice<AnyInterface>(...[for (i in 0 ... ((((100 : GoInt)) : GoInt)).toBasic()) ((null : AnyInterface))]);
            for (_i => _ in _arr) {
                if (_arr != null) _arr[_i] = Go.toInterface(_v);
            };
            return Go.toInterface(_arr);
        }, function():{ var _0 : stdgo.io.Io.Reader; var _1 : stdgo.io.Io.Writer; var _2 : Error; } {
            var _r:stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader)), _w:stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer)), _err:Error = ((null : stdgo.Error));
            var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
            return { _0 : _buf, _1 : _buf, _2 : ((null : stdgo.Error)) };
        });
    }
function testCountEncodeMallocs(_t:stdgo.testing.Testing.T_testDecodePartial_0):Void {
        if (stdgo.testing.Testing.short()) {
            _t.skip(Go.toInterface(((("skipping malloc count in short mode" : GoString)))));
        };
        if (stdgo.runtime.Runtime.gomaxprocs(((0 : GoInt))) > ((1 : GoInt))) {
            _t.skip(Go.toInterface(((("skipping; GOMAXPROCS>1" : GoString)))));
        };
        {};
        var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _enc:Encoder = newEncoder(_buf);
        var _bench:Bench = ((new Bench(((7 : GoInt)), ((3.2 : GoFloat64)), ((("now is the time" : GoString))), ((((("for all good men" : GoString))) : Slice<GoByte>))) : Bench));
        var _allocs:GoFloat64 = stdgo.testing.Testing.allocsPerRun(((1000 : GoInt)), function():Void {
            var _err:stdgo.Error = _enc.encode(Go.toInterface(_bench));
            if (_err != null) {
                _t.fatal(Go.toInterface(((("encode:" : GoString)))), Go.toInterface(_err));
            };
        });
        if (_allocs != ((0 : GoFloat64))) {
            _t.fatalf(((("mallocs per encode of type Bench: %v; wanted 0\n" : GoString))), Go.toInterface(_allocs));
        };
    }
function testCountDecodeMallocs(_t:stdgo.testing.Testing.T_testDecodePartial_0):Void {
        if (stdgo.testing.Testing.short()) {
            _t.skip(Go.toInterface(((("skipping malloc count in short mode" : GoString)))));
        };
        if (stdgo.runtime.Runtime.gomaxprocs(((0 : GoInt))) > ((1 : GoInt))) {
            _t.skip(Go.toInterface(((("skipping; GOMAXPROCS>1" : GoString)))));
        };
        {};
        var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _enc:Encoder = newEncoder(_buf);
        var _bench:Bench = ((new Bench(((7 : GoInt)), ((3.2 : GoFloat64)), ((("now is the time" : GoString))), ((((("for all good men" : GoString))) : Slice<GoByte>))) : Bench));
        stdgo.testing.Testing.allocsPerRun(((1000 : GoInt)), function():Void {
            var _err:stdgo.Error = _enc.encode(Go.toInterface(_bench));
            if (_err != null) {
                _t.fatal(Go.toInterface(((("encode:" : GoString)))), Go.toInterface(_err));
            };
        });
        var _dec:Decoder = newDecoder(_buf);
        var _allocs:GoFloat64 = stdgo.testing.Testing.allocsPerRun(((1000 : GoInt)), function():Void {
            {
                var __tmp__ = ((new Bench() : Bench));
                _bench.a = __tmp__.a;
                _bench.b = __tmp__.b;
                _bench.c = __tmp__.c;
                _bench.d = __tmp__.d;
            };
            var _err:stdgo.Error = _dec.decode(Go.toInterface(_bench));
            if (_err != null) {
                _t.fatal(Go.toInterface(((("decode:" : GoString)))), Go.toInterface(_err));
            };
        });
        if (_allocs != ((3 : GoFloat64))) {
            _t.fatalf(((("mallocs per decode of type Bench: %v; wanted 3\n" : GoString))), Go.toInterface(_allocs));
        };
    }
function _benchmarkEncodeSlice(_b:stdgo.testing.Testing.B, _a:AnyInterface):Void {
        _b.resetTimer();
        _b.runParallel(function(_pb:stdgo.testing.Testing.PB):Void {
            var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
            var _enc:Encoder = newEncoder(_buf);
            while (_pb.next()) {
                _buf.reset();
                var _err:stdgo.Error = _enc.encode(Go.toInterface(_a));
                if (_err != null) {
                    _b.fatal(Go.toInterface(_err));
                };
            };
        });
    }
function benchmarkEncodeComplex128Slice(_b:stdgo.testing.Testing.B):Void {
        var _a:Slice<GoComplex128> = new Slice<GoComplex128>(...[for (i in 0 ... ((((1000 : GoInt)) : GoInt)).toBasic()) new GoComplex128(0, 0)]);
        for (_i => _ in _a) {
            if (_a != null) _a[_i] = (((1.2 : GoFloat64)) + new GoComplex128(0, 3.4));
        };
        _benchmarkEncodeSlice(_b, Go.toInterface(_a));
    }
function benchmarkEncodeFloat64Slice(_b:stdgo.testing.Testing.B):Void {
        var _a:Slice<GoFloat64> = new Slice<GoFloat64>(...[for (i in 0 ... ((((1000 : GoInt)) : GoInt)).toBasic()) ((0 : GoFloat64))]);
        for (_i => _ in _a) {
            if (_a != null) _a[_i] = ((12300 : GoFloat64));
        };
        _benchmarkEncodeSlice(_b, Go.toInterface(_a));
    }
function benchmarkEncodeInt32Slice(_b:stdgo.testing.Testing.B):Void {
        var _a:Slice<GoInt32> = new Slice<GoInt32>(...[for (i in 0 ... ((((1000 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt32))]);
        for (_i => _ in _a) {
            if (_a != null) _a[_i] = (((_i * ((100 : GoInt))) : GoInt32));
        };
        _benchmarkEncodeSlice(_b, Go.toInterface(_a));
    }
function benchmarkEncodeStringSlice(_b:stdgo.testing.Testing.B):Void {
        var _a:Slice<GoString> = new Slice<GoString>(...[for (i in 0 ... ((((1000 : GoInt)) : GoInt)).toBasic()) (("" : GoString))]);
        for (_i => _ in _a) {
            if (_a != null) _a[_i] = ((("now is the time" : GoString)));
        };
        _benchmarkEncodeSlice(_b, Go.toInterface(_a));
    }
function benchmarkEncodeInterfaceSlice(_b:stdgo.testing.Testing.B):Void {
        var _a:Slice<AnyInterface> = new Slice<AnyInterface>(...[for (i in 0 ... ((((1000 : GoInt)) : GoInt)).toBasic()) ((null : AnyInterface))]);
        for (_i => _ in _a) {
            if (_a != null) _a[_i] = Go.toInterface(((("now is the time" : GoString))));
        };
        _benchmarkEncodeSlice(_b, Go.toInterface(_a));
    }
function _benchmarkDecodeSlice(_b:stdgo.testing.Testing.B, _a:AnyInterface):Void {
        var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _enc:Encoder = newEncoder(_buf);
        var _err:stdgo.Error = _enc.encode(Go.toInterface(_a));
        if (_err != null) {
            _b.fatal(Go.toInterface(_err));
        };
        var _ra:stdgo.reflect.Reflect.Value = (stdgo.reflect.Reflect.valueOf(Go.toInterface(_a)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_a)).__copy__());
        var _rt:stdgo.reflect.Reflect.Type = _ra.type();
        _b.resetTimer();
        _b.runParallel(function(_pb:stdgo.testing.Testing.PB):Void {
            var _rp:stdgo.reflect.Reflect.Value = (stdgo.reflect.Reflect.new_(_rt) == null ? null : stdgo.reflect.Reflect.new_(_rt).__copy__());
            _rp.elem().set((stdgo.reflect.Reflect.makeSlice(_rt, _ra.len(), _ra.cap_()) == null ? null : stdgo.reflect.Reflect.makeSlice(_rt, _ra.len(), _ra.cap_()).__copy__()));
            var _p:AnyInterface = Go.toInterface(_rp.interface_());
            var _bbuf:T_benchmarkBuf = ((({ _data : _buf.bytes(), _offset : 0 } : T_benchmarkBuf)) == null ? null : (({ _data : _buf.bytes(), _offset : 0 } : T_benchmarkBuf)).__copy__());
            while (_pb.next()) {
                _bbuf._reset();
                var _dec:Decoder = newDecoder(_bbuf);
                var _err:stdgo.Error = _dec.decode(Go.toInterface(_p));
                if (_err != null) {
                    _b.fatal(Go.toInterface(_err));
                };
            };
        });
    }
function benchmarkDecodeComplex128Slice(_b:stdgo.testing.Testing.B):Void {
        var _a:Slice<GoComplex128> = new Slice<GoComplex128>(...[for (i in 0 ... ((((1000 : GoInt)) : GoInt)).toBasic()) new GoComplex128(0, 0)]);
        for (_i => _ in _a) {
            if (_a != null) _a[_i] = (((1.2 : GoFloat64)) + new GoComplex128(0, 3.4));
        };
        _benchmarkDecodeSlice(_b, Go.toInterface(_a));
    }
function benchmarkDecodeFloat64Slice(_b:stdgo.testing.Testing.B):Void {
        var _a:Slice<GoFloat64> = new Slice<GoFloat64>(...[for (i in 0 ... ((((1000 : GoInt)) : GoInt)).toBasic()) ((0 : GoFloat64))]);
        for (_i => _ in _a) {
            if (_a != null) _a[_i] = ((12300 : GoFloat64));
        };
        _benchmarkDecodeSlice(_b, Go.toInterface(_a));
    }
function benchmarkDecodeInt32Slice(_b:stdgo.testing.Testing.B):Void {
        var _a:Slice<GoInt32> = new Slice<GoInt32>(...[for (i in 0 ... ((((1000 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt32))]);
        for (_i => _ in _a) {
            if (_a != null) _a[_i] = ((1234 : GoInt32));
        };
        _benchmarkDecodeSlice(_b, Go.toInterface(_a));
    }
function benchmarkDecodeStringSlice(_b:stdgo.testing.Testing.B):Void {
        var _a:Slice<GoString> = new Slice<GoString>(...[for (i in 0 ... ((((1000 : GoInt)) : GoInt)).toBasic()) (("" : GoString))]);
        for (_i => _ in _a) {
            if (_a != null) _a[_i] = ((("now is the time" : GoString)));
        };
        _benchmarkDecodeSlice(_b, Go.toInterface(_a));
    }
function benchmarkDecodeStringsSlice(_b:stdgo.testing.Testing.B):Void {
        var _a:Slice<Slice<GoString>> = new Slice<Slice<GoString>>(...[for (i in 0 ... ((((1000 : GoInt)) : GoInt)).toBasic()) ((null : Slice<GoString>))]);
        for (_i => _ in _a) {
            if (_a != null) _a[_i] = ((new Slice<GoString>(((("now is the time" : GoString)))) : Slice<GoString>));
        };
        _benchmarkDecodeSlice(_b, Go.toInterface(_a));
    }
function benchmarkDecodeBytesSlice(_b:stdgo.testing.Testing.B):Void {
        var _a:Slice<Slice<GoUInt8>> = new Slice<Slice<GoUInt8>>(...[for (i in 0 ... ((((1000 : GoInt)) : GoInt)).toBasic()) ((null : Slice<GoUInt8>))]);
        for (_i => _ in _a) {
            if (_a != null) _a[_i] = ((((("now is the time" : GoString))) : Slice<GoByte>));
        };
        _benchmarkDecodeSlice(_b, Go.toInterface(_a));
    }
function benchmarkDecodeInterfaceSlice(_b:stdgo.testing.Testing.B):Void {
        var _a:Slice<AnyInterface> = new Slice<AnyInterface>(...[for (i in 0 ... ((((1000 : GoInt)) : GoInt)).toBasic()) ((null : AnyInterface))]);
        for (_i => _ in _a) {
            if (_a != null) _a[_i] = Go.toInterface(((("now is the time" : GoString))));
        };
        _benchmarkDecodeSlice(_b, Go.toInterface(_a));
    }
function benchmarkDecodeMap(_b:stdgo.testing.Testing.B):Void {
        var _count:GoInt = ((1000 : GoInt));
        var _m:GoMap<GoInt, GoInt> = new Map<Int, GoInt>();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _count, _i++, {
                if (_m != null) _m[_i] = _i;
            });
        };
        var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _enc:Encoder = newEncoder(_buf);
        var _err:stdgo.Error = _enc.encode(Go.toInterface(_m));
        if (_err != null) {
            _b.fatal(Go.toInterface(_err));
        };
        var _bbuf:T_benchmarkBuf = ((({ _data : _buf.bytes(), _offset : 0 } : T_benchmarkBuf)) == null ? null : (({ _data : _buf.bytes(), _offset : 0 } : T_benchmarkBuf)).__copy__());
        _b.resetTimer();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                var _rm:GoMap<GoInt, GoInt> = ((null : GoMap<GoInt, GoInt>));
                _bbuf._reset();
                var _dec:Decoder = newDecoder(_bbuf);
                var _err:stdgo.Error = _dec.decode(Go.toInterface(_rm));
                if (_err != null) {
                    _b.fatal(Go.toInterface(_i), Go.toInterface(_err));
                };
            });
        };
    }
function _validUserType(_rt:stdgo.reflect.Reflect.Type):{ var _0 : T_userTypeInfo; var _1 : Error; } {
        {
            var __tmp__ = _userTypeCache.load(Go.toInterface(_rt)), _ui:AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return { _0 : ((_ui.value : T_userTypeInfo)), _1 : ((null : stdgo.Error)) };
            };
        };
        var _ut:T_userTypeInfo = new T_userTypeInfo();
        _ut._base = _rt;
        _ut._user = _rt;
        var _slowpoke:stdgo.reflect.Reflect.Type = _ut._base;
        while (true) {
            var _pt:stdgo.reflect.Reflect.Type = _ut._base;
            if (_pt.kind() != ((22 : GoUInt))) {
                break;
            };
            _ut._base = _pt.elem();
            if (_ut._base == _slowpoke) {
                return { _0 : null, _1 : stdgo.errors.Errors.new_(((("can\'t represent recursive pointer type " : GoString))) + ((_ut._base.toString() : GoString))) };
            };
            if ((_ut._indir % ((2 : GoInt))) == ((0 : GoInt))) {
                _slowpoke = _slowpoke.elem();
            };
            _ut._indir++;
        };
        {
            var __tmp__ = _implementsInterface(_ut._user, _gobEncoderInterfaceType), _ok:Bool = __tmp__._0, _indir:GoInt8 = __tmp__._1;
            if (_ok) {
                {
                    final __tmp__0 = ((1 : GoInt));
                    final __tmp__1 = _indir;
                    _ut._externalEnc = __tmp__0;
                    _ut._encIndir = __tmp__1;
                };
            } else {
                var __tmp__ = _implementsInterface(_ut._user, _binaryMarshalerInterfaceType), _ok:Bool = __tmp__._0, _indir:GoInt8 = __tmp__._1;
                if (_ok) {
                    {
                        final __tmp__0 = ((2 : GoInt));
                        final __tmp__1 = _indir;
                        _ut._externalEnc = __tmp__0;
                        _ut._encIndir = __tmp__1;
                    };
                };
            };
        };
        {
            var __tmp__ = _implementsInterface(_ut._user, _gobDecoderInterfaceType), _ok:Bool = __tmp__._0, _indir:GoInt8 = __tmp__._1;
            if (_ok) {
                {
                    final __tmp__0 = ((1 : GoInt));
                    final __tmp__1 = _indir;
                    _ut._externalDec = __tmp__0;
                    _ut._decIndir = __tmp__1;
                };
            } else {
                var __tmp__ = _implementsInterface(_ut._user, _binaryUnmarshalerInterfaceType), _ok:Bool = __tmp__._0, _indir:GoInt8 = __tmp__._1;
                if (_ok) {
                    {
                        final __tmp__0 = ((2 : GoInt));
                        final __tmp__1 = _indir;
                        _ut._externalDec = __tmp__0;
                        _ut._decIndir = __tmp__1;
                    };
                };
            };
        };
        var __tmp__ = _userTypeCache.loadOrStore(Go.toInterface(_rt), Go.toInterface(_ut)), _ui:AnyInterface = __tmp__._0, _0:Bool = __tmp__._1;
        return { _0 : ((_ui.value : T_userTypeInfo)), _1 : ((null : stdgo.Error)) };
    }
function _implementsInterface(_typ:stdgo.reflect.Reflect.Type, _gobEncDecType:stdgo.reflect.Reflect.Type):{ var _0 : Bool; var _1 : GoInt8; } {
        var _success:Bool = false, _indir:GoInt8 = ((0 : GoInt8));
        if (_typ == null) {
            return { _0 : _success, _1 : _indir };
        };
        var _rt:stdgo.reflect.Reflect.Type = _typ;
        while (true) {
            if (_rt.implements_(_gobEncDecType)) {
                return { _0 : true, _1 : _indir };
            };
            {
                var _p:stdgo.reflect.Reflect.Type = _rt;
                if (_p.kind() == ((22 : GoUInt))) {
                    _indir++;
                    if (_indir > ((100 : GoInt8))) {
                        return { _0 : false, _1 : ((0 : GoInt8)) };
                    };
                    _rt = _p.elem();
                    continue;
                };
            };
            break;
        };
        if (_typ.kind() != ((22 : GoUInt))) {
            if (stdgo.reflect.Reflect.pointerTo(_typ).implements_(_gobEncDecType)) {
                return { _0 : true, _1 : ((-1 : GoInt8)) };
            };
        };
        return { _0 : false, _1 : ((0 : GoInt8)) };
    }
function _userType(_rt:stdgo.reflect.Reflect.Type):T_userTypeInfo {
        var __tmp__ = _validUserType(_rt), _ut:T_userTypeInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _error_(_err);
        };
        return _ut;
    }
function _setTypeId(_typ:T_gobType):Void {
        if (_typ._id() != ((0 : GoInt32))) {
            return;
        };
        _nextId++;
        _typ._setId(_nextId);
        if (_idToType != null) _idToType[_nextId] = _typ;
    }
function _newArrayType(_name:GoString):T_arrayType {
        var _a:T_arrayType = ((new T_arrayType(((({ name : _name, id : new T_typeId() } : CommonType)) == null ? null : (({ name : _name, id : new T_typeId() } : CommonType)).__copy__()), ((0 : GoInt32)), ((0 : GoInt))) : T_arrayType));
        return _a;
    }
function _newGobEncoderType(_name:GoString):T_gobEncoderType {
        var _g:T_gobEncoderType = ((new T_gobEncoderType(((({ name : _name, id : new T_typeId() } : CommonType)) == null ? null : (({ name : _name, id : new T_typeId() } : CommonType)).__copy__())) : T_gobEncoderType));
        _setTypeId(_g);
        return _g;
    }
function _newMapType(_name:GoString):T_mapType {
        var _m:T_mapType = ((new T_mapType(((({ name : _name, id : new T_typeId() } : CommonType)) == null ? null : (({ name : _name, id : new T_typeId() } : CommonType)).__copy__()), ((0 : GoInt32)), ((0 : GoInt32))) : T_mapType));
        return _m;
    }
function _newSliceType(_name:GoString):T_sliceType {
        var _s:T_sliceType = ((new T_sliceType(((({ name : _name, id : new T_typeId() } : CommonType)) == null ? null : (({ name : _name, id : new T_typeId() } : CommonType)).__copy__()), ((0 : GoInt32))) : T_sliceType));
        return _s;
    }
function _newStructType(_name:GoString):T_structType {
        var _s:T_structType = ((new T_structType(((({ name : _name, id : new T_typeId() } : CommonType)) == null ? null : (({ name : _name, id : new T_typeId() } : CommonType)).__copy__()), ((null : Slice<T_fieldType>))) : T_structType));
        _setTypeId(_s);
        return _s;
    }
function _newTypeObject(_name:GoString, _ut:T_userTypeInfo, _rt:stdgo.reflect.Reflect.Type):{ var _0 : T_gobType; var _1 : Error; } {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        if (_ut._externalEnc != ((0 : GoInt))) {
            return { _0 : _newGobEncoderType(_name), _1 : ((null : stdgo.Error)) };
        };
        var _err:Error = ((null : stdgo.Error));
        try {
            var _type0:T_gobType = ((null : T_gobType)), _type1:T_gobType = ((null : T_gobType));
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    if (_err != null) {
                        if (_types != null) _types.__remove__(_rt);
                    };
                };
                a();
            });
            {
                var _t:stdgo.reflect.Reflect.Type = _rt;
                if (_t.kind() == ((1 : GoUInt))) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : _tBool._gobType(), _1 : ((null : stdgo.Error)) };
                    };
                } else if (_t.kind() == ((2 : GoUInt)) || _t.kind() == ((3 : GoUInt)) || _t.kind() == ((4 : GoUInt)) || _t.kind() == ((5 : GoUInt)) || _t.kind() == ((6 : GoUInt))) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : _tInt._gobType(), _1 : ((null : stdgo.Error)) };
                    };
                } else if (_t.kind() == ((7 : GoUInt)) || _t.kind() == ((8 : GoUInt)) || _t.kind() == ((9 : GoUInt)) || _t.kind() == ((10 : GoUInt)) || _t.kind() == ((11 : GoUInt)) || _t.kind() == ((12 : GoUInt))) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : _tUint._gobType(), _1 : ((null : stdgo.Error)) };
                    };
                } else if (_t.kind() == ((13 : GoUInt)) || _t.kind() == ((14 : GoUInt))) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : _tFloat._gobType(), _1 : ((null : stdgo.Error)) };
                    };
                } else if (_t.kind() == ((15 : GoUInt)) || _t.kind() == ((16 : GoUInt))) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : _tComplex._gobType(), _1 : ((null : stdgo.Error)) };
                    };
                } else if (_t.kind() == ((24 : GoUInt))) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : _tString._gobType(), _1 : ((null : stdgo.Error)) };
                    };
                } else if (_t.kind() == ((20 : GoUInt))) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : _tInterface._gobType(), _1 : ((null : stdgo.Error)) };
                    };
                } else if (_t.kind() == ((17 : GoUInt))) {
                    var _at:T_arrayType = _newArrayType(_name);
                    if (_types != null) _types[_rt] = _at;
                    {
                        var __tmp__ = _getBaseType((""), _t.elem());
                        _type0 = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return { _0 : ((null : T_gobType)), _1 : _err };
                        };
                    };
                    _at._init(_type0, _t.len());
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : _at, _1 : ((null : stdgo.Error)) };
                    };
                } else if (_t.kind() == ((21 : GoUInt))) {
                    var _mt:T_mapType = _newMapType(_name);
                    if (_types != null) _types[_rt] = _mt;
                    {
                        var __tmp__ = _getBaseType((""), _t.key());
                        _type0 = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return { _0 : ((null : T_gobType)), _1 : _err };
                        };
                    };
                    {
                        var __tmp__ = _getBaseType((""), _t.elem());
                        _type1 = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return { _0 : ((null : T_gobType)), _1 : _err };
                        };
                    };
                    _mt._init(_type0, _type1);
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : _mt, _1 : ((null : stdgo.Error)) };
                    };
                } else if (_t.kind() == ((23 : GoUInt))) {
                    if (_t.elem().kind() == ((8 : GoUInt))) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return { _0 : _tBytes._gobType(), _1 : ((null : stdgo.Error)) };
                        };
                    };
                    var _st:T_sliceType = _newSliceType(_name);
                    if (_types != null) _types[_rt] = _st;
                    {
                        var __tmp__ = _getBaseType(_t.elem().name(), _t.elem());
                        _type0 = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return { _0 : ((null : T_gobType)), _1 : _err };
                        };
                    };
                    _st._init(_type0);
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : _st, _1 : ((null : stdgo.Error)) };
                    };
                } else if (_t.kind() == ((25 : GoUInt))) {
                    var _st:T_structType = _newStructType(_name);
                    if (_types != null) _types[_rt] = _st;
                    if (_idToType != null) _idToType[_st._id()] = _st;
                    {
                        var _i:GoInt = ((0 : GoInt));
                        Go.cfor(_i < _t.numField(), _i++, {
                            var _f:stdgo.reflect.Reflect.StructField = (_t.field(_i) == null ? null : _t.field(_i).__copy__());
                            if (!_isSent(_f)) {
                                continue;
                            };
                            var _typ:stdgo.reflect.Reflect.Type = _userType(_f.type)._base;
                            var _tname:GoString = _typ.name();
                            if (_tname == ("")) {
                                var _t:stdgo.reflect.Reflect.Type = _userType(_f.type)._base;
                                _tname = ((_t.toString() : GoString));
                            };
                            var __tmp__ = _getBaseType(_tname, _f.type), _gt:T_gobType = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                {
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    return { _0 : ((null : T_gobType)), _1 : _err };
                                };
                            };
                            if (_gt._id() == ((0 : GoInt32))) {
                                _setTypeId(_gt);
                            };
                            _st.field = (_st.field != null ? _st.field.__append__(((new T_fieldType(_f.name, _gt._id()) : T_fieldType))) : new Slice<T_fieldType>(((new T_fieldType(_f.name, _gt._id()) : T_fieldType))));
                        });
                    };
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : _st, _1 : ((null : stdgo.Error)) };
                    };
                } else {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : ((null : T_gobType)), _1 : stdgo.errors.Errors.new_(((("gob NewTypeObject can\'t handle type: " : GoString))) + ((_rt.toString() : GoString))) };
                    };
                };
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return { _0 : ((null : T_gobType)), _1 : ((null : stdgo.Error)) };
            };
        };
    }
function _isExported(_name:GoString):Bool {
        var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_name), _rune:GoInt32 = __tmp__._0, _0:GoInt = __tmp__._1;
        return stdgo.unicode.Unicode.isUpper(_rune);
    }
function _isSent(_field:stdgo.reflect.Reflect.StructField):Bool {
        if (!_isExported(_field.name)) {
            return false;
        };
        var _typ:stdgo.reflect.Reflect.Type = _field.type;
        while (_typ.kind() == ((22 : GoUInt))) {
            _typ = _typ.elem();
        };
        if ((_typ.kind() == ((18 : GoUInt))) || (_typ.kind() == ((19 : GoUInt)))) {
            return false;
        };
        return true;
    }
function _getBaseType(_name:GoString, _rt:stdgo.reflect.Reflect.Type):{ var _0 : T_gobType; var _1 : Error; } {
        var _ut:T_userTypeInfo = _userType(_rt);
        return _getType(_name, _ut, _ut._base);
    }
function _getType(_name:GoString, _ut:T_userTypeInfo, _rt:stdgo.reflect.Reflect.Type):{ var _0 : T_gobType; var _1 : Error; } {
        var __tmp__ = (_types != null && _types.__exists__(_rt) ? { value : _types[_rt], ok : true } : { value : ((null : T_gobType)), ok : false }), _typ:T_gobType = __tmp__.value, _present:Bool = __tmp__.ok;
        if (_present) {
            return { _0 : _typ, _1 : ((null : stdgo.Error)) };
        };
        var __tmp__ = _newTypeObject(_name, _ut, _rt), _typ:T_gobType = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            if (_types != null) _types[_rt] = _typ;
        };
        return { _0 : _typ, _1 : _err };
    }
function _checkId(_want:T_typeId, _got:T_typeId):Void {
        if (_want != _got) {
            stdgo.fmt.Fmt.fprintf(stdgo.os.Os.stderr, ((("checkId: %d should be %d\n" : GoString))), Go.toInterface(((_got : GoInt))), Go.toInterface(((_want : GoInt))));
            throw Go.toInterface(((((((("bootstrap type wrong id: " : GoString))) + _got._name()) + (((" " : GoString)))) + _got._string()) + (((" not " : GoString)))) + _want._string());
        };
    }
function _bootstrapType(_name:GoString, _e:AnyInterface, _expect:T_typeId):T_typeId {
        var _rt:stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(_e)).elem();
        var __tmp__ = (_types != null && _types.__exists__(_rt) ? { value : _types[_rt], ok : true } : { value : ((null : T_gobType)), ok : false }), _0:T_gobType = __tmp__.value, _present:Bool = __tmp__.ok;
        if (_present) {
            throw Go.toInterface(((((("bootstrap type already present: " : GoString))) + _name) + (((", " : GoString)))) + ((_rt.toString() : GoString)));
        };
        var _typ:CommonType = (({ name : _name, id : new T_typeId() } : CommonType));
        if (_types != null) _types[_rt] = _typ;
        _setTypeId(_typ);
        _checkId(_expect, _nextId);
        _userType(_rt);
        return _nextId;
    }
function _lookupTypeInfo(_rt:stdgo.reflect.Reflect.Type):T_typeInfo {
        var __tmp__ = try {
            { value : ((_typeInfoMap.load().value : GoMap<stdgo.reflect.Reflect.Type, T_typeInfo>)), ok : true };
        } catch(_) {
            { value : ((null : GoMap<stdgo.reflect.Reflect.Type, T_typeInfo>)), ok : false };
        }, _m = __tmp__.value, _0 = __tmp__.ok;
        return (_m != null ? _m[_rt] : ((null : T_typeInfo)));
    }
function _getTypeInfo(_ut:T_userTypeInfo):{ var _0 : T_typeInfo; var _1 : Error; } {
        var _rt:stdgo.reflect.Reflect.Type = _ut._base;
        if (_ut._externalEnc != ((0 : GoInt))) {
            _rt = _ut._user;
        };
        {
            var _info:T_typeInfo = _lookupTypeInfo(_rt);
            if (_info != null) {
                return { _0 : _info, _1 : ((null : stdgo.Error)) };
            };
        };
        return _buildTypeInfo(_ut, _rt);
    }
function _buildTypeInfo(_ut:T_userTypeInfo, _rt:stdgo.reflect.Reflect.Type):{ var _0 : T_typeInfo; var _1 : Error; } {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        _typeLock.lock();
        __deferstack__.unshift(() -> _typeLock.unlock());
        try {
            {
                var _info:T_typeInfo = _lookupTypeInfo(_rt);
                if (_info != null) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : _info, _1 : ((null : stdgo.Error)) };
                    };
                };
            };
            var __tmp__ = _getBaseType(_rt.name(), _rt), _gt:T_gobType = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return { _0 : null, _1 : _err };
                };
            };
            var _info:T_typeInfo = (({ _id : _gt._id(), _encInit : new stdgo.sync.Sync.Mutex(), _encoder : new stdgo.sync.atomic.Atomic.Value(), _wire : ((null : T_wireType)) } : T_typeInfo));
            if (_ut._externalEnc != ((0 : GoInt))) {
                var __tmp__ = _getType(_rt.name(), _ut, _rt), _userType:T_gobType = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : null, _1 : _err };
                    };
                };
                var _gt:T_gobEncoderType = ((((_userType._id()._gobType().__underlying__().value : Dynamic)) : T_gobEncoderType));
                if (_ut._externalEnc == ((1 : GoInt))) {
                    _info._wire = (({ gobEncoderT : _gt, arrayT : ((null : T_arrayType)), sliceT : ((null : T_sliceType)), structT : ((null : T_structType)), mapT : ((null : T_mapType)), binaryMarshalerT : ((null : T_gobEncoderType)), textMarshalerT : ((null : T_gobEncoderType)) } : T_wireType));
                } else if (_ut._externalEnc == ((2 : GoInt))) {
                    _info._wire = (({ binaryMarshalerT : _gt, arrayT : ((null : T_arrayType)), sliceT : ((null : T_sliceType)), structT : ((null : T_structType)), mapT : ((null : T_mapType)), gobEncoderT : ((null : T_gobEncoderType)), textMarshalerT : ((null : T_gobEncoderType)) } : T_wireType));
                } else if (_ut._externalEnc == ((3 : GoInt))) {
                    _info._wire = (({ textMarshalerT : _gt, arrayT : ((null : T_arrayType)), sliceT : ((null : T_sliceType)), structT : ((null : T_structType)), mapT : ((null : T_mapType)), gobEncoderT : ((null : T_gobEncoderType)), binaryMarshalerT : ((null : T_gobEncoderType)) } : T_wireType));
                };
                _rt = _ut._user;
            } else {
                var _t:T_gobType = _info._id._gobType();
                {
                    var _typ:stdgo.reflect.Reflect.Type = _rt;
                    if (_typ.kind() == ((17 : GoUInt))) {
                        _info._wire = (({ arrayT : ((((_t.__underlying__().value : Dynamic)) : T_arrayType)), sliceT : ((null : T_sliceType)), structT : ((null : T_structType)), mapT : ((null : T_mapType)), gobEncoderT : ((null : T_gobEncoderType)), binaryMarshalerT : ((null : T_gobEncoderType)), textMarshalerT : ((null : T_gobEncoderType)) } : T_wireType));
                    } else if (_typ.kind() == ((21 : GoUInt))) {
                        _info._wire = (({ mapT : ((((_t.__underlying__().value : Dynamic)) : T_mapType)), arrayT : ((null : T_arrayType)), sliceT : ((null : T_sliceType)), structT : ((null : T_structType)), gobEncoderT : ((null : T_gobEncoderType)), binaryMarshalerT : ((null : T_gobEncoderType)), textMarshalerT : ((null : T_gobEncoderType)) } : T_wireType));
                    } else if (_typ.kind() == ((23 : GoUInt))) {
                        if (_typ.elem().kind() != ((8 : GoUInt))) {
                            _info._wire = (({ sliceT : ((((_t.__underlying__().value : Dynamic)) : T_sliceType)), arrayT : ((null : T_arrayType)), structT : ((null : T_structType)), mapT : ((null : T_mapType)), gobEncoderT : ((null : T_gobEncoderType)), binaryMarshalerT : ((null : T_gobEncoderType)), textMarshalerT : ((null : T_gobEncoderType)) } : T_wireType));
                        };
                    } else if (_typ.kind() == ((25 : GoUInt))) {
                        _info._wire = (({ structT : ((((_t.__underlying__().value : Dynamic)) : T_structType)), arrayT : ((null : T_arrayType)), sliceT : ((null : T_sliceType)), mapT : ((null : T_mapType)), gobEncoderT : ((null : T_gobEncoderType)), binaryMarshalerT : ((null : T_gobEncoderType)), textMarshalerT : ((null : T_gobEncoderType)) } : T_wireType));
                    };
                };
            };
            var _newm:GoMap<stdgo.reflect.Reflect.Type, T_typeInfo> = new GoObjectMap<stdgo.reflect.Reflect.Type, T_typeInfo>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.named("stdgo.reflect.Reflect.Type", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])), stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("T_typeInfo", [], stdgo.reflect.Reflect.GoType.named("T_typeInfo", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("T_typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }, { name : "_encInit", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("stdgo.sync.Sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) }, { name : "_encoder", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("stdgo.sync.atomic.Atomic.Value", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_v", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.interfaceType(true, []) }])) }, { name : "_wire", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("T_wireType", [], stdgo.reflect.Reflect.GoType.named("T_wireType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "arrayT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("T_arrayType", [], stdgo.reflect.Reflect.GoType.named("T_arrayType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("CommonType", [], stdgo.reflect.Reflect.GoType.named("CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("T_typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "elem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("T_typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }, { name : "len", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }])))) }, { name : "sliceT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("T_sliceType", [], stdgo.reflect.Reflect.GoType.named("T_sliceType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("CommonType", [], stdgo.reflect.Reflect.GoType.named("CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("T_typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "elem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("T_typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }])))) }, { name : "structT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("T_structType", [], stdgo.reflect.Reflect.GoType.named("T_structType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("CommonType", [], stdgo.reflect.Reflect.GoType.named("CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("T_typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "field", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("T_fieldType", [], stdgo.reflect.Reflect.GoType.named("CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("T_typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))))) }])))) }, { name : "mapT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("T_mapType", [], stdgo.reflect.Reflect.GoType.named("T_mapType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("CommonType", [], stdgo.reflect.Reflect.GoType.named("CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("T_typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "key", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("T_typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }, { name : "elem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("T_typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }])))) }, { name : "gobEncoderT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("T_gobEncoderType", [], stdgo.reflect.Reflect.GoType.named("T_gobEncoderType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("CommonType", [], stdgo.reflect.Reflect.GoType.named("CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("T_typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }])))) }, { name : "binaryMarshalerT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("T_gobEncoderType", [], stdgo.reflect.Reflect.GoType.named("T_gobEncoderType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("CommonType", [], stdgo.reflect.Reflect.GoType.named("CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("T_typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }])))) }, { name : "textMarshalerT", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("T_gobEncoderType", [], stdgo.reflect.Reflect.GoType.named("T_gobEncoderType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "commonType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("CommonType", [], stdgo.reflect.Reflect.GoType.named("CommonType", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "id", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("T_typeId", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }])))) }])))) }])))))));
            var __tmp__ = try {
                { value : ((_typeInfoMap.load().value : GoMap<stdgo.reflect.Reflect.Type, T_typeInfo>)), ok : true };
            } catch(_) {
                { value : ((null : GoMap<stdgo.reflect.Reflect.Type, T_typeInfo>)), ok : false };
            }, _m = __tmp__.value, _0 = __tmp__.ok;
            for (_k => _v in _m) {
                if (_newm != null) _newm[_k] = _v;
            };
            if (_newm != null) _newm[_rt] = _info;
            _typeInfoMap.store(Go.toInterface(_newm));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return { _0 : _info, _1 : ((null : stdgo.Error)) };
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return { _0 : ((null : T_typeInfo)), _1 : ((null : stdgo.Error)) };
            };
        };
    }
function _mustGetTypeInfo(_rt:stdgo.reflect.Reflect.Type):T_typeInfo {
        var __tmp__ = _getTypeInfo(_userType(_rt)), _t:T_typeInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw Go.toInterface(((("getTypeInfo: " : GoString))) + _err.error());
        };
        return _t;
    }
function registerName(_name:GoString, _value:AnyInterface):Void {
        if (_name == ("")) {
            throw Go.toInterface(((("attempt to register empty name" : GoString))));
        };
        var _ut:T_userTypeInfo = _userType(stdgo.reflect.Reflect.typeOf(Go.toInterface(_value)));
        {
            var __tmp__ = _nameToConcreteType.loadOrStore(Go.toInterface(_name), Go.toInterface(stdgo.reflect.Reflect.typeOf(Go.toInterface(_value)))), _t:AnyInterface = __tmp__._0, _dup:Bool = __tmp__._1;
            if (_dup && (_t != _ut._user)) {
                throw Go.toInterface(stdgo.fmt.Fmt.sprintf(((("gob: registering duplicate types for %q: %s != %s" : GoString))), Go.toInterface(_name), Go.toInterface(_t), Go.toInterface(_ut._user)));
            };
        };
        {
            var __tmp__ = _concreteTypeToName.loadOrStore(Go.toInterface(_ut._base), Go.toInterface(_name)), _n:AnyInterface = __tmp__._0, _dup:Bool = __tmp__._1;
            if (_dup && (_n != _name)) {
                _nameToConcreteType.delete(Go.toInterface(_name));
                throw Go.toInterface(stdgo.fmt.Fmt.sprintf(((("gob: registering duplicate names for %s: %q != %q" : GoString))), Go.toInterface(_ut._user), Go.toInterface(_n), Go.toInterface(_name)));
            };
        };
    }
function register(_value:AnyInterface):Void {
        var _rt:stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(_value));
        var _name:GoString = ((_rt.toString() : GoString));
        var _star:GoString = ("");
        if (_rt.name() == ("")) {
            {
                var _pt:stdgo.reflect.Reflect.Type = _rt;
                if (_pt.kind() == ((22 : GoUInt))) {
                    _star = ((("*" : GoString)));
                    _rt = _pt;
                };
            };
        };
        if (_rt.name() != ("")) {
            if (_rt.pkgPath() == ("")) {
                _name = _star + _rt.name();
            } else {
                _name = ((_star + _rt.pkgPath()) + ((("." : GoString)))) + _rt.name();
            };
        };
        registerName(_name, Go.toInterface(_value));
    }
function _registerBasics():Void {
        register(Go.toInterface(((((0 : GoInt)) : GoInt))));
        register(Go.toInterface(((((0 : GoInt8)) : GoInt8))));
        register(Go.toInterface(((((0 : GoInt16)) : GoInt16))));
        register(Go.toInterface(((((0 : GoInt32)) : GoInt32))));
        register(Go.toInterface(((((0 : GoInt64)) : GoInt64))));
        register(Go.toInterface(((((0 : GoUInt)) : GoUInt))));
        register(Go.toInterface(((((0 : GoUInt8)) : GoUInt8))));
        register(Go.toInterface(((((0 : GoUInt16)) : GoUInt16))));
        register(Go.toInterface(((((0 : GoUInt32)) : GoUInt32))));
        register(Go.toInterface(((((0 : GoUInt64)) : GoUInt64))));
        register(Go.toInterface(((((0 : GoFloat32)) : GoFloat32))));
        register(Go.toInterface(((((0 : GoFloat64)) : GoFloat64))));
        register(Go.toInterface(((new GoComplex128(0, 0) : GoComplex64))));
        register(Go.toInterface(((new GoComplex128(0, 0) : GoComplex128))));
        register(Go.toInterface(((((0 : GoUIntptr)) : GoUIntptr))));
        register(Go.toInterface(false));
        register(Go.toInterface(("")));
        register(Go.toInterface(((((null : Slice<GoUInt8>)) : Slice<GoByte>))));
        register(Go.toInterface(((((null : Slice<GoInt>)) : Slice<GoInt>))));
        register(Go.toInterface(((((null : Slice<GoInt8>)) : Slice<GoInt8>))));
        register(Go.toInterface(((((null : Slice<GoInt16>)) : Slice<GoInt16>))));
        register(Go.toInterface(((((null : Slice<GoInt32>)) : Slice<GoInt32>))));
        register(Go.toInterface(((((null : Slice<GoInt64>)) : Slice<GoInt64>))));
        register(Go.toInterface(((((null : Slice<GoUInt>)) : Slice<GoUInt>))));
        register(Go.toInterface(((((null : Slice<GoUInt8>)) : Slice<GoUInt8>))));
        register(Go.toInterface(((((null : Slice<GoUInt16>)) : Slice<GoUInt16>))));
        register(Go.toInterface(((((null : Slice<GoUInt32>)) : Slice<GoUInt32>))));
        register(Go.toInterface(((((null : Slice<GoUInt64>)) : Slice<GoUInt64>))));
        register(Go.toInterface(((((null : Slice<GoFloat32>)) : Slice<GoFloat32>))));
        register(Go.toInterface(((((null : Slice<GoFloat64>)) : Slice<GoFloat64>))));
        register(Go.toInterface(((((null : Slice<GoComplex64>)) : Slice<GoComplex64>))));
        register(Go.toInterface(((((null : Slice<GoComplex128>)) : Slice<GoComplex128>))));
        register(Go.toInterface(((((null : Slice<GoUIntptr>)) : Slice<GoUIntptr>))));
        register(Go.toInterface(((((null : Slice<Bool>)) : Slice<Bool>))));
        register(Go.toInterface(((((null : Slice<GoString>)) : Slice<GoString>))));
    }
function _getTypeUnlocked(_name:GoString, _rt:stdgo.reflect.Reflect.Type):T_gobType {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        _typeLock.lock();
        try {
            __deferstack__.unshift(() -> _typeLock.unlock());
            var __tmp__ = _getBaseType(_name, _rt), _t:T_gobType = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                throw Go.toInterface(((("getTypeUnlocked: " : GoString))) + _err.error());
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _t;
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return ((null : T_gobType));
            };
        };
    }
function testBasic(_t:stdgo.testing.Testing.T_testDecodePartial_0):Void {
        for (_0 => _tt in _basicTypes) {
            if (_tt._id._string() != _tt._str) {
                _t.errorf(((("checkType: expected %q got %s" : GoString))), Go.toInterface(_tt._str), Go.toInterface(_tt._id._string()));
            };
            if (_tt._id == ((0 : GoInt32))) {
                _t.errorf(((("id for %q is zero" : GoString))), Go.toInterface(_tt._str));
            };
        };
    }
function testReregistration(_t:stdgo.testing.Testing.T_testDecodePartial_0):Void {
        var _newtyp:T_gobType = _getTypeUnlocked(((("int" : GoString))), stdgo.reflect.Reflect.typeOf(Go.toInterface(((((0 : GoInt)) : GoInt)))));
        if (_newtyp != _tInt._gobType()) {
            _t.errorf(((("reregistration of %s got new type" : GoString))), Go.toInterface(_newtyp._string()));
        };
        _newtyp = _getTypeUnlocked(((("uint" : GoString))), stdgo.reflect.Reflect.typeOf(Go.toInterface(((((0 : GoUInt)) : GoUInt)))));
        if (_newtyp != _tUint._gobType()) {
            _t.errorf(((("reregistration of %s got new type" : GoString))), Go.toInterface(_newtyp._string()));
        };
        _newtyp = _getTypeUnlocked(((("string" : GoString))), stdgo.reflect.Reflect.typeOf(Go.toInterface(((("hello" : GoString))))));
        if (_newtyp != _tString._gobType()) {
            _t.errorf(((("reregistration of %s got new type" : GoString))), Go.toInterface(_newtyp._string()));
        };
    }
function testArrayType(_t:stdgo.testing.Testing.T_testDecodePartial_0):Void {
        var _a3:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 3) ((0 : GoInt))]);
        var _a3int:T_gobType = _getTypeUnlocked(((("foo" : GoString))), stdgo.reflect.Reflect.typeOf(Go.toInterface(_a3)));
        var _newa3int:T_gobType = _getTypeUnlocked(((("bar" : GoString))), stdgo.reflect.Reflect.typeOf(Go.toInterface(_a3)));
        if (_a3int != _newa3int) {
            _t.errorf(((("second registration of [3]int creates new type" : GoString))));
        };
        var _a4:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 4) ((0 : GoInt))]);
        var _a4int:T_gobType = _getTypeUnlocked(((("goo" : GoString))), stdgo.reflect.Reflect.typeOf(Go.toInterface(_a4)));
        if (_a3int == _a4int) {
            _t.errorf(((("registration of [3]int creates same type as [4]int" : GoString))));
        };
        var _b3:GoArray<Bool> = new GoArray<Bool>(...[for (i in 0 ... 3) false]);
        var _a3bool:T_gobType = _getTypeUnlocked((""), stdgo.reflect.Reflect.typeOf(Go.toInterface(_b3)));
        if (_a3int == _a3bool) {
            _t.errorf(((("registration of [3]bool creates same type as [3]int" : GoString))));
        };
        var _str:GoString = _a3bool._string();
        var _expected:GoString = ((("[3]bool" : GoString)));
        if (_str != _expected) {
            _t.errorf(((("array printed as %q; expected %q" : GoString))), Go.toInterface(_str), Go.toInterface(_expected));
        };
    }
function testSliceType(_t:stdgo.testing.Testing.T_testDecodePartial_0):Void {
        var _s:Slice<GoInt> = ((null : Slice<GoInt>));
        var _sint:T_gobType = _getTypeUnlocked(((("slice" : GoString))), stdgo.reflect.Reflect.typeOf(Go.toInterface(_s)));
        var _news:Slice<GoInt> = ((null : Slice<GoInt>));
        var _newsint:T_gobType = _getTypeUnlocked(((("slice1" : GoString))), stdgo.reflect.Reflect.typeOf(Go.toInterface(_news)));
        if (_sint != _newsint) {
            _t.errorf(((("second registration of []int creates new type" : GoString))));
        };
        var _b:Slice<Bool> = ((null : Slice<Bool>));
        var _sbool:T_gobType = _getTypeUnlocked((""), stdgo.reflect.Reflect.typeOf(Go.toInterface(_b)));
        if (_sbool == _sint) {
            _t.errorf(((("registration of []bool creates same type as []int" : GoString))));
        };
        var _str:GoString = _sbool._string();
        var _expected:GoString = ((("[]bool" : GoString)));
        if (_str != _expected) {
            _t.errorf(((("slice printed as %q; expected %q" : GoString))), Go.toInterface(_str), Go.toInterface(_expected));
        };
    }
function testMapType(_t:stdgo.testing.Testing.T_testDecodePartial_0):Void {
        var _m:GoMap<GoString, GoInt> = ((null : GoMap<GoString, GoInt>));
        var _mapStringInt:T_gobType = _getTypeUnlocked(((("map" : GoString))), stdgo.reflect.Reflect.typeOf(Go.toInterface(_m)));
        var _newm:GoMap<GoString, GoInt> = ((null : GoMap<GoString, GoInt>));
        var _newMapStringInt:T_gobType = _getTypeUnlocked(((("map1" : GoString))), stdgo.reflect.Reflect.typeOf(Go.toInterface(_newm)));
        if (_mapStringInt != _newMapStringInt) {
            _t.errorf(((("second registration of map[string]int creates new type" : GoString))));
        };
        var _b:GoMap<GoString, Bool> = ((null : GoMap<GoString, Bool>));
        var _mapStringBool:T_gobType = _getTypeUnlocked((""), stdgo.reflect.Reflect.typeOf(Go.toInterface(_b)));
        if (_mapStringBool == _mapStringInt) {
            _t.errorf(((("registration of map[string]bool creates same type as map[string]int" : GoString))));
        };
        var _str:GoString = _mapStringBool._string();
        var _expected:GoString = ((("map[string]bool" : GoString)));
        if (_str != _expected) {
            _t.errorf(((("map printed as %q; expected %q" : GoString))), Go.toInterface(_str), Go.toInterface(_expected));
        };
    }
function testStructType(_t:stdgo.testing.Testing.T_testDecodePartial_0):Void {
        var _sstruct:T_gobType = _getTypeUnlocked(((("Foo" : GoString))), stdgo.reflect.Reflect.typeOf(Go.toInterface(((new Foo() : Foo)))));
        var _str:GoString = _sstruct._string();
        var _expected:GoString = ((("Foo = struct { A int; B int; C string; D bytes; E float; F float; G Bar = struct { X string; }; H Bar; I Foo; }" : GoString)));
        if (_str != _expected) {
            _t.errorf(((("struct printed as %q; expected %q" : GoString))), Go.toInterface(_str), Go.toInterface(_expected));
        };
    }
@:structInit class T_testRegistration_0 {
    public var _a : GoInt = ((0 : GoInt));
    public function new(?_a:GoInt) {
        if (_a != null) this._a = _a;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_testRegistration_0(_a);
    }
}
function testRegistration(_t:stdgo.testing.Testing.T_testDecodePartial_0):Void {
        {};
        register(Go.toInterface(new T_testRegistration_0()));
        register(Go.toInterface(new T_testRegistration_0()));
    }
function testRegistrationNaming(_t:stdgo.testing.Testing.T_testRegistration_0):Void {
        var _testCases:Slice<T__struct_11> = ((new Slice<T__struct_11>(((new T__struct_11(Go.toInterface(((new N1() : N1))), ((("*gob.N1" : GoString)))) : T__struct_11)), ((new T__struct_11(Go.toInterface(((new N2() : N2))), ((("encoding/gob.N2" : GoString)))) : T__struct_11))) : Slice<T__struct_11>));
        for (_0 => _tc in _testCases) {
            register(Go.toInterface(_tc._t));
            var _tct:stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(_tc._t));
            var __tmp__ = _nameToConcreteType.load(Go.toInterface(_tc._name)), _ct:AnyInterface = __tmp__._0, _1:Bool = __tmp__._1;
            if (_ct != _tct) {
                _t.errorf(((("nameToConcreteType[%q] = %v, want %v" : GoString))), Go.toInterface(_tc._name), Go.toInterface(_ct), Go.toInterface(_tct));
            };
            if (_tct.kind() == ((22 : GoUInt))) {
                _tct = _tct.elem();
            };
            {
                var __tmp__ = _concreteTypeToName.load(Go.toInterface(_tct)), _n:AnyInterface = __tmp__._0, _2:Bool = __tmp__._1;
                if (_n != _tc._name) {
                    _t.errorf(((("concreteTypeToName[%v] got %v, want %v" : GoString))), Go.toInterface(_tct), Go.toInterface(_n), Go.toInterface(_tc._name));
                };
            };
        };
    }
@:structInit class T2_testStressParallel_0 {
    public var a : GoInt = ((0 : GoInt));
    public function new(?a:GoInt) {
        if (a != null) this.a = a;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T2_testStressParallel_0(a);
    }
}
function testStressParallel(_t:stdgo.testing.Testing.T_testRegistration_0):Void {
        {};
        var _c:Chan<Bool> = new Chan<Bool>(0, () -> false);
        {};
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((10 : GoInt)), _i++, {
                Go.routine(() -> {
                    var a = function():Void {
                        var _p:T2_testStressParallel_0 = new T2_testStressParallel_0();
                        register(Go.toInterface(_p));
                        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
                        var _enc:Encoder = newEncoder(_b);
                        var _err:stdgo.Error = _enc.encode(Go.toInterface(_p));
                        if (_err != null) {
                            _t.error(Go.toInterface(((("encoder fail:" : GoString)))), Go.toInterface(_err));
                        };
                        var _dec:Decoder = newDecoder(_b);
                        _err = _dec.decode(Go.toInterface(_p));
                        if (_err != null) {
                            _t.error(Go.toInterface(((("decoder fail:" : GoString)))), Go.toInterface(_err));
                        };
                        _c.__send__(true);
                    };
                    a();
                });
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((10 : GoInt)), _i++, {
                _c.__get__();
            });
        };
    }
function testTypeRace(_t:stdgo.testing.Testing.T_testRegistration_0):Void {
        var _c:Chan<Bool> = new Chan<Bool>(0, () -> false);
        var _wg:stdgo.sync.Sync.WaitGroup = new stdgo.sync.Sync.WaitGroup();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((2 : GoInt)), _i++, {
                _wg.add(((1 : GoInt)));
                Go.routine(() -> {
                    var a = function(_i:GoInt):Void {
                        __deferstack__.unshift(() -> _wg.done());
                        var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
                        var _enc:Encoder = newEncoder(_buf);
                        var _dec:Decoder = newDecoder(_buf);
                        var _x:AnyInterface = ((null : AnyInterface));
                        if (_i == ((0 : GoInt))) {
                            _x = Go.toInterface(((new N1() : N1)));
                        } else if (_i == ((1 : GoInt))) {
                            _x = Go.toInterface(((new N2() : N2)));
                        } else {
                            _t.errorf(((("bad i %d" : GoString))), Go.toInterface(_i));
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return;
                            };
                        };
                        var _m:GoMap<GoString, GoString> = new GoObjectMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind))));
                        _c.__get__();
                        {
                            var _err:stdgo.Error = _enc.encode(Go.toInterface(_x));
                            if (_err != null) {
                                _t.error(Go.toInterface(_err));
                                {
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    return;
                                };
                            };
                        };
                        {
                            var _err:stdgo.Error = _enc.encode(Go.toInterface(_x));
                            if (_err != null) {
                                _t.error(Go.toInterface(_err));
                                {
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    return;
                                };
                            };
                        };
                        {
                            var _err:stdgo.Error = _dec.decode(Go.toInterface(_m));
                            if (_err == null) {
                                _t.error(Go.toInterface(((("decode unexpectedly succeeded" : GoString)))));
                                {
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    return;
                                };
                            };
                        };
                    };
                    a(_i);
                });
            });
        };
        if (_c != null) _c.__close__();
        _wg.wait();
    }
@:keep var _ = {
        try {
            _checkId(((16 : GoInt32)), _tWireType);
            _checkId(((17 : GoInt32)), _mustGetTypeInfo(stdgo.reflect.Reflect.typeOf(Go.toInterface(((new T_arrayType() : T_arrayType)))))._id);
            _checkId(((18 : GoInt32)), _mustGetTypeInfo(stdgo.reflect.Reflect.typeOf(Go.toInterface(((new CommonType() : CommonType)))))._id);
            _checkId(((19 : GoInt32)), _mustGetTypeInfo(stdgo.reflect.Reflect.typeOf(Go.toInterface(((new T_sliceType() : T_sliceType)))))._id);
            _checkId(((20 : GoInt32)), _mustGetTypeInfo(stdgo.reflect.Reflect.typeOf(Go.toInterface(((new T_structType() : T_structType)))))._id);
            _checkId(((21 : GoInt32)), _mustGetTypeInfo(stdgo.reflect.Reflect.typeOf(Go.toInterface(((new T_fieldType() : T_fieldType)))))._id);
            _checkId(((23 : GoInt32)), _mustGetTypeInfo(stdgo.reflect.Reflect.typeOf(Go.toInterface(((new T_mapType() : T_mapType)))))._id);
            _builtinIdToType = new Map<Int, T_gobType>();
            for (_k => _v in _idToType) {
                if (_builtinIdToType != null) _builtinIdToType[_k] = _v;
            };
            if (_nextId > ((64 : GoInt32))) {
                throw Go.toInterface(stdgo.fmt.Fmt.sprintln(((("nextId too large:" : GoString))), _nextId));
            };
            _nextId = ((64 : GoInt32));
            _registerBasics();
            _wireTypeUserInfo = _userType(stdgo.reflect.Reflect.typeOf(Go.toInterface(((((null : T_wireType)) : T_wireType)))));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
@:keep class Point_static_extension {

}
class Point_wrapper {
    public var __t__ : Point;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_decoderState_static_extension {

}
class T_decoderState_wrapper {
    public var __t__ : T_decoderState;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_decBuffer_static_extension {

}
class T_decBuffer_wrapper {
    public var __t__ : T_decBuffer;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class Decoder_static_extension {

}
class Decoder_wrapper {
    public var __t__ : Decoder;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_encoderState_static_extension {

}
class T_encoderState_wrapper {
    public var __t__ : T_encoderState;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_encBuffer_static_extension {

}
class T_encBuffer_wrapper {
    public var __t__ : T_encBuffer;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class Encoder_static_extension {

}
class Encoder_wrapper {
    public var __t__ : Encoder;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_interfaceIndirectTestT_static_extension {

}
class T_interfaceIndirectTestT_wrapper {
    public var __t__ : T_interfaceIndirectTestT;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class ByteStruct_static_extension {

}
class ByteStruct_wrapper {
    public var __t__ : ByteStruct;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class StringStruct_static_extension {

}
class StringStruct_wrapper {
    public var __t__ : StringStruct;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class ArrayStruct_static_extension {

}
class ArrayStruct_wrapper {
    public var __t__ : ArrayStruct;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_gobDecoderBug0_static_extension {

}
class T_gobDecoderBug0_wrapper {
    public var __t__ : T_gobDecoderBug0;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_isZeroBugInterface_static_extension {

}
class T_isZeroBugInterface_wrapper {
    public var __t__ : T_isZeroBugInterface;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_benchmarkBuf_static_extension {

}
class T_benchmarkBuf_wrapper {
    public var __t__ : T_benchmarkBuf;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class CommonType_static_extension {

}
class CommonType_wrapper {
    public var __t__ : CommonType;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_arrayType_static_extension {

}
class T_arrayType_wrapper {
    public var __t__ : T_arrayType;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_gobEncoderType_static_extension {

}
class T_gobEncoderType_wrapper {
    public var __t__ : T_gobEncoderType;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_mapType_static_extension {

}
class T_mapType_wrapper {
    public var __t__ : T_mapType;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_sliceType_static_extension {

}
class T_sliceType_wrapper {
    public var __t__ : T_sliceType;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_structType_static_extension {

}
class T_structType_wrapper {
    public var __t__ : T_structType;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_wireType_static_extension {

}
class T_wireType_wrapper {
    public var __t__ : T_wireType;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class Int__static_extension {
    @:keep
    public static function square(_i:Int_):GoInt {
        _i;
        return (((_i * _i) : GoInt));
    }
}
class Int__wrapper {
    @:keep
    public function square():GoInt {
        var _i = Go.pointer(__t__);
        _i;
        return (((_i * _i) : GoInt));
    }
    public var __t__ : Int_;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class Float__static_extension {
    @:keep
    public static function square(_f:Float_):GoInt {
        _f;
        return (((_f * _f) : GoInt));
    }
}
class Float__wrapper {
    @:keep
    public function square():GoInt {
        var _f = Go.pointer(__t__);
        _f;
        return (((_f * _f) : GoInt));
    }
    public var __t__ : Float_;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class Vector_static_extension {
    @:keep
    public static function square(_v:Vector):GoInt {
        (_v == null ? null : _v.__copy__());
        var _sum:GoInt = ((0 : GoInt));
        for (_0 => _x in _v) {
            _sum = _sum + (_x * _x);
        };
        return _sum;
    }
}
class Vector_wrapper {
    @:keep
    public function square():GoInt {
        var _v = Go.pointer(__t__);
        (_v == null ? null : _v.__copy__());
        var _sum:GoInt = ((0 : GoInt));
        for (_0 => _x in _v) {
            _sum = _sum + (_x * _x);
        };
        return _sum;
    }
    public var __t__ : Vector;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class Gobber_static_extension {
    @:keep
    @:pointer
    public static function gobDecode(_g:Pointer<Gobber>, _data:Slice<GoByte>):Error {
        var __tmp__ = stdgo.fmt.Fmt.sscanf(((_data : GoString)), ((("VALUE=%d" : GoString))), Go.toInterface(new Pointer<GoInt>(() -> ((_g.value : GoInt)), v -> (((_g.value = ((v : Gobber))) : GoInt))))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    @:pointer
    public static function gobEncode(_g:Pointer<Gobber>):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        return { _0 : ((stdgo.fmt.Fmt.sprintf(((("VALUE=%d" : GoString))), Go.toInterface(_g.value)) : Slice<GoByte>)), _1 : ((null : stdgo.Error)) };
    }
}
class Gobber_wrapper {
    @:keep
    @:pointer
    public function gobDecode(_data:Slice<GoByte>):Error {
        var _g = Go.pointer(__t__);
        var __tmp__ = stdgo.fmt.Fmt.sscanf(((_data : GoString)), ((("VALUE=%d" : GoString))), Go.toInterface(new Pointer<GoInt>(() -> ((_g.value : GoInt)), v -> (((_g.value = ((v : Gobber))) : GoInt))))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    @:pointer
    public function gobEncode():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _g = Go.pointer(__t__);
        return { _0 : ((stdgo.fmt.Fmt.sprintf(((("VALUE=%d" : GoString))), Go.toInterface(_g.value)) : Slice<GoByte>)), _1 : ((null : stdgo.Error)) };
    }
    public var __t__ : Gobber;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class ValueGobber_static_extension {
    @:keep
    @:pointer
    public static function gobDecode(_v:Pointer<ValueGobber>, _data:Slice<GoByte>):Error {
        var __tmp__ = stdgo.fmt.Fmt.sscanf(((_data : GoString)), ((("VALUE=%s" : GoString))), Go.toInterface(new Pointer<GoString>(() -> ((_v.value : GoString)), v -> (((_v.value = ((v : ValueGobber))) : GoString))))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    public static function gobEncode(_v:ValueGobber):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        _v;
        return { _0 : ((stdgo.fmt.Fmt.sprintf(((("VALUE=%s" : GoString))), Go.toInterface(_v)) : Slice<GoByte>)), _1 : ((null : stdgo.Error)) };
    }
}
class ValueGobber_wrapper {
    @:keep
    @:pointer
    public function gobDecode(_data:Slice<GoByte>):Error {
        var _v = Go.pointer(__t__);
        var __tmp__ = stdgo.fmt.Fmt.sscanf(((_data : GoString)), ((("VALUE=%s" : GoString))), Go.toInterface(new Pointer<GoString>(() -> ((_v.value : GoString)), v -> (((_v.value = ((v : ValueGobber))) : GoString))))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    public function gobEncode():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _v = Go.pointer(__t__);
        _v;
        return { _0 : ((stdgo.fmt.Fmt.sprintf(((("VALUE=%s" : GoString))), Go.toInterface(_v)) : Slice<GoByte>)), _1 : ((null : stdgo.Error)) };
    }
    public var __t__ : ValueGobber;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class BinaryGobber_static_extension {
    @:keep
    @:pointer
    public static function unmarshalBinary(_g:Pointer<BinaryGobber>, _data:Slice<GoByte>):Error {
        var __tmp__ = stdgo.fmt.Fmt.sscanf(((_data : GoString)), ((("VALUE=%d" : GoString))), Go.toInterface(new Pointer<GoInt>(() -> ((_g.value : GoInt)), v -> (((_g.value = ((v : BinaryGobber))) : GoInt))))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    @:pointer
    public static function marshalBinary(_g:Pointer<BinaryGobber>):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        return { _0 : ((stdgo.fmt.Fmt.sprintf(((("VALUE=%d" : GoString))), Go.toInterface(_g.value)) : Slice<GoByte>)), _1 : ((null : stdgo.Error)) };
    }
}
class BinaryGobber_wrapper {
    @:keep
    @:pointer
    public function unmarshalBinary(_data:Slice<GoByte>):Error {
        var _g = Go.pointer(__t__);
        var __tmp__ = stdgo.fmt.Fmt.sscanf(((_data : GoString)), ((("VALUE=%d" : GoString))), Go.toInterface(new Pointer<GoInt>(() -> ((_g.value : GoInt)), v -> (((_g.value = ((v : BinaryGobber))) : GoInt))))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    @:pointer
    public function marshalBinary():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _g = Go.pointer(__t__);
        return { _0 : ((stdgo.fmt.Fmt.sprintf(((("VALUE=%d" : GoString))), Go.toInterface(_g.value)) : Slice<GoByte>)), _1 : ((null : stdgo.Error)) };
    }
    public var __t__ : BinaryGobber;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class BinaryValueGobber_static_extension {
    @:keep
    @:pointer
    public static function unmarshalBinary(_v:Pointer<BinaryValueGobber>, _data:Slice<GoByte>):Error {
        var __tmp__ = stdgo.fmt.Fmt.sscanf(((_data : GoString)), ((("VALUE=%s" : GoString))), Go.toInterface(new Pointer<GoString>(() -> ((_v.value : GoString)), v -> (((_v.value = ((v : BinaryValueGobber))) : GoString))))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    public static function marshalBinary(_v:BinaryValueGobber):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        _v;
        return { _0 : ((stdgo.fmt.Fmt.sprintf(((("VALUE=%s" : GoString))), Go.toInterface(_v)) : Slice<GoByte>)), _1 : ((null : stdgo.Error)) };
    }
}
class BinaryValueGobber_wrapper {
    @:keep
    @:pointer
    public function unmarshalBinary(_data:Slice<GoByte>):Error {
        var _v = Go.pointer(__t__);
        var __tmp__ = stdgo.fmt.Fmt.sscanf(((_data : GoString)), ((("VALUE=%s" : GoString))), Go.toInterface(new Pointer<GoString>(() -> ((_v.value : GoString)), v -> (((_v.value = ((v : BinaryValueGobber))) : GoString))))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    public function marshalBinary():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _v = Go.pointer(__t__);
        _v;
        return { _0 : ((stdgo.fmt.Fmt.sprintf(((("VALUE=%s" : GoString))), Go.toInterface(_v)) : Slice<GoByte>)), _1 : ((null : stdgo.Error)) };
    }
    public var __t__ : BinaryValueGobber;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class TextGobber_static_extension {
    @:keep
    @:pointer
    public static function unmarshalText(_g:Pointer<TextGobber>, _data:Slice<GoByte>):Error {
        var __tmp__ = stdgo.fmt.Fmt.sscanf(((_data : GoString)), ((("VALUE=%d" : GoString))), Go.toInterface(new Pointer<GoInt>(() -> ((_g.value : GoInt)), v -> (((_g.value = ((v : TextGobber))) : GoInt))))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    @:pointer
    public static function marshalText(_g:Pointer<TextGobber>):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        return { _0 : ((stdgo.fmt.Fmt.sprintf(((("VALUE=%d" : GoString))), Go.toInterface(_g.value)) : Slice<GoByte>)), _1 : ((null : stdgo.Error)) };
    }
}
class TextGobber_wrapper {
    @:keep
    @:pointer
    public function unmarshalText(_data:Slice<GoByte>):Error {
        var _g = Go.pointer(__t__);
        var __tmp__ = stdgo.fmt.Fmt.sscanf(((_data : GoString)), ((("VALUE=%d" : GoString))), Go.toInterface(new Pointer<GoInt>(() -> ((_g.value : GoInt)), v -> (((_g.value = ((v : TextGobber))) : GoInt))))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    @:pointer
    public function marshalText():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _g = Go.pointer(__t__);
        return { _0 : ((stdgo.fmt.Fmt.sprintf(((("VALUE=%d" : GoString))), Go.toInterface(_g.value)) : Slice<GoByte>)), _1 : ((null : stdgo.Error)) };
    }
    public var __t__ : TextGobber;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class TextValueGobber_static_extension {
    @:keep
    @:pointer
    public static function unmarshalText(_v:Pointer<TextValueGobber>, _data:Slice<GoByte>):Error {
        var __tmp__ = stdgo.fmt.Fmt.sscanf(((_data : GoString)), ((("VALUE=%s" : GoString))), Go.toInterface(new Pointer<GoString>(() -> ((_v.value : GoString)), v -> (((_v.value = ((v : TextValueGobber))) : GoString))))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    public static function marshalText(_v:TextValueGobber):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        _v;
        return { _0 : ((stdgo.fmt.Fmt.sprintf(((("VALUE=%s" : GoString))), Go.toInterface(_v)) : Slice<GoByte>)), _1 : ((null : stdgo.Error)) };
    }
}
class TextValueGobber_wrapper {
    @:keep
    @:pointer
    public function unmarshalText(_data:Slice<GoByte>):Error {
        var _v = Go.pointer(__t__);
        var __tmp__ = stdgo.fmt.Fmt.sscanf(((_data : GoString)), ((("VALUE=%s" : GoString))), Go.toInterface(new Pointer<GoString>(() -> ((_v.value : GoString)), v -> (((_v.value = ((v : TextValueGobber))) : GoString))))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    public function marshalText():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _v = Go.pointer(__t__);
        _v;
        return { _0 : ((stdgo.fmt.Fmt.sprintf(((("VALUE=%s" : GoString))), Go.toInterface(_v)) : Slice<GoByte>)), _1 : ((null : stdgo.Error)) };
    }
    public var __t__ : TextValueGobber;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_isZeroBugArray_static_extension {
    @:keep
    public static function gobDecode(_a:T_isZeroBugArray, _data:Slice<GoByte>):Error {
        _a;
        if ((_data != null ? _data.length : ((0 : GoInt))) != (_a != null ? _a.length : ((0 : GoInt)))) {
            return stdgo.io.Io.eof;
        };
        if (_a != null) _a[((0 : GoInt))] = (_data != null ? _data[((0 : GoInt))] : ((0 : GoUInt8)));
        if (_a != null) _a[((1 : GoInt))] = (_data != null ? _data[((1 : GoInt))] : ((0 : GoUInt8)));
        return ((null : stdgo.Error));
    }
    @:keep
    public static function gobEncode(_a:T_isZeroBugArray):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        (_a == null ? null : _a.__copy__());
        var _b:Slice<GoByte> = ((null : Slice<GoUInt8>)), _e:Error = ((null : stdgo.Error));
        _b = (_b != null ? _b.__append__(..._a.__slice__(0).__toArray__()) : new Slice<GoUInt8>(..._a.__slice__(0).__toArray__()));
        return { _0 : _b, _1 : ((null : stdgo.Error)) };
    }
}
class T_isZeroBugArray_wrapper {
    @:keep
    public function gobDecode(_data:Slice<GoByte>):Error {
        var _a = Go.pointer(__t__);
        _a;
        if ((_data != null ? _data.length : ((0 : GoInt))) != (_a != null ? _a.length : ((0 : GoInt)))) {
            return stdgo.io.Io.eof;
        };
        if (_a != null) _a[((0 : GoInt))] = (_data != null ? _data[((0 : GoInt))] : ((0 : GoUInt8)));
        if (_a != null) _a[((1 : GoInt))] = (_data != null ? _data[((1 : GoInt))] : ((0 : GoUInt8)));
        return ((null : stdgo.Error));
    }
    @:keep
    public function gobEncode():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _a = Go.pointer(__t__);
        (_a == null ? null : _a.__copy__());
        var _b:Slice<GoByte> = ((null : Slice<GoUInt8>)), _e:Error = ((null : stdgo.Error));
        _b = (_b != null ? _b.__append__(..._a.__slice__(0).__toArray__()) : new Slice<GoUInt8>(..._a.__slice__(0).__toArray__()));
        return { _0 : _b, _1 : ((null : stdgo.Error)) };
    }
    public var __t__ : T_isZeroBugArray;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_typeId_static_extension {
    @:keep
    public static function _name(_t:T_typeId):GoString {
        _t;
        if (_t._gobType() == null) {
            return ((("<nil>" : GoString)));
        };
        return _t._gobType()._name();
    }
    @:keep
    public static function _string(_t:T_typeId):GoString {
        _t;
        if (_t._gobType() == null) {
            return ((("<nil>" : GoString)));
        };
        return _t._gobType()._string();
    }
    @:keep
    public static function _gobType(_t:T_typeId):T_gobType {
        _t;
        if (_t == ((0 : GoInt32))) {
            return ((null : T_gobType));
        };
        return (_idToType != null ? _idToType[_t] : ((null : T_gobType)));
    }
}
class T_typeId_wrapper {
    @:keep
    public function _name():GoString {
        var _t = Go.pointer(__t__);
        _t;
        if (_t._gobType() == null) {
            return ((("<nil>" : GoString)));
        };
        return _t._gobType()._name();
    }
    @:keep
    public function _string():GoString {
        var _t = Go.pointer(__t__);
        _t;
        if (_t._gobType() == null) {
            return ((("<nil>" : GoString)));
        };
        return _t._gobType()._string();
    }
    @:keep
    public function _gobType():T_gobType {
        var _t = Go.pointer(__t__);
        _t;
        if (_t == ((0 : GoInt32))) {
            return ((null : T_gobType));
        };
        return (_idToType != null ? _idToType[_t] : ((null : T_gobType)));
    }
    public var __t__ : T_typeId;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
