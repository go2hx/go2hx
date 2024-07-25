package stdgo._internal.encoding.binary;
private var __go2hxdoc__package : Bool;
var littleEndian : T_littleEndian = ({} : stdgo._internal.encoding.binary.Binary.T_littleEndian);
var bigEndian : T_bigEndian = ({} : stdgo._internal.encoding.binary.Binary.T_bigEndian);
var _structSize : stdgo._internal.sync.Sync.Map_ = ({} : stdgo._internal.sync.Sync.Map_);
var nativeEndian : T_nativeEndian = ({} : stdgo._internal.encoding.binary.Binary.T_nativeEndian);
final maxVarintLen16 : stdgo.GoUInt64 = (3i64 : stdgo.GoUInt64);
final maxVarintLen32 : stdgo.GoUInt64 = (5i64 : stdgo.GoUInt64);
final maxVarintLen64 : stdgo.GoUInt64 = (10i64 : stdgo.GoUInt64);
var _errOverflow : stdgo.Error = stdgo._internal.errors.Errors.new_(("binary: varint overflows a 64-bit integer" : stdgo.GoString));
var _s : stdgo._internal.encoding.binary.Binary.Struct = (new stdgo._internal.encoding.binary.Binary.Struct(
(1 : stdgo.GoInt8),
(515 : stdgo.GoInt16),
(67438087 : stdgo.GoInt32),
(579005069656919567i64 : stdgo.GoInt64),
(16 : stdgo.GoUInt8),
(4370 : stdgo.GoUInt16),
(320083222u32 : stdgo.GoUInt32),
(1664107662228069662i64 : stdgo.GoUInt64),
stdgo._internal.math.Math.float32frombits((522199330u32 : stdgo.GoUInt32)),
stdgo._internal.math.Math.float64frombits((2532189736284989738i64 : stdgo.GoUInt64)),
new stdgo.GoComplex128(stdgo._internal.math.Math.float32frombits((724315438u32 : stdgo.GoUInt32)), stdgo._internal.math.Math.float32frombits((791687474u32 : stdgo.GoUInt32))),
new stdgo.GoComplex128(stdgo._internal.math.Math.float64frombits((3689632501694216506i64 : stdgo.GoUInt64)), stdgo._internal.math.Math.float64frombits((4268353884398829890i64 : stdgo.GoUInt64))),
(new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[(67 : stdgo.GoUInt8), (68 : stdgo.GoUInt8), (69 : stdgo.GoUInt8), (70 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__(),
true,
(new stdgo.GoArray<Bool>(4, 4, ...[true, false, true, false]) : stdgo.GoArray<Bool>)) : stdgo._internal.encoding.binary.Binary.Struct);
var _big : stdgo.Slice<stdgo.GoUInt8> = (new stdgo.Slice<stdgo.GoUInt8>(75, 75, ...[
(1 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(10 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(14 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8),
(16 : stdgo.GoUInt8),
(17 : stdgo.GoUInt8),
(18 : stdgo.GoUInt8),
(19 : stdgo.GoUInt8),
(20 : stdgo.GoUInt8),
(21 : stdgo.GoUInt8),
(22 : stdgo.GoUInt8),
(23 : stdgo.GoUInt8),
(24 : stdgo.GoUInt8),
(25 : stdgo.GoUInt8),
(26 : stdgo.GoUInt8),
(27 : stdgo.GoUInt8),
(28 : stdgo.GoUInt8),
(29 : stdgo.GoUInt8),
(30 : stdgo.GoUInt8),
(31 : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
(33 : stdgo.GoUInt8),
(34 : stdgo.GoUInt8),
(35 : stdgo.GoUInt8),
(36 : stdgo.GoUInt8),
(37 : stdgo.GoUInt8),
(38 : stdgo.GoUInt8),
(39 : stdgo.GoUInt8),
(40 : stdgo.GoUInt8),
(41 : stdgo.GoUInt8),
(42 : stdgo.GoUInt8),
(43 : stdgo.GoUInt8),
(44 : stdgo.GoUInt8),
(45 : stdgo.GoUInt8),
(46 : stdgo.GoUInt8),
(47 : stdgo.GoUInt8),
(48 : stdgo.GoUInt8),
(49 : stdgo.GoUInt8),
(50 : stdgo.GoUInt8),
(51 : stdgo.GoUInt8),
(52 : stdgo.GoUInt8),
(53 : stdgo.GoUInt8),
(54 : stdgo.GoUInt8),
(55 : stdgo.GoUInt8),
(56 : stdgo.GoUInt8),
(57 : stdgo.GoUInt8),
(58 : stdgo.GoUInt8),
(59 : stdgo.GoUInt8),
(60 : stdgo.GoUInt8),
(61 : stdgo.GoUInt8),
(62 : stdgo.GoUInt8),
(63 : stdgo.GoUInt8),
(64 : stdgo.GoUInt8),
(65 : stdgo.GoUInt8),
(66 : stdgo.GoUInt8),
(67 : stdgo.GoUInt8),
(68 : stdgo.GoUInt8),
(69 : stdgo.GoUInt8),
(70 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
var _little : stdgo.Slice<stdgo.GoUInt8> = (new stdgo.Slice<stdgo.GoUInt8>(75, 75, ...[
(1 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8),
(6 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(15 : stdgo.GoUInt8),
(14 : stdgo.GoUInt8),
(13 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(11 : stdgo.GoUInt8),
(10 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(8 : stdgo.GoUInt8),
(16 : stdgo.GoUInt8),
(18 : stdgo.GoUInt8),
(17 : stdgo.GoUInt8),
(22 : stdgo.GoUInt8),
(21 : stdgo.GoUInt8),
(20 : stdgo.GoUInt8),
(19 : stdgo.GoUInt8),
(30 : stdgo.GoUInt8),
(29 : stdgo.GoUInt8),
(28 : stdgo.GoUInt8),
(27 : stdgo.GoUInt8),
(26 : stdgo.GoUInt8),
(25 : stdgo.GoUInt8),
(24 : stdgo.GoUInt8),
(23 : stdgo.GoUInt8),
(34 : stdgo.GoUInt8),
(33 : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
(31 : stdgo.GoUInt8),
(42 : stdgo.GoUInt8),
(41 : stdgo.GoUInt8),
(40 : stdgo.GoUInt8),
(39 : stdgo.GoUInt8),
(38 : stdgo.GoUInt8),
(37 : stdgo.GoUInt8),
(36 : stdgo.GoUInt8),
(35 : stdgo.GoUInt8),
(46 : stdgo.GoUInt8),
(45 : stdgo.GoUInt8),
(44 : stdgo.GoUInt8),
(43 : stdgo.GoUInt8),
(50 : stdgo.GoUInt8),
(49 : stdgo.GoUInt8),
(48 : stdgo.GoUInt8),
(47 : stdgo.GoUInt8),
(58 : stdgo.GoUInt8),
(57 : stdgo.GoUInt8),
(56 : stdgo.GoUInt8),
(55 : stdgo.GoUInt8),
(54 : stdgo.GoUInt8),
(53 : stdgo.GoUInt8),
(52 : stdgo.GoUInt8),
(51 : stdgo.GoUInt8),
(66 : stdgo.GoUInt8),
(65 : stdgo.GoUInt8),
(64 : stdgo.GoUInt8),
(63 : stdgo.GoUInt8),
(62 : stdgo.GoUInt8),
(61 : stdgo.GoUInt8),
(60 : stdgo.GoUInt8),
(59 : stdgo.GoUInt8),
(67 : stdgo.GoUInt8),
(68 : stdgo.GoUInt8),
(69 : stdgo.GoUInt8),
(70 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
var _src : stdgo.Slice<stdgo.GoUInt8> = (new stdgo.Slice<stdgo.GoUInt8>(8, 8, ...[(1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8), (4 : stdgo.GoUInt8), (5 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (7 : stdgo.GoUInt8), (8 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
var _res : stdgo.Slice<stdgo.GoInt32> = (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(16909060 : stdgo.GoInt32), (84281096 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
var _putbuf : stdgo.Slice<stdgo.GoUInt8> = (new stdgo.Slice<stdgo.GoUInt8>(8, 8, ...[(0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
var _intArrays : stdgo.Slice<stdgo.AnyInterface> = (new stdgo.Slice<stdgo.AnyInterface>(8, 8, ...[stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.GoArray<stdgo.GoInt8>(100, 100, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt8>)) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt8>>)), stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.GoArray<stdgo.GoInt16>(100, 100, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt16>)) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt16>>)), stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.GoArray<stdgo.GoInt32>(100, 100, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt32>)) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt32>>)), stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.GoArray<stdgo.GoInt64>(100, 100, ...[]).__setNumber64__() : stdgo.GoArray<stdgo.GoInt64>)) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt64>>)), stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.GoArray<stdgo.GoUInt8>(100, 100, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>)), stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.GoArray<stdgo.GoUInt16>(100, 100, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt16>)) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt16>>)), stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.GoArray<stdgo.GoUInt32>(100, 100, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt32>)) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt32>>)), stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.GoArray<stdgo.GoUInt64>(100, 100, ...[]).__setNumber64__() : stdgo.GoArray<stdgo.GoUInt64>)) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>))]) : stdgo.Slice<stdgo.AnyInterface>);
var _tests : stdgo.Slice<stdgo.GoInt64> = (new stdgo.Slice<stdgo.GoInt64>(18, 18, ...[
(-9223372036854775808i64 : stdgo.GoInt64),
(-9223372036854775807i64 : stdgo.GoInt64),
(-1i64 : stdgo.GoInt64),
(0i64 : stdgo.GoInt64),
(1i64 : stdgo.GoInt64),
(2i64 : stdgo.GoInt64),
(10i64 : stdgo.GoInt64),
(20i64 : stdgo.GoInt64),
(63i64 : stdgo.GoInt64),
(64i64 : stdgo.GoInt64),
(65i64 : stdgo.GoInt64),
(127i64 : stdgo.GoInt64),
(128i64 : stdgo.GoInt64),
(129i64 : stdgo.GoInt64),
(255i64 : stdgo.GoInt64),
(256i64 : stdgo.GoInt64),
(257i64 : stdgo.GoInt64),
(9223372036854775807i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
@:keep class ByteOrder_static_extension {
    static public function string(t:ByteOrder):stdgo.GoString return t.string();
    static public function putUint64(t:ByteOrder, _0:stdgo.Slice<stdgo.GoByte>, _1:stdgo.GoUInt64):Void t.putUint64(_0, _1);
    static public function putUint32(t:ByteOrder, _0:stdgo.Slice<stdgo.GoByte>, _1:stdgo.GoUInt32):Void t.putUint32(_0, _1);
    static public function putUint16(t:ByteOrder, _0:stdgo.Slice<stdgo.GoByte>, _1:stdgo.GoUInt16):Void t.putUint16(_0, _1);
    static public function uint64(t:ByteOrder, _0:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt64 return t.uint64(_0);
    static public function uint32(t:ByteOrder, _0:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt32 return t.uint32(_0);
    static public function uint16(t:ByteOrder, _0:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt16 return t.uint16(_0);
}
typedef ByteOrder = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function uint16(_0:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt16;
    /**
        
        
        
    **/
    public dynamic function uint32(_0:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt32;
    /**
        
        
        
    **/
    public dynamic function uint64(_0:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt64;
    /**
        
        
        
    **/
    public dynamic function putUint16(_0:stdgo.Slice<stdgo.GoByte>, _1:stdgo.GoUInt16):Void;
    /**
        
        
        
    **/
    public dynamic function putUint32(_0:stdgo.Slice<stdgo.GoByte>, _1:stdgo.GoUInt32):Void;
    /**
        
        
        
    **/
    public dynamic function putUint64(_0:stdgo.Slice<stdgo.GoByte>, _1:stdgo.GoUInt64):Void;
    /**
        
        
        
    **/
    public dynamic function string():stdgo.GoString;
};
@:keep class AppendByteOrder_static_extension {
    static public function string(t:AppendByteOrder):stdgo.GoString return t.string();
    static public function appendUint64(t:AppendByteOrder, _0:stdgo.Slice<stdgo.GoByte>, _1:stdgo.GoUInt64):stdgo.Slice<stdgo.GoByte> return t.appendUint64(_0, _1);
    static public function appendUint32(t:AppendByteOrder, _0:stdgo.Slice<stdgo.GoByte>, _1:stdgo.GoUInt32):stdgo.Slice<stdgo.GoByte> return t.appendUint32(_0, _1);
    static public function appendUint16(t:AppendByteOrder, _0:stdgo.Slice<stdgo.GoByte>, _1:stdgo.GoUInt16):stdgo.Slice<stdgo.GoByte> return t.appendUint16(_0, _1);
}
typedef AppendByteOrder = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function appendUint16(_0:stdgo.Slice<stdgo.GoByte>, _1:stdgo.GoUInt16):stdgo.Slice<stdgo.GoByte>;
    /**
        
        
        
    **/
    public dynamic function appendUint32(_0:stdgo.Slice<stdgo.GoByte>, _1:stdgo.GoUInt32):stdgo.Slice<stdgo.GoByte>;
    /**
        
        
        
    **/
    public dynamic function appendUint64(_0:stdgo.Slice<stdgo.GoByte>, _1:stdgo.GoUInt64):stdgo.Slice<stdgo.GoByte>;
    /**
        
        
        
    **/
    public dynamic function string():stdgo.GoString;
};
@:structInit @:private @:using(stdgo._internal.encoding.binary.Binary.T_littleEndian_static_extension) class T_littleEndian {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_littleEndian();
    }
}
@:structInit @:private @:using(stdgo._internal.encoding.binary.Binary.T_bigEndian_static_extension) class T_bigEndian {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_bigEndian();
    }
}
@:structInit @:private class T_coder {
    public var _order : stdgo._internal.encoding.binary.Binary.ByteOrder = (null : stdgo._internal.encoding.binary.Binary.ByteOrder);
    public var _buf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _offset : stdgo.GoInt = 0;
    public function new(?_order:stdgo._internal.encoding.binary.Binary.ByteOrder, ?_buf:stdgo.Slice<stdgo.GoUInt8>, ?_offset:stdgo.GoInt) {
        if (_order != null) this._order = _order;
        if (_buf != null) this._buf = _buf;
        if (_offset != null) this._offset = _offset;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_coder(_order, _buf, _offset);
    }
}
@:structInit class Struct {
    public var int8 : stdgo.GoInt8 = 0;
    public var int16 : stdgo.GoInt16 = 0;
    public var int32 : stdgo.GoInt32 = 0;
    public var int64 : stdgo.GoInt64 = 0;
    public var uint8 : stdgo.GoUInt8 = 0;
    public var uint16 : stdgo.GoUInt16 = 0;
    public var uint32 : stdgo.GoUInt32 = 0;
    public var uint64 : stdgo.GoUInt64 = 0;
    public var float32 : stdgo.GoFloat32 = 0;
    public var float64 : stdgo.GoFloat64 = 0;
    public var complex64 : stdgo.GoComplex64 = new stdgo.GoComplex64(0, 0);
    public var complex128 : stdgo.GoComplex128 = new stdgo.GoComplex128(0, 0);
    public var array : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt8)]);
    public var bool_ : Bool = false;
    public var boolArray : stdgo.GoArray<Bool> = new stdgo.GoArray<Bool>(4, 4, ...[for (i in 0 ... 4) false]);
    public function new(?int8:stdgo.GoInt8, ?int16:stdgo.GoInt16, ?int32:stdgo.GoInt32, ?int64:stdgo.GoInt64, ?uint8:stdgo.GoUInt8, ?uint16:stdgo.GoUInt16, ?uint32:stdgo.GoUInt32, ?uint64:stdgo.GoUInt64, ?float32:stdgo.GoFloat32, ?float64:stdgo.GoFloat64, ?complex64:stdgo.GoComplex64, ?complex128:stdgo.GoComplex128, ?array:stdgo.GoArray<stdgo.GoUInt8>, ?bool_:Bool, ?boolArray:stdgo.GoArray<Bool>) {
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
        if (bool_ != null) this.bool_ = bool_;
        if (boolArray != null) this.boolArray = boolArray;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
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
bool_,
boolArray);
    }
}
@:structInit class T_ {
    public var int_ : stdgo.GoInt = 0;
    public var uint : stdgo.GoUInt = 0;
    public var uintptr : stdgo.GoUIntptr = 0;
    public var array : stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoInt)]);
    public function new(?int_:stdgo.GoInt, ?uint:stdgo.GoUInt, ?uintptr:stdgo.GoUIntptr, ?array:stdgo.GoArray<stdgo.GoInt>) {
        if (int_ != null) this.int_ = int_;
        if (uint != null) this.uint = uint;
        if (uintptr != null) this.uintptr = uintptr;
        if (array != null) this.array = array;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_(int_, uint, uintptr, array);
    }
}
@:structInit class BlankFields {
    public var a : stdgo.GoUInt32 = 0;
    @:optional
    public var __4 : stdgo.GoInt32 = 0;
    public var b : stdgo.GoFloat64 = 0;
    @:optional
    public var __5 : stdgo.GoArray<stdgo.GoInt16> = new stdgo.GoArray<stdgo.GoInt16>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoInt16)]);
    public var c : stdgo.GoUInt8 = 0;
    @:optional
    public var __6 : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(7, 7, ...[for (i in 0 ... 7) (0 : stdgo.GoUInt8)]);
    @:optional
    public var __7 : { var _f : stdgo.GoArray<stdgo.GoFloat32>; } = { _f : new stdgo.GoArray<stdgo.GoFloat32>(8, 8, ...[for (i in 0 ... 8) (0 : stdgo.GoFloat32)]) };
    public function new(?a:stdgo.GoUInt32, ?__4:stdgo.GoInt32, ?b:stdgo.GoFloat64, ?__5:stdgo.GoArray<stdgo.GoInt16>, ?c:stdgo.GoUInt8, ?__6:stdgo.GoArray<stdgo.GoUInt8>, ?__7:{ var _f : stdgo.GoArray<stdgo.GoFloat32>; }) {
        if (a != null) this.a = a;
        if (__4 != null) this.__4 = __4;
        if (b != null) this.b = b;
        if (__5 != null) this.__5 = __5;
        if (c != null) this.c = c;
        if (__6 != null) this.__6 = __6;
        if (__7 != null) this.__7 = __7;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BlankFields(a, __4, b, __5, c, __6, __7);
    }
}
@:structInit class BlankFieldsProbe {
    public var a : stdgo.GoUInt32 = 0;
    public var p0 : stdgo.GoInt32 = 0;
    public var b : stdgo.GoFloat64 = 0;
    public var p1 : stdgo.GoArray<stdgo.GoInt16> = new stdgo.GoArray<stdgo.GoInt16>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoInt16)]);
    public var c : stdgo.GoUInt8 = 0;
    public var p2 : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(7, 7, ...[for (i in 0 ... 7) (0 : stdgo.GoUInt8)]);
    public var p3 : { var f : stdgo.GoArray<stdgo.GoFloat32>; } = { f : new stdgo.GoArray<stdgo.GoFloat32>(8, 8, ...[for (i in 0 ... 8) (0 : stdgo.GoFloat32)]) };
    public function new(?a:stdgo.GoUInt32, ?p0:stdgo.GoInt32, ?b:stdgo.GoFloat64, ?p1:stdgo.GoArray<stdgo.GoInt16>, ?c:stdgo.GoUInt8, ?p2:stdgo.GoArray<stdgo.GoUInt8>, ?p3:{ var f : stdgo.GoArray<stdgo.GoFloat32>; }) {
        if (a != null) this.a = a;
        if (p0 != null) this.p0 = p0;
        if (b != null) this.b = b;
        if (p1 != null) this.p1 = p1;
        if (c != null) this.c = c;
        if (p2 != null) this.p2 = p2;
        if (p3 != null) this.p3 = p3;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BlankFieldsProbe(a, p0, b, p1, c, p2, p3);
    }
}
@:structInit class Unexported {
    public var _a : stdgo.GoInt32 = 0;
    public function new(?_a:stdgo.GoInt32) {
        if (_a != null) this._a = _a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Unexported(_a);
    }
}
@:structInit @:private @:using(stdgo._internal.encoding.binary.Binary.T_byteSliceReader_static_extension) class T_byteSliceReader {
    public var _remain : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_remain:stdgo.Slice<stdgo.GoUInt8>) {
        if (_remain != null) this._remain = _remain;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_byteSliceReader(_remain);
    }
}
@:structInit @:private @:using(stdgo._internal.encoding.binary.Binary.T_nativeEndian_static_extension) class T_nativeEndian {
    @:embedded
    public var _littleEndian : stdgo._internal.encoding.binary.Binary.T_littleEndian = ({} : stdgo._internal.encoding.binary.Binary.T_littleEndian);
    public function new(?_littleEndian:stdgo._internal.encoding.binary.Binary.T_littleEndian) {
        if (_littleEndian != null) this._littleEndian = _littleEndian;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function appendUint16(__0:stdgo.Slice<stdgo.GoUInt8>, __1:stdgo.GoUInt16):stdgo.Slice<stdgo.GoUInt8> return _littleEndian.appendUint16(__0, __1);
    @:embedded
    public function appendUint32(__0:stdgo.Slice<stdgo.GoUInt8>, __1:stdgo.GoUInt32):stdgo.Slice<stdgo.GoUInt8> return _littleEndian.appendUint32(__0, __1);
    @:embedded
    public function appendUint64(__0:stdgo.Slice<stdgo.GoUInt8>, __1:stdgo.GoUInt64):stdgo.Slice<stdgo.GoUInt8> return _littleEndian.appendUint64(__0, __1);
    @:embedded
    public function putUint16(__0:stdgo.Slice<stdgo.GoUInt8>, __1:stdgo.GoUInt16) _littleEndian.putUint16(__0, __1);
    @:embedded
    public function putUint32(__0:stdgo.Slice<stdgo.GoUInt8>, __1:stdgo.GoUInt32) _littleEndian.putUint32(__0, __1);
    @:embedded
    public function putUint64(__0:stdgo.Slice<stdgo.GoUInt8>, __1:stdgo.GoUInt64) _littleEndian.putUint64(__0, __1);
    @:embedded
    public function uint16(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt16 return _littleEndian.uint16(__0);
    @:embedded
    public function uint32(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 return _littleEndian.uint32(__0);
    @:embedded
    public function uint64(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 return _littleEndian.uint64(__0);
    public function __copy__() {
        return new T_nativeEndian(_littleEndian);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.encoding.binary.Binary.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo._internal.encoding.binary.Binary.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _f : stdgo.GoArray<stdgo.GoFloat32>;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.encoding.binary.Binary.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo._internal.encoding.binary.Binary.T__struct_1_static_extension) typedef T__struct_1 = {
    public var f : stdgo.GoArray<stdgo.GoFloat32>;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_2>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.encoding.binary.Binary.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo._internal.encoding.binary.Binary.T__struct_2_static_extension) typedef T__struct_2 = {
    public var _val : stdgo.AnyInterface;
    public var _want : stdgo.GoInt;
};
class T__struct_3_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_3>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.encoding.binary.Binary.T__struct_3_asInterface) class T__struct_3_static_extension {

}
@:local @:using(stdgo._internal.encoding.binary.Binary.T__struct_3_static_extension) typedef T__struct_3 = {
    public var a : stdgo._internal.encoding.binary.Binary.Struct;
};
class T__struct_4_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_4>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.encoding.binary.Binary.T__struct_4_asInterface) class T__struct_4_static_extension {

}
@:local @:using(stdgo._internal.encoding.binary.Binary.T__struct_4_static_extension) typedef T__struct_4 = {};
class T__struct_5_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_5>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.encoding.binary.Binary.T__struct_5_asInterface) class T__struct_5_static_extension {

}
@:local @:using(stdgo._internal.encoding.binary.Binary.T__struct_5_static_extension) typedef T__struct_5 = {
    public var a : stdgo.GoUInt8;
    public var b : stdgo.GoUInt8;
    public var c : stdgo.GoUInt8;
    public var d : stdgo.GoUInt8;
    public var e : stdgo.GoInt32;
    public var f : stdgo.GoFloat64;
};
class T__struct_6_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_6>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.encoding.binary.Binary.T__struct_6_asInterface) class T__struct_6_static_extension {

}
@:local @:using(stdgo._internal.encoding.binary.Binary.T__struct_6_static_extension) typedef T__struct_6 = {
    public var _in : stdgo.Slice<stdgo.GoUInt8>;
    public var _name : stdgo.GoString;
    public var _wantN : stdgo.GoInt;
    public var _wantValue : stdgo.GoUInt64;
};
@:named @:using(stdgo._internal.encoding.binary.Binary.T_decoder_static_extension) typedef T_decoder = stdgo._internal.encoding.binary.Binary.T_coder;
@:named @:using(stdgo._internal.encoding.binary.Binary.T_encoder_static_extension) typedef T_encoder = stdgo._internal.encoding.binary.Binary.T_coder;
function read(_r:stdgo._internal.io.Io.Reader, _order:ByteOrder, _data:stdgo.AnyInterface):stdgo.Error {
        {
            var _n = (_intDataSize(_data) : stdgo.GoInt);
            if (_n != ((0 : stdgo.GoInt))) {
                var _bs = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                {
                    var __tmp__ = stdgo._internal.io.Io.readFull(_r, _bs), __8:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _err;
                    };
                };
                {
                    final __type__ = _data;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<Bool>))) {
                        var _data:stdgo.Pointer<Bool> = __type__ == null ? (null : stdgo.Pointer<Bool>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<Bool>) : __type__ == null ? (null : stdgo.Pointer<Bool>) : __type__.__underlying__().value;
                        _data.value = _bs[(0 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt8>))) {
                        var _data:stdgo.Pointer<stdgo.GoInt8> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt8>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoInt8>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt8>) : __type__.__underlying__().value;
                        _data.value = (_bs[(0 : stdgo.GoInt)] : stdgo.GoInt8);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt8>))) {
                        var _data:stdgo.Pointer<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoUInt8>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt8>) : __type__.__underlying__().value;
                        _data.value = _bs[(0 : stdgo.GoInt)];
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt16>))) {
                        var _data:stdgo.Pointer<stdgo.GoInt16> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt16>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoInt16>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt16>) : __type__.__underlying__().value;
                        _data.value = (_order.uint16(_bs) : stdgo.GoInt16);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt16>))) {
                        var _data:stdgo.Pointer<stdgo.GoUInt16> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt16>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoUInt16>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt16>) : __type__.__underlying__().value;
                        _data.value = _order.uint16(_bs);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt32>))) {
                        var _data:stdgo.Pointer<stdgo.GoInt32> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt32>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoInt32>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt32>) : __type__.__underlying__().value;
                        _data.value = (_order.uint32(_bs) : stdgo.GoInt32);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt32>))) {
                        var _data:stdgo.Pointer<stdgo.GoUInt32> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt32>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoUInt32>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt32>) : __type__.__underlying__().value;
                        _data.value = _order.uint32(_bs);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt64>))) {
                        var _data:stdgo.Pointer<stdgo.GoInt64> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt64>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoInt64>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt64>) : __type__.__underlying__().value;
                        _data.value = (_order.uint64(_bs) : stdgo.GoInt64);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt64>))) {
                        var _data:stdgo.Pointer<stdgo.GoUInt64> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt64>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoUInt64>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt64>) : __type__.__underlying__().value;
                        _data.value = _order.uint64(_bs);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoFloat32>))) {
                        var _data:stdgo.Pointer<stdgo.GoFloat32> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoFloat32>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoFloat32>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoFloat32>) : __type__.__underlying__().value;
                        _data.value = stdgo._internal.math.Math.float32frombits(_order.uint32(_bs));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoFloat64>))) {
                        var _data:stdgo.Pointer<stdgo.GoFloat64> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoFloat64>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoFloat64>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoFloat64>) : __type__.__underlying__().value;
                        _data.value = stdgo._internal.math.Math.float64frombits(_order.uint64(_bs));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<Bool>))) {
                        var _data:stdgo.Slice<Bool> = __type__ == null ? (null : stdgo.Slice<Bool>) : __type__.__underlying__() == null ? (null : stdgo.Slice<Bool>) : __type__ == null ? (null : stdgo.Slice<Bool>) : __type__.__underlying__().value;
                        for (_i => _x in _bs) {
                            _data[(_i : stdgo.GoInt)] = _x != ((0 : stdgo.GoUInt8));
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoInt8>))) {
                        var _data:stdgo.Slice<stdgo.GoInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoInt8>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoInt8>) : __type__.__underlying__().value;
                        for (_i => _x in _bs) {
                            _data[(_i : stdgo.GoInt)] = (_x : stdgo.GoInt8);
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>))) {
                        var _data:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value;
                        stdgo.Go.copySlice(_data, _bs);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoInt16>))) {
                        var _data:stdgo.Slice<stdgo.GoInt16> = __type__ == null ? (null : stdgo.Slice<stdgo.GoInt16>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoInt16>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoInt16>) : __type__.__underlying__().value;
                        for (_i => _ in _data) {
                            _data[(_i : stdgo.GoInt)] = (_order.uint16((_bs.__slice__(((2 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt16);
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt16>))) {
                        var _data:stdgo.Slice<stdgo.GoUInt16> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt16>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt16>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt16>) : __type__.__underlying__().value;
                        for (_i => _ in _data) {
                            _data[(_i : stdgo.GoInt)] = _order.uint16((_bs.__slice__(((2 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoInt32>))) {
                        var _data:stdgo.Slice<stdgo.GoInt32> = __type__ == null ? (null : stdgo.Slice<stdgo.GoInt32>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoInt32>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoInt32>) : __type__.__underlying__().value;
                        for (_i => _ in _data) {
                            _data[(_i : stdgo.GoInt)] = (_order.uint32((_bs.__slice__(((4 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt32);
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt32>))) {
                        var _data:stdgo.Slice<stdgo.GoUInt32> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt32>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt32>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt32>) : __type__.__underlying__().value;
                        for (_i => _ in _data) {
                            _data[(_i : stdgo.GoInt)] = _order.uint32((_bs.__slice__(((4 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoInt64>))) {
                        var _data:stdgo.Slice<stdgo.GoInt64> = __type__ == null ? (null : stdgo.Slice<stdgo.GoInt64>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoInt64>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoInt64>) : __type__.__underlying__().value;
                        for (_i => _ in _data) {
                            _data[(_i : stdgo.GoInt)] = (_order.uint64((_bs.__slice__(((8 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt64);
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt64>))) {
                        var _data:stdgo.Slice<stdgo.GoUInt64> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt64>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt64>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt64>) : __type__.__underlying__().value;
                        for (_i => _ in _data) {
                            _data[(_i : stdgo.GoInt)] = _order.uint64((_bs.__slice__(((8 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoFloat32>))) {
                        var _data:stdgo.Slice<stdgo.GoFloat32> = __type__ == null ? (null : stdgo.Slice<stdgo.GoFloat32>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoFloat32>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoFloat32>) : __type__.__underlying__().value;
                        for (_i => _ in _data) {
                            _data[(_i : stdgo.GoInt)] = stdgo._internal.math.Math.float32frombits(_order.uint32((_bs.__slice__(((4 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)));
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoFloat64>))) {
                        var _data:stdgo.Slice<stdgo.GoFloat64> = __type__ == null ? (null : stdgo.Slice<stdgo.GoFloat64>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoFloat64>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoFloat64>) : __type__.__underlying__().value;
                        for (_i => _ in _data) {
                            _data[(_i : stdgo.GoInt)] = stdgo._internal.math.Math.float64frombits(_order.uint64((_bs.__slice__(((8 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)));
                        };
                    } else {
                        var _data:stdgo.AnyInterface = __type__?.__underlying__();
                        _n = (0 : stdgo.GoInt);
                    };
                };
                if (_n != ((0 : stdgo.GoInt))) {
                    return (null : stdgo.Error);
                };
            };
        };
        var _v = (stdgo._internal.reflect.Reflect.valueOf(_data)?.__copy__() : stdgo._internal.reflect.Reflect.Value);
        var _size = (-1 : stdgo.GoInt);
        {
            final __value__ = _v.kind();
            if (__value__ == ((22u32 : stdgo._internal.reflect.Reflect.Kind))) {
                _v = _v.elem()?.__copy__();
                _size = _dataSize(_v?.__copy__());
            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect.Kind))) {
                _size = _dataSize(_v?.__copy__());
            };
        };
        if ((_size < (0 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.errors.Errors.new_((("binary.Read: invalid type " : stdgo.GoString) + (stdgo._internal.reflect.Reflect.typeOf(_data).string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
        };
        var _d = (stdgo.Go.setRef(({ _order : _order, _buf : (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.encoding.binary.Binary.T_decoder)) : stdgo.Ref<stdgo._internal.encoding.binary.Binary.T_decoder>);
        {
            var __tmp__ = stdgo._internal.io.Io.readFull(_r, _d._buf), __9:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        _d._value(_v?.__copy__());
        return (null : stdgo.Error);
    }
function write(_w:stdgo._internal.io.Io.Writer, _order:ByteOrder, _data:stdgo.AnyInterface):stdgo.Error {
        {
            var _n = (_intDataSize(_data) : stdgo.GoInt);
            if (_n != ((0 : stdgo.GoInt))) {
                var _bs = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                {
                    final __type__ = _data;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<Bool>))) {
                        var _v:stdgo.Pointer<Bool> = __type__ == null ? (null : stdgo.Pointer<Bool>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<Bool>) : __type__ == null ? (null : stdgo.Pointer<Bool>) : __type__.__underlying__().value;
                        if (_v.value) {
                            _bs[(0 : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
                        } else {
                            _bs[(0 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : Bool))) {
                        var _v:Bool = __type__ == null ? false : __type__.__underlying__() == null ? false : __type__ == null ? false : __type__.__underlying__().value;
                        if (_v) {
                            _bs[(0 : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
                        } else {
                            _bs[(0 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<Bool>))) {
                        var _v:stdgo.Slice<Bool> = __type__ == null ? (null : stdgo.Slice<Bool>) : __type__.__underlying__() == null ? (null : stdgo.Slice<Bool>) : __type__ == null ? (null : stdgo.Slice<Bool>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            if (_x) {
                                _bs[(_i : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
                            } else {
                                _bs[(_i : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                            };
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt8>))) {
                        var _v:stdgo.Pointer<stdgo.GoInt8> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt8>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoInt8>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt8>) : __type__.__underlying__().value;
                        _bs[(0 : stdgo.GoInt)] = (_v.value : stdgo.GoByte);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt8))) {
                        var _v:stdgo.GoInt8 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _bs[(0 : stdgo.GoInt)] = (_v : stdgo.GoByte);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoInt8>))) {
                        var _v:stdgo.Slice<stdgo.GoInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoInt8>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoInt8>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            _bs[(_i : stdgo.GoInt)] = (_x : stdgo.GoByte);
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt8>))) {
                        var _v:stdgo.Pointer<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoUInt8>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt8>) : __type__.__underlying__().value;
                        _bs[(0 : stdgo.GoInt)] = _v.value;
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt8))) {
                        var _v:stdgo.GoUInt8 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _bs[(0 : stdgo.GoInt)] = _v;
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>))) {
                        var _v:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value;
                        _bs = _v;
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt16>))) {
                        var _v:stdgo.Pointer<stdgo.GoInt16> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt16>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoInt16>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt16>) : __type__.__underlying__().value;
                        _order.putUint16(_bs, (_v.value : stdgo.GoUInt16));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt16))) {
                        var _v:stdgo.GoInt16 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _order.putUint16(_bs, (_v : stdgo.GoUInt16));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoInt16>))) {
                        var _v:stdgo.Slice<stdgo.GoInt16> = __type__ == null ? (null : stdgo.Slice<stdgo.GoInt16>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoInt16>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoInt16>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            _order.putUint16((_bs.__slice__(((2 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_x : stdgo.GoUInt16));
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt16>))) {
                        var _v:stdgo.Pointer<stdgo.GoUInt16> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt16>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoUInt16>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt16>) : __type__.__underlying__().value;
                        _order.putUint16(_bs, _v.value);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt16))) {
                        var _v:stdgo.GoUInt16 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _order.putUint16(_bs, _v);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt16>))) {
                        var _v:stdgo.Slice<stdgo.GoUInt16> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt16>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt16>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt16>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            _order.putUint16((_bs.__slice__(((2 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x);
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt32>))) {
                        var _v:stdgo.Pointer<stdgo.GoInt32> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt32>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoInt32>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt32>) : __type__.__underlying__().value;
                        _order.putUint32(_bs, (_v.value : stdgo.GoUInt32));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt32))) {
                        var _v:stdgo.GoInt32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _order.putUint32(_bs, (_v : stdgo.GoUInt32));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoInt32>))) {
                        var _v:stdgo.Slice<stdgo.GoInt32> = __type__ == null ? (null : stdgo.Slice<stdgo.GoInt32>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoInt32>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoInt32>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            _order.putUint32((_bs.__slice__(((4 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_x : stdgo.GoUInt32));
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt32>))) {
                        var _v:stdgo.Pointer<stdgo.GoUInt32> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt32>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoUInt32>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt32>) : __type__.__underlying__().value;
                        _order.putUint32(_bs, _v.value);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt32))) {
                        var _v:stdgo.GoUInt32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _order.putUint32(_bs, _v);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt32>))) {
                        var _v:stdgo.Slice<stdgo.GoUInt32> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt32>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt32>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt32>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            _order.putUint32((_bs.__slice__(((4 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x);
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt64>))) {
                        var _v:stdgo.Pointer<stdgo.GoInt64> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt64>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoInt64>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoInt64>) : __type__.__underlying__().value;
                        _order.putUint64(_bs, (_v.value : stdgo.GoUInt64));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt64))) {
                        var _v:stdgo.GoInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _order.putUint64(_bs, (_v : stdgo.GoUInt64));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoInt64>))) {
                        var _v:stdgo.Slice<stdgo.GoInt64> = __type__ == null ? (null : stdgo.Slice<stdgo.GoInt64>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoInt64>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoInt64>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            _order.putUint64((_bs.__slice__(((8 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_x : stdgo.GoUInt64));
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt64>))) {
                        var _v:stdgo.Pointer<stdgo.GoUInt64> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt64>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoUInt64>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoUInt64>) : __type__.__underlying__().value;
                        _order.putUint64(_bs, _v.value);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt64))) {
                        var _v:stdgo.GoUInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _order.putUint64(_bs, _v);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt64>))) {
                        var _v:stdgo.Slice<stdgo.GoUInt64> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt64>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt64>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt64>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            _order.putUint64((_bs.__slice__(((8 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x);
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoFloat32>))) {
                        var _v:stdgo.Pointer<stdgo.GoFloat32> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoFloat32>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoFloat32>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoFloat32>) : __type__.__underlying__().value;
                        _order.putUint32(_bs, stdgo._internal.math.Math.float32bits(_v.value));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoFloat32))) {
                        var _v:stdgo.GoFloat32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _order.putUint32(_bs, stdgo._internal.math.Math.float32bits(_v));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoFloat32>))) {
                        var _v:stdgo.Slice<stdgo.GoFloat32> = __type__ == null ? (null : stdgo.Slice<stdgo.GoFloat32>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoFloat32>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoFloat32>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            _order.putUint32((_bs.__slice__(((4 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.math.Math.float32bits(_x));
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoFloat64>))) {
                        var _v:stdgo.Pointer<stdgo.GoFloat64> = __type__ == null ? (null : stdgo.Pointer<stdgo.GoFloat64>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.GoFloat64>) : __type__ == null ? (null : stdgo.Pointer<stdgo.GoFloat64>) : __type__.__underlying__().value;
                        _order.putUint64(_bs, stdgo._internal.math.Math.float64bits(_v.value));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoFloat64))) {
                        var _v:stdgo.GoFloat64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _order.putUint64(_bs, stdgo._internal.math.Math.float64bits(_v));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoFloat64>))) {
                        var _v:stdgo.Slice<stdgo.GoFloat64> = __type__ == null ? (null : stdgo.Slice<stdgo.GoFloat64>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoFloat64>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoFloat64>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            _order.putUint64((_bs.__slice__(((8 : stdgo.GoInt) * _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.math.Math.float64bits(_x));
                        };
                    };
                };
                var __tmp__ = _w.write(_bs), __8:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                return _err;
            };
        };
        var _v = (stdgo._internal.reflect.Reflect.indirect(stdgo._internal.reflect.Reflect.valueOf(_data)?.__copy__())?.__copy__() : stdgo._internal.reflect.Reflect.Value);
        var _size = (_dataSize(_v?.__copy__()) : stdgo.GoInt);
        if ((_size < (0 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.errors.Errors.new_((("binary.Write: some values are not fixed-sized in type " : stdgo.GoString) + (stdgo._internal.reflect.Reflect.typeOf(_data).string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _e = (stdgo.Go.setRef(({ _order : _order, _buf : _buf } : stdgo._internal.encoding.binary.Binary.T_encoder)) : stdgo.Ref<stdgo._internal.encoding.binary.Binary.T_encoder>);
        _e._value(_v?.__copy__());
        var __tmp__ = _w.write(_buf), __9:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
function size(_v:stdgo.AnyInterface):stdgo.GoInt {
        return _dataSize(stdgo._internal.reflect.Reflect.indirect(stdgo._internal.reflect.Reflect.valueOf(_v)?.__copy__())?.__copy__());
    }
function _dataSize(_v:stdgo._internal.reflect.Reflect.Value):stdgo.GoInt {
        {
            final __value__ = _v.kind();
            if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect.Kind))) {
                {
                    var _s = (_sizeof(_v.type().elem()) : stdgo.GoInt);
                    if ((_s >= (0 : stdgo.GoInt) : Bool)) {
                        return (_s * _v.len() : stdgo.GoInt);
                    };
                };
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect.Kind))) {
                var _t = (_v.type() : stdgo._internal.reflect.Reflect.Type_);
                {
                    var __tmp__ = _structSize.load(stdgo.Go.toInterface(_t)), _size:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        return (stdgo.Go.typeAssert((_size : stdgo.GoInt)) : stdgo.GoInt);
                    };
                };
                var _size = (_sizeof(_t) : stdgo.GoInt);
                _structSize.store(stdgo.Go.toInterface(_t), stdgo.Go.toInterface(_size));
                return _size;
            } else {
                if (_v.isValid()) {
                    return _sizeof(_v.type());
                };
            };
        };
        return (-1 : stdgo.GoInt);
    }
