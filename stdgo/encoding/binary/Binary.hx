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
/**
    // Package binary implements simple translation between numbers and byte
    // sequences and encoding and decoding of varints.
    //
    // Numbers are translated by reading and writing fixed-size values.
    // A fixed-size value is either a fixed-size arithmetic
    // type (bool, int8, uint8, int16, float32, complex64, ...)
    // or an array or struct containing only fixed-size values.
    //
    // The varint functions encode and decode single integer values using
    // a variable-length encoding; smaller values require fewer bytes.
    // For a specification, see
    // https://developers.google.com/protocol-buffers/docs/encoding.
    //
    // This package favors simplicity over efficiency. Clients that require
    // high-performance serialization, especially for large data structures,
    // should look at more advanced solutions such as the encoding/gob
    // package or protocol buffers.
**/
private var __go2hxdoc__package : Bool;
/**
    
    
    
**/
private var _overflow = stdgo.errors.Errors.new_(("binary: varint overflows a 64-bit integer" : GoString));
/**
    
    
    
**/
private var _s = (new Struct(
(1 : GoInt8),
(515 : GoInt16),
(67438087 : GoInt32),
(579005069656919567i64 : GoInt64),
(16 : GoUInt8),
(4370 : GoUInt16),
(320083222u32 : GoUInt32),
(1664107662228069662i64 : GoUInt64),
stdgo.math.Math.float32frombits((522199330u32 : GoUInt32)),
stdgo.math.Math.float64frombits((2532189736284989738i64 : GoUInt64)),
new GoComplex128(stdgo.math.Math.float32frombits((724315438u32 : GoUInt32)), stdgo.math.Math.float32frombits((791687474u32 : GoUInt32))),
new GoComplex128(stdgo.math.Math.float64frombits((3689632501694216506i64 : GoUInt64)), stdgo.math.Math.float64frombits((4268353884398829890i64 : GoUInt64))),
(new GoArray<GoUInt8>((67 : GoUInt8), (68 : GoUInt8), (69 : GoUInt8), (70 : GoUInt8)) : GoArray<GoUInt8>),
true,
(new GoArray<Bool>(true, false, true, false) : GoArray<Bool>)) : Struct);
/**
    
    
    
**/
private var _big = (new Slice<GoUInt8>(
75,
75,
(1 : GoUInt8),
(2 : GoUInt8),
(3 : GoUInt8),
(4 : GoUInt8),
(5 : GoUInt8),
(6 : GoUInt8),
(7 : GoUInt8),
(8 : GoUInt8),
(9 : GoUInt8),
(10 : GoUInt8),
(11 : GoUInt8),
(12 : GoUInt8),
(13 : GoUInt8),
(14 : GoUInt8),
(15 : GoUInt8),
(16 : GoUInt8),
(17 : GoUInt8),
(18 : GoUInt8),
(19 : GoUInt8),
(20 : GoUInt8),
(21 : GoUInt8),
(22 : GoUInt8),
(23 : GoUInt8),
(24 : GoUInt8),
(25 : GoUInt8),
(26 : GoUInt8),
(27 : GoUInt8),
(28 : GoUInt8),
(29 : GoUInt8),
(30 : GoUInt8),
(31 : GoUInt8),
(32 : GoUInt8),
(33 : GoUInt8),
(34 : GoUInt8),
(35 : GoUInt8),
(36 : GoUInt8),
(37 : GoUInt8),
(38 : GoUInt8),
(39 : GoUInt8),
(40 : GoUInt8),
(41 : GoUInt8),
(42 : GoUInt8),
(43 : GoUInt8),
(44 : GoUInt8),
(45 : GoUInt8),
(46 : GoUInt8),
(47 : GoUInt8),
(48 : GoUInt8),
(49 : GoUInt8),
(50 : GoUInt8),
(51 : GoUInt8),
(52 : GoUInt8),
(53 : GoUInt8),
(54 : GoUInt8),
(55 : GoUInt8),
(56 : GoUInt8),
(57 : GoUInt8),
(58 : GoUInt8),
(59 : GoUInt8),
(60 : GoUInt8),
(61 : GoUInt8),
(62 : GoUInt8),
(63 : GoUInt8),
(64 : GoUInt8),
(65 : GoUInt8),
(66 : GoUInt8),
(67 : GoUInt8),
(68 : GoUInt8),
(69 : GoUInt8),
(70 : GoUInt8),
(1 : GoUInt8),
(1 : GoUInt8),
(0 : GoUInt8),
(1 : GoUInt8),
(0 : GoUInt8)) : Slice<GoUInt8>);
/**
    
    
    
**/
private var _little = (new Slice<GoUInt8>(
75,
75,
(1 : GoUInt8),
(3 : GoUInt8),
(2 : GoUInt8),
(7 : GoUInt8),
(6 : GoUInt8),
(5 : GoUInt8),
(4 : GoUInt8),
(15 : GoUInt8),
(14 : GoUInt8),
(13 : GoUInt8),
(12 : GoUInt8),
(11 : GoUInt8),
(10 : GoUInt8),
(9 : GoUInt8),
(8 : GoUInt8),
(16 : GoUInt8),
(18 : GoUInt8),
(17 : GoUInt8),
(22 : GoUInt8),
(21 : GoUInt8),
(20 : GoUInt8),
(19 : GoUInt8),
(30 : GoUInt8),
(29 : GoUInt8),
(28 : GoUInt8),
(27 : GoUInt8),
(26 : GoUInt8),
(25 : GoUInt8),
(24 : GoUInt8),
(23 : GoUInt8),
(34 : GoUInt8),
(33 : GoUInt8),
(32 : GoUInt8),
(31 : GoUInt8),
(42 : GoUInt8),
(41 : GoUInt8),
(40 : GoUInt8),
(39 : GoUInt8),
(38 : GoUInt8),
(37 : GoUInt8),
(36 : GoUInt8),
(35 : GoUInt8),
(46 : GoUInt8),
(45 : GoUInt8),
(44 : GoUInt8),
(43 : GoUInt8),
(50 : GoUInt8),
(49 : GoUInt8),
(48 : GoUInt8),
(47 : GoUInt8),
(58 : GoUInt8),
(57 : GoUInt8),
(56 : GoUInt8),
(55 : GoUInt8),
(54 : GoUInt8),
(53 : GoUInt8),
(52 : GoUInt8),
(51 : GoUInt8),
(66 : GoUInt8),
(65 : GoUInt8),
(64 : GoUInt8),
(63 : GoUInt8),
(62 : GoUInt8),
(61 : GoUInt8),
(60 : GoUInt8),
(59 : GoUInt8),
(67 : GoUInt8),
(68 : GoUInt8),
(69 : GoUInt8),
(70 : GoUInt8),
(1 : GoUInt8),
(1 : GoUInt8),
(0 : GoUInt8),
(1 : GoUInt8),
(0 : GoUInt8)) : Slice<GoUInt8>);
/**
    
    
    
**/
private var _src = (new Slice<GoUInt8>(8, 8, (1 : GoUInt8), (2 : GoUInt8), (3 : GoUInt8), (4 : GoUInt8), (5 : GoUInt8), (6 : GoUInt8), (7 : GoUInt8), (8 : GoUInt8)) : Slice<GoUInt8>);
/**
    
    
    
**/
private var _res = (new Slice<GoInt32>(2, 2, (16909060 : GoInt32), (84281096 : GoInt32)) : Slice<GoInt32>);
/**
    
    
    
**/
private var _putbuf = (new Slice<GoUInt8>(8, 8, (0 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8)) : Slice<GoUInt8>);
/**
    // Addresses of arrays are easier to manipulate with reflection than are slices.
    
    
**/
private var _intArrays = (new Slice<AnyInterface>(8, 8, Go.toInterface((Go.setRef((new GoArray<GoInt8>(...([].concat([for (i in 0 ... 100) (0 : GoInt8)]))) : GoArray<GoInt8>)) : Ref<GoArray<GoInt8>>)), Go.toInterface((Go.setRef((new GoArray<GoInt16>(...([].concat([for (i in 0 ... 100) (0 : GoInt16)]))) : GoArray<GoInt16>)) : Ref<GoArray<GoInt16>>)), Go.toInterface((Go.setRef((new GoArray<GoInt32>(...([].concat([for (i in 0 ... 100) (0 : GoInt32)]))) : GoArray<GoInt32>)) : Ref<GoArray<GoInt32>>)), Go.toInterface((Go.setRef((new GoArray<GoInt64>(...([].concat([for (i in 0 ... 100) (0 : GoInt64)]))) : GoArray<GoInt64>)) : Ref<GoArray<GoInt64>>)), Go.toInterface((Go.setRef((new GoArray<GoUInt8>(...([].concat([for (i in 0 ... 100) (0 : GoUInt8)]))) : GoArray<GoUInt8>)) : Ref<GoArray<GoUInt8>>)), Go.toInterface((Go.setRef((new GoArray<GoUInt16>(...([].concat([for (i in 0 ... 100) (0 : GoUInt16)]))) : GoArray<GoUInt16>)) : Ref<GoArray<GoUInt16>>)), Go.toInterface((Go.setRef((new GoArray<GoUInt32>(...([].concat([for (i in 0 ... 100) (0 : GoUInt32)]))) : GoArray<GoUInt32>)) : Ref<GoArray<GoUInt32>>)), Go.toInterface((Go.setRef((new GoArray<GoUInt64>(...([].concat([for (i in 0 ... 100) (0 : GoUInt64)]))) : GoArray<GoUInt64>)) : Ref<GoArray<GoUInt64>>))) : Slice<AnyInterface>);
/**
    
    
    
**/
private var _tests = (new Slice<GoInt64>(
18,
18,
(-9223372036854775808i64 : GoInt64),
(-9223372036854775807i64 : GoInt64),
(-1i64 : GoInt64),
(0i64 : GoInt64),
(1i64 : GoInt64),
(2i64 : GoInt64),
(10i64 : GoInt64),
(20i64 : GoInt64),
(63i64 : GoInt64),
(64i64 : GoInt64),
(65i64 : GoInt64),
(127i64 : GoInt64),
(128i64 : GoInt64),
(129i64 : GoInt64),
(255i64 : GoInt64),
(256i64 : GoInt64),
(257i64 : GoInt64),
(9223372036854775807i64 : GoInt64)) : Slice<GoInt64>);
/**
    // LittleEndian is the little-endian implementation of ByteOrder and AppendByteOrder.
    
    
**/
var littleEndian : T_littleEndian = ({} : stdgo.encoding.binary.Binary.T_littleEndian);
/**
    // BigEndian is the big-endian implementation of ByteOrder and AppendByteOrder.
    
    
**/
var bigEndian : T_bigEndian = ({} : stdgo.encoding.binary.Binary.T_bigEndian);
/**
    
    
    // map[reflect.Type]int
**/
private var _structSize : stdgo.sync.Sync.Map_ = ({} : stdgo.sync.Sync.Map_);
/**
    // MaxVarintLenN is the maximum length of a varint-encoded N-bit integer.
    
    
**/
final maxVarintLen16 = (3i64 : GoUInt64);
/**
    // MaxVarintLenN is the maximum length of a varint-encoded N-bit integer.
    
    
**/
final maxVarintLen32 = (5i64 : GoUInt64);
/**
    // MaxVarintLenN is the maximum length of a varint-encoded N-bit integer.
    
    
**/
final maxVarintLen64 = (10i64 : GoUInt64);
/**
    // A ByteOrder specifies how to convert byte slices into
    // 16-, 32-, or 64-bit unsigned integers.
    
    
**/
typedef ByteOrder = StructType & {
    /**
        
        
        
    **/
    public dynamic function uint16(_0:Slice<GoByte>):GoUInt16;
    /**
        
        
        
    **/
    public dynamic function uint32(_0:Slice<GoByte>):GoUInt32;
    /**
        
        
        
    **/
    public dynamic function uint64(_0:Slice<GoByte>):GoUInt64;
    /**
        
        
        
    **/
    public dynamic function putUint16(_0:Slice<GoByte>, _1:GoUInt16):Void;
    /**
        
        
        
    **/
    public dynamic function putUint32(_0:Slice<GoByte>, _1:GoUInt32):Void;
    /**
        
        
        
    **/
    public dynamic function putUint64(_0:Slice<GoByte>, _1:GoUInt64):Void;
    /**
        
        
        
    **/
    public dynamic function string():GoString;
};
/**
    // AppendByteOrder specifies how to append 16-, 32-, or 64-bit unsigned integers
    // into a byte slice.
    
    
**/
typedef AppendByteOrder = StructType & {
    /**
        
        
        
    **/
    public dynamic function appendUint16(_0:Slice<GoByte>, _1:GoUInt16):Slice<GoByte>;
    /**
        
        
        
    **/
    public dynamic function appendUint32(_0:Slice<GoByte>, _1:GoUInt32):Slice<GoByte>;
    /**
        
        
        
    **/
    public dynamic function appendUint64(_0:Slice<GoByte>, _1:GoUInt64):Slice<GoByte>;
    /**
        
        
        
    **/
    public dynamic function string():GoString;
};
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.encoding.binary.Binary.T_littleEndian_static_extension) class T_littleEndian {
    public function new() {}
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_littleEndian();
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.encoding.binary.Binary.T_bigEndian_static_extension) class T_bigEndian {
    public function new() {}
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_bigEndian();
    }
}
/**
    
    
    
**/
@:structInit @:private class T_coder {
    public var _order : stdgo.encoding.binary.Binary.ByteOrder = (null : stdgo.encoding.binary.Binary.ByteOrder);
    public var _buf : Slice<GoUInt8> = (null : Slice<GoUInt8>);
    public var _offset : GoInt = 0;
    public function new(?_order:stdgo.encoding.binary.Binary.ByteOrder, ?_buf:Slice<GoUInt8>, ?_offset:GoInt) {
        if (_order != null) this._order = _order;
        if (_buf != null) this._buf = _buf;
        if (_offset != null) this._offset = _offset;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_coder(_order, _buf, _offset);
    }
}
/**
    
    
    
**/
@:structInit class Struct {
    public var int8 : GoInt8 = 0;
    public var int16 : GoInt16 = 0;
    public var int32 : GoInt32 = 0;
    public var int64 : GoInt64 = 0;
    public var uint8 : GoUInt8 = 0;
    public var uint16 : GoUInt16 = 0;
    public var uint32 : GoUInt32 = 0;
    public var uint64 : GoUInt64 = 0;
    public var float32 : GoFloat32 = 0;
    public var float64 : GoFloat64 = 0;
    public var complex64 : GoComplex64 = new GoComplex64(0, 0);
    public var complex128 : GoComplex128 = new GoComplex128(0, 0);
    public var array : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 4) (0 : GoUInt8)]);
    public var bool_ : Bool = false;
    public var boolArray : GoArray<Bool> = new GoArray<Bool>(...[for (i in 0 ... 4) false]);
    public function new(?int8:GoInt8, ?int16:GoInt16, ?int32:GoInt32, ?int64:GoInt64, ?uint8:GoUInt8, ?uint16:GoUInt16, ?uint32:GoUInt32, ?uint64:GoUInt64, ?float32:GoFloat32, ?float64:GoFloat64, ?complex64:GoComplex64, ?complex128:GoComplex128, ?array:GoArray<GoUInt8>, ?bool_:Bool, ?boolArray:GoArray<Bool>) {
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
    public function __underlying__() return Go.toInterface(this);
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
/**
    
    
    
**/
@:structInit class T {
    public var int_ : GoInt = 0;
    public var uint : GoUInt = 0;
    public var uintptr : GoUIntptr = 0;
    public var array : GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0 ... 4) (0 : GoInt)]);
    public function new(?int_:GoInt, ?uint:GoUInt, ?uintptr:GoUIntptr, ?array:GoArray<GoInt>) {
        if (int_ != null) this.int_ = int_;
        if (uint != null) this.uint = uint;
        if (uintptr != null) this.uintptr = uintptr;
        if (array != null) this.array = array;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T(int_, uint, uintptr, array);
    }
}
/**
    
    
    
**/
@:structInit class BlankFields {
    public var a : GoUInt32 = 0;
    @:optional
    public var __4 : GoInt32 = 0;
    public var b : GoFloat64 = 0;
    @:optional
    public var __5 : GoArray<GoInt16> = new GoArray<GoInt16>(...[for (i in 0 ... 4) (0 : GoInt16)]);
    public var c : GoUInt8 = 0;
    @:optional
    public var __6 : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 7) (0 : GoUInt8)]);
    @:optional
    public var __7 : { var _f : GoArray<GoFloat32>; } = { _f : new GoArray<GoFloat32>(...[for (i in 0 ... 8) (0 : GoFloat32)]) };
    public function new(?a:GoUInt32, ?__4:GoInt32, ?b:GoFloat64, ?__5:GoArray<GoInt16>, ?c:GoUInt8, ?__6:GoArray<GoUInt8>, ?__7:{ var _f : GoArray<GoFloat32>; }) {
        if (a != null) this.a = a;
        if (__4 != null) this.__4 = __4;
        if (b != null) this.b = b;
        if (__5 != null) this.__5 = __5;
        if (c != null) this.c = c;
        if (__6 != null) this.__6 = __6;
        if (__7 != null) this.__7 = __7;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new BlankFields(a, __4, b, __5, c, __6, __7);
    }
}
/**
    
    
    
**/
@:structInit class BlankFieldsProbe {
    public var a : GoUInt32 = 0;
    public var p0 : GoInt32 = 0;
    public var b : GoFloat64 = 0;
    public var p1 : GoArray<GoInt16> = new GoArray<GoInt16>(...[for (i in 0 ... 4) (0 : GoInt16)]);
    public var c : GoUInt8 = 0;
    public var p2 : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 7) (0 : GoUInt8)]);
    public var p3 : { var f : GoArray<GoFloat32>; } = { f : new GoArray<GoFloat32>(...[for (i in 0 ... 8) (0 : GoFloat32)]) };
    public function new(?a:GoUInt32, ?p0:GoInt32, ?b:GoFloat64, ?p1:GoArray<GoInt16>, ?c:GoUInt8, ?p2:GoArray<GoUInt8>, ?p3:{ var f : GoArray<GoFloat32>; }) {
        if (a != null) this.a = a;
        if (p0 != null) this.p0 = p0;
        if (b != null) this.b = b;
        if (p1 != null) this.p1 = p1;
        if (c != null) this.c = c;
        if (p2 != null) this.p2 = p2;
        if (p3 != null) this.p3 = p3;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new BlankFieldsProbe(a, p0, b, p1, c, p2, p3);
    }
}
/**
    
    
    
**/
@:structInit class Unexported {
    public var _a : GoInt32 = 0;
    public function new(?_a:GoInt32) {
        if (_a != null) this._a = _a;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Unexported(_a);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.encoding.binary.Binary.T_byteSliceReader_static_extension) class T_byteSliceReader {
    public var _remain : Slice<GoUInt8> = (null : Slice<GoUInt8>);
    public function new(?_remain:Slice<GoUInt8>) {
        if (_remain != null) this._remain = _remain;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_byteSliceReader(_remain);
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
@:keep @:allow(stdgo.encoding.binary.Binary.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.encoding.binary.Binary.T__struct_0_static_extension) private typedef T__struct_0 = {
    public var _f : GoArray<GoFloat32>;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_1>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.binary.Binary.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo.encoding.binary.Binary.T__struct_1_static_extension) private typedef T__struct_1 = {
    public var f : GoArray<GoFloat32>;
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
@:keep @:allow(stdgo.encoding.binary.Binary.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo.encoding.binary.Binary.T__struct_2_static_extension) private typedef T__struct_2 = {
    public var _val : AnyInterface;
    public var _want : GoInt;
};
class T__struct_3_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_3>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.binary.Binary.T__struct_3_asInterface) class T__struct_3_static_extension {

}
@:local @:using(stdgo.encoding.binary.Binary.T__struct_3_static_extension) private typedef T__struct_3 = {
    public var a : stdgo.encoding.binary.Binary.Struct;
};
class T__struct_4_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_4>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.binary.Binary.T__struct_4_asInterface) class T__struct_4_static_extension {

}
@:local @:using(stdgo.encoding.binary.Binary.T__struct_4_static_extension) private typedef T__struct_4 = {};
class T__struct_5_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_5>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.binary.Binary.T__struct_5_asInterface) class T__struct_5_static_extension {

}
@:local @:using(stdgo.encoding.binary.Binary.T__struct_5_static_extension) private typedef T__struct_5 = {
    public var a : GoUInt8;
    public var b : GoUInt8;
    public var c : GoUInt8;
    public var d : GoUInt8;
    public var e : GoInt32;
    public var f : GoFloat64;
};
class T__struct_6_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_6>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.binary.Binary.T__struct_6_asInterface) class T__struct_6_static_extension {

}
@:local @:using(stdgo.encoding.binary.Binary.T__struct_6_static_extension) private typedef T__struct_6 = {
    public var _in : Slice<GoUInt8>;
    public var _name : GoString;
    public var _wantN : GoInt;
    public var _wantValue : GoUInt64;
};
@:named @:using(stdgo.encoding.binary.Binary.T_decoder_static_extension) private typedef T_decoder = stdgo.encoding.binary.Binary.T_coder;
@:named @:using(stdgo.encoding.binary.Binary.T_encoder_static_extension) private typedef T_encoder = stdgo.encoding.binary.Binary.T_coder;
/**
    // Read reads structured binary data from r into data.
    // Data must be a pointer to a fixed-size value or a slice
    // of fixed-size values.
    // Bytes read from r are decoded using the specified byte order
    // and written to successive fields of the data.
    // When decoding boolean values, a zero byte is decoded as false, and
    // any other non-zero byte is decoded as true.
    // When reading into structs, the field data for fields with
    // blank (_) field names is skipped; i.e., blank field names
    // may be used for padding.
    // When reading into a struct, all non-blank fields must be exported
    // or Read may panic.
    //
    // The error is EOF only if no bytes were read.
    // If an EOF happens after reading some but not all the bytes,
    // Read returns ErrUnexpectedEOF.
**/
function read(_r:stdgo.io.Io.Reader, _order:ByteOrder, _data:AnyInterface):Error {
        {
            var _n:GoInt = _intDataSize(_data);
            if (_n != ((0 : GoInt))) {
                var _bs = new Slice<GoUInt8>((_n : GoInt).toBasic(), 0).__setNumber32__();
                {
                    var __tmp__ = stdgo.io.Io.readFull(_r, _bs), __0:GoInt = __tmp__._0, _err:Error = __tmp__._1;
                    if (_err != null) {
                        return _err;
                    };
                };
                {
                    final __type__ = _data;
                    if (Go.typeEquals((__type__ : Pointer<Bool>))) {
                        var _data:Pointer<Bool> = __type__ == null ? (null : Pointer<Bool>) : __type__.__underlying__() == null ? (null : Pointer<Bool>) : __type__ == null ? (null : Pointer<Bool>) : __type__.__underlying__().value;
                        _data.value = _bs[(0 : GoInt)] != ((0 : GoUInt8));
                    } else if (Go.typeEquals((__type__ : Pointer<GoInt8>))) {
                        var _data:Pointer<GoInt8> = __type__ == null ? (null : Pointer<GoInt8>) : __type__.__underlying__() == null ? (null : Pointer<GoInt8>) : __type__ == null ? (null : Pointer<GoInt8>) : __type__.__underlying__().value;
                        _data.value = (_bs[(0 : GoInt)] : GoInt8);
                    } else if (Go.typeEquals((__type__ : Pointer<GoUInt8>))) {
                        var _data:Pointer<GoUInt8> = __type__ == null ? (null : Pointer<GoUInt8>) : __type__.__underlying__() == null ? (null : Pointer<GoUInt8>) : __type__ == null ? (null : Pointer<GoUInt8>) : __type__.__underlying__().value;
                        _data.value = _bs[(0 : GoInt)];
                    } else if (Go.typeEquals((__type__ : Pointer<GoInt16>))) {
                        var _data:Pointer<GoInt16> = __type__ == null ? (null : Pointer<GoInt16>) : __type__.__underlying__() == null ? (null : Pointer<GoInt16>) : __type__ == null ? (null : Pointer<GoInt16>) : __type__.__underlying__().value;
                        _data.value = (_order.uint16(_bs) : GoInt16);
                    } else if (Go.typeEquals((__type__ : Pointer<GoUInt16>))) {
                        var _data:Pointer<GoUInt16> = __type__ == null ? (null : Pointer<GoUInt16>) : __type__.__underlying__() == null ? (null : Pointer<GoUInt16>) : __type__ == null ? (null : Pointer<GoUInt16>) : __type__.__underlying__().value;
                        _data.value = _order.uint16(_bs);
                    } else if (Go.typeEquals((__type__ : Pointer<GoInt32>))) {
                        var _data:Pointer<GoInt32> = __type__ == null ? (null : Pointer<GoInt32>) : __type__.__underlying__() == null ? (null : Pointer<GoInt32>) : __type__ == null ? (null : Pointer<GoInt32>) : __type__.__underlying__().value;
                        _data.value = (_order.uint32(_bs) : GoInt32);
                    } else if (Go.typeEquals((__type__ : Pointer<GoUInt32>))) {
                        var _data:Pointer<GoUInt32> = __type__ == null ? (null : Pointer<GoUInt32>) : __type__.__underlying__() == null ? (null : Pointer<GoUInt32>) : __type__ == null ? (null : Pointer<GoUInt32>) : __type__.__underlying__().value;
                        _data.value = _order.uint32(_bs);
                    } else if (Go.typeEquals((__type__ : Pointer<GoInt64>))) {
                        var _data:Pointer<GoInt64> = __type__ == null ? (null : Pointer<GoInt64>) : __type__.__underlying__() == null ? (null : Pointer<GoInt64>) : __type__ == null ? (null : Pointer<GoInt64>) : __type__.__underlying__().value;
                        _data.value = (_order.uint64(_bs) : GoInt64);
                    } else if (Go.typeEquals((__type__ : Pointer<GoUInt64>))) {
                        var _data:Pointer<GoUInt64> = __type__ == null ? (null : Pointer<GoUInt64>) : __type__.__underlying__() == null ? (null : Pointer<GoUInt64>) : __type__ == null ? (null : Pointer<GoUInt64>) : __type__.__underlying__().value;
                        _data.value = _order.uint64(_bs);
                    } else if (Go.typeEquals((__type__ : Pointer<GoFloat32>))) {
                        var _data:Pointer<GoFloat32> = __type__ == null ? (null : Pointer<GoFloat32>) : __type__.__underlying__() == null ? (null : Pointer<GoFloat32>) : __type__ == null ? (null : Pointer<GoFloat32>) : __type__.__underlying__().value;
                        _data.value = stdgo.math.Math.float32frombits(_order.uint32(_bs));
                    } else if (Go.typeEquals((__type__ : Pointer<GoFloat64>))) {
                        var _data:Pointer<GoFloat64> = __type__ == null ? (null : Pointer<GoFloat64>) : __type__.__underlying__() == null ? (null : Pointer<GoFloat64>) : __type__ == null ? (null : Pointer<GoFloat64>) : __type__.__underlying__().value;
                        _data.value = stdgo.math.Math.float64frombits(_order.uint64(_bs));
                    } else if (Go.typeEquals((__type__ : Slice<Bool>))) {
                        var _data:Slice<Bool> = __type__ == null ? (null : Slice<Bool>) : __type__.__underlying__() == null ? (null : Slice<Bool>) : __type__ == null ? (null : Slice<Bool>) : __type__.__underlying__().value;
                        for (_i => _x in _bs) {
                            _data[(_i : GoInt)] = _x != ((0 : GoUInt8));
                        };
                    } else if (Go.typeEquals((__type__ : Slice<GoInt8>))) {
                        var _data:Slice<GoInt8> = __type__ == null ? (null : Slice<GoInt8>) : __type__.__underlying__() == null ? (null : Slice<GoInt8>) : __type__ == null ? (null : Slice<GoInt8>) : __type__.__underlying__().value;
                        for (_i => _x in _bs) {
                            _data[(_i : GoInt)] = (_x : GoInt8);
                        };
                    } else if (Go.typeEquals((__type__ : Slice<GoUInt8>))) {
                        var _data:Slice<GoUInt8> = __type__ == null ? (null : Slice<GoUInt8>) : __type__.__underlying__() == null ? (null : Slice<GoUInt8>) : __type__ == null ? (null : Slice<GoUInt8>) : __type__.__underlying__().value;
                        Go.copySlice(_data, _bs);
                    } else if (Go.typeEquals((__type__ : Slice<GoInt16>))) {
                        var _data:Slice<GoInt16> = __type__ == null ? (null : Slice<GoInt16>) : __type__.__underlying__() == null ? (null : Slice<GoInt16>) : __type__ == null ? (null : Slice<GoInt16>) : __type__.__underlying__().value;
                        for (_i in 0 ... _data.length.toBasic()) {
                            _data[(_i : GoInt)] = (_order.uint16((_bs.__slice__((2 : GoInt) * _i) : Slice<GoUInt8>)) : GoInt16);
                        };
                    } else if (Go.typeEquals((__type__ : Slice<GoUInt16>))) {
                        var _data:Slice<GoUInt16> = __type__ == null ? (null : Slice<GoUInt16>) : __type__.__underlying__() == null ? (null : Slice<GoUInt16>) : __type__ == null ? (null : Slice<GoUInt16>) : __type__.__underlying__().value;
                        for (_i in 0 ... _data.length.toBasic()) {
                            _data[(_i : GoInt)] = _order.uint16((_bs.__slice__((2 : GoInt) * _i) : Slice<GoUInt8>));
                        };
                    } else if (Go.typeEquals((__type__ : Slice<GoInt32>))) {
                        var _data:Slice<GoInt32> = __type__ == null ? (null : Slice<GoInt32>) : __type__.__underlying__() == null ? (null : Slice<GoInt32>) : __type__ == null ? (null : Slice<GoInt32>) : __type__.__underlying__().value;
                        for (_i in 0 ... _data.length.toBasic()) {
                            _data[(_i : GoInt)] = (_order.uint32((_bs.__slice__((4 : GoInt) * _i) : Slice<GoUInt8>)) : GoInt32);
                        };
                    } else if (Go.typeEquals((__type__ : Slice<GoUInt32>))) {
                        var _data:Slice<GoUInt32> = __type__ == null ? (null : Slice<GoUInt32>) : __type__.__underlying__() == null ? (null : Slice<GoUInt32>) : __type__ == null ? (null : Slice<GoUInt32>) : __type__.__underlying__().value;
                        for (_i in 0 ... _data.length.toBasic()) {
                            _data[(_i : GoInt)] = _order.uint32((_bs.__slice__((4 : GoInt) * _i) : Slice<GoUInt8>));
                        };
                    } else if (Go.typeEquals((__type__ : Slice<GoInt64>))) {
                        var _data:Slice<GoInt64> = __type__ == null ? (null : Slice<GoInt64>) : __type__.__underlying__() == null ? (null : Slice<GoInt64>) : __type__ == null ? (null : Slice<GoInt64>) : __type__.__underlying__().value;
                        for (_i in 0 ... _data.length.toBasic()) {
                            _data[(_i : GoInt)] = (_order.uint64((_bs.__slice__((8 : GoInt) * _i) : Slice<GoUInt8>)) : GoInt64);
                        };
                    } else if (Go.typeEquals((__type__ : Slice<GoUInt64>))) {
                        var _data:Slice<GoUInt64> = __type__ == null ? (null : Slice<GoUInt64>) : __type__.__underlying__() == null ? (null : Slice<GoUInt64>) : __type__ == null ? (null : Slice<GoUInt64>) : __type__.__underlying__().value;
                        for (_i in 0 ... _data.length.toBasic()) {
                            _data[(_i : GoInt)] = _order.uint64((_bs.__slice__((8 : GoInt) * _i) : Slice<GoUInt8>));
                        };
                    } else if (Go.typeEquals((__type__ : Slice<GoFloat32>))) {
                        var _data:Slice<GoFloat32> = __type__ == null ? (null : Slice<GoFloat32>) : __type__.__underlying__() == null ? (null : Slice<GoFloat32>) : __type__ == null ? (null : Slice<GoFloat32>) : __type__.__underlying__().value;
                        for (_i in 0 ... _data.length.toBasic()) {
                            _data[(_i : GoInt)] = stdgo.math.Math.float32frombits(_order.uint32((_bs.__slice__((4 : GoInt) * _i) : Slice<GoUInt8>)));
                        };
                    } else if (Go.typeEquals((__type__ : Slice<GoFloat64>))) {
                        var _data:Slice<GoFloat64> = __type__ == null ? (null : Slice<GoFloat64>) : __type__.__underlying__() == null ? (null : Slice<GoFloat64>) : __type__ == null ? (null : Slice<GoFloat64>) : __type__.__underlying__().value;
                        for (_i in 0 ... _data.length.toBasic()) {
                            _data[(_i : GoInt)] = stdgo.math.Math.float64frombits(_order.uint64((_bs.__slice__((8 : GoInt) * _i) : Slice<GoUInt8>)));
                        };
                    } else {
                        var _data:AnyInterface = __type__?.__underlying__();
                        _n = (0 : GoInt);
                    };
                };
                if (_n != ((0 : GoInt))) {
                    return (null : Error);
                };
            };
        };
        var _v:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.valueOf(_data)?.__copy__();
        var _size:GoInt = (-1 : GoInt);
        {
            final __value__ = _v.kind();
            if (__value__ == ((22u32 : stdgo.reflect.Reflect.Kind))) {
                _v = _v.elem()?.__copy__();
                _size = _dataSize(_v?.__copy__());
            } else if (__value__ == ((23u32 : stdgo.reflect.Reflect.Kind))) {
                _size = _dataSize(_v?.__copy__());
            };
        };
        if (_size < (0 : GoInt)) {
            return stdgo.errors.Errors.new_(("binary.Read: invalid type " : GoString) + (stdgo.reflect.Reflect.typeOf(_data).string() : GoString));
        };
        var _d = (Go.setRef(({ _order : _order, _buf : new Slice<GoUInt8>((_size : GoInt).toBasic(), 0).__setNumber32__() } : T_decoder)) : Ref<stdgo.encoding.binary.Binary.T_decoder>);
        {
            var __tmp__ = stdgo.io.Io.readFull(_r, _d._buf), __1:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        _d._value(_v?.__copy__());
        return (null : Error);
    }
/**
    // Write writes the binary representation of data into w.
    // Data must be a fixed-size value or a slice of fixed-size
    // values, or a pointer to such data.
    // Boolean values encode as one byte: 1 for true, and 0 for false.
    // Bytes written to w are encoded using the specified byte order
    // and read from successive fields of the data.
    // When writing structs, zero values are written for fields
    // with blank (_) field names.
**/
function write(_w:stdgo.io.Io.Writer, _order:ByteOrder, _data:AnyInterface):Error {
        {
            var _n:GoInt = _intDataSize(_data);
            if (_n != ((0 : GoInt))) {
                var _bs = new Slice<GoUInt8>((_n : GoInt).toBasic(), 0).__setNumber32__();
                {
                    final __type__ = _data;
                    if (Go.typeEquals((__type__ : Pointer<Bool>))) {
                        var _v:Pointer<Bool> = __type__ == null ? (null : Pointer<Bool>) : __type__.__underlying__() == null ? (null : Pointer<Bool>) : __type__ == null ? (null : Pointer<Bool>) : __type__.__underlying__().value;
                        if (_v.value) {
                            _bs[(0 : GoInt)] = (1 : GoUInt8);
                        } else {
                            _bs[(0 : GoInt)] = (0 : GoUInt8);
                        };
                    } else if (Go.typeEquals((__type__ : Bool))) {
                        var _v:Bool = __type__ == null ? false : __type__.__underlying__() == null ? false : __type__ == null ? false : __type__.__underlying__().value;
                        if (_v) {
                            _bs[(0 : GoInt)] = (1 : GoUInt8);
                        } else {
                            _bs[(0 : GoInt)] = (0 : GoUInt8);
                        };
                    } else if (Go.typeEquals((__type__ : Slice<Bool>))) {
                        var _v:Slice<Bool> = __type__ == null ? (null : Slice<Bool>) : __type__.__underlying__() == null ? (null : Slice<Bool>) : __type__ == null ? (null : Slice<Bool>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            if (_x) {
                                _bs[(_i : GoInt)] = (1 : GoUInt8);
                            } else {
                                _bs[(_i : GoInt)] = (0 : GoUInt8);
                            };
                        };
                    } else if (Go.typeEquals((__type__ : Pointer<GoInt8>))) {
                        var _v:Pointer<GoInt8> = __type__ == null ? (null : Pointer<GoInt8>) : __type__.__underlying__() == null ? (null : Pointer<GoInt8>) : __type__ == null ? (null : Pointer<GoInt8>) : __type__.__underlying__().value;
                        _bs[(0 : GoInt)] = (_v.value : GoByte);
                    } else if (Go.typeEquals((__type__ : GoInt8))) {
                        var _v:GoInt8 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _bs[(0 : GoInt)] = (_v : GoByte);
                    } else if (Go.typeEquals((__type__ : Slice<GoInt8>))) {
                        var _v:Slice<GoInt8> = __type__ == null ? (null : Slice<GoInt8>) : __type__.__underlying__() == null ? (null : Slice<GoInt8>) : __type__ == null ? (null : Slice<GoInt8>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            _bs[(_i : GoInt)] = (_x : GoByte);
                        };
                    } else if (Go.typeEquals((__type__ : Pointer<GoUInt8>))) {
                        var _v:Pointer<GoUInt8> = __type__ == null ? (null : Pointer<GoUInt8>) : __type__.__underlying__() == null ? (null : Pointer<GoUInt8>) : __type__ == null ? (null : Pointer<GoUInt8>) : __type__.__underlying__().value;
                        _bs[(0 : GoInt)] = _v.value;
                    } else if (Go.typeEquals((__type__ : GoUInt8))) {
                        var _v:GoUInt8 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _bs[(0 : GoInt)] = _v;
                    } else if (Go.typeEquals((__type__ : Slice<GoUInt8>))) {
                        var _v:Slice<GoUInt8> = __type__ == null ? (null : Slice<GoUInt8>) : __type__.__underlying__() == null ? (null : Slice<GoUInt8>) : __type__ == null ? (null : Slice<GoUInt8>) : __type__.__underlying__().value;
                        _bs = _v;
                    } else if (Go.typeEquals((__type__ : Pointer<GoInt16>))) {
                        var _v:Pointer<GoInt16> = __type__ == null ? (null : Pointer<GoInt16>) : __type__.__underlying__() == null ? (null : Pointer<GoInt16>) : __type__ == null ? (null : Pointer<GoInt16>) : __type__.__underlying__().value;
                        _order.putUint16(_bs, (_v.value : GoUInt16));
                    } else if (Go.typeEquals((__type__ : GoInt16))) {
                        var _v:GoInt16 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _order.putUint16(_bs, (_v : GoUInt16));
                    } else if (Go.typeEquals((__type__ : Slice<GoInt16>))) {
                        var _v:Slice<GoInt16> = __type__ == null ? (null : Slice<GoInt16>) : __type__.__underlying__() == null ? (null : Slice<GoInt16>) : __type__ == null ? (null : Slice<GoInt16>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            _order.putUint16((_bs.__slice__((2 : GoInt) * _i) : Slice<GoUInt8>), (_x : GoUInt16));
                        };
                    } else if (Go.typeEquals((__type__ : Pointer<GoUInt16>))) {
                        var _v:Pointer<GoUInt16> = __type__ == null ? (null : Pointer<GoUInt16>) : __type__.__underlying__() == null ? (null : Pointer<GoUInt16>) : __type__ == null ? (null : Pointer<GoUInt16>) : __type__.__underlying__().value;
                        _order.putUint16(_bs, _v.value);
                    } else if (Go.typeEquals((__type__ : GoUInt16))) {
                        var _v:GoUInt16 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _order.putUint16(_bs, _v);
                    } else if (Go.typeEquals((__type__ : Slice<GoUInt16>))) {
                        var _v:Slice<GoUInt16> = __type__ == null ? (null : Slice<GoUInt16>) : __type__.__underlying__() == null ? (null : Slice<GoUInt16>) : __type__ == null ? (null : Slice<GoUInt16>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            _order.putUint16((_bs.__slice__((2 : GoInt) * _i) : Slice<GoUInt8>), _x);
                        };
                    } else if (Go.typeEquals((__type__ : Pointer<GoInt32>))) {
                        var _v:Pointer<GoInt32> = __type__ == null ? (null : Pointer<GoInt32>) : __type__.__underlying__() == null ? (null : Pointer<GoInt32>) : __type__ == null ? (null : Pointer<GoInt32>) : __type__.__underlying__().value;
                        _order.putUint32(_bs, (_v.value : GoUInt32));
                    } else if (Go.typeEquals((__type__ : GoInt32))) {
                        var _v:GoInt32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _order.putUint32(_bs, (_v : GoUInt32));
                    } else if (Go.typeEquals((__type__ : Slice<GoInt32>))) {
                        var _v:Slice<GoInt32> = __type__ == null ? (null : Slice<GoInt32>) : __type__.__underlying__() == null ? (null : Slice<GoInt32>) : __type__ == null ? (null : Slice<GoInt32>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            _order.putUint32((_bs.__slice__((4 : GoInt) * _i) : Slice<GoUInt8>), (_x : GoUInt32));
                        };
                    } else if (Go.typeEquals((__type__ : Pointer<GoUInt32>))) {
                        var _v:Pointer<GoUInt32> = __type__ == null ? (null : Pointer<GoUInt32>) : __type__.__underlying__() == null ? (null : Pointer<GoUInt32>) : __type__ == null ? (null : Pointer<GoUInt32>) : __type__.__underlying__().value;
                        _order.putUint32(_bs, _v.value);
                    } else if (Go.typeEquals((__type__ : GoUInt32))) {
                        var _v:GoUInt32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _order.putUint32(_bs, _v);
                    } else if (Go.typeEquals((__type__ : Slice<GoUInt32>))) {
                        var _v:Slice<GoUInt32> = __type__ == null ? (null : Slice<GoUInt32>) : __type__.__underlying__() == null ? (null : Slice<GoUInt32>) : __type__ == null ? (null : Slice<GoUInt32>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            _order.putUint32((_bs.__slice__((4 : GoInt) * _i) : Slice<GoUInt8>), _x);
                        };
                    } else if (Go.typeEquals((__type__ : Pointer<GoInt64>))) {
                        var _v:Pointer<GoInt64> = __type__ == null ? (null : Pointer<GoInt64>) : __type__.__underlying__() == null ? (null : Pointer<GoInt64>) : __type__ == null ? (null : Pointer<GoInt64>) : __type__.__underlying__().value;
                        _order.putUint64(_bs, (_v.value : GoUInt64));
                    } else if (Go.typeEquals((__type__ : GoInt64))) {
                        var _v:GoInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _order.putUint64(_bs, (_v : GoUInt64));
                    } else if (Go.typeEquals((__type__ : Slice<GoInt64>))) {
                        var _v:Slice<GoInt64> = __type__ == null ? (null : Slice<GoInt64>) : __type__.__underlying__() == null ? (null : Slice<GoInt64>) : __type__ == null ? (null : Slice<GoInt64>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            _order.putUint64((_bs.__slice__((8 : GoInt) * _i) : Slice<GoUInt8>), (_x : GoUInt64));
                        };
                    } else if (Go.typeEquals((__type__ : Pointer<GoUInt64>))) {
                        var _v:Pointer<GoUInt64> = __type__ == null ? (null : Pointer<GoUInt64>) : __type__.__underlying__() == null ? (null : Pointer<GoUInt64>) : __type__ == null ? (null : Pointer<GoUInt64>) : __type__.__underlying__().value;
                        _order.putUint64(_bs, _v.value);
                    } else if (Go.typeEquals((__type__ : GoUInt64))) {
                        var _v:GoUInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _order.putUint64(_bs, _v);
                    } else if (Go.typeEquals((__type__ : Slice<GoUInt64>))) {
                        var _v:Slice<GoUInt64> = __type__ == null ? (null : Slice<GoUInt64>) : __type__.__underlying__() == null ? (null : Slice<GoUInt64>) : __type__ == null ? (null : Slice<GoUInt64>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            _order.putUint64((_bs.__slice__((8 : GoInt) * _i) : Slice<GoUInt8>), _x);
                        };
                    } else if (Go.typeEquals((__type__ : Pointer<GoFloat32>))) {
                        var _v:Pointer<GoFloat32> = __type__ == null ? (null : Pointer<GoFloat32>) : __type__.__underlying__() == null ? (null : Pointer<GoFloat32>) : __type__ == null ? (null : Pointer<GoFloat32>) : __type__.__underlying__().value;
                        _order.putUint32(_bs, stdgo.math.Math.float32bits(_v.value));
                    } else if (Go.typeEquals((__type__ : GoFloat32))) {
                        var _v:GoFloat32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _order.putUint32(_bs, stdgo.math.Math.float32bits(_v));
                    } else if (Go.typeEquals((__type__ : Slice<GoFloat32>))) {
                        var _v:Slice<GoFloat32> = __type__ == null ? (null : Slice<GoFloat32>) : __type__.__underlying__() == null ? (null : Slice<GoFloat32>) : __type__ == null ? (null : Slice<GoFloat32>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            _order.putUint32((_bs.__slice__((4 : GoInt) * _i) : Slice<GoUInt8>), stdgo.math.Math.float32bits(_x));
                        };
                    } else if (Go.typeEquals((__type__ : Pointer<GoFloat64>))) {
                        var _v:Pointer<GoFloat64> = __type__ == null ? (null : Pointer<GoFloat64>) : __type__.__underlying__() == null ? (null : Pointer<GoFloat64>) : __type__ == null ? (null : Pointer<GoFloat64>) : __type__.__underlying__().value;
                        _order.putUint64(_bs, stdgo.math.Math.float64bits(_v.value));
                    } else if (Go.typeEquals((__type__ : GoFloat64))) {
                        var _v:GoFloat64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _order.putUint64(_bs, stdgo.math.Math.float64bits(_v));
                    } else if (Go.typeEquals((__type__ : Slice<GoFloat64>))) {
                        var _v:Slice<GoFloat64> = __type__ == null ? (null : Slice<GoFloat64>) : __type__.__underlying__() == null ? (null : Slice<GoFloat64>) : __type__ == null ? (null : Slice<GoFloat64>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            _order.putUint64((_bs.__slice__((8 : GoInt) * _i) : Slice<GoUInt8>), stdgo.math.Math.float64bits(_x));
                        };
                    };
                };
                var __tmp__ = _w.write(_bs), __0:GoInt = __tmp__._0, _err:Error = __tmp__._1;
                return _err;
            };
        };
        var _v:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.indirect(stdgo.reflect.Reflect.valueOf(_data)?.__copy__())?.__copy__();
        var _size:GoInt = _dataSize(_v?.__copy__());
        if (_size < (0 : GoInt)) {
            return stdgo.errors.Errors.new_(("binary.Write: invalid type " : GoString) + (stdgo.reflect.Reflect.typeOf(_data).string() : GoString));
        };
        var _buf = new Slice<GoUInt8>((_size : GoInt).toBasic(), 0).__setNumber32__();
        var _e = (Go.setRef(({ _order : _order, _buf : _buf } : T_encoder)) : Ref<stdgo.encoding.binary.Binary.T_encoder>);
        _e._value(_v?.__copy__());
        var __tmp__ = _w.write(_buf), __1:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        return _err;
    }
/**
    // Size returns how many bytes Write would generate to encode the value v, which
    // must be a fixed-size value or a slice of fixed-size values, or a pointer to such data.
    // If v is neither of these, Size returns -1.
**/
function size(_v:AnyInterface):GoInt {
        return _dataSize(stdgo.reflect.Reflect.indirect(stdgo.reflect.Reflect.valueOf(_v)?.__copy__())?.__copy__());
    }
/**
    // dataSize returns the number of bytes the actual data represented by v occupies in memory.
    // For compound structures, it sums the sizes of the elements. Thus, for instance, for a slice
    // it returns the length of the slice times the element size and does not count the memory
    // occupied by the header. If the type of v is not acceptable, dataSize returns -1.
**/
private function _dataSize(_v:stdgo.reflect.Reflect.Value):GoInt {
        {
            final __value__ = _v.kind();
            if (__value__ == ((23u32 : stdgo.reflect.Reflect.Kind))) {
                {
                    var _s:GoInt = _sizeof(_v.type().elem());
                    if (_s >= (0 : GoInt)) {
                        return _s * _v.len();
                    };
                };
                return (-1 : GoInt);
            } else if (__value__ == ((25u32 : stdgo.reflect.Reflect.Kind))) {
                var _t:stdgo.reflect.Reflect.Type = _v.type();
                {
                    var __tmp__ = _structSize.load(Go.toInterface(_t)), _size:AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        return (Go.typeAssert((_size : GoInt)) : GoInt);
                    };
                };
                var _size:GoInt = _sizeof(_t);
                _structSize.store(Go.toInterface(_t), Go.toInterface(_size));
                return _size;
            } else {
                return _sizeof(_v.type());
            };
        };
    }
