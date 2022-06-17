package stdgo.encoding.binary;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _overflow : stdgo.Error = stdgo.errors.Errors.new_(((("binary: varint overflows a 64-bit integer" : GoString))));
var _s : Struct = ((new Struct(
((1 : GoInt8)),
((515 : GoInt16)),
((67438087 : GoInt32)),
(("579005069656919567" : GoInt64)),
((16 : GoUInt8)),
((4370 : GoUInt16)),
((320083222 : GoUInt32)),
(("1664107662228069662" : GoUInt64)),
stdgo.math.Math.float32frombits(((522199330 : GoUInt32))),
stdgo.math.Math.float64frombits((("2532189736284989738" : GoUInt64))),
new GoComplex128(stdgo.math.Math.float32frombits(((724315438 : GoUInt32))), stdgo.math.Math.float32frombits(((791687474 : GoUInt32)))),
new GoComplex128(stdgo.math.Math.float64frombits((("3689632501694216506" : GoUInt64))), stdgo.math.Math.float64frombits((("4268353884398829890" : GoUInt64)))),
((new GoArray<GoUInt8>(((67 : GoUInt8)), ((68 : GoUInt8)), ((69 : GoUInt8)), ((70 : GoUInt8))) : GoArray<GoUInt8>)),
true,
((new GoArray<Bool>(true, false, true, false) : GoArray<Bool>))) : Struct));
var _big : Slice<GoUInt8> = ((new Slice<GoUInt8>(
((1 : GoUInt8)),
((2 : GoUInt8)),
((3 : GoUInt8)),
((4 : GoUInt8)),
((5 : GoUInt8)),
((6 : GoUInt8)),
((7 : GoUInt8)),
((8 : GoUInt8)),
((9 : GoUInt8)),
((10 : GoUInt8)),
((11 : GoUInt8)),
((12 : GoUInt8)),
((13 : GoUInt8)),
((14 : GoUInt8)),
((15 : GoUInt8)),
((16 : GoUInt8)),
((17 : GoUInt8)),
((18 : GoUInt8)),
((19 : GoUInt8)),
((20 : GoUInt8)),
((21 : GoUInt8)),
((22 : GoUInt8)),
((23 : GoUInt8)),
((24 : GoUInt8)),
((25 : GoUInt8)),
((26 : GoUInt8)),
((27 : GoUInt8)),
((28 : GoUInt8)),
((29 : GoUInt8)),
((30 : GoUInt8)),
((31 : GoUInt8)),
((32 : GoUInt8)),
((33 : GoUInt8)),
((34 : GoUInt8)),
((35 : GoUInt8)),
((36 : GoUInt8)),
((37 : GoUInt8)),
((38 : GoUInt8)),
((39 : GoUInt8)),
((40 : GoUInt8)),
((41 : GoUInt8)),
((42 : GoUInt8)),
((43 : GoUInt8)),
((44 : GoUInt8)),
((45 : GoUInt8)),
((46 : GoUInt8)),
((47 : GoUInt8)),
((48 : GoUInt8)),
((49 : GoUInt8)),
((50 : GoUInt8)),
((51 : GoUInt8)),
((52 : GoUInt8)),
((53 : GoUInt8)),
((54 : GoUInt8)),
((55 : GoUInt8)),
((56 : GoUInt8)),
((57 : GoUInt8)),
((58 : GoUInt8)),
((59 : GoUInt8)),
((60 : GoUInt8)),
((61 : GoUInt8)),
((62 : GoUInt8)),
((63 : GoUInt8)),
((64 : GoUInt8)),
((65 : GoUInt8)),
((66 : GoUInt8)),
((67 : GoUInt8)),
((68 : GoUInt8)),
((69 : GoUInt8)),
((70 : GoUInt8)),
((1 : GoUInt8)),
((1 : GoUInt8)),
((0 : GoUInt8)),
((1 : GoUInt8)),
((0 : GoUInt8))) : Slice<GoUInt8>));
var _little : Slice<GoUInt8> = ((new Slice<GoUInt8>(
((1 : GoUInt8)),
((3 : GoUInt8)),
((2 : GoUInt8)),
((7 : GoUInt8)),
((6 : GoUInt8)),
((5 : GoUInt8)),
((4 : GoUInt8)),
((15 : GoUInt8)),
((14 : GoUInt8)),
((13 : GoUInt8)),
((12 : GoUInt8)),
((11 : GoUInt8)),
((10 : GoUInt8)),
((9 : GoUInt8)),
((8 : GoUInt8)),
((16 : GoUInt8)),
((18 : GoUInt8)),
((17 : GoUInt8)),
((22 : GoUInt8)),
((21 : GoUInt8)),
((20 : GoUInt8)),
((19 : GoUInt8)),
((30 : GoUInt8)),
((29 : GoUInt8)),
((28 : GoUInt8)),
((27 : GoUInt8)),
((26 : GoUInt8)),
((25 : GoUInt8)),
((24 : GoUInt8)),
((23 : GoUInt8)),
((34 : GoUInt8)),
((33 : GoUInt8)),
((32 : GoUInt8)),
((31 : GoUInt8)),
((42 : GoUInt8)),
((41 : GoUInt8)),
((40 : GoUInt8)),
((39 : GoUInt8)),
((38 : GoUInt8)),
((37 : GoUInt8)),
((36 : GoUInt8)),
((35 : GoUInt8)),
((46 : GoUInt8)),
((45 : GoUInt8)),
((44 : GoUInt8)),
((43 : GoUInt8)),
((50 : GoUInt8)),
((49 : GoUInt8)),
((48 : GoUInt8)),
((47 : GoUInt8)),
((58 : GoUInt8)),
((57 : GoUInt8)),
((56 : GoUInt8)),
((55 : GoUInt8)),
((54 : GoUInt8)),
((53 : GoUInt8)),
((52 : GoUInt8)),
((51 : GoUInt8)),
((66 : GoUInt8)),
((65 : GoUInt8)),
((64 : GoUInt8)),
((63 : GoUInt8)),
((62 : GoUInt8)),
((61 : GoUInt8)),
((60 : GoUInt8)),
((59 : GoUInt8)),
((67 : GoUInt8)),
((68 : GoUInt8)),
((69 : GoUInt8)),
((70 : GoUInt8)),
((1 : GoUInt8)),
((1 : GoUInt8)),
((0 : GoUInt8)),
((1 : GoUInt8)),
((0 : GoUInt8))) : Slice<GoUInt8>));
var _src : Slice<GoUInt8> = ((new Slice<GoUInt8>(((1 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8)), ((4 : GoUInt8)), ((5 : GoUInt8)), ((6 : GoUInt8)), ((7 : GoUInt8)), ((8 : GoUInt8))) : Slice<GoUInt8>));
var _res : Slice<GoInt32> = ((new Slice<GoInt32>(((16909060 : GoInt32)), ((84281096 : GoInt32))) : Slice<GoInt32>));
var _putbuf : Slice<GoUInt8> = ((new Slice<GoUInt8>(((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8))) : Slice<GoUInt8>));
var _intArrays : Slice<AnyInterface> = ((new Slice<AnyInterface>(Go.toInterface(((new GoArray<GoInt8>(...([].concat([for (i in 0 ... 100) ((0 : GoInt8))]))) : GoArray<GoInt8>))), Go.toInterface(((new GoArray<GoInt16>(...([].concat([for (i in 0 ... 100) ((0 : GoInt16))]))) : GoArray<GoInt16>))), Go.toInterface(((new GoArray<GoInt32>(...([].concat([for (i in 0 ... 100) ((0 : GoInt32))]))) : GoArray<GoInt32>))), Go.toInterface(((new GoArray<GoInt64>(...([].concat([for (i in 0 ... 100) ((0 : GoInt64))]))) : GoArray<GoInt64>))), Go.toInterface(((new GoArray<GoUInt8>(...([].concat([for (i in 0 ... 100) ((0 : GoUInt8))]))) : GoArray<GoUInt8>))), Go.toInterface(((new GoArray<GoUInt16>(...([].concat([for (i in 0 ... 100) ((0 : GoUInt16))]))) : GoArray<GoUInt16>))), Go.toInterface(((new GoArray<GoUInt32>(...([].concat([for (i in 0 ... 100) ((0 : GoUInt32))]))) : GoArray<GoUInt32>))), Go.toInterface(((new GoArray<GoUInt64>(...([].concat([for (i in 0 ... 100) ((0 : GoUInt64))]))) : GoArray<GoUInt64>)))) : Slice<AnyInterface>));
var _tests : Slice<GoInt64> = ((new Slice<GoInt64>(
(("-9223372036854775808" : GoInt64)),
(("-9223372036854775807" : GoInt64)),
((-1 : GoInt64)),
((0 : GoInt64)),
((1 : GoInt64)),
((2 : GoInt64)),
((10 : GoInt64)),
((20 : GoInt64)),
((63 : GoInt64)),
((64 : GoInt64)),
((65 : GoInt64)),
((127 : GoInt64)),
((128 : GoInt64)),
((129 : GoInt64)),
((255 : GoInt64)),
((256 : GoInt64)),
((257 : GoInt64)),
(("9223372036854775807" : GoInt64))) : Slice<GoInt64>));
var littleEndian : T_littleEndian = new T_littleEndian();
var bigEndian : T_bigEndian = new T_bigEndian();
var _structSize : stdgo.sync.Sync.Map_ = new stdgo.sync.Sync.Map_();
typedef ByteOrder = StructType & {
    public function uint16(_0:Slice<GoByte>):GoUInt16;
    public function uint32(_0:Slice<GoByte>):GoUInt32;
    public function uint64(_0:Slice<GoByte>):GoUInt64;
    public function putUint16(_0:Slice<GoByte>, _1:GoUInt16):Void;
    public function putUint32(_0:Slice<GoByte>, _1:GoUInt32):Void;
    public function putUint64(_0:Slice<GoByte>, _1:GoUInt64):Void;
    public function toString():GoString;
};
@:structInit @:using(stdgo.encoding.binary.Binary.T_littleEndian_static_extension) class T_littleEndian {
    @:keep
    public function goString():GoString {
        var _ = this;
        return ((("binary.LittleEndian" : GoString)));
    }
    @:keep
    public function toString():GoString {
        var _ = this;
        return ((("LittleEndian" : GoString)));
    }
    @:keep
    public function putUint64(_b:Slice<GoByte>, _v:GoUInt64):Void {
        var _ = this;
        (_b != null ? _b[((7 : GoInt))] : ((0 : GoUInt8)));
        if (_b != null) _b[((0 : GoInt))] = ((_v : GoByte));
        if (_b != null) _b[((1 : GoInt))] = (((_v >> ((8 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((2 : GoInt))] = (((_v >> ((16 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((3 : GoInt))] = (((_v >> ((24 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((4 : GoInt))] = (((_v >> ((32 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((5 : GoInt))] = (((_v >> ((40 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((6 : GoInt))] = (((_v >> ((48 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((7 : GoInt))] = (((_v >> ((56 : GoUnTypedInt))) : GoByte));
    }
    @:keep
    public function uint64(_b:Slice<GoByte>):GoUInt64 {
        var _ = this;
        (_b != null ? _b[((7 : GoInt))] : ((0 : GoUInt8)));
        return (((((((((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) | ((((_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((8 : GoUnTypedInt)))) | ((((_b != null ? _b[((2 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((16 : GoUnTypedInt)))) | ((((_b != null ? _b[((3 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((24 : GoUnTypedInt)))) | ((((_b != null ? _b[((4 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((32 : GoUnTypedInt)))) | ((((_b != null ? _b[((5 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((40 : GoUnTypedInt)))) | ((((_b != null ? _b[((6 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((48 : GoUnTypedInt)))) | ((((_b != null ? _b[((7 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((56 : GoUnTypedInt)));
    }
    @:keep
    public function putUint32(_b:Slice<GoByte>, _v:GoUInt32):Void {
        var _ = this;
        (_b != null ? _b[((3 : GoInt))] : ((0 : GoUInt8)));
        if (_b != null) _b[((0 : GoInt))] = ((_v : GoByte));
        if (_b != null) _b[((1 : GoInt))] = (((_v >> ((8 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((2 : GoInt))] = (((_v >> ((16 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((3 : GoInt))] = (((_v >> ((24 : GoUnTypedInt))) : GoByte));
    }
    @:keep
    public function uint32(_b:Slice<GoByte>):GoUInt32 {
        var _ = this;
        (_b != null ? _b[((3 : GoInt))] : ((0 : GoUInt8)));
        return (((((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) | ((((_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((8 : GoUnTypedInt)))) | ((((_b != null ? _b[((2 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((16 : GoUnTypedInt)))) | ((((_b != null ? _b[((3 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((24 : GoUnTypedInt)));
    }
    @:keep
    public function putUint16(_b:Slice<GoByte>, _v:GoUInt16):Void {
        var _ = this;
        (_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8)));
        if (_b != null) _b[((0 : GoInt))] = ((_v : GoByte));
        if (_b != null) _b[((1 : GoInt))] = (((_v >> ((8 : GoUnTypedInt))) : GoByte));
    }
    @:keep
    public function uint16(_b:Slice<GoByte>):GoUInt16 {
        var _ = this;
        (_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8)));
        return (((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt16)) | ((((_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt16)) << ((8 : GoUnTypedInt)));
    }
    public function new() {}
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_littleEndian();
    }
}
@:structInit @:using(stdgo.encoding.binary.Binary.T_bigEndian_static_extension) class T_bigEndian {
    @:keep
    public function goString():GoString {
        var _ = this;
        return ((("binary.BigEndian" : GoString)));
    }
    @:keep
    public function toString():GoString {
        var _ = this;
        return ((("BigEndian" : GoString)));
    }
    @:keep
    public function putUint64(_b:Slice<GoByte>, _v:GoUInt64):Void {
        var _ = this;
        (_b != null ? _b[((7 : GoInt))] : ((0 : GoUInt8)));
        if (_b != null) _b[((0 : GoInt))] = (((_v >> ((56 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((1 : GoInt))] = (((_v >> ((48 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((2 : GoInt))] = (((_v >> ((40 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((3 : GoInt))] = (((_v >> ((32 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((4 : GoInt))] = (((_v >> ((24 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((5 : GoInt))] = (((_v >> ((16 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((6 : GoInt))] = (((_v >> ((8 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((7 : GoInt))] = ((_v : GoByte));
    }
    @:keep
    public function uint64(_b:Slice<GoByte>):GoUInt64 {
        var _ = this;
        (_b != null ? _b[((7 : GoInt))] : ((0 : GoUInt8)));
        return (((((((((_b != null ? _b[((7 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) | ((((_b != null ? _b[((6 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((8 : GoUnTypedInt)))) | ((((_b != null ? _b[((5 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((16 : GoUnTypedInt)))) | ((((_b != null ? _b[((4 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((24 : GoUnTypedInt)))) | ((((_b != null ? _b[((3 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((32 : GoUnTypedInt)))) | ((((_b != null ? _b[((2 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((40 : GoUnTypedInt)))) | ((((_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((48 : GoUnTypedInt)))) | ((((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((56 : GoUnTypedInt)));
    }
    @:keep
    public function putUint32(_b:Slice<GoByte>, _v:GoUInt32):Void {
        var _ = this;
        (_b != null ? _b[((3 : GoInt))] : ((0 : GoUInt8)));
        if (_b != null) _b[((0 : GoInt))] = (((_v >> ((24 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((1 : GoInt))] = (((_v >> ((16 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((2 : GoInt))] = (((_v >> ((8 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((3 : GoInt))] = ((_v : GoByte));
    }
    @:keep
    public function uint32(_b:Slice<GoByte>):GoUInt32 {
        var _ = this;
        (_b != null ? _b[((3 : GoInt))] : ((0 : GoUInt8)));
        return (((((_b != null ? _b[((3 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) | ((((_b != null ? _b[((2 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((8 : GoUnTypedInt)))) | ((((_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((16 : GoUnTypedInt)))) | ((((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((24 : GoUnTypedInt)));
    }
    @:keep
    public function putUint16(_b:Slice<GoByte>, _v:GoUInt16):Void {
        var _ = this;
        (_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8)));
        if (_b != null) _b[((0 : GoInt))] = (((_v >> ((8 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((1 : GoInt))] = ((_v : GoByte));
    }
    @:keep
    public function uint16(_b:Slice<GoByte>):GoUInt16 {
        var _ = this;
        (_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8)));
        return (((_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt16)) | ((((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt16)) << ((8 : GoUnTypedInt)));
    }
    public function new() {}
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_bigEndian();
    }
}
@:structInit class T_coder {
    public var _order : ByteOrder = ((null : ByteOrder));
    public var _buf : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _offset : GoInt = ((0 : GoInt));
    public function new(?_order:ByteOrder, ?_buf:Slice<GoUInt8>, ?_offset:GoInt) {
        if (_order != null) this._order = _order;
        if (_buf != null) this._buf = _buf;
        if (_offset != null) this._offset = _offset;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_coder(_order, _buf, _offset);
    }
}
@:structInit class Struct {
    public var int8 : GoInt8 = ((0 : GoInt8));
    public var int16 : GoInt16 = ((0 : GoInt16));
    public var int32 : GoInt32 = ((0 : GoInt32));
    public var int64 : GoInt64 = ((0 : GoInt64));
    public var uint8 : GoUInt8 = ((0 : GoUInt8));
    public var uint16 : GoUInt16 = ((0 : GoUInt16));
    public var uint32 : GoUInt32 = ((0 : GoUInt32));
    public var uint64 : GoUInt64 = ((0 : GoUInt64));
    public var float32 : GoFloat32 = ((0 : GoFloat32));
    public var float64 : GoFloat64 = ((0 : GoFloat64));
    public var complex64 : GoComplex64 = new GoComplex64(0, 0);
    public var complex128 : GoComplex128 = new GoComplex128(0, 0);
    public var array : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 4) ((0 : GoUInt8))]);
    public var bool : Bool = false;
    public var boolArray : GoArray<Bool> = new GoArray<Bool>(...[for (i in 0 ... 4) false]);
    public function new(?int8:GoInt8, ?int16:GoInt16, ?int32:GoInt32, ?int64:GoInt64, ?uint8:GoUInt8, ?uint16:GoUInt16, ?uint32:GoUInt32, ?uint64:GoUInt64, ?float32:GoFloat32, ?float64:GoFloat64, ?complex64:GoComplex64, ?complex128:GoComplex128, ?array:GoArray<GoUInt8>, ?bool:Bool, ?boolArray:GoArray<Bool>) {
        if (int8 != null) this.int8 = int8;
        if (int16 != null) this.int16 = int16;
        if (int32 != null) this.int32 = int32;
        if (int64 != null) this.int64 = int64;
        if (uint8 != null) this.uint8 = uint8;
        if (uint16 != null) this.uint16 = uint16;
        if (uint32 != null) this.uint32 = uint32;
        if (uint64 != null) this.uint64 = uint64;
        if (float32 != null) this.float32 = float32;
        if (float64 != null) this.float64 = float64;
        if (complex64 != null) this.complex64 = complex64;
        if (complex128 != null) this.complex128 = complex128;
        if (array != null) this.array = array;
        if (bool != null) this.bool = bool;
        if (boolArray != null) this.boolArray = boolArray;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Struct(
int8,
int16,
int32,
int64,
uint8,
uint16,
uint32,
uint64,
float32,
float64,
complex64,
complex128,
array,
bool,
boolArray);
    }
}
@:structInit class T_ {
    public var int : GoInt = ((0 : GoInt));
    public var uint : GoUInt = ((0 : GoUInt));
    public var uintptr : GoUIntptr = ((0 : GoUIntptr));
    public var array : GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 4) ((0 : GoInt))]);
    public function new(?int:GoInt, ?uint:GoUInt, ?uintptr:GoUIntptr, ?array:GoArray<GoInt>) {
        if (int != null) this.int = int;
        if (uint != null) this.uint = uint;
        if (uintptr != null) this.uintptr = uintptr;
        if (array != null) this.array = array;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_(int, uint, uintptr, array);
    }
}
@:structInit class BlankFields {
    public var a : GoUInt32 = ((0 : GoUInt32));
    public var _0 : GoInt32 = ((0 : GoInt32));
    public var b : GoFloat64 = ((0 : GoFloat64));
    public var _1 : GoArray<GoInt16> = new GoArray<GoInt16>(...[for (i in 0 ... 4) ((0 : GoInt16))]);
    public var c : GoUInt8 = ((0 : GoUInt8));
    public var _2 : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 7) ((0 : GoUInt8))]);
    public var _3 : T__struct_0 = new T__struct_0();
    public function new(?a:GoUInt32, ?_0:GoInt32, ?b:GoFloat64, ?_1:GoArray<GoInt16>, ?c:GoUInt8, ?_2:GoArray<GoUInt8>, ?_3:T__struct_0) {
        if (a != null) this.a = a;
        if (_0 != null) this._0 = _0;
        if (b != null) this.b = b;
        if (_1 != null) this._1 = _1;
        if (c != null) this.c = c;
        if (_2 != null) this._2 = _2;
        if (_3 != null) this._3 = _3;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new BlankFields(a, _0, b, _1, c, _2, _3);
    }
}
@:structInit class BlankFieldsProbe {
    public var a : GoUInt32 = ((0 : GoUInt32));
    public var p0 : GoInt32 = ((0 : GoInt32));
    public var b : GoFloat64 = ((0 : GoFloat64));
    public var p1 : GoArray<GoInt16> = new GoArray<GoInt16>(...[for (i in 0 ... 4) ((0 : GoInt16))]);
    public var c : GoUInt8 = ((0 : GoUInt8));
    public var p2 : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 7) ((0 : GoUInt8))]);
    public var p3 : T__struct_1 = new T__struct_1();
    public function new(?a:GoUInt32, ?p0:GoInt32, ?b:GoFloat64, ?p1:GoArray<GoInt16>, ?c:GoUInt8, ?p2:GoArray<GoUInt8>, ?p3:T__struct_1) {
        if (a != null) this.a = a;
        if (p0 != null) this.p0 = p0;
        if (b != null) this.b = b;
        if (p1 != null) this.p1 = p1;
        if (c != null) this.c = c;
        if (p2 != null) this.p2 = p2;
        if (p3 != null) this.p3 = p3;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new BlankFieldsProbe(a, p0, b, p1, c, p2, p3);
    }
}
@:structInit class Unexported {
    public var _a : GoInt32 = ((0 : GoInt32));
    public function new(?_a:GoInt32) {
        if (_a != null) this._a = _a;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Unexported(_a);
    }
}
@:structInit @:using(stdgo.encoding.binary.Binary.T_byteSliceReader_static_extension) class T_byteSliceReader {
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _br = this;
        _br;
        var _n:GoInt = Go.copySlice(_p, _br._remain);
        _br._remain = ((_br._remain.__slice__(_n) : Slice<GoUInt8>));
        return { _0 : _n, _1 : ((null : stdgo.Error)) };
    }
    public var _remain : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public function new(?_remain:Slice<GoUInt8>) {
        if (_remain != null) this._remain = _remain;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_byteSliceReader(_remain);
    }
}
@:structInit @:local class T__struct_0 {
    public var _f : GoArray<GoFloat32> = new GoArray<GoFloat32>(...[for (i in 0 ... 8) ((0 : GoFloat32))]);
    public function toString():String return "{" + Go.string(_f) + "}";
    public function new(?_f:GoArray<GoFloat32>, ?toString) {
        if (_f != null) this._f = _f;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_0(_f);
    }
}
@:structInit @:local class T__struct_1 {
    public var f : GoArray<GoFloat32> = new GoArray<GoFloat32>(...[for (i in 0 ... 8) ((0 : GoFloat32))]);
    public function toString():String return "{" + Go.string(f) + "}";
    public function new(?f:GoArray<GoFloat32>, ?toString) {
        if (f != null) this.f = f;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_1(f);
    }
}
@:structInit @:local class T__struct_2 {
    public var _val : AnyInterface = ((null : AnyInterface));
    public var _want : GoInt = ((0 : GoInt));
    public function toString():String return "{" + Go.string(_val) + " " + Go.string(_want) + "}";
    public function new(?_val:AnyInterface, ?_want:GoInt, ?toString) {
        if (_val != null) this._val = _val;
        if (_want != null) this._want = _want;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_2(_val, _want);
    }
}
@:structInit @:local class T__struct_3 {
    public var a : Struct = new Struct();
    public function toString():String return "{" + Go.string(a) + "}";
    public function new(?a:Struct, ?toString) {
        if (a != null) this.a = a;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_3(a);
    }
}
@:structInit @:local class T__struct_4 {
    public function toString():String return "{" + "}";
    public function new(?toString) {}
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_4();
    }
}
@:structInit @:local class T__struct_5 {
    public var a : GoUInt8 = ((0 : GoUInt8));
    public var b : GoUInt8 = ((0 : GoUInt8));
    public var c : GoUInt8 = ((0 : GoUInt8));
    public var d : GoUInt8 = ((0 : GoUInt8));
    public var e : GoInt32 = ((0 : GoInt32));
    public var f : GoFloat64 = ((0 : GoFloat64));
    public function toString():String return "{" + Go.string(a) + " " + Go.string(b) + " " + Go.string(c) + " " + Go.string(d) + " " + Go.string(e) + " " + Go.string(f) + "}";
    public function new(?a:GoUInt8, ?b:GoUInt8, ?c:GoUInt8, ?d:GoUInt8, ?e:GoInt32, ?f:GoFloat64, ?toString) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (c != null) this.c = c;
        if (d != null) this.d = d;
        if (e != null) this.e = e;
        if (f != null) this.f = f;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_5(a, b, c, d, e, f);
    }
}
@:structInit @:local class T__struct_6 {
    public var _in : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _name : GoString = (("" : GoString));
    public var _wantN : GoInt = ((0 : GoInt));
    public var _wantValue : GoUInt64 = ((0 : GoUInt64));
    public function toString():String return "{" + Go.string(_in) + " " + Go.string(_name) + " " + Go.string(_wantN) + " " + Go.string(_wantValue) + "}";
    public function new(?_in:Slice<GoUInt8>, ?_name:GoString, ?_wantN:GoInt, ?_wantValue:GoUInt64, ?toString) {
        if (_in != null) this._in = _in;
        if (_name != null) this._name = _name;
        if (_wantN != null) this._wantN = _wantN;
        if (_wantValue != null) this._wantValue = _wantValue;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_6(_in, _name, _wantN, _wantValue);
    }
}
@:named @:using(stdgo.encoding.binary.Binary.T_decoder_static_extension) typedef T_decoder = T_coder;
@:named @:using(stdgo.encoding.binary.Binary.T_encoder_static_extension) typedef T_encoder = T_coder;
function read(_r:stdgo.io.Io.Reader, _order:ByteOrder, _data:AnyInterface):Error {
        {
            var _n:GoInt = _intDataSize(Go.toInterface(_data));
            if (_n != ((0 : GoInt))) {
                var _bs:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoUInt8))]);
                {
                    var __tmp__ = stdgo.io.Io.readFull(_r, _bs), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _err;
                    };
                };
                if (Go.assertable(((_data : Pointer<Bool>)))) {
                    var _data:Pointer<Bool> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    _data.value = (_bs != null ? _bs[((0 : GoInt))] : ((0 : GoUInt8))) != ((0 : GoUInt8));
                } else if (Go.assertable(((_data : Pointer<GoInt8>)))) {
                    var _data:Pointer<GoInt8> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    _data.value = (((_bs != null ? _bs[((0 : GoInt))] : ((0 : GoUInt8))) : GoInt8));
                } else if (Go.assertable(((_data : Pointer<GoUInt8>)))) {
                    var _data:Pointer<GoUInt8> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    _data.value = (_bs != null ? _bs[((0 : GoInt))] : ((0 : GoUInt8)));
                } else if (Go.assertable(((_data : Pointer<GoInt16>)))) {
                    var _data:Pointer<GoInt16> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    _data.value = ((_order.uint16(_bs) : GoInt16));
                } else if (Go.assertable(((_data : Pointer<GoUInt16>)))) {
                    var _data:Pointer<GoUInt16> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    _data.value = _order.uint16(_bs);
                } else if (Go.assertable(((_data : Pointer<GoInt32>)))) {
                    var _data:Pointer<GoInt32> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    _data.value = ((_order.uint32(_bs) : GoInt32));
                } else if (Go.assertable(((_data : Pointer<GoUInt32>)))) {
                    var _data:Pointer<GoUInt32> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    _data.value = _order.uint32(_bs);
                } else if (Go.assertable(((_data : Pointer<GoInt64>)))) {
                    var _data:Pointer<GoInt64> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    _data.value = ((_order.uint64(_bs) : GoInt64));
                } else if (Go.assertable(((_data : Pointer<GoUInt64>)))) {
                    var _data:Pointer<GoUInt64> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    _data.value = _order.uint64(_bs);
                } else if (Go.assertable(((_data : Pointer<GoFloat32>)))) {
                    var _data:Pointer<GoFloat32> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    _data.value = stdgo.math.Math.float32frombits(_order.uint32(_bs));
                } else if (Go.assertable(((_data : Pointer<GoFloat64>)))) {
                    var _data:Pointer<GoFloat64> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    _data.value = stdgo.math.Math.float64frombits(_order.uint64(_bs));
                } else if (Go.assertable(((_data : Slice<Bool>)))) {
                    var _data:Slice<Bool> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    for (_i => _x in _bs) {
                        if (_data != null) _data[_i] = _x != ((0 : GoUInt8));
                    };
                } else if (Go.assertable(((_data : Slice<GoInt8>)))) {
                    var _data:Slice<GoInt8> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    for (_i => _x in _bs) {
                        if (_data != null) _data[_i] = ((_x : GoInt8));
                    };
                } else if (Go.assertable(((_data : Slice<GoUInt8>)))) {
                    var _data:Slice<GoUInt8> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    Go.copySlice(_data, _bs);
                } else if (Go.assertable(((_data : Slice<GoInt16>)))) {
                    var _data:Slice<GoInt16> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    for (_i => _ in _data) {
                        if (_data != null) _data[_i] = ((_order.uint16(((_bs.__slice__(((2 : GoInt)) * _i) : Slice<GoUInt8>))) : GoInt16));
                    };
                } else if (Go.assertable(((_data : Slice<GoUInt16>)))) {
                    var _data:Slice<GoUInt16> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    for (_i => _ in _data) {
                        if (_data != null) _data[_i] = _order.uint16(((_bs.__slice__(((2 : GoInt)) * _i) : Slice<GoUInt8>)));
                    };
                } else if (Go.assertable(((_data : Slice<GoInt32>)))) {
                    var _data:Slice<GoInt32> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    for (_i => _ in _data) {
                        if (_data != null) _data[_i] = ((_order.uint32(((_bs.__slice__(((4 : GoInt)) * _i) : Slice<GoUInt8>))) : GoInt32));
                    };
                } else if (Go.assertable(((_data : Slice<GoUInt32>)))) {
                    var _data:Slice<GoUInt32> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    for (_i => _ in _data) {
                        if (_data != null) _data[_i] = _order.uint32(((_bs.__slice__(((4 : GoInt)) * _i) : Slice<GoUInt8>)));
                    };
                } else if (Go.assertable(((_data : Slice<GoInt64>)))) {
                    var _data:Slice<GoInt64> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    for (_i => _ in _data) {
                        if (_data != null) _data[_i] = ((_order.uint64(((_bs.__slice__(((8 : GoInt)) * _i) : Slice<GoUInt8>))) : GoInt64));
                    };
                } else if (Go.assertable(((_data : Slice<GoUInt64>)))) {
                    var _data:Slice<GoUInt64> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    for (_i => _ in _data) {
                        if (_data != null) _data[_i] = _order.uint64(((_bs.__slice__(((8 : GoInt)) * _i) : Slice<GoUInt8>)));
                    };
                } else if (Go.assertable(((_data : Slice<GoFloat32>)))) {
                    var _data:Slice<GoFloat32> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    for (_i => _ in _data) {
                        if (_data != null) _data[_i] = stdgo.math.Math.float32frombits(_order.uint32(((_bs.__slice__(((4 : GoInt)) * _i) : Slice<GoUInt8>))));
                    };
                } else if (Go.assertable(((_data : Slice<GoFloat64>)))) {
                    var _data:Slice<GoFloat64> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    for (_i => _ in _data) {
                        if (_data != null) _data[_i] = stdgo.math.Math.float64frombits(_order.uint64(((_bs.__slice__(((8 : GoInt)) * _i) : Slice<GoUInt8>))));
                    };
                } else {
                    var _data:AnyInterface = _data == null ? null : _data.__underlying__();
                    _n = ((0 : GoInt));
                };
                if (_n != ((0 : GoInt))) {
                    return ((null : stdgo.Error));
                };
            };
        };
        var _v:stdgo.reflect.Reflect.Value = (stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)).__copy__());
        var _size:GoInt = ((-1 : GoInt));
        if (_v.kind() == ((22 : GoUInt))) {
            _v = (_v.elem() == null ? null : _v.elem().__copy__());
            _size = _dataSize((_v == null ? null : _v.__copy__()));
        } else if (_v.kind() == ((23 : GoUInt))) {
            _size = _dataSize((_v == null ? null : _v.__copy__()));
        };
        if (_size < ((0 : GoInt))) {
            return stdgo.errors.Errors.new_(((("binary.Read: invalid type " : GoString))) + ((stdgo.reflect.Reflect.typeOf(Go.toInterface(_data)).toString() : GoString)));
        };
        var _d:Ref<T_decoder> = (({ _order : _order, _buf : new Slice<GoUInt8>(...[for (i in 0 ... ((_size : GoInt)).toBasic()) ((0 : GoUInt8))]), _offset : 0 } : T_decoder));
        {
            var __tmp__ = stdgo.io.Io.readFull(_r, _d._buf), _1:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        _d._value((_v == null ? null : _v.__copy__()));
        return ((null : stdgo.Error));
    }
function write(_w:stdgo.io.Io.Writer, _order:ByteOrder, _data:AnyInterface):Error {
        {
            var _n:GoInt = _intDataSize(Go.toInterface(_data));
            if (_n != ((0 : GoInt))) {
                var _bs:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoUInt8))]);
                if (Go.assertable(((_data : Pointer<Bool>)))) {
                    var _v:Pointer<Bool> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    if (_v.value) {
                        if (_bs != null) _bs[((0 : GoInt))] = ((1 : GoUInt8));
                    } else {
                        if (_bs != null) _bs[((0 : GoInt))] = ((0 : GoUInt8));
                    };
                } else if (Go.assertable(((_data : Bool)))) {
                    var _v:Bool = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    if (_v) {
                        if (_bs != null) _bs[((0 : GoInt))] = ((1 : GoUInt8));
                    } else {
                        if (_bs != null) _bs[((0 : GoInt))] = ((0 : GoUInt8));
                    };
                } else if (Go.assertable(((_data : Slice<Bool>)))) {
                    var _v:Slice<Bool> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    for (_i => _x in _v) {
                        if (_x) {
                            if (_bs != null) _bs[_i] = ((1 : GoUInt8));
                        } else {
                            if (_bs != null) _bs[_i] = ((0 : GoUInt8));
                        };
                    };
                } else if (Go.assertable(((_data : Pointer<GoInt8>)))) {
                    var _v:Pointer<GoInt8> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    if (_bs != null) _bs[((0 : GoInt))] = ((_v.value : GoByte));
                } else if (Go.assertable(((_data : GoInt8)))) {
                    var _v:GoInt8 = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    if (_bs != null) _bs[((0 : GoInt))] = ((_v : GoByte));
                } else if (Go.assertable(((_data : Slice<GoInt8>)))) {
                    var _v:Slice<GoInt8> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    for (_i => _x in _v) {
                        if (_bs != null) _bs[_i] = ((_x : GoByte));
                    };
                } else if (Go.assertable(((_data : Pointer<GoUInt8>)))) {
                    var _v:Pointer<GoUInt8> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    if (_bs != null) _bs[((0 : GoInt))] = _v.value;
                } else if (Go.assertable(((_data : GoUInt8)))) {
                    var _v:GoUInt8 = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    if (_bs != null) _bs[((0 : GoInt))] = _v;
                } else if (Go.assertable(((_data : Slice<GoUInt8>)))) {
                    var _v:Slice<GoUInt8> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    _bs = _v;
                } else if (Go.assertable(((_data : Pointer<GoInt16>)))) {
                    var _v:Pointer<GoInt16> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    _order.putUint16(_bs, ((_v.value : GoUInt16)));
                } else if (Go.assertable(((_data : GoInt16)))) {
                    var _v:GoInt16 = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    _order.putUint16(_bs, ((_v : GoUInt16)));
                } else if (Go.assertable(((_data : Slice<GoInt16>)))) {
                    var _v:Slice<GoInt16> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    for (_i => _x in _v) {
                        _order.putUint16(((_bs.__slice__(((2 : GoInt)) * _i) : Slice<GoUInt8>)), ((_x : GoUInt16)));
                    };
                } else if (Go.assertable(((_data : Pointer<GoUInt16>)))) {
                    var _v:Pointer<GoUInt16> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    _order.putUint16(_bs, _v.value);
                } else if (Go.assertable(((_data : GoUInt16)))) {
                    var _v:GoUInt16 = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    _order.putUint16(_bs, _v);
                } else if (Go.assertable(((_data : Slice<GoUInt16>)))) {
                    var _v:Slice<GoUInt16> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    for (_i => _x in _v) {
                        _order.putUint16(((_bs.__slice__(((2 : GoInt)) * _i) : Slice<GoUInt8>)), _x);
                    };
                } else if (Go.assertable(((_data : Pointer<GoInt32>)))) {
                    var _v:Pointer<GoInt32> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    _order.putUint32(_bs, ((_v.value : GoUInt32)));
                } else if (Go.assertable(((_data : GoInt32)))) {
                    var _v:GoInt32 = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    _order.putUint32(_bs, ((_v : GoUInt32)));
                } else if (Go.assertable(((_data : Slice<GoInt32>)))) {
                    var _v:Slice<GoInt32> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    for (_i => _x in _v) {
                        _order.putUint32(((_bs.__slice__(((4 : GoInt)) * _i) : Slice<GoUInt8>)), ((_x : GoUInt32)));
                    };
                } else if (Go.assertable(((_data : Pointer<GoUInt32>)))) {
                    var _v:Pointer<GoUInt32> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    _order.putUint32(_bs, _v.value);
                } else if (Go.assertable(((_data : GoUInt32)))) {
                    var _v:GoUInt32 = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    _order.putUint32(_bs, _v);
                } else if (Go.assertable(((_data : Slice<GoUInt32>)))) {
                    var _v:Slice<GoUInt32> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    for (_i => _x in _v) {
                        _order.putUint32(((_bs.__slice__(((4 : GoInt)) * _i) : Slice<GoUInt8>)), _x);
                    };
                } else if (Go.assertable(((_data : Pointer<GoInt64>)))) {
                    var _v:Pointer<GoInt64> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    _order.putUint64(_bs, ((_v.value : GoUInt64)));
                } else if (Go.assertable(((_data : GoInt64)))) {
                    var _v:GoInt64 = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    _order.putUint64(_bs, ((_v : GoUInt64)));
                } else if (Go.assertable(((_data : Slice<GoInt64>)))) {
                    var _v:Slice<GoInt64> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    for (_i => _x in _v) {
                        _order.putUint64(((_bs.__slice__(((8 : GoInt)) * _i) : Slice<GoUInt8>)), ((_x : GoUInt64)));
                    };
                } else if (Go.assertable(((_data : Pointer<GoUInt64>)))) {
                    var _v:Pointer<GoUInt64> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    _order.putUint64(_bs, _v.value);
                } else if (Go.assertable(((_data : GoUInt64)))) {
                    var _v:GoUInt64 = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    _order.putUint64(_bs, _v);
                } else if (Go.assertable(((_data : Slice<GoUInt64>)))) {
                    var _v:Slice<GoUInt64> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    for (_i => _x in _v) {
                        _order.putUint64(((_bs.__slice__(((8 : GoInt)) * _i) : Slice<GoUInt8>)), _x);
                    };
                } else if (Go.assertable(((_data : Pointer<GoFloat32>)))) {
                    var _v:Pointer<GoFloat32> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    _order.putUint32(_bs, stdgo.math.Math.float32bits(_v.value));
                } else if (Go.assertable(((_data : GoFloat32)))) {
                    var _v:GoFloat32 = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    _order.putUint32(_bs, stdgo.math.Math.float32bits(_v));
                } else if (Go.assertable(((_data : Slice<GoFloat32>)))) {
                    var _v:Slice<GoFloat32> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    for (_i => _x in _v) {
                        _order.putUint32(((_bs.__slice__(((4 : GoInt)) * _i) : Slice<GoUInt8>)), stdgo.math.Math.float32bits(_x));
                    };
                } else if (Go.assertable(((_data : Pointer<GoFloat64>)))) {
                    var _v:Pointer<GoFloat64> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    _order.putUint64(_bs, stdgo.math.Math.float64bits(_v.value));
                } else if (Go.assertable(((_data : GoFloat64)))) {
                    var _v:GoFloat64 = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    _order.putUint64(_bs, stdgo.math.Math.float64bits(_v));
                } else if (Go.assertable(((_data : Slice<GoFloat64>)))) {
                    var _v:Slice<GoFloat64> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
                    for (_i => _x in _v) {
                        _order.putUint64(((_bs.__slice__(((8 : GoInt)) * _i) : Slice<GoUInt8>)), stdgo.math.Math.float64bits(_x));
                    };
                };
                var __tmp__ = _w.write(_bs), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                return _err;
            };
        };
        var _v:stdgo.reflect.Reflect.Value = (stdgo.reflect.Reflect.indirect((stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)).__copy__())) == null ? null : stdgo.reflect.Reflect.indirect((stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)).__copy__())).__copy__());
        var _size:GoInt = _dataSize((_v == null ? null : _v.__copy__()));
        if (_size < ((0 : GoInt))) {
            return stdgo.errors.Errors.new_(((("binary.Write: invalid type " : GoString))) + ((stdgo.reflect.Reflect.typeOf(Go.toInterface(_data)).toString() : GoString)));
        };
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_size : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _e:Ref<T_encoder> = (({ _order : _order, _buf : _buf, _offset : 0 } : T_encoder));
        _e._value((_v == null ? null : _v.__copy__()));
        var __tmp__ = _w.write(_buf), _1:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
function size(_v:AnyInterface):GoInt {
        return _dataSize((stdgo.reflect.Reflect.indirect((stdgo.reflect.Reflect.valueOf(Go.toInterface(_v)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_v)).__copy__())) == null ? null : stdgo.reflect.Reflect.indirect((stdgo.reflect.Reflect.valueOf(Go.toInterface(_v)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_v)).__copy__())).__copy__()));
    }
function _dataSize(_v:stdgo.reflect.Reflect.Value):GoInt {
        if (_v.kind() == ((23 : GoUInt))) {
            {
                var _s:GoInt = _sizeof(_v.type().elem());
                if (_s >= ((0 : GoInt))) {
                    return _s * _v.len();
                };
            };
            return ((-1 : GoInt));
        } else if (_v.kind() == ((25 : GoUInt))) {
            var _t:stdgo.reflect.Reflect.Type = _v.type();
            {
                var __tmp__ = _structSize.load(Go.toInterface(_t)), _size:AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    return ((_size.value : GoInt));
                };
            };
            var _size:GoInt = _sizeof(_t);
            _structSize.store(Go.toInterface(_t), Go.toInterface(_size));
            return _size;
        } else {
            return _sizeof(_v.type());
        };
    }
function _sizeof(_t:stdgo.reflect.Reflect.Type):GoInt {
        if (_t.kind() == ((17 : GoUInt))) {
            {
                var _s:GoInt = _sizeof(_t.elem());
                if (_s >= ((0 : GoInt))) {
                    return _s * _t.len();
                };
            };
        } else if (_t.kind() == ((25 : GoUInt))) {
            var _sum:GoInt = ((0 : GoInt));
            {
                var _i:GoInt = ((0 : GoInt)), _n:GoInt = _t.numField();
                Go.cfor(_i < _n, _i++, {
                    var _s:GoInt = _sizeof(_t.field(_i).type);
                    if (_s < ((0 : GoInt))) {
                        return ((-1 : GoInt));
                    };
                    _sum = _sum + (_s);
                });
            };
            return _sum;
        } else if (_t.kind() == ((1 : GoUInt)) || _t.kind() == ((8 : GoUInt)) || _t.kind() == ((9 : GoUInt)) || _t.kind() == ((10 : GoUInt)) || _t.kind() == ((11 : GoUInt)) || _t.kind() == ((3 : GoUInt)) || _t.kind() == ((4 : GoUInt)) || _t.kind() == ((5 : GoUInt)) || _t.kind() == ((6 : GoUInt)) || _t.kind() == ((13 : GoUInt)) || _t.kind() == ((14 : GoUInt)) || _t.kind() == ((15 : GoUInt)) || _t.kind() == ((16 : GoUInt))) {
            return ((_t.size() : GoInt));
        };
        return ((-1 : GoInt));
    }
function _intDataSize(_data:AnyInterface):GoInt {
        if (Go.assertable(((_data : Bool))) || Go.assertable(((_data : GoInt8))) || Go.assertable(((_data : GoUInt8))) || Go.assertable(((_data : Pointer<Bool>))) || Go.assertable(((_data : Pointer<GoInt8>))) || Go.assertable(((_data : Pointer<GoUInt8>)))) {
            var _data:AnyInterface = _data == null ? null : _data.__underlying__();
            return ((1 : GoInt));
        } else if (Go.assertable(((_data : Slice<Bool>)))) {
            var _data:Slice<Bool> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
            return (_data != null ? _data.length : ((0 : GoInt)));
        } else if (Go.assertable(((_data : Slice<GoInt8>)))) {
            var _data:Slice<GoInt8> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
            return (_data != null ? _data.length : ((0 : GoInt)));
        } else if (Go.assertable(((_data : Slice<GoUInt8>)))) {
            var _data:Slice<GoUInt8> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
            return (_data != null ? _data.length : ((0 : GoInt)));
        } else if (Go.assertable(((_data : GoInt16))) || Go.assertable(((_data : GoUInt16))) || Go.assertable(((_data : Pointer<GoInt16>))) || Go.assertable(((_data : Pointer<GoUInt16>)))) {
            var _data:AnyInterface = _data == null ? null : _data.__underlying__();
            return ((2 : GoInt));
        } else if (Go.assertable(((_data : Slice<GoInt16>)))) {
            var _data:Slice<GoInt16> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
            return ((2 : GoInt)) * (_data != null ? _data.length : ((0 : GoInt)));
        } else if (Go.assertable(((_data : Slice<GoUInt16>)))) {
            var _data:Slice<GoUInt16> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
            return ((2 : GoInt)) * (_data != null ? _data.length : ((0 : GoInt)));
        } else if (Go.assertable(((_data : GoInt32))) || Go.assertable(((_data : GoUInt32))) || Go.assertable(((_data : Pointer<GoInt32>))) || Go.assertable(((_data : Pointer<GoUInt32>)))) {
            var _data:AnyInterface = _data == null ? null : _data.__underlying__();
            return ((4 : GoInt));
        } else if (Go.assertable(((_data : Slice<GoInt32>)))) {
            var _data:Slice<GoInt32> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
            return ((4 : GoInt)) * (_data != null ? _data.length : ((0 : GoInt)));
        } else if (Go.assertable(((_data : Slice<GoUInt32>)))) {
            var _data:Slice<GoUInt32> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
            return ((4 : GoInt)) * (_data != null ? _data.length : ((0 : GoInt)));
        } else if (Go.assertable(((_data : GoInt64))) || Go.assertable(((_data : GoUInt64))) || Go.assertable(((_data : Pointer<GoInt64>))) || Go.assertable(((_data : Pointer<GoUInt64>)))) {
            var _data:AnyInterface = _data == null ? null : _data.__underlying__();
            return ((8 : GoInt));
        } else if (Go.assertable(((_data : Slice<GoInt64>)))) {
            var _data:Slice<GoInt64> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
            return ((8 : GoInt)) * (_data != null ? _data.length : ((0 : GoInt)));
        } else if (Go.assertable(((_data : Slice<GoUInt64>)))) {
            var _data:Slice<GoUInt64> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
            return ((8 : GoInt)) * (_data != null ? _data.length : ((0 : GoInt)));
        } else if (Go.assertable(((_data : GoFloat32))) || Go.assertable(((_data : Pointer<GoFloat32>)))) {
            var _data:AnyInterface = _data == null ? null : _data.__underlying__();
            return ((4 : GoInt));
        } else if (Go.assertable(((_data : GoFloat64))) || Go.assertable(((_data : Pointer<GoFloat64>)))) {
            var _data:AnyInterface = _data == null ? null : _data.__underlying__();
            return ((8 : GoInt));
        } else if (Go.assertable(((_data : Slice<GoFloat32>)))) {
            var _data:Slice<GoFloat32> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
            return ((4 : GoInt)) * (_data != null ? _data.length : ((0 : GoInt)));
        } else if (Go.assertable(((_data : Slice<GoFloat64>)))) {
            var _data:Slice<GoFloat64> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
            return ((8 : GoInt)) * (_data != null ? _data.length : ((0 : GoInt)));
        };
        return ((0 : GoInt));
    }
function _checkResult(_t:stdgo.testing.Testing.T_, _dir:GoString, _order:ByteOrder, _err:Error, _have:AnyInterface, _want:AnyInterface):Void {
        if (_err != null) {
            _t.errorf(((("%v %v: %v" : GoString))), Go.toInterface(_dir), Go.toInterface(_order), Go.toInterface(_err));
            return;
        };
        if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_have), Go.toInterface(_want))) {
            _t.errorf(((("%v %v:\n\thave %+v\n\twant %+v" : GoString))), Go.toInterface(_dir), Go.toInterface(_order), Go.toInterface(_have), Go.toInterface(_want));
        };
    }
function _testRead(_t:stdgo.testing.Testing.T_, _order:ByteOrder, _b:Slice<GoByte>, _s1:AnyInterface):Void {
        var _s2:Struct = new Struct();
        var _err:stdgo.Error = read(stdgo.bytes.Bytes.newReader(_b), _order, Go.toInterface(_s2));
        _checkResult(_t, ((("Read" : GoString))), _order, _err, Go.toInterface(_s2), Go.toInterface(_s1));
    }
function _testWrite(_t:stdgo.testing.Testing.T_, _order:ByteOrder, _b:Slice<GoByte>, _s1:AnyInterface):Void {
        var _buf:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
        var _err:stdgo.Error = write(_buf, _order, Go.toInterface(_s1));
        _checkResult(_t, ((("Write" : GoString))), _order, _err, Go.toInterface(_buf.bytes()), Go.toInterface(_b));
    }
function testLittleEndianRead(_t:stdgo.testing.Testing.T_):Void {
        _testRead(_t, littleEndian, _little, Go.toInterface(_s));
    }
function testLittleEndianWrite(_t:stdgo.testing.Testing.T_):Void {
        _testWrite(_t, littleEndian, _little, Go.toInterface(_s));
    }
function testLittleEndianPtrWrite(_t:stdgo.testing.Testing.T_):Void {
        _testWrite(_t, littleEndian, _little, Go.toInterface(_s));
    }
function testBigEndianRead(_t:stdgo.testing.Testing.T_):Void {
        _testRead(_t, bigEndian, _big, Go.toInterface(_s));
    }
function testBigEndianWrite(_t:stdgo.testing.Testing.T_):Void {
        _testWrite(_t, bigEndian, _big, Go.toInterface(_s));
    }
function testBigEndianPtrWrite(_t:stdgo.testing.Testing.T_):Void {
        _testWrite(_t, bigEndian, _big, Go.toInterface(_s));
    }
function testReadSlice(_t:stdgo.testing.Testing.T_):Void {
        var _slice:Slice<GoInt32> = new Slice<GoInt32>(...[for (i in 0 ... ((((2 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt32))]);
        var _err:stdgo.Error = read(stdgo.bytes.Bytes.newReader(_src), bigEndian, Go.toInterface(_slice));
        _checkResult(_t, ((("ReadSlice" : GoString))), bigEndian, _err, Go.toInterface(_slice), Go.toInterface(_res));
    }
function testWriteSlice(_t:stdgo.testing.Testing.T_):Void {
        var _buf:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
        var _err:stdgo.Error = write(_buf, bigEndian, Go.toInterface(_res));
        _checkResult(_t, ((("WriteSlice" : GoString))), bigEndian, _err, Go.toInterface(_buf.bytes()), Go.toInterface(_src));
    }
function testReadBool(_t:stdgo.testing.Testing.T_):Void {
        var _res:Bool = false;
        var _err:Error = ((null : stdgo.Error));
        _err = read(stdgo.bytes.Bytes.newReader(((new Slice<GoUInt8>(((0 : GoUInt8))) : Slice<GoUInt8>))), bigEndian, Go.toInterface(Go.pointer(_res)));
        _checkResult(_t, ((("ReadBool" : GoString))), bigEndian, _err, Go.toInterface(_res), Go.toInterface(false));
        _res = false;
        _err = read(stdgo.bytes.Bytes.newReader(((new Slice<GoUInt8>(((1 : GoUInt8))) : Slice<GoUInt8>))), bigEndian, Go.toInterface(Go.pointer(_res)));
        _checkResult(_t, ((("ReadBool" : GoString))), bigEndian, _err, Go.toInterface(_res), Go.toInterface(true));
        _res = false;
        _err = read(stdgo.bytes.Bytes.newReader(((new Slice<GoUInt8>(((2 : GoUInt8))) : Slice<GoUInt8>))), bigEndian, Go.toInterface(Go.pointer(_res)));
        _checkResult(_t, ((("ReadBool" : GoString))), bigEndian, _err, Go.toInterface(_res), Go.toInterface(true));
    }
function testReadBoolSlice(_t:stdgo.testing.Testing.T_):Void {
        var _slice:Slice<Bool> = new Slice<Bool>(...[for (i in 0 ... ((((4 : GoInt)) : GoInt)).toBasic()) false]);
        var _err:stdgo.Error = read(stdgo.bytes.Bytes.newReader(((new Slice<GoUInt8>(((0 : GoUInt8)), ((1 : GoUInt8)), ((2 : GoUInt8)), ((255 : GoUInt8))) : Slice<GoUInt8>))), bigEndian, Go.toInterface(_slice));
        _checkResult(_t, ((("ReadBoolSlice" : GoString))), bigEndian, _err, Go.toInterface(_slice), Go.toInterface(((new Slice<Bool>(false, true, true, true) : Slice<Bool>))));
    }
function testSliceRoundTrip(_t:stdgo.testing.Testing.T_):Void {
        var _buf:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
        for (_0 => _array in _intArrays) {
            var _src:stdgo.reflect.Reflect.Value = (stdgo.reflect.Reflect.valueOf(Go.toInterface(_array)).elem() == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_array)).elem().__copy__());
            var _unsigned:Bool = false;
            if (_src.index(((0 : GoInt))).kind() == ((8 : GoUInt)) || _src.index(((0 : GoInt))).kind() == ((9 : GoUInt)) || _src.index(((0 : GoInt))).kind() == ((10 : GoUInt)) || _src.index(((0 : GoInt))).kind() == ((11 : GoUInt))) {
                _unsigned = true;
            };
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _src.len(), _i++, {
                    if (_unsigned) {
                        _src.index(_i).setUint((((_i * ((124076833 : GoInt))) : GoUInt64)));
                    } else {
                        _src.index(_i).setInt((((_i * ((124076833 : GoInt))) : GoInt64)));
                    };
                });
            };
            _buf.reset();
            var _srcSlice:stdgo.reflect.Reflect.Value = (_src.slice(((0 : GoInt)), _src.len()) == null ? null : _src.slice(((0 : GoInt)), _src.len()).__copy__());
            var _err:stdgo.Error = write(_buf, bigEndian, Go.toInterface(_srcSlice.interface_()));
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            var _dst:stdgo.reflect.Reflect.Value = (stdgo.reflect.Reflect.new_(_src.type()).elem() == null ? null : stdgo.reflect.Reflect.new_(_src.type()).elem().__copy__());
            var _dstSlice:stdgo.reflect.Reflect.Value = (_dst.slice(((0 : GoInt)), _dst.len()) == null ? null : _dst.slice(((0 : GoInt)), _dst.len()).__copy__());
            _err = read(_buf, bigEndian, Go.toInterface(_dstSlice.interface_()));
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            if (!stdgo.reflect.Reflect.deepEqual(Go.toInterface(_src.interface_()), Go.toInterface(_dst.interface_()))) {
                _t.fatal(Go.toInterface(_src));
            };
        };
    }
function testWriteT(_t:stdgo.testing.Testing.T_):Void {
        var _buf:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
        var _ts:T_ = ((new T_() : T_));
        {
            var _err:stdgo.Error = write(_buf, bigEndian, Go.toInterface(_ts));
            if (_err == null) {
                _t.errorf(((("WriteT: have err == nil, want non-nil" : GoString))));
            };
        };
        var _tv:stdgo.reflect.Reflect.Value = (stdgo.reflect.Reflect.indirect((stdgo.reflect.Reflect.valueOf(Go.toInterface(_ts)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_ts)).__copy__())) == null ? null : stdgo.reflect.Reflect.indirect((stdgo.reflect.Reflect.valueOf(Go.toInterface(_ts)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_ts)).__copy__())).__copy__());
        {
            var _i:GoInt = ((0 : GoInt)), _n:GoInt = _tv.numField();
            Go.cfor(_i < _n, _i++, {
                var _typ:GoString = ((_tv.field(_i).type().toString() : GoString));
                if (_typ == ((("[4]int" : GoString)))) {
                    _typ = ((("int" : GoString)));
                };
                {
                    var _err:stdgo.Error = write(_buf, bigEndian, Go.toInterface(_tv.field(_i).interface_()));
                    if (_err == null) {
                        _t.errorf(((("WriteT.%v: have err == nil, want non-nil" : GoString))), Go.toInterface(_tv.field(_i).type()));
                    } else if (!stdgo.strings.Strings.contains(_err.error(), _typ)) {
                        _t.errorf(((("WriteT: have err == %q, want it to mention %s" : GoString))), Go.toInterface(_err), Go.toInterface(_typ));
                    };
                };
            });
        };
    }
function testBlankFields(_t:stdgo.testing.Testing.T_):Void {
        var _buf:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
        var _b1:BlankFields = ((({ a : ((1234567890 : GoUInt32)), b : ((2.718281828 : GoFloat64)), c : ((42 : GoUInt8)), _0 : 0, _1 : new GoArray<GoInt16>(...[for (i in 0 ... 4) ((0 : GoInt16))]), _2 : new GoArray<GoUInt8>(...[for (i in 0 ... 7) ((0 : GoUInt8))]), _3 : { _f : new GoArray<GoFloat32>(...[for (i in 0 ... 8) ((0 : GoFloat32))]) } } : BlankFields)) == null ? null : (({ a : ((1234567890 : GoUInt32)), b : ((2.718281828 : GoFloat64)), c : ((42 : GoUInt8)), _0 : 0, _1 : new GoArray<GoInt16>(...[for (i in 0 ... 4) ((0 : GoInt16))]), _2 : new GoArray<GoUInt8>(...[for (i in 0 ... 7) ((0 : GoUInt8))]), _3 : { _f : new GoArray<GoFloat32>(...[for (i in 0 ... 8) ((0 : GoFloat32))]) } } : BlankFields)).__copy__());
        {
            var _err:stdgo.Error = write(_buf, littleEndian, Go.toInterface(_b1));
            if (_err != null) {
                _t.error(Go.toInterface(_err));
            };
        };
        var _p:BlankFieldsProbe = new BlankFieldsProbe();
        {
            var _err:stdgo.Error = read(_buf, littleEndian, Go.toInterface(_p));
            if (_err != null) {
                _t.error(Go.toInterface(_err));
            };
        };
        if ((((_p.p0 != ((0 : GoInt32))) || ((_p.p1 != null ? _p.p1[((0 : GoInt))] : ((0 : GoInt16))) != ((0 : GoInt16)))) || ((_p.p2 != null ? _p.p2[((0 : GoInt))] : ((0 : GoUInt8))) != ((0 : GoUInt8)))) || ((_p.p3.f != null ? _p.p3.f[((0 : GoInt))] : ((0 : GoFloat32))) != ((0 : GoFloat32)))) {
            _t.errorf(((("non-zero values for originally blank fields: %#v" : GoString))), Go.toInterface(_p));
        };
        {
            var _err:stdgo.Error = write(_buf, littleEndian, Go.toInterface(_p));
            if (_err != null) {
                _t.error(Go.toInterface(_err));
            };
        };
        var _b2:BlankFields = new BlankFields();
        {
            var _err:stdgo.Error = read(_buf, littleEndian, Go.toInterface(_b2));
            if (_err != null) {
                _t.error(Go.toInterface(_err));
            };
        };
        if (((_b1.a != _b2.a) || (_b1.b != _b2.b)) || (_b1.c != _b2.c)) {
            _t.errorf(((("%#v != %#v" : GoString))), Go.toInterface(_b1), Go.toInterface(_b2));
        };
    }
@:structInit class T_foo_testSizeStructCache_0 {
    public var a : GoUInt32 = ((0 : GoUInt32));
    public function new(?a:GoUInt32) {
        if (a != null) this.a = a;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_foo_testSizeStructCache_0(a);
    }
}
@:structInit class T_bar_testSizeStructCache_1 {
    public var a : Struct = new Struct();
    public var b : T_foo_testSizeStructCache_0 = new T_foo_testSizeStructCache_0();
    public var c : Struct = new Struct();
    public function new(?a:Struct, ?b:T_foo_testSizeStructCache_0, ?c:Struct) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (c != null) this.c = c;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_bar_testSizeStructCache_1(a, b, c);
    }
}
function testSizeStructCache(_t:stdgo.testing.Testing.T_):Void {
        _structSize = ((new stdgo.sync.Sync.Map_() : stdgo.sync.Sync.Map_));
        var _count:() -> GoInt = function():GoInt {
            var _i:GoInt = ((0 : GoInt));
            _structSize.range(function(_0:AnyInterface, _1:AnyInterface):Bool {
                _i++;
                return true;
            });
            return _i;
        };
        var _total:GoInt = ((0 : GoInt));
        var _added:() -> GoInt = function():GoInt {
            var _delta:GoInt = _count() - _total;
            _total = _total + (_delta);
            return _delta;
        };
        {};
        {};
        var _testcases:Slice<T__struct_2> = ((new Slice<T__struct_2>(((new T__struct_2(Go.toInterface(new T_foo_testSizeStructCache_0()), ((1 : GoInt))) : T__struct_2)), ((new T__struct_2(Go.toInterface(new T_bar_testSizeStructCache_1()), ((1 : GoInt))) : T__struct_2)), ((new T__struct_2(Go.toInterface(new T_bar_testSizeStructCache_1()), ((0 : GoInt))) : T__struct_2)), ((new T__struct_2(Go.toInterface(new T__struct_3()), ((1 : GoInt))) : T__struct_2)), ((new T__struct_2(Go.toInterface(new T__struct_3()), ((0 : GoInt))) : T__struct_2))) : Slice<T__struct_2>));
        for (_0 => _tc in _testcases) {
            if (size(Go.toInterface(_tc._val)) == ((-1 : GoInt))) {
                _t.fatalf(((("Can\'t get the size of %T" : GoString))), Go.toInterface(_tc._val));
            };
            {
                var _n:GoInt = _added();
                if (_n != _tc._want) {
                    _t.errorf(((("Sizing %T added %d entries to the cache, want %d" : GoString))), Go.toInterface(_tc._val), Go.toInterface(_n), Go.toInterface(_tc._want));
                };
            };
        };
    }
function testUnexportedRead(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
            var _u1:Unexported = ((({ _a : ((1 : GoInt32)) } : Unexported)) == null ? null : (({ _a : ((1 : GoInt32)) } : Unexported)).__copy__());
            {
                var _err:stdgo.Error = write(_buf, littleEndian, Go.toInterface(_u1));
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
            };
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    if (({
                        final r = __recover_exception__;
                        __recover_exception__ = null;
                        r;
                    }) == null) {
                        _t.fatal(Go.toInterface(((("did not panic" : GoString)))));
                    };
                };
                a();
            });
            var _u2:Unexported = new Unexported();
            read(_buf, littleEndian, Go.toInterface(_u2));
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
function testReadErrorMsg(_t:stdgo.testing.Testing.T_):Void {
        var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _read:AnyInterface -> Void = function(_data:AnyInterface):Void {
            var _err:stdgo.Error = read(_buf, littleEndian, Go.toInterface(_data));
            var _want:GoString = ((("binary.Read: invalid type " : GoString))) + ((stdgo.reflect.Reflect.typeOf(Go.toInterface(_data)).toString() : GoString));
            if (_err == null) {
                _t.errorf(((("%T: got no error; want %q" : GoString))), Go.toInterface(_data), Go.toInterface(_want));
                return;
            };
            {
                var _got:GoString = _err.error();
                if (_got != _want) {
                    _t.errorf(((("%T: got %q; want %q" : GoString))), Go.toInterface(_data), Go.toInterface(_got), Go.toInterface(_want));
                };
            };
        };
        _read(Go.toInterface(((0 : GoInt))));
        var _s:Ref<T_littleEndian> = new T__struct_4();
        _read(Go.toInterface(_s));
        var _p:Ref<Ref<T_littleEndian>> = _s;
        _read(Go.toInterface(_p));
    }
function testReadTruncated(_t:stdgo.testing.Testing.T_):Void {
        {};
        var _b1:Slice<GoInt32> = new Slice<GoInt32>(...[for (i in 0 ... ((((4 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt32))]);
        var _b2:T__struct_5 = new T__struct_5();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i <= (((("0123456789abcdef" : GoString))) != null ? ((("0123456789abcdef" : GoString))).length : ((0 : GoInt))), _i++, {
                var _errWant:Error = ((null : stdgo.Error));
                if (_i == ((0 : GoInt))) {
                    _errWant = stdgo.io.Io.eof;
                } else if (_i == (((("0123456789abcdef" : GoString))) != null ? ((("0123456789abcdef" : GoString))).length : ((0 : GoInt)))) {
                    _errWant = ((null : stdgo.Error));
                } else {
                    _errWant = stdgo.io.Io.errUnexpectedEOF;
                };
                {
                    var _err:stdgo.Error = read(stdgo.strings.Strings.newReader(((((("0123456789abcdef" : GoString))).__slice__(0, _i) : GoString))), littleEndian, Go.toInterface(_b1));
                    if (_err != _errWant) {
                        _t.errorf(((("Read(%d) with slice: got %v, want %v" : GoString))), Go.toInterface(_i), Go.toInterface(_err), Go.toInterface(_errWant));
                    };
                };
                {
                    var _err:stdgo.Error = read(stdgo.strings.Strings.newReader(((((("0123456789abcdef" : GoString))).__slice__(0, _i) : GoString))), littleEndian, Go.toInterface(_b2));
                    if (_err != _errWant) {
                        _t.errorf(((("Read(%d) with struct: got %v, want %v" : GoString))), Go.toInterface(_i), Go.toInterface(_err), Go.toInterface(_errWant));
                    };
                };
            });
        };
    }
function _testUint64SmallSliceLengthPanics():Bool {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        var _panicked:Bool = false;
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    _panicked = ({
                        final r = __recover_exception__;
                        __recover_exception__ = null;
                        r;
                    }) != null;
                };
                a();
            });
            var _b:GoArray<GoUInt8> = ((new GoArray<GoUInt8>(((1 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8)), ((4 : GoUInt8)), ((5 : GoUInt8)), ((6 : GoUInt8)), ((7 : GoUInt8)), ((8 : GoUInt8))) : GoArray<GoUInt8>));
            littleEndian.uint64(((_b.__slice__(0, ((4 : GoInt))) : Slice<GoUInt8>)));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return false;
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
                return _panicked;
            };
        };
    }
function _testPutUint64SmallSliceLengthPanics():Bool {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        var _panicked:Bool = false;
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    _panicked = ({
                        final r = __recover_exception__;
                        __recover_exception__ = null;
                        r;
                    }) != null;
                };
                a();
            });
            var _b:GoArray<GoUInt8> = ((new GoArray<GoUInt8>(...([].concat([for (i in 0 ... 8) ((0 : GoUInt8))]))) : GoArray<GoUInt8>));
            littleEndian.putUint64(((_b.__slice__(0, ((4 : GoInt))) : Slice<GoUInt8>)), (("72623859790382856" : GoUInt64)));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return false;
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
                return _panicked;
            };
        };
    }
function testEarlyBoundsChecks(_t:stdgo.testing.Testing.T_):Void {
        if (_testUint64SmallSliceLengthPanics() != true) {
            _t.errorf(((("binary.LittleEndian.Uint64 expected to panic for small slices, but didn\'t" : GoString))));
        };
        if (_testPutUint64SmallSliceLengthPanics() != true) {
            _t.errorf(((("binary.LittleEndian.PutUint64 expected to panic for small slices, but didn\'t" : GoString))));
        };
    }
function testReadInvalidDestination(_t:stdgo.testing.Testing.T_):Void {
        _testReadInvalidDestination(_t, bigEndian);
        _testReadInvalidDestination(_t, littleEndian);
    }
function _testReadInvalidDestination(_t:stdgo.testing.Testing.T_, _order:ByteOrder):Void {
        var _destinations:Slice<AnyInterface> = ((new Slice<AnyInterface>(Go.toInterface(((((0 : GoInt8)) : GoInt8))), Go.toInterface(((((0 : GoInt16)) : GoInt16))), Go.toInterface(((((0 : GoInt32)) : GoInt32))), Go.toInterface(((((0 : GoInt64)) : GoInt64))), Go.toInterface(((((0 : GoUInt8)) : GoUInt8))), Go.toInterface(((((0 : GoUInt16)) : GoUInt16))), Go.toInterface(((((0 : GoUInt32)) : GoUInt32))), Go.toInterface(((((0 : GoUInt64)) : GoUInt64))), Go.toInterface(((false : Bool)))) : Slice<AnyInterface>));
        for (_0 => _dst in _destinations) {
            var _err:stdgo.Error = read(stdgo.bytes.Bytes.newReader(((new Slice<GoUInt8>(((1 : GoUInt8)), ((2 : GoUInt8)), ((3 : GoUInt8)), ((4 : GoUInt8)), ((5 : GoUInt8)), ((6 : GoUInt8)), ((7 : GoUInt8)), ((8 : GoUInt8))) : Slice<GoUInt8>))), _order, Go.toInterface(_dst));
            var _want:GoString = stdgo.fmt.Fmt.sprintf(((("binary.Read: invalid type %T" : GoString))), Go.toInterface(_dst));
            if ((_err == null) || (_err.error() != _want)) {
                _t.fatalf(((("for type %T: got %q; want %q" : GoString))), Go.toInterface(_dst), Go.toInterface(_err), Go.toInterface(_want));
            };
        };
    }
function benchmarkReadSlice1000Int32s(_b:stdgo.testing.Testing.B):Void {
        var _bsr:Ref<T_byteSliceReader> = ((new T_byteSliceReader() : T_byteSliceReader));
        var _slice:Slice<GoInt32> = new Slice<GoInt32>(...[for (i in 0 ... ((((1000 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt32))]);
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... (((_slice != null ? _slice.length : ((0 : GoInt))) * ((4 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _b.setBytes((((_buf != null ? _buf.length : ((0 : GoInt))) : GoInt64)));
        _b.resetTimer();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _bsr._remain = _buf;
                read(_bsr, bigEndian, Go.toInterface(_slice));
            });
        };
    }
function benchmarkReadStruct(_b:stdgo.testing.Testing.B):Void {
        var _bsr:Ref<T_byteSliceReader> = ((new T_byteSliceReader() : T_byteSliceReader));
        var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        write(_buf, bigEndian, Go.toInterface(_s));
        _b.setBytes(((_dataSize((stdgo.reflect.Reflect.valueOf(Go.toInterface(_s)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_s)).__copy__())) : GoInt64)));
        var _t:Struct = (_s == null ? null : _s.__copy__());
        _b.resetTimer();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _bsr._remain = _buf.bytes();
                read(_bsr, bigEndian, Go.toInterface(_t));
            });
        };
        _b.stopTimer();
        if ((_b.n > ((0 : GoInt))) && !stdgo.reflect.Reflect.deepEqual(Go.toInterface(_s), Go.toInterface(_t))) {
            _b.fatalf(((("struct doesn\'t match:\ngot  %v;\nwant %v" : GoString))), Go.toInterface(_t), Go.toInterface(_s));
        };
    }
function benchmarkWriteStruct(_b:stdgo.testing.Testing.B):Void {
        _b.setBytes(((size(Go.toInterface(_s)) : GoInt64)));
        _b.resetTimer();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                write(stdgo.io.Io.discard, bigEndian, Go.toInterface(_s));
            });
        };
    }
function benchmarkReadInts(_b:stdgo.testing.Testing.B):Void {
        var _ls:Struct = new Struct();
        var _bsr:Ref<T_byteSliceReader> = ((new T_byteSliceReader() : T_byteSliceReader));
        var _r:stdgo.io.Io.Reader = _bsr;
        _b.setBytes(((30 : GoInt64)));
        _b.resetTimer();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _bsr._remain = _big;
                read(_r, bigEndian, Go.toInterface(Go.pointer(_ls.int8)));
                read(_r, bigEndian, Go.toInterface(Go.pointer(_ls.int16)));
                read(_r, bigEndian, Go.toInterface(Go.pointer(_ls.int32)));
                read(_r, bigEndian, Go.toInterface(Go.pointer(_ls.int64)));
                read(_r, bigEndian, Go.toInterface(Go.pointer(_ls.uint8)));
                read(_r, bigEndian, Go.toInterface(Go.pointer(_ls.uint16)));
                read(_r, bigEndian, Go.toInterface(Go.pointer(_ls.uint32)));
                read(_r, bigEndian, Go.toInterface(Go.pointer(_ls.uint64)));
            });
        };
        _b.stopTimer();
        var _want:Struct = (_s == null ? null : _s.__copy__());
        _want.float32 = ((0 : GoFloat32));
        _want.float64 = ((0 : GoFloat64));
        _want.complex64 = ((0 : GoComplex64));
        _want.complex128 = ((0 : GoComplex128));
        _want.array = ((new GoArray<GoUInt8>(((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8))) : GoArray<GoUInt8>));
        _want.bool = false;
        _want.boolArray = ((new GoArray<Bool>(false, false, false, false) : GoArray<Bool>));
        if ((_b.n > ((0 : GoInt))) && !stdgo.reflect.Reflect.deepEqual(Go.toInterface(_ls), Go.toInterface(_want))) {
            _b.fatalf(((("struct doesn\'t match:\ngot  %v;\nwant %v" : GoString))), Go.toInterface(_ls), Go.toInterface(_want));
        };
    }
function benchmarkWriteInts(_b:stdgo.testing.Testing.B):Void {
        var _buf:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
        var _w:stdgo.io.Io.Writer = _buf;
        _b.setBytes(((30 : GoInt64)));
        _b.resetTimer();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _buf.reset();
                write(_w, bigEndian, Go.toInterface(_s.int8));
                write(_w, bigEndian, Go.toInterface(_s.int16));
                write(_w, bigEndian, Go.toInterface(_s.int32));
                write(_w, bigEndian, Go.toInterface(_s.int64));
                write(_w, bigEndian, Go.toInterface(_s.uint8));
                write(_w, bigEndian, Go.toInterface(_s.uint16));
                write(_w, bigEndian, Go.toInterface(_s.uint32));
                write(_w, bigEndian, Go.toInterface(_s.uint64));
            });
        };
        _b.stopTimer();
        if ((_b.n > ((0 : GoInt))) && !stdgo.bytes.Bytes.equal(_buf.bytes(), ((_big.__slice__(0, ((30 : GoInt))) : Slice<GoUInt8>)))) {
            _b.fatalf(((("first half doesn\'t match: %x %x" : GoString))), Go.toInterface(_buf.bytes()), Go.toInterface(((_big.__slice__(0, ((30 : GoInt))) : Slice<GoUInt8>))));
        };
    }
function benchmarkWriteSlice1000Int32s(_b:stdgo.testing.Testing.B):Void {
        var _slice:Slice<GoInt32> = new Slice<GoInt32>(...[for (i in 0 ... ((((1000 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt32))]);
        var _buf:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
        var _w:stdgo.io.Io.Writer = _buf;
        _b.setBytes(((4000 : GoInt64)));
        _b.resetTimer();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _buf.reset();
                write(_w, bigEndian, Go.toInterface(_slice));
            });
        };
        _b.stopTimer();
    }
function benchmarkPutUint16(_b:stdgo.testing.Testing.B):Void {
        _b.setBytes(((2 : GoInt64)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                bigEndian.putUint16(((_putbuf.__slice__(0) : Slice<GoUInt8>)), ((_i : GoUInt16)));
            });
        };
    }
function benchmarkPutUint32(_b:stdgo.testing.Testing.B):Void {
        _b.setBytes(((4 : GoInt64)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                bigEndian.putUint32(((_putbuf.__slice__(0) : Slice<GoUInt8>)), ((_i : GoUInt32)));
            });
        };
    }
function benchmarkPutUint64(_b:stdgo.testing.Testing.B):Void {
        _b.setBytes(((8 : GoInt64)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                bigEndian.putUint64(((_putbuf.__slice__(0) : Slice<GoUInt8>)), ((_i : GoUInt64)));
            });
        };
    }
function benchmarkLittleEndianPutUint16(_b:stdgo.testing.Testing.B):Void {
        _b.setBytes(((2 : GoInt64)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                littleEndian.putUint16(((_putbuf.__slice__(0) : Slice<GoUInt8>)), ((_i : GoUInt16)));
            });
        };
    }
function benchmarkLittleEndianPutUint32(_b:stdgo.testing.Testing.B):Void {
        _b.setBytes(((4 : GoInt64)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                littleEndian.putUint32(((_putbuf.__slice__(0) : Slice<GoUInt8>)), ((_i : GoUInt32)));
            });
        };
    }
function benchmarkLittleEndianPutUint64(_b:stdgo.testing.Testing.B):Void {
        _b.setBytes(((8 : GoInt64)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                littleEndian.putUint64(((_putbuf.__slice__(0) : Slice<GoUInt8>)), ((_i : GoUInt64)));
            });
        };
    }
function benchmarkReadFloats(_b:stdgo.testing.Testing.B):Void {
        var _ls:Struct = new Struct();
        var _bsr:Ref<T_byteSliceReader> = ((new T_byteSliceReader() : T_byteSliceReader));
        var _r:stdgo.io.Io.Reader = _bsr;
        _b.setBytes(((12 : GoInt64)));
        _b.resetTimer();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _bsr._remain = ((_big.__slice__(((30 : GoInt))) : Slice<GoUInt8>));
                read(_r, bigEndian, Go.toInterface(Go.pointer(_ls.float32)));
                read(_r, bigEndian, Go.toInterface(Go.pointer(_ls.float64)));
            });
        };
        _b.stopTimer();
        var _want:Struct = (_s == null ? null : _s.__copy__());
        _want.int8 = ((0 : GoInt8));
        _want.int16 = ((0 : GoInt16));
        _want.int32 = ((0 : GoInt32));
        _want.int64 = ((0 : GoInt64));
        _want.uint8 = ((0 : GoUInt8));
        _want.uint16 = ((0 : GoUInt16));
        _want.uint32 = ((0 : GoUInt32));
        _want.uint64 = ((0 : GoUInt64));
        _want.complex64 = ((0 : GoComplex64));
        _want.complex128 = ((0 : GoComplex128));
        _want.array = ((new GoArray<GoUInt8>(((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8)), ((0 : GoUInt8))) : GoArray<GoUInt8>));
        _want.bool = false;
        _want.boolArray = ((new GoArray<Bool>(false, false, false, false) : GoArray<Bool>));
        if ((_b.n > ((0 : GoInt))) && !stdgo.reflect.Reflect.deepEqual(Go.toInterface(_ls), Go.toInterface(_want))) {
            _b.fatalf(((("struct doesn\'t match:\ngot  %v;\nwant %v" : GoString))), Go.toInterface(_ls), Go.toInterface(_want));
        };
    }
function benchmarkWriteFloats(_b:stdgo.testing.Testing.B):Void {
        var _buf:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
        var _w:stdgo.io.Io.Writer = _buf;
        _b.setBytes(((12 : GoInt64)));
        _b.resetTimer();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _buf.reset();
                write(_w, bigEndian, Go.toInterface(_s.float32));
                write(_w, bigEndian, Go.toInterface(_s.float64));
            });
        };
        _b.stopTimer();
        if ((_b.n > ((0 : GoInt))) && !stdgo.bytes.Bytes.equal(_buf.bytes(), ((_big.__slice__(((30 : GoInt)), ((42 : GoInt))) : Slice<GoUInt8>)))) {
            _b.fatalf(((("first half doesn\'t match: %x %x" : GoString))), Go.toInterface(_buf.bytes()), Go.toInterface(((_big.__slice__(((30 : GoInt)), ((42 : GoInt))) : Slice<GoUInt8>))));
        };
    }
function benchmarkReadSlice1000Float32s(_b:stdgo.testing.Testing.B):Void {
        var _bsr:Ref<T_byteSliceReader> = ((new T_byteSliceReader() : T_byteSliceReader));
        var _slice:Slice<GoFloat32> = new Slice<GoFloat32>(...[for (i in 0 ... ((((1000 : GoInt)) : GoInt)).toBasic()) ((0 : GoFloat32))]);
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... (((_slice != null ? _slice.length : ((0 : GoInt))) * ((4 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _b.setBytes((((_buf != null ? _buf.length : ((0 : GoInt))) : GoInt64)));
        _b.resetTimer();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _bsr._remain = _buf;
                read(_bsr, bigEndian, Go.toInterface(_slice));
            });
        };
    }
function benchmarkWriteSlice1000Float32s(_b:stdgo.testing.Testing.B):Void {
        var _slice:Slice<GoFloat32> = new Slice<GoFloat32>(...[for (i in 0 ... ((((1000 : GoInt)) : GoInt)).toBasic()) ((0 : GoFloat32))]);
        var _buf:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
        var _w:stdgo.io.Io.Writer = _buf;
        _b.setBytes(((4000 : GoInt64)));
        _b.resetTimer();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _buf.reset();
                write(_w, bigEndian, Go.toInterface(_slice));
            });
        };
        _b.stopTimer();
    }
function benchmarkReadSlice1000Uint8s(_b:stdgo.testing.Testing.B):Void {
        var _bsr:Ref<T_byteSliceReader> = ((new T_byteSliceReader() : T_byteSliceReader));
        var _slice:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((1000 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... (((_slice != null ? _slice.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _b.setBytes((((_buf != null ? _buf.length : ((0 : GoInt))) : GoInt64)));
        _b.resetTimer();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _bsr._remain = _buf;
                read(_bsr, bigEndian, Go.toInterface(_slice));
            });
        };
    }
function benchmarkWriteSlice1000Uint8s(_b:stdgo.testing.Testing.B):Void {
        var _slice:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((1000 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _buf:Ref<stdgo.bytes.Bytes.Buffer> = new stdgo.bytes.Bytes.Buffer();
        var _w:stdgo.io.Io.Writer = _buf;
        _b.setBytes(((1000 : GoInt64)));
        _b.resetTimer();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                _buf.reset();
                write(_w, bigEndian, Go.toInterface(_slice));
            });
        };
    }
function putUvarint(_buf:Slice<GoByte>, _x:GoUInt64):GoInt {
        var _i:GoInt = ((0 : GoInt));
        while (_x >= ((128 : GoUInt64))) {
            if (_buf != null) _buf[_i] = ((_x : GoByte)) | ((128 : GoUInt8));
            _x = _x >> (((7 : GoUnTypedInt)));
            _i++;
        };
        if (_buf != null) _buf[_i] = ((_x : GoByte));
        return _i + ((1 : GoInt));
    }
function uvarint(_buf:Slice<GoByte>):{ var _0 : GoUInt64; var _1 : GoInt; } {
        var _x:GoUInt64 = ((0 : GoUInt64));
        var _s:GoUInt = ((0 : GoUInt));
        for (_i => _b in _buf) {
            if (_i == ((10 : GoInt))) {
                return { _0 : ((0 : GoUInt64)), _1 : -(_i + ((1 : GoInt))) };
            };
            if (_b < ((128 : GoUInt8))) {
                if ((_i == ((9 : GoInt))) && (_b > ((1 : GoUInt8)))) {
                    return { _0 : ((0 : GoUInt64)), _1 : -(_i + ((1 : GoInt))) };
                };
                return { _0 : _x | (((_b : GoUInt64)) << _s), _1 : _i + ((1 : GoInt)) };
            };
            _x = _x | ((((_b & ((127 : GoUInt8))) : GoUInt64)) << _s);
            _s = _s + (((7 : GoUInt)));
        };
        return { _0 : ((0 : GoUInt64)), _1 : ((0 : GoInt)) };
    }
function putVarint(_buf:Slice<GoByte>, _x:GoInt64):GoInt {
        var _ux:GoUInt64 = ((_x : GoUInt64)) << ((1 : GoUnTypedInt));
        if (_x < ((0 : GoInt64))) {
            _ux = (-1 ^ _ux);
        };
        return putUvarint(_buf, _ux);
    }
function varint(_buf:Slice<GoByte>):{ var _0 : GoInt64; var _1 : GoInt; } {
        var __tmp__ = uvarint(_buf), _ux:GoUInt64 = __tmp__._0, _n:GoInt = __tmp__._1;
        var _x:GoInt64 = (((_ux >> ((1 : GoUnTypedInt))) : GoInt64));
        if ((_ux & ((1 : GoUInt64))) != ((0 : GoUInt64))) {
            _x = (-1 ^ _x);
        };
        return { _0 : _x, _1 : _n };
    }
function readUvarint(_r:stdgo.io.Io.ByteReader):{ var _0 : GoUInt64; var _1 : Error; } {
        var _x:GoUInt64 = ((0 : GoUInt64));
        var _s:GoUInt = ((0 : GoUInt));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((10 : GoInt)), _i++, {
                var __tmp__ = _r.readByte(), _b:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : _x, _1 : _err };
                };
                if (_b < ((128 : GoUInt8))) {
                    if ((_i == ((9 : GoInt))) && (_b > ((1 : GoUInt8)))) {
                        return { _0 : _x, _1 : _overflow };
                    };
                    return { _0 : _x | (((_b : GoUInt64)) << _s), _1 : ((null : stdgo.Error)) };
                };
                _x = _x | ((((_b & ((127 : GoUInt8))) : GoUInt64)) << _s);
                _s = _s + (((7 : GoUInt)));
            });
        };
        return { _0 : _x, _1 : _overflow };
    }
function readVarint(_r:stdgo.io.Io.ByteReader):{ var _0 : GoInt64; var _1 : Error; } {
        var __tmp__ = readUvarint(_r), _ux:GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        var _x:GoInt64 = (((_ux >> ((1 : GoUnTypedInt))) : GoInt64));
        if ((_ux & ((1 : GoUInt64))) != ((0 : GoUInt64))) {
            _x = (-1 ^ _x);
        };
        return { _0 : _x, _1 : _err };
    }
function _testConstant(_t:stdgo.testing.Testing.T_, _w:GoUInt, _max:GoInt):Void {
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((10 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _n:GoInt = putUvarint(_buf, (((1 : GoUInt64)) << _w) - ((1 : GoUInt64)));
        if (_n != _max) {
            _t.errorf(((("MaxVarintLen%d = %d; want %d" : GoString))), Go.toInterface(_w), Go.toInterface(_max), Go.toInterface(_n));
        };
    }
function testConstants(_t:stdgo.testing.Testing.T_):Void {
        _testConstant(_t, ((16 : GoUInt)), ((3 : GoInt)));
        _testConstant(_t, ((32 : GoUInt)), ((5 : GoInt)));
        _testConstant(_t, ((64 : GoUInt)), ((10 : GoInt)));
    }
function _testVarint(_t:stdgo.testing.Testing.T_, _x:GoInt64):Void {
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((10 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _n:GoInt = putVarint(_buf, _x);
        var __tmp__ = varint(((_buf.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>))), _y:GoInt64 = __tmp__._0, _m:GoInt = __tmp__._1;
        if (_x != _y) {
            _t.errorf(((("Varint(%d): got %d" : GoString))), Go.toInterface(_x), Go.toInterface(_y));
        };
        if (_n != _m) {
            _t.errorf(((("Varint(%d): got n = %d; want %d" : GoString))), Go.toInterface(_x), Go.toInterface(_m), Go.toInterface(_n));
        };
        var __tmp__ = readVarint(stdgo.bytes.Bytes.newReader(_buf)), _y:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(((("ReadVarint(%d): %s" : GoString))), Go.toInterface(_x), Go.toInterface(_err));
        };
        if (_x != _y) {
            _t.errorf(((("ReadVarint(%d): got %d" : GoString))), Go.toInterface(_x), Go.toInterface(_y));
        };
    }
function _testUvarint(_t:stdgo.testing.Testing.T_, _x:GoUInt64):Void {
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((10 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _n:GoInt = putUvarint(_buf, _x);
        var __tmp__ = uvarint(((_buf.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>))), _y:GoUInt64 = __tmp__._0, _m:GoInt = __tmp__._1;
        if (_x != _y) {
            _t.errorf(((("Uvarint(%d): got %d" : GoString))), Go.toInterface(_x), Go.toInterface(_y));
        };
        if (_n != _m) {
            _t.errorf(((("Uvarint(%d): got n = %d; want %d" : GoString))), Go.toInterface(_x), Go.toInterface(_m), Go.toInterface(_n));
        };
        var __tmp__ = readUvarint(stdgo.bytes.Bytes.newReader(_buf)), _y:GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(((("ReadUvarint(%d): %s" : GoString))), Go.toInterface(_x), Go.toInterface(_err));
        };
        if (_x != _y) {
            _t.errorf(((("ReadUvarint(%d): got %d" : GoString))), Go.toInterface(_x), Go.toInterface(_y));
        };
    }
function testVarint(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _x in _tests) {
            _testVarint(_t, _x);
            _testVarint(_t, -_x);
        };
        {
            var _x:GoInt64 = ((((7 : GoInt64)) : GoInt64));
            Go.cfor(_x != ((0 : GoInt64)), _x = _x << (((1 : GoUnTypedInt))), {
                _testVarint(_t, _x);
                _testVarint(_t, -_x);
            });
        };
    }
function testUvarint(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _x in _tests) {
            _testUvarint(_t, ((_x : GoUInt64)));
        };
        {
            var _x:GoUInt64 = ((((7 : GoUInt64)) : GoUInt64));
            Go.cfor(_x != ((0 : GoUInt64)), _x = _x << (((1 : GoUnTypedInt))), {
                _testUvarint(_t, _x);
            });
        };
    }
function testBufferTooSmall(_t:stdgo.testing.Testing.T_):Void {
        var _buf:Slice<GoUInt8> = ((new Slice<GoUInt8>(((128 : GoUInt8)), ((128 : GoUInt8)), ((128 : GoUInt8)), ((128 : GoUInt8))) : Slice<GoUInt8>));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i <= (_buf != null ? _buf.length : ((0 : GoInt))), _i++, {
                var _buf:Slice<GoUInt8> = ((_buf.__slice__(((0 : GoInt)), _i) : Slice<GoUInt8>));
                var __tmp__ = uvarint(_buf), _x:GoUInt64 = __tmp__._0, _n:GoInt = __tmp__._1;
                if ((_x != ((0 : GoUInt64))) || (_n != ((0 : GoInt)))) {
                    _t.errorf(((("Uvarint(%v): got x = %d, n = %d" : GoString))), Go.toInterface(_buf), Go.toInterface(_x), Go.toInterface(_n));
                };
                var __tmp__ = readUvarint(stdgo.bytes.Bytes.newReader(_buf)), _x:GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if ((_x != ((0 : GoUInt64))) || (_err != stdgo.io.Io.eof)) {
                    _t.errorf(((("ReadUvarint(%v): got x = %d, err = %s" : GoString))), Go.toInterface(_buf), Go.toInterface(_x), Go.toInterface(_err));
                };
            });
        };
    }
function testBufferTooBigWithOverflow(_t:stdgo.testing.Testing.T_):Void {
        var _tests:Slice<T__struct_6> = ((new Slice<T__struct_6>(((({ _name : ((("invalid: 1000 bytes" : GoString))), _in : {
            var a = function():Slice<GoByte> {
                var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((1000 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
                for (_i => _ in _b) {
                    if (_b != null) _b[_i] = ((255 : GoUInt8));
                };
                if (_b != null) _b[((999 : GoInt))] = ((0 : GoUInt8));
                return _b;
            };
            a();
        }, _wantN : ((-11 : GoInt)), _wantValue : ((0 : GoUInt64)) } : T__struct_6)) == null ? null : (({ _name : ((("invalid: 1000 bytes" : GoString))), _in : {
            var a = function():Slice<GoByte> {
                var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((1000 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
                for (_i => _ in _b) {
                    if (_b != null) _b[_i] = ((255 : GoUInt8));
                };
                if (_b != null) _b[((999 : GoInt))] = ((0 : GoUInt8));
                return _b;
            };
            a();
        }, _wantN : ((-11 : GoInt)), _wantValue : ((0 : GoUInt64)) } : T__struct_6)).__copy__()), ((({ _name : ((("valid: math.MaxUint64-40" : GoString))), _in : ((new Slice<GoUInt8>(((215 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((1 : GoUInt8))) : Slice<GoUInt8>)), _wantValue : (("18446744073709551575" : GoUInt64)), _wantN : ((10 : GoInt)) } : T__struct_6)) == null ? null : (({ _name : ((("valid: math.MaxUint64-40" : GoString))), _in : ((new Slice<GoUInt8>(((215 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((1 : GoUInt8))) : Slice<GoUInt8>)), _wantValue : (("18446744073709551575" : GoUInt64)), _wantN : ((10 : GoInt)) } : T__struct_6)).__copy__()), ((({ _name : ((("invalid: with more than MaxVarintLen64 bytes" : GoString))), _in : ((new Slice<GoUInt8>(
((215 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((1 : GoUInt8))) : Slice<GoUInt8>)), _wantN : ((-11 : GoInt)), _wantValue : ((0 : GoUInt64)) } : T__struct_6)) == null ? null : (({ _name : ((("invalid: with more than MaxVarintLen64 bytes" : GoString))), _in : ((new Slice<GoUInt8>(
((215 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((1 : GoUInt8))) : Slice<GoUInt8>)), _wantN : ((-11 : GoInt)), _wantValue : ((0 : GoUInt64)) } : T__struct_6)).__copy__()), ((({ _name : ((("invalid: 10th byte" : GoString))), _in : ((new Slice<GoUInt8>(((215 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((127 : GoUInt8))) : Slice<GoUInt8>)), _wantN : ((-10 : GoInt)), _wantValue : ((0 : GoUInt64)) } : T__struct_6)) == null ? null : (({ _name : ((("invalid: 10th byte" : GoString))), _in : ((new Slice<GoUInt8>(((215 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((255 : GoUInt8)), ((127 : GoUInt8))) : Slice<GoUInt8>)), _wantN : ((-10 : GoInt)), _wantValue : ((0 : GoUInt64)) } : T__struct_6)).__copy__())) : Slice<T__struct_6>));
        for (_0 => _tt in _tests) {
            var _tt:T__struct_6 = (_tt == null ? null : _tt.__copy__());
            _t.run(_tt._name, function(_t:stdgo.testing.Testing.T_):Void {
                var __tmp__ = uvarint(_tt._in), _value:GoUInt64 = __tmp__._0, _n:GoInt = __tmp__._1;
                {
                    var _g:GoInt = _n, _w:GoInt = _tt._wantN;
                    if (_g != _w) {
                        _t.errorf(((("bytes returned=%d, want=%d" : GoString))), Go.toInterface(_g), Go.toInterface(_w));
                    };
                };
                {
                    var _g:GoUInt64 = _value, _w:GoUInt64 = _tt._wantValue;
                    if (_g != _w) {
                        _t.errorf(((("value=%d, want=%d" : GoString))), Go.toInterface(_g), Go.toInterface(_w));
                    };
                };
            });
        };
    }
function _testOverflow(_t:stdgo.testing.Testing.T_, _buf:Slice<GoByte>, _x0:GoUInt64, _n0:GoInt, _err0:Error):Void {
        var __tmp__ = uvarint(_buf), _x:GoUInt64 = __tmp__._0, _n:GoInt = __tmp__._1;
        if ((_x != ((0 : GoUInt64))) || (_n != _n0)) {
            _t.errorf(((("Uvarint(% X): got x = %d, n = %d; want 0, %d" : GoString))), Go.toInterface(_buf), Go.toInterface(_x), Go.toInterface(_n), Go.toInterface(_n0));
        };
        var _r:Ref<stdgo.bytes.Bytes.Reader> = stdgo.bytes.Bytes.newReader(_buf);
        var _len:GoInt = _r.len();
        var __tmp__ = readUvarint(_r), _x:GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_x != _x0) || (_err != _err0)) {
            _t.errorf(((("ReadUvarint(%v): got x = %d, err = %s; want %d, %s" : GoString))), Go.toInterface(_buf), Go.toInterface(_x), Go.toInterface(_err), Go.toInterface(_x0), Go.toInterface(_err0));
        };
        {
            var _read:GoInt = _len - _r.len();
            if (_read > ((10 : GoInt))) {
                _t.errorf(((("ReadUvarint(%v): read more than MaxVarintLen64 bytes, got %d" : GoString))), Go.toInterface(_buf), Go.toInterface(_read));
            };
        };
    }
function testOverflow(_t:stdgo.testing.Testing.T_):Void {
        _testOverflow(_t, ((new Slice<GoUInt8>(((128 : GoUInt8)), ((128 : GoUInt8)), ((128 : GoUInt8)), ((128 : GoUInt8)), ((128 : GoUInt8)), ((128 : GoUInt8)), ((128 : GoUInt8)), ((128 : GoUInt8)), ((128 : GoUInt8)), ((2 : GoUInt8))) : Slice<GoUInt8>)), ((0 : GoUInt64)), ((-10 : GoInt)), _overflow);
        _testOverflow(_t, ((new Slice<GoUInt8>(
((128 : GoUInt8)),
((128 : GoUInt8)),
((128 : GoUInt8)),
((128 : GoUInt8)),
((128 : GoUInt8)),
((128 : GoUInt8)),
((128 : GoUInt8)),
((128 : GoUInt8)),
((128 : GoUInt8)),
((128 : GoUInt8)),
((128 : GoUInt8)),
((128 : GoUInt8)),
((1 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8))) : Slice<GoUInt8>)), ((0 : GoUInt64)), ((-11 : GoInt)), _overflow);
        _testOverflow(_t, ((new Slice<GoUInt8>(
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8)),
((255 : GoUInt8))) : Slice<GoUInt8>)), (("18446744073709551615" : GoUInt64)), ((-11 : GoInt)), _overflow);
    }
function testNonCanonicalZero(_t:stdgo.testing.Testing.T_):Void {
        var _buf:Slice<GoUInt8> = ((new Slice<GoUInt8>(((128 : GoUInt8)), ((128 : GoUInt8)), ((128 : GoUInt8)), ((0 : GoUInt8))) : Slice<GoUInt8>));
        var __tmp__ = uvarint(_buf), _x:GoUInt64 = __tmp__._0, _n:GoInt = __tmp__._1;
        if ((_x != ((0 : GoUInt64))) || (_n != ((4 : GoInt)))) {
            _t.errorf(((("Uvarint(%v): got x = %d, n = %d; want 0, 4" : GoString))), Go.toInterface(_buf), Go.toInterface(_x), Go.toInterface(_n));
        };
    }
function benchmarkPutUvarint32(_b:stdgo.testing.Testing.B):Void {
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((5 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _b.setBytes(((4 : GoInt64)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                {
                    var _j:GoUInt = ((((0 : GoUInt)) : GoUInt));
                    Go.cfor(_j < ((5 : GoUInt)), _j++, {
                        putUvarint(_buf, ((1 : GoUInt64)) << (_j * ((7 : GoUInt))));
                    });
                };
            });
        };
    }
function benchmarkPutUvarint64(_b:stdgo.testing.Testing.B):Void {
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((10 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _b.setBytes(((8 : GoInt64)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _b.n, _i++, {
                {
                    var _j:GoUInt = ((((0 : GoUInt)) : GoUInt));
                    Go.cfor(_j < ((10 : GoUInt)), _j++, {
                        putUvarint(_buf, ((1 : GoUInt64)) << (_j * ((7 : GoUInt))));
                    });
                };
            });
        };
    }
class ByteOrder_wrapper {
    public var __t__ : ByteOrder;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_littleEndian_wrapper {
    @:keep
    public function goString():GoString {
        var _ = __t__;
        return ((("binary.LittleEndian" : GoString)));
    }
    @:keep
    public function toString():GoString {
        var _ = __t__;
        return ((("LittleEndian" : GoString)));
    }
    @:keep
    public function putUint64(_b:Slice<GoByte>, _v:GoUInt64):Void {
        var _ = __t__;
        (_b != null ? _b[((7 : GoInt))] : ((0 : GoUInt8)));
        if (_b != null) _b[((0 : GoInt))] = ((_v : GoByte));
        if (_b != null) _b[((1 : GoInt))] = (((_v >> ((8 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((2 : GoInt))] = (((_v >> ((16 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((3 : GoInt))] = (((_v >> ((24 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((4 : GoInt))] = (((_v >> ((32 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((5 : GoInt))] = (((_v >> ((40 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((6 : GoInt))] = (((_v >> ((48 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((7 : GoInt))] = (((_v >> ((56 : GoUnTypedInt))) : GoByte));
    }
    @:keep
    public function uint64(_b:Slice<GoByte>):GoUInt64 {
        var _ = __t__;
        (_b != null ? _b[((7 : GoInt))] : ((0 : GoUInt8)));
        return (((((((((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) | ((((_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((8 : GoUnTypedInt)))) | ((((_b != null ? _b[((2 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((16 : GoUnTypedInt)))) | ((((_b != null ? _b[((3 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((24 : GoUnTypedInt)))) | ((((_b != null ? _b[((4 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((32 : GoUnTypedInt)))) | ((((_b != null ? _b[((5 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((40 : GoUnTypedInt)))) | ((((_b != null ? _b[((6 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((48 : GoUnTypedInt)))) | ((((_b != null ? _b[((7 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((56 : GoUnTypedInt)));
    }
    @:keep
    public function putUint32(_b:Slice<GoByte>, _v:GoUInt32):Void {
        var _ = __t__;
        (_b != null ? _b[((3 : GoInt))] : ((0 : GoUInt8)));
        if (_b != null) _b[((0 : GoInt))] = ((_v : GoByte));
        if (_b != null) _b[((1 : GoInt))] = (((_v >> ((8 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((2 : GoInt))] = (((_v >> ((16 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((3 : GoInt))] = (((_v >> ((24 : GoUnTypedInt))) : GoByte));
    }
    @:keep
    public function uint32(_b:Slice<GoByte>):GoUInt32 {
        var _ = __t__;
        (_b != null ? _b[((3 : GoInt))] : ((0 : GoUInt8)));
        return (((((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) | ((((_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((8 : GoUnTypedInt)))) | ((((_b != null ? _b[((2 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((16 : GoUnTypedInt)))) | ((((_b != null ? _b[((3 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((24 : GoUnTypedInt)));
    }
    @:keep
    public function putUint16(_b:Slice<GoByte>, _v:GoUInt16):Void {
        var _ = __t__;
        (_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8)));
        if (_b != null) _b[((0 : GoInt))] = ((_v : GoByte));
        if (_b != null) _b[((1 : GoInt))] = (((_v >> ((8 : GoUnTypedInt))) : GoByte));
    }
    @:keep
    public function uint16(_b:Slice<GoByte>):GoUInt16 {
        var _ = __t__;
        (_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8)));
        return (((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt16)) | ((((_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt16)) << ((8 : GoUnTypedInt)));
    }
    public var __t__ : T_littleEndian;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_littleEndian_static_extension {
    @:keep
    public static function goString( _:T_littleEndian):GoString {
        return ((("binary.LittleEndian" : GoString)));
    }
    @:keep
    public static function toString( _:T_littleEndian):GoString {
        return ((("LittleEndian" : GoString)));
    }
    @:keep
    public static function putUint64( _:T_littleEndian, _b:Slice<GoByte>, _v:GoUInt64):Void {
        (_b != null ? _b[((7 : GoInt))] : ((0 : GoUInt8)));
        if (_b != null) _b[((0 : GoInt))] = ((_v : GoByte));
        if (_b != null) _b[((1 : GoInt))] = (((_v >> ((8 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((2 : GoInt))] = (((_v >> ((16 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((3 : GoInt))] = (((_v >> ((24 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((4 : GoInt))] = (((_v >> ((32 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((5 : GoInt))] = (((_v >> ((40 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((6 : GoInt))] = (((_v >> ((48 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((7 : GoInt))] = (((_v >> ((56 : GoUnTypedInt))) : GoByte));
    }
    @:keep
    public static function uint64( _:T_littleEndian, _b:Slice<GoByte>):GoUInt64 {
        (_b != null ? _b[((7 : GoInt))] : ((0 : GoUInt8)));
        return (((((((((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) | ((((_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((8 : GoUnTypedInt)))) | ((((_b != null ? _b[((2 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((16 : GoUnTypedInt)))) | ((((_b != null ? _b[((3 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((24 : GoUnTypedInt)))) | ((((_b != null ? _b[((4 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((32 : GoUnTypedInt)))) | ((((_b != null ? _b[((5 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((40 : GoUnTypedInt)))) | ((((_b != null ? _b[((6 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((48 : GoUnTypedInt)))) | ((((_b != null ? _b[((7 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((56 : GoUnTypedInt)));
    }
    @:keep
    public static function putUint32( _:T_littleEndian, _b:Slice<GoByte>, _v:GoUInt32):Void {
        (_b != null ? _b[((3 : GoInt))] : ((0 : GoUInt8)));
        if (_b != null) _b[((0 : GoInt))] = ((_v : GoByte));
        if (_b != null) _b[((1 : GoInt))] = (((_v >> ((8 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((2 : GoInt))] = (((_v >> ((16 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((3 : GoInt))] = (((_v >> ((24 : GoUnTypedInt))) : GoByte));
    }
    @:keep
    public static function uint32( _:T_littleEndian, _b:Slice<GoByte>):GoUInt32 {
        (_b != null ? _b[((3 : GoInt))] : ((0 : GoUInt8)));
        return (((((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) | ((((_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((8 : GoUnTypedInt)))) | ((((_b != null ? _b[((2 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((16 : GoUnTypedInt)))) | ((((_b != null ? _b[((3 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((24 : GoUnTypedInt)));
    }
    @:keep
    public static function putUint16( _:T_littleEndian, _b:Slice<GoByte>, _v:GoUInt16):Void {
        (_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8)));
        if (_b != null) _b[((0 : GoInt))] = ((_v : GoByte));
        if (_b != null) _b[((1 : GoInt))] = (((_v >> ((8 : GoUnTypedInt))) : GoByte));
    }
    @:keep
    public static function uint16( _:T_littleEndian, _b:Slice<GoByte>):GoUInt16 {
        (_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8)));
        return (((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt16)) | ((((_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt16)) << ((8 : GoUnTypedInt)));
    }
}
class T_bigEndian_wrapper {
    @:keep
    public function goString():GoString {
        var _ = __t__;
        return ((("binary.BigEndian" : GoString)));
    }
    @:keep
    public function toString():GoString {
        var _ = __t__;
        return ((("BigEndian" : GoString)));
    }
    @:keep
    public function putUint64(_b:Slice<GoByte>, _v:GoUInt64):Void {
        var _ = __t__;
        (_b != null ? _b[((7 : GoInt))] : ((0 : GoUInt8)));
        if (_b != null) _b[((0 : GoInt))] = (((_v >> ((56 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((1 : GoInt))] = (((_v >> ((48 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((2 : GoInt))] = (((_v >> ((40 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((3 : GoInt))] = (((_v >> ((32 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((4 : GoInt))] = (((_v >> ((24 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((5 : GoInt))] = (((_v >> ((16 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((6 : GoInt))] = (((_v >> ((8 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((7 : GoInt))] = ((_v : GoByte));
    }
    @:keep
    public function uint64(_b:Slice<GoByte>):GoUInt64 {
        var _ = __t__;
        (_b != null ? _b[((7 : GoInt))] : ((0 : GoUInt8)));
        return (((((((((_b != null ? _b[((7 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) | ((((_b != null ? _b[((6 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((8 : GoUnTypedInt)))) | ((((_b != null ? _b[((5 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((16 : GoUnTypedInt)))) | ((((_b != null ? _b[((4 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((24 : GoUnTypedInt)))) | ((((_b != null ? _b[((3 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((32 : GoUnTypedInt)))) | ((((_b != null ? _b[((2 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((40 : GoUnTypedInt)))) | ((((_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((48 : GoUnTypedInt)))) | ((((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((56 : GoUnTypedInt)));
    }
    @:keep
    public function putUint32(_b:Slice<GoByte>, _v:GoUInt32):Void {
        var _ = __t__;
        (_b != null ? _b[((3 : GoInt))] : ((0 : GoUInt8)));
        if (_b != null) _b[((0 : GoInt))] = (((_v >> ((24 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((1 : GoInt))] = (((_v >> ((16 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((2 : GoInt))] = (((_v >> ((8 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((3 : GoInt))] = ((_v : GoByte));
    }
    @:keep
    public function uint32(_b:Slice<GoByte>):GoUInt32 {
        var _ = __t__;
        (_b != null ? _b[((3 : GoInt))] : ((0 : GoUInt8)));
        return (((((_b != null ? _b[((3 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) | ((((_b != null ? _b[((2 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((8 : GoUnTypedInt)))) | ((((_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((16 : GoUnTypedInt)))) | ((((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((24 : GoUnTypedInt)));
    }
    @:keep
    public function putUint16(_b:Slice<GoByte>, _v:GoUInt16):Void {
        var _ = __t__;
        (_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8)));
        if (_b != null) _b[((0 : GoInt))] = (((_v >> ((8 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((1 : GoInt))] = ((_v : GoByte));
    }
    @:keep
    public function uint16(_b:Slice<GoByte>):GoUInt16 {
        var _ = __t__;
        (_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8)));
        return (((_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt16)) | ((((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt16)) << ((8 : GoUnTypedInt)));
    }
    public var __t__ : T_bigEndian;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_bigEndian_static_extension {
    @:keep
    public static function goString( _:T_bigEndian):GoString {
        return ((("binary.BigEndian" : GoString)));
    }
    @:keep
    public static function toString( _:T_bigEndian):GoString {
        return ((("BigEndian" : GoString)));
    }
    @:keep
    public static function putUint64( _:T_bigEndian, _b:Slice<GoByte>, _v:GoUInt64):Void {
        (_b != null ? _b[((7 : GoInt))] : ((0 : GoUInt8)));
        if (_b != null) _b[((0 : GoInt))] = (((_v >> ((56 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((1 : GoInt))] = (((_v >> ((48 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((2 : GoInt))] = (((_v >> ((40 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((3 : GoInt))] = (((_v >> ((32 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((4 : GoInt))] = (((_v >> ((24 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((5 : GoInt))] = (((_v >> ((16 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((6 : GoInt))] = (((_v >> ((8 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((7 : GoInt))] = ((_v : GoByte));
    }
    @:keep
    public static function uint64( _:T_bigEndian, _b:Slice<GoByte>):GoUInt64 {
        (_b != null ? _b[((7 : GoInt))] : ((0 : GoUInt8)));
        return (((((((((_b != null ? _b[((7 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) | ((((_b != null ? _b[((6 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((8 : GoUnTypedInt)))) | ((((_b != null ? _b[((5 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((16 : GoUnTypedInt)))) | ((((_b != null ? _b[((4 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((24 : GoUnTypedInt)))) | ((((_b != null ? _b[((3 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((32 : GoUnTypedInt)))) | ((((_b != null ? _b[((2 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((40 : GoUnTypedInt)))) | ((((_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((48 : GoUnTypedInt)))) | ((((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((56 : GoUnTypedInt)));
    }
    @:keep
    public static function putUint32( _:T_bigEndian, _b:Slice<GoByte>, _v:GoUInt32):Void {
        (_b != null ? _b[((3 : GoInt))] : ((0 : GoUInt8)));
        if (_b != null) _b[((0 : GoInt))] = (((_v >> ((24 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((1 : GoInt))] = (((_v >> ((16 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((2 : GoInt))] = (((_v >> ((8 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((3 : GoInt))] = ((_v : GoByte));
    }
    @:keep
    public static function uint32( _:T_bigEndian, _b:Slice<GoByte>):GoUInt32 {
        (_b != null ? _b[((3 : GoInt))] : ((0 : GoUInt8)));
        return (((((_b != null ? _b[((3 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) | ((((_b != null ? _b[((2 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((8 : GoUnTypedInt)))) | ((((_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((16 : GoUnTypedInt)))) | ((((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((24 : GoUnTypedInt)));
    }
    @:keep
    public static function putUint16( _:T_bigEndian, _b:Slice<GoByte>, _v:GoUInt16):Void {
        (_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8)));
        if (_b != null) _b[((0 : GoInt))] = (((_v >> ((8 : GoUnTypedInt))) : GoByte));
        if (_b != null) _b[((1 : GoInt))] = ((_v : GoByte));
    }
    @:keep
    public static function uint16( _:T_bigEndian, _b:Slice<GoByte>):GoUInt16 {
        (_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8)));
        return (((_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt16)) | ((((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt16)) << ((8 : GoUnTypedInt)));
    }
}
class T_coder_wrapper {
    public var __t__ : T_coder;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class Struct_wrapper {
    public var __t__ : Struct;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__wrapper {
    public var __t__ : T_;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class BlankFields_wrapper {
    public var __t__ : BlankFields;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class BlankFieldsProbe_wrapper {
    public var __t__ : BlankFieldsProbe;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class Unexported_wrapper {
    public var __t__ : Unexported;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_byteSliceReader_wrapper {
    @:keep
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _br = __t__;
        _br;
        var _n:GoInt = Go.copySlice(_p, _br._remain);
        _br._remain = ((_br._remain.__slice__(_n) : Slice<GoUInt8>));
        return { _0 : _n, _1 : ((null : stdgo.Error)) };
    }
    public var __t__ : T_byteSliceReader;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_byteSliceReader_static_extension {
    @:keep
    public static function read( _br:Ref<T_byteSliceReader>, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _br;
        var _n:GoInt = Go.copySlice(_p, _br._remain);
        _br._remain = ((_br._remain.__slice__(_n) : Slice<GoUInt8>));
        return { _0 : _n, _1 : ((null : stdgo.Error)) };
    }
}
class T__struct_0_wrapper {
    public var __t__ : T__struct_0;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_1_wrapper {
    public var __t__ : T__struct_1;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_2_wrapper {
    public var __t__ : T__struct_2;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_3_wrapper {
    public var __t__ : T__struct_3;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_4_wrapper {
    public var __t__ : T__struct_4;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_5_wrapper {
    public var __t__ : T__struct_5;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_6_wrapper {
    public var __t__ : T__struct_6;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_decoder_wrapper {
    @:keep
    public function _skip(_v:stdgo.reflect.Reflect.Value):Void {
        var _d = __t__;
        _d;
        _d._offset = _d._offset + (_dataSize((_v == null ? null : _v.__copy__())));
    }
    @:keep
    public function _value(_v:stdgo.reflect.Reflect.Value):Void {
        var _d = __t__;
        _d;
        if (_v.kind() == ((17 : GoUInt))) {
            var _l:GoInt = _v.len();
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _l, _i++, {
                    _d._value((_v.index(_i) == null ? null : _v.index(_i).__copy__()));
                });
            };
        } else if (_v.kind() == ((25 : GoUInt))) {
            var _t:stdgo.reflect.Reflect.Type = _v.type();
            var _l:GoInt = _v.numField();
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _l, _i++, {
                    {
                        var _v:stdgo.reflect.Reflect.Value = (_v.field(_i) == null ? null : _v.field(_i).__copy__());
                        if (_v.canSet() || (_t.field(_i).name != ((("_" : GoString))))) {
                            _d._value((_v == null ? null : _v.__copy__()));
                        } else {
                            _d._skip((_v == null ? null : _v.__copy__()));
                        };
                    };
                });
            };
        } else if (_v.kind() == ((23 : GoUInt))) {
            var _l:GoInt = _v.len();
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _l, _i++, {
                    _d._value((_v.index(_i) == null ? null : _v.index(_i).__copy__()));
                });
            };
        } else if (_v.kind() == ((1 : GoUInt))) {
            _v.setBool(_d._bool());
        } else if (_v.kind() == ((3 : GoUInt))) {
            _v.setInt(((_d._int8() : GoInt64)));
        } else if (_v.kind() == ((4 : GoUInt))) {
            _v.setInt(((_d._int16() : GoInt64)));
        } else if (_v.kind() == ((5 : GoUInt))) {
            _v.setInt(((_d._int32() : GoInt64)));
        } else if (_v.kind() == ((6 : GoUInt))) {
            _v.setInt(_d._int64());
        } else if (_v.kind() == ((8 : GoUInt))) {
            _v.setUint(((_d._uint8() : GoUInt64)));
        } else if (_v.kind() == ((9 : GoUInt))) {
            _v.setUint(((_d._uint16() : GoUInt64)));
        } else if (_v.kind() == ((10 : GoUInt))) {
            _v.setUint(((_d._uint32() : GoUInt64)));
        } else if (_v.kind() == ((11 : GoUInt))) {
            _v.setUint(_d._uint64());
        } else if (_v.kind() == ((13 : GoUInt))) {
            _v.setFloat(((stdgo.math.Math.float32frombits(_d._uint32()) : GoFloat64)));
        } else if (_v.kind() == ((14 : GoUInt))) {
            _v.setFloat(stdgo.math.Math.float64frombits(_d._uint64()));
        } else if (_v.kind() == ((15 : GoUInt))) {
            _v.setComplex(new GoComplex128(((stdgo.math.Math.float32frombits(_d._uint32()) : GoFloat64)), ((stdgo.math.Math.float32frombits(_d._uint32()) : GoFloat64))));
        } else if (_v.kind() == ((16 : GoUInt))) {
            _v.setComplex(new GoComplex128(stdgo.math.Math.float64frombits(_d._uint64()), stdgo.math.Math.float64frombits(_d._uint64())));
        };
    }
    @:keep
    public function _int64():GoInt64 {
        var _d = __t__;
        _d;
        return ((_d._uint64() : GoInt64));
    }
    @:keep
    public function _int32():GoInt32 {
        var _d = __t__;
        _d;
        return ((_d._uint32() : GoInt32));
    }
    @:keep
    public function _int16():GoInt16 {
        var _d = __t__;
        _d;
        return ((_d._uint16() : GoInt16));
    }
    @:keep
    public function _int8():GoInt8 {
        var _d = __t__;
        _d;
        return ((_d._uint8() : GoInt8));
    }
    @:keep
    public function _uint64():GoUInt64 {
        var _d = __t__;
        _d;
        var _x:GoUInt64 = _d._order.uint64(((_d._buf.__slice__(_d._offset, _d._offset + ((8 : GoInt))) : Slice<GoUInt8>)));
        _d._offset = _d._offset + (((8 : GoInt)));
        return _x;
    }
    @:keep
    public function _uint32():GoUInt32 {
        var _d = __t__;
        _d;
        var _x:GoUInt32 = _d._order.uint32(((_d._buf.__slice__(_d._offset, _d._offset + ((4 : GoInt))) : Slice<GoUInt8>)));
        _d._offset = _d._offset + (((4 : GoInt)));
        return _x;
    }
    @:keep
    public function _uint16():GoUInt16 {
        var _d = __t__;
        _d;
        var _x:GoUInt16 = _d._order.uint16(((_d._buf.__slice__(_d._offset, _d._offset + ((2 : GoInt))) : Slice<GoUInt8>)));
        _d._offset = _d._offset + (((2 : GoInt)));
        return _x;
    }
    @:keep
    public function _uint8():GoUInt8 {
        var _d = __t__;
        _d;
        var _x:GoUInt8 = (_d._buf != null ? _d._buf[_d._offset] : ((0 : GoUInt8)));
        _d._offset++;
        return _x;
    }
    @:keep
    public function _bool():Bool {
        var _d = __t__;
        _d;
        var _x:GoUInt8 = (_d._buf != null ? _d._buf[_d._offset] : ((0 : GoUInt8)));
        _d._offset++;
        return _x != ((0 : GoUInt8));
    }
    public var __t__ : T_decoder;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_decoder_static_extension {
    @:keep
    public static function _skip( _d:Ref<T_decoder>, _v:stdgo.reflect.Reflect.Value):Void {
        _d;
        _d._offset = _d._offset + (_dataSize((_v == null ? null : _v.__copy__())));
    }
    @:keep
    public static function _value( _d:Ref<T_decoder>, _v:stdgo.reflect.Reflect.Value):Void {
        _d;
        if (_v.kind() == ((17 : GoUInt))) {
            var _l:GoInt = _v.len();
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _l, _i++, {
                    _d._value((_v.index(_i) == null ? null : _v.index(_i).__copy__()));
                });
            };
        } else if (_v.kind() == ((25 : GoUInt))) {
            var _t:stdgo.reflect.Reflect.Type = _v.type();
            var _l:GoInt = _v.numField();
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _l, _i++, {
                    {
                        var _v:stdgo.reflect.Reflect.Value = (_v.field(_i) == null ? null : _v.field(_i).__copy__());
                        if (_v.canSet() || (_t.field(_i).name != ((("_" : GoString))))) {
                            _d._value((_v == null ? null : _v.__copy__()));
                        } else {
                            _d._skip((_v == null ? null : _v.__copy__()));
                        };
                    };
                });
            };
        } else if (_v.kind() == ((23 : GoUInt))) {
            var _l:GoInt = _v.len();
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _l, _i++, {
                    _d._value((_v.index(_i) == null ? null : _v.index(_i).__copy__()));
                });
            };
        } else if (_v.kind() == ((1 : GoUInt))) {
            _v.setBool(_d._bool());
        } else if (_v.kind() == ((3 : GoUInt))) {
            _v.setInt(((_d._int8() : GoInt64)));
        } else if (_v.kind() == ((4 : GoUInt))) {
            _v.setInt(((_d._int16() : GoInt64)));
        } else if (_v.kind() == ((5 : GoUInt))) {
            _v.setInt(((_d._int32() : GoInt64)));
        } else if (_v.kind() == ((6 : GoUInt))) {
            _v.setInt(_d._int64());
        } else if (_v.kind() == ((8 : GoUInt))) {
            _v.setUint(((_d._uint8() : GoUInt64)));
        } else if (_v.kind() == ((9 : GoUInt))) {
            _v.setUint(((_d._uint16() : GoUInt64)));
        } else if (_v.kind() == ((10 : GoUInt))) {
            _v.setUint(((_d._uint32() : GoUInt64)));
        } else if (_v.kind() == ((11 : GoUInt))) {
            _v.setUint(_d._uint64());
        } else if (_v.kind() == ((13 : GoUInt))) {
            _v.setFloat(((stdgo.math.Math.float32frombits(_d._uint32()) : GoFloat64)));
        } else if (_v.kind() == ((14 : GoUInt))) {
            _v.setFloat(stdgo.math.Math.float64frombits(_d._uint64()));
        } else if (_v.kind() == ((15 : GoUInt))) {
            _v.setComplex(new GoComplex128(((stdgo.math.Math.float32frombits(_d._uint32()) : GoFloat64)), ((stdgo.math.Math.float32frombits(_d._uint32()) : GoFloat64))));
        } else if (_v.kind() == ((16 : GoUInt))) {
            _v.setComplex(new GoComplex128(stdgo.math.Math.float64frombits(_d._uint64()), stdgo.math.Math.float64frombits(_d._uint64())));
        };
    }
    @:keep
    public static function _int64( _d:Ref<T_decoder>):GoInt64 {
        _d;
        return ((_d._uint64() : GoInt64));
    }
    @:keep
    public static function _int32( _d:Ref<T_decoder>):GoInt32 {
        _d;
        return ((_d._uint32() : GoInt32));
    }
    @:keep
    public static function _int16( _d:Ref<T_decoder>):GoInt16 {
        _d;
        return ((_d._uint16() : GoInt16));
    }
    @:keep
    public static function _int8( _d:Ref<T_decoder>):GoInt8 {
        _d;
        return ((_d._uint8() : GoInt8));
    }
    @:keep
    public static function _uint64( _d:Ref<T_decoder>):GoUInt64 {
        _d;
        var _x:GoUInt64 = _d._order.uint64(((_d._buf.__slice__(_d._offset, _d._offset + ((8 : GoInt))) : Slice<GoUInt8>)));
        _d._offset = _d._offset + (((8 : GoInt)));
        return _x;
    }
    @:keep
    public static function _uint32( _d:Ref<T_decoder>):GoUInt32 {
        _d;
        var _x:GoUInt32 = _d._order.uint32(((_d._buf.__slice__(_d._offset, _d._offset + ((4 : GoInt))) : Slice<GoUInt8>)));
        _d._offset = _d._offset + (((4 : GoInt)));
        return _x;
    }
    @:keep
    public static function _uint16( _d:Ref<T_decoder>):GoUInt16 {
        _d;
        var _x:GoUInt16 = _d._order.uint16(((_d._buf.__slice__(_d._offset, _d._offset + ((2 : GoInt))) : Slice<GoUInt8>)));
        _d._offset = _d._offset + (((2 : GoInt)));
        return _x;
    }
    @:keep
    public static function _uint8( _d:Ref<T_decoder>):GoUInt8 {
        _d;
        var _x:GoUInt8 = (_d._buf != null ? _d._buf[_d._offset] : ((0 : GoUInt8)));
        _d._offset++;
        return _x;
    }
    @:keep
    public static function _bool( _d:Ref<T_decoder>):Bool {
        _d;
        var _x:GoUInt8 = (_d._buf != null ? _d._buf[_d._offset] : ((0 : GoUInt8)));
        _d._offset++;
        return _x != ((0 : GoUInt8));
    }
}
class T_encoder_wrapper {
    @:keep
    public function _skip(_v:stdgo.reflect.Reflect.Value):Void {
        var _e = __t__;
        _e;
        var _n:GoInt = _dataSize((_v == null ? null : _v.__copy__()));
        var _zero:Slice<GoUInt8> = ((_e._buf.__slice__(_e._offset, _e._offset + _n) : Slice<GoUInt8>));
        for (_i => _ in _zero) {
            if (_zero != null) _zero[_i] = ((0 : GoUInt8));
        };
        _e._offset = _e._offset + (_n);
    }
    @:keep
    public function _value(_v:stdgo.reflect.Reflect.Value):Void {
        var _e = __t__;
        _e;
        if (_v.kind() == ((17 : GoUInt))) {
            var _l:GoInt = _v.len();
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _l, _i++, {
                    _e._value((_v.index(_i) == null ? null : _v.index(_i).__copy__()));
                });
            };
        } else if (_v.kind() == ((25 : GoUInt))) {
            var _t:stdgo.reflect.Reflect.Type = _v.type();
            var _l:GoInt = _v.numField();
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _l, _i++, {
                    {
                        var _v:stdgo.reflect.Reflect.Value = (_v.field(_i) == null ? null : _v.field(_i).__copy__());
                        if (_v.canSet() || (_t.field(_i).name != ((("_" : GoString))))) {
                            _e._value((_v == null ? null : _v.__copy__()));
                        } else {
                            _e._skip((_v == null ? null : _v.__copy__()));
                        };
                    };
                });
            };
        } else if (_v.kind() == ((23 : GoUInt))) {
            var _l:GoInt = _v.len();
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _l, _i++, {
                    _e._value((_v.index(_i) == null ? null : _v.index(_i).__copy__()));
                });
            };
        } else if (_v.kind() == ((1 : GoUInt))) {
            _e._bool(_v.bool());
        } else if (_v.kind() == ((2 : GoUInt)) || _v.kind() == ((3 : GoUInt)) || _v.kind() == ((4 : GoUInt)) || _v.kind() == ((5 : GoUInt)) || _v.kind() == ((6 : GoUInt))) {
            if (_v.type().kind() == ((3 : GoUInt))) {
                _e._int8(((_v.int() : GoInt8)));
            } else if (_v.type().kind() == ((4 : GoUInt))) {
                _e._int16(((_v.int() : GoInt16)));
            } else if (_v.type().kind() == ((5 : GoUInt))) {
                _e._int32(((_v.int() : GoInt32)));
            } else if (_v.type().kind() == ((6 : GoUInt))) {
                _e._int64(_v.int());
            };
        } else if (_v.kind() == ((7 : GoUInt)) || _v.kind() == ((8 : GoUInt)) || _v.kind() == ((9 : GoUInt)) || _v.kind() == ((10 : GoUInt)) || _v.kind() == ((11 : GoUInt)) || _v.kind() == ((12 : GoUInt))) {
            if (_v.type().kind() == ((8 : GoUInt))) {
                _e._uint8(((_v.uint() : GoUInt8)));
            } else if (_v.type().kind() == ((9 : GoUInt))) {
                _e._uint16(((_v.uint() : GoUInt16)));
            } else if (_v.type().kind() == ((10 : GoUInt))) {
                _e._uint32(((_v.uint() : GoUInt32)));
            } else if (_v.type().kind() == ((11 : GoUInt))) {
                _e._uint64(_v.uint());
            };
        } else if (_v.kind() == ((13 : GoUInt)) || _v.kind() == ((14 : GoUInt))) {
            if (_v.type().kind() == ((13 : GoUInt))) {
                _e._uint32(stdgo.math.Math.float32bits(((_v.float() : GoFloat32))));
            } else if (_v.type().kind() == ((14 : GoUInt))) {
                _e._uint64(stdgo.math.Math.float64bits(_v.float()));
            };
        } else if (_v.kind() == ((15 : GoUInt)) || _v.kind() == ((16 : GoUInt))) {
            if (_v.type().kind() == ((15 : GoUInt))) {
                var _x:GoComplex128 = _v.complex();
                _e._uint32(stdgo.math.Math.float32bits(((_x.real : GoFloat32))));
                _e._uint32(stdgo.math.Math.float32bits(((_x.imag : GoFloat32))));
            } else if (_v.type().kind() == ((16 : GoUInt))) {
                var _x:GoComplex128 = _v.complex();
                _e._uint64(stdgo.math.Math.float64bits(_x.real));
                _e._uint64(stdgo.math.Math.float64bits(_x.imag));
            };
        };
    }
    @:keep
    public function _int64(_x:GoInt64):Void {
        var _e = __t__;
        _e;
        _e._uint64(((_x : GoUInt64)));
    }
    @:keep
    public function _int32(_x:GoInt32):Void {
        var _e = __t__;
        _e;
        _e._uint32(((_x : GoUInt32)));
    }
    @:keep
    public function _int16(_x:GoInt16):Void {
        var _e = __t__;
        _e;
        _e._uint16(((_x : GoUInt16)));
    }
    @:keep
    public function _int8(_x:GoInt8):Void {
        var _e = __t__;
        _e;
        _e._uint8(((_x : GoUInt8)));
    }
    @:keep
    public function _uint64(_x:GoUInt64):Void {
        var _e = __t__;
        _e;
        _e._order.putUint64(((_e._buf.__slice__(_e._offset, _e._offset + ((8 : GoInt))) : Slice<GoUInt8>)), _x);
        _e._offset = _e._offset + (((8 : GoInt)));
    }
    @:keep
    public function _uint32(_x:GoUInt32):Void {
        var _e = __t__;
        _e;
        _e._order.putUint32(((_e._buf.__slice__(_e._offset, _e._offset + ((4 : GoInt))) : Slice<GoUInt8>)), _x);
        _e._offset = _e._offset + (((4 : GoInt)));
    }
    @:keep
    public function _uint16(_x:GoUInt16):Void {
        var _e = __t__;
        _e;
        _e._order.putUint16(((_e._buf.__slice__(_e._offset, _e._offset + ((2 : GoInt))) : Slice<GoUInt8>)), _x);
        _e._offset = _e._offset + (((2 : GoInt)));
    }
    @:keep
    public function _uint8(_x:GoUInt8):Void {
        var _e = __t__;
        _e;
        if (_e._buf != null) _e._buf[_e._offset] = _x;
        _e._offset++;
    }
    @:keep
    public function _bool(_x:Bool):Void {
        var _e = __t__;
        _e;
        if (_x) {
            if (_e._buf != null) _e._buf[_e._offset] = ((1 : GoUInt8));
        } else {
            if (_e._buf != null) _e._buf[_e._offset] = ((0 : GoUInt8));
        };
        _e._offset++;
    }
    public var __t__ : T_encoder;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_encoder_static_extension {
    @:keep
    public static function _skip( _e:Ref<T_encoder>, _v:stdgo.reflect.Reflect.Value):Void {
        _e;
        var _n:GoInt = _dataSize((_v == null ? null : _v.__copy__()));
        var _zero:Slice<GoUInt8> = ((_e._buf.__slice__(_e._offset, _e._offset + _n) : Slice<GoUInt8>));
        for (_i => _ in _zero) {
            if (_zero != null) _zero[_i] = ((0 : GoUInt8));
        };
        _e._offset = _e._offset + (_n);
    }
    @:keep
    public static function _value( _e:Ref<T_encoder>, _v:stdgo.reflect.Reflect.Value):Void {
        _e;
        if (_v.kind() == ((17 : GoUInt))) {
            var _l:GoInt = _v.len();
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _l, _i++, {
                    _e._value((_v.index(_i) == null ? null : _v.index(_i).__copy__()));
                });
            };
        } else if (_v.kind() == ((25 : GoUInt))) {
            var _t:stdgo.reflect.Reflect.Type = _v.type();
            var _l:GoInt = _v.numField();
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _l, _i++, {
                    {
                        var _v:stdgo.reflect.Reflect.Value = (_v.field(_i) == null ? null : _v.field(_i).__copy__());
                        if (_v.canSet() || (_t.field(_i).name != ((("_" : GoString))))) {
                            _e._value((_v == null ? null : _v.__copy__()));
                        } else {
                            _e._skip((_v == null ? null : _v.__copy__()));
                        };
                    };
                });
            };
        } else if (_v.kind() == ((23 : GoUInt))) {
            var _l:GoInt = _v.len();
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _l, _i++, {
                    _e._value((_v.index(_i) == null ? null : _v.index(_i).__copy__()));
                });
            };
        } else if (_v.kind() == ((1 : GoUInt))) {
            _e._bool(_v.bool());
        } else if (_v.kind() == ((2 : GoUInt)) || _v.kind() == ((3 : GoUInt)) || _v.kind() == ((4 : GoUInt)) || _v.kind() == ((5 : GoUInt)) || _v.kind() == ((6 : GoUInt))) {
            if (_v.type().kind() == ((3 : GoUInt))) {
                _e._int8(((_v.int() : GoInt8)));
            } else if (_v.type().kind() == ((4 : GoUInt))) {
                _e._int16(((_v.int() : GoInt16)));
            } else if (_v.type().kind() == ((5 : GoUInt))) {
                _e._int32(((_v.int() : GoInt32)));
            } else if (_v.type().kind() == ((6 : GoUInt))) {
                _e._int64(_v.int());
            };
        } else if (_v.kind() == ((7 : GoUInt)) || _v.kind() == ((8 : GoUInt)) || _v.kind() == ((9 : GoUInt)) || _v.kind() == ((10 : GoUInt)) || _v.kind() == ((11 : GoUInt)) || _v.kind() == ((12 : GoUInt))) {
            if (_v.type().kind() == ((8 : GoUInt))) {
                _e._uint8(((_v.uint() : GoUInt8)));
            } else if (_v.type().kind() == ((9 : GoUInt))) {
                _e._uint16(((_v.uint() : GoUInt16)));
            } else if (_v.type().kind() == ((10 : GoUInt))) {
                _e._uint32(((_v.uint() : GoUInt32)));
            } else if (_v.type().kind() == ((11 : GoUInt))) {
                _e._uint64(_v.uint());
            };
        } else if (_v.kind() == ((13 : GoUInt)) || _v.kind() == ((14 : GoUInt))) {
            if (_v.type().kind() == ((13 : GoUInt))) {
                _e._uint32(stdgo.math.Math.float32bits(((_v.float() : GoFloat32))));
            } else if (_v.type().kind() == ((14 : GoUInt))) {
                _e._uint64(stdgo.math.Math.float64bits(_v.float()));
            };
        } else if (_v.kind() == ((15 : GoUInt)) || _v.kind() == ((16 : GoUInt))) {
            if (_v.type().kind() == ((15 : GoUInt))) {
                var _x:GoComplex128 = _v.complex();
                _e._uint32(stdgo.math.Math.float32bits(((_x.real : GoFloat32))));
                _e._uint32(stdgo.math.Math.float32bits(((_x.imag : GoFloat32))));
            } else if (_v.type().kind() == ((16 : GoUInt))) {
                var _x:GoComplex128 = _v.complex();
                _e._uint64(stdgo.math.Math.float64bits(_x.real));
                _e._uint64(stdgo.math.Math.float64bits(_x.imag));
            };
        };
    }
    @:keep
    public static function _int64( _e:Ref<T_encoder>, _x:GoInt64):Void {
        _e;
        _e._uint64(((_x : GoUInt64)));
    }
    @:keep
    public static function _int32( _e:Ref<T_encoder>, _x:GoInt32):Void {
        _e;
        _e._uint32(((_x : GoUInt32)));
    }
    @:keep
    public static function _int16( _e:Ref<T_encoder>, _x:GoInt16):Void {
        _e;
        _e._uint16(((_x : GoUInt16)));
    }
    @:keep
    public static function _int8( _e:Ref<T_encoder>, _x:GoInt8):Void {
        _e;
        _e._uint8(((_x : GoUInt8)));
    }
    @:keep
    public static function _uint64( _e:Ref<T_encoder>, _x:GoUInt64):Void {
        _e;
        _e._order.putUint64(((_e._buf.__slice__(_e._offset, _e._offset + ((8 : GoInt))) : Slice<GoUInt8>)), _x);
        _e._offset = _e._offset + (((8 : GoInt)));
    }
    @:keep
    public static function _uint32( _e:Ref<T_encoder>, _x:GoUInt32):Void {
        _e;
        _e._order.putUint32(((_e._buf.__slice__(_e._offset, _e._offset + ((4 : GoInt))) : Slice<GoUInt8>)), _x);
        _e._offset = _e._offset + (((4 : GoInt)));
    }
    @:keep
    public static function _uint16( _e:Ref<T_encoder>, _x:GoUInt16):Void {
        _e;
        _e._order.putUint16(((_e._buf.__slice__(_e._offset, _e._offset + ((2 : GoInt))) : Slice<GoUInt8>)), _x);
        _e._offset = _e._offset + (((2 : GoInt)));
    }
    @:keep
    public static function _uint8( _e:Ref<T_encoder>, _x:GoUInt8):Void {
        _e;
        if (_e._buf != null) _e._buf[_e._offset] = _x;
        _e._offset++;
    }
    @:keep
    public static function _bool( _e:Ref<T_encoder>, _x:Bool):Void {
        _e;
        if (_x) {
            if (_e._buf != null) _e._buf[_e._offset] = ((1 : GoUInt8));
        } else {
            if (_e._buf != null) _e._buf[_e._offset] = ((0 : GoUInt8));
        };
        _e._offset++;
    }
}
class T_foo_testSizeStructCache_0_wrapper {
    public var __t__ : T_foo_testSizeStructCache_0;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_bar_testSizeStructCache_1_wrapper {
    public var __t__ : T_bar_testSizeStructCache_1;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