function _sizeof(_t:stdgo._internal.reflect.Reflect.Type_):stdgo.GoInt {
        {
            final __value__ = _t.kind();
            if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect.Kind))) {
                {
                    var _s = (_sizeof(_t.elem()) : stdgo.GoInt);
                    if ((_s >= (0 : stdgo.GoInt) : Bool)) {
                        return (_s * _t.len() : stdgo.GoInt);
                    };
                };
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect.Kind))) {
                var _sum = (0 : stdgo.GoInt);
                {
                    var __0 = (0 : stdgo.GoInt), __1 = (_t.numField() : stdgo.GoInt);
var _n = __1, _i = __0;
                    stdgo.Go.cfor((_i < _n : Bool), _i++, {
                        var _s = (_sizeof(_t.field(_i).type) : stdgo.GoInt);
                        if ((_s < (0 : stdgo.GoInt) : Bool)) {
                            return (-1 : stdgo.GoInt);
                        };
                        _sum = (_sum + (_s) : stdgo.GoInt);
                    });
                };
                return _sum;
            } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((13u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((15u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((16u32 : stdgo._internal.reflect.Reflect.Kind))) {
                return (_t.size() : stdgo.GoInt);
            };
        };
        return (-1 : stdgo.GoInt);
    }
function _intDataSize(_data:stdgo.AnyInterface):stdgo.GoInt {
        {
            final __type__ = _data;
            if (stdgo.Go.typeEquals((__type__ : Bool)) || stdgo.Go.typeEquals((__type__ : stdgo.GoInt8)) || stdgo.Go.typeEquals((__type__ : stdgo.GoUInt8)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<Bool>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt8>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt8>))) {
                var _data:stdgo.AnyInterface = __type__?.__underlying__();
                return (1 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<Bool>))) {
                var _data:stdgo.Slice<Bool> = __type__ == null ? (null : stdgo.Slice<Bool>) : __type__.__underlying__() == null ? (null : stdgo.Slice<Bool>) : __type__ == null ? (null : stdgo.Slice<Bool>) : __type__.__underlying__().value;
                return (_data.length);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoInt8>))) {
                var _data:stdgo.Slice<stdgo.GoInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoInt8>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoInt8>) : __type__.__underlying__().value;
                return (_data.length);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>))) {
                var _data:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value;
                return (_data.length);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt16)) || stdgo.Go.typeEquals((__type__ : stdgo.GoUInt16)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt16>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt16>))) {
                var _data:stdgo.AnyInterface = __type__?.__underlying__();
                return (2 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoInt16>))) {
                var _data:stdgo.Slice<stdgo.GoInt16> = __type__ == null ? (null : stdgo.Slice<stdgo.GoInt16>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoInt16>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoInt16>) : __type__.__underlying__().value;
                return ((2 : stdgo.GoInt) * (_data.length) : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt16>))) {
                var _data:stdgo.Slice<stdgo.GoUInt16> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt16>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt16>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt16>) : __type__.__underlying__().value;
                return ((2 : stdgo.GoInt) * (_data.length) : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt32)) || stdgo.Go.typeEquals((__type__ : stdgo.GoUInt32)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt32>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt32>))) {
                var _data:stdgo.AnyInterface = __type__?.__underlying__();
                return (4 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoInt32>))) {
                var _data:stdgo.Slice<stdgo.GoInt32> = __type__ == null ? (null : stdgo.Slice<stdgo.GoInt32>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoInt32>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoInt32>) : __type__.__underlying__().value;
                return ((4 : stdgo.GoInt) * (_data.length) : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt32>))) {
                var _data:stdgo.Slice<stdgo.GoUInt32> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt32>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt32>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt32>) : __type__.__underlying__().value;
                return ((4 : stdgo.GoInt) * (_data.length) : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt64)) || stdgo.Go.typeEquals((__type__ : stdgo.GoUInt64)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoInt64>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoUInt64>))) {
                var _data:stdgo.AnyInterface = __type__?.__underlying__();
                return (8 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoInt64>))) {
                var _data:stdgo.Slice<stdgo.GoInt64> = __type__ == null ? (null : stdgo.Slice<stdgo.GoInt64>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoInt64>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoInt64>) : __type__.__underlying__().value;
                return ((8 : stdgo.GoInt) * (_data.length) : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt64>))) {
                var _data:stdgo.Slice<stdgo.GoUInt64> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt64>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt64>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt64>) : __type__.__underlying__().value;
                return ((8 : stdgo.GoInt) * (_data.length) : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoFloat32)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoFloat32>))) {
                var _data:stdgo.AnyInterface = __type__?.__underlying__();
                return (4 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoFloat64)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.GoFloat64>))) {
                var _data:stdgo.AnyInterface = __type__?.__underlying__();
                return (8 : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoFloat32>))) {
                var _data:stdgo.Slice<stdgo.GoFloat32> = __type__ == null ? (null : stdgo.Slice<stdgo.GoFloat32>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoFloat32>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoFloat32>) : __type__.__underlying__().value;
                return ((4 : stdgo.GoInt) * (_data.length) : stdgo.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoFloat64>))) {
                var _data:stdgo.Slice<stdgo.GoFloat64> = __type__ == null ? (null : stdgo.Slice<stdgo.GoFloat64>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoFloat64>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoFloat64>) : __type__.__underlying__().value;
                return ((8 : stdgo.GoInt) * (_data.length) : stdgo.GoInt);
            };
        };
        return (0 : stdgo.GoInt);
    }