/**
    // sizeof returns the size >= 0 of variables for the given type or -1 if the type is not acceptable.
**/
private function _sizeof(_t:stdgo.reflect.Reflect.Type):GoInt {
        {
            final __value__ = _t.kind();
            if (__value__ == ((17u32 : stdgo.reflect.Reflect.Kind))) {
                {
                    var _s:GoInt = _sizeof(_t.elem());
                    if (_s >= (0 : GoInt)) {
                        return _s * _t.len();
                    };
                };
            } else if (__value__ == ((25u32 : stdgo.reflect.Reflect.Kind))) {
                var _sum:GoInt = (0 : GoInt);
                {
                    var __0:GoInt = (0 : GoInt), __1:GoInt = _t.numField(), _n:GoInt = __1, _i:GoInt = __0;
                    Go.cfor(_i < _n, _i++, {
                        var _s:GoInt = _sizeof(_t.field(_i).type);
                        if (_s < (0 : GoInt)) {
                            return (-1 : GoInt);
                        };
                        _sum = _sum + (_s);
                    });
                };
                return _sum;
            } else if (__value__ == ((1u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((8u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((9u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((10u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((11u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((3u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((4u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((5u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((6u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((13u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((14u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((15u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((16u32 : stdgo.reflect.Reflect.Kind))) {
                return (_t.size() : GoInt);
            };
        };
        return (-1 : GoInt);
    }
/**
    // intDataSize returns the size of the data required to represent the data when encoded.
    // It returns zero if the type cannot be implemented by the fast path in Read or Write.
**/
private function _intDataSize(_data:AnyInterface):GoInt {
        {
            final __type__ = _data;
            if (Go.typeEquals((__type__ : Bool)) || Go.typeEquals((__type__ : GoInt8)) || Go.typeEquals((__type__ : GoUInt8)) || Go.typeEquals((__type__ : Pointer<Bool>)) || Go.typeEquals((__type__ : Pointer<GoInt8>)) || Go.typeEquals((__type__ : Pointer<GoUInt8>))) {
                var _data:AnyInterface = __type__?.__underlying__();
                return (1 : GoInt);
            } else if (Go.typeEquals((__type__ : Slice<Bool>))) {
                var _data:Slice<Bool> = __type__ == null ? (null : Slice<Bool>) : __type__.__underlying__() == null ? (null : Slice<Bool>) : __type__ == null ? (null : Slice<Bool>) : __type__.__underlying__().value;
                return (_data.length);
            } else if (Go.typeEquals((__type__ : Slice<GoInt8>))) {
                var _data:Slice<GoInt8> = __type__ == null ? (null : Slice<GoInt8>) : __type__.__underlying__() == null ? (null : Slice<GoInt8>) : __type__ == null ? (null : Slice<GoInt8>) : __type__.__underlying__().value;
                return (_data.length);
            } else if (Go.typeEquals((__type__ : Slice<GoUInt8>))) {
                var _data:Slice<GoUInt8> = __type__ == null ? (null : Slice<GoUInt8>) : __type__.__underlying__() == null ? (null : Slice<GoUInt8>) : __type__ == null ? (null : Slice<GoUInt8>) : __type__.__underlying__().value;
                return (_data.length);
            } else if (Go.typeEquals((__type__ : GoInt16)) || Go.typeEquals((__type__ : GoUInt16)) || Go.typeEquals((__type__ : Pointer<GoInt16>)) || Go.typeEquals((__type__ : Pointer<GoUInt16>))) {
                var _data:AnyInterface = __type__?.__underlying__();
                return (2 : GoInt);
            } else if (Go.typeEquals((__type__ : Slice<GoInt16>))) {
                var _data:Slice<GoInt16> = __type__ == null ? (null : Slice<GoInt16>) : __type__.__underlying__() == null ? (null : Slice<GoInt16>) : __type__ == null ? (null : Slice<GoInt16>) : __type__.__underlying__().value;
                return (2 : GoInt) * (_data.length);
            } else if (Go.typeEquals((__type__ : Slice<GoUInt16>))) {
                var _data:Slice<GoUInt16> = __type__ == null ? (null : Slice<GoUInt16>) : __type__.__underlying__() == null ? (null : Slice<GoUInt16>) : __type__ == null ? (null : Slice<GoUInt16>) : __type__.__underlying__().value;
                return (2 : GoInt) * (_data.length);
            } else if (Go.typeEquals((__type__ : GoInt32)) || Go.typeEquals((__type__ : GoUInt32)) || Go.typeEquals((__type__ : Pointer<GoInt32>)) || Go.typeEquals((__type__ : Pointer<GoUInt32>))) {
                var _data:AnyInterface = __type__?.__underlying__();
                return (4 : GoInt);
            } else if (Go.typeEquals((__type__ : Slice<GoInt32>))) {
                var _data:Slice<GoInt32> = __type__ == null ? (null : Slice<GoInt32>) : __type__.__underlying__() == null ? (null : Slice<GoInt32>) : __type__ == null ? (null : Slice<GoInt32>) : __type__.__underlying__().value;
                return (4 : GoInt) * (_data.length);
            } else if (Go.typeEquals((__type__ : Slice<GoUInt32>))) {
                var _data:Slice<GoUInt32> = __type__ == null ? (null : Slice<GoUInt32>) : __type__.__underlying__() == null ? (null : Slice<GoUInt32>) : __type__ == null ? (null : Slice<GoUInt32>) : __type__.__underlying__().value;
                return (4 : GoInt) * (_data.length);
            } else if (Go.typeEquals((__type__ : GoInt64)) || Go.typeEquals((__type__ : GoUInt64)) || Go.typeEquals((__type__ : Pointer<GoInt64>)) || Go.typeEquals((__type__ : Pointer<GoUInt64>))) {
                var _data:AnyInterface = __type__?.__underlying__();
                return (8 : GoInt);
            } else if (Go.typeEquals((__type__ : Slice<GoInt64>))) {
                var _data:Slice<GoInt64> = __type__ == null ? (null : Slice<GoInt64>) : __type__.__underlying__() == null ? (null : Slice<GoInt64>) : __type__ == null ? (null : Slice<GoInt64>) : __type__.__underlying__().value;
                return (8 : GoInt) * (_data.length);
            } else if (Go.typeEquals((__type__ : Slice<GoUInt64>))) {
                var _data:Slice<GoUInt64> = __type__ == null ? (null : Slice<GoUInt64>) : __type__.__underlying__() == null ? (null : Slice<GoUInt64>) : __type__ == null ? (null : Slice<GoUInt64>) : __type__.__underlying__().value;
                return (8 : GoInt) * (_data.length);
            } else if (Go.typeEquals((__type__ : GoFloat32)) || Go.typeEquals((__type__ : Pointer<GoFloat32>))) {
                var _data:AnyInterface = __type__?.__underlying__();
                return (4 : GoInt);
            } else if (Go.typeEquals((__type__ : GoFloat64)) || Go.typeEquals((__type__ : Pointer<GoFloat64>))) {
                var _data:AnyInterface = __type__?.__underlying__();
                return (8 : GoInt);
            } else if (Go.typeEquals((__type__ : Slice<GoFloat32>))) {
                var _data:Slice<GoFloat32> = __type__ == null ? (null : Slice<GoFloat32>) : __type__.__underlying__() == null ? (null : Slice<GoFloat32>) : __type__ == null ? (null : Slice<GoFloat32>) : __type__.__underlying__().value;
                return (4 : GoInt) * (_data.length);
            } else if (Go.typeEquals((__type__ : Slice<GoFloat64>))) {
                var _data:Slice<GoFloat64> = __type__ == null ? (null : Slice<GoFloat64>) : __type__.__underlying__() == null ? (null : Slice<GoFloat64>) : __type__ == null ? (null : Slice<GoFloat64>) : __type__.__underlying__().value;
                return (8 : GoInt) * (_data.length);
            };
        };
        return (0 : GoInt);
    }
private function _checkResult(_t:Ref<stdgo.testing.Testing.T>, _dir:GoString, _order:ByteOrder, _err:Error, _have:AnyInterface, _want:AnyInterface):Void {
        if (_err != null) {
            _t.errorf(("%v %v: %v" : GoString), Go.toInterface(_dir), Go.toInterface(_order), Go.toInterface(_err));
            return;
        };
        if (!stdgo.reflect.Reflect.deepEqual(_have, _want)) {
            _t.errorf(("%v %v:\n\thave %+v\n\twant %+v" : GoString), Go.toInterface(_dir), Go.toInterface(_order), _have, _want);
        };
    }
private function _testRead(_t:Ref<stdgo.testing.Testing.T>, _order:ByteOrder, _b:Slice<GoByte>, _s1:AnyInterface):Void {
        var _s2:Struct = ({} : stdgo.encoding.binary.Binary.Struct);
        var _err:Error = read(Go.asInterface(stdgo.bytes.Bytes.newReader(_b)), _order, Go.toInterface((Go.setRef(_s2) : Ref<stdgo.encoding.binary.Binary.Struct>)));
        _checkResult(_t, ("Read" : GoString), _order, _err, Go.toInterface(_s2), _s1);
    }
private function _testWrite(_t:Ref<stdgo.testing.Testing.T>, _order:ByteOrder, _b:Slice<GoByte>, _s1:AnyInterface):Void {
        var _buf = (Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : Ref<stdgo.bytes.Bytes.Buffer>);
        var _err:Error = write(Go.asInterface(_buf), _order, _s1);
        _checkResult(_t, ("Write" : GoString), _order, _err, Go.toInterface(_buf.bytes()), Go.toInterface(_b));
    }
function testLittleEndianRead(_t:Ref<stdgo.testing.Testing.T>):Void {
        _testRead(_t, Go.asInterface(littleEndian), _little, Go.toInterface(_s));
    }
function testLittleEndianWrite(_t:Ref<stdgo.testing.Testing.T>):Void {
        _testWrite(_t, Go.asInterface(littleEndian), _little, Go.toInterface(_s));
    }
function testLittleEndianPtrWrite(_t:Ref<stdgo.testing.Testing.T>):Void {
        _testWrite(_t, Go.asInterface(littleEndian), _little, Go.toInterface((Go.setRef(_s) : Ref<stdgo.encoding.binary.Binary.Struct>)));
    }
function testBigEndianRead(_t:Ref<stdgo.testing.Testing.T>):Void {
        _testRead(_t, Go.asInterface(bigEndian), _big, Go.toInterface(_s));
    }
function testBigEndianWrite(_t:Ref<stdgo.testing.Testing.T>):Void {
        _testWrite(_t, Go.asInterface(bigEndian), _big, Go.toInterface(_s));
    }
function testBigEndianPtrWrite(_t:Ref<stdgo.testing.Testing.T>):Void {
        _testWrite(_t, Go.asInterface(bigEndian), _big, Go.toInterface((Go.setRef(_s) : Ref<stdgo.encoding.binary.Binary.Struct>)));
    }
function testReadSlice(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _slice = new Slice<GoInt32>((2 : GoInt).toBasic(), 0).__setNumber32__();
        var _err:Error = read(Go.asInterface(stdgo.bytes.Bytes.newReader(_src)), Go.asInterface(bigEndian), Go.toInterface(_slice));
        _checkResult(_t, ("ReadSlice" : GoString), Go.asInterface(bigEndian), _err, Go.toInterface(_slice), Go.toInterface(_res));
    }
function testWriteSlice(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _buf = (Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : Ref<stdgo.bytes.Bytes.Buffer>);
        var _err:Error = write(Go.asInterface(_buf), Go.asInterface(bigEndian), Go.toInterface(_res));
        _checkResult(_t, ("WriteSlice" : GoString), Go.asInterface(bigEndian), _err, Go.toInterface(_buf.bytes()), Go.toInterface(_src));
    }
function testReadBool(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _res:Bool = false;
        var _err:Error = (null : Error);
        _err = read(Go.asInterface(stdgo.bytes.Bytes.newReader((new Slice<GoUInt8>(1, 1, (0 : GoUInt8)) : Slice<GoUInt8>))), Go.asInterface(bigEndian), Go.toInterface(Go.pointer(_res)));
        _checkResult(_t, ("ReadBool" : GoString), Go.asInterface(bigEndian), _err, Go.toInterface(_res), Go.toInterface(false));
        _res = false;
        _err = read(Go.asInterface(stdgo.bytes.Bytes.newReader((new Slice<GoUInt8>(1, 1, (1 : GoUInt8)) : Slice<GoUInt8>))), Go.asInterface(bigEndian), Go.toInterface(Go.pointer(_res)));
        _checkResult(_t, ("ReadBool" : GoString), Go.asInterface(bigEndian), _err, Go.toInterface(_res), Go.toInterface(true));
        _res = false;
        _err = read(Go.asInterface(stdgo.bytes.Bytes.newReader((new Slice<GoUInt8>(1, 1, (2 : GoUInt8)) : Slice<GoUInt8>))), Go.asInterface(bigEndian), Go.toInterface(Go.pointer(_res)));
        _checkResult(_t, ("ReadBool" : GoString), Go.asInterface(bigEndian), _err, Go.toInterface(_res), Go.toInterface(true));
    }
function testReadBoolSlice(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _slice = new Slice<Bool>((4 : GoInt).toBasic(), 0);
        var _err:Error = read(Go.asInterface(stdgo.bytes.Bytes.newReader((new Slice<GoUInt8>(4, 4, (0 : GoUInt8), (1 : GoUInt8), (2 : GoUInt8), (255 : GoUInt8)) : Slice<GoUInt8>))), Go.asInterface(bigEndian), Go.toInterface(_slice));
        _checkResult(_t, ("ReadBoolSlice" : GoString), Go.asInterface(bigEndian), _err, Go.toInterface(_slice), Go.toInterface((new Slice<Bool>(4, 4, false, true, true, true) : Slice<Bool>)));
    }
function testSliceRoundTrip(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _buf = (Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : Ref<stdgo.bytes.Bytes.Buffer>);
        for (__0 => _array in _intArrays) {
            var _src:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.valueOf(_array).elem()?.__copy__();
            var _unsigned:Bool = false;
            {
                final __value__ = _src.index((0 : GoInt)).kind();
                if (__value__ == ((8u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((9u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((10u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((11u32 : stdgo.reflect.Reflect.Kind))) {
                    _unsigned = true;
                };
            };
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _src.len(), _i++, {
                    if (_unsigned) {
                        _src.index(_i).setUint((_i * (124076833 : GoInt) : GoUInt64));
                    } else {
                        _src.index(_i).setInt((_i * (124076833 : GoInt) : GoInt64));
                    };
                });
            };
            _buf.reset();
            var _srcSlice:stdgo.reflect.Reflect.Value = _src.slice((0 : GoInt), _src.len())?.__copy__();
            var _err:Error = write(Go.asInterface(_buf), Go.asInterface(bigEndian), _srcSlice.interface_());
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            var _dst:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.new_(_src.type()).elem()?.__copy__();
            var _dstSlice:stdgo.reflect.Reflect.Value = _dst.slice((0 : GoInt), _dst.len())?.__copy__();
            _err = read(Go.asInterface(_buf), Go.asInterface(bigEndian), _dstSlice.interface_());
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
            if (!stdgo.reflect.Reflect.deepEqual(_src.interface_(), _dst.interface_())) {
                _t.fatal(Go.toInterface(Go.asInterface(_src)));
            };
        };
    }
function testWriteT(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _buf = (Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : Ref<stdgo.bytes.Bytes.Buffer>);
        var _ts:stdgo.encoding.binary.Binary.T = (new T() : T);
        {
            var _err:Error = write(Go.asInterface(_buf), Go.asInterface(bigEndian), Go.toInterface(_ts));
            if (_err == null) {
                _t.errorf(("WriteT: have err == nil, want non-nil" : GoString));
            };
        };
        var _tv:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.indirect(stdgo.reflect.Reflect.valueOf(Go.toInterface(_ts))?.__copy__())?.__copy__();
        {
            var __0:GoInt = (0 : GoInt), __1:GoInt = _tv.numField(), _n:GoInt = __1, _i:GoInt = __0;
            Go.cfor(_i < _n, _i++, {
                var _typ:GoString = (_tv.field(_i).type().string() : GoString);
                if (_typ == (("[4]int" : GoString))) {
                    _typ = ("int" : GoString);
                };
                {
                    var _err:Error = write(Go.asInterface(_buf), Go.asInterface(bigEndian), _tv.field(_i).interface_());
                    if (_err == null) {
                        _t.errorf(("WriteT.%v: have err == nil, want non-nil" : GoString), Go.toInterface(_tv.field(_i).type()));
                    } else if (!stdgo.strings.Strings.contains(_err.error(), _typ)) {
                        _t.errorf(("WriteT: have err == %q, want it to mention %s" : GoString), Go.toInterface(_err), Go.toInterface(_typ));
                    };
                };
            });
        };
    }
function testBlankFields(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _buf = (Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : Ref<stdgo.bytes.Bytes.Buffer>);
        var _b1:stdgo.encoding.binary.Binary.BlankFields = ({ a : (1234567890u32 : GoUInt32), b : (2.718281828 : GoFloat64), c : (42 : GoUInt8) } : BlankFields);
        {
            var _err:Error = write(Go.asInterface(_buf), Go.asInterface(littleEndian), Go.toInterface((Go.setRef(_b1) : Ref<stdgo.encoding.binary.Binary.BlankFields>)));
            if (_err != null) {
                _t.error(Go.toInterface(_err));
            };
        };
        var _p:BlankFieldsProbe = ({} : stdgo.encoding.binary.Binary.BlankFieldsProbe);
        {
            var _err:Error = read(Go.asInterface(_buf), Go.asInterface(littleEndian), Go.toInterface((Go.setRef(_p) : Ref<stdgo.encoding.binary.Binary.BlankFieldsProbe>)));
            if (_err != null) {
                _t.error(Go.toInterface(_err));
            };
        };
        if ((((_p.p0 != (0 : GoInt32)) || (_p.p1[(0 : GoInt)] != (0 : GoInt16))) || (_p.p2[(0 : GoInt)] != (0 : GoUInt8))) || (_p.p3.f[(0 : GoInt)] != (0 : GoFloat64))) {
            _t.errorf(("non-zero values for originally blank fields: %#v" : GoString), Go.toInterface(_p));
        };
        {
            var _err:Error = write(Go.asInterface(_buf), Go.asInterface(littleEndian), Go.toInterface((Go.setRef(_p) : Ref<stdgo.encoding.binary.Binary.BlankFieldsProbe>)));
            if (_err != null) {
                _t.error(Go.toInterface(_err));
            };
        };
        var _b2:BlankFields = ({} : stdgo.encoding.binary.Binary.BlankFields);
        {
            var _err:Error = read(Go.asInterface(_buf), Go.asInterface(littleEndian), Go.toInterface((Go.setRef(_b2) : Ref<stdgo.encoding.binary.Binary.BlankFields>)));
            if (_err != null) {
                _t.error(Go.toInterface(_err));
            };
        };
        if (((_b1.a != _b2.a) || (_b1.b != _b2.b)) || (_b1.c != _b2.c)) {
            _t.errorf(("%#v != %#v" : GoString), Go.toInterface(_b1), Go.toInterface(_b2));
        };
    }
/**
    
    
    
**/
@:structInit class T_testSizeStructCache_0___localname___foo {
    public var a : GoUInt32 = 0;
    public function new(?a:GoUInt32) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_testSizeStructCache_0___localname___foo(a);
    }
}
/**
    
    
    
**/
@:structInit class T_testSizeStructCache_1___localname___bar {
    public var a : stdgo.encoding.binary.Binary.Struct = ({} : stdgo.encoding.binary.Binary.Struct);
    public var b : stdgo.encoding.binary.Binary.T_testSizeStructCache_0___localname___foo = ({} : stdgo.encoding.binary.Binary.T_testSizeStructCache_0___localname___foo);
    public var c : stdgo.encoding.binary.Binary.Struct = ({} : stdgo.encoding.binary.Binary.Struct);
    public function new(?a:stdgo.encoding.binary.Binary.Struct, ?b:stdgo.encoding.binary.Binary.T_testSizeStructCache_0___localname___foo, ?c:stdgo.encoding.binary.Binary.Struct) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (c != null) this.c = c;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_testSizeStructCache_1___localname___bar(a, b, c);
    }
}
function testSizeStructCache(_t:Ref<stdgo.testing.Testing.T>):Void {
        _structSize = (new stdgo.sync.Sync.Map_() : stdgo.sync.Sync.Map_);
        var _count:() -> GoInt = function():GoInt {
            var _i:GoInt = (0 : GoInt);
            _structSize.range(function(__0:AnyInterface, __1:AnyInterface):Bool {
                _i++;
                return true;
            });
            return _i;
        };
        var _total:GoInt = (0 : GoInt);
        var _added:() -> GoInt = function():GoInt {
            var _delta:GoInt = _count() - _total;
            _total = _total + (_delta);
            return _delta;
        };
        {};
        {};
        var _testcases = (new Slice<T__struct_2>(5, 5, ({ _val : Go.toInterface((Go.setRef(({} : stdgo.encoding.binary.Binary.T_testSizeStructCache_0___localname___foo)) : Ref<stdgo.encoding.binary.Binary.T_testSizeStructCache_0___localname___foo>)), _want : (1 : GoInt) } : T__struct_2), ({ _val : Go.toInterface((Go.setRef(({} : stdgo.encoding.binary.Binary.T_testSizeStructCache_1___localname___bar)) : Ref<stdgo.encoding.binary.Binary.T_testSizeStructCache_1___localname___bar>)), _want : (1 : GoInt) } : T__struct_2), ({ _val : Go.toInterface((Go.setRef(({} : stdgo.encoding.binary.Binary.T_testSizeStructCache_1___localname___bar)) : Ref<stdgo.encoding.binary.Binary.T_testSizeStructCache_1___localname___bar>)), _want : (0 : GoInt) } : T__struct_2), ({ _val : Go.toInterface(Go.asInterface((Go.setRef(({ a : ({} : stdgo.encoding.binary.Binary.Struct) } : T__struct_3)) : Ref<T__struct_3>))), _want : (1 : GoInt) } : T__struct_2), ({ _val : Go.toInterface(Go.asInterface((Go.setRef(({ a : ({} : stdgo.encoding.binary.Binary.Struct) } : T__struct_3)) : Ref<T__struct_3>))), _want : (0 : GoInt) } : T__struct_2)) : Slice<T__struct_2>);
        for (__0 => _tc in _testcases) {
            if (size(_tc._val) == ((-1 : GoInt))) {
                _t.fatalf(("Can\'t get the size of %T" : GoString), _tc._val);
            };
            {
                var _n:GoInt = _added();
                if (_n != (_tc._want)) {
                    _t.errorf(("Sizing %T added %d entries to the cache, want %d" : GoString), _tc._val, Go.toInterface(_n), Go.toInterface(_tc._want));
                };
            };
        };
    }
function testUnexportedRead(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
            var _u1:stdgo.encoding.binary.Binary.Unexported = ({ _a : (1 : GoInt32) } : Unexported);
            {
                var _err:Error = write(Go.asInterface((Go.setRef(_buf) : Ref<stdgo.bytes.Bytes.Buffer>)), Go.asInterface(littleEndian), Go.toInterface((Go.setRef(_u1) : Ref<stdgo.encoding.binary.Binary.Unexported>)));
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
            };
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    if (({
                        final r = Go.recover_exception;
                        Go.recover_exception = null;
                        r;
                    }) == null) {
                        _t.fatal(Go.toInterface(("did not panic" : GoString)));
                    };
                };
                a();
            });
            var _u2:Unexported = ({} : stdgo.encoding.binary.Binary.Unexported);
            read(Go.asInterface((Go.setRef(_buf) : Ref<stdgo.bytes.Bytes.Buffer>)), Go.asInterface(littleEndian), Go.toInterface((Go.setRef(_u2) : Ref<stdgo.encoding.binary.Binary.Unexported>)));
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
function testReadErrorMsg(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        var _read:AnyInterface -> Void = function(_data:AnyInterface):Void {
            var _err:Error = read(Go.asInterface((Go.setRef(_buf) : Ref<stdgo.bytes.Bytes.Buffer>)), Go.asInterface(littleEndian), _data);
            var _want:GoString = ("binary.Read: invalid type " : GoString) + (stdgo.reflect.Reflect.typeOf(_data).string() : GoString);
            if (_err == null) {
                _t.errorf(("%T: got no error; want %q" : GoString), _data, Go.toInterface(_want));
                return;
            };
            {
                var _got:GoString = _err.error();
                if (_got != (_want)) {
                    _t.errorf(("%T: got %q; want %q" : GoString), _data, Go.toInterface(_got), Go.toInterface(_want));
                };
            };
        };
        _read(Go.toInterface((0 : GoInt)));
        var _s = (Go.setRef(({} : T_littleEndian)) : Ref<T_littleEndian>);
        _read(Go.toInterface((Go.setRef(_s) : Ref<Ref<T_littleEndian>>)));
        var _p = (Go.setRef(_s) : Ref<Ref<T_littleEndian>>);
        _read(Go.toInterface((Go.setRef(_p) : Ref<Ref<Ref<T_littleEndian>>>)));
    }
function testReadTruncated(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _b1:Slice<GoInt32> = new Slice<GoInt32>((4 : GoInt).toBasic(), 0).__setNumber32__();
        var _b2:T__struct_5 = ({ a : (0 : GoUInt8), b : (0 : GoUInt8), c : (0 : GoUInt8), d : (0 : GoUInt8), e : (0 : GoInt32), f : (0 : GoFloat64) } : T__struct_5);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i <= (("0123456789abcdef" : GoString).length), _i++, {
                var _errWant:Error = (null : Error);
                {
                    final __value__ = _i;
                    if (__value__ == ((0 : GoInt))) {
                        _errWant = stdgo.io.Io.eof;
                    } else if (__value__ == ((("0123456789abcdef" : GoString).length))) {
                        _errWant = (null : Error);
                    } else {
                        _errWant = stdgo.io.Io.errUnexpectedEOF;
                    };
                };
                {
                    var _err:Error = read(Go.asInterface(stdgo.strings.Strings.newReader((("0123456789abcdef" : GoString).__slice__(0, _i) : GoString))), Go.asInterface(littleEndian), Go.toInterface((Go.setRef(_b1) : Ref<Slice<GoInt32>>)));
                    if (Go.toInterface(_err) != (Go.toInterface(_errWant))) {
                        _t.errorf(("Read(%d) with slice: got %v, want %v" : GoString), Go.toInterface(_i), Go.toInterface(_err), Go.toInterface(_errWant));
                    };
                };
                {
                    var _err:Error = read(Go.asInterface(stdgo.strings.Strings.newReader((("0123456789abcdef" : GoString).__slice__(0, _i) : GoString))), Go.asInterface(littleEndian), Go.toInterface(Go.asInterface((Go.setRef(_b2) : Ref<T__struct_5>))));
                    if (Go.toInterface(_err) != (Go.toInterface(_errWant))) {
                        _t.errorf(("Read(%d) with struct: got %v, want %v" : GoString), Go.toInterface(_i), Go.toInterface(_err), Go.toInterface(_errWant));
                    };
                };
            });
        };
    }
private function _testUint64SmallSliceLengthPanics():Bool {
        var __deferstack__:Array<Void -> Void> = [];
        var _panicked:Bool = false;
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    _panicked = ({
                        final r = Go.recover_exception;
                        Go.recover_exception = null;
                        r;
                    }) != null;
                };
                a();
            });
            var _b = (new GoArray<GoUInt8>((1 : GoUInt8), (2 : GoUInt8), (3 : GoUInt8), (4 : GoUInt8), (5 : GoUInt8), (6 : GoUInt8), (7 : GoUInt8), (8 : GoUInt8)) : GoArray<GoUInt8>);
            littleEndian.uint64((_b.__slice__(0, (4 : GoInt)) : Slice<GoUInt8>));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return false;
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return _panicked;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return _panicked;
        };
    }
private function _testPutUint64SmallSliceLengthPanics():Bool {
        var __deferstack__:Array<Void -> Void> = [];
        var _panicked:Bool = false;
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    _panicked = ({
                        final r = Go.recover_exception;
                        Go.recover_exception = null;
                        r;
                    }) != null;
                };
                a();
            });
            var _b = (new GoArray<GoUInt8>(...([].concat([for (i in 0 ... 8) (0 : GoUInt8)]))) : GoArray<GoUInt8>);
            littleEndian.putUint64((_b.__slice__(0, (4 : GoInt)) : Slice<GoUInt8>), (72623859790382856i64 : GoUInt64));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return false;
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return _panicked;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return _panicked;
        };
    }
/**
    
    
    
**/
typedef T_testByteOrder_0___localname___byteOrder = StructType & {
    > ByteOrder,
    > AppendByteOrder,
};
function testByteOrder(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _buf = new Slice<GoUInt8>((8 : GoInt).toBasic(), 0).__setNumber32__();
        for (__0 => _order in (new Slice<stdgo.encoding.binary.Binary.T_testByteOrder_0___localname___byteOrder>(2, 2, Go.asInterface(littleEndian), Go.asInterface(bigEndian)) : Slice<stdgo.encoding.binary.Binary.T_testByteOrder_0___localname___byteOrder>)) {
            {};
            for (__1 => _value in (new Slice<GoUInt64>(7, 7, (0i64 : GoUInt64), (81985529216486895i64 : GoUInt64), (-81985529216486896i64 : GoUInt64), (-1i64 : GoUInt64), (-6148914691236517206i64 : GoUInt64), stdgo.math.Math.float64bits((3.141592653589793 : GoFloat64)), stdgo.math.Math.float64bits((2.718281828459045 : GoFloat64))) : Slice<GoUInt64>)) {
                var _want16:GoUInt16 = (_value : GoUInt16);
                _order.putUint16((_buf.__slice__(0, (2 : GoInt)) : Slice<GoUInt8>), _want16);
                {
                    var _got:GoUInt16 = _order.uint16((_buf.__slice__(0, (2 : GoInt)) : Slice<GoUInt8>));
                    if (_got != (_want16)) {
                        _t.errorf(("PutUint16: Uint16 = %v, want %v" : GoString), Go.toInterface(_got), Go.toInterface(_want16));
                    };
                };
                _buf = _order.appendUint16((_buf.__slice__(0, (3 : GoInt)) : Slice<GoUInt8>), _want16);
                {
                    var _got:GoUInt16 = _order.uint16((_buf.__slice__((3 : GoInt)) : Slice<GoUInt8>));
                    if (_got != (_want16)) {
                        _t.errorf(("AppendUint16: Uint16 = %v, want %v" : GoString), Go.toInterface(_got), Go.toInterface(_want16));
                    };
                };
                if ((_buf.length) != ((5 : GoInt))) {
                    _t.errorf(("AppendUint16: len(buf) = %d, want %d" : GoString), Go.toInterface((_buf.length)), Go.toInterface((5 : GoInt)));
                };
                var _want32:GoUInt32 = (_value : GoUInt32);
                _order.putUint32((_buf.__slice__(0, (4 : GoInt)) : Slice<GoUInt8>), _want32);
                {
                    var _got:GoUInt32 = _order.uint32((_buf.__slice__(0, (4 : GoInt)) : Slice<GoUInt8>));
                    if (_got != (_want32)) {
                        _t.errorf(("PutUint32: Uint32 = %v, want %v" : GoString), Go.toInterface(_got), Go.toInterface(_want32));
                    };
                };
                _buf = _order.appendUint32((_buf.__slice__(0, (3 : GoInt)) : Slice<GoUInt8>), _want32);
                {
                    var _got:GoUInt32 = _order.uint32((_buf.__slice__((3 : GoInt)) : Slice<GoUInt8>));
                    if (_got != (_want32)) {
                        _t.errorf(("AppendUint32: Uint32 = %v, want %v" : GoString), Go.toInterface(_got), Go.toInterface(_want32));
                    };
                };
                if ((_buf.length) != ((7 : GoInt))) {
                    _t.errorf(("AppendUint32: len(buf) = %d, want %d" : GoString), Go.toInterface((_buf.length)), Go.toInterface((7 : GoInt)));
                };
                var _want64:GoUInt64 = (_value : GoUInt64);
                _order.putUint64((_buf.__slice__(0, (8 : GoInt)) : Slice<GoUInt8>), _want64);
                {
                    var _got:GoUInt64 = _order.uint64((_buf.__slice__(0, (8 : GoInt)) : Slice<GoUInt8>));
                    if (_got != (_want64)) {
                        _t.errorf(("PutUint64: Uint64 = %v, want %v" : GoString), Go.toInterface(_got), Go.toInterface(_want64));
                    };
                };
                _buf = _order.appendUint64((_buf.__slice__(0, (3 : GoInt)) : Slice<GoUInt8>), _want64);
                {
                    var _got:GoUInt64 = _order.uint64((_buf.__slice__((3 : GoInt)) : Slice<GoUInt8>));
                    if (_got != (_want64)) {
                        _t.errorf(("AppendUint64: Uint64 = %v, want %v" : GoString), Go.toInterface(_got), Go.toInterface(_want64));
                    };
                };
                if ((_buf.length) != ((11 : GoInt))) {
                    _t.errorf(("AppendUint64: len(buf) = %d, want %d" : GoString), Go.toInterface((_buf.length)), Go.toInterface((11 : GoInt)));
                };
            };
        };
    }
function testEarlyBoundsChecks(_t:Ref<stdgo.testing.Testing.T>):Void {
        if (_testUint64SmallSliceLengthPanics() != (true)) {
            _t.errorf(("binary.LittleEndian.Uint64 expected to panic for small slices, but didn\'t" : GoString));
        };
        if (_testPutUint64SmallSliceLengthPanics() != (true)) {
            _t.errorf(("binary.LittleEndian.PutUint64 expected to panic for small slices, but didn\'t" : GoString));
        };
    }
function testReadInvalidDestination(_t:Ref<stdgo.testing.Testing.T>):Void {
        _testReadInvalidDestination(_t, Go.asInterface(bigEndian));
        _testReadInvalidDestination(_t, Go.asInterface(littleEndian));
    }
private function _testReadInvalidDestination(_t:Ref<stdgo.testing.Testing.T>, _order:ByteOrder):Void {
        var _destinations = (new Slice<AnyInterface>(
9,
9,
Go.toInterface((0 : GoInt8)),
Go.toInterface((0 : GoInt16)),
Go.toInterface((0 : GoInt32)),
Go.toInterface((0i64 : GoInt64)),
Go.toInterface((0 : GoUInt8)),
Go.toInterface((0 : GoUInt16)),
Go.toInterface((0u32 : GoUInt32)),
Go.toInterface((0i64 : GoUInt64)),
Go.toInterface((false : Bool))) : Slice<AnyInterface>);
        for (__0 => _dst in _destinations) {
            var _err:Error = read(Go.asInterface(stdgo.bytes.Bytes.newReader((new Slice<GoUInt8>(8, 8, (1 : GoUInt8), (2 : GoUInt8), (3 : GoUInt8), (4 : GoUInt8), (5 : GoUInt8), (6 : GoUInt8), (7 : GoUInt8), (8 : GoUInt8)) : Slice<GoUInt8>))), _order, _dst);
            var _want:GoString = stdgo.fmt.Fmt.sprintf(("binary.Read: invalid type %T" : GoString), _dst);
            if ((_err == null) || (_err.error() != _want)) {
                _t.fatalf(("for type %T: got %q; want %q" : GoString), _dst, Go.toInterface(_err), Go.toInterface(_want));
            };
        };
    }
function benchmarkReadSlice1000Int32s(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _bsr = (Go.setRef((new T_byteSliceReader() : T_byteSliceReader)) : Ref<stdgo.encoding.binary.Binary.T_byteSliceReader>);
        var _slice = new Slice<GoInt32>((1000 : GoInt).toBasic(), 0).__setNumber32__();
        var _buf = new Slice<GoUInt8>(((_slice.length) * (4 : GoInt) : GoInt).toBasic(), 0).__setNumber32__();
        _b.setBytes((_buf.length : GoInt64));
        _b.resetTimer();
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _bsr._remain = _buf;
                read(Go.asInterface(_bsr), Go.asInterface(bigEndian), Go.toInterface(_slice));
            });
        };
    }
function benchmarkReadStruct(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _bsr = (Go.setRef((new T_byteSliceReader() : T_byteSliceReader)) : Ref<stdgo.encoding.binary.Binary.T_byteSliceReader>);
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        write(Go.asInterface((Go.setRef(_buf) : Ref<stdgo.bytes.Bytes.Buffer>)), Go.asInterface(bigEndian), Go.toInterface((Go.setRef(_s) : Ref<stdgo.encoding.binary.Binary.Struct>)));
        _b.setBytes((_dataSize(stdgo.reflect.Reflect.valueOf(Go.toInterface(_s))?.__copy__()) : GoInt64));
        var _t:stdgo.encoding.binary.Binary.Struct = _s?.__copy__();
        _b.resetTimer();
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _bsr._remain = _buf.bytes();
                read(Go.asInterface(_bsr), Go.asInterface(bigEndian), Go.toInterface((Go.setRef(_t) : Ref<stdgo.encoding.binary.Binary.Struct>)));
            });
        };
        _b.stopTimer();
        if ((_b.n > (0 : GoInt)) && !stdgo.reflect.Reflect.deepEqual(Go.toInterface(_s), Go.toInterface(_t))) {
            _b.fatalf(("struct doesn\'t match:\ngot  %v;\nwant %v" : GoString), Go.toInterface(_t), Go.toInterface(_s));
        };
    }
function benchmarkWriteStruct(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.setBytes((size(Go.toInterface((Go.setRef(_s) : Ref<stdgo.encoding.binary.Binary.Struct>))) : GoInt64));
        _b.resetTimer();
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                write(stdgo.io.Io.discard, Go.asInterface(bigEndian), Go.toInterface((Go.setRef(_s) : Ref<stdgo.encoding.binary.Binary.Struct>)));
            });
        };
    }
function benchmarkReadInts(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _ls:Struct = ({} : stdgo.encoding.binary.Binary.Struct);
        var _bsr = (Go.setRef((new T_byteSliceReader() : T_byteSliceReader)) : Ref<stdgo.encoding.binary.Binary.T_byteSliceReader>);
        var _r:stdgo.io.Io.Reader = Go.asInterface(_bsr);
        _b.setBytes((30i64 : GoInt64));
        _b.resetTimer();
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _bsr._remain = _big;
                read(_r, Go.asInterface(bigEndian), Go.toInterface(Go.pointer(_ls.int8)));
                read(_r, Go.asInterface(bigEndian), Go.toInterface(Go.pointer(_ls.int16)));
                read(_r, Go.asInterface(bigEndian), Go.toInterface(Go.pointer(_ls.int32)));
                read(_r, Go.asInterface(bigEndian), Go.toInterface(Go.pointer(_ls.int64)));
                read(_r, Go.asInterface(bigEndian), Go.toInterface(Go.pointer(_ls.uint8)));
                read(_r, Go.asInterface(bigEndian), Go.toInterface(Go.pointer(_ls.uint16)));
                read(_r, Go.asInterface(bigEndian), Go.toInterface(Go.pointer(_ls.uint32)));
                read(_r, Go.asInterface(bigEndian), Go.toInterface(Go.pointer(_ls.uint64)));
            });
        };
        _b.stopTimer();
        var _want:stdgo.encoding.binary.Binary.Struct = _s?.__copy__();
        _want.float32 = (0 : GoFloat64);
        _want.float64 = (0 : GoFloat64);
        _want.complex64 = ((0f64 : GoFloat64) + new GoComplex128(0f64, 0f64));
        _want.complex128 = ((0f64 : GoFloat64) + new GoComplex128(0f64, 0f64));
        _want.array = (new GoArray<GoUInt8>((0 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8)) : GoArray<GoUInt8>);
        _want.bool_ = false;
        _want.boolArray = (new GoArray<Bool>(false, false, false, false) : GoArray<Bool>);
        if ((_b.n > (0 : GoInt)) && !stdgo.reflect.Reflect.deepEqual(Go.toInterface(_ls), Go.toInterface(_want))) {
            _b.fatalf(("struct doesn\'t match:\ngot  %v;\nwant %v" : GoString), Go.toInterface(_ls), Go.toInterface(_want));
        };
    }
function benchmarkWriteInts(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _buf = (Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : Ref<stdgo.bytes.Bytes.Buffer>);
        var _w:stdgo.io.Io.Writer = Go.asInterface(_buf);
        _b.setBytes((30i64 : GoInt64));
        _b.resetTimer();
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _buf.reset();
                write(_w, Go.asInterface(bigEndian), Go.toInterface(_s.int8));
                write(_w, Go.asInterface(bigEndian), Go.toInterface(_s.int16));
                write(_w, Go.asInterface(bigEndian), Go.toInterface(_s.int32));
                write(_w, Go.asInterface(bigEndian), Go.toInterface(_s.int64));
                write(_w, Go.asInterface(bigEndian), Go.toInterface(_s.uint8));
                write(_w, Go.asInterface(bigEndian), Go.toInterface(_s.uint16));
                write(_w, Go.asInterface(bigEndian), Go.toInterface(_s.uint32));
                write(_w, Go.asInterface(bigEndian), Go.toInterface(_s.uint64));
            });
        };
        _b.stopTimer();
        if ((_b.n > (0 : GoInt)) && !stdgo.bytes.Bytes.equal(_buf.bytes(), (_big.__slice__(0, (30 : GoInt)) : Slice<GoUInt8>))) {
            _b.fatalf(("first half doesn\'t match: %x %x" : GoString), Go.toInterface(_buf.bytes()), Go.toInterface((_big.__slice__(0, (30 : GoInt)) : Slice<GoUInt8>)));
        };
    }