function _checkResult(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _dir:stdgo.GoString, _order:ByteOrder, _err:stdgo.Error, _have:stdgo.AnyInterface, _want:stdgo.AnyInterface):Void {
        if (_err != null) {
            _t.errorf(("%v %v: %v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_order), stdgo.Go.toInterface(_err));
            return;
        };
        if (!stdgo._internal.reflect.Reflect.deepEqual(_have, _want)) {
            _t.errorf(("%v %v:\n\thave %+v\n\twant %+v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_order), _have, _want);
        };
    }
function _testRead(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _order:ByteOrder, _b:stdgo.Slice<stdgo.GoByte>, _s1:stdgo.AnyInterface):Void {
        var _s2:Struct = ({} : stdgo._internal.encoding.binary.Binary.Struct);
        var _err = (read(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes.newReader(_b)), _order, stdgo.Go.toInterface((stdgo.Go.setRef(_s2) : stdgo.Ref<stdgo._internal.encoding.binary.Binary.Struct>))) : stdgo.Error);
        _checkResult(_t, ("Read" : stdgo.GoString), _order, _err, stdgo.Go.toInterface(_s2), _s1);
    }
function _testWrite(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _order:ByteOrder, _b:stdgo.Slice<stdgo.GoByte>, _s1:stdgo.AnyInterface):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var _err = (write(stdgo.Go.asInterface(_buf), _order, _s1) : stdgo.Error);
        _checkResult(_t, ("Write" : stdgo.GoString), _order, _err, stdgo.Go.toInterface(_buf.bytes()), stdgo.Go.toInterface(_b));
    }
function testLittleEndianRead(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testRead(_t, stdgo.Go.asInterface(littleEndian), _little, stdgo.Go.toInterface(_s));
    }
function testLittleEndianWrite(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testWrite(_t, stdgo.Go.asInterface(littleEndian), _little, stdgo.Go.toInterface(_s));
    }
function testLittleEndianPtrWrite(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testWrite(_t, stdgo.Go.asInterface(littleEndian), _little, stdgo.Go.toInterface((stdgo.Go.setRef(_s) : stdgo.Ref<stdgo._internal.encoding.binary.Binary.Struct>)));
    }
function testBigEndianRead(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testRead(_t, stdgo.Go.asInterface(bigEndian), _big, stdgo.Go.toInterface(_s));
    }
function testBigEndianWrite(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testWrite(_t, stdgo.Go.asInterface(bigEndian), _big, stdgo.Go.toInterface(_s));
    }
function testBigEndianPtrWrite(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testWrite(_t, stdgo.Go.asInterface(bigEndian), _big, stdgo.Go.toInterface((stdgo.Go.setRef(_s) : stdgo.Ref<stdgo._internal.encoding.binary.Binary.Struct>)));
    }
function testReadSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _slice = (new stdgo.Slice<stdgo.GoInt32>((2 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _err = (read(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes.newReader(_src)), stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(_slice)) : stdgo.Error);
        _checkResult(_t, ("ReadSlice" : stdgo.GoString), stdgo.Go.asInterface(bigEndian), _err, stdgo.Go.toInterface(_slice), stdgo.Go.toInterface(_res));
    }
function testWriteSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var _err = (write(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(_res)) : stdgo.Error);
        _checkResult(_t, ("WriteSlice" : stdgo.GoString), stdgo.Go.asInterface(bigEndian), _err, stdgo.Go.toInterface(_buf.bytes()), stdgo.Go.toInterface(_src));
    }
function testReadBool(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _res:Bool = false;
        var _err:stdgo.Error = (null : stdgo.Error);
        _err = read(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes.newReader((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>))), stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_res)));
        _checkResult(_t, ("ReadBool" : stdgo.GoString), stdgo.Go.asInterface(bigEndian), _err, stdgo.Go.toInterface(_res), stdgo.Go.toInterface(false));
        _res = false;
        _err = read(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes.newReader((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>))), stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_res)));
        _checkResult(_t, ("ReadBool" : stdgo.GoString), stdgo.Go.asInterface(bigEndian), _err, stdgo.Go.toInterface(_res), stdgo.Go.toInterface(true));
        _res = false;
        _err = read(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes.newReader((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(2 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>))), stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_res)));
        _checkResult(_t, ("ReadBool" : stdgo.GoString), stdgo.Go.asInterface(bigEndian), _err, stdgo.Go.toInterface(_res), stdgo.Go.toInterface(true));
    }
function testReadBoolSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _slice = (new stdgo.Slice<Bool>((4 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<Bool>);
        var _err = (read(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes.newReader((new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>))), stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(_slice)) : stdgo.Error);
        _checkResult(_t, ("ReadBoolSlice" : stdgo.GoString), stdgo.Go.asInterface(bigEndian), _err, stdgo.Go.toInterface(_slice), stdgo.Go.toInterface((new stdgo.Slice<Bool>(4, 4, ...[false, true, true, true]) : stdgo.Slice<Bool>)));
    }
function testSliceRoundTrip(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        for (__8 => _array in _intArrays) {
            var _src = (stdgo._internal.reflect.Reflect.valueOf(_array).elem()?.__copy__() : stdgo._internal.reflect.Reflect.Value);
            var _unsigned = (false : Bool);
            {
                final __value__ = _src.index((0 : stdgo.GoInt)).kind();
                if (__value__ == ((8u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect.Kind))) {
                    _unsigned = true;
                };
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _src.len() : Bool), _i++, {
                    if (_unsigned) {
                        _src.index(_i).setUint(((_i * (124076833 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt64));
                    } else {
                        _src.index(_i).setInt(((_i * (124076833 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt64));
                    };
                });
            };
            _buf.reset();
            var _srcSlice = (_src.slice((0 : stdgo.GoInt), _src.len())?.__copy__() : stdgo._internal.reflect.Reflect.Value);
            var _err = (write(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(bigEndian), _srcSlice.interface_()) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            var _dst = (stdgo._internal.reflect.Reflect.new_(_src.type()).elem()?.__copy__() : stdgo._internal.reflect.Reflect.Value);
            var _dstSlice = (_dst.slice((0 : stdgo.GoInt), _dst.len())?.__copy__() : stdgo._internal.reflect.Reflect.Value);
            _err = read(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(bigEndian), _dstSlice.interface_());
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            if (!stdgo._internal.reflect.Reflect.deepEqual(_src.interface_(), _dst.interface_())) {
                _t.fatal(stdgo.Go.toInterface(stdgo.Go.asInterface(_src)));
            };
        };
    }
function testWriteT(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var _ts = (new stdgo._internal.encoding.binary.Binary.T_() : stdgo._internal.encoding.binary.Binary.T_);
        {
            var _err = (write(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(_ts)) : stdgo.Error);
            if (_err == null) {
                _t.errorf(("WriteT: have err == nil, want non-nil" : stdgo.GoString));
            };
        };
        var _tv = (stdgo._internal.reflect.Reflect.indirect(stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(_ts))?.__copy__())?.__copy__() : stdgo._internal.reflect.Reflect.Value);
        {
            var __0 = (0 : stdgo.GoInt), __1 = (_tv.numField() : stdgo.GoInt);
var _n = __1, _i = __0;
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                var _typ = ((_tv.field(_i).type().string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_typ == (("[4]int" : stdgo.GoString))) {
                    _typ = ("int" : stdgo.GoString);
                };
                {
                    var _err = (write(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(bigEndian), _tv.field(_i).interface_()) : stdgo.Error);
                    if (_err == null) {
                        _t.errorf(("WriteT.%v: have err == nil, want non-nil" : stdgo.GoString), stdgo.Go.toInterface(_tv.field(_i).type()));
                    } else if (!stdgo._internal.strings.Strings.contains(_err.error()?.__copy__(), _typ?.__copy__())) {
                        _t.errorf(("WriteT: have err == %q, want it to mention %s" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_typ));
                    };
                };
            });
        };
    }
function testBlankFields(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var _b1 = ({ a : (1234567890u32 : stdgo.GoUInt32), b : (2.718281828 : stdgo.GoFloat64), c : (42 : stdgo.GoUInt8) } : stdgo._internal.encoding.binary.Binary.BlankFields);
        {
            var _err = (write(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(littleEndian), stdgo.Go.toInterface((stdgo.Go.setRef(_b1) : stdgo.Ref<stdgo._internal.encoding.binary.Binary.BlankFields>))) : stdgo.Error);
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        var _p:BlankFieldsProbe = ({} : stdgo._internal.encoding.binary.Binary.BlankFieldsProbe);
        {
            var _err = (read(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(littleEndian), stdgo.Go.toInterface((stdgo.Go.setRef(_p) : stdgo.Ref<stdgo._internal.encoding.binary.Binary.BlankFieldsProbe>))) : stdgo.Error);
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        if ((((_p.p0 != ((0 : stdgo.GoInt32)) || _p.p1[(0 : stdgo.GoInt)] != ((0 : stdgo.GoInt16)) : Bool) || _p.p2[(0 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8)) : Bool) || (_p.p3.f[(0 : stdgo.GoInt)] != (0 : stdgo.GoFloat64)) : Bool)) {
            _t.errorf(("non-zero values for originally blank fields: %#v" : stdgo.GoString), stdgo.Go.toInterface(_p));
        };
        {
            var _err = (write(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(littleEndian), stdgo.Go.toInterface((stdgo.Go.setRef(_p) : stdgo.Ref<stdgo._internal.encoding.binary.Binary.BlankFieldsProbe>))) : stdgo.Error);
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        var _b2:BlankFields = ({} : stdgo._internal.encoding.binary.Binary.BlankFields);
        {
            var _err = (read(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(littleEndian), stdgo.Go.toInterface((stdgo.Go.setRef(_b2) : stdgo.Ref<stdgo._internal.encoding.binary.Binary.BlankFields>))) : stdgo.Error);
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        if (((_b1.a != (_b2.a) || _b1.b != (_b2.b) : Bool) || (_b1.c != _b2.c) : Bool)) {
            _t.errorf(("%#v != %#v" : stdgo.GoString), stdgo.Go.toInterface(_b1), stdgo.Go.toInterface(_b2));
        };
    }
@:structInit class T_testSizeStructCache___localname___foo_7241 {
    public var a : stdgo.GoUInt32 = 0;
    public function new(?a:stdgo.GoUInt32) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testSizeStructCache___localname___foo_7241(a);
    }
}
@:structInit class T_testSizeStructCache___localname___bar_7275 {
    public var a : stdgo._internal.encoding.binary.Binary.Struct = ({} : stdgo._internal.encoding.binary.Binary.Struct);
    public var b : stdgo._internal.encoding.binary.Binary.T_testSizeStructCache___localname___foo_7241 = ({} : stdgo._internal.encoding.binary.Binary.T_testSizeStructCache___localname___foo_7241);
    public var c : stdgo._internal.encoding.binary.Binary.Struct = ({} : stdgo._internal.encoding.binary.Binary.Struct);
    public function new(?a:stdgo._internal.encoding.binary.Binary.Struct, ?b:stdgo._internal.encoding.binary.Binary.T_testSizeStructCache___localname___foo_7241, ?c:stdgo._internal.encoding.binary.Binary.Struct) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (c != null) this.c = c;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testSizeStructCache___localname___bar_7275(a, b, c);
    }
}
function testSizeStructCache(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _structSize = (new stdgo._internal.sync.Sync.Map_() : stdgo._internal.sync.Sync.Map_);
        var _count = (function():stdgo.GoInt {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            _structSize.range(function(__12:stdgo.AnyInterface, __13:stdgo.AnyInterface):Bool {
                _i++;
                return true;
            });
            return _i;
        } : () -> stdgo.GoInt);
        var _total:stdgo.GoInt = (0 : stdgo.GoInt);
        var _added = (function():stdgo.GoInt {
            var _delta = (_count() - _total : stdgo.GoInt);
            _total = (_total + (_delta) : stdgo.GoInt);
            return _delta;
        } : () -> stdgo.GoInt);
        {};
        {};
        var _testcases = (new stdgo.Slice<T__struct_2>(5, 5, ...[({ _val : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo._internal.encoding.binary.Binary.T_testSizeStructCache___localname___foo_7241)) : stdgo.Ref<stdgo._internal.encoding.binary.Binary.T_testSizeStructCache___localname___foo_7241>)), _want : (1 : stdgo.GoInt) } : T__struct_2), ({ _val : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo._internal.encoding.binary.Binary.T_testSizeStructCache___localname___bar_7275)) : stdgo.Ref<stdgo._internal.encoding.binary.Binary.T_testSizeStructCache___localname___bar_7275>)), _want : (1 : stdgo.GoInt) } : T__struct_2), ({ _val : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo._internal.encoding.binary.Binary.T_testSizeStructCache___localname___bar_7275)) : stdgo.Ref<stdgo._internal.encoding.binary.Binary.T_testSizeStructCache___localname___bar_7275>)), _want : (0 : stdgo.GoInt) } : T__struct_2), ({ _val : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ a : ({} : stdgo._internal.encoding.binary.Binary.Struct) } : T__struct_3)) : stdgo.Ref<T__struct_3>))), _want : (1 : stdgo.GoInt) } : T__struct_2), ({ _val : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ a : ({} : stdgo._internal.encoding.binary.Binary.Struct) } : T__struct_3)) : stdgo.Ref<T__struct_3>))), _want : (0 : stdgo.GoInt) } : T__struct_2)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({ _val : (null : stdgo.AnyInterface), _want : (0 : stdgo.GoInt) } : T__struct_2)])) : stdgo.Slice<T__struct_2>);
        for (__8 => _tc in _testcases) {
            if (size(_tc._val) == ((-1 : stdgo.GoInt))) {
                _t.fatalf(("Can\'t get the size of %T" : stdgo.GoString), _tc._val);
            };
            {
                var _n = (_added() : stdgo.GoInt);
                if (_n != (_tc._want)) {
                    _t.errorf(("Sizing %T added %d entries to the cache, want %d" : stdgo.GoString), _tc._val, stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_tc._want));
                };
            };
        };
    }
function testSizeInvalid(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _testcases = (new stdgo.Slice<stdgo.AnyInterface>(10, 10, ...[stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.GoInt))), stdgo.Go.toInterface((null : stdgo.Pointer<stdgo.GoInt>)), stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoUInt>(1, 1, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt>)), stdgo.Go.toInterface((stdgo.Go.setRef(new stdgo.GoArray<stdgo.GoUInt>(1, 1, ...[for (i in 0 ... 1) (0 : stdgo.GoUInt)])) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt>>)), stdgo.Go.toInterface((null : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt>>)), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)), stdgo.Go.toInterface((null : stdgo.Slice<stdgo.GoInt>)), stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.Slice<stdgo.GoInt>)) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>)), stdgo.Go.toInterface((null : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>))]) : stdgo.Slice<stdgo.AnyInterface>);
        for (__8 => _tc in _testcases) {
            {
                var _got = (size(_tc) : stdgo.GoInt);
                if (_got != ((-1 : stdgo.GoInt))) {
                    _t.errorf(("Size(%T) = %d, want -1" : stdgo.GoString), _tc, stdgo.Go.toInterface(_got));
                };
            };
        };
    }
function testUnexportedRead(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
            var _u1 = ({ _a : (1 : stdgo.GoInt32) } : stdgo._internal.encoding.binary.Binary.Unexported);
            {
                var _err = (write(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), stdgo.Go.asInterface(littleEndian), stdgo.Go.toInterface((stdgo.Go.setRef(_u1) : stdgo.Ref<stdgo._internal.encoding.binary.Binary.Unexported>))) : stdgo.Error);
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    if (({
                        final r = stdgo.Go.recover_exception;
                        stdgo.Go.recover_exception = null;
                        r;
                    }) == null) {
                        _t.fatal(stdgo.Go.toInterface(("did not panic" : stdgo.GoString)));
                    };
                };
                a();
            });
            var _u2:Unexported = ({} : stdgo._internal.encoding.binary.Binary.Unexported);
            read(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), stdgo.Go.asInterface(littleEndian), stdgo.Go.toInterface((stdgo.Go.setRef(_u2) : stdgo.Ref<stdgo._internal.encoding.binary.Binary.Unexported>)));
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
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
function testReadErrorMsg(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        var _read = (function(_data:stdgo.AnyInterface):Void {
            var _err = (read(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), stdgo.Go.asInterface(littleEndian), _data) : stdgo.Error);
            var _want = ((("binary.Read: invalid type " : stdgo.GoString) + (stdgo._internal.reflect.Reflect.typeOf(_data).string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_err == null) {
                _t.errorf(("%T: got no error; want %q" : stdgo.GoString), _data, stdgo.Go.toInterface(_want));
                return;
            };
            {
                var _got = (_err.error()?.__copy__() : stdgo.GoString);
                if (_got != (_want)) {
                    _t.errorf(("%T: got %q; want %q" : stdgo.GoString), _data, stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
        } : stdgo.AnyInterface -> Void);
        _read(stdgo.Go.toInterface((0 : stdgo.GoInt)));
        var _s = (stdgo.Go.setRef(({} : T_littleEndian)) : stdgo.Ref<T_littleEndian>);
        _read(stdgo.Go.toInterface((stdgo.Go.setRef(_s) : stdgo.Ref<stdgo.Ref<T_littleEndian>>)));
        var _p = (stdgo.Go.setRef(_s) : stdgo.Ref<stdgo.Ref<T_littleEndian>>);
        _read(stdgo.Go.toInterface(stdgo.Go.pointer(_p)));
    }
function testReadTruncated(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _b1:stdgo.Slice<stdgo.GoInt32> = (new stdgo.Slice<stdgo.GoInt32>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _b2:T__struct_5 = ({ a : (0 : stdgo.GoUInt8), b : (0 : stdgo.GoUInt8), c : (0 : stdgo.GoUInt8), d : (0 : stdgo.GoUInt8), e : (0 : stdgo.GoInt32), f : (0 : stdgo.GoFloat64) } : T__struct_5);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= (("0123456789abcdef" : stdgo.GoString).length) : Bool), _i++, {
                var _errWant:stdgo.Error = (null : stdgo.Error);
                {
                    final __value__ = _i;
                    if (__value__ == ((0 : stdgo.GoInt))) {
                        _errWant = stdgo._internal.io.Io.eof;
                    } else if (__value__ == ((("0123456789abcdef" : stdgo.GoString).length))) {
                        _errWant = (null : stdgo.Error);
                    } else {
                        _errWant = stdgo._internal.io.Io.errUnexpectedEOF;
                    };
                };
                {
                    var _err = (read(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader((("0123456789abcdef" : stdgo.GoString).__slice__(0, _i) : stdgo.GoString)?.__copy__())), stdgo.Go.asInterface(littleEndian), stdgo.Go.toInterface((stdgo.Go.setRef(_b1) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>))) : stdgo.Error);
                    if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_errWant))) {
                        _t.errorf(("Read(%d) with slice: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_errWant));
                    };
                };
                {
                    var _err = (read(stdgo.Go.asInterface(stdgo._internal.strings.Strings.newReader((("0123456789abcdef" : stdgo.GoString).__slice__(0, _i) : stdgo.GoString)?.__copy__())), stdgo.Go.asInterface(littleEndian), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_b2) : stdgo.Ref<T__struct_5>)))) : stdgo.Error);
                    if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_errWant))) {
                        _t.errorf(("Read(%d) with struct: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_errWant));
                    };
                };
            });
        };
    }