function benchmarkWriteSlice1000Int32s(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _slice = new Slice<GoInt32>((1000 : GoInt).toBasic(), 0).__setNumber32__();
        var _buf = (Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : Ref<stdgo.bytes.Bytes.Buffer>);
        var _w:stdgo.io.Io.Writer = Go.asInterface(_buf);
        _b.setBytes((4000i64 : GoInt64));
        _b.resetTimer();
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _buf.reset();
                write(_w, Go.asInterface(bigEndian), Go.toInterface(_slice));
            });
        };
        _b.stopTimer();
    }
function benchmarkPutUint16(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.setBytes((2i64 : GoInt64));
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                bigEndian.putUint16((_putbuf.__slice__(0, (2 : GoInt)) : Slice<GoUInt8>), (_i : GoUInt16));
            });
        };
    }
function benchmarkAppendUint16(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.setBytes((2i64 : GoInt64));
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _putbuf = bigEndian.appendUint16((_putbuf.__slice__(0, (0 : GoInt)) : Slice<GoUInt8>), (_i : GoUInt16));
            });
        };
    }
function benchmarkPutUint32(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.setBytes((4i64 : GoInt64));
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                bigEndian.putUint32((_putbuf.__slice__(0, (4 : GoInt)) : Slice<GoUInt8>), (_i : GoUInt32));
            });
        };
    }
function benchmarkAppendUint32(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.setBytes((4i64 : GoInt64));
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _putbuf = bigEndian.appendUint32((_putbuf.__slice__(0, (0 : GoInt)) : Slice<GoUInt8>), (_i : GoUInt32));
            });
        };
    }
function benchmarkPutUint64(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.setBytes((8i64 : GoInt64));
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                bigEndian.putUint64((_putbuf.__slice__(0, (8 : GoInt)) : Slice<GoUInt8>), (_i : GoUInt64));
            });
        };
    }
function benchmarkAppendUint64(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.setBytes((8i64 : GoInt64));
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _putbuf = bigEndian.appendUint64((_putbuf.__slice__(0, (0 : GoInt)) : Slice<GoUInt8>), (_i : GoUInt64));
            });
        };
    }
function benchmarkLittleEndianPutUint16(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.setBytes((2i64 : GoInt64));
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                littleEndian.putUint16((_putbuf.__slice__(0, (2 : GoInt)) : Slice<GoUInt8>), (_i : GoUInt16));
            });
        };
    }
function benchmarkLittleEndianAppendUint16(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.setBytes((2i64 : GoInt64));
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _putbuf = littleEndian.appendUint16((_putbuf.__slice__(0, (0 : GoInt)) : Slice<GoUInt8>), (_i : GoUInt16));
            });
        };
    }