function _testUint64SmallSliceLengthPanics():Bool {
        var __deferstack__:Array<Void -> Void> = [];
        var _panicked = false;
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    _panicked = ({
                        final r = stdgo.Go.recover_exception;
                        stdgo.Go.recover_exception = null;
                        r;
                    }) != null;
                };
                a();
            });
            var _b = (new stdgo.GoArray<stdgo.GoUInt8>(8, 8, ...[(1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8), (4 : stdgo.GoUInt8), (5 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (7 : stdgo.GoUInt8), (8 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
            littleEndian.uint64((_b.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return false;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _panicked;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return _panicked;
        };
    }
function _testPutUint64SmallSliceLengthPanics():Bool {
        var __deferstack__:Array<Void -> Void> = [];
        var _panicked = false;
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    _panicked = ({
                        final r = stdgo.Go.recover_exception;
                        stdgo.Go.recover_exception = null;
                        r;
                    }) != null;
                };
                a();
            });
            var _b = (new stdgo.GoArray<stdgo.GoUInt8>(8, 8, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
            littleEndian.putUint64((_b.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (72623859790382856i64 : stdgo.GoUInt64));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return false;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _panicked;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return _panicked;
        };
    }
@:keep class T_testByteOrder___localname___byteOrder_10108_static_extension {

}
typedef T_testByteOrder___localname___byteOrder_10108 = stdgo.StructType & {
    > ByteOrder,
    > AppendByteOrder,
};
function testByteOrder(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((8 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (__8 => _order in (new stdgo.Slice<stdgo._internal.encoding.binary.Binary.T_testByteOrder___localname___byteOrder_10108>(2, 2, ...[stdgo.Go.asInterface(littleEndian), stdgo.Go.asInterface(bigEndian)]) : stdgo.Slice<stdgo._internal.encoding.binary.Binary.T_testByteOrder___localname___byteOrder_10108>)) {
            {};
            for (__9 => _value in (new stdgo.Slice<stdgo.GoUInt64>(7, 7, ...[(0i64 : stdgo.GoUInt64), (81985529216486895i64 : stdgo.GoUInt64), (-81985529216486896i64 : stdgo.GoUInt64), (-1i64 : stdgo.GoUInt64), (-6148914691236517206i64 : stdgo.GoUInt64), stdgo._internal.math.Math.float64bits((3.141592653589793 : stdgo.GoFloat64)), stdgo._internal.math.Math.float64bits((2.718281828459045 : stdgo.GoFloat64))]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>)) {
                var _want16 = (_value : stdgo.GoUInt16);
                _order.putUint16((_buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _want16);
                {
                    var _got = (_order.uint16((_buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt16);
                    if (_got != (_want16)) {
                        _t.errorf(("PutUint16: Uint16 = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want16));
                    };
                };
                _buf = _order.appendUint16((_buf.__slice__(0, (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _want16);
                {
                    var _got = (_order.uint16((_buf.__slice__((3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt16);
                    if (_got != (_want16)) {
                        _t.errorf(("AppendUint16: Uint16 = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want16));
                    };
                };
                if ((_buf.length) != ((5 : stdgo.GoInt))) {
                    _t.errorf(("AppendUint16: len(buf) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface((_buf.length)), stdgo.Go.toInterface((5 : stdgo.GoInt)));
                };
                var _want32 = (_value : stdgo.GoUInt32);
                _order.putUint32((_buf.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _want32);
                {
                    var _got = (_order.uint32((_buf.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
                    if (_got != (_want32)) {
                        _t.errorf(("PutUint32: Uint32 = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want32));
                    };
                };
                _buf = _order.appendUint32((_buf.__slice__(0, (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _want32);
                {
                    var _got = (_order.uint32((_buf.__slice__((3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
                    if (_got != (_want32)) {
                        _t.errorf(("AppendUint32: Uint32 = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want32));
                    };
                };
                if ((_buf.length) != ((7 : stdgo.GoInt))) {
                    _t.errorf(("AppendUint32: len(buf) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface((_buf.length)), stdgo.Go.toInterface((7 : stdgo.GoInt)));
                };
                var _want64 = (_value : stdgo.GoUInt64);
                _order.putUint64((_buf.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _want64);
                {
                    var _got = (_order.uint64((_buf.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt64);
                    if (_got != (_want64)) {
                        _t.errorf(("PutUint64: Uint64 = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want64));
                    };
                };
                _buf = _order.appendUint64((_buf.__slice__(0, (3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _want64);
                {
                    var _got = (_order.uint64((_buf.__slice__((3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt64);
                    if (_got != (_want64)) {
                        _t.errorf(("AppendUint64: Uint64 = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want64));
                    };
                };
                if ((_buf.length) != ((11 : stdgo.GoInt))) {
                    _t.errorf(("AppendUint64: len(buf) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface((_buf.length)), stdgo.Go.toInterface((11 : stdgo.GoInt)));
                };
            };
        };
    }
function testEarlyBoundsChecks(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (_testUint64SmallSliceLengthPanics() != (true)) {
            _t.errorf(("binary.LittleEndian.Uint64 expected to panic for small slices, but didn\'t" : stdgo.GoString));
        };
        if (_testPutUint64SmallSliceLengthPanics() != (true)) {
            _t.errorf(("binary.LittleEndian.PutUint64 expected to panic for small slices, but didn\'t" : stdgo.GoString));
        };
    }
function testReadInvalidDestination(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testReadInvalidDestination(_t, stdgo.Go.asInterface(bigEndian));
        _testReadInvalidDestination(_t, stdgo.Go.asInterface(littleEndian));
    }
function _testReadInvalidDestination(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _order:ByteOrder):Void {
        var _destinations = (new stdgo.Slice<stdgo.AnyInterface>(9, 9, ...[stdgo.Go.toInterface((0 : stdgo.GoInt8)), stdgo.Go.toInterface((0 : stdgo.GoInt16)), stdgo.Go.toInterface((0 : stdgo.GoInt32)), stdgo.Go.toInterface((0i64 : stdgo.GoInt64)), stdgo.Go.toInterface((0 : stdgo.GoUInt8)), stdgo.Go.toInterface((0 : stdgo.GoUInt16)), stdgo.Go.toInterface((0u32 : stdgo.GoUInt32)), stdgo.Go.toInterface((0i64 : stdgo.GoUInt64)), stdgo.Go.toInterface((false : Bool))]) : stdgo.Slice<stdgo.AnyInterface>);
        for (__8 => _dst in _destinations) {
            var _err = (read(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes.newReader((new stdgo.Slice<stdgo.GoUInt8>(8, 8, ...[(1 : stdgo.GoUInt8), (2 : stdgo.GoUInt8), (3 : stdgo.GoUInt8), (4 : stdgo.GoUInt8), (5 : stdgo.GoUInt8), (6 : stdgo.GoUInt8), (7 : stdgo.GoUInt8), (8 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>))), _order, _dst) : stdgo.Error);
            var _want = (stdgo._internal.fmt.Fmt.sprintf(("binary.Read: invalid type %T" : stdgo.GoString), _dst)?.__copy__() : stdgo.GoString);
            if (((_err == null) || (_err.error() != _want) : Bool)) {
                _t.fatalf(("for type %T: got %q; want %q" : stdgo.GoString), _dst, stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_want));
            };
        };
    }
@:structInit class T_testNoFixedSize___localname___Person_12888 {
    public var age : stdgo.GoInt = 0;
    public var weight : stdgo.GoFloat64 = 0;
    public var height : stdgo.GoFloat64 = 0;
    public function new(?age:stdgo.GoInt, ?weight:stdgo.GoFloat64, ?height:stdgo.GoFloat64) {
        if (age != null) this.age = age;
        if (weight != null) this.weight = weight;
        if (height != null) this.height = height;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testNoFixedSize___localname___Person_12888(age, weight, height);
    }
}
function testNoFixedSize(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _person = ({ age : (27 : stdgo.GoInt), weight : (67.3 : stdgo.GoFloat64), height : (177.8 : stdgo.GoFloat64) } : stdgo._internal.encoding.binary.Binary.T_testNoFixedSize___localname___Person_12888);
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var _err = (write(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(littleEndian), stdgo.Go.toInterface((stdgo.Go.setRef(_person) : stdgo.Ref<stdgo._internal.encoding.binary.Binary.T_testNoFixedSize___localname___Person_12888>))) : stdgo.Error);
        if (_err == null) {
            _t.fatal(stdgo.Go.toInterface(("binary.Write: unexpected success as size of type *binary.Person is not fixed" : stdgo.GoString)));
        };
        var _errs = ("binary.Write: some values are not fixed-sized in type *binary.Person" : stdgo.GoString);
        if (_err.error() != (_errs)) {
            _t.fatalf(("got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_errs));
        };
    }
function benchmarkReadSlice1000Int32s(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _bsr = (stdgo.Go.setRef((new stdgo._internal.encoding.binary.Binary.T_byteSliceReader() : stdgo._internal.encoding.binary.Binary.T_byteSliceReader)) : stdgo.Ref<stdgo._internal.encoding.binary.Binary.T_byteSliceReader>);
        var _slice = (new stdgo.Slice<stdgo.GoInt32>((1000 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>(((_slice.length) * (4 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b.setBytes((_buf.length : stdgo.GoInt64));
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _bsr._remain = _buf;
                read(stdgo.Go.asInterface(_bsr), stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(_slice));
            });
        };
    }
function benchmarkReadStruct(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _bsr = (stdgo.Go.setRef((new stdgo._internal.encoding.binary.Binary.T_byteSliceReader() : stdgo._internal.encoding.binary.Binary.T_byteSliceReader)) : stdgo.Ref<stdgo._internal.encoding.binary.Binary.T_byteSliceReader>);
        var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        write(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface((stdgo.Go.setRef(_s) : stdgo.Ref<stdgo._internal.encoding.binary.Binary.Struct>)));
        _b.setBytes((_dataSize(stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(_s))?.__copy__()) : stdgo.GoInt64));
        var _t = (_s?.__copy__() : stdgo._internal.encoding.binary.Binary.Struct);
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _bsr._remain = _buf.bytes();
                read(stdgo.Go.asInterface(_bsr), stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface((stdgo.Go.setRef(_t) : stdgo.Ref<stdgo._internal.encoding.binary.Binary.Struct>)));
            });
        };
        _b.stopTimer();
        if (((_b.n > (0 : stdgo.GoInt) : Bool) && !stdgo._internal.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_t)) : Bool)) {
            _b.fatalf(("struct doesn\'t match:\ngot  %v;\nwant %v" : stdgo.GoString), stdgo.Go.toInterface(_t), stdgo.Go.toInterface(_s));
        };
    }
function benchmarkWriteStruct(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.setBytes((size(stdgo.Go.toInterface((stdgo.Go.setRef(_s) : stdgo.Ref<stdgo._internal.encoding.binary.Binary.Struct>))) : stdgo.GoInt64));
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                write(stdgo._internal.io.Io.discard, stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface((stdgo.Go.setRef(_s) : stdgo.Ref<stdgo._internal.encoding.binary.Binary.Struct>)));
            });
        };
    }
function benchmarkReadInts(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _ls:Struct = ({} : stdgo._internal.encoding.binary.Binary.Struct);
        var _bsr = (stdgo.Go.setRef((new stdgo._internal.encoding.binary.Binary.T_byteSliceReader() : stdgo._internal.encoding.binary.Binary.T_byteSliceReader)) : stdgo.Ref<stdgo._internal.encoding.binary.Binary.T_byteSliceReader>);
        var _r:stdgo._internal.io.Io.Reader = stdgo.Go.asInterface(_bsr);
        _b.setBytes((30i64 : stdgo.GoInt64));
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _bsr._remain = _big;
                read(_r, stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_ls.int8)));
                read(_r, stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_ls.int16)));
                read(_r, stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_ls.int32)));
                read(_r, stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_ls.int64)));
                read(_r, stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_ls.uint8)));
                read(_r, stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_ls.uint16)));
                read(_r, stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_ls.uint32)));
                read(_r, stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_ls.uint64)));
            });
        };
        _b.stopTimer();
        var _want = (_s?.__copy__() : stdgo._internal.encoding.binary.Binary.Struct);
        _want.float32 = (0 : stdgo.GoFloat64);
        _want.float64 = (0 : stdgo.GoFloat64);
        _want.complex64 = ((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64));
        _want.complex128 = ((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64));
        _want.array = (new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[(0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
        _want.bool_ = false;
        _want.boolArray = (new stdgo.GoArray<Bool>(4, 4, ...[false, false, false, false]) : stdgo.GoArray<Bool>);
        if (((_b.n > (0 : stdgo.GoInt) : Bool) && !stdgo._internal.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_ls), stdgo.Go.toInterface(_want)) : Bool)) {
            _b.fatalf(("struct doesn\'t match:\ngot  %v;\nwant %v" : stdgo.GoString), stdgo.Go.toInterface(_ls), stdgo.Go.toInterface(_want));
        };
    }
function benchmarkWriteInts(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var _w:stdgo._internal.io.Io.Writer = stdgo.Go.asInterface(_buf);
        _b.setBytes((30i64 : stdgo.GoInt64));
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _buf.reset();
                write(_w, stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(_s.int8));
                write(_w, stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(_s.int16));
                write(_w, stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(_s.int32));
                write(_w, stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(_s.int64));
                write(_w, stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(_s.uint8));
                write(_w, stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(_s.uint16));
                write(_w, stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(_s.uint32));
                write(_w, stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(_s.uint64));
            });
        };
        _b.stopTimer();
        if (((_b.n > (0 : stdgo.GoInt) : Bool) && !stdgo._internal.bytes.Bytes.equal(_buf.bytes(), (_big.__slice__(0, (30 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : Bool)) {
            _b.fatalf(("first half doesn\'t match: %x %x" : stdgo.GoString), stdgo.Go.toInterface(_buf.bytes()), stdgo.Go.toInterface((_big.__slice__(0, (30 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)));
        };
    }
function benchmarkWriteSlice1000Int32s(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _slice = (new stdgo.Slice<stdgo.GoInt32>((1000 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var _w:stdgo._internal.io.Io.Writer = stdgo.Go.asInterface(_buf);
        _b.setBytes((4000i64 : stdgo.GoInt64));
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _buf.reset();
                write(_w, stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(_slice));
            });
        };
        _b.stopTimer();
    }
function benchmarkPutUint16(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.setBytes((2i64 : stdgo.GoInt64));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                bigEndian.putUint16((_putbuf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_i : stdgo.GoUInt16));
            });
        };
    }
function benchmarkAppendUint16(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.setBytes((2i64 : stdgo.GoInt64));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _putbuf = bigEndian.appendUint16((_putbuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_i : stdgo.GoUInt16));
            });
        };
    }
function benchmarkPutUint32(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.setBytes((4i64 : stdgo.GoInt64));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                bigEndian.putUint32((_putbuf.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_i : stdgo.GoUInt32));
            });
        };
    }
function benchmarkAppendUint32(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.setBytes((4i64 : stdgo.GoInt64));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _putbuf = bigEndian.appendUint32((_putbuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_i : stdgo.GoUInt32));
            });
        };
    }
function benchmarkPutUint64(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.setBytes((8i64 : stdgo.GoInt64));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                bigEndian.putUint64((_putbuf.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_i : stdgo.GoUInt64));
            });
        };
    }
function benchmarkAppendUint64(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.setBytes((8i64 : stdgo.GoInt64));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _putbuf = bigEndian.appendUint64((_putbuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_i : stdgo.GoUInt64));
            });
        };
    }
function benchmarkLittleEndianPutUint16(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.setBytes((2i64 : stdgo.GoInt64));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                littleEndian.putUint16((_putbuf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_i : stdgo.GoUInt16));
            });
        };
    }
function benchmarkLittleEndianAppendUint16(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.setBytes((2i64 : stdgo.GoInt64));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _putbuf = littleEndian.appendUint16((_putbuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_i : stdgo.GoUInt16));
            });
        };
    }
function benchmarkLittleEndianPutUint32(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.setBytes((4i64 : stdgo.GoInt64));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                littleEndian.putUint32((_putbuf.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_i : stdgo.GoUInt32));
            });
        };
    }
function benchmarkLittleEndianAppendUint32(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.setBytes((4i64 : stdgo.GoInt64));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _putbuf = littleEndian.appendUint32((_putbuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_i : stdgo.GoUInt32));
            });
        };
    }
function benchmarkLittleEndianPutUint64(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.setBytes((8i64 : stdgo.GoInt64));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                littleEndian.putUint64((_putbuf.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_i : stdgo.GoUInt64));
            });
        };
    }
function benchmarkLittleEndianAppendUint64(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.setBytes((8i64 : stdgo.GoInt64));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _putbuf = littleEndian.appendUint64((_putbuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_i : stdgo.GoUInt64));
            });
        };
    }
function benchmarkReadFloats(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _ls:Struct = ({} : stdgo._internal.encoding.binary.Binary.Struct);
        var _bsr = (stdgo.Go.setRef((new stdgo._internal.encoding.binary.Binary.T_byteSliceReader() : stdgo._internal.encoding.binary.Binary.T_byteSliceReader)) : stdgo.Ref<stdgo._internal.encoding.binary.Binary.T_byteSliceReader>);
        var _r:stdgo._internal.io.Io.Reader = stdgo.Go.asInterface(_bsr);
        _b.setBytes((12i64 : stdgo.GoInt64));
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _bsr._remain = (_big.__slice__((30 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                read(_r, stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_ls.float32)));
                read(_r, stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_ls.float64)));
            });
        };
        _b.stopTimer();
        var _want = (_s?.__copy__() : stdgo._internal.encoding.binary.Binary.Struct);
        _want.int8 = (0 : stdgo.GoInt8);
        _want.int16 = (0 : stdgo.GoInt16);
        _want.int32 = (0 : stdgo.GoInt32);
        _want.int64 = (0i64 : stdgo.GoInt64);
        _want.uint8 = (0 : stdgo.GoUInt8);
        _want.uint16 = (0 : stdgo.GoUInt16);
        _want.uint32 = (0u32 : stdgo.GoUInt32);
        _want.uint64 = (0i64 : stdgo.GoUInt64);
        _want.complex64 = ((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64));
        _want.complex128 = ((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64));
        _want.array = (new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[(0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
        _want.bool_ = false;
        _want.boolArray = (new stdgo.GoArray<Bool>(4, 4, ...[false, false, false, false]) : stdgo.GoArray<Bool>);
        if (((_b.n > (0 : stdgo.GoInt) : Bool) && !stdgo._internal.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_ls), stdgo.Go.toInterface(_want)) : Bool)) {
            _b.fatalf(("struct doesn\'t match:\ngot  %v;\nwant %v" : stdgo.GoString), stdgo.Go.toInterface(_ls), stdgo.Go.toInterface(_want));
        };
    }