function benchmarkLittleEndianPutUint32(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.setBytes((4i64 : GoInt64));
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                littleEndian.putUint32((_putbuf.__slice__(0, (4 : GoInt)) : Slice<GoUInt8>), (_i : GoUInt32));
            });
        };
    }
function benchmarkLittleEndianAppendUint32(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.setBytes((4i64 : GoInt64));
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _putbuf = littleEndian.appendUint32((_putbuf.__slice__(0, (0 : GoInt)) : Slice<GoUInt8>), (_i : GoUInt32));
            });
        };
    }
function benchmarkLittleEndianPutUint64(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.setBytes((8i64 : GoInt64));
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                littleEndian.putUint64((_putbuf.__slice__(0, (8 : GoInt)) : Slice<GoUInt8>), (_i : GoUInt64));
            });
        };
    }
function benchmarkLittleEndianAppendUint64(_b:Ref<stdgo.testing.Testing.B>):Void {
        _b.setBytes((8i64 : GoInt64));
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _putbuf = littleEndian.appendUint64((_putbuf.__slice__(0, (0 : GoInt)) : Slice<GoUInt8>), (_i : GoUInt64));
            });
        };
    }
function benchmarkReadFloats(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _ls:Struct = ({} : stdgo.encoding.binary.Binary.Struct);
        var _bsr = (Go.setRef((new T_byteSliceReader() : T_byteSliceReader)) : Ref<stdgo.encoding.binary.Binary.T_byteSliceReader>);
        var _r:stdgo.io.Io.Reader = Go.asInterface(_bsr);
        _b.setBytes((12i64 : GoInt64));
        _b.resetTimer();
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _bsr._remain = (_big.__slice__((30 : GoInt)) : Slice<GoUInt8>);
                read(_r, Go.asInterface(bigEndian), Go.toInterface(Go.pointer(_ls.float32)));
                read(_r, Go.asInterface(bigEndian), Go.toInterface(Go.pointer(_ls.float64)));
            });
        };
        _b.stopTimer();
        var _want:stdgo.encoding.binary.Binary.Struct = _s?.__copy__();
        _want.int8 = (0 : GoInt8);
        _want.int16 = (0 : GoInt16);
        _want.int32 = (0 : GoInt32);
        _want.int64 = (0i64 : GoInt64);
        _want.uint8 = (0 : GoUInt8);
        _want.uint16 = (0 : GoUInt16);
        _want.uint32 = (0u32 : GoUInt32);
        _want.uint64 = (0i64 : GoUInt64);
        _want.complex64 = ((0f64 : GoFloat64) + new GoComplex128(0f64, 0f64));
        _want.complex128 = ((0f64 : GoFloat64) + new GoComplex128(0f64, 0f64));
        _want.array = (new GoArray<GoUInt8>((0 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8)) : GoArray<GoUInt8>);
        _want.bool_ = false;
        _want.boolArray = (new GoArray<Bool>(false, false, false, false) : GoArray<Bool>);
        if ((_b.n > (0 : GoInt)) && !stdgo.reflect.Reflect.deepEqual(Go.toInterface(_ls), Go.toInterface(_want))) {
            _b.fatalf(("struct doesn\'t match:\ngot  %v;\nwant %v" : GoString), Go.toInterface(_ls), Go.toInterface(_want));
        };
    }
function benchmarkWriteFloats(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _buf = (Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : Ref<stdgo.bytes.Bytes.Buffer>);
        var _w:stdgo.io.Io.Writer = Go.asInterface(_buf);
        _b.setBytes((12i64 : GoInt64));
        _b.resetTimer();
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _buf.reset();
                write(_w, Go.asInterface(bigEndian), Go.toInterface(_s.float32));
                write(_w, Go.asInterface(bigEndian), Go.toInterface(_s.float64));
            });
        };
        _b.stopTimer();
        if ((_b.n > (0 : GoInt)) && !stdgo.bytes.Bytes.equal(_buf.bytes(), (_big.__slice__((30 : GoInt), (42 : GoInt)) : Slice<GoUInt8>))) {
            _b.fatalf(("first half doesn\'t match: %x %x" : GoString), Go.toInterface(_buf.bytes()), Go.toInterface((_big.__slice__((30 : GoInt), (42 : GoInt)) : Slice<GoUInt8>)));
        };
    }
function benchmarkReadSlice1000Float32s(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _bsr = (Go.setRef((new T_byteSliceReader() : T_byteSliceReader)) : Ref<stdgo.encoding.binary.Binary.T_byteSliceReader>);
        var _slice = new Slice<GoFloat32>((1000 : GoInt).toBasic(), 0).__setNumber32__();
        var _buf = new Slice<GoUInt8>(((_slice.length) * (4 : GoInt) : GoInt).toBasic(), 0).__setNumber32__();
        _b.setBytes((_buf.length : GoInt64));
        _b.resetTimer();
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _bsr._remain = _buf;
                read(Go.asInterface(_bsr), Go.asInterface(bigEndian), Go.toInterface(_slice));
            });
        };
    }
function benchmarkWriteSlice1000Float32s(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _slice = new Slice<GoFloat32>((1000 : GoInt).toBasic(), 0).__setNumber32__();
        var _buf = (Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : Ref<stdgo.bytes.Bytes.Buffer>);
        var _w:stdgo.io.Io.Writer = Go.asInterface(_buf);
        _b.setBytes((4000i64 : GoInt64));
        _b.resetTimer();
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _buf.reset();
                write(_w, Go.asInterface(bigEndian), Go.toInterface(_slice));
            });
        };
        _b.stopTimer();
    }
function benchmarkReadSlice1000Uint8s(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _bsr = (Go.setRef((new T_byteSliceReader() : T_byteSliceReader)) : Ref<stdgo.encoding.binary.Binary.T_byteSliceReader>);
        var _slice = new Slice<GoUInt8>((1000 : GoInt).toBasic(), 0).__setNumber32__();
        var _buf = new Slice<GoUInt8>((_slice.length : GoInt).toBasic(), 0).__setNumber32__();
        _b.setBytes((_buf.length : GoInt64));
        _b.resetTimer();
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _bsr._remain = _buf;
                read(Go.asInterface(_bsr), Go.asInterface(bigEndian), Go.toInterface(_slice));
            });
        };
    }
function benchmarkWriteSlice1000Uint8s(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _slice = new Slice<GoUInt8>((1000 : GoInt).toBasic(), 0).__setNumber32__();
        var _buf = (Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : Ref<stdgo.bytes.Bytes.Buffer>);
        var _w:stdgo.io.Io.Writer = Go.asInterface(_buf);
        _b.setBytes((1000i64 : GoInt64));
        _b.resetTimer();
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                _buf.reset();
                write(_w, Go.asInterface(bigEndian), Go.toInterface(_slice));
            });
        };
    }
/**
    // AppendUvarint appends the varint-encoded form of x,
    // as generated by PutUvarint, to buf and returns the extended buffer.
**/
function appendUvarint(_buf:Slice<GoByte>, _x:GoUInt64):Slice<GoByte> {
        while (_x >= (128i64 : GoUInt64)) {
            _buf = (_buf.__append__((_x : GoByte) | (128 : GoUInt8)));
            _x = _x >> ((7i64 : GoUInt64));
        };
        return (_buf.__append__((_x : GoByte)));
    }
/**
    // PutUvarint encodes a uint64 into buf and returns the number of bytes written.
    // If the buffer is too small, PutUvarint will panic.
**/
function putUvarint(_buf:Slice<GoByte>, _x:GoUInt64):GoInt {
        var _i:GoInt = (0 : GoInt);
        while (_x >= (128i64 : GoUInt64)) {
            _buf[(_i : GoInt)] = (_x : GoByte) | (128 : GoUInt8);
            _x = _x >> ((7i64 : GoUInt64));
            _i++;
        };
        _buf[(_i : GoInt)] = (_x : GoByte);
        return _i + (1 : GoInt);
    }
/**
    // Uvarint decodes a uint64 from buf and returns that value and the
    // number of bytes read (> 0). If an error occurred, the value is 0
    // and the number of bytes n is <= 0 meaning:
    //
    //	n == 0: buf too small
    //	n  < 0: value larger than 64 bits (overflow)
    //	        and -n is the number of bytes read
**/
function uvarint(_buf:Slice<GoByte>):{ var _0 : GoUInt64; var _1 : GoInt; } {
        var _x:GoUInt64 = (0 : GoUInt64);
        var _s:GoUInt = (0 : GoUInt);
        for (_i => _b in _buf) {
            if (_i == ((10 : GoInt))) {
                return { _0 : (0i64 : GoUInt64), _1 : -(_i + (1 : GoInt)) };
            };
            if (_b < (128 : GoUInt8)) {
                if ((_i == (9 : GoInt)) && (_b > (1 : GoUInt8))) {
                    return { _0 : (0i64 : GoUInt64), _1 : -(_i + (1 : GoInt)) };
                };
                return { _0 : _x | ((_b : GoUInt64) << _s), _1 : _i + (1 : GoInt) };
            };
            _x = _x | ((_b & (127 : GoUInt8) : GoUInt64) << _s);
            _s = _s + ((7u32 : GoUInt));
        };
        return { _0 : (0i64 : GoUInt64), _1 : (0 : GoInt) };
    }
/**
    // AppendVarint appends the varint-encoded form of x,
    // as generated by PutVarint, to buf and returns the extended buffer.
**/
function appendVarint(_buf:Slice<GoByte>, _x:GoInt64):Slice<GoByte> {
        var _ux:GoUInt64 = (_x : GoUInt64) << (1i64 : GoUInt64);
        if (_x < (0i64 : GoInt64)) {
            _ux = (-1 ^ _ux);
        };
        return appendUvarint(_buf, _ux);
    }
/**
    // PutVarint encodes an int64 into buf and returns the number of bytes written.
    // If the buffer is too small, PutVarint will panic.
**/
function putVarint(_buf:Slice<GoByte>, _x:GoInt64):GoInt {
        var _ux:GoUInt64 = (_x : GoUInt64) << (1i64 : GoUInt64);
        if (_x < (0i64 : GoInt64)) {
            _ux = (-1 ^ _ux);
        };
        return putUvarint(_buf, _ux);
    }
/**
    // Varint decodes an int64 from buf and returns that value and the
    // number of bytes read (> 0). If an error occurred, the value is 0
    // and the number of bytes n is <= 0 with the following meaning:
    //
    //	n == 0: buf too small
    //	n  < 0: value larger than 64 bits (overflow)
    //	        and -n is the number of bytes read
**/
function varint(_buf:Slice<GoByte>):{ var _0 : GoInt64; var _1 : GoInt; } {
        var __tmp__ = uvarint(_buf), _ux:GoUInt64 = __tmp__._0, _n:GoInt = __tmp__._1;
        var _x:GoInt64 = (_ux >> (1i64 : GoUInt64) : GoInt64);
        if (_ux & (1i64 : GoUInt64) != ((0i64 : GoUInt64))) {
            _x = (-1 ^ _x);
        };
        return { _0 : _x, _1 : _n };
    }
/**
    // ReadUvarint reads an encoded unsigned integer from r and returns it as a uint64.
    // The error is EOF only if no bytes were read.
    // If an EOF happens after reading some but not all the bytes,
    // ReadUvarint returns io.ErrUnexpectedEOF.
**/
function readUvarint(_r:stdgo.io.Io.ByteReader):{ var _0 : GoUInt64; var _1 : Error; } {
        var _x:GoUInt64 = (0 : GoUInt64);
        var _s:GoUInt = (0 : GoUInt);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (10 : GoInt), _i++, {
                var __tmp__ = _r.readByte(), _b:GoUInt8 = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    if ((_i > (0 : GoInt)) && (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof))) {
                        _err = stdgo.io.Io.errUnexpectedEOF;
                    };
                    return { _0 : _x, _1 : _err };
                };
                if (_b < (128 : GoUInt8)) {
                    if ((_i == (9 : GoInt)) && (_b > (1 : GoUInt8))) {
                        return { _0 : _x, _1 : _overflow };
                    };
                    return { _0 : _x | ((_b : GoUInt64) << _s), _1 : (null : Error) };
                };
                _x = _x | ((_b & (127 : GoUInt8) : GoUInt64) << _s);
                _s = _s + ((7u32 : GoUInt));
            });
        };
        return { _0 : _x, _1 : _overflow };
    }
/**
    // ReadVarint reads an encoded signed integer from r and returns it as an int64.
    // The error is EOF only if no bytes were read.
    // If an EOF happens after reading some but not all the bytes,
    // ReadVarint returns io.ErrUnexpectedEOF.
**/
function readVarint(_r:stdgo.io.Io.ByteReader):{ var _0 : GoInt64; var _1 : Error; } {
        var __tmp__ = readUvarint(_r), _ux:GoUInt64 = __tmp__._0, _err:Error = __tmp__._1;
        var _x:GoInt64 = (_ux >> (1i64 : GoUInt64) : GoInt64);
        if (_ux & (1i64 : GoUInt64) != ((0i64 : GoUInt64))) {
            _x = (-1 ^ _x);
        };
        return { _0 : _x, _1 : _err };
    }
private function _testConstant(_t:Ref<stdgo.testing.Testing.T>, _w:GoUInt, _max:GoInt):Void {
        var _buf = new Slice<GoUInt8>((10 : GoInt).toBasic(), 0).__setNumber32__();
        var _n:GoInt = putUvarint(_buf, ((1i64 : GoUInt64) << _w) - (1i64 : GoUInt64));
        if (_n != (_max)) {
            _t.errorf(("MaxVarintLen%d = %d; want %d" : GoString), Go.toInterface(_w), Go.toInterface(_max), Go.toInterface(_n));
        };
    }
function testConstants(_t:Ref<stdgo.testing.Testing.T>):Void {
        _testConstant(_t, (16u32 : GoUInt), (3 : GoInt));
        _testConstant(_t, (32u32 : GoUInt), (5 : GoInt));
        _testConstant(_t, (64u32 : GoUInt), (10 : GoInt));
    }
private function _testVarint(_t:Ref<stdgo.testing.Testing.T>, _x:GoInt64):Void {
        var _buf = new Slice<GoUInt8>((10 : GoInt).toBasic(), 0).__setNumber32__();
        var _n:GoInt = putVarint(_buf, _x);
        var __tmp__ = varint((_buf.__slice__((0 : GoInt), _n) : Slice<GoUInt8>)), _y:GoInt64 = __tmp__._0, _m:GoInt = __tmp__._1;
        if (_x != (_y)) {
            _t.errorf(("Varint(%d): got %d" : GoString), Go.toInterface(_x), Go.toInterface(_y));
        };
        if (_n != (_m)) {
            _t.errorf(("Varint(%d): got n = %d; want %d" : GoString), Go.toInterface(_x), Go.toInterface(_m), Go.toInterface(_n));
        };
        var _buf2 = (("prefix" : GoString) : Slice<GoByte>);
        _buf2 = appendVarint(_buf2, _x);
        if ((_buf2 : GoString) != (("prefix" : GoString) + ((_buf.__slice__(0, _n) : Slice<GoUInt8>) : GoString))) {
            _t.errorf(("AppendVarint(%d): got %q, want %q" : GoString), Go.toInterface(_x), Go.toInterface(_buf2), Go.toInterface(("prefix" : GoString) + ((_buf.__slice__(0, _n) : Slice<GoUInt8>) : GoString)));
        };
        var __tmp__ = readVarint(Go.asInterface(stdgo.bytes.Bytes.newReader(_buf))), _y:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("ReadVarint(%d): %s" : GoString), Go.toInterface(_x), Go.toInterface(_err));
        };
        if (_x != (_y)) {
            _t.errorf(("ReadVarint(%d): got %d" : GoString), Go.toInterface(_x), Go.toInterface(_y));
        };
    }
private function _testUvarint(_t:Ref<stdgo.testing.Testing.T>, _x:GoUInt64):Void {
        var _buf = new Slice<GoUInt8>((10 : GoInt).toBasic(), 0).__setNumber32__();
        var _n:GoInt = putUvarint(_buf, _x);
        var __tmp__ = uvarint((_buf.__slice__((0 : GoInt), _n) : Slice<GoUInt8>)), _y:GoUInt64 = __tmp__._0, _m:GoInt = __tmp__._1;
        if (_x != (_y)) {
            _t.errorf(("Uvarint(%d): got %d" : GoString), Go.toInterface(_x), Go.toInterface(_y));
        };
        if (_n != (_m)) {
            _t.errorf(("Uvarint(%d): got n = %d; want %d" : GoString), Go.toInterface(_x), Go.toInterface(_m), Go.toInterface(_n));
        };
        var _buf2 = (("prefix" : GoString) : Slice<GoByte>);
        _buf2 = appendUvarint(_buf2, _x);
        if ((_buf2 : GoString) != (("prefix" : GoString) + ((_buf.__slice__(0, _n) : Slice<GoUInt8>) : GoString))) {
            _t.errorf(("AppendUvarint(%d): got %q, want %q" : GoString), Go.toInterface(_x), Go.toInterface(_buf2), Go.toInterface(("prefix" : GoString) + ((_buf.__slice__(0, _n) : Slice<GoUInt8>) : GoString)));
        };
        var __tmp__ = readUvarint(Go.asInterface(stdgo.bytes.Bytes.newReader(_buf))), _y:GoUInt64 = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("ReadUvarint(%d): %s" : GoString), Go.toInterface(_x), Go.toInterface(_err));
        };
        if (_x != (_y)) {
            _t.errorf(("ReadUvarint(%d): got %d" : GoString), Go.toInterface(_x), Go.toInterface(_y));
        };
    }
function testVarint(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _x in _tests) {
            _testVarint(_t, _x);
            _testVarint(_t, -_x);
        };
        {
            var _x:GoInt64 = (7i64 : GoInt64);
            Go.cfor(_x != ((0i64 : GoInt64)), _x = _x << ((1i64 : GoUInt64)), {
                _testVarint(_t, _x);
                _testVarint(_t, -_x);
            });
        };
    }
function testUvarint(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _x in _tests) {
            _testUvarint(_t, (_x : GoUInt64));
        };
        {
            var _x:GoUInt64 = (7i64 : GoUInt64);
            Go.cfor(_x != ((0i64 : GoUInt64)), _x = _x << ((1i64 : GoUInt64)), {
                _testUvarint(_t, _x);
            });
        };
    }
function testBufferTooSmall(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _buf = (new Slice<GoUInt8>(4, 4, (128 : GoUInt8), (128 : GoUInt8), (128 : GoUInt8), (128 : GoUInt8)) : Slice<GoUInt8>);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i <= (_buf.length), _i++, {
                var _buf = (_buf.__slice__((0 : GoInt), _i) : Slice<GoUInt8>);
                var __tmp__ = uvarint(_buf), _x:GoUInt64 = __tmp__._0, _n:GoInt = __tmp__._1;
                if ((_x != (0i64 : GoUInt64)) || (_n != (0 : GoInt))) {
                    _t.errorf(("Uvarint(%v): got x = %d, n = %d" : GoString), Go.toInterface(_buf), Go.toInterface(_x), Go.toInterface(_n));
                };
                var __tmp__ = readUvarint(Go.asInterface(stdgo.bytes.Bytes.newReader(_buf))), _x:GoUInt64 = __tmp__._0, _err:Error = __tmp__._1;
                var _wantErr:Error = stdgo.io.Io.eof;
                if (_i > (0 : GoInt)) {
                    _wantErr = stdgo.io.Io.errUnexpectedEOF;
                };
                if ((_x != (0i64 : GoUInt64)) || (Go.toInterface(_err) != Go.toInterface(_wantErr))) {
                    _t.errorf(("ReadUvarint(%v): got x = %d, err = %s" : GoString), Go.toInterface(_buf), Go.toInterface(_x), Go.toInterface(_err));
                };
            });
        };
    }