function benchmarkWriteFloats(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var _w:stdgo._internal.io.Io.Writer = stdgo.Go.asInterface(_buf);
        _b.setBytes((12i64 : stdgo.GoInt64));
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _buf.reset();
                write(_w, stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(_s.float32));
                write(_w, stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(_s.float64));
            });
        };
        _b.stopTimer();
        if (((_b.n > (0 : stdgo.GoInt) : Bool) && !stdgo._internal.bytes.Bytes.equal(_buf.bytes(), (_big.__slice__((30 : stdgo.GoInt), (42 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : Bool)) {
            _b.fatalf(("first half doesn\'t match: %x %x" : stdgo.GoString), stdgo.Go.toInterface(_buf.bytes()), stdgo.Go.toInterface((_big.__slice__((30 : stdgo.GoInt), (42 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)));
        };
    }
function benchmarkReadSlice1000Float32s(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _bsr = (stdgo.Go.setRef((new stdgo._internal.encoding.binary.Binary.T_byteSliceReader() : stdgo._internal.encoding.binary.Binary.T_byteSliceReader)) : stdgo.Ref<stdgo._internal.encoding.binary.Binary.T_byteSliceReader>);
        var _slice = (new stdgo.Slice<stdgo.GoFloat32>((1000 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoFloat32>);
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>(((_slice.length) * (4 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b.setBytes((_buf.length : stdgo.GoInt64));
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _bsr._remain = _buf;
                read(stdgo.Go.asInterface(_bsr), stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(_slice));
            });
        };
    }
function benchmarkWriteSlice1000Float32s(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _slice = (new stdgo.Slice<stdgo.GoFloat32>((1000 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoFloat32>);
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var _w:stdgo._internal.io.Io.Writer = stdgo.Go.asInterface(_buf);
        _b.setBytes((4000i64 : stdgo.GoInt64));
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _buf.reset();
                write(_w, stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(_slice));
            });
        };
        _b.stopTimer();
    }
function benchmarkReadSlice1000Uint8s(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _bsr = (stdgo.Go.setRef((new stdgo._internal.encoding.binary.Binary.T_byteSliceReader() : stdgo._internal.encoding.binary.Binary.T_byteSliceReader)) : stdgo.Ref<stdgo._internal.encoding.binary.Binary.T_byteSliceReader>);
        var _slice = (new stdgo.Slice<stdgo.GoUInt8>((1000 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_slice.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b.setBytes((_buf.length : stdgo.GoInt64));
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _bsr._remain = _buf;
                read(stdgo.Go.asInterface(_bsr), stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(_slice));
            });
        };
    }
function benchmarkWriteSlice1000Uint8s(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _slice = (new stdgo.Slice<stdgo.GoUInt8>((1000 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var _w:stdgo._internal.io.Io.Writer = stdgo.Go.asInterface(_buf);
        _b.setBytes((1000i64 : stdgo.GoInt64));
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _buf.reset();
                write(_w, stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(_slice));
            });
        };
    }
function testNativeEndian(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _i = ((305419896u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        var _s = stdgo._internal.unsafe.Unsafe.slice(((stdgo.Go.toInterface(stdgo.Go.pointer(_i)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) })) : stdgo.Pointer<stdgo.GoByte>), stdgo._internal.unsafe.Unsafe.sizeof(stdgo.Go.toInterface(_i)));
        {
            var _v = (nativeEndian.uint32(_s) : stdgo.GoUInt32);
            if (_v != ((305419896u32 : stdgo.GoUInt32))) {
                _t.errorf(("NativeEndian.Uint32 returned %#x, expected %#x" : stdgo.GoString), stdgo.Go.toInterface(_v), stdgo.Go.toInterface((305419896 : stdgo.GoInt)));
            };
        };
    }
function appendUvarint(_buf:stdgo.Slice<stdgo.GoByte>, _x:stdgo.GoUInt64):stdgo.Slice<stdgo.GoByte> {
        while ((_x >= (128i64 : stdgo.GoUInt64) : Bool)) {
            _buf = (_buf.__append__(((_x : stdgo.GoByte) | (128 : stdgo.GoUInt8) : stdgo.GoUInt8)));
            _x = (_x >> ((7i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        return (_buf.__append__((_x : stdgo.GoByte)));
    }
function putUvarint(_buf:stdgo.Slice<stdgo.GoByte>, _x:stdgo.GoUInt64):stdgo.GoInt {
        var _i = (0 : stdgo.GoInt);
        while ((_x >= (128i64 : stdgo.GoUInt64) : Bool)) {
            _buf[(_i : stdgo.GoInt)] = ((_x : stdgo.GoByte) | (128 : stdgo.GoUInt8) : stdgo.GoUInt8);
            _x = (_x >> ((7i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _i++;
        };
        _buf[(_i : stdgo.GoInt)] = (_x : stdgo.GoByte);
        return (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
    }
function uvarint(_buf:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoInt; } {
        var _x:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _s:stdgo.GoUInt = (0 : stdgo.GoUInt);
        for (_i => _b in _buf) {
            if (_i == ((10 : stdgo.GoInt))) {
                return { _0 : (0i64 : stdgo.GoUInt64), _1 : -((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) };
            };
            if ((_b < (128 : stdgo.GoUInt8) : Bool)) {
                if (((_i == (9 : stdgo.GoInt)) && (_b > (1 : stdgo.GoUInt8) : Bool) : Bool)) {
                    return { _0 : (0i64 : stdgo.GoUInt64), _1 : -((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) };
                };
                return { _0 : (_x | ((_b : stdgo.GoUInt64) << _s : stdgo.GoUInt64) : stdgo.GoUInt64), _1 : (_i + (1 : stdgo.GoInt) : stdgo.GoInt) };
            };
            _x = (_x | ((((_b & (127 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64) << _s : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _s = (_s + ((7u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        };
        return { _0 : (0i64 : stdgo.GoUInt64), _1 : (0 : stdgo.GoInt) };
    }
function appendVarint(_buf:stdgo.Slice<stdgo.GoByte>, _x:stdgo.GoInt64):stdgo.Slice<stdgo.GoByte> {
        var _ux = ((_x : stdgo.GoUInt64) << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        if ((_x < (0i64 : stdgo.GoInt64) : Bool)) {
            _ux = (-1 ^ _ux);
        };
        return appendUvarint(_buf, _ux);
    }
function putVarint(_buf:stdgo.Slice<stdgo.GoByte>, _x:stdgo.GoInt64):stdgo.GoInt {
        var _ux = ((_x : stdgo.GoUInt64) << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        if ((_x < (0i64 : stdgo.GoInt64) : Bool)) {
            _ux = (-1 ^ _ux);
        };
        return putUvarint(_buf, _ux);
    }
function varint(_buf:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt; } {
        var __tmp__ = uvarint(_buf), _ux:stdgo.GoUInt64 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
        var _x = ((_ux >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt64);
        if ((_ux & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            _x = (-1 ^ _x);
        };
        return { _0 : _x, _1 : _n };
    }
function readUvarint(_r:stdgo._internal.io.Io.ByteReader):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _x:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _s:stdgo.GoUInt = (0 : stdgo.GoUInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                var __tmp__ = _r.readByte(), _b:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    if (((_i > (0 : stdgo.GoInt) : Bool) && (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.Io.eof)) : Bool)) {
                        _err = stdgo._internal.io.Io.errUnexpectedEOF;
                    };
                    return { _0 : _x, _1 : _err };
                };
                if ((_b < (128 : stdgo.GoUInt8) : Bool)) {
                    if (((_i == (9 : stdgo.GoInt)) && (_b > (1 : stdgo.GoUInt8) : Bool) : Bool)) {
                        return { _0 : _x, _1 : _errOverflow };
                    };
                    return { _0 : (_x | ((_b : stdgo.GoUInt64) << _s : stdgo.GoUInt64) : stdgo.GoUInt64), _1 : (null : stdgo.Error) };
                };
                _x = (_x | ((((_b & (127 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64) << _s : stdgo.GoUInt64)) : stdgo.GoUInt64);
                _s = (_s + ((7u32 : stdgo.GoUInt)) : stdgo.GoUInt);
            });
        };
        return { _0 : _x, _1 : _errOverflow };
    }
function readVarint(_r:stdgo._internal.io.Io.ByteReader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        var __tmp__ = readUvarint(_r), _ux:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        var _x = ((_ux >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt64);
        if ((_ux & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            _x = (-1 ^ _x);
        };
        return { _0 : _x, _1 : _err };
    }
function _testConstant(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _w:stdgo.GoUInt, _max:stdgo.GoInt):Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _n = (putUvarint(_buf, (((1i64 : stdgo.GoUInt64) << _w : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoInt);
        if (_n != (_max)) {
            _t.errorf(("MaxVarintLen%d = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_w), stdgo.Go.toInterface(_max), stdgo.Go.toInterface(_n));
        };
    }
function testConstants(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testConstant(_t, (16u32 : stdgo.GoUInt), (3 : stdgo.GoInt));
        _testConstant(_t, (32u32 : stdgo.GoUInt), (5 : stdgo.GoInt));
        _testConstant(_t, (64u32 : stdgo.GoUInt), (10 : stdgo.GoInt));
    }
function _testVarint(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _x:stdgo.GoInt64):Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _n = (putVarint(_buf, _x) : stdgo.GoInt);
        var __tmp__ = varint((_buf.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>)), _y:stdgo.GoInt64 = __tmp__._0, _m:stdgo.GoInt = __tmp__._1;
        if (_x != (_y)) {
            _t.errorf(("Varint(%d): got %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y));
        };
        if (_n != (_m)) {
            _t.errorf(("Varint(%d): got n = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_n));
        };
        var _buf2 = (("prefix" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        _buf2 = appendVarint(_buf2, _x);
        if ((_buf2 : stdgo.GoString) != ((("prefix" : stdgo.GoString) + ((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString))) {
            _t.errorf(("AppendVarint(%d): got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_buf2), stdgo.Go.toInterface((("prefix" : stdgo.GoString) + ((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString)));
        };
        var __tmp__ = readVarint(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes.newReader(_buf))), _y:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("ReadVarint(%d): %s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_err));
        };
        if (_x != (_y)) {
            _t.errorf(("ReadVarint(%d): got %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y));
        };
    }
function _testUvarint(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _x:stdgo.GoUInt64):Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _n = (putUvarint(_buf, _x) : stdgo.GoInt);
        var __tmp__ = uvarint((_buf.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>)), _y:stdgo.GoUInt64 = __tmp__._0, _m:stdgo.GoInt = __tmp__._1;
        if (_x != (_y)) {
            _t.errorf(("Uvarint(%d): got %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y));
        };
        if (_n != (_m)) {
            _t.errorf(("Uvarint(%d): got n = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_n));
        };
        var _buf2 = (("prefix" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        _buf2 = appendUvarint(_buf2, _x);
        if ((_buf2 : stdgo.GoString) != ((("prefix" : stdgo.GoString) + ((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString))) {
            _t.errorf(("AppendUvarint(%d): got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_buf2), stdgo.Go.toInterface((("prefix" : stdgo.GoString) + ((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString)));
        };
        var __tmp__ = readUvarint(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes.newReader(_buf))), _y:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("ReadUvarint(%d): %s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_err));
        };
        if (_x != (_y)) {
            _t.errorf(("ReadUvarint(%d): got %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y));
        };
    }
function testVarint(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__8 => _x in _tests) {
            _testVarint(_t, _x);
            _testVarint(_t, -_x);
        };
        {
            var _x = ((7i64 : stdgo.GoInt64) : stdgo.GoInt64);
            stdgo.Go.cfor(_x != ((0i64 : stdgo.GoInt64)), _x = (_x << ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt64), {
                _testVarint(_t, _x);
                _testVarint(_t, -_x);
            });
        };
    }
function testUvarint(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__8 => _x in _tests) {
            _testUvarint(_t, (_x : stdgo.GoUInt64));
        };
        {
            var _x = ((7i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            stdgo.Go.cfor(_x != ((0i64 : stdgo.GoUInt64)), _x = (_x << ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64), {
                _testUvarint(_t, _x);
            });
        };
    }
function testBufferTooSmall(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= (_buf.length) : Bool), _i++, {
                var _buf = (_buf.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>);
                var __tmp__ = uvarint(_buf), _x:stdgo.GoUInt64 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
                if (((_x != (0i64 : stdgo.GoUInt64)) || (_n != (0 : stdgo.GoInt)) : Bool)) {
                    _t.errorf(("Uvarint(%v): got x = %d, n = %d" : stdgo.GoString), stdgo.Go.toInterface(_buf), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_n));
                };
                var __tmp__ = readUvarint(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes.newReader(_buf))), _x:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                var _wantErr = (stdgo._internal.io.Io.eof : stdgo.Error);
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    _wantErr = stdgo._internal.io.Io.errUnexpectedEOF;
                };
                if (((_x != (0i64 : stdgo.GoUInt64)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(_wantErr)) : Bool)) {
                    _t.errorf(("ReadUvarint(%v): got x = %d, err = %s" : stdgo.GoString), stdgo.Go.toInterface(_buf), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_err));
                };
            });
        };
    }
function testBufferTooBigWithOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _tests = (new stdgo.Slice<T__struct_6>(4, 4, ...[({ _name : ("invalid: 1000 bytes" : stdgo.GoString), _in : {
            var a = function():stdgo.Slice<stdgo.GoByte> {
                var _b = (new stdgo.Slice<stdgo.GoUInt8>((1000 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                for (_i => _ in _b) {
                    _b[(_i : stdgo.GoInt)] = (255 : stdgo.GoUInt8);
                };
                _b[(999 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                return _b;
            };
            a();
        }, _wantN : (-11 : stdgo.GoInt), _wantValue : (0i64 : stdgo.GoUInt64) } : T__struct_6), ({ _name : ("valid: math.MaxUint64-40" : stdgo.GoString), _in : (new stdgo.Slice<stdgo.GoUInt8>(10, 10, ...[(215 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _wantValue : (-41i64 : stdgo.GoUInt64), _wantN : (10 : stdgo.GoInt) } : T__struct_6), ({ _name : ("invalid: with more than MaxVarintLen64 bytes" : stdgo.GoString), _in : (new stdgo.Slice<stdgo.GoUInt8>(11, 11, ...[
(215 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _wantN : (-11 : stdgo.GoInt), _wantValue : (0i64 : stdgo.GoUInt64) } : T__struct_6), ({ _name : ("invalid: 10th byte" : stdgo.GoString), _in : (new stdgo.Slice<stdgo.GoUInt8>(10, 10, ...[(215 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (127 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _wantN : (-10 : stdgo.GoInt), _wantValue : (0i64 : stdgo.GoUInt64) } : T__struct_6)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _in : (null : stdgo.Slice<stdgo.GoUInt8>), _name : ("" : stdgo.GoString), _wantN : (0 : stdgo.GoInt), _wantValue : (0 : stdgo.GoUInt64) } : T__struct_6)])) : stdgo.Slice<T__struct_6>);
        for (__8 => _tt in _tests) {
            var _tt = ({
                final x = _tt;
                ({ _in : x._in, _name : x._name?.__copy__(), _wantN : x._wantN, _wantValue : x._wantValue } : T__struct_6);
            } : T__struct_6);
            _t.run(_tt._name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
                var __tmp__ = uvarint(_tt._in), _value:stdgo.GoUInt64 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
                {
                    var __0 = (_n : stdgo.GoInt), __1 = (_tt._wantN : stdgo.GoInt);
var _w = __1, _g = __0;
                    if (_g != (_w)) {
                        _t.errorf(("bytes returned=%d, want=%d" : stdgo.GoString), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w));
                    };
                };
                {
                    var __0 = (_value : stdgo.GoUInt64), __1 = (_tt._wantValue : stdgo.GoUInt64);
var _w = __1, _g = __0;
                    if (_g != (_w)) {
                        _t.errorf(("value=%d, want=%d" : stdgo.GoString), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w));
                    };
                };
            });
        };
    }
function _testOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _buf:stdgo.Slice<stdgo.GoByte>, _x0:stdgo.GoUInt64, _n0:stdgo.GoInt, _err0:stdgo.Error):Void {
        var __tmp__ = uvarint(_buf), _x:stdgo.GoUInt64 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
        if (((_x != (0i64 : stdgo.GoUInt64)) || (_n != _n0) : Bool)) {
            _t.errorf(("Uvarint(% X): got x = %d, n = %d; want 0, %d" : stdgo.GoString), stdgo.Go.toInterface(_buf), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_n0));
        };
        var _r = stdgo._internal.bytes.Bytes.newReader(_buf);
        var _len = (_r.len() : stdgo.GoInt);
        var __tmp__ = readUvarint(stdgo.Go.asInterface(_r)), _x:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_x != _x0) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(_err0)) : Bool)) {
            _t.errorf(("ReadUvarint(%v): got x = %d, err = %s; want %d, %s" : stdgo.GoString), stdgo.Go.toInterface(_buf), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_x0), stdgo.Go.toInterface(_err0));
        };
        {
            var _read = (_len - _r.len() : stdgo.GoInt);
            if ((_read > (10 : stdgo.GoInt) : Bool)) {
                _t.errorf(("ReadUvarint(%v): read more than MaxVarintLen64 bytes, got %d" : stdgo.GoString), stdgo.Go.toInterface(_buf), stdgo.Go.toInterface(_read));
            };
        };
    }
function testOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testOverflow(_t, (new stdgo.Slice<stdgo.GoUInt8>(10, 10, ...[(128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (2 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (0i64 : stdgo.GoUInt64), (-10 : stdgo.GoInt), _errOverflow);
        _testOverflow(_t, (new stdgo.Slice<stdgo.GoUInt8>(15, 15, ...[
(128 : stdgo.GoUInt8),
(128 : stdgo.GoUInt8),
(128 : stdgo.GoUInt8),
(128 : stdgo.GoUInt8),
(128 : stdgo.GoUInt8),
(128 : stdgo.GoUInt8),
(128 : stdgo.GoUInt8),
(128 : stdgo.GoUInt8),
(128 : stdgo.GoUInt8),
(128 : stdgo.GoUInt8),
(128 : stdgo.GoUInt8),
(128 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (0i64 : stdgo.GoUInt64), (-11 : stdgo.GoInt), _errOverflow);
        _testOverflow(_t, (new stdgo.Slice<stdgo.GoUInt8>(11, 11, ...[
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (-1i64 : stdgo.GoUInt64), (-11 : stdgo.GoInt), _errOverflow);
    }
function testNonCanonicalZero(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = uvarint(_buf), _x:stdgo.GoUInt64 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
        if (((_x != (0i64 : stdgo.GoUInt64)) || (_n != (4 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("Uvarint(%v): got x = %d, n = %d; want 0, 4" : stdgo.GoString), stdgo.Go.toInterface(_buf), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_n));
        };
    }
function benchmarkPutUvarint32(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((5 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b.setBytes((4i64 : stdgo.GoInt64));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                {
                    var _j = ((0u32 : stdgo.GoUInt) : stdgo.GoUInt);
                    stdgo.Go.cfor((_j < (5u32 : stdgo.GoUInt) : Bool), _j++, {
                        putUvarint(_buf, ((1i64 : stdgo.GoUInt64) << ((_j * (7u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64));
                    });
                };
            });
        };
    }
function benchmarkPutUvarint64(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b.setBytes((8i64 : stdgo.GoInt64));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                {
                    var _j = ((0u32 : stdgo.GoUInt) : stdgo.GoUInt);
                    stdgo.Go.cfor((_j < (10u32 : stdgo.GoUInt) : Bool), _j++, {
                        putUvarint(_buf, ((1i64 : stdgo.GoUInt64) << ((_j * (7u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64));
                    });
                };
            });
        };
    }
class T_littleEndian_asInterface {
    @:keep
    public dynamic function goString():stdgo.GoString return __self__.value.goString();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function appendUint64(_b:stdgo.Slice<stdgo.GoByte>, _v:stdgo.GoUInt64):stdgo.Slice<stdgo.GoByte> return __self__.value.appendUint64(_b, _v);
    @:keep
    public dynamic function putUint64(_b:stdgo.Slice<stdgo.GoByte>, _v:stdgo.GoUInt64):Void __self__.value.putUint64(_b, _v);
    @:keep
    public dynamic function uint64(_b:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt64 return __self__.value.uint64(_b);
    @:keep
    public dynamic function appendUint32(_b:stdgo.Slice<stdgo.GoByte>, _v:stdgo.GoUInt32):stdgo.Slice<stdgo.GoByte> return __self__.value.appendUint32(_b, _v);
    @:keep
    public dynamic function putUint32(_b:stdgo.Slice<stdgo.GoByte>, _v:stdgo.GoUInt32):Void __self__.value.putUint32(_b, _v);
    @:keep
    public dynamic function uint32(_b:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt32 return __self__.value.uint32(_b);
    @:keep
    public dynamic function appendUint16(_b:stdgo.Slice<stdgo.GoByte>, _v:stdgo.GoUInt16):stdgo.Slice<stdgo.GoByte> return __self__.value.appendUint16(_b, _v);
    @:keep
    public dynamic function putUint16(_b:stdgo.Slice<stdgo.GoByte>, _v:stdgo.GoUInt16):Void __self__.value.putUint16(_b, _v);
    @:keep
    public dynamic function uint16(_b:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt16 return __self__.value.uint16(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_littleEndian>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.encoding.binary.Binary.T_littleEndian_asInterface) class T_littleEndian_static_extension {
    @:keep
    static public function goString( _:T_littleEndian):stdgo.GoString {
        @:recv var _:T_littleEndian = _?.__copy__();
        return ("binary.LittleEndian" : stdgo.GoString);
    }
    @:keep
    static public function string( _:T_littleEndian):stdgo.GoString {
        @:recv var _:T_littleEndian = _?.__copy__();
        return ("LittleEndian" : stdgo.GoString);
    }
    @:keep
    static public function appendUint64( _:T_littleEndian, _b:stdgo.Slice<stdgo.GoByte>, _v:stdgo.GoUInt64):stdgo.Slice<stdgo.GoByte> {
        @:recv var _:T_littleEndian = _?.__copy__();
        return (_b.__append__((_v : stdgo.GoByte), ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte), ((_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte), ((_v >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte), ((_v >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte), ((_v >> (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte), ((_v >> (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte), ((_v >> (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte)));
    }
    @:keep
    static public function putUint64( _:T_littleEndian, _b:stdgo.Slice<stdgo.GoByte>, _v:stdgo.GoUInt64):Void {
        @:recv var _:T_littleEndian = _?.__copy__();
        var __blank__ = _b[(7 : stdgo.GoInt)];
        _b[(0 : stdgo.GoInt)] = (_v : stdgo.GoByte);
        _b[(1 : stdgo.GoInt)] = ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte);
        _b[(2 : stdgo.GoInt)] = ((_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte);
        _b[(3 : stdgo.GoInt)] = ((_v >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte);
        _b[(4 : stdgo.GoInt)] = ((_v >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte);
        _b[(5 : stdgo.GoInt)] = ((_v >> (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte);
        _b[(6 : stdgo.GoInt)] = ((_v >> (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte);
        _b[(7 : stdgo.GoInt)] = ((_v >> (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte);
    }
    @:keep
    static public function uint64( _:T_littleEndian, _b:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt64 {
        @:recv var _:T_littleEndian = _?.__copy__();
        var __blank__ = _b[(7 : stdgo.GoInt)];
        return ((((((((_b[(0 : stdgo.GoInt)] : stdgo.GoUInt64) | ((_b[(1 : stdgo.GoInt)] : stdgo.GoUInt64) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(2 : stdgo.GoInt)] : stdgo.GoUInt64) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(3 : stdgo.GoInt)] : stdgo.GoUInt64) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(4 : stdgo.GoInt)] : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(5 : stdgo.GoInt)] : stdgo.GoUInt64) << (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(6 : stdgo.GoInt)] : stdgo.GoUInt64) << (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(7 : stdgo.GoInt)] : stdgo.GoUInt64) << (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
    }
    @:keep
    static public function appendUint32( _:T_littleEndian, _b:stdgo.Slice<stdgo.GoByte>, _v:stdgo.GoUInt32):stdgo.Slice<stdgo.GoByte> {
        @:recv var _:T_littleEndian = _?.__copy__();
        return (_b.__append__((_v : stdgo.GoByte), ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoByte), ((_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoByte), ((_v >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoByte)));
    }
    @:keep
    static public function putUint32( _:T_littleEndian, _b:stdgo.Slice<stdgo.GoByte>, _v:stdgo.GoUInt32):Void {
        @:recv var _:T_littleEndian = _?.__copy__();
        var __blank__ = _b[(3 : stdgo.GoInt)];
        _b[(0 : stdgo.GoInt)] = (_v : stdgo.GoByte);
        _b[(1 : stdgo.GoInt)] = ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoByte);
        _b[(2 : stdgo.GoInt)] = ((_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoByte);
        _b[(3 : stdgo.GoInt)] = ((_v >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoByte);
    }
    @:keep
    static public function uint32( _:T_littleEndian, _b:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt32 {
        @:recv var _:T_littleEndian = _?.__copy__();
        var __blank__ = _b[(3 : stdgo.GoInt)];
        return ((((_b[(0 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_b[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_b[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_b[(3 : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
    }
    @:keep
    static public function appendUint16( _:T_littleEndian, _b:stdgo.Slice<stdgo.GoByte>, _v:stdgo.GoUInt16):stdgo.Slice<stdgo.GoByte> {
        @:recv var _:T_littleEndian = _?.__copy__();
        return (_b.__append__((_v : stdgo.GoByte), ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoByte)));
    }
    @:keep
    static public function putUint16( _:T_littleEndian, _b:stdgo.Slice<stdgo.GoByte>, _v:stdgo.GoUInt16):Void {
        @:recv var _:T_littleEndian = _?.__copy__();
        var __blank__ = _b[(1 : stdgo.GoInt)];
        _b[(0 : stdgo.GoInt)] = (_v : stdgo.GoByte);
        _b[(1 : stdgo.GoInt)] = ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoByte);
    }
    @:keep
    static public function uint16( _:T_littleEndian, _b:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt16 {
        @:recv var _:T_littleEndian = _?.__copy__();
        var __blank__ = _b[(1 : stdgo.GoInt)];
        return ((_b[(0 : stdgo.GoInt)] : stdgo.GoUInt16) | ((_b[(1 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt16);
    }
}
class T_bigEndian_asInterface {
    @:keep
    public dynamic function goString():stdgo.GoString return __self__.value.goString();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function appendUint64(_b:stdgo.Slice<stdgo.GoByte>, _v:stdgo.GoUInt64):stdgo.Slice<stdgo.GoByte> return __self__.value.appendUint64(_b, _v);
    @:keep
    public dynamic function putUint64(_b:stdgo.Slice<stdgo.GoByte>, _v:stdgo.GoUInt64):Void __self__.value.putUint64(_b, _v);
    @:keep
    public dynamic function uint64(_b:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt64 return __self__.value.uint64(_b);
    @:keep
    public dynamic function appendUint32(_b:stdgo.Slice<stdgo.GoByte>, _v:stdgo.GoUInt32):stdgo.Slice<stdgo.GoByte> return __self__.value.appendUint32(_b, _v);
    @:keep
    public dynamic function putUint32(_b:stdgo.Slice<stdgo.GoByte>, _v:stdgo.GoUInt32):Void __self__.value.putUint32(_b, _v);
    @:keep
    public dynamic function uint32(_b:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt32 return __self__.value.uint32(_b);
    @:keep
    public dynamic function appendUint16(_b:stdgo.Slice<stdgo.GoByte>, _v:stdgo.GoUInt16):stdgo.Slice<stdgo.GoByte> return __self__.value.appendUint16(_b, _v);
    @:keep
    public dynamic function putUint16(_b:stdgo.Slice<stdgo.GoByte>, _v:stdgo.GoUInt16):Void __self__.value.putUint16(_b, _v);
    @:keep
    public dynamic function uint16(_b:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt16 return __self__.value.uint16(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_bigEndian>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.encoding.binary.Binary.T_bigEndian_asInterface) class T_bigEndian_static_extension {
    @:keep
    static public function goString( _:T_bigEndian):stdgo.GoString {
        @:recv var _:T_bigEndian = _?.__copy__();
        return ("binary.BigEndian" : stdgo.GoString);
    }
    @:keep
    static public function string( _:T_bigEndian):stdgo.GoString {
        @:recv var _:T_bigEndian = _?.__copy__();
        return ("BigEndian" : stdgo.GoString);
    }
    @:keep
    static public function appendUint64( _:T_bigEndian, _b:stdgo.Slice<stdgo.GoByte>, _v:stdgo.GoUInt64):stdgo.Slice<stdgo.GoByte> {
        @:recv var _:T_bigEndian = _?.__copy__();
        return (_b.__append__(((_v >> (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte), ((_v >> (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte), ((_v >> (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte), ((_v >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte), ((_v >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte), ((_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte), ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte), (_v : stdgo.GoByte)));
    }
    @:keep
    static public function putUint64( _:T_bigEndian, _b:stdgo.Slice<stdgo.GoByte>, _v:stdgo.GoUInt64):Void {
        @:recv var _:T_bigEndian = _?.__copy__();
        var __blank__ = _b[(7 : stdgo.GoInt)];
        _b[(0 : stdgo.GoInt)] = ((_v >> (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte);
        _b[(1 : stdgo.GoInt)] = ((_v >> (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte);
        _b[(2 : stdgo.GoInt)] = ((_v >> (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte);
        _b[(3 : stdgo.GoInt)] = ((_v >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte);
        _b[(4 : stdgo.GoInt)] = ((_v >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte);
        _b[(5 : stdgo.GoInt)] = ((_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte);
        _b[(6 : stdgo.GoInt)] = ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoByte);
        _b[(7 : stdgo.GoInt)] = (_v : stdgo.GoByte);
    }
    @:keep
    static public function uint64( _:T_bigEndian, _b:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt64 {
        @:recv var _:T_bigEndian = _?.__copy__();
        var __blank__ = _b[(7 : stdgo.GoInt)];
        return ((((((((_b[(7 : stdgo.GoInt)] : stdgo.GoUInt64) | ((_b[(6 : stdgo.GoInt)] : stdgo.GoUInt64) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(5 : stdgo.GoInt)] : stdgo.GoUInt64) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(4 : stdgo.GoInt)] : stdgo.GoUInt64) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(3 : stdgo.GoInt)] : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(2 : stdgo.GoInt)] : stdgo.GoUInt64) << (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(1 : stdgo.GoInt)] : stdgo.GoUInt64) << (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_b[(0 : stdgo.GoInt)] : stdgo.GoUInt64) << (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
    }
    @:keep
    static public function appendUint32( _:T_bigEndian, _b:stdgo.Slice<stdgo.GoByte>, _v:stdgo.GoUInt32):stdgo.Slice<stdgo.GoByte> {
        @:recv var _:T_bigEndian = _?.__copy__();
        return (_b.__append__(((_v >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoByte), ((_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoByte), ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoByte), (_v : stdgo.GoByte)));
    }
    @:keep
    static public function putUint32( _:T_bigEndian, _b:stdgo.Slice<stdgo.GoByte>, _v:stdgo.GoUInt32):Void {
        @:recv var _:T_bigEndian = _?.__copy__();
        var __blank__ = _b[(3 : stdgo.GoInt)];
        _b[(0 : stdgo.GoInt)] = ((_v >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoByte);
        _b[(1 : stdgo.GoInt)] = ((_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoByte);
        _b[(2 : stdgo.GoInt)] = ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoByte);
        _b[(3 : stdgo.GoInt)] = (_v : stdgo.GoByte);
    }
    @:keep
    static public function uint32( _:T_bigEndian, _b:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt32 {
        @:recv var _:T_bigEndian = _?.__copy__();
        var __blank__ = _b[(3 : stdgo.GoInt)];
        return ((((_b[(3 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_b[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_b[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_b[(0 : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
    }
    @:keep
    static public function appendUint16( _:T_bigEndian, _b:stdgo.Slice<stdgo.GoByte>, _v:stdgo.GoUInt16):stdgo.Slice<stdgo.GoByte> {
        @:recv var _:T_bigEndian = _?.__copy__();
        return (_b.__append__(((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoByte), (_v : stdgo.GoByte)));
    }
    @:keep
    static public function putUint16( _:T_bigEndian, _b:stdgo.Slice<stdgo.GoByte>, _v:stdgo.GoUInt16):Void {
        @:recv var _:T_bigEndian = _?.__copy__();
        var __blank__ = _b[(1 : stdgo.GoInt)];
        _b[(0 : stdgo.GoInt)] = ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoByte);
        _b[(1 : stdgo.GoInt)] = (_v : stdgo.GoByte);
    }
    @:keep
    static public function uint16( _:T_bigEndian, _b:stdgo.Slice<stdgo.GoByte>):stdgo.GoUInt16 {
        @:recv var _:T_bigEndian = _?.__copy__();
        var __blank__ = _b[(1 : stdgo.GoInt)];
        return ((_b[(1 : stdgo.GoInt)] : stdgo.GoUInt16) | ((_b[(0 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt16);
    }
}
class T_byteSliceReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_byteSliceReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.encoding.binary.Binary.T_byteSliceReader_asInterface) class T_byteSliceReader_static_extension {
    @:keep
    static public function read( _br:stdgo.Ref<T_byteSliceReader>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _br:stdgo.Ref<T_byteSliceReader> = _br;
        var _n = (stdgo.Go.copySlice(_p, _br._remain) : stdgo.GoInt);
        _br._remain = (_br._remain.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
}
class T_nativeEndian_asInterface {
    @:keep
    public dynamic function goString():stdgo.GoString return __self__.value.goString();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function uint64(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 return __self__.value.uint64(__0);
    @:embedded
    public dynamic function uint32(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 return __self__.value.uint32(__0);
    @:embedded
    public dynamic function uint16(__0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt16 return __self__.value.uint16(__0);
    @:embedded
    public dynamic function putUint64(__0:stdgo.Slice<stdgo.GoUInt8>, __1:stdgo.GoUInt64):Void __self__.value.putUint64(__0, __1);
    @:embedded
    public dynamic function putUint32(__0:stdgo.Slice<stdgo.GoUInt8>, __1:stdgo.GoUInt32):Void __self__.value.putUint32(__0, __1);
    @:embedded
    public dynamic function putUint16(__0:stdgo.Slice<stdgo.GoUInt8>, __1:stdgo.GoUInt16):Void __self__.value.putUint16(__0, __1);
    @:embedded
    public dynamic function appendUint64(__0:stdgo.Slice<stdgo.GoUInt8>, __1:stdgo.GoUInt64):stdgo.Slice<stdgo.GoUInt8> return __self__.value.appendUint64(__0, __1);
    @:embedded
    public dynamic function appendUint32(__0:stdgo.Slice<stdgo.GoUInt8>, __1:stdgo.GoUInt32):stdgo.Slice<stdgo.GoUInt8> return __self__.value.appendUint32(__0, __1);
    @:embedded
    public dynamic function appendUint16(__0:stdgo.Slice<stdgo.GoUInt8>, __1:stdgo.GoUInt16):stdgo.Slice<stdgo.GoUInt8> return __self__.value.appendUint16(__0, __1);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_nativeEndian>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.encoding.binary.Binary.T_nativeEndian_asInterface) class T_nativeEndian_static_extension {
    @:keep
    static public function goString( _:T_nativeEndian):stdgo.GoString {
        @:recv var _:T_nativeEndian = _?.__copy__();
        return ("binary.NativeEndian" : stdgo.GoString);
    }
    @:keep
    static public function string( _:T_nativeEndian):stdgo.GoString {
        @:recv var _:T_nativeEndian = _?.__copy__();
        return ("NativeEndian" : stdgo.GoString);
    }
    @:embedded
    public static function uint64( __self__:T_nativeEndian, __0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 return __self__.uint64(__0);
    @:embedded
    public static function uint32( __self__:T_nativeEndian, __0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 return __self__.uint32(__0);
    @:embedded
    public static function uint16( __self__:T_nativeEndian, __0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt16 return __self__.uint16(__0);
    @:embedded
    public static function putUint64( __self__:T_nativeEndian, __0:stdgo.Slice<stdgo.GoUInt8>, __1:stdgo.GoUInt64) __self__.putUint64(__0, __1);
    @:embedded
    public static function putUint32( __self__:T_nativeEndian, __0:stdgo.Slice<stdgo.GoUInt8>, __1:stdgo.GoUInt32) __self__.putUint32(__0, __1);
    @:embedded
    public static function putUint16( __self__:T_nativeEndian, __0:stdgo.Slice<stdgo.GoUInt8>, __1:stdgo.GoUInt16) __self__.putUint16(__0, __1);
    @:embedded
    public static function appendUint64( __self__:T_nativeEndian, __0:stdgo.Slice<stdgo.GoUInt8>, __1:stdgo.GoUInt64):stdgo.Slice<stdgo.GoUInt8> return __self__.appendUint64(__0, __1);
    @:embedded
    public static function appendUint32( __self__:T_nativeEndian, __0:stdgo.Slice<stdgo.GoUInt8>, __1:stdgo.GoUInt32):stdgo.Slice<stdgo.GoUInt8> return __self__.appendUint32(__0, __1);
    @:embedded
    public static function appendUint16( __self__:T_nativeEndian, __0:stdgo.Slice<stdgo.GoUInt8>, __1:stdgo.GoUInt16):stdgo.Slice<stdgo.GoUInt8> return __self__.appendUint16(__0, __1);
}
class T_decoder_asInterface {
    @:keep
    public dynamic function _skip(_v:stdgo._internal.reflect.Reflect.Value):Void __self__.value._skip(_v);
    @:keep
    public dynamic function _value(_v:stdgo._internal.reflect.Reflect.Value):Void __self__.value._value(_v);
    @:keep
    public dynamic function _int64():stdgo.GoInt64 return __self__.value._int64();
    @:keep
    public dynamic function _int32():stdgo.GoInt32 return __self__.value._int32();
    @:keep
    public dynamic function _int16():stdgo.GoInt16 return __self__.value._int16();
    @:keep
    public dynamic function _int8():stdgo.GoInt8 return __self__.value._int8();
    @:keep
    public dynamic function _uint64():stdgo.GoUInt64 return __self__.value._uint64();
    @:keep
    public dynamic function _uint32():stdgo.GoUInt32 return __self__.value._uint32();
    @:keep
    public dynamic function _uint16():stdgo.GoUInt16 return __self__.value._uint16();
    @:keep
    public dynamic function _uint8():stdgo.GoUInt8 return __self__.value._uint8();
    @:keep
    public dynamic function _bool():Bool return __self__.value._bool();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_decoder>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.encoding.binary.Binary.T_decoder_asInterface) class T_decoder_static_extension {
    @:keep
    static public function _skip( _d:stdgo.Ref<T_decoder>, _v:stdgo._internal.reflect.Reflect.Value):Void {
        @:recv var _d:stdgo.Ref<T_decoder> = _d;
        _d._offset = (_d._offset + (_dataSize(_v?.__copy__())) : stdgo.GoInt);
    }
    @:keep
    static public function _value( _d:stdgo.Ref<T_decoder>, _v:stdgo._internal.reflect.Reflect.Value):Void {
        @:recv var _d:stdgo.Ref<T_decoder> = _d;
        {
            final __value__ = _v.kind();
            if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect.Kind))) {
                var _l = (_v.len() : stdgo.GoInt);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _l : Bool), _i++, {
                        _d._value(_v.index(_i)?.__copy__());
                    });
                };
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect.Kind))) {
                var _t = (_v.type() : stdgo._internal.reflect.Reflect.Type_);
                var _l = (_v.numField() : stdgo.GoInt);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _l : Bool), _i++, {
                        {
                            var _v = (_v.field(_i)?.__copy__() : stdgo._internal.reflect.Reflect.Value);
                            if ((_v.canSet() || (_t.field(_i).name != ("_" : stdgo.GoString)) : Bool)) {
                                _d._value(_v?.__copy__());
                            } else {
                                _d._skip(_v?.__copy__());
                            };
                        };
                    });
                };
            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect.Kind))) {
                var _l = (_v.len() : stdgo.GoInt);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _l : Bool), _i++, {
                        _d._value(_v.index(_i)?.__copy__());
                    });
                };
            } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect.Kind))) {
                _v.setBool(_d._bool());
            } else if (__value__ == ((3u32 : stdgo._internal.reflect.Reflect.Kind))) {
                _v.setInt((_d._int8() : stdgo.GoInt64));
            } else if (__value__ == ((4u32 : stdgo._internal.reflect.Reflect.Kind))) {
                _v.setInt((_d._int16() : stdgo.GoInt64));
            } else if (__value__ == ((5u32 : stdgo._internal.reflect.Reflect.Kind))) {
                _v.setInt((_d._int32() : stdgo.GoInt64));
            } else if (__value__ == ((6u32 : stdgo._internal.reflect.Reflect.Kind))) {
                _v.setInt(_d._int64());
            } else if (__value__ == ((8u32 : stdgo._internal.reflect.Reflect.Kind))) {
                _v.setUint((_d._uint8() : stdgo.GoUInt64));
            } else if (__value__ == ((9u32 : stdgo._internal.reflect.Reflect.Kind))) {
                _v.setUint((_d._uint16() : stdgo.GoUInt64));
            } else if (__value__ == ((10u32 : stdgo._internal.reflect.Reflect.Kind))) {
                _v.setUint((_d._uint32() : stdgo.GoUInt64));
            } else if (__value__ == ((11u32 : stdgo._internal.reflect.Reflect.Kind))) {
                _v.setUint(_d._uint64());
            } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect.Kind))) {
                _v.setFloat((stdgo._internal.math.Math.float32frombits(_d._uint32()) : stdgo.GoFloat64));
            } else if (__value__ == ((14u32 : stdgo._internal.reflect.Reflect.Kind))) {
                _v.setFloat(stdgo._internal.math.Math.float64frombits(_d._uint64()));
            } else if (__value__ == ((15u32 : stdgo._internal.reflect.Reflect.Kind))) {
                _v.setComplex(new stdgo.GoComplex128((stdgo._internal.math.Math.float32frombits(_d._uint32()) : stdgo.GoFloat64), (stdgo._internal.math.Math.float32frombits(_d._uint32()) : stdgo.GoFloat64)));
            } else if (__value__ == ((16u32 : stdgo._internal.reflect.Reflect.Kind))) {
                _v.setComplex(new stdgo.GoComplex128(stdgo._internal.math.Math.float64frombits(_d._uint64()), stdgo._internal.math.Math.float64frombits(_d._uint64())));
            };
        };
    }
    @:keep
    static public function _int64( _d:stdgo.Ref<T_decoder>):stdgo.GoInt64 {
        @:recv var _d:stdgo.Ref<T_decoder> = _d;
        return (_d._uint64() : stdgo.GoInt64);
    }
    @:keep
    static public function _int32( _d:stdgo.Ref<T_decoder>):stdgo.GoInt32 {
        @:recv var _d:stdgo.Ref<T_decoder> = _d;
        return (_d._uint32() : stdgo.GoInt32);
    }
    @:keep
    static public function _int16( _d:stdgo.Ref<T_decoder>):stdgo.GoInt16 {
        @:recv var _d:stdgo.Ref<T_decoder> = _d;
        return (_d._uint16() : stdgo.GoInt16);
    }
    @:keep
    static public function _int8( _d:stdgo.Ref<T_decoder>):stdgo.GoInt8 {
        @:recv var _d:stdgo.Ref<T_decoder> = _d;
        return (_d._uint8() : stdgo.GoInt8);
    }
    @:keep
    static public function _uint64( _d:stdgo.Ref<T_decoder>):stdgo.GoUInt64 {
        @:recv var _d:stdgo.Ref<T_decoder> = _d;
        var _x = (_d._order.uint64((_d._buf.__slice__(_d._offset, (_d._offset + (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt64);
        _d._offset = (_d._offset + ((8 : stdgo.GoInt)) : stdgo.GoInt);
        return _x;
    }
    @:keep
    static public function _uint32( _d:stdgo.Ref<T_decoder>):stdgo.GoUInt32 {
        @:recv var _d:stdgo.Ref<T_decoder> = _d;
        var _x = (_d._order.uint32((_d._buf.__slice__(_d._offset, (_d._offset + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        _d._offset = (_d._offset + ((4 : stdgo.GoInt)) : stdgo.GoInt);
        return _x;
    }
    @:keep
    static public function _uint16( _d:stdgo.Ref<T_decoder>):stdgo.GoUInt16 {
        @:recv var _d:stdgo.Ref<T_decoder> = _d;
        var _x = (_d._order.uint16((_d._buf.__slice__(_d._offset, (_d._offset + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt16);
        _d._offset = (_d._offset + ((2 : stdgo.GoInt)) : stdgo.GoInt);
        return _x;
    }
    @:keep
    static public function _uint8( _d:stdgo.Ref<T_decoder>):stdgo.GoUInt8 {
        @:recv var _d:stdgo.Ref<T_decoder> = _d;
        var _x = (_d._buf[(_d._offset : stdgo.GoInt)] : stdgo.GoUInt8);
        _d._offset++;
        return _x;
    }
    @:keep
    static public function _bool( _d:stdgo.Ref<T_decoder>):Bool {
        @:recv var _d:stdgo.Ref<T_decoder> = _d;
        var _x = (_d._buf[(_d._offset : stdgo.GoInt)] : stdgo.GoUInt8);
        _d._offset++;
        return _x != ((0 : stdgo.GoUInt8));
    }
}
class T_encoder_asInterface {
    @:keep
    public dynamic function _skip(_v:stdgo._internal.reflect.Reflect.Value):Void __self__.value._skip(_v);
    @:keep
    public dynamic function _value(_v:stdgo._internal.reflect.Reflect.Value):Void __self__.value._value(_v);
    @:keep
    public dynamic function _int64(_x:stdgo.GoInt64):Void __self__.value._int64(_x);
    @:keep
    public dynamic function _int32(_x:stdgo.GoInt32):Void __self__.value._int32(_x);
    @:keep
    public dynamic function _int16(_x:stdgo.GoInt16):Void __self__.value._int16(_x);
    @:keep
    public dynamic function _int8(_x:stdgo.GoInt8):Void __self__.value._int8(_x);
    @:keep
    public dynamic function _uint64(_x:stdgo.GoUInt64):Void __self__.value._uint64(_x);
    @:keep
    public dynamic function _uint32(_x:stdgo.GoUInt32):Void __self__.value._uint32(_x);
    @:keep
    public dynamic function _uint16(_x:stdgo.GoUInt16):Void __self__.value._uint16(_x);
    @:keep
    public dynamic function _uint8(_x:stdgo.GoUInt8):Void __self__.value._uint8(_x);
    @:keep
    public dynamic function _bool(_x:Bool):Void __self__.value._bool(_x);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_encoder>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.encoding.binary.Binary.T_encoder_asInterface) class T_encoder_static_extension {
    @:keep
    static public function _skip( _e:stdgo.Ref<T_encoder>, _v:stdgo._internal.reflect.Reflect.Value):Void {
        @:recv var _e:stdgo.Ref<T_encoder> = _e;
        var _n = (_dataSize(_v?.__copy__()) : stdgo.GoInt);
        var _zero = (_e._buf.__slice__(_e._offset, (_e._offset + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _ in _zero) {
            _zero[(_i : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
        _e._offset = (_e._offset + (_n) : stdgo.GoInt);
    }
    @:keep
    static public function _value( _e:stdgo.Ref<T_encoder>, _v:stdgo._internal.reflect.Reflect.Value):Void {
        @:recv var _e:stdgo.Ref<T_encoder> = _e;
        {
            final __value__ = _v.kind();
            if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect.Kind))) {
                var _l = (_v.len() : stdgo.GoInt);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _l : Bool), _i++, {
                        _e._value(_v.index(_i)?.__copy__());
                    });
                };
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect.Kind))) {
                var _t = (_v.type() : stdgo._internal.reflect.Reflect.Type_);
                var _l = (_v.numField() : stdgo.GoInt);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _l : Bool), _i++, {
                        {
                            var _v = (_v.field(_i)?.__copy__() : stdgo._internal.reflect.Reflect.Value);
                            if ((_v.canSet() || (_t.field(_i).name != ("_" : stdgo.GoString)) : Bool)) {
                                _e._value(_v?.__copy__());
                            } else {
                                _e._skip(_v?.__copy__());
                            };
                        };
                    });
                };
            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect.Kind))) {
                var _l = (_v.len() : stdgo.GoInt);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _l : Bool), _i++, {
                        _e._value(_v.index(_i)?.__copy__());
                    });
                };
            } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect.Kind))) {
                _e._bool(_v.bool_());
            } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect.Kind))) {
                {
                    final __value__ = _v.type().kind();
                    if (__value__ == ((3u32 : stdgo._internal.reflect.Reflect.Kind))) {
                        _e._int8((_v.int_() : stdgo.GoInt8));
                    } else if (__value__ == ((4u32 : stdgo._internal.reflect.Reflect.Kind))) {
                        _e._int16((_v.int_() : stdgo.GoInt16));
                    } else if (__value__ == ((5u32 : stdgo._internal.reflect.Reflect.Kind))) {
                        _e._int32((_v.int_() : stdgo.GoInt32));
                    } else if (__value__ == ((6u32 : stdgo._internal.reflect.Reflect.Kind))) {
                        _e._int64(_v.int_());
                    };
                };
            } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect.Kind))) {
                {
                    final __value__ = _v.type().kind();
                    if (__value__ == ((8u32 : stdgo._internal.reflect.Reflect.Kind))) {
                        _e._uint8((_v.uint() : stdgo.GoUInt8));
                    } else if (__value__ == ((9u32 : stdgo._internal.reflect.Reflect.Kind))) {
                        _e._uint16((_v.uint() : stdgo.GoUInt16));
                    } else if (__value__ == ((10u32 : stdgo._internal.reflect.Reflect.Kind))) {
                        _e._uint32((_v.uint() : stdgo.GoUInt32));
                    } else if (__value__ == ((11u32 : stdgo._internal.reflect.Reflect.Kind))) {
                        _e._uint64(_v.uint());
                    };
                };
            } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect.Kind))) {
                {
                    final __value__ = _v.type().kind();
                    if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect.Kind))) {
                        _e._uint32(stdgo._internal.math.Math.float32bits((_v.float_() : stdgo.GoFloat32)));
                    } else if (__value__ == ((14u32 : stdgo._internal.reflect.Reflect.Kind))) {
                        _e._uint64(stdgo._internal.math.Math.float64bits(_v.float_()));
                    };
                };
            } else if (__value__ == ((15u32 : stdgo._internal.reflect.Reflect.Kind)) || __value__ == ((16u32 : stdgo._internal.reflect.Reflect.Kind))) {
                {
                    final __value__ = _v.type().kind();
                    if (__value__ == ((15u32 : stdgo._internal.reflect.Reflect.Kind))) {
                        var _x = (_v.complex() : stdgo.GoComplex128);
                        _e._uint32(stdgo._internal.math.Math.float32bits((_x.real : stdgo.GoFloat32)));
                        _e._uint32(stdgo._internal.math.Math.float32bits((_x.imag : stdgo.GoFloat32)));
                    } else if (__value__ == ((16u32 : stdgo._internal.reflect.Reflect.Kind))) {
                        var _x = (_v.complex() : stdgo.GoComplex128);
                        _e._uint64(stdgo._internal.math.Math.float64bits(_x.real));
                        _e._uint64(stdgo._internal.math.Math.float64bits(_x.imag));
                    };
                };
            };
        };
    }
    @:keep
    static public function _int64( _e:stdgo.Ref<T_encoder>, _x:stdgo.GoInt64):Void {
        @:recv var _e:stdgo.Ref<T_encoder> = _e;
        _e._uint64((_x : stdgo.GoUInt64));
    }
    @:keep
    static public function _int32( _e:stdgo.Ref<T_encoder>, _x:stdgo.GoInt32):Void {
        @:recv var _e:stdgo.Ref<T_encoder> = _e;
        _e._uint32((_x : stdgo.GoUInt32));
    }
    @:keep
    static public function _int16( _e:stdgo.Ref<T_encoder>, _x:stdgo.GoInt16):Void {
        @:recv var _e:stdgo.Ref<T_encoder> = _e;
        _e._uint16((_x : stdgo.GoUInt16));
    }
    @:keep
    static public function _int8( _e:stdgo.Ref<T_encoder>, _x:stdgo.GoInt8):Void {
        @:recv var _e:stdgo.Ref<T_encoder> = _e;
        _e._uint8((_x : stdgo.GoUInt8));
    }
    @:keep
    static public function _uint64( _e:stdgo.Ref<T_encoder>, _x:stdgo.GoUInt64):Void {
        @:recv var _e:stdgo.Ref<T_encoder> = _e;
        _e._order.putUint64((_e._buf.__slice__(_e._offset, (_e._offset + (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x);
        _e._offset = (_e._offset + ((8 : stdgo.GoInt)) : stdgo.GoInt);
    }
    @:keep
    static public function _uint32( _e:stdgo.Ref<T_encoder>, _x:stdgo.GoUInt32):Void {
        @:recv var _e:stdgo.Ref<T_encoder> = _e;
        _e._order.putUint32((_e._buf.__slice__(_e._offset, (_e._offset + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x);
        _e._offset = (_e._offset + ((4 : stdgo.GoInt)) : stdgo.GoInt);
    }
    @:keep
    static public function _uint16( _e:stdgo.Ref<T_encoder>, _x:stdgo.GoUInt16):Void {
        @:recv var _e:stdgo.Ref<T_encoder> = _e;
        _e._order.putUint16((_e._buf.__slice__(_e._offset, (_e._offset + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x);
        _e._offset = (_e._offset + ((2 : stdgo.GoInt)) : stdgo.GoInt);
    }
    @:keep
    static public function _uint8( _e:stdgo.Ref<T_encoder>, _x:stdgo.GoUInt8):Void {
        @:recv var _e:stdgo.Ref<T_encoder> = _e;
        _e._buf[(_e._offset : stdgo.GoInt)] = _x;
        _e._offset++;
    }
    @:keep
    static public function _bool( _e:stdgo.Ref<T_encoder>, _x:Bool):Void {
        @:recv var _e:stdgo.Ref<T_encoder> = _e;
        if (_x) {
            _e._buf[(_e._offset : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
        } else {
            _e._buf[(_e._offset : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
        _e._offset++;
    }
}