/**
    // Ensure that we catch overflows of bytes going past MaxVarintLen64.
    // See issue https://golang.org/issues/41185
**/
function testBufferTooBigWithOverflow(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _tests = (new Slice<T__struct_6>(4, 4, ({ _in : {
            var a = function():Slice<GoByte> {
                var _b = new Slice<GoUInt8>((1000 : GoInt).toBasic(), 0).__setNumber32__();
                for (_i in 0 ... _b.length.toBasic()) {
                    _b[(_i : GoInt)] = (255 : GoUInt8);
                };
                _b[(999 : GoInt)] = (0 : GoUInt8);
                return _b;
            };
            a();
        }, _name : ("invalid: 1000 bytes" : GoString), _wantN : (-11 : GoInt), _wantValue : (0i64 : GoUInt64) } : T__struct_6), ({ _in : (new Slice<GoUInt8>(
10,
10,
(215 : GoUInt8),
(255 : GoUInt8),
(255 : GoUInt8),
(255 : GoUInt8),
(255 : GoUInt8),
(255 : GoUInt8),
(255 : GoUInt8),
(255 : GoUInt8),
(255 : GoUInt8),
(1 : GoUInt8)) : Slice<GoUInt8>), _name : ("valid: math.MaxUint64-40" : GoString), _wantN : (10 : GoInt), _wantValue : (-41i64 : GoUInt64) } : T__struct_6), ({ _in : (new Slice<GoUInt8>(
11,
11,
(215 : GoUInt8),
(255 : GoUInt8),
(255 : GoUInt8),
(255 : GoUInt8),
(255 : GoUInt8),
(255 : GoUInt8),
(255 : GoUInt8),
(255 : GoUInt8),
(255 : GoUInt8),
(255 : GoUInt8),
(1 : GoUInt8)) : Slice<GoUInt8>), _name : ("invalid: with more than MaxVarintLen64 bytes" : GoString), _wantN : (-11 : GoInt), _wantValue : (0i64 : GoUInt64) } : T__struct_6), ({ _in : (new Slice<GoUInt8>(
10,
10,
(215 : GoUInt8),
(255 : GoUInt8),
(255 : GoUInt8),
(255 : GoUInt8),
(255 : GoUInt8),
(255 : GoUInt8),
(255 : GoUInt8),
(255 : GoUInt8),
(255 : GoUInt8),
(127 : GoUInt8)) : Slice<GoUInt8>), _name : ("invalid: 10th byte" : GoString), _wantN : (-10 : GoInt), _wantValue : (0i64 : GoUInt64) } : T__struct_6)) : Slice<T__struct_6>);
        for (__0 => _tt in _tests) {
            var _tt:T__struct_6 = {
                final x = _tt;
                ({ _in : x._in, _name : x._name, _wantN : x._wantN, _wantValue : x._wantValue } : T__struct_6);
            };
            _t.run(_tt._name, function(_t:Ref<stdgo.testing.Testing.T>):Void {
                var __tmp__ = uvarint(_tt._in), _value:GoUInt64 = __tmp__._0, _n:GoInt = __tmp__._1;
                {
                    var __0:GoInt = _n, __1:GoInt = _tt._wantN, _w:GoInt = __1, _g:GoInt = __0;
                    if (_g != (_w)) {
                        _t.errorf(("bytes returned=%d, want=%d" : GoString), Go.toInterface(_g), Go.toInterface(_w));
                    };
                };
                {
                    var __0:GoUInt64 = _value, __1:GoUInt64 = _tt._wantValue, _w:GoUInt64 = __1, _g:GoUInt64 = __0;
                    if (_g != (_w)) {
                        _t.errorf(("value=%d, want=%d" : GoString), Go.toInterface(_g), Go.toInterface(_w));
                    };
                };
            });
        };
    }
private function _testOverflow(_t:Ref<stdgo.testing.Testing.T>, _buf:Slice<GoByte>, _x0:GoUInt64, _n0:GoInt, _err0:Error):Void {
        var __tmp__ = uvarint(_buf), _x:GoUInt64 = __tmp__._0, _n:GoInt = __tmp__._1;
        if ((_x != (0i64 : GoUInt64)) || (_n != _n0)) {
            _t.errorf(("Uvarint(% X): got x = %d, n = %d; want 0, %d" : GoString), Go.toInterface(_buf), Go.toInterface(_x), Go.toInterface(_n), Go.toInterface(_n0));
        };
        var _r = stdgo.bytes.Bytes.newReader(_buf);
        var _len:GoInt = _r.len();
        var __tmp__ = readUvarint(Go.asInterface(_r)), _x:GoUInt64 = __tmp__._0, _err:Error = __tmp__._1;
        if ((_x != _x0) || (Go.toInterface(_err) != Go.toInterface(_err0))) {
            _t.errorf(("ReadUvarint(%v): got x = %d, err = %s; want %d, %s" : GoString), Go.toInterface(_buf), Go.toInterface(_x), Go.toInterface(_err), Go.toInterface(_x0), Go.toInterface(_err0));
        };
        {
            var _read:GoInt = _len - _r.len();
            if (_read > (10 : GoInt)) {
                _t.errorf(("ReadUvarint(%v): read more than MaxVarintLen64 bytes, got %d" : GoString), Go.toInterface(_buf), Go.toInterface(_read));
            };
        };
    }
function testOverflow(_t:Ref<stdgo.testing.Testing.T>):Void {
        _testOverflow(_t, (new Slice<GoUInt8>(
10,
10,
(128 : GoUInt8),
(128 : GoUInt8),
(128 : GoUInt8),
(128 : GoUInt8),
(128 : GoUInt8),
(128 : GoUInt8),
(128 : GoUInt8),
(128 : GoUInt8),
(128 : GoUInt8),
(2 : GoUInt8)) : Slice<GoUInt8>), (0i64 : GoUInt64), (-10 : GoInt), _overflow);
        _testOverflow(_t, (new Slice<GoUInt8>(
15,
15,
(128 : GoUInt8),
(128 : GoUInt8),
(128 : GoUInt8),
(128 : GoUInt8),
(128 : GoUInt8),
(128 : GoUInt8),
(128 : GoUInt8),
(128 : GoUInt8),
(128 : GoUInt8),
(128 : GoUInt8),
(128 : GoUInt8),
(128 : GoUInt8),
(1 : GoUInt8),
(0 : GoUInt8),
(0 : GoUInt8)) : Slice<GoUInt8>), (0i64 : GoUInt64), (-11 : GoInt), _overflow);
        _testOverflow(_t, (new Slice<GoUInt8>(
11,
11,
(255 : GoUInt8),
(255 : GoUInt8),
(255 : GoUInt8),
(255 : GoUInt8),
(255 : GoUInt8),
(255 : GoUInt8),
(255 : GoUInt8),
(255 : GoUInt8),
(255 : GoUInt8),
(255 : GoUInt8),
(255 : GoUInt8)) : Slice<GoUInt8>), (-1i64 : GoUInt64), (-11 : GoInt), _overflow);
    }
function testNonCanonicalZero(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _buf = (new Slice<GoUInt8>(4, 4, (128 : GoUInt8), (128 : GoUInt8), (128 : GoUInt8), (0 : GoUInt8)) : Slice<GoUInt8>);
        var __tmp__ = uvarint(_buf), _x:GoUInt64 = __tmp__._0, _n:GoInt = __tmp__._1;
        if ((_x != (0i64 : GoUInt64)) || (_n != (4 : GoInt))) {
            _t.errorf(("Uvarint(%v): got x = %d, n = %d; want 0, 4" : GoString), Go.toInterface(_buf), Go.toInterface(_x), Go.toInterface(_n));
        };
    }
function benchmarkPutUvarint32(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _buf = new Slice<GoUInt8>((5 : GoInt).toBasic(), 0).__setNumber32__();
        _b.setBytes((4i64 : GoInt64));
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                {
                    var _j:GoUInt = (0u32 : GoUInt);
                    Go.cfor(_j < (5u32 : GoUInt), _j++, {
                        putUvarint(_buf, (1i64 : GoUInt64) << (_j * (7u32 : GoUInt)));
                    });
                };
            });
        };
    }
function benchmarkPutUvarint64(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _buf = new Slice<GoUInt8>((10 : GoInt).toBasic(), 0).__setNumber32__();
        _b.setBytes((8i64 : GoInt64));
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _b.n, _i++, {
                {
                    var _j:GoUInt = (0u32 : GoUInt);
                    Go.cfor(_j < (10u32 : GoUInt), _j++, {
                        putUvarint(_buf, (1i64 : GoUInt64) << (_j * (7u32 : GoUInt)));
                    });
                };
            });
        };
    }
class T_littleEndian_asInterface {
    @:keep
    public dynamic function goString():GoString return __self__.value.goString();
    @:keep
    public dynamic function string():GoString return __self__.value.string();
    @:keep
    public dynamic function appendUint64(_b:Slice<GoByte>, _v:GoUInt64):Slice<GoByte> return __self__.value.appendUint64(_b, _v);
    @:keep
    public dynamic function putUint64(_b:Slice<GoByte>, _v:GoUInt64):Void __self__.value.putUint64(_b, _v);
    @:keep
    public dynamic function uint64(_b:Slice<GoByte>):GoUInt64 return __self__.value.uint64(_b);
    @:keep
    public dynamic function appendUint32(_b:Slice<GoByte>, _v:GoUInt32):Slice<GoByte> return __self__.value.appendUint32(_b, _v);
    @:keep
    public dynamic function putUint32(_b:Slice<GoByte>, _v:GoUInt32):Void __self__.value.putUint32(_b, _v);
    @:keep
    public dynamic function uint32(_b:Slice<GoByte>):GoUInt32 return __self__.value.uint32(_b);
    @:keep
    public dynamic function appendUint16(_b:Slice<GoByte>, _v:GoUInt16):Slice<GoByte> return __self__.value.appendUint16(_b, _v);
    @:keep
    public dynamic function putUint16(_b:Slice<GoByte>, _v:GoUInt16):Void __self__.value.putUint16(_b, _v);
    @:keep
    public dynamic function uint16(_b:Slice<GoByte>):GoUInt16 return __self__.value.uint16(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_littleEndian>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.binary.Binary.T_littleEndian_asInterface) class T_littleEndian_static_extension {
    @:keep
    static public function goString( _:T_littleEndian):GoString {
        return ("binary.LittleEndian" : GoString);
    }
    @:keep
    static public function string( _:T_littleEndian):GoString {
        return ("LittleEndian" : GoString);
    }
    @:keep
    static public function appendUint64( _:T_littleEndian, _b:Slice<GoByte>, _v:GoUInt64):Slice<GoByte> {
        return (_b.__append__((_v : GoByte), (_v >> (8i64 : GoUInt64) : GoByte), (_v >> (16i64 : GoUInt64) : GoByte), (_v >> (24i64 : GoUInt64) : GoByte), (_v >> (32i64 : GoUInt64) : GoByte), (_v >> (40i64 : GoUInt64) : GoByte), (_v >> (48i64 : GoUInt64) : GoByte), (_v >> (56i64 : GoUInt64) : GoByte)));
    }
    @:keep
    static public function putUint64( _:T_littleEndian, _b:Slice<GoByte>, _v:GoUInt64):Void {
        _b[(7 : GoInt)];
        _b[(0 : GoInt)] = (_v : GoByte);
        _b[(1 : GoInt)] = (_v >> (8i64 : GoUInt64) : GoByte);
        _b[(2 : GoInt)] = (_v >> (16i64 : GoUInt64) : GoByte);
        _b[(3 : GoInt)] = (_v >> (24i64 : GoUInt64) : GoByte);
        _b[(4 : GoInt)] = (_v >> (32i64 : GoUInt64) : GoByte);
        _b[(5 : GoInt)] = (_v >> (40i64 : GoUInt64) : GoByte);
        _b[(6 : GoInt)] = (_v >> (48i64 : GoUInt64) : GoByte);
        _b[(7 : GoInt)] = (_v >> (56i64 : GoUInt64) : GoByte);
    }
    @:keep
    static public function uint64( _:T_littleEndian, _b:Slice<GoByte>):GoUInt64 {
        _b[(7 : GoInt)];
        return (((((((_b[(0 : GoInt)] : GoUInt64) | ((_b[(1 : GoInt)] : GoUInt64) << (8i64 : GoUInt64))) | ((_b[(2 : GoInt)] : GoUInt64) << (16i64 : GoUInt64))) | ((_b[(3 : GoInt)] : GoUInt64) << (24i64 : GoUInt64))) | ((_b[(4 : GoInt)] : GoUInt64) << (32i64 : GoUInt64))) | ((_b[(5 : GoInt)] : GoUInt64) << (40i64 : GoUInt64))) | ((_b[(6 : GoInt)] : GoUInt64) << (48i64 : GoUInt64))) | ((_b[(7 : GoInt)] : GoUInt64) << (56i64 : GoUInt64));
    }
    @:keep
    static public function appendUint32( _:T_littleEndian, _b:Slice<GoByte>, _v:GoUInt32):Slice<GoByte> {
        return (_b.__append__((_v : GoByte), (_v >> (8i64 : GoUInt64) : GoByte), (_v >> (16i64 : GoUInt64) : GoByte), (_v >> (24i64 : GoUInt64) : GoByte)));
    }
    @:keep
    static public function putUint32( _:T_littleEndian, _b:Slice<GoByte>, _v:GoUInt32):Void {
        _b[(3 : GoInt)];
        _b[(0 : GoInt)] = (_v : GoByte);
        _b[(1 : GoInt)] = (_v >> (8i64 : GoUInt64) : GoByte);
        _b[(2 : GoInt)] = (_v >> (16i64 : GoUInt64) : GoByte);
        _b[(3 : GoInt)] = (_v >> (24i64 : GoUInt64) : GoByte);
    }
    @:keep
    static public function uint32( _:T_littleEndian, _b:Slice<GoByte>):GoUInt32 {
        _b[(3 : GoInt)];
        return (((_b[(0 : GoInt)] : GoUInt32) | ((_b[(1 : GoInt)] : GoUInt32) << (8i64 : GoUInt64))) | ((_b[(2 : GoInt)] : GoUInt32) << (16i64 : GoUInt64))) | ((_b[(3 : GoInt)] : GoUInt32) << (24i64 : GoUInt64));
    }
    @:keep
    static public function appendUint16( _:T_littleEndian, _b:Slice<GoByte>, _v:GoUInt16):Slice<GoByte> {
        return (_b.__append__((_v : GoByte), (_v >> (8i64 : GoUInt64) : GoByte)));
    }
    @:keep
    static public function putUint16( _:T_littleEndian, _b:Slice<GoByte>, _v:GoUInt16):Void {
        _b[(1 : GoInt)];
        _b[(0 : GoInt)] = (_v : GoByte);
        _b[(1 : GoInt)] = (_v >> (8i64 : GoUInt64) : GoByte);
    }
    @:keep
    static public function uint16( _:T_littleEndian, _b:Slice<GoByte>):GoUInt16 {
        _b[(1 : GoInt)];
        return (_b[(0 : GoInt)] : GoUInt16) | ((_b[(1 : GoInt)] : GoUInt16) << (8i64 : GoUInt64));
    }
}
class T_bigEndian_asInterface {
    @:keep
    public dynamic function goString():GoString return __self__.value.goString();
    @:keep
    public dynamic function string():GoString return __self__.value.string();
    @:keep
    public dynamic function appendUint64(_b:Slice<GoByte>, _v:GoUInt64):Slice<GoByte> return __self__.value.appendUint64(_b, _v);
    @:keep
    public dynamic function putUint64(_b:Slice<GoByte>, _v:GoUInt64):Void __self__.value.putUint64(_b, _v);
    @:keep
    public dynamic function uint64(_b:Slice<GoByte>):GoUInt64 return __self__.value.uint64(_b);
    @:keep
    public dynamic function appendUint32(_b:Slice<GoByte>, _v:GoUInt32):Slice<GoByte> return __self__.value.appendUint32(_b, _v);
    @:keep
    public dynamic function putUint32(_b:Slice<GoByte>, _v:GoUInt32):Void __self__.value.putUint32(_b, _v);
    @:keep
    public dynamic function uint32(_b:Slice<GoByte>):GoUInt32 return __self__.value.uint32(_b);
    @:keep
    public dynamic function appendUint16(_b:Slice<GoByte>, _v:GoUInt16):Slice<GoByte> return __self__.value.appendUint16(_b, _v);
    @:keep
    public dynamic function putUint16(_b:Slice<GoByte>, _v:GoUInt16):Void __self__.value.putUint16(_b, _v);
    @:keep
    public dynamic function uint16(_b:Slice<GoByte>):GoUInt16 return __self__.value.uint16(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_bigEndian>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.binary.Binary.T_bigEndian_asInterface) class T_bigEndian_static_extension {
    @:keep
    static public function goString( _:T_bigEndian):GoString {
        return ("binary.BigEndian" : GoString);
    }
    @:keep
    static public function string( _:T_bigEndian):GoString {
        return ("BigEndian" : GoString);
    }
    @:keep
    static public function appendUint64( _:T_bigEndian, _b:Slice<GoByte>, _v:GoUInt64):Slice<GoByte> {
        return (_b.__append__((_v >> (56i64 : GoUInt64) : GoByte), (_v >> (48i64 : GoUInt64) : GoByte), (_v >> (40i64 : GoUInt64) : GoByte), (_v >> (32i64 : GoUInt64) : GoByte), (_v >> (24i64 : GoUInt64) : GoByte), (_v >> (16i64 : GoUInt64) : GoByte), (_v >> (8i64 : GoUInt64) : GoByte), (_v : GoByte)));
    }
    @:keep
    static public function putUint64( _:T_bigEndian, _b:Slice<GoByte>, _v:GoUInt64):Void {
        _b[(7 : GoInt)];
        _b[(0 : GoInt)] = (_v >> (56i64 : GoUInt64) : GoByte);
        _b[(1 : GoInt)] = (_v >> (48i64 : GoUInt64) : GoByte);
        _b[(2 : GoInt)] = (_v >> (40i64 : GoUInt64) : GoByte);
        _b[(3 : GoInt)] = (_v >> (32i64 : GoUInt64) : GoByte);
        _b[(4 : GoInt)] = (_v >> (24i64 : GoUInt64) : GoByte);
        _b[(5 : GoInt)] = (_v >> (16i64 : GoUInt64) : GoByte);
        _b[(6 : GoInt)] = (_v >> (8i64 : GoUInt64) : GoByte);
        _b[(7 : GoInt)] = (_v : GoByte);
    }
    @:keep
    static public function uint64( _:T_bigEndian, _b:Slice<GoByte>):GoUInt64 {
        _b[(7 : GoInt)];
        return (((((((_b[(7 : GoInt)] : GoUInt64) | ((_b[(6 : GoInt)] : GoUInt64) << (8i64 : GoUInt64))) | ((_b[(5 : GoInt)] : GoUInt64) << (16i64 : GoUInt64))) | ((_b[(4 : GoInt)] : GoUInt64) << (24i64 : GoUInt64))) | ((_b[(3 : GoInt)] : GoUInt64) << (32i64 : GoUInt64))) | ((_b[(2 : GoInt)] : GoUInt64) << (40i64 : GoUInt64))) | ((_b[(1 : GoInt)] : GoUInt64) << (48i64 : GoUInt64))) | ((_b[(0 : GoInt)] : GoUInt64) << (56i64 : GoUInt64));
    }
    @:keep
    static public function appendUint32( _:T_bigEndian, _b:Slice<GoByte>, _v:GoUInt32):Slice<GoByte> {
        return (_b.__append__((_v >> (24i64 : GoUInt64) : GoByte), (_v >> (16i64 : GoUInt64) : GoByte), (_v >> (8i64 : GoUInt64) : GoByte), (_v : GoByte)));
    }
    @:keep
    static public function putUint32( _:T_bigEndian, _b:Slice<GoByte>, _v:GoUInt32):Void {
        _b[(3 : GoInt)];
        _b[(0 : GoInt)] = (_v >> (24i64 : GoUInt64) : GoByte);
        _b[(1 : GoInt)] = (_v >> (16i64 : GoUInt64) : GoByte);
        _b[(2 : GoInt)] = (_v >> (8i64 : GoUInt64) : GoByte);
        _b[(3 : GoInt)] = (_v : GoByte);
    }
    @:keep
    static public function uint32( _:T_bigEndian, _b:Slice<GoByte>):GoUInt32 {
        _b[(3 : GoInt)];
        return (((_b[(3 : GoInt)] : GoUInt32) | ((_b[(2 : GoInt)] : GoUInt32) << (8i64 : GoUInt64))) | ((_b[(1 : GoInt)] : GoUInt32) << (16i64 : GoUInt64))) | ((_b[(0 : GoInt)] : GoUInt32) << (24i64 : GoUInt64));
    }
    @:keep
    static public function appendUint16( _:T_bigEndian, _b:Slice<GoByte>, _v:GoUInt16):Slice<GoByte> {
        return (_b.__append__((_v >> (8i64 : GoUInt64) : GoByte), (_v : GoByte)));
    }
    @:keep
    static public function putUint16( _:T_bigEndian, _b:Slice<GoByte>, _v:GoUInt16):Void {
        _b[(1 : GoInt)];
        _b[(0 : GoInt)] = (_v >> (8i64 : GoUInt64) : GoByte);
        _b[(1 : GoInt)] = (_v : GoByte);
    }
    @:keep
    static public function uint16( _:T_bigEndian, _b:Slice<GoByte>):GoUInt16 {
        _b[(1 : GoInt)];
        return (_b[(1 : GoInt)] : GoUInt16) | ((_b[(0 : GoInt)] : GoUInt16) << (8i64 : GoUInt64));
    }
}
class T_byteSliceReader_asInterface {
    @:keep
    public dynamic function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_byteSliceReader>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.binary.Binary.T_byteSliceReader_asInterface) class T_byteSliceReader_static_extension {
    @:keep
    static public function read( _br:Ref<T_byteSliceReader>, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = Go.copySlice(_p, _br._remain);
        _br._remain = (_br._remain.__slice__(_n) : Slice<GoUInt8>);
        return { _0 : _n, _1 : (null : Error) };
    }
}
class T_decoder_asInterface {
    @:keep
    public dynamic function _skip(_v:stdgo.reflect.Reflect.Value):Void __self__.value._skip(_v);
    @:keep
    public dynamic function _value(_v:stdgo.reflect.Reflect.Value):Void __self__.value._value(_v);
    @:keep
    public dynamic function _int64():GoInt64 return __self__.value._int64();
    @:keep
    public dynamic function _int32():GoInt32 return __self__.value._int32();
    @:keep
    public dynamic function _int16():GoInt16 return __self__.value._int16();
    @:keep
    public dynamic function _int8():GoInt8 return __self__.value._int8();
    @:keep
    public dynamic function _uint64():GoUInt64 return __self__.value._uint64();
    @:keep
    public dynamic function _uint32():GoUInt32 return __self__.value._uint32();
    @:keep
    public dynamic function _uint16():GoUInt16 return __self__.value._uint16();
    @:keep
    public dynamic function _uint8():GoUInt8 return __self__.value._uint8();
    @:keep
    public dynamic function _bool():Bool return __self__.value._bool();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_decoder>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.binary.Binary.T_decoder_asInterface) class T_decoder_static_extension {
    @:keep
    static public function _skip( _d:Ref<T_decoder>, _v:stdgo.reflect.Reflect.Value):Void {
        _d._offset = _d._offset + (_dataSize(_v?.__copy__()));
    }
    @:keep
    static public function _value( _d:Ref<T_decoder>, _v:stdgo.reflect.Reflect.Value):Void {
        {
            final __value__ = _v.kind();
            if (__value__ == ((17u32 : stdgo.reflect.Reflect.Kind))) {
                var _l:GoInt = _v.len();
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < _l, _i++, {
                        _d._value(_v.index(_i)?.__copy__());
                    });
                };
            } else if (__value__ == ((25u32 : stdgo.reflect.Reflect.Kind))) {
                var _t:stdgo.reflect.Reflect.Type = _v.type();
                var _l:GoInt = _v.numField();
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < _l, _i++, {
                        {
                            var _v:stdgo.reflect.Reflect.Value = _v.field(_i)?.__copy__();
                            if (_v.canSet() || (_t.field(_i).name != ("_" : GoString))) {
                                _d._value(_v?.__copy__());
                            } else {
                                _d._skip(_v?.__copy__());
                            };
                        };
                    });
                };
            } else if (__value__ == ((23u32 : stdgo.reflect.Reflect.Kind))) {
                var _l:GoInt = _v.len();
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < _l, _i++, {
                        _d._value(_v.index(_i)?.__copy__());
                    });
                };
            } else if (__value__ == ((1u32 : stdgo.reflect.Reflect.Kind))) {
                _v.setBool(_d._bool());
            } else if (__value__ == ((3u32 : stdgo.reflect.Reflect.Kind))) {
                _v.setInt((_d._int8() : GoInt64));
            } else if (__value__ == ((4u32 : stdgo.reflect.Reflect.Kind))) {
                _v.setInt((_d._int16() : GoInt64));
            } else if (__value__ == ((5u32 : stdgo.reflect.Reflect.Kind))) {
                _v.setInt((_d._int32() : GoInt64));
            } else if (__value__ == ((6u32 : stdgo.reflect.Reflect.Kind))) {
                _v.setInt(_d._int64());
            } else if (__value__ == ((8u32 : stdgo.reflect.Reflect.Kind))) {
                _v.setUint((_d._uint8() : GoUInt64));
            } else if (__value__ == ((9u32 : stdgo.reflect.Reflect.Kind))) {
                _v.setUint((_d._uint16() : GoUInt64));
            } else if (__value__ == ((10u32 : stdgo.reflect.Reflect.Kind))) {
                _v.setUint((_d._uint32() : GoUInt64));
            } else if (__value__ == ((11u32 : stdgo.reflect.Reflect.Kind))) {
                _v.setUint(_d._uint64());
            } else if (__value__ == ((13u32 : stdgo.reflect.Reflect.Kind))) {
                _v.setFloat((stdgo.math.Math.float32frombits(_d._uint32()) : GoFloat64));
            } else if (__value__ == ((14u32 : stdgo.reflect.Reflect.Kind))) {
                _v.setFloat(stdgo.math.Math.float64frombits(_d._uint64()));
            } else if (__value__ == ((15u32 : stdgo.reflect.Reflect.Kind))) {
                _v.setComplex(new GoComplex128((stdgo.math.Math.float32frombits(_d._uint32()) : GoFloat64), (stdgo.math.Math.float32frombits(_d._uint32()) : GoFloat64)));
            } else if (__value__ == ((16u32 : stdgo.reflect.Reflect.Kind))) {
                _v.setComplex(new GoComplex128(stdgo.math.Math.float64frombits(_d._uint64()), stdgo.math.Math.float64frombits(_d._uint64())));
            };
        };
    }
    @:keep
    static public function _int64( _d:Ref<T_decoder>):GoInt64 {
        return (_d._uint64() : GoInt64);
    }
    @:keep
    static public function _int32( _d:Ref<T_decoder>):GoInt32 {
        return (_d._uint32() : GoInt32);
    }
    @:keep
    static public function _int16( _d:Ref<T_decoder>):GoInt16 {
        return (_d._uint16() : GoInt16);
    }
    @:keep
    static public function _int8( _d:Ref<T_decoder>):GoInt8 {
        return (_d._uint8() : GoInt8);
    }
    @:keep
    static public function _uint64( _d:Ref<T_decoder>):GoUInt64 {
        var _x:GoUInt64 = _d._order.uint64((_d._buf.__slice__(_d._offset, _d._offset + (8 : GoInt)) : Slice<GoUInt8>));
        _d._offset = _d._offset + ((8 : GoInt));
        return _x;
    }
    @:keep
    static public function _uint32( _d:Ref<T_decoder>):GoUInt32 {
        var _x:GoUInt32 = _d._order.uint32((_d._buf.__slice__(_d._offset, _d._offset + (4 : GoInt)) : Slice<GoUInt8>));
        _d._offset = _d._offset + ((4 : GoInt));
        return _x;
    }
    @:keep
    static public function _uint16( _d:Ref<T_decoder>):GoUInt16 {
        var _x:GoUInt16 = _d._order.uint16((_d._buf.__slice__(_d._offset, _d._offset + (2 : GoInt)) : Slice<GoUInt8>));
        _d._offset = _d._offset + ((2 : GoInt));
        return _x;
    }
    @:keep
    static public function _uint8( _d:Ref<T_decoder>):GoUInt8 {
        var _x:GoUInt8 = _d._buf[(_d._offset : GoInt)];
        _d._offset++;
        return _x;
    }
    @:keep
    static public function _bool( _d:Ref<T_decoder>):Bool {
        var _x:GoUInt8 = _d._buf[(_d._offset : GoInt)];
        _d._offset++;
        return _x != ((0 : GoUInt8));
    }
}
class T_encoder_asInterface {
    @:keep
    public dynamic function _skip(_v:stdgo.reflect.Reflect.Value):Void __self__.value._skip(_v);
    @:keep
    public dynamic function _value(_v:stdgo.reflect.Reflect.Value):Void __self__.value._value(_v);
    @:keep
    public dynamic function _int64(_x:GoInt64):Void __self__.value._int64(_x);
    @:keep
    public dynamic function _int32(_x:GoInt32):Void __self__.value._int32(_x);
    @:keep
    public dynamic function _int16(_x:GoInt16):Void __self__.value._int16(_x);
    @:keep
    public dynamic function _int8(_x:GoInt8):Void __self__.value._int8(_x);
    @:keep
    public dynamic function _uint64(_x:GoUInt64):Void __self__.value._uint64(_x);
    @:keep
    public dynamic function _uint32(_x:GoUInt32):Void __self__.value._uint32(_x);
    @:keep
    public dynamic function _uint16(_x:GoUInt16):Void __self__.value._uint16(_x);
    @:keep
    public dynamic function _uint8(_x:GoUInt8):Void __self__.value._uint8(_x);
    @:keep
    public dynamic function _bool(_x:Bool):Void __self__.value._bool(_x);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_encoder>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.binary.Binary.T_encoder_asInterface) class T_encoder_static_extension {
    @:keep
    static public function _skip( _e:Ref<T_encoder>, _v:stdgo.reflect.Reflect.Value):Void {
        var _n:GoInt = _dataSize(_v?.__copy__());
        var _zero = (_e._buf.__slice__(_e._offset, _e._offset + _n) : Slice<GoUInt8>);
        for (_i in 0 ... _zero.length.toBasic()) {
            _zero[(_i : GoInt)] = (0 : GoUInt8);
        };
        _e._offset = _e._offset + (_n);
    }
    @:keep
    static public function _value( _e:Ref<T_encoder>, _v:stdgo.reflect.Reflect.Value):Void {
        {
            final __value__ = _v.kind();
            if (__value__ == ((17u32 : stdgo.reflect.Reflect.Kind))) {
                var _l:GoInt = _v.len();
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < _l, _i++, {
                        _e._value(_v.index(_i)?.__copy__());
                    });
                };
            } else if (__value__ == ((25u32 : stdgo.reflect.Reflect.Kind))) {
                var _t:stdgo.reflect.Reflect.Type = _v.type();
                var _l:GoInt = _v.numField();
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < _l, _i++, {
                        {
                            var _v:stdgo.reflect.Reflect.Value = _v.field(_i)?.__copy__();
                            if (_v.canSet() || (_t.field(_i).name != ("_" : GoString))) {
                                _e._value(_v?.__copy__());
                            } else {
                                _e._skip(_v?.__copy__());
                            };
                        };
                    });
                };
            } else if (__value__ == ((23u32 : stdgo.reflect.Reflect.Kind))) {
                var _l:GoInt = _v.len();
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < _l, _i++, {
                        _e._value(_v.index(_i)?.__copy__());
                    });
                };
            } else if (__value__ == ((1u32 : stdgo.reflect.Reflect.Kind))) {
                _e._bool(_v.bool_());
            } else if (__value__ == ((2u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((3u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((4u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((5u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((6u32 : stdgo.reflect.Reflect.Kind))) {
                {
                    final __value__ = _v.type().kind();
                    if (__value__ == ((3u32 : stdgo.reflect.Reflect.Kind))) {
                        _e._int8((_v.int_() : GoInt8));
                    } else if (__value__ == ((4u32 : stdgo.reflect.Reflect.Kind))) {
                        _e._int16((_v.int_() : GoInt16));
                    } else if (__value__ == ((5u32 : stdgo.reflect.Reflect.Kind))) {
                        _e._int32((_v.int_() : GoInt32));
                    } else if (__value__ == ((6u32 : stdgo.reflect.Reflect.Kind))) {
                        _e._int64(_v.int_());
                    };
                };
            } else if (__value__ == ((7u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((8u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((9u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((10u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((11u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((12u32 : stdgo.reflect.Reflect.Kind))) {
                {
                    final __value__ = _v.type().kind();
                    if (__value__ == ((8u32 : stdgo.reflect.Reflect.Kind))) {
                        _e._uint8((_v.uint() : GoUInt8));
                    } else if (__value__ == ((9u32 : stdgo.reflect.Reflect.Kind))) {
                        _e._uint16((_v.uint() : GoUInt16));
                    } else if (__value__ == ((10u32 : stdgo.reflect.Reflect.Kind))) {
                        _e._uint32((_v.uint() : GoUInt32));
                    } else if (__value__ == ((11u32 : stdgo.reflect.Reflect.Kind))) {
                        _e._uint64(_v.uint());
                    };
                };
            } else if (__value__ == ((13u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((14u32 : stdgo.reflect.Reflect.Kind))) {
                {
                    final __value__ = _v.type().kind();
                    if (__value__ == ((13u32 : stdgo.reflect.Reflect.Kind))) {
                        _e._uint32(stdgo.math.Math.float32bits((_v.float_() : GoFloat32)));
                    } else if (__value__ == ((14u32 : stdgo.reflect.Reflect.Kind))) {
                        _e._uint64(stdgo.math.Math.float64bits(_v.float_()));
                    };
                };
            } else if (__value__ == ((15u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((16u32 : stdgo.reflect.Reflect.Kind))) {
                {
                    final __value__ = _v.type().kind();
                    if (__value__ == ((15u32 : stdgo.reflect.Reflect.Kind))) {
                        var _x:GoComplex128 = _v.complex();
                        _e._uint32(stdgo.math.Math.float32bits((_x.real : GoFloat32)));
                        _e._uint32(stdgo.math.Math.float32bits((_x.imag : GoFloat32)));
                    } else if (__value__ == ((16u32 : stdgo.reflect.Reflect.Kind))) {
                        var _x:GoComplex128 = _v.complex();
                        _e._uint64(stdgo.math.Math.float64bits(_x.real));
                        _e._uint64(stdgo.math.Math.float64bits(_x.imag));
                    };
                };
            };
        };
    }
    @:keep
    static public function _int64( _e:Ref<T_encoder>, _x:GoInt64):Void {
        _e._uint64((_x : GoUInt64));
    }
    @:keep
    static public function _int32( _e:Ref<T_encoder>, _x:GoInt32):Void {
        _e._uint32((_x : GoUInt32));
    }
    @:keep
    static public function _int16( _e:Ref<T_encoder>, _x:GoInt16):Void {
        _e._uint16((_x : GoUInt16));
    }
    @:keep
    static public function _int8( _e:Ref<T_encoder>, _x:GoInt8):Void {
        _e._uint8((_x : GoUInt8));
    }
    @:keep
    static public function _uint64( _e:Ref<T_encoder>, _x:GoUInt64):Void {
        _e._order.putUint64((_e._buf.__slice__(_e._offset, _e._offset + (8 : GoInt)) : Slice<GoUInt8>), _x);
        _e._offset = _e._offset + ((8 : GoInt));
    }
    @:keep
    static public function _uint32( _e:Ref<T_encoder>, _x:GoUInt32):Void {
        _e._order.putUint32((_e._buf.__slice__(_e._offset, _e._offset + (4 : GoInt)) : Slice<GoUInt8>), _x);
        _e._offset = _e._offset + ((4 : GoInt));
    }
    @:keep
    static public function _uint16( _e:Ref<T_encoder>, _x:GoUInt16):Void {
        _e._order.putUint16((_e._buf.__slice__(_e._offset, _e._offset + (2 : GoInt)) : Slice<GoUInt8>), _x);
        _e._offset = _e._offset + ((2 : GoInt));
    }
    @:keep
    static public function _uint8( _e:Ref<T_encoder>, _x:GoUInt8):Void {
        _e._buf[(_e._offset : GoInt)] = _x;
        _e._offset++;
    }
    @:keep
    static public function _bool( _e:Ref<T_encoder>, _x:Bool):Void {
        if (_x) {
            _e._buf[(_e._offset : GoInt)] = (1 : GoUInt8);
        } else {
            _e._buf[(_e._offset : GoInt)] = (0 : GoUInt8);
        };
        _e._offset++;
    }
}
