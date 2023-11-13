package stdgo.encoding.binary;
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
var _errOverflow : stdgo.Error = stdgo.errors.Errors.new_(("binary: varint overflows a 64-bit integer" : stdgo.GoString)?.__copy__());
/**
    
    
    
**/
var _s : stdgo.encoding.binary.Binary.Struct = (new Struct(
(1 : stdgo.StdGoTypes.GoInt8),
(515 : stdgo.StdGoTypes.GoInt16),
(67438087 : stdgo.StdGoTypes.GoInt32),
(579005069656919567i64 : stdgo.StdGoTypes.GoInt64),
(16 : stdgo.StdGoTypes.GoUInt8),
(4370 : stdgo.StdGoTypes.GoUInt16),
(320083222u32 : stdgo.StdGoTypes.GoUInt32),
(1664107662228069662i64 : stdgo.StdGoTypes.GoUInt64),
stdgo.math.Math.float32frombits((522199330u32 : stdgo.StdGoTypes.GoUInt32)),
stdgo.math.Math.float64frombits((2532189736284989738i64 : stdgo.StdGoTypes.GoUInt64)),
new stdgo.StdGoTypes.GoComplex128(stdgo.math.Math.float32frombits((724315438u32 : stdgo.StdGoTypes.GoUInt32)), stdgo.math.Math.float32frombits((791687474u32 : stdgo.StdGoTypes.GoUInt32))),
new stdgo.StdGoTypes.GoComplex128(stdgo.math.Math.float64frombits((3689632501694216506i64 : stdgo.StdGoTypes.GoUInt64)), stdgo.math.Math.float64frombits((4268353884398829890i64 : stdgo.StdGoTypes.GoUInt64))),
(new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>((67 : stdgo.StdGoTypes.GoUInt8), (68 : stdgo.StdGoTypes.GoUInt8), (69 : stdgo.StdGoTypes.GoUInt8), (70 : stdgo.StdGoTypes.GoUInt8)) : stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>),
true,
(new stdgo.GoArray<Bool>(true, false, true, false) : stdgo.GoArray<Bool>)) : Struct);
/**
    
    
    
**/
var _big : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(
75,
75,
(1 : stdgo.StdGoTypes.GoUInt8),
(2 : stdgo.StdGoTypes.GoUInt8),
(3 : stdgo.StdGoTypes.GoUInt8),
(4 : stdgo.StdGoTypes.GoUInt8),
(5 : stdgo.StdGoTypes.GoUInt8),
(6 : stdgo.StdGoTypes.GoUInt8),
(7 : stdgo.StdGoTypes.GoUInt8),
(8 : stdgo.StdGoTypes.GoUInt8),
(9 : stdgo.StdGoTypes.GoUInt8),
(10 : stdgo.StdGoTypes.GoUInt8),
(11 : stdgo.StdGoTypes.GoUInt8),
(12 : stdgo.StdGoTypes.GoUInt8),
(13 : stdgo.StdGoTypes.GoUInt8),
(14 : stdgo.StdGoTypes.GoUInt8),
(15 : stdgo.StdGoTypes.GoUInt8),
(16 : stdgo.StdGoTypes.GoUInt8),
(17 : stdgo.StdGoTypes.GoUInt8),
(18 : stdgo.StdGoTypes.GoUInt8),
(19 : stdgo.StdGoTypes.GoUInt8),
(20 : stdgo.StdGoTypes.GoUInt8),
(21 : stdgo.StdGoTypes.GoUInt8),
(22 : stdgo.StdGoTypes.GoUInt8),
(23 : stdgo.StdGoTypes.GoUInt8),
(24 : stdgo.StdGoTypes.GoUInt8),
(25 : stdgo.StdGoTypes.GoUInt8),
(26 : stdgo.StdGoTypes.GoUInt8),
(27 : stdgo.StdGoTypes.GoUInt8),
(28 : stdgo.StdGoTypes.GoUInt8),
(29 : stdgo.StdGoTypes.GoUInt8),
(30 : stdgo.StdGoTypes.GoUInt8),
(31 : stdgo.StdGoTypes.GoUInt8),
(32 : stdgo.StdGoTypes.GoUInt8),
(33 : stdgo.StdGoTypes.GoUInt8),
(34 : stdgo.StdGoTypes.GoUInt8),
(35 : stdgo.StdGoTypes.GoUInt8),
(36 : stdgo.StdGoTypes.GoUInt8),
(37 : stdgo.StdGoTypes.GoUInt8),
(38 : stdgo.StdGoTypes.GoUInt8),
(39 : stdgo.StdGoTypes.GoUInt8),
(40 : stdgo.StdGoTypes.GoUInt8),
(41 : stdgo.StdGoTypes.GoUInt8),
(42 : stdgo.StdGoTypes.GoUInt8),
(43 : stdgo.StdGoTypes.GoUInt8),
(44 : stdgo.StdGoTypes.GoUInt8),
(45 : stdgo.StdGoTypes.GoUInt8),
(46 : stdgo.StdGoTypes.GoUInt8),
(47 : stdgo.StdGoTypes.GoUInt8),
(48 : stdgo.StdGoTypes.GoUInt8),
(49 : stdgo.StdGoTypes.GoUInt8),
(50 : stdgo.StdGoTypes.GoUInt8),
(51 : stdgo.StdGoTypes.GoUInt8),
(52 : stdgo.StdGoTypes.GoUInt8),
(53 : stdgo.StdGoTypes.GoUInt8),
(54 : stdgo.StdGoTypes.GoUInt8),
(55 : stdgo.StdGoTypes.GoUInt8),
(56 : stdgo.StdGoTypes.GoUInt8),
(57 : stdgo.StdGoTypes.GoUInt8),
(58 : stdgo.StdGoTypes.GoUInt8),
(59 : stdgo.StdGoTypes.GoUInt8),
(60 : stdgo.StdGoTypes.GoUInt8),
(61 : stdgo.StdGoTypes.GoUInt8),
(62 : stdgo.StdGoTypes.GoUInt8),
(63 : stdgo.StdGoTypes.GoUInt8),
(64 : stdgo.StdGoTypes.GoUInt8),
(65 : stdgo.StdGoTypes.GoUInt8),
(66 : stdgo.StdGoTypes.GoUInt8),
(67 : stdgo.StdGoTypes.GoUInt8),
(68 : stdgo.StdGoTypes.GoUInt8),
(69 : stdgo.StdGoTypes.GoUInt8),
(70 : stdgo.StdGoTypes.GoUInt8),
(1 : stdgo.StdGoTypes.GoUInt8),
(1 : stdgo.StdGoTypes.GoUInt8),
(0 : stdgo.StdGoTypes.GoUInt8),
(1 : stdgo.StdGoTypes.GoUInt8),
(0 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
/**
    
    
    
**/
var _little : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(
75,
75,
(1 : stdgo.StdGoTypes.GoUInt8),
(3 : stdgo.StdGoTypes.GoUInt8),
(2 : stdgo.StdGoTypes.GoUInt8),
(7 : stdgo.StdGoTypes.GoUInt8),
(6 : stdgo.StdGoTypes.GoUInt8),
(5 : stdgo.StdGoTypes.GoUInt8),
(4 : stdgo.StdGoTypes.GoUInt8),
(15 : stdgo.StdGoTypes.GoUInt8),
(14 : stdgo.StdGoTypes.GoUInt8),
(13 : stdgo.StdGoTypes.GoUInt8),
(12 : stdgo.StdGoTypes.GoUInt8),
(11 : stdgo.StdGoTypes.GoUInt8),
(10 : stdgo.StdGoTypes.GoUInt8),
(9 : stdgo.StdGoTypes.GoUInt8),
(8 : stdgo.StdGoTypes.GoUInt8),
(16 : stdgo.StdGoTypes.GoUInt8),
(18 : stdgo.StdGoTypes.GoUInt8),
(17 : stdgo.StdGoTypes.GoUInt8),
(22 : stdgo.StdGoTypes.GoUInt8),
(21 : stdgo.StdGoTypes.GoUInt8),
(20 : stdgo.StdGoTypes.GoUInt8),
(19 : stdgo.StdGoTypes.GoUInt8),
(30 : stdgo.StdGoTypes.GoUInt8),
(29 : stdgo.StdGoTypes.GoUInt8),
(28 : stdgo.StdGoTypes.GoUInt8),
(27 : stdgo.StdGoTypes.GoUInt8),
(26 : stdgo.StdGoTypes.GoUInt8),
(25 : stdgo.StdGoTypes.GoUInt8),
(24 : stdgo.StdGoTypes.GoUInt8),
(23 : stdgo.StdGoTypes.GoUInt8),
(34 : stdgo.StdGoTypes.GoUInt8),
(33 : stdgo.StdGoTypes.GoUInt8),
(32 : stdgo.StdGoTypes.GoUInt8),
(31 : stdgo.StdGoTypes.GoUInt8),
(42 : stdgo.StdGoTypes.GoUInt8),
(41 : stdgo.StdGoTypes.GoUInt8),
(40 : stdgo.StdGoTypes.GoUInt8),
(39 : stdgo.StdGoTypes.GoUInt8),
(38 : stdgo.StdGoTypes.GoUInt8),
(37 : stdgo.StdGoTypes.GoUInt8),
(36 : stdgo.StdGoTypes.GoUInt8),
(35 : stdgo.StdGoTypes.GoUInt8),
(46 : stdgo.StdGoTypes.GoUInt8),
(45 : stdgo.StdGoTypes.GoUInt8),
(44 : stdgo.StdGoTypes.GoUInt8),
(43 : stdgo.StdGoTypes.GoUInt8),
(50 : stdgo.StdGoTypes.GoUInt8),
(49 : stdgo.StdGoTypes.GoUInt8),
(48 : stdgo.StdGoTypes.GoUInt8),
(47 : stdgo.StdGoTypes.GoUInt8),
(58 : stdgo.StdGoTypes.GoUInt8),
(57 : stdgo.StdGoTypes.GoUInt8),
(56 : stdgo.StdGoTypes.GoUInt8),
(55 : stdgo.StdGoTypes.GoUInt8),
(54 : stdgo.StdGoTypes.GoUInt8),
(53 : stdgo.StdGoTypes.GoUInt8),
(52 : stdgo.StdGoTypes.GoUInt8),
(51 : stdgo.StdGoTypes.GoUInt8),
(66 : stdgo.StdGoTypes.GoUInt8),
(65 : stdgo.StdGoTypes.GoUInt8),
(64 : stdgo.StdGoTypes.GoUInt8),
(63 : stdgo.StdGoTypes.GoUInt8),
(62 : stdgo.StdGoTypes.GoUInt8),
(61 : stdgo.StdGoTypes.GoUInt8),
(60 : stdgo.StdGoTypes.GoUInt8),
(59 : stdgo.StdGoTypes.GoUInt8),
(67 : stdgo.StdGoTypes.GoUInt8),
(68 : stdgo.StdGoTypes.GoUInt8),
(69 : stdgo.StdGoTypes.GoUInt8),
(70 : stdgo.StdGoTypes.GoUInt8),
(1 : stdgo.StdGoTypes.GoUInt8),
(1 : stdgo.StdGoTypes.GoUInt8),
(0 : stdgo.StdGoTypes.GoUInt8),
(1 : stdgo.StdGoTypes.GoUInt8),
(0 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
/**
    
    
    
**/
var _src : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(8, 8, (1 : stdgo.StdGoTypes.GoUInt8), (2 : stdgo.StdGoTypes.GoUInt8), (3 : stdgo.StdGoTypes.GoUInt8), (4 : stdgo.StdGoTypes.GoUInt8), (5 : stdgo.StdGoTypes.GoUInt8), (6 : stdgo.StdGoTypes.GoUInt8), (7 : stdgo.StdGoTypes.GoUInt8), (8 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
/**
    
    
    
**/
var _res : stdgo.Slice<stdgo.StdGoTypes.GoInt32> = (new stdgo.Slice<stdgo.StdGoTypes.GoInt32>(2, 2, (16909060 : stdgo.StdGoTypes.GoInt32), (84281096 : stdgo.StdGoTypes.GoInt32)) : stdgo.Slice<stdgo.StdGoTypes.GoInt32>);
/**
    
    
    
**/
var _putbuf : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(8, 8, (0 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
/**
    // Addresses of arrays are easier to manipulate with reflection than are slices.
    
    
**/
var _intArrays : stdgo.Slice<stdgo.StdGoTypes.AnyInterface> = (new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(8, 8, stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.GoArray<stdgo.StdGoTypes.GoInt8>(...([].concat([for (i in 0 ... 100) (0 : stdgo.StdGoTypes.GoInt8)]))) : stdgo.GoArray<stdgo.StdGoTypes.GoInt8>)) : stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoInt8>>)), stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.GoArray<stdgo.StdGoTypes.GoInt16>(...([].concat([for (i in 0 ... 100) (0 : stdgo.StdGoTypes.GoInt16)]))) : stdgo.GoArray<stdgo.StdGoTypes.GoInt16>)) : stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoInt16>>)), stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.GoArray<stdgo.StdGoTypes.GoInt32>(...([].concat([for (i in 0 ... 100) (0 : stdgo.StdGoTypes.GoInt32)]))) : stdgo.GoArray<stdgo.StdGoTypes.GoInt32>)) : stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoInt32>>)), stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.GoArray<stdgo.StdGoTypes.GoInt64>(...([].concat([for (i in 0 ... 100) (0 : stdgo.StdGoTypes.GoInt64)]))) : stdgo.GoArray<stdgo.StdGoTypes.GoInt64>)) : stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoInt64>>)), stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>(...([].concat([for (i in 0 ... 100) (0 : stdgo.StdGoTypes.GoUInt8)]))) : stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>)) : stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>>)), stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.GoArray<stdgo.StdGoTypes.GoUInt16>(...([].concat([for (i in 0 ... 100) (0 : stdgo.StdGoTypes.GoUInt16)]))) : stdgo.GoArray<stdgo.StdGoTypes.GoUInt16>)) : stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoUInt16>>)), stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.GoArray<stdgo.StdGoTypes.GoUInt32>(...([].concat([for (i in 0 ... 100) (0 : stdgo.StdGoTypes.GoUInt32)]))) : stdgo.GoArray<stdgo.StdGoTypes.GoUInt32>)) : stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoUInt32>>)), stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.GoArray<stdgo.StdGoTypes.GoUInt64>(...([].concat([for (i in 0 ... 100) (0 : stdgo.StdGoTypes.GoUInt64)]))) : stdgo.GoArray<stdgo.StdGoTypes.GoUInt64>)) : stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoUInt64>>))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>);
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.StdGoTypes.GoInt64> = (new stdgo.Slice<stdgo.StdGoTypes.GoInt64>(
18,
18,
(-9223372036854775808i64 : stdgo.StdGoTypes.GoInt64),
(-9223372036854775807i64 : stdgo.StdGoTypes.GoInt64),
(-1i64 : stdgo.StdGoTypes.GoInt64),
(0i64 : stdgo.StdGoTypes.GoInt64),
(1i64 : stdgo.StdGoTypes.GoInt64),
(2i64 : stdgo.StdGoTypes.GoInt64),
(10i64 : stdgo.StdGoTypes.GoInt64),
(20i64 : stdgo.StdGoTypes.GoInt64),
(63i64 : stdgo.StdGoTypes.GoInt64),
(64i64 : stdgo.StdGoTypes.GoInt64),
(65i64 : stdgo.StdGoTypes.GoInt64),
(127i64 : stdgo.StdGoTypes.GoInt64),
(128i64 : stdgo.StdGoTypes.GoInt64),
(129i64 : stdgo.StdGoTypes.GoInt64),
(255i64 : stdgo.StdGoTypes.GoInt64),
(256i64 : stdgo.StdGoTypes.GoInt64),
(257i64 : stdgo.StdGoTypes.GoInt64),
(9223372036854775807i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.Slice<stdgo.StdGoTypes.GoInt64>);
/**
    // LittleEndian is the little-endian implementation of ByteOrder and AppendByteOrder.
    
    
**/
var littleEndian = ({} : stdgo.encoding.binary.Binary.T_littleEndian);
/**
    // BigEndian is the big-endian implementation of ByteOrder and AppendByteOrder.
    
    
**/
var bigEndian = ({} : stdgo.encoding.binary.Binary.T_bigEndian);
/**
    
    
    // map[reflect.Type]int
**/
var _structSize = ({} : stdgo.sync.Sync.Map_);
/**
    // NativeEndian is the native-endian implementation of ByteOrder and AppendByteOrder.
    
    
**/
var nativeEndian = ({} : stdgo.encoding.binary.Binary.T_nativeEndian);
/**
    // MaxVarintLenN is the maximum length of a varint-encoded N-bit integer.
    
    
**/
final maxVarintLen16 : stdgo.StdGoTypes.GoUInt64 = (3i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // MaxVarintLenN is the maximum length of a varint-encoded N-bit integer.
    
    
**/
final maxVarintLen32 : stdgo.StdGoTypes.GoUInt64 = (5i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // MaxVarintLenN is the maximum length of a varint-encoded N-bit integer.
    
    
**/
final maxVarintLen64 : stdgo.StdGoTypes.GoUInt64 = (10i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // A ByteOrder specifies how to convert byte slices into
    // 16-, 32-, or 64-bit unsigned integers.
    
    
**/
typedef ByteOrder = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function uint16(_0:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.StdGoTypes.GoUInt16;
    /**
        
        
        
    **/
    public dynamic function uint32(_0:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.StdGoTypes.GoUInt32;
    /**
        
        
        
    **/
    public dynamic function uint64(_0:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.StdGoTypes.GoUInt64;
    /**
        
        
        
    **/
    public dynamic function putUint16(_0:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _1:stdgo.StdGoTypes.GoUInt16):Void;
    /**
        
        
        
    **/
    public dynamic function putUint32(_0:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _1:stdgo.StdGoTypes.GoUInt32):Void;
    /**
        
        
        
    **/
    public dynamic function putUint64(_0:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _1:stdgo.StdGoTypes.GoUInt64):Void;
    /**
        
        
        
    **/
    public dynamic function string():stdgo.GoString;
};
/**
    // AppendByteOrder specifies how to append 16-, 32-, or 64-bit unsigned integers
    // into a byte slice.
    
    
**/
typedef AppendByteOrder = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function appendUint16(_0:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _1:stdgo.StdGoTypes.GoUInt16):stdgo.Slice<stdgo.StdGoTypes.GoByte>;
    /**
        
        
        
    **/
    public dynamic function appendUint32(_0:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _1:stdgo.StdGoTypes.GoUInt32):stdgo.Slice<stdgo.StdGoTypes.GoByte>;
    /**
        
        
        
    **/
    public dynamic function appendUint64(_0:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _1:stdgo.StdGoTypes.GoUInt64):stdgo.Slice<stdgo.StdGoTypes.GoByte>;
    /**
        
        
        
    **/
    public dynamic function string():stdgo.GoString;
};
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.encoding.binary.Binary.T_littleEndian_static_extension) class T_littleEndian {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_littleEndian();
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.encoding.binary.Binary.T_bigEndian_static_extension) class T_bigEndian {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_bigEndian();
    }
}
/**
    
    
    
**/
@:structInit @:private class T_coder {
    public var _order : stdgo.encoding.binary.Binary.ByteOrder = (null : stdgo.encoding.binary.Binary.ByteOrder);
    public var _buf : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    public var _offset : stdgo.StdGoTypes.GoInt = 0;
    public function new(?_order:stdgo.encoding.binary.Binary.ByteOrder, ?_buf:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, ?_offset:stdgo.StdGoTypes.GoInt) {
        if (_order != null) this._order = _order;
        if (_buf != null) this._buf = _buf;
        if (_offset != null) this._offset = _offset;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_coder(_order, _buf, _offset);
    }
}
/**
    
    
    
**/
@:structInit class Struct {
    public var int8 : stdgo.StdGoTypes.GoInt8 = 0;
    public var int16 : stdgo.StdGoTypes.GoInt16 = 0;
    public var int32 : stdgo.StdGoTypes.GoInt32 = 0;
    public var int64 : stdgo.StdGoTypes.GoInt64 = 0;
    public var uint8 : stdgo.StdGoTypes.GoUInt8 = 0;
    public var uint16 : stdgo.StdGoTypes.GoUInt16 = 0;
    public var uint32 : stdgo.StdGoTypes.GoUInt32 = 0;
    public var uint64 : stdgo.StdGoTypes.GoUInt64 = 0;
    public var float32 : stdgo.StdGoTypes.GoFloat32 = 0;
    public var float64 : stdgo.StdGoTypes.GoFloat64 = 0;
    public var complex64 : stdgo.StdGoTypes.GoComplex64 = new stdgo.StdGoTypes.GoComplex64(0, 0);
    public var complex128 : stdgo.StdGoTypes.GoComplex128 = new stdgo.StdGoTypes.GoComplex128(0, 0);
    public var array : stdgo.GoArray<stdgo.StdGoTypes.GoUInt8> = new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>(...[for (i in 0 ... 4) (0 : stdgo.StdGoTypes.GoUInt8)]);
    public var bool_ : Bool = false;
    public var boolArray : stdgo.GoArray<Bool> = new stdgo.GoArray<Bool>(...[for (i in 0 ... 4) false]);
    public function new(?int8:stdgo.StdGoTypes.GoInt8, ?int16:stdgo.StdGoTypes.GoInt16, ?int32:stdgo.StdGoTypes.GoInt32, ?int64:stdgo.StdGoTypes.GoInt64, ?uint8:stdgo.StdGoTypes.GoUInt8, ?uint16:stdgo.StdGoTypes.GoUInt16, ?uint32:stdgo.StdGoTypes.GoUInt32, ?uint64:stdgo.StdGoTypes.GoUInt64, ?float32:stdgo.StdGoTypes.GoFloat32, ?float64:stdgo.StdGoTypes.GoFloat64, ?complex64:stdgo.StdGoTypes.GoComplex64, ?complex128:stdgo.StdGoTypes.GoComplex128, ?array:stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>, ?bool_:Bool, ?boolArray:stdgo.GoArray<Bool>) {
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
/**
    
    
    
**/
@:structInit class T {
    public var int_ : stdgo.StdGoTypes.GoInt = 0;
    public var uint : stdgo.StdGoTypes.GoUInt = 0;
    public var uintptr : stdgo.StdGoTypes.GoUIntptr = 0;
    public var array : stdgo.GoArray<stdgo.StdGoTypes.GoInt> = new stdgo.GoArray<stdgo.StdGoTypes.GoInt>(...[for (i in 0 ... 4) (0 : stdgo.StdGoTypes.GoInt)]);
    public function new(?int_:stdgo.StdGoTypes.GoInt, ?uint:stdgo.StdGoTypes.GoUInt, ?uintptr:stdgo.StdGoTypes.GoUIntptr, ?array:stdgo.GoArray<stdgo.StdGoTypes.GoInt>) {
        if (int_ != null) this.int_ = int_;
        if (uint != null) this.uint = uint;
        if (uintptr != null) this.uintptr = uintptr;
        if (array != null) this.array = array;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T(int_, uint, uintptr, array);
    }
}
/**
    
    
    
**/
@:structInit class BlankFields {
    public var a : stdgo.StdGoTypes.GoUInt32 = 0;
    @:optional
    public var __4 : stdgo.StdGoTypes.GoInt32 = 0;
    public var b : stdgo.StdGoTypes.GoFloat64 = 0;
    @:optional
    public var __5 : stdgo.GoArray<stdgo.StdGoTypes.GoInt16> = new stdgo.GoArray<stdgo.StdGoTypes.GoInt16>(...[for (i in 0 ... 4) (0 : stdgo.StdGoTypes.GoInt16)]);
    public var c : stdgo.StdGoTypes.GoUInt8 = 0;
    @:optional
    public var __6 : stdgo.GoArray<stdgo.StdGoTypes.GoUInt8> = new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>(...[for (i in 0 ... 7) (0 : stdgo.StdGoTypes.GoUInt8)]);
    @:optional
    public var __7 : { var _f : stdgo.GoArray<stdgo.StdGoTypes.GoFloat32>; } = { _f : new stdgo.GoArray<stdgo.StdGoTypes.GoFloat32>(...[for (i in 0 ... 8) (0 : stdgo.StdGoTypes.GoFloat32)]) };
    public function new(?a:stdgo.StdGoTypes.GoUInt32, ?__4:stdgo.StdGoTypes.GoInt32, ?b:stdgo.StdGoTypes.GoFloat64, ?__5:stdgo.GoArray<stdgo.StdGoTypes.GoInt16>, ?c:stdgo.StdGoTypes.GoUInt8, ?__6:stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>, ?__7:{ var _f : stdgo.GoArray<stdgo.StdGoTypes.GoFloat32>; }) {
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
/**
    
    
    
**/
@:structInit class BlankFieldsProbe {
    public var a : stdgo.StdGoTypes.GoUInt32 = 0;
    public var p0 : stdgo.StdGoTypes.GoInt32 = 0;
    public var b : stdgo.StdGoTypes.GoFloat64 = 0;
    public var p1 : stdgo.GoArray<stdgo.StdGoTypes.GoInt16> = new stdgo.GoArray<stdgo.StdGoTypes.GoInt16>(...[for (i in 0 ... 4) (0 : stdgo.StdGoTypes.GoInt16)]);
    public var c : stdgo.StdGoTypes.GoUInt8 = 0;
    public var p2 : stdgo.GoArray<stdgo.StdGoTypes.GoUInt8> = new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>(...[for (i in 0 ... 7) (0 : stdgo.StdGoTypes.GoUInt8)]);
    public var p3 : { var f : stdgo.GoArray<stdgo.StdGoTypes.GoFloat32>; } = { f : new stdgo.GoArray<stdgo.StdGoTypes.GoFloat32>(...[for (i in 0 ... 8) (0 : stdgo.StdGoTypes.GoFloat32)]) };
    public function new(?a:stdgo.StdGoTypes.GoUInt32, ?p0:stdgo.StdGoTypes.GoInt32, ?b:stdgo.StdGoTypes.GoFloat64, ?p1:stdgo.GoArray<stdgo.StdGoTypes.GoInt16>, ?c:stdgo.StdGoTypes.GoUInt8, ?p2:stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>, ?p3:{ var f : stdgo.GoArray<stdgo.StdGoTypes.GoFloat32>; }) {
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
/**
    
    
    
**/
@:structInit class Unexported {
    public var _a : stdgo.StdGoTypes.GoInt32 = 0;
    public function new(?_a:stdgo.StdGoTypes.GoInt32) {
        if (_a != null) this._a = _a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Unexported(_a);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.encoding.binary.Binary.T_byteSliceReader_static_extension) class T_byteSliceReader {
    public var _remain : stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
    public function new(?_remain:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) {
        if (_remain != null) this._remain = _remain;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_byteSliceReader(_remain);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.encoding.binary.Binary.T_nativeEndian_static_extension) class T_nativeEndian {
    @:embedded
    public var _littleEndian : stdgo.encoding.binary.Binary.T_littleEndian = ({} : stdgo.encoding.binary.Binary.T_littleEndian);
    public function new(?_littleEndian:stdgo.encoding.binary.Binary.T_littleEndian) {
        if (_littleEndian != null) this._littleEndian = _littleEndian;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function appendUint16(__0:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, __1:stdgo.StdGoTypes.GoUInt16):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return _littleEndian.appendUint16(__0, __1);
    @:embedded
    public function appendUint32(__0:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, __1:stdgo.StdGoTypes.GoUInt32):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return _littleEndian.appendUint32(__0, __1);
    @:embedded
    public function appendUint64(__0:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, __1:stdgo.StdGoTypes.GoUInt64):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return _littleEndian.appendUint64(__0, __1);
    @:embedded
    public function putUint16(__0:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, __1:stdgo.StdGoTypes.GoUInt16) _littleEndian.putUint16(__0, __1);
    @:embedded
    public function putUint32(__0:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, __1:stdgo.StdGoTypes.GoUInt32) _littleEndian.putUint32(__0, __1);
    @:embedded
    public function putUint64(__0:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, __1:stdgo.StdGoTypes.GoUInt64) _littleEndian.putUint64(__0, __1);
    @:embedded
    public function uint16(__0:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):stdgo.StdGoTypes.GoUInt16 return _littleEndian.uint16(__0);
    @:embedded
    public function uint32(__0:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):stdgo.StdGoTypes.GoUInt32 return _littleEndian.uint32(__0);
    @:embedded
    public function uint64(__0:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):stdgo.StdGoTypes.GoUInt64 return _littleEndian.uint64(__0);
    public function __copy__() {
        return new T_nativeEndian(_littleEndian);
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
@:keep @:allow(stdgo.encoding.binary.Binary.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.encoding.binary.Binary.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _f : stdgo.GoArray<stdgo.StdGoTypes.GoFloat32>;
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
@:keep @:allow(stdgo.encoding.binary.Binary.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo.encoding.binary.Binary.T__struct_1_static_extension) typedef T__struct_1 = {
    public var f : stdgo.GoArray<stdgo.StdGoTypes.GoFloat32>;
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
@:keep @:allow(stdgo.encoding.binary.Binary.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo.encoding.binary.Binary.T__struct_2_static_extension) typedef T__struct_2 = {
    public var _val : stdgo.StdGoTypes.AnyInterface;
    public var _want : stdgo.StdGoTypes.GoInt;
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
@:keep @:allow(stdgo.encoding.binary.Binary.T__struct_3_asInterface) class T__struct_3_static_extension {

}
@:local @:using(stdgo.encoding.binary.Binary.T__struct_3_static_extension) typedef T__struct_3 = {
    public var a : stdgo.encoding.binary.Binary.Struct;
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
@:keep @:allow(stdgo.encoding.binary.Binary.T__struct_4_asInterface) class T__struct_4_static_extension {

}
@:local @:using(stdgo.encoding.binary.Binary.T__struct_4_static_extension) typedef T__struct_4 = {};
class T__struct_5_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_5>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.binary.Binary.T__struct_5_asInterface) class T__struct_5_static_extension {

}
@:local @:using(stdgo.encoding.binary.Binary.T__struct_5_static_extension) typedef T__struct_5 = {
    public var a : stdgo.StdGoTypes.GoUInt8;
    public var b : stdgo.StdGoTypes.GoUInt8;
    public var c : stdgo.StdGoTypes.GoUInt8;
    public var d : stdgo.StdGoTypes.GoUInt8;
    public var e : stdgo.StdGoTypes.GoInt32;
    public var f : stdgo.StdGoTypes.GoFloat64;
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
@:keep @:allow(stdgo.encoding.binary.Binary.T__struct_6_asInterface) class T__struct_6_static_extension {

}
@:local @:using(stdgo.encoding.binary.Binary.T__struct_6_static_extension) typedef T__struct_6 = {
    public var _in : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>;
    public var _name : stdgo.GoString;
    public var _wantN : stdgo.StdGoTypes.GoInt;
    public var _wantValue : stdgo.StdGoTypes.GoUInt64;
};
@:named @:using(stdgo.encoding.binary.Binary.T_decoder_static_extension) typedef T_decoder = stdgo.encoding.binary.Binary.T_coder;
@:named @:using(stdgo.encoding.binary.Binary.T_encoder_static_extension) typedef T_encoder = stdgo.encoding.binary.Binary.T_coder;
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
function read(_r:stdgo.io.Io.Reader, _order:ByteOrder, _data:stdgo.StdGoTypes.AnyInterface):stdgo.Error {
        {
            var _n:stdgo.StdGoTypes.GoInt = _intDataSize(_data);
            if (_n != ((0 : stdgo.StdGoTypes.GoInt))) {
                var _bs = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_n : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
                {
                    var __tmp__ = stdgo.io.Io.readFull(_r, _bs), __0:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return _err;
                    };
                };
                {
                    final __type__ = _data;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<Bool>))) {
                        var _data:stdgo.Pointer<Bool> = __type__ == null ? (null : stdgo.Pointer<Bool>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<Bool>) : __type__ == null ? (null : stdgo.Pointer<Bool>) : __type__.__underlying__().value;
                        _data.value = _bs[(0 : stdgo.StdGoTypes.GoInt)] != ((0 : stdgo.StdGoTypes.GoUInt8));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoInt8>))) {
                        var _data:stdgo.Pointer<stdgo.StdGoTypes.GoInt8> = __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt8>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt8>) : __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt8>) : __type__.__underlying__().value;
                        _data.value = (_bs[(0 : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoInt8);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoUInt8>))) {
                        var _data:stdgo.Pointer<stdgo.StdGoTypes.GoUInt8> = __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt8>) : __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt8>) : __type__.__underlying__().value;
                        _data.value = _bs[(0 : stdgo.StdGoTypes.GoInt)];
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoInt16>))) {
                        var _data:stdgo.Pointer<stdgo.StdGoTypes.GoInt16> = __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt16>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt16>) : __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt16>) : __type__.__underlying__().value;
                        _data.value = (_order.uint16(_bs) : stdgo.StdGoTypes.GoInt16);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoUInt16>))) {
                        var _data:stdgo.Pointer<stdgo.StdGoTypes.GoUInt16> = __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt16>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt16>) : __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt16>) : __type__.__underlying__().value;
                        _data.value = _order.uint16(_bs);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoInt32>))) {
                        var _data:stdgo.Pointer<stdgo.StdGoTypes.GoInt32> = __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt32>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt32>) : __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt32>) : __type__.__underlying__().value;
                        _data.value = (_order.uint32(_bs) : stdgo.StdGoTypes.GoInt32);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>))) {
                        var _data:stdgo.Pointer<stdgo.StdGoTypes.GoUInt32> = __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>) : __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>) : __type__.__underlying__().value;
                        _data.value = _order.uint32(_bs);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoInt64>))) {
                        var _data:stdgo.Pointer<stdgo.StdGoTypes.GoInt64> = __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt64>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt64>) : __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt64>) : __type__.__underlying__().value;
                        _data.value = (_order.uint64(_bs) : stdgo.StdGoTypes.GoInt64);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>))) {
                        var _data:stdgo.Pointer<stdgo.StdGoTypes.GoUInt64> = __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>) : __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>) : __type__.__underlying__().value;
                        _data.value = _order.uint64(_bs);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoFloat32>))) {
                        var _data:stdgo.Pointer<stdgo.StdGoTypes.GoFloat32> = __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoFloat32>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoFloat32>) : __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoFloat32>) : __type__.__underlying__().value;
                        _data.value = stdgo.math.Math.float32frombits(_order.uint32(_bs));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>))) {
                        var _data:stdgo.Pointer<stdgo.StdGoTypes.GoFloat64> = __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>) : __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>) : __type__.__underlying__().value;
                        _data.value = stdgo.math.Math.float64frombits(_order.uint64(_bs));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<Bool>))) {
                        var _data:stdgo.Slice<Bool> = __type__ == null ? (null : stdgo.Slice<Bool>) : __type__.__underlying__() == null ? (null : stdgo.Slice<Bool>) : __type__ == null ? (null : stdgo.Slice<Bool>) : __type__.__underlying__().value;
                        for (_i => _x in _bs) {
                            _data[(_i : stdgo.StdGoTypes.GoInt)] = _x != ((0 : stdgo.StdGoTypes.GoUInt8));
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.StdGoTypes.GoInt8>))) {
                        var _data:stdgo.Slice<stdgo.StdGoTypes.GoInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoInt8>) : __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoInt8>) : __type__.__underlying__().value;
                        for (_i => _x in _bs) {
                            _data[(_i : stdgo.StdGoTypes.GoInt)] = (_x : stdgo.StdGoTypes.GoInt8);
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>))) {
                        var _data:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : __type__.__underlying__().value;
                        stdgo.Go.copySlice(_data, _bs);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.StdGoTypes.GoInt16>))) {
                        var _data:stdgo.Slice<stdgo.StdGoTypes.GoInt16> = __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoInt16>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoInt16>) : __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoInt16>) : __type__.__underlying__().value;
                        for (_i in 0 ... _data.length.toBasic()) {
                            _data[(_i : stdgo.StdGoTypes.GoInt)] = (_order.uint16((_bs.__slice__((2 : stdgo.StdGoTypes.GoInt) * _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.StdGoTypes.GoInt16);
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.StdGoTypes.GoUInt16>))) {
                        var _data:stdgo.Slice<stdgo.StdGoTypes.GoUInt16> = __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt16>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt16>) : __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt16>) : __type__.__underlying__().value;
                        for (_i in 0 ... _data.length.toBasic()) {
                            _data[(_i : stdgo.StdGoTypes.GoInt)] = _order.uint16((_bs.__slice__((2 : stdgo.StdGoTypes.GoInt) * _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.StdGoTypes.GoInt32>))) {
                        var _data:stdgo.Slice<stdgo.StdGoTypes.GoInt32> = __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoInt32>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoInt32>) : __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoInt32>) : __type__.__underlying__().value;
                        for (_i in 0 ... _data.length.toBasic()) {
                            _data[(_i : stdgo.StdGoTypes.GoInt)] = (_order.uint32((_bs.__slice__((4 : stdgo.StdGoTypes.GoInt) * _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.StdGoTypes.GoInt32);
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>))) {
                        var _data:stdgo.Slice<stdgo.StdGoTypes.GoUInt32> = __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>) : __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>) : __type__.__underlying__().value;
                        for (_i in 0 ... _data.length.toBasic()) {
                            _data[(_i : stdgo.StdGoTypes.GoInt)] = _order.uint32((_bs.__slice__((4 : stdgo.StdGoTypes.GoInt) * _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.StdGoTypes.GoInt64>))) {
                        var _data:stdgo.Slice<stdgo.StdGoTypes.GoInt64> = __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoInt64>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoInt64>) : __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoInt64>) : __type__.__underlying__().value;
                        for (_i in 0 ... _data.length.toBasic()) {
                            _data[(_i : stdgo.StdGoTypes.GoInt)] = (_order.uint64((_bs.__slice__((8 : stdgo.StdGoTypes.GoInt) * _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.StdGoTypes.GoInt64);
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>))) {
                        var _data:stdgo.Slice<stdgo.StdGoTypes.GoUInt64> = __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>) : __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>) : __type__.__underlying__().value;
                        for (_i in 0 ... _data.length.toBasic()) {
                            _data[(_i : stdgo.StdGoTypes.GoInt)] = _order.uint64((_bs.__slice__((8 : stdgo.StdGoTypes.GoInt) * _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.StdGoTypes.GoFloat32>))) {
                        var _data:stdgo.Slice<stdgo.StdGoTypes.GoFloat32> = __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoFloat32>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoFloat32>) : __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoFloat32>) : __type__.__underlying__().value;
                        for (_i in 0 ... _data.length.toBasic()) {
                            _data[(_i : stdgo.StdGoTypes.GoInt)] = stdgo.math.Math.float32frombits(_order.uint32((_bs.__slice__((4 : stdgo.StdGoTypes.GoInt) * _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)));
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.StdGoTypes.GoFloat64>))) {
                        var _data:stdgo.Slice<stdgo.StdGoTypes.GoFloat64> = __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoFloat64>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoFloat64>) : __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoFloat64>) : __type__.__underlying__().value;
                        for (_i in 0 ... _data.length.toBasic()) {
                            _data[(_i : stdgo.StdGoTypes.GoInt)] = stdgo.math.Math.float64frombits(_order.uint64((_bs.__slice__((8 : stdgo.StdGoTypes.GoInt) * _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)));
                        };
                    } else {
                        var _data:stdgo.StdGoTypes.AnyInterface = __type__?.__underlying__();
                        _n = (0 : stdgo.StdGoTypes.GoInt);
                    };
                };
                if (_n != ((0 : stdgo.StdGoTypes.GoInt))) {
                    return (null : stdgo.Error);
                };
            };
        };
        var _v:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.valueOf(_data)?.__copy__();
        var _size:stdgo.StdGoTypes.GoInt = (-1 : stdgo.StdGoTypes.GoInt);
        {
            final __value__ = _v.kind();
            if (__value__ == ((22u32 : stdgo.reflect.Reflect.Kind))) {
                _v = _v.elem()?.__copy__();
                _size = _dataSize(_v?.__copy__());
            } else if (__value__ == ((23u32 : stdgo.reflect.Reflect.Kind))) {
                _size = _dataSize(_v?.__copy__());
            };
        };
        if (_size < (0 : stdgo.StdGoTypes.GoInt)) {
            return stdgo.errors.Errors.new_(("binary.Read: invalid type " : stdgo.GoString) + (stdgo.reflect.Reflect.typeOf(_data).string() : stdgo.GoString)?.__copy__()?.__copy__());
        };
        var _d = (stdgo.Go.setRef(({ _order : _order, _buf : new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_size : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__() } : T_decoder)) : stdgo.StdGoTypes.Ref<stdgo.encoding.binary.Binary.T_decoder>);
        {
            var __tmp__ = stdgo.io.Io.readFull(_r, _d._buf), __1:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        _d._value(_v?.__copy__());
        return (null : stdgo.Error);
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
function write(_w:stdgo.io.Io.Writer, _order:ByteOrder, _data:stdgo.StdGoTypes.AnyInterface):stdgo.Error {
        {
            var _n:stdgo.StdGoTypes.GoInt = _intDataSize(_data);
            if (_n != ((0 : stdgo.StdGoTypes.GoInt))) {
                var _bs = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_n : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
                {
                    final __type__ = _data;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<Bool>))) {
                        var _v:stdgo.Pointer<Bool> = __type__ == null ? (null : stdgo.Pointer<Bool>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<Bool>) : __type__ == null ? (null : stdgo.Pointer<Bool>) : __type__.__underlying__().value;
                        if (_v.value) {
                            _bs[(0 : stdgo.StdGoTypes.GoInt)] = (1 : stdgo.StdGoTypes.GoUInt8);
                        } else {
                            _bs[(0 : stdgo.StdGoTypes.GoInt)] = (0 : stdgo.StdGoTypes.GoUInt8);
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : Bool))) {
                        var _v:Bool = __type__ == null ? false : __type__.__underlying__() == null ? false : __type__ == null ? false : __type__.__underlying__().value;
                        if (_v) {
                            _bs[(0 : stdgo.StdGoTypes.GoInt)] = (1 : stdgo.StdGoTypes.GoUInt8);
                        } else {
                            _bs[(0 : stdgo.StdGoTypes.GoInt)] = (0 : stdgo.StdGoTypes.GoUInt8);
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<Bool>))) {
                        var _v:stdgo.Slice<Bool> = __type__ == null ? (null : stdgo.Slice<Bool>) : __type__.__underlying__() == null ? (null : stdgo.Slice<Bool>) : __type__ == null ? (null : stdgo.Slice<Bool>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            if (_x) {
                                _bs[(_i : stdgo.StdGoTypes.GoInt)] = (1 : stdgo.StdGoTypes.GoUInt8);
                            } else {
                                _bs[(_i : stdgo.StdGoTypes.GoInt)] = (0 : stdgo.StdGoTypes.GoUInt8);
                            };
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoInt8>))) {
                        var _v:stdgo.Pointer<stdgo.StdGoTypes.GoInt8> = __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt8>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt8>) : __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt8>) : __type__.__underlying__().value;
                        _bs[(0 : stdgo.StdGoTypes.GoInt)] = (_v.value : stdgo.StdGoTypes.GoByte);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.GoInt8))) {
                        var _v:stdgo.StdGoTypes.GoInt8 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _bs[(0 : stdgo.StdGoTypes.GoInt)] = (_v : stdgo.StdGoTypes.GoByte);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.StdGoTypes.GoInt8>))) {
                        var _v:stdgo.Slice<stdgo.StdGoTypes.GoInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoInt8>) : __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoInt8>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            _bs[(_i : stdgo.StdGoTypes.GoInt)] = (_x : stdgo.StdGoTypes.GoByte);
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoUInt8>))) {
                        var _v:stdgo.Pointer<stdgo.StdGoTypes.GoUInt8> = __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt8>) : __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt8>) : __type__.__underlying__().value;
                        _bs[(0 : stdgo.StdGoTypes.GoInt)] = _v.value;
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.GoUInt8))) {
                        var _v:stdgo.StdGoTypes.GoUInt8 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _bs[(0 : stdgo.StdGoTypes.GoInt)] = _v;
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>))) {
                        var _v:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : __type__.__underlying__().value;
                        _bs = _v;
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoInt16>))) {
                        var _v:stdgo.Pointer<stdgo.StdGoTypes.GoInt16> = __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt16>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt16>) : __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt16>) : __type__.__underlying__().value;
                        _order.putUint16(_bs, (_v.value : stdgo.StdGoTypes.GoUInt16));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.GoInt16))) {
                        var _v:stdgo.StdGoTypes.GoInt16 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _order.putUint16(_bs, (_v : stdgo.StdGoTypes.GoUInt16));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.StdGoTypes.GoInt16>))) {
                        var _v:stdgo.Slice<stdgo.StdGoTypes.GoInt16> = __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoInt16>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoInt16>) : __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoInt16>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            _order.putUint16((_bs.__slice__((2 : stdgo.StdGoTypes.GoInt) * _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_x : stdgo.StdGoTypes.GoUInt16));
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoUInt16>))) {
                        var _v:stdgo.Pointer<stdgo.StdGoTypes.GoUInt16> = __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt16>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt16>) : __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt16>) : __type__.__underlying__().value;
                        _order.putUint16(_bs, _v.value);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.GoUInt16))) {
                        var _v:stdgo.StdGoTypes.GoUInt16 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _order.putUint16(_bs, _v);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.StdGoTypes.GoUInt16>))) {
                        var _v:stdgo.Slice<stdgo.StdGoTypes.GoUInt16> = __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt16>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt16>) : __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt16>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            _order.putUint16((_bs.__slice__((2 : stdgo.StdGoTypes.GoInt) * _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _x);
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoInt32>))) {
                        var _v:stdgo.Pointer<stdgo.StdGoTypes.GoInt32> = __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt32>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt32>) : __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt32>) : __type__.__underlying__().value;
                        _order.putUint32(_bs, (_v.value : stdgo.StdGoTypes.GoUInt32));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.GoInt32))) {
                        var _v:stdgo.StdGoTypes.GoInt32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _order.putUint32(_bs, (_v : stdgo.StdGoTypes.GoUInt32));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.StdGoTypes.GoInt32>))) {
                        var _v:stdgo.Slice<stdgo.StdGoTypes.GoInt32> = __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoInt32>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoInt32>) : __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoInt32>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            _order.putUint32((_bs.__slice__((4 : stdgo.StdGoTypes.GoInt) * _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_x : stdgo.StdGoTypes.GoUInt32));
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>))) {
                        var _v:stdgo.Pointer<stdgo.StdGoTypes.GoUInt32> = __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>) : __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>) : __type__.__underlying__().value;
                        _order.putUint32(_bs, _v.value);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.GoUInt32))) {
                        var _v:stdgo.StdGoTypes.GoUInt32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _order.putUint32(_bs, _v);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>))) {
                        var _v:stdgo.Slice<stdgo.StdGoTypes.GoUInt32> = __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>) : __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            _order.putUint32((_bs.__slice__((4 : stdgo.StdGoTypes.GoInt) * _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _x);
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoInt64>))) {
                        var _v:stdgo.Pointer<stdgo.StdGoTypes.GoInt64> = __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt64>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt64>) : __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoInt64>) : __type__.__underlying__().value;
                        _order.putUint64(_bs, (_v.value : stdgo.StdGoTypes.GoUInt64));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.GoInt64))) {
                        var _v:stdgo.StdGoTypes.GoInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _order.putUint64(_bs, (_v : stdgo.StdGoTypes.GoUInt64));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.StdGoTypes.GoInt64>))) {
                        var _v:stdgo.Slice<stdgo.StdGoTypes.GoInt64> = __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoInt64>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoInt64>) : __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoInt64>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            _order.putUint64((_bs.__slice__((8 : stdgo.StdGoTypes.GoInt) * _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_x : stdgo.StdGoTypes.GoUInt64));
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>))) {
                        var _v:stdgo.Pointer<stdgo.StdGoTypes.GoUInt64> = __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>) : __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>) : __type__.__underlying__().value;
                        _order.putUint64(_bs, _v.value);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.GoUInt64))) {
                        var _v:stdgo.StdGoTypes.GoUInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _order.putUint64(_bs, _v);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>))) {
                        var _v:stdgo.Slice<stdgo.StdGoTypes.GoUInt64> = __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>) : __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            _order.putUint64((_bs.__slice__((8 : stdgo.StdGoTypes.GoInt) * _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _x);
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoFloat32>))) {
                        var _v:stdgo.Pointer<stdgo.StdGoTypes.GoFloat32> = __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoFloat32>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoFloat32>) : __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoFloat32>) : __type__.__underlying__().value;
                        _order.putUint32(_bs, stdgo.math.Math.float32bits(_v.value));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.GoFloat32))) {
                        var _v:stdgo.StdGoTypes.GoFloat32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _order.putUint32(_bs, stdgo.math.Math.float32bits(_v));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.StdGoTypes.GoFloat32>))) {
                        var _v:stdgo.Slice<stdgo.StdGoTypes.GoFloat32> = __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoFloat32>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoFloat32>) : __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoFloat32>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            _order.putUint32((_bs.__slice__((4 : stdgo.StdGoTypes.GoInt) * _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), stdgo.math.Math.float32bits(_x));
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>))) {
                        var _v:stdgo.Pointer<stdgo.StdGoTypes.GoFloat64> = __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>) : __type__ == null ? (null : stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>) : __type__.__underlying__().value;
                        _order.putUint64(_bs, stdgo.math.Math.float64bits(_v.value));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.GoFloat64))) {
                        var _v:stdgo.StdGoTypes.GoFloat64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                        _order.putUint64(_bs, stdgo.math.Math.float64bits(_v));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.StdGoTypes.GoFloat64>))) {
                        var _v:stdgo.Slice<stdgo.StdGoTypes.GoFloat64> = __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoFloat64>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoFloat64>) : __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoFloat64>) : __type__.__underlying__().value;
                        for (_i => _x in _v) {
                            _order.putUint64((_bs.__slice__((8 : stdgo.StdGoTypes.GoInt) * _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), stdgo.math.Math.float64bits(_x));
                        };
                    };
                };
                var __tmp__ = _w.write(_bs), __0:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                return _err;
            };
        };
        var _v:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.indirect(stdgo.reflect.Reflect.valueOf(_data)?.__copy__())?.__copy__();
        var _size:stdgo.StdGoTypes.GoInt = _dataSize(_v?.__copy__());
        if (_size < (0 : stdgo.StdGoTypes.GoInt)) {
            return stdgo.errors.Errors.new_(("binary.Write: some values are not fixed-sized in type " : stdgo.GoString) + (stdgo.reflect.Reflect.typeOf(_data).string() : stdgo.GoString)?.__copy__()?.__copy__());
        };
        var _buf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_size : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        var _e = (stdgo.Go.setRef(({ _order : _order, _buf : _buf } : T_encoder)) : stdgo.StdGoTypes.Ref<stdgo.encoding.binary.Binary.T_encoder>);
        _e._value(_v?.__copy__());
        var __tmp__ = _w.write(_buf), __1:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
/**
    // Size returns how many bytes Write would generate to encode the value v, which
    // must be a fixed-size value or a slice of fixed-size values, or a pointer to such data.
    // If v is neither of these, Size returns -1.
**/
function size(_v:stdgo.StdGoTypes.AnyInterface):stdgo.StdGoTypes.GoInt {
        return _dataSize(stdgo.reflect.Reflect.indirect(stdgo.reflect.Reflect.valueOf(_v)?.__copy__())?.__copy__());
    }
/**
    // dataSize returns the number of bytes the actual data represented by v occupies in memory.
    // For compound structures, it sums the sizes of the elements. Thus, for instance, for a slice
    // it returns the length of the slice times the element size and does not count the memory
    // occupied by the header. If the type of v is not acceptable, dataSize returns -1.
**/
function _dataSize(_v:stdgo.reflect.Reflect.Value):stdgo.StdGoTypes.GoInt {
        {
            final __value__ = _v.kind();
            if (__value__ == ((23u32 : stdgo.reflect.Reflect.Kind))) {
                {
                    var _s:stdgo.StdGoTypes.GoInt = _sizeof(_v.type().elem());
                    if (_s >= (0 : stdgo.StdGoTypes.GoInt)) {
                        return _s * _v.len();
                    };
                };
            } else if (__value__ == ((25u32 : stdgo.reflect.Reflect.Kind))) {
                var _t:stdgo.reflect.Reflect.Type = _v.type();
                {
                    var __tmp__ = _structSize.load(stdgo.Go.toInterface(_t)), _size:stdgo.StdGoTypes.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        return (stdgo.Go.typeAssert((_size : stdgo.StdGoTypes.GoInt)) : stdgo.StdGoTypes.GoInt);
                    };
                };
                var _size:stdgo.StdGoTypes.GoInt = _sizeof(_t);
                _structSize.store(stdgo.Go.toInterface(_t), stdgo.Go.toInterface(_size));
                return _size;
            } else {
                if (_v.isValid()) {
                    return _sizeof(_v.type());
                };
            };
        };
        return (-1 : stdgo.StdGoTypes.GoInt);
    }
/**
    // sizeof returns the size >= 0 of variables for the given type or -1 if the type is not acceptable.
**/
function _sizeof(_t:stdgo.reflect.Reflect.Type):stdgo.StdGoTypes.GoInt {
        {
            final __value__ = _t.kind();
            if (__value__ == ((17u32 : stdgo.reflect.Reflect.Kind))) {
                {
                    var _s:stdgo.StdGoTypes.GoInt = _sizeof(_t.elem());
                    if (_s >= (0 : stdgo.StdGoTypes.GoInt)) {
                        return _s * _t.len();
                    };
                };
            } else if (__value__ == ((25u32 : stdgo.reflect.Reflect.Kind))) {
                var _sum:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                {
                    var __0:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), __1:stdgo.StdGoTypes.GoInt = _t.numField(), _n:stdgo.StdGoTypes.GoInt = __1, _i:stdgo.StdGoTypes.GoInt = __0;
                    stdgo.Go.cfor(_i < _n, _i++, {
                        var _s:stdgo.StdGoTypes.GoInt = _sizeof(_t.field(_i).type);
                        if (_s < (0 : stdgo.StdGoTypes.GoInt)) {
                            return (-1 : stdgo.StdGoTypes.GoInt);
                        };
                        _sum = _sum + (_s);
                    });
                };
                return _sum;
            } else if (__value__ == ((1u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((8u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((9u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((10u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((11u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((3u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((4u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((5u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((6u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((13u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((14u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((15u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((16u32 : stdgo.reflect.Reflect.Kind))) {
                return (_t.size() : stdgo.StdGoTypes.GoInt);
            };
        };
        return (-1 : stdgo.StdGoTypes.GoInt);
    }
/**
    // intDataSize returns the size of the data required to represent the data when encoded.
    // It returns zero if the type cannot be implemented by the fast path in Read or Write.
**/
function _intDataSize(_data:stdgo.StdGoTypes.AnyInterface):stdgo.StdGoTypes.GoInt {
        {
            final __type__ = _data;
            if (stdgo.Go.typeEquals((__type__ : Bool)) || stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.GoInt8)) || stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.GoUInt8)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<Bool>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoInt8>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoUInt8>))) {
                var _data:stdgo.StdGoTypes.AnyInterface = __type__?.__underlying__();
                return (1 : stdgo.StdGoTypes.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<Bool>))) {
                var _data:stdgo.Slice<Bool> = __type__ == null ? (null : stdgo.Slice<Bool>) : __type__.__underlying__() == null ? (null : stdgo.Slice<Bool>) : __type__ == null ? (null : stdgo.Slice<Bool>) : __type__.__underlying__().value;
                return (_data.length);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.StdGoTypes.GoInt8>))) {
                var _data:stdgo.Slice<stdgo.StdGoTypes.GoInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoInt8>) : __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoInt8>) : __type__.__underlying__().value;
                return (_data.length);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>))) {
                var _data:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : __type__.__underlying__().value;
                return (_data.length);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.GoInt16)) || stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.GoUInt16)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoInt16>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoUInt16>))) {
                var _data:stdgo.StdGoTypes.AnyInterface = __type__?.__underlying__();
                return (2 : stdgo.StdGoTypes.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.StdGoTypes.GoInt16>))) {
                var _data:stdgo.Slice<stdgo.StdGoTypes.GoInt16> = __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoInt16>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoInt16>) : __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoInt16>) : __type__.__underlying__().value;
                return (2 : stdgo.StdGoTypes.GoInt) * (_data.length);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.StdGoTypes.GoUInt16>))) {
                var _data:stdgo.Slice<stdgo.StdGoTypes.GoUInt16> = __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt16>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt16>) : __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt16>) : __type__.__underlying__().value;
                return (2 : stdgo.StdGoTypes.GoInt) * (_data.length);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.GoInt32)) || stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.GoUInt32)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoInt32>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>))) {
                var _data:stdgo.StdGoTypes.AnyInterface = __type__?.__underlying__();
                return (4 : stdgo.StdGoTypes.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.StdGoTypes.GoInt32>))) {
                var _data:stdgo.Slice<stdgo.StdGoTypes.GoInt32> = __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoInt32>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoInt32>) : __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoInt32>) : __type__.__underlying__().value;
                return (4 : stdgo.StdGoTypes.GoInt) * (_data.length);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>))) {
                var _data:stdgo.Slice<stdgo.StdGoTypes.GoUInt32> = __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>) : __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt32>) : __type__.__underlying__().value;
                return (4 : stdgo.StdGoTypes.GoInt) * (_data.length);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.GoInt64)) || stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.GoUInt64)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoInt64>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>))) {
                var _data:stdgo.StdGoTypes.AnyInterface = __type__?.__underlying__();
                return (8 : stdgo.StdGoTypes.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.StdGoTypes.GoInt64>))) {
                var _data:stdgo.Slice<stdgo.StdGoTypes.GoInt64> = __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoInt64>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoInt64>) : __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoInt64>) : __type__.__underlying__().value;
                return (8 : stdgo.StdGoTypes.GoInt) * (_data.length);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>))) {
                var _data:stdgo.Slice<stdgo.StdGoTypes.GoUInt64> = __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>) : __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>) : __type__.__underlying__().value;
                return (8 : stdgo.StdGoTypes.GoInt) * (_data.length);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.GoFloat32)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoFloat32>))) {
                var _data:stdgo.StdGoTypes.AnyInterface = __type__?.__underlying__();
                return (4 : stdgo.StdGoTypes.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.GoFloat64)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>))) {
                var _data:stdgo.StdGoTypes.AnyInterface = __type__?.__underlying__();
                return (8 : stdgo.StdGoTypes.GoInt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.StdGoTypes.GoFloat32>))) {
                var _data:stdgo.Slice<stdgo.StdGoTypes.GoFloat32> = __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoFloat32>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoFloat32>) : __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoFloat32>) : __type__.__underlying__().value;
                return (4 : stdgo.StdGoTypes.GoInt) * (_data.length);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.StdGoTypes.GoFloat64>))) {
                var _data:stdgo.Slice<stdgo.StdGoTypes.GoFloat64> = __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoFloat64>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoFloat64>) : __type__ == null ? (null : stdgo.Slice<stdgo.StdGoTypes.GoFloat64>) : __type__.__underlying__().value;
                return (8 : stdgo.StdGoTypes.GoInt) * (_data.length);
            };
        };
        return (0 : stdgo.StdGoTypes.GoInt);
    }
function _checkResult(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _dir:stdgo.GoString, _order:ByteOrder, _err:stdgo.Error, _have:stdgo.StdGoTypes.AnyInterface, _want:stdgo.StdGoTypes.AnyInterface):Void {
        if (_err != null) {
            _t.errorf(("%v %v: %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_order), stdgo.Go.toInterface(_err));
            return;
        };
        if (!stdgo.reflect.Reflect.deepEqual(_have, _want)) {
            _t.errorf(("%v %v:\n\thave %+v\n\twant %+v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_order), _have, _want);
        };
    }
function _testRead(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _order:ByteOrder, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _s1:stdgo.StdGoTypes.AnyInterface):Void {
        var _s2:Struct = ({} : stdgo.encoding.binary.Binary.Struct);
        var _err:stdgo.Error = read(stdgo.Go.asInterface(stdgo.bytes.Bytes.newReader(_b)), _order, stdgo.Go.toInterface((stdgo.Go.setRef(_s2) : stdgo.StdGoTypes.Ref<stdgo.encoding.binary.Binary.Struct>)));
        _checkResult(_t, ("Read" : stdgo.GoString)?.__copy__(), _order, _err, stdgo.Go.toInterface(_s2), _s1);
    }
function _testWrite(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _order:ByteOrder, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _s1:stdgo.StdGoTypes.AnyInterface):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _err:stdgo.Error = write(stdgo.Go.asInterface(_buf), _order, _s1);
        _checkResult(_t, ("Write" : stdgo.GoString)?.__copy__(), _order, _err, stdgo.Go.toInterface(_buf.bytes()), stdgo.Go.toInterface(_b));
    }
function testLittleEndianRead(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        _testRead(_t, stdgo.Go.asInterface(littleEndian), _little, stdgo.Go.toInterface(_s));
    }
function testLittleEndianWrite(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        _testWrite(_t, stdgo.Go.asInterface(littleEndian), _little, stdgo.Go.toInterface(_s));
    }
function testLittleEndianPtrWrite(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        _testWrite(_t, stdgo.Go.asInterface(littleEndian), _little, stdgo.Go.toInterface((stdgo.Go.setRef(_s) : stdgo.StdGoTypes.Ref<stdgo.encoding.binary.Binary.Struct>)));
    }
function testBigEndianRead(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        _testRead(_t, stdgo.Go.asInterface(bigEndian), _big, stdgo.Go.toInterface(_s));
    }
function testBigEndianWrite(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        _testWrite(_t, stdgo.Go.asInterface(bigEndian), _big, stdgo.Go.toInterface(_s));
    }
function testBigEndianPtrWrite(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        _testWrite(_t, stdgo.Go.asInterface(bigEndian), _big, stdgo.Go.toInterface((stdgo.Go.setRef(_s) : stdgo.StdGoTypes.Ref<stdgo.encoding.binary.Binary.Struct>)));
    }
function testReadSlice(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _slice = new stdgo.Slice<stdgo.StdGoTypes.GoInt32>((2 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        var _err:stdgo.Error = read(stdgo.Go.asInterface(stdgo.bytes.Bytes.newReader(_src)), stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(_slice));
        _checkResult(_t, ("ReadSlice" : stdgo.GoString)?.__copy__(), stdgo.Go.asInterface(bigEndian), _err, stdgo.Go.toInterface(_slice), stdgo.Go.toInterface(_res));
    }
function testWriteSlice(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _err:stdgo.Error = write(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(_res));
        _checkResult(_t, ("WriteSlice" : stdgo.GoString)?.__copy__(), stdgo.Go.asInterface(bigEndian), _err, stdgo.Go.toInterface(_buf.bytes()), stdgo.Go.toInterface(_src));
    }
function testReadBool(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _res:Bool = false;
        var _err:stdgo.Error = (null : stdgo.Error);
        _err = read(stdgo.Go.asInterface(stdgo.bytes.Bytes.newReader((new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(1, 1, (0 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>))), stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_res)));
        _checkResult(_t, ("ReadBool" : stdgo.GoString)?.__copy__(), stdgo.Go.asInterface(bigEndian), _err, stdgo.Go.toInterface(_res), stdgo.Go.toInterface(false));
        _res = false;
        _err = read(stdgo.Go.asInterface(stdgo.bytes.Bytes.newReader((new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(1, 1, (1 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>))), stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_res)));
        _checkResult(_t, ("ReadBool" : stdgo.GoString)?.__copy__(), stdgo.Go.asInterface(bigEndian), _err, stdgo.Go.toInterface(_res), stdgo.Go.toInterface(true));
        _res = false;
        _err = read(stdgo.Go.asInterface(stdgo.bytes.Bytes.newReader((new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(1, 1, (2 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>))), stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_res)));
        _checkResult(_t, ("ReadBool" : stdgo.GoString)?.__copy__(), stdgo.Go.asInterface(bigEndian), _err, stdgo.Go.toInterface(_res), stdgo.Go.toInterface(true));
    }
function testReadBoolSlice(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _slice = new stdgo.Slice<Bool>((4 : stdgo.StdGoTypes.GoInt).toBasic(), 0);
        var _err:stdgo.Error = read(stdgo.Go.asInterface(stdgo.bytes.Bytes.newReader((new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(4, 4, (0 : stdgo.StdGoTypes.GoUInt8), (1 : stdgo.StdGoTypes.GoUInt8), (2 : stdgo.StdGoTypes.GoUInt8), (255 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>))), stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(_slice));
        _checkResult(_t, ("ReadBoolSlice" : stdgo.GoString)?.__copy__(), stdgo.Go.asInterface(bigEndian), _err, stdgo.Go.toInterface(_slice), stdgo.Go.toInterface((new stdgo.Slice<Bool>(4, 4, false, true, true, true) : stdgo.Slice<Bool>)));
    }
function testSliceRoundTrip(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        for (__0 => _array in _intArrays) {
            var _src:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.valueOf(_array).elem()?.__copy__();
            var _unsigned:Bool = false;
            {
                final __value__ = _src.index((0 : stdgo.StdGoTypes.GoInt)).kind();
                if (__value__ == ((8u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((9u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((10u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((11u32 : stdgo.reflect.Reflect.Kind))) {
                    _unsigned = true;
                };
            };
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _src.len(), _i++, {
                    if (_unsigned) {
                        _src.index(_i).setUint((_i * (124076833 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoUInt64));
                    } else {
                        _src.index(_i).setInt((_i * (124076833 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt64));
                    };
                });
            };
            _buf.reset();
            var _srcSlice:stdgo.reflect.Reflect.Value = _src.slice((0 : stdgo.StdGoTypes.GoInt), _src.len())?.__copy__();
            var _err:stdgo.Error = write(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(bigEndian), _srcSlice.interface_());
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            var _dst:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.new_(_src.type()).elem()?.__copy__();
            var _dstSlice:stdgo.reflect.Reflect.Value = _dst.slice((0 : stdgo.StdGoTypes.GoInt), _dst.len())?.__copy__();
            _err = read(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(bigEndian), _dstSlice.interface_());
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            if (!stdgo.reflect.Reflect.deepEqual(_src.interface_(), _dst.interface_())) {
                _t.fatal(stdgo.Go.toInterface(stdgo.Go.asInterface(_src)));
            };
        };
    }
function testWriteT(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _ts:stdgo.encoding.binary.Binary.T = (new T() : T);
        {
            var _err:stdgo.Error = write(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(_ts));
            if (_err == null) {
                _t.errorf(("WriteT: have err == nil, want non-nil" : stdgo.GoString)?.__copy__());
            };
        };
        var _tv:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.indirect(stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(_ts))?.__copy__())?.__copy__();
        {
            var __0:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), __1:stdgo.StdGoTypes.GoInt = _tv.numField(), _n:stdgo.StdGoTypes.GoInt = __1, _i:stdgo.StdGoTypes.GoInt = __0;
            stdgo.Go.cfor(_i < _n, _i++, {
                var _typ:stdgo.GoString = (_tv.field(_i).type().string() : stdgo.GoString)?.__copy__();
                if (_typ == (("[4]int" : stdgo.GoString))) {
                    _typ = ("int" : stdgo.GoString)?.__copy__();
                };
                {
                    var _err:stdgo.Error = write(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(bigEndian), _tv.field(_i).interface_());
                    if (_err == null) {
                        _t.errorf(("WriteT.%v: have err == nil, want non-nil" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_tv.field(_i).type()));
                    } else if (!stdgo.strings.Strings.contains(_err.error()?.__copy__(), _typ?.__copy__())) {
                        _t.errorf(("WriteT: have err == %q, want it to mention %s" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_typ));
                    };
                };
            });
        };
    }
function testBlankFields(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _b1:stdgo.encoding.binary.Binary.BlankFields = ({ a : (1234567890u32 : stdgo.StdGoTypes.GoUInt32), b : (2.718281828 : stdgo.StdGoTypes.GoFloat64), c : (42 : stdgo.StdGoTypes.GoUInt8) } : BlankFields);
        {
            var _err:stdgo.Error = write(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(littleEndian), stdgo.Go.toInterface((stdgo.Go.setRef(_b1) : stdgo.StdGoTypes.Ref<stdgo.encoding.binary.Binary.BlankFields>)));
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        var _p:BlankFieldsProbe = ({} : stdgo.encoding.binary.Binary.BlankFieldsProbe);
        {
            var _err:stdgo.Error = read(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(littleEndian), stdgo.Go.toInterface((stdgo.Go.setRef(_p) : stdgo.StdGoTypes.Ref<stdgo.encoding.binary.Binary.BlankFieldsProbe>)));
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        if ((((_p.p0 != (0 : stdgo.StdGoTypes.GoInt32)) || (_p.p1[(0 : stdgo.StdGoTypes.GoInt)] != (0 : stdgo.StdGoTypes.GoInt16))) || (_p.p2[(0 : stdgo.StdGoTypes.GoInt)] != (0 : stdgo.StdGoTypes.GoUInt8))) || (_p.p3.f[(0 : stdgo.StdGoTypes.GoInt)] != (0 : stdgo.StdGoTypes.GoFloat64))) {
            _t.errorf(("non-zero values for originally blank fields: %#v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_p));
        };
        {
            var _err:stdgo.Error = write(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(littleEndian), stdgo.Go.toInterface((stdgo.Go.setRef(_p) : stdgo.StdGoTypes.Ref<stdgo.encoding.binary.Binary.BlankFieldsProbe>)));
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        var _b2:BlankFields = ({} : stdgo.encoding.binary.Binary.BlankFields);
        {
            var _err:stdgo.Error = read(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(littleEndian), stdgo.Go.toInterface((stdgo.Go.setRef(_b2) : stdgo.StdGoTypes.Ref<stdgo.encoding.binary.Binary.BlankFields>)));
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        if (((_b1.a != _b2.a) || (_b1.b != _b2.b)) || (_b1.c != _b2.c)) {
            _t.errorf(("%#v != %#v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_b1), stdgo.Go.toInterface(_b2));
        };
    }
/**
    
    
    
**/
@:structInit class T_testSizeStructCache_0___localname___foo {
    public var a : stdgo.StdGoTypes.GoUInt32 = 0;
    public function new(?a:stdgo.StdGoTypes.GoUInt32) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
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
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testSizeStructCache_1___localname___bar(a, b, c);
    }
}
function testSizeStructCache(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        _structSize = (new stdgo.sync.Sync.Map_() : stdgo.sync.Sync.Map_);
        var _count:() -> stdgo.StdGoTypes.GoInt = function():stdgo.StdGoTypes.GoInt {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            _structSize.range(function(__0:stdgo.StdGoTypes.AnyInterface, __1:stdgo.StdGoTypes.AnyInterface):Bool {
                _i++;
                return true;
            });
            return _i;
        };
        var _total:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        var _added:() -> stdgo.StdGoTypes.GoInt = function():stdgo.StdGoTypes.GoInt {
            var _delta:stdgo.StdGoTypes.GoInt = _count() - _total;
            _total = _total + (_delta);
            return _delta;
        };
        {};
        {};
        var _testcases = (new stdgo.Slice<T__struct_2>(5, 5, ({ _val : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.binary.Binary.T_testSizeStructCache_0___localname___foo)) : stdgo.StdGoTypes.Ref<stdgo.encoding.binary.Binary.T_testSizeStructCache_0___localname___foo>)), _want : (1 : stdgo.StdGoTypes.GoInt) } : T__struct_2), ({ _val : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.binary.Binary.T_testSizeStructCache_1___localname___bar)) : stdgo.StdGoTypes.Ref<stdgo.encoding.binary.Binary.T_testSizeStructCache_1___localname___bar>)), _want : (1 : stdgo.StdGoTypes.GoInt) } : T__struct_2), ({ _val : stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo.encoding.binary.Binary.T_testSizeStructCache_1___localname___bar)) : stdgo.StdGoTypes.Ref<stdgo.encoding.binary.Binary.T_testSizeStructCache_1___localname___bar>)), _want : (0 : stdgo.StdGoTypes.GoInt) } : T__struct_2), ({ _val : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ a : ({} : stdgo.encoding.binary.Binary.Struct) } : T__struct_3)) : stdgo.StdGoTypes.Ref<T__struct_3>))), _want : (1 : stdgo.StdGoTypes.GoInt) } : T__struct_2), ({ _val : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ a : ({} : stdgo.encoding.binary.Binary.Struct) } : T__struct_3)) : stdgo.StdGoTypes.Ref<T__struct_3>))), _want : (0 : stdgo.StdGoTypes.GoInt) } : T__struct_2)) : stdgo.Slice<T__struct_2>);
        for (__0 => _tc in _testcases) {
            if (size(_tc._val) == ((-1 : stdgo.StdGoTypes.GoInt))) {
                _t.fatalf(("Can\'t get the size of %T" : stdgo.GoString)?.__copy__(), _tc._val);
            };
            {
                var _n:stdgo.StdGoTypes.GoInt = _added();
                if (_n != (_tc._want)) {
                    _t.errorf(("Sizing %T added %d entries to the cache, want %d" : stdgo.GoString)?.__copy__(), _tc._val, stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_tc._want));
                };
            };
        };
    }
function testSizeInvalid(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _testcases = (new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(
10,
10,
stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)),
stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoInt))),
stdgo.Go.toInterface((null : stdgo.Pointer<stdgo.StdGoTypes.GoInt>)),
stdgo.Go.toInterface((new stdgo.GoArray<stdgo.StdGoTypes.GoUInt>(...([].concat([for (i in 0 ... 1) (0 : stdgo.StdGoTypes.GoUInt)]))) : stdgo.GoArray<stdgo.StdGoTypes.GoUInt>)),
stdgo.Go.toInterface((stdgo.Go.setRef(new stdgo.GoArray<stdgo.StdGoTypes.GoUInt>(...[for (i in 0 ... 1) (0 : stdgo.StdGoTypes.GoUInt)])) : stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoUInt>>)),
stdgo.Go.toInterface((null : stdgo.StdGoTypes.Ref<stdgo.GoArray<stdgo.StdGoTypes.GoUInt>>)),
stdgo.Go.toInterface((new stdgo.Slice<stdgo.StdGoTypes.GoInt>(0, 0) : stdgo.Slice<stdgo.StdGoTypes.GoInt>)),
stdgo.Go.toInterface((null : stdgo.Slice<stdgo.StdGoTypes.GoInt>)),
stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.Slice<stdgo.StdGoTypes.GoInt>)) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt>>)),
stdgo.Go.toInterface((null : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt>>))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>);
        for (__0 => _tc in _testcases) {
            {
                var _got:stdgo.StdGoTypes.GoInt = size(_tc);
                if (_got != ((-1 : stdgo.StdGoTypes.GoInt))) {
                    _t.errorf(("Size(%T) = %d, want -1" : stdgo.GoString)?.__copy__(), _tc, stdgo.Go.toInterface(_got));
                };
            };
        };
    }
function testUnexportedRead(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
            var _u1:stdgo.encoding.binary.Binary.Unexported = ({ _a : (1 : stdgo.StdGoTypes.GoInt32) } : Unexported);
            {
                var _err:stdgo.Error = write(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)), stdgo.Go.asInterface(littleEndian), stdgo.Go.toInterface((stdgo.Go.setRef(_u1) : stdgo.StdGoTypes.Ref<stdgo.encoding.binary.Binary.Unexported>)));
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
            var _u2:Unexported = ({} : stdgo.encoding.binary.Binary.Unexported);
            read(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)), stdgo.Go.asInterface(littleEndian), stdgo.Go.toInterface((stdgo.Go.setRef(_u2) : stdgo.StdGoTypes.Ref<stdgo.encoding.binary.Binary.Unexported>)));
            for (defer in __deferstack__) {
                defer();
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
function testReadErrorMsg(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        var _read:stdgo.StdGoTypes.AnyInterface -> Void = function(_data:stdgo.StdGoTypes.AnyInterface):Void {
            var _err:stdgo.Error = read(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)), stdgo.Go.asInterface(littleEndian), _data);
            var _want:stdgo.GoString = ("binary.Read: invalid type " : stdgo.GoString) + (stdgo.reflect.Reflect.typeOf(_data).string() : stdgo.GoString)?.__copy__()?.__copy__();
            if (_err == null) {
                _t.errorf(("%T: got no error; want %q" : stdgo.GoString)?.__copy__(), _data, stdgo.Go.toInterface(_want));
                return;
            };
            {
                var _got:stdgo.GoString = _err.error()?.__copy__();
                if (_got != (_want)) {
                    _t.errorf(("%T: got %q; want %q" : stdgo.GoString)?.__copy__(), _data, stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
        };
        _read(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)));
        var _s = (stdgo.Go.setRef(({} : T_littleEndian)) : stdgo.StdGoTypes.Ref<T_littleEndian>);
        _read(stdgo.Go.toInterface((stdgo.Go.setRef(_s) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<T_littleEndian>>)));
        var _p = (stdgo.Go.setRef(_s) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<T_littleEndian>>);
        _read(stdgo.Go.toInterface((stdgo.Go.setRef(_p) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<T_littleEndian>>>)));
    }
function testReadTruncated(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _b1:stdgo.Slice<stdgo.StdGoTypes.GoInt32> = new stdgo.Slice<stdgo.StdGoTypes.GoInt32>((4 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        var _b2:T__struct_5 = ({ a : (0 : stdgo.StdGoTypes.GoUInt8), b : (0 : stdgo.StdGoTypes.GoUInt8), c : (0 : stdgo.StdGoTypes.GoUInt8), d : (0 : stdgo.StdGoTypes.GoUInt8), e : (0 : stdgo.StdGoTypes.GoInt32), f : (0 : stdgo.StdGoTypes.GoFloat64) } : T__struct_5);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i <= (("0123456789abcdef" : stdgo.GoString).length), _i++, {
                var _errWant:stdgo.Error = (null : stdgo.Error);
                {
                    final __value__ = _i;
                    if (__value__ == ((0 : stdgo.StdGoTypes.GoInt))) {
                        _errWant = stdgo.io.Io.eof;
                    } else if (__value__ == ((("0123456789abcdef" : stdgo.GoString).length))) {
                        _errWant = (null : stdgo.Error);
                    } else {
                        _errWant = stdgo.io.Io.errUnexpectedEOF;
                    };
                };
                {
                    var _err:stdgo.Error = read(stdgo.Go.asInterface(stdgo.strings.Strings.newReader((("0123456789abcdef" : stdgo.GoString).__slice__(0, _i) : stdgo.GoString)?.__copy__())), stdgo.Go.asInterface(littleEndian), stdgo.Go.toInterface((stdgo.Go.setRef(_b1) : stdgo.StdGoTypes.Ref<stdgo.Slice<stdgo.StdGoTypes.GoInt32>>)));
                    if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_errWant))) {
                        _t.errorf(("Read(%d) with slice: got %v, want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_errWant));
                    };
                };
                {
                    var _err:stdgo.Error = read(stdgo.Go.asInterface(stdgo.strings.Strings.newReader((("0123456789abcdef" : stdgo.GoString).__slice__(0, _i) : stdgo.GoString)?.__copy__())), stdgo.Go.asInterface(littleEndian), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_b2) : stdgo.StdGoTypes.Ref<T__struct_5>))));
                    if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_errWant))) {
                        _t.errorf(("Read(%d) with struct: got %v, want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_errWant));
                    };
                };
            });
        };
    }
function _testUint64SmallSliceLengthPanics():Bool {
        var __deferstack__:Array<Void -> Void> = [];
        var _panicked:Bool = false;
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
            var _b = (new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>((1 : stdgo.StdGoTypes.GoUInt8), (2 : stdgo.StdGoTypes.GoUInt8), (3 : stdgo.StdGoTypes.GoUInt8), (4 : stdgo.StdGoTypes.GoUInt8), (5 : stdgo.StdGoTypes.GoUInt8), (6 : stdgo.StdGoTypes.GoUInt8), (7 : stdgo.StdGoTypes.GoUInt8), (8 : stdgo.StdGoTypes.GoUInt8)) : stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>);
            littleEndian.uint64((_b.__slice__(0, (4 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
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
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _panicked;
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
            return _panicked;
        };
    }
function _testPutUint64SmallSliceLengthPanics():Bool {
        var __deferstack__:Array<Void -> Void> = [];
        var _panicked:Bool = false;
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
            var _b = (new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>(...([].concat([for (i in 0 ... 8) (0 : stdgo.StdGoTypes.GoUInt8)]))) : stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>);
            littleEndian.putUint64((_b.__slice__(0, (4 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (72623859790382856i64 : stdgo.StdGoTypes.GoUInt64));
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
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _panicked;
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
            return _panicked;
        };
    }
/**
    
    
    
**/
typedef T_testByteOrder_0___localname___byteOrder = stdgo.StdGoTypes.StructType & {
    > ByteOrder,
    > AppendByteOrder,
};
function testByteOrder(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _buf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((8 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        for (__0 => _order in (new stdgo.Slice<stdgo.encoding.binary.Binary.T_testByteOrder_0___localname___byteOrder>(2, 2, stdgo.Go.asInterface(littleEndian), stdgo.Go.asInterface(bigEndian)) : stdgo.Slice<stdgo.encoding.binary.Binary.T_testByteOrder_0___localname___byteOrder>)) {
            {};
            for (__1 => _value in (new stdgo.Slice<stdgo.StdGoTypes.GoUInt64>(7, 7, (0i64 : stdgo.StdGoTypes.GoUInt64), (81985529216486895i64 : stdgo.StdGoTypes.GoUInt64), (-81985529216486896i64 : stdgo.StdGoTypes.GoUInt64), (-1i64 : stdgo.StdGoTypes.GoUInt64), (-6148914691236517206i64 : stdgo.StdGoTypes.GoUInt64), stdgo.math.Math.float64bits((3.141592653589793 : stdgo.StdGoTypes.GoFloat64)), stdgo.math.Math.float64bits((2.718281828459045 : stdgo.StdGoTypes.GoFloat64))) : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>)) {
                var _want16:stdgo.StdGoTypes.GoUInt16 = (_value : stdgo.StdGoTypes.GoUInt16);
                _order.putUint16((_buf.__slice__(0, (2 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _want16);
                {
                    var _got:stdgo.StdGoTypes.GoUInt16 = _order.uint16((_buf.__slice__(0, (2 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                    if (_got != (_want16)) {
                        _t.errorf(("PutUint16: Uint16 = %v, want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want16));
                    };
                };
                _buf = _order.appendUint16((_buf.__slice__(0, (3 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _want16);
                {
                    var _got:stdgo.StdGoTypes.GoUInt16 = _order.uint16((_buf.__slice__((3 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                    if (_got != (_want16)) {
                        _t.errorf(("AppendUint16: Uint16 = %v, want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want16));
                    };
                };
                if ((_buf.length) != ((5 : stdgo.StdGoTypes.GoInt))) {
                    _t.errorf(("AppendUint16: len(buf) = %d, want %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface((_buf.length)), stdgo.Go.toInterface((5 : stdgo.StdGoTypes.GoInt)));
                };
                var _want32:stdgo.StdGoTypes.GoUInt32 = (_value : stdgo.StdGoTypes.GoUInt32);
                _order.putUint32((_buf.__slice__(0, (4 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _want32);
                {
                    var _got:stdgo.StdGoTypes.GoUInt32 = _order.uint32((_buf.__slice__(0, (4 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                    if (_got != (_want32)) {
                        _t.errorf(("PutUint32: Uint32 = %v, want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want32));
                    };
                };
                _buf = _order.appendUint32((_buf.__slice__(0, (3 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _want32);
                {
                    var _got:stdgo.StdGoTypes.GoUInt32 = _order.uint32((_buf.__slice__((3 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                    if (_got != (_want32)) {
                        _t.errorf(("AppendUint32: Uint32 = %v, want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want32));
                    };
                };
                if ((_buf.length) != ((7 : stdgo.StdGoTypes.GoInt))) {
                    _t.errorf(("AppendUint32: len(buf) = %d, want %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface((_buf.length)), stdgo.Go.toInterface((7 : stdgo.StdGoTypes.GoInt)));
                };
                var _want64:stdgo.StdGoTypes.GoUInt64 = (_value : stdgo.StdGoTypes.GoUInt64);
                _order.putUint64((_buf.__slice__(0, (8 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _want64);
                {
                    var _got:stdgo.StdGoTypes.GoUInt64 = _order.uint64((_buf.__slice__(0, (8 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                    if (_got != (_want64)) {
                        _t.errorf(("PutUint64: Uint64 = %v, want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want64));
                    };
                };
                _buf = _order.appendUint64((_buf.__slice__(0, (3 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _want64);
                {
                    var _got:stdgo.StdGoTypes.GoUInt64 = _order.uint64((_buf.__slice__((3 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
                    if (_got != (_want64)) {
                        _t.errorf(("AppendUint64: Uint64 = %v, want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want64));
                    };
                };
                if ((_buf.length) != ((11 : stdgo.StdGoTypes.GoInt))) {
                    _t.errorf(("AppendUint64: len(buf) = %d, want %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface((_buf.length)), stdgo.Go.toInterface((11 : stdgo.StdGoTypes.GoInt)));
                };
            };
        };
    }
function testEarlyBoundsChecks(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        if (_testUint64SmallSliceLengthPanics() != (true)) {
            _t.errorf(("binary.LittleEndian.Uint64 expected to panic for small slices, but didn\'t" : stdgo.GoString)?.__copy__());
        };
        if (_testPutUint64SmallSliceLengthPanics() != (true)) {
            _t.errorf(("binary.LittleEndian.PutUint64 expected to panic for small slices, but didn\'t" : stdgo.GoString)?.__copy__());
        };
    }
function testReadInvalidDestination(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        _testReadInvalidDestination(_t, stdgo.Go.asInterface(bigEndian));
        _testReadInvalidDestination(_t, stdgo.Go.asInterface(littleEndian));
    }
function _testReadInvalidDestination(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _order:ByteOrder):Void {
        var _destinations = (new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(
9,
9,
stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt8)),
stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt16)),
stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt32)),
stdgo.Go.toInterface((0i64 : stdgo.StdGoTypes.GoInt64)),
stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoUInt8)),
stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoUInt16)),
stdgo.Go.toInterface((0u32 : stdgo.StdGoTypes.GoUInt32)),
stdgo.Go.toInterface((0i64 : stdgo.StdGoTypes.GoUInt64)),
stdgo.Go.toInterface((false : Bool))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>);
        for (__0 => _dst in _destinations) {
            var _err:stdgo.Error = read(stdgo.Go.asInterface(stdgo.bytes.Bytes.newReader((new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(8, 8, (1 : stdgo.StdGoTypes.GoUInt8), (2 : stdgo.StdGoTypes.GoUInt8), (3 : stdgo.StdGoTypes.GoUInt8), (4 : stdgo.StdGoTypes.GoUInt8), (5 : stdgo.StdGoTypes.GoUInt8), (6 : stdgo.StdGoTypes.GoUInt8), (7 : stdgo.StdGoTypes.GoUInt8), (8 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>))), _order, _dst);
            var _want:stdgo.GoString = stdgo.fmt.Fmt.sprintf(("binary.Read: invalid type %T" : stdgo.GoString)?.__copy__(), _dst)?.__copy__();
            if ((_err == null) || (_err.error() != _want)) {
                _t.fatalf(("for type %T: got %q; want %q" : stdgo.GoString)?.__copy__(), _dst, stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_want));
            };
        };
    }
/**
    
    
    
**/
@:structInit class T_testNoFixedSize_0___localname___Person {
    public var age : stdgo.StdGoTypes.GoInt = 0;
    public var weight : stdgo.StdGoTypes.GoFloat64 = 0;
    public var height : stdgo.StdGoTypes.GoFloat64 = 0;
    public function new(?age:stdgo.StdGoTypes.GoInt, ?weight:stdgo.StdGoTypes.GoFloat64, ?height:stdgo.StdGoTypes.GoFloat64) {
        if (age != null) this.age = age;
        if (weight != null) this.weight = weight;
        if (height != null) this.height = height;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testNoFixedSize_0___localname___Person(age, weight, height);
    }
}
function testNoFixedSize(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _person:stdgo.encoding.binary.Binary.T_testNoFixedSize_0___localname___Person = ({ age : (27 : stdgo.StdGoTypes.GoInt), weight : (67.3 : stdgo.StdGoTypes.GoFloat64), height : (177.8 : stdgo.StdGoTypes.GoFloat64) } : T_testNoFixedSize_0___localname___Person);
        var _buf = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _err:stdgo.Error = write(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(littleEndian), stdgo.Go.toInterface((stdgo.Go.setRef(_person) : stdgo.StdGoTypes.Ref<stdgo.encoding.binary.Binary.T_testNoFixedSize_0___localname___Person>)));
        if (_err == null) {
            _t.fatal(stdgo.Go.toInterface(("binary.Write: unexpected success as size of type *binary.Person is not fixed" : stdgo.GoString)));
        };
        var _errs:stdgo.GoString = ("binary.Write: some values are not fixed-sized in type *binary.Person" : stdgo.GoString)?.__copy__();
        if (_err.error() != (_errs)) {
            _t.fatalf(("got %q, want %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_errs));
        };
    }
function benchmarkReadSlice1000Int32s(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _bsr = (stdgo.Go.setRef((new T_byteSliceReader() : T_byteSliceReader)) : stdgo.StdGoTypes.Ref<stdgo.encoding.binary.Binary.T_byteSliceReader>);
        var _slice = new stdgo.Slice<stdgo.StdGoTypes.GoInt32>((1000 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        var _buf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(((_slice.length) * (4 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        _b.setBytes((_buf.length : stdgo.StdGoTypes.GoInt64));
        _b.resetTimer();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _bsr._remain = _buf;
                read(stdgo.Go.asInterface(_bsr), stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(_slice));
            });
        };
    }
function benchmarkReadStruct(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _bsr = (stdgo.Go.setRef((new T_byteSliceReader() : T_byteSliceReader)) : stdgo.StdGoTypes.Ref<stdgo.encoding.binary.Binary.T_byteSliceReader>);
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        write(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)), stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface((stdgo.Go.setRef(_s) : stdgo.StdGoTypes.Ref<stdgo.encoding.binary.Binary.Struct>)));
        _b.setBytes((_dataSize(stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(_s))?.__copy__()) : stdgo.StdGoTypes.GoInt64));
        var _t:stdgo.encoding.binary.Binary.Struct = _s?.__copy__();
        _b.resetTimer();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _bsr._remain = _buf.bytes();
                read(stdgo.Go.asInterface(_bsr), stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface((stdgo.Go.setRef(_t) : stdgo.StdGoTypes.Ref<stdgo.encoding.binary.Binary.Struct>)));
            });
        };
        _b.stopTimer();
        if ((_b.n > (0 : stdgo.StdGoTypes.GoInt)) && !stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_t))) {
            _b.fatalf(("struct doesn\'t match:\ngot  %v;\nwant %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_t), stdgo.Go.toInterface(_s));
        };
    }
function benchmarkWriteStruct(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.setBytes((size(stdgo.Go.toInterface((stdgo.Go.setRef(_s) : stdgo.StdGoTypes.Ref<stdgo.encoding.binary.Binary.Struct>))) : stdgo.StdGoTypes.GoInt64));
        _b.resetTimer();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                write(stdgo.io.Io.discard, stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface((stdgo.Go.setRef(_s) : stdgo.StdGoTypes.Ref<stdgo.encoding.binary.Binary.Struct>)));
            });
        };
    }
function benchmarkReadInts(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _ls:Struct = ({} : stdgo.encoding.binary.Binary.Struct);
        var _bsr = (stdgo.Go.setRef((new T_byteSliceReader() : T_byteSliceReader)) : stdgo.StdGoTypes.Ref<stdgo.encoding.binary.Binary.T_byteSliceReader>);
        var _r:stdgo.io.Io.Reader = stdgo.Go.asInterface(_bsr);
        _b.setBytes((30i64 : stdgo.StdGoTypes.GoInt64));
        _b.resetTimer();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
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
        var _want:stdgo.encoding.binary.Binary.Struct = _s?.__copy__();
        _want.float32 = (0 : stdgo.StdGoTypes.GoFloat64);
        _want.float64 = (0 : stdgo.StdGoTypes.GoFloat64);
        _want.complex64 = ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64));
        _want.complex128 = ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64));
        _want.array = (new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>((0 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8)) : stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>);
        _want.bool_ = false;
        _want.boolArray = (new stdgo.GoArray<Bool>(false, false, false, false) : stdgo.GoArray<Bool>);
        if ((_b.n > (0 : stdgo.StdGoTypes.GoInt)) && !stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_ls), stdgo.Go.toInterface(_want))) {
            _b.fatalf(("struct doesn\'t match:\ngot  %v;\nwant %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_ls), stdgo.Go.toInterface(_want));
        };
    }
function benchmarkWriteInts(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _w:stdgo.io.Io.Writer = stdgo.Go.asInterface(_buf);
        _b.setBytes((30i64 : stdgo.StdGoTypes.GoInt64));
        _b.resetTimer();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
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
        if ((_b.n > (0 : stdgo.StdGoTypes.GoInt)) && !stdgo.bytes.Bytes.equal(_buf.bytes(), (_big.__slice__(0, (30 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>))) {
            _b.fatalf(("first half doesn\'t match: %x %x" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_buf.bytes()), stdgo.Go.toInterface((_big.__slice__(0, (30 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)));
        };
    }
function benchmarkWriteSlice1000Int32s(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _slice = new stdgo.Slice<stdgo.StdGoTypes.GoInt32>((1000 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        var _buf = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _w:stdgo.io.Io.Writer = stdgo.Go.asInterface(_buf);
        _b.setBytes((4000i64 : stdgo.StdGoTypes.GoInt64));
        _b.resetTimer();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _buf.reset();
                write(_w, stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(_slice));
            });
        };
        _b.stopTimer();
    }
function benchmarkPutUint16(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.setBytes((2i64 : stdgo.StdGoTypes.GoInt64));
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                bigEndian.putUint16((_putbuf.__slice__(0, (2 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_i : stdgo.StdGoTypes.GoUInt16));
            });
        };
    }
function benchmarkAppendUint16(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.setBytes((2i64 : stdgo.StdGoTypes.GoInt64));
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _putbuf = bigEndian.appendUint16((_putbuf.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_i : stdgo.StdGoTypes.GoUInt16));
            });
        };
    }
function benchmarkPutUint32(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.setBytes((4i64 : stdgo.StdGoTypes.GoInt64));
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                bigEndian.putUint32((_putbuf.__slice__(0, (4 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_i : stdgo.StdGoTypes.GoUInt32));
            });
        };
    }
function benchmarkAppendUint32(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.setBytes((4i64 : stdgo.StdGoTypes.GoInt64));
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _putbuf = bigEndian.appendUint32((_putbuf.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_i : stdgo.StdGoTypes.GoUInt32));
            });
        };
    }
function benchmarkPutUint64(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.setBytes((8i64 : stdgo.StdGoTypes.GoInt64));
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                bigEndian.putUint64((_putbuf.__slice__(0, (8 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_i : stdgo.StdGoTypes.GoUInt64));
            });
        };
    }
function benchmarkAppendUint64(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.setBytes((8i64 : stdgo.StdGoTypes.GoInt64));
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _putbuf = bigEndian.appendUint64((_putbuf.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_i : stdgo.StdGoTypes.GoUInt64));
            });
        };
    }
function benchmarkLittleEndianPutUint16(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.setBytes((2i64 : stdgo.StdGoTypes.GoInt64));
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                littleEndian.putUint16((_putbuf.__slice__(0, (2 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_i : stdgo.StdGoTypes.GoUInt16));
            });
        };
    }
function benchmarkLittleEndianAppendUint16(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.setBytes((2i64 : stdgo.StdGoTypes.GoInt64));
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _putbuf = littleEndian.appendUint16((_putbuf.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_i : stdgo.StdGoTypes.GoUInt16));
            });
        };
    }
function benchmarkLittleEndianPutUint32(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.setBytes((4i64 : stdgo.StdGoTypes.GoInt64));
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                littleEndian.putUint32((_putbuf.__slice__(0, (4 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_i : stdgo.StdGoTypes.GoUInt32));
            });
        };
    }
function benchmarkLittleEndianAppendUint32(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.setBytes((4i64 : stdgo.StdGoTypes.GoInt64));
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _putbuf = littleEndian.appendUint32((_putbuf.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_i : stdgo.StdGoTypes.GoUInt32));
            });
        };
    }
function benchmarkLittleEndianPutUint64(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.setBytes((8i64 : stdgo.StdGoTypes.GoInt64));
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                littleEndian.putUint64((_putbuf.__slice__(0, (8 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_i : stdgo.StdGoTypes.GoUInt64));
            });
        };
    }
function benchmarkLittleEndianAppendUint64(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.setBytes((8i64 : stdgo.StdGoTypes.GoInt64));
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _putbuf = littleEndian.appendUint64((_putbuf.__slice__(0, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (_i : stdgo.StdGoTypes.GoUInt64));
            });
        };
    }
function benchmarkReadFloats(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _ls:Struct = ({} : stdgo.encoding.binary.Binary.Struct);
        var _bsr = (stdgo.Go.setRef((new T_byteSliceReader() : T_byteSliceReader)) : stdgo.StdGoTypes.Ref<stdgo.encoding.binary.Binary.T_byteSliceReader>);
        var _r:stdgo.io.Io.Reader = stdgo.Go.asInterface(_bsr);
        _b.setBytes((12i64 : stdgo.StdGoTypes.GoInt64));
        _b.resetTimer();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _bsr._remain = (_big.__slice__((30 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
                read(_r, stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_ls.float32)));
                read(_r, stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_ls.float64)));
            });
        };
        _b.stopTimer();
        var _want:stdgo.encoding.binary.Binary.Struct = _s?.__copy__();
        _want.int8 = (0 : stdgo.StdGoTypes.GoInt8);
        _want.int16 = (0 : stdgo.StdGoTypes.GoInt16);
        _want.int32 = (0 : stdgo.StdGoTypes.GoInt32);
        _want.int64 = (0i64 : stdgo.StdGoTypes.GoInt64);
        _want.uint8 = (0 : stdgo.StdGoTypes.GoUInt8);
        _want.uint16 = (0 : stdgo.StdGoTypes.GoUInt16);
        _want.uint32 = (0u32 : stdgo.StdGoTypes.GoUInt32);
        _want.uint64 = (0i64 : stdgo.StdGoTypes.GoUInt64);
        _want.complex64 = ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64));
        _want.complex128 = ((0f64 : stdgo.StdGoTypes.GoFloat64) + new stdgo.StdGoTypes.GoComplex128(0f64, 0f64));
        _want.array = (new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>((0 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8)) : stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>);
        _want.bool_ = false;
        _want.boolArray = (new stdgo.GoArray<Bool>(false, false, false, false) : stdgo.GoArray<Bool>);
        if ((_b.n > (0 : stdgo.StdGoTypes.GoInt)) && !stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_ls), stdgo.Go.toInterface(_want))) {
            _b.fatalf(("struct doesn\'t match:\ngot  %v;\nwant %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_ls), stdgo.Go.toInterface(_want));
        };
    }
function benchmarkWriteFloats(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _w:stdgo.io.Io.Writer = stdgo.Go.asInterface(_buf);
        _b.setBytes((12i64 : stdgo.StdGoTypes.GoInt64));
        _b.resetTimer();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _buf.reset();
                write(_w, stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(_s.float32));
                write(_w, stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(_s.float64));
            });
        };
        _b.stopTimer();
        if ((_b.n > (0 : stdgo.StdGoTypes.GoInt)) && !stdgo.bytes.Bytes.equal(_buf.bytes(), (_big.__slice__((30 : stdgo.StdGoTypes.GoInt), (42 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>))) {
            _b.fatalf(("first half doesn\'t match: %x %x" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_buf.bytes()), stdgo.Go.toInterface((_big.__slice__((30 : stdgo.StdGoTypes.GoInt), (42 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)));
        };
    }
function benchmarkReadSlice1000Float32s(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _bsr = (stdgo.Go.setRef((new T_byteSliceReader() : T_byteSliceReader)) : stdgo.StdGoTypes.Ref<stdgo.encoding.binary.Binary.T_byteSliceReader>);
        var _slice = new stdgo.Slice<stdgo.StdGoTypes.GoFloat32>((1000 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        var _buf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(((_slice.length) * (4 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        _b.setBytes((_buf.length : stdgo.StdGoTypes.GoInt64));
        _b.resetTimer();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _bsr._remain = _buf;
                read(stdgo.Go.asInterface(_bsr), stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(_slice));
            });
        };
    }
function benchmarkWriteSlice1000Float32s(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _slice = new stdgo.Slice<stdgo.StdGoTypes.GoFloat32>((1000 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        var _buf = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _w:stdgo.io.Io.Writer = stdgo.Go.asInterface(_buf);
        _b.setBytes((4000i64 : stdgo.StdGoTypes.GoInt64));
        _b.resetTimer();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _buf.reset();
                write(_w, stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(_slice));
            });
        };
        _b.stopTimer();
    }
function benchmarkReadSlice1000Uint8s(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _bsr = (stdgo.Go.setRef((new T_byteSliceReader() : T_byteSliceReader)) : stdgo.StdGoTypes.Ref<stdgo.encoding.binary.Binary.T_byteSliceReader>);
        var _slice = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((1000 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        var _buf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_slice.length : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        _b.setBytes((_buf.length : stdgo.StdGoTypes.GoInt64));
        _b.resetTimer();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _bsr._remain = _buf;
                read(stdgo.Go.asInterface(_bsr), stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(_slice));
            });
        };
    }
function benchmarkWriteSlice1000Uint8s(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _slice = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((1000 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        var _buf = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _w:stdgo.io.Io.Writer = stdgo.Go.asInterface(_buf);
        _b.setBytes((1000i64 : stdgo.StdGoTypes.GoInt64));
        _b.resetTimer();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _buf.reset();
                write(_w, stdgo.Go.asInterface(bigEndian), stdgo.Go.toInterface(_slice));
            });
        };
    }
function testNativeEndian(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _i:stdgo.StdGoTypes.GoUInt32 = (305419896u32 : stdgo.StdGoTypes.GoUInt32);
        var _s = stdgo.unsafe.Unsafe.slice(((stdgo.Go.toInterface(stdgo.Go.pointer(_i)) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint8_kind) })) : stdgo.Pointer<stdgo.StdGoTypes.GoByte>), stdgo.unsafe.Unsafe.sizeof(stdgo.Go.toInterface(_i)));
        {
            var _v:stdgo.StdGoTypes.GoUInt32 = nativeEndian.uint32(_s);
            if (_v != ((305419896u32 : stdgo.StdGoTypes.GoUInt32))) {
                _t.errorf(("NativeEndian.Uint32 returned %#x, expected %#x" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_v), stdgo.Go.toInterface((305419896 : stdgo.StdGoTypes.GoInt)));
            };
        };
    }
/**
    // AppendUvarint appends the varint-encoded form of x,
    // as generated by PutUvarint, to buf and returns the extended buffer.
**/
function appendUvarint(_buf:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _x:stdgo.StdGoTypes.GoUInt64):stdgo.Slice<stdgo.StdGoTypes.GoByte> {
        while (_x >= (128i64 : stdgo.StdGoTypes.GoUInt64)) {
            _buf = (_buf.__append__((_x : stdgo.StdGoTypes.GoByte) | (128 : stdgo.StdGoTypes.GoUInt8)));
            _x = _x >> ((7i64 : stdgo.StdGoTypes.GoUInt64));
        };
        return (_buf.__append__((_x : stdgo.StdGoTypes.GoByte)));
    }
/**
    // PutUvarint encodes a uint64 into buf and returns the number of bytes written.
    // If the buffer is too small, PutUvarint will panic.
**/
function putUvarint(_buf:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _x:stdgo.StdGoTypes.GoUInt64):stdgo.StdGoTypes.GoInt {
        var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        while (_x >= (128i64 : stdgo.StdGoTypes.GoUInt64)) {
            _buf[(_i : stdgo.StdGoTypes.GoInt)] = (_x : stdgo.StdGoTypes.GoByte) | (128 : stdgo.StdGoTypes.GoUInt8);
            _x = _x >> ((7i64 : stdgo.StdGoTypes.GoUInt64));
            _i++;
        };
        _buf[(_i : stdgo.StdGoTypes.GoInt)] = (_x : stdgo.StdGoTypes.GoByte);
        return _i + (1 : stdgo.StdGoTypes.GoInt);
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
function uvarint(_buf:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoUInt64; var _1 : stdgo.StdGoTypes.GoInt; } {
        var _x:stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64);
        var _s:stdgo.StdGoTypes.GoUInt = (0 : stdgo.StdGoTypes.GoUInt);
        for (_i => _b in _buf) {
            if (_i == ((10 : stdgo.StdGoTypes.GoInt))) {
                return { _0 : (0i64 : stdgo.StdGoTypes.GoUInt64), _1 : -(_i + (1 : stdgo.StdGoTypes.GoInt)) };
            };
            if (_b < (128 : stdgo.StdGoTypes.GoUInt8)) {
                if ((_i == (9 : stdgo.StdGoTypes.GoInt)) && (_b > (1 : stdgo.StdGoTypes.GoUInt8))) {
                    return { _0 : (0i64 : stdgo.StdGoTypes.GoUInt64), _1 : -(_i + (1 : stdgo.StdGoTypes.GoInt)) };
                };
                return { _0 : _x | ((_b : stdgo.StdGoTypes.GoUInt64) << _s), _1 : _i + (1 : stdgo.StdGoTypes.GoInt) };
            };
            _x = _x | ((_b & (127 : stdgo.StdGoTypes.GoUInt8) : stdgo.StdGoTypes.GoUInt64) << _s);
            _s = _s + ((7u32 : stdgo.StdGoTypes.GoUInt));
        };
        return { _0 : (0i64 : stdgo.StdGoTypes.GoUInt64), _1 : (0 : stdgo.StdGoTypes.GoInt) };
    }
/**
    // AppendVarint appends the varint-encoded form of x,
    // as generated by PutVarint, to buf and returns the extended buffer.
**/
function appendVarint(_buf:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _x:stdgo.StdGoTypes.GoInt64):stdgo.Slice<stdgo.StdGoTypes.GoByte> {
        var _ux:stdgo.StdGoTypes.GoUInt64 = (_x : stdgo.StdGoTypes.GoUInt64) << (1i64 : stdgo.StdGoTypes.GoUInt64);
        if (_x < (0i64 : stdgo.StdGoTypes.GoInt64)) {
            _ux = (-1 ^ _ux);
        };
        return appendUvarint(_buf, _ux);
    }
/**
    // PutVarint encodes an int64 into buf and returns the number of bytes written.
    // If the buffer is too small, PutVarint will panic.
**/
function putVarint(_buf:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _x:stdgo.StdGoTypes.GoInt64):stdgo.StdGoTypes.GoInt {
        var _ux:stdgo.StdGoTypes.GoUInt64 = (_x : stdgo.StdGoTypes.GoUInt64) << (1i64 : stdgo.StdGoTypes.GoUInt64);
        if (_x < (0i64 : stdgo.StdGoTypes.GoInt64)) {
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
function varint(_buf:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.StdGoTypes.GoInt; } {
        var __tmp__ = uvarint(_buf), _ux:stdgo.StdGoTypes.GoUInt64 = __tmp__._0, _n:stdgo.StdGoTypes.GoInt = __tmp__._1;
        var _x:stdgo.StdGoTypes.GoInt64 = (_ux >> (1i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoInt64);
        if (_ux & (1i64 : stdgo.StdGoTypes.GoUInt64) != ((0i64 : stdgo.StdGoTypes.GoUInt64))) {
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
function readUvarint(_r:stdgo.io.Io.ByteReader):{ var _0 : stdgo.StdGoTypes.GoUInt64; var _1 : stdgo.Error; } {
        var _x:stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64);
        var _s:stdgo.StdGoTypes.GoUInt = (0 : stdgo.StdGoTypes.GoUInt);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (10 : stdgo.StdGoTypes.GoInt), _i++, {
                var __tmp__ = _r.readByte(), _b:stdgo.StdGoTypes.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    if ((_i > (0 : stdgo.StdGoTypes.GoInt)) && (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo.io.Io.eof))) {
                        _err = stdgo.io.Io.errUnexpectedEOF;
                    };
                    return { _0 : _x, _1 : _err };
                };
                if (_b < (128 : stdgo.StdGoTypes.GoUInt8)) {
                    if ((_i == (9 : stdgo.StdGoTypes.GoInt)) && (_b > (1 : stdgo.StdGoTypes.GoUInt8))) {
                        return { _0 : _x, _1 : _errOverflow };
                    };
                    return { _0 : _x | ((_b : stdgo.StdGoTypes.GoUInt64) << _s), _1 : (null : stdgo.Error) };
                };
                _x = _x | ((_b & (127 : stdgo.StdGoTypes.GoUInt8) : stdgo.StdGoTypes.GoUInt64) << _s);
                _s = _s + ((7u32 : stdgo.StdGoTypes.GoUInt));
            });
        };
        return { _0 : _x, _1 : _errOverflow };
    }
/**
    // ReadVarint reads an encoded signed integer from r and returns it as an int64.
    // The error is EOF only if no bytes were read.
    // If an EOF happens after reading some but not all the bytes,
    // ReadVarint returns io.ErrUnexpectedEOF.
**/
function readVarint(_r:stdgo.io.Io.ByteReader):{ var _0 : stdgo.StdGoTypes.GoInt64; var _1 : stdgo.Error; } {
        var __tmp__ = readUvarint(_r), _ux:stdgo.StdGoTypes.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        var _x:stdgo.StdGoTypes.GoInt64 = (_ux >> (1i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoInt64);
        if (_ux & (1i64 : stdgo.StdGoTypes.GoUInt64) != ((0i64 : stdgo.StdGoTypes.GoUInt64))) {
            _x = (-1 ^ _x);
        };
        return { _0 : _x, _1 : _err };
    }
function _testConstant(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _w:stdgo.StdGoTypes.GoUInt, _max:stdgo.StdGoTypes.GoInt):Void {
        var _buf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((10 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        var _n:stdgo.StdGoTypes.GoInt = putUvarint(_buf, ((1i64 : stdgo.StdGoTypes.GoUInt64) << _w) - (1i64 : stdgo.StdGoTypes.GoUInt64));
        if (_n != (_max)) {
            _t.errorf(("MaxVarintLen%d = %d; want %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_w), stdgo.Go.toInterface(_max), stdgo.Go.toInterface(_n));
        };
    }
function testConstants(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        _testConstant(_t, (16u32 : stdgo.StdGoTypes.GoUInt), (3 : stdgo.StdGoTypes.GoInt));
        _testConstant(_t, (32u32 : stdgo.StdGoTypes.GoUInt), (5 : stdgo.StdGoTypes.GoInt));
        _testConstant(_t, (64u32 : stdgo.StdGoTypes.GoUInt), (10 : stdgo.StdGoTypes.GoInt));
    }
function _testVarint(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _x:stdgo.StdGoTypes.GoInt64):Void {
        var _buf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((10 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        var _n:stdgo.StdGoTypes.GoInt = putVarint(_buf, _x);
        var __tmp__ = varint((_buf.__slice__((0 : stdgo.StdGoTypes.GoInt), _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)), _y:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _m:stdgo.StdGoTypes.GoInt = __tmp__._1;
        if (_x != (_y)) {
            _t.errorf(("Varint(%d): got %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y));
        };
        if (_n != (_m)) {
            _t.errorf(("Varint(%d): got n = %d; want %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_n));
        };
        var _buf2 = (("prefix" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        _buf2 = appendVarint(_buf2, _x);
        if ((_buf2 : stdgo.GoString) != (("prefix" : stdgo.GoString) + ((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : stdgo.GoString)?.__copy__())) {
            _t.errorf(("AppendVarint(%d): got %q, want %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_buf2), stdgo.Go.toInterface(("prefix" : stdgo.GoString) + ((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : stdgo.GoString)?.__copy__()));
        };
        var __tmp__ = readVarint(stdgo.Go.asInterface(stdgo.bytes.Bytes.newReader(_buf))), _y:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("ReadVarint(%d): %s" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_err));
        };
        if (_x != (_y)) {
            _t.errorf(("ReadVarint(%d): got %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y));
        };
    }
function _testUvarint(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _x:stdgo.StdGoTypes.GoUInt64):Void {
        var _buf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((10 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        var _n:stdgo.StdGoTypes.GoInt = putUvarint(_buf, _x);
        var __tmp__ = uvarint((_buf.__slice__((0 : stdgo.StdGoTypes.GoInt), _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)), _y:stdgo.StdGoTypes.GoUInt64 = __tmp__._0, _m:stdgo.StdGoTypes.GoInt = __tmp__._1;
        if (_x != (_y)) {
            _t.errorf(("Uvarint(%d): got %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y));
        };
        if (_n != (_m)) {
            _t.errorf(("Uvarint(%d): got n = %d; want %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_n));
        };
        var _buf2 = (("prefix" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        _buf2 = appendUvarint(_buf2, _x);
        if ((_buf2 : stdgo.GoString) != (("prefix" : stdgo.GoString) + ((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : stdgo.GoString)?.__copy__())) {
            _t.errorf(("AppendUvarint(%d): got %q, want %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_buf2), stdgo.Go.toInterface(("prefix" : stdgo.GoString) + ((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>) : stdgo.GoString)?.__copy__()));
        };
        var __tmp__ = readUvarint(stdgo.Go.asInterface(stdgo.bytes.Bytes.newReader(_buf))), _y:stdgo.StdGoTypes.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("ReadUvarint(%d): %s" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_err));
        };
        if (_x != (_y)) {
            _t.errorf(("ReadUvarint(%d): got %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y));
        };
    }
function testVarint(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _x in _tests) {
            _testVarint(_t, _x);
            _testVarint(_t, -_x);
        };
        {
            var _x:stdgo.StdGoTypes.GoInt64 = (7i64 : stdgo.StdGoTypes.GoInt64);
            stdgo.Go.cfor(_x != ((0i64 : stdgo.StdGoTypes.GoInt64)), _x = _x << ((1i64 : stdgo.StdGoTypes.GoUInt64)), {
                _testVarint(_t, _x);
                _testVarint(_t, -_x);
            });
        };
    }
function testUvarint(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _x in _tests) {
            _testUvarint(_t, (_x : stdgo.StdGoTypes.GoUInt64));
        };
        {
            var _x:stdgo.StdGoTypes.GoUInt64 = (7i64 : stdgo.StdGoTypes.GoUInt64);
            stdgo.Go.cfor(_x != ((0i64 : stdgo.StdGoTypes.GoUInt64)), _x = _x << ((1i64 : stdgo.StdGoTypes.GoUInt64)), {
                _testUvarint(_t, _x);
            });
        };
    }
function testBufferTooSmall(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _buf = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(4, 4, (128 : stdgo.StdGoTypes.GoUInt8), (128 : stdgo.StdGoTypes.GoUInt8), (128 : stdgo.StdGoTypes.GoUInt8), (128 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i <= (_buf.length), _i++, {
                var _buf = (_buf.__slice__((0 : stdgo.StdGoTypes.GoInt), _i) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
                var __tmp__ = uvarint(_buf), _x:stdgo.StdGoTypes.GoUInt64 = __tmp__._0, _n:stdgo.StdGoTypes.GoInt = __tmp__._1;
                if ((_x != (0i64 : stdgo.StdGoTypes.GoUInt64)) || (_n != (0 : stdgo.StdGoTypes.GoInt))) {
                    _t.errorf(("Uvarint(%v): got x = %d, n = %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_buf), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_n));
                };
                var __tmp__ = readUvarint(stdgo.Go.asInterface(stdgo.bytes.Bytes.newReader(_buf))), _x:stdgo.StdGoTypes.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                var _wantErr:stdgo.Error = stdgo.io.Io.eof;
                if (_i > (0 : stdgo.StdGoTypes.GoInt)) {
                    _wantErr = stdgo.io.Io.errUnexpectedEOF;
                };
                if ((_x != (0i64 : stdgo.StdGoTypes.GoUInt64)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(_wantErr))) {
                    _t.errorf(("ReadUvarint(%v): got x = %d, err = %s" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_buf), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_err));
                };
            });
        };
    }
/**
    // Ensure that we catch overflows of bytes going past MaxVarintLen64.
    // See issue https://golang.org/issues/41185
**/
function testBufferTooBigWithOverflow(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _tests = (new stdgo.Slice<T__struct_6>(4, 4, ({ _in : {
            var a = function():stdgo.Slice<stdgo.StdGoTypes.GoByte> {
                var _b = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((1000 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
                for (_i in 0 ... _b.length.toBasic()) {
                    _b[(_i : stdgo.StdGoTypes.GoInt)] = (255 : stdgo.StdGoTypes.GoUInt8);
                };
                _b[(999 : stdgo.StdGoTypes.GoInt)] = (0 : stdgo.StdGoTypes.GoUInt8);
                return _b;
            };
            a();
        }, _name : ("invalid: 1000 bytes" : stdgo.GoString)?.__copy__(), _wantN : (-11 : stdgo.StdGoTypes.GoInt), _wantValue : (0i64 : stdgo.StdGoTypes.GoUInt64) } : T__struct_6), ({ _in : (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(
10,
10,
(215 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(1 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _name : ("valid: math.MaxUint64-40" : stdgo.GoString)?.__copy__(), _wantN : (10 : stdgo.StdGoTypes.GoInt), _wantValue : (-41i64 : stdgo.StdGoTypes.GoUInt64) } : T__struct_6), ({ _in : (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(
11,
11,
(215 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(1 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _name : ("invalid: with more than MaxVarintLen64 bytes" : stdgo.GoString)?.__copy__(), _wantN : (-11 : stdgo.StdGoTypes.GoInt), _wantValue : (0i64 : stdgo.StdGoTypes.GoUInt64) } : T__struct_6), ({ _in : (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(
10,
10,
(215 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(127 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _name : ("invalid: 10th byte" : stdgo.GoString)?.__copy__(), _wantN : (-10 : stdgo.StdGoTypes.GoInt), _wantValue : (0i64 : stdgo.StdGoTypes.GoUInt64) } : T__struct_6)) : stdgo.Slice<T__struct_6>);
        for (__0 => _tt in _tests) {
            var _tt:T__struct_6 = {
                final x = _tt;
                ({ _in : x._in, _name : x._name?.__copy__(), _wantN : x._wantN, _wantValue : x._wantValue } : T__struct_6);
            };
            _t.run(_tt._name?.__copy__(), function(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
                var __tmp__ = uvarint(_tt._in), _value:stdgo.StdGoTypes.GoUInt64 = __tmp__._0, _n:stdgo.StdGoTypes.GoInt = __tmp__._1;
                {
                    var __0:stdgo.StdGoTypes.GoInt = _n, __1:stdgo.StdGoTypes.GoInt = _tt._wantN, _w:stdgo.StdGoTypes.GoInt = __1, _g:stdgo.StdGoTypes.GoInt = __0;
                    if (_g != (_w)) {
                        _t.errorf(("bytes returned=%d, want=%d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w));
                    };
                };
                {
                    var __0:stdgo.StdGoTypes.GoUInt64 = _value, __1:stdgo.StdGoTypes.GoUInt64 = _tt._wantValue, _w:stdgo.StdGoTypes.GoUInt64 = __1, _g:stdgo.StdGoTypes.GoUInt64 = __0;
                    if (_g != (_w)) {
                        _t.errorf(("value=%d, want=%d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w));
                    };
                };
            });
        };
    }
function _testOverflow(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _buf:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _x0:stdgo.StdGoTypes.GoUInt64, _n0:stdgo.StdGoTypes.GoInt, _err0:stdgo.Error):Void {
        var __tmp__ = uvarint(_buf), _x:stdgo.StdGoTypes.GoUInt64 = __tmp__._0, _n:stdgo.StdGoTypes.GoInt = __tmp__._1;
        if ((_x != (0i64 : stdgo.StdGoTypes.GoUInt64)) || (_n != _n0)) {
            _t.errorf(("Uvarint(% X): got x = %d, n = %d; want 0, %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_buf), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_n0));
        };
        var _r = stdgo.bytes.Bytes.newReader(_buf);
        var _len:stdgo.StdGoTypes.GoInt = _r.len();
        var __tmp__ = readUvarint(stdgo.Go.asInterface(_r)), _x:stdgo.StdGoTypes.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_x != _x0) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(_err0))) {
            _t.errorf(("ReadUvarint(%v): got x = %d, err = %s; want %d, %s" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_buf), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_x0), stdgo.Go.toInterface(_err0));
        };
        {
            var _read:stdgo.StdGoTypes.GoInt = _len - _r.len();
            if (_read > (10 : stdgo.StdGoTypes.GoInt)) {
                _t.errorf(("ReadUvarint(%v): read more than MaxVarintLen64 bytes, got %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_buf), stdgo.Go.toInterface(_read));
            };
        };
    }
function testOverflow(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        _testOverflow(_t, (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(
10,
10,
(128 : stdgo.StdGoTypes.GoUInt8),
(128 : stdgo.StdGoTypes.GoUInt8),
(128 : stdgo.StdGoTypes.GoUInt8),
(128 : stdgo.StdGoTypes.GoUInt8),
(128 : stdgo.StdGoTypes.GoUInt8),
(128 : stdgo.StdGoTypes.GoUInt8),
(128 : stdgo.StdGoTypes.GoUInt8),
(128 : stdgo.StdGoTypes.GoUInt8),
(128 : stdgo.StdGoTypes.GoUInt8),
(2 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (0i64 : stdgo.StdGoTypes.GoUInt64), (-10 : stdgo.StdGoTypes.GoInt), _errOverflow);
        _testOverflow(_t, (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(
15,
15,
(128 : stdgo.StdGoTypes.GoUInt8),
(128 : stdgo.StdGoTypes.GoUInt8),
(128 : stdgo.StdGoTypes.GoUInt8),
(128 : stdgo.StdGoTypes.GoUInt8),
(128 : stdgo.StdGoTypes.GoUInt8),
(128 : stdgo.StdGoTypes.GoUInt8),
(128 : stdgo.StdGoTypes.GoUInt8),
(128 : stdgo.StdGoTypes.GoUInt8),
(128 : stdgo.StdGoTypes.GoUInt8),
(128 : stdgo.StdGoTypes.GoUInt8),
(128 : stdgo.StdGoTypes.GoUInt8),
(128 : stdgo.StdGoTypes.GoUInt8),
(1 : stdgo.StdGoTypes.GoUInt8),
(0 : stdgo.StdGoTypes.GoUInt8),
(0 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (0i64 : stdgo.StdGoTypes.GoUInt64), (-11 : stdgo.StdGoTypes.GoInt), _errOverflow);
        _testOverflow(_t, (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(
11,
11,
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (-1i64 : stdgo.StdGoTypes.GoUInt64), (-11 : stdgo.StdGoTypes.GoInt), _errOverflow);
    }
function testNonCanonicalZero(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _buf = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(4, 4, (128 : stdgo.StdGoTypes.GoUInt8), (128 : stdgo.StdGoTypes.GoUInt8), (128 : stdgo.StdGoTypes.GoUInt8), (0 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        var __tmp__ = uvarint(_buf), _x:stdgo.StdGoTypes.GoUInt64 = __tmp__._0, _n:stdgo.StdGoTypes.GoInt = __tmp__._1;
        if ((_x != (0i64 : stdgo.StdGoTypes.GoUInt64)) || (_n != (4 : stdgo.StdGoTypes.GoInt))) {
            _t.errorf(("Uvarint(%v): got x = %d, n = %d; want 0, 4" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_buf), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_n));
        };
    }
function benchmarkPutUvarint32(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _buf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((5 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        _b.setBytes((4i64 : stdgo.StdGoTypes.GoInt64));
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                {
                    var _j:stdgo.StdGoTypes.GoUInt = (0u32 : stdgo.StdGoTypes.GoUInt);
                    stdgo.Go.cfor(_j < (5u32 : stdgo.StdGoTypes.GoUInt), _j++, {
                        putUvarint(_buf, (1i64 : stdgo.StdGoTypes.GoUInt64) << (_j * (7u32 : stdgo.StdGoTypes.GoUInt)));
                    });
                };
            });
        };
    }
function benchmarkPutUvarint64(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _buf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((10 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        _b.setBytes((8i64 : stdgo.StdGoTypes.GoInt64));
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                {
                    var _j:stdgo.StdGoTypes.GoUInt = (0u32 : stdgo.StdGoTypes.GoUInt);
                    stdgo.Go.cfor(_j < (10u32 : stdgo.StdGoTypes.GoUInt), _j++, {
                        putUvarint(_buf, (1i64 : stdgo.StdGoTypes.GoUInt64) << (_j * (7u32 : stdgo.StdGoTypes.GoUInt)));
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
    public dynamic function appendUint64(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _v:stdgo.StdGoTypes.GoUInt64):stdgo.Slice<stdgo.StdGoTypes.GoByte> return __self__.value.appendUint64(_b, _v);
    @:keep
    public dynamic function putUint64(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _v:stdgo.StdGoTypes.GoUInt64):Void __self__.value.putUint64(_b, _v);
    @:keep
    public dynamic function uint64(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.StdGoTypes.GoUInt64 return __self__.value.uint64(_b);
    @:keep
    public dynamic function appendUint32(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _v:stdgo.StdGoTypes.GoUInt32):stdgo.Slice<stdgo.StdGoTypes.GoByte> return __self__.value.appendUint32(_b, _v);
    @:keep
    public dynamic function putUint32(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _v:stdgo.StdGoTypes.GoUInt32):Void __self__.value.putUint32(_b, _v);
    @:keep
    public dynamic function uint32(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.StdGoTypes.GoUInt32 return __self__.value.uint32(_b);
    @:keep
    public dynamic function appendUint16(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _v:stdgo.StdGoTypes.GoUInt16):stdgo.Slice<stdgo.StdGoTypes.GoByte> return __self__.value.appendUint16(_b, _v);
    @:keep
    public dynamic function putUint16(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _v:stdgo.StdGoTypes.GoUInt16):Void __self__.value.putUint16(_b, _v);
    @:keep
    public dynamic function uint16(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.StdGoTypes.GoUInt16 return __self__.value.uint16(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_littleEndian>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.binary.Binary.T_littleEndian_asInterface) class T_littleEndian_static_extension {
    @:keep
    static public function goString( _:T_littleEndian):stdgo.GoString {
        @:recv var _:T_littleEndian = _?.__copy__();
        return ("binary.LittleEndian" : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function string( _:T_littleEndian):stdgo.GoString {
        @:recv var _:T_littleEndian = _?.__copy__();
        return ("LittleEndian" : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function appendUint64( _:T_littleEndian, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _v:stdgo.StdGoTypes.GoUInt64):stdgo.Slice<stdgo.StdGoTypes.GoByte> {
        @:recv var _:T_littleEndian = _?.__copy__();
        return (_b.__append__((_v : stdgo.StdGoTypes.GoByte), (_v >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte), (_v >> (16i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte), (_v >> (24i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte), (_v >> (32i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte), (_v >> (40i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte), (_v >> (48i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte), (_v >> (56i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte)));
    }
    @:keep
    static public function putUint64( _:T_littleEndian, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _v:stdgo.StdGoTypes.GoUInt64):Void {
        @:recv var _:T_littleEndian = _?.__copy__();
        _b[(7 : stdgo.StdGoTypes.GoInt)];
        _b[(0 : stdgo.StdGoTypes.GoInt)] = (_v : stdgo.StdGoTypes.GoByte);
        _b[(1 : stdgo.StdGoTypes.GoInt)] = (_v >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte);
        _b[(2 : stdgo.StdGoTypes.GoInt)] = (_v >> (16i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte);
        _b[(3 : stdgo.StdGoTypes.GoInt)] = (_v >> (24i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte);
        _b[(4 : stdgo.StdGoTypes.GoInt)] = (_v >> (32i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte);
        _b[(5 : stdgo.StdGoTypes.GoInt)] = (_v >> (40i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte);
        _b[(6 : stdgo.StdGoTypes.GoInt)] = (_v >> (48i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte);
        _b[(7 : stdgo.StdGoTypes.GoInt)] = (_v >> (56i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte);
    }
    @:keep
    static public function uint64( _:T_littleEndian, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.StdGoTypes.GoUInt64 {
        @:recv var _:T_littleEndian = _?.__copy__();
        _b[(7 : stdgo.StdGoTypes.GoInt)];
        return (((((((_b[(0 : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt64) | ((_b[(1 : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt64) << (8i64 : stdgo.StdGoTypes.GoUInt64))) | ((_b[(2 : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt64) << (16i64 : stdgo.StdGoTypes.GoUInt64))) | ((_b[(3 : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt64) << (24i64 : stdgo.StdGoTypes.GoUInt64))) | ((_b[(4 : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt64) << (32i64 : stdgo.StdGoTypes.GoUInt64))) | ((_b[(5 : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt64) << (40i64 : stdgo.StdGoTypes.GoUInt64))) | ((_b[(6 : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt64) << (48i64 : stdgo.StdGoTypes.GoUInt64))) | ((_b[(7 : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt64) << (56i64 : stdgo.StdGoTypes.GoUInt64));
    }
    @:keep
    static public function appendUint32( _:T_littleEndian, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _v:stdgo.StdGoTypes.GoUInt32):stdgo.Slice<stdgo.StdGoTypes.GoByte> {
        @:recv var _:T_littleEndian = _?.__copy__();
        return (_b.__append__((_v : stdgo.StdGoTypes.GoByte), (_v >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte), (_v >> (16i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte), (_v >> (24i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte)));
    }
    @:keep
    static public function putUint32( _:T_littleEndian, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _v:stdgo.StdGoTypes.GoUInt32):Void {
        @:recv var _:T_littleEndian = _?.__copy__();
        _b[(3 : stdgo.StdGoTypes.GoInt)];
        _b[(0 : stdgo.StdGoTypes.GoInt)] = (_v : stdgo.StdGoTypes.GoByte);
        _b[(1 : stdgo.StdGoTypes.GoInt)] = (_v >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte);
        _b[(2 : stdgo.StdGoTypes.GoInt)] = (_v >> (16i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte);
        _b[(3 : stdgo.StdGoTypes.GoInt)] = (_v >> (24i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte);
    }
    @:keep
    static public function uint32( _:T_littleEndian, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.StdGoTypes.GoUInt32 {
        @:recv var _:T_littleEndian = _?.__copy__();
        _b[(3 : stdgo.StdGoTypes.GoInt)];
        return (((_b[(0 : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt32) | ((_b[(1 : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt32) << (8i64 : stdgo.StdGoTypes.GoUInt64))) | ((_b[(2 : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt32) << (16i64 : stdgo.StdGoTypes.GoUInt64))) | ((_b[(3 : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt32) << (24i64 : stdgo.StdGoTypes.GoUInt64));
    }
    @:keep
    static public function appendUint16( _:T_littleEndian, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _v:stdgo.StdGoTypes.GoUInt16):stdgo.Slice<stdgo.StdGoTypes.GoByte> {
        @:recv var _:T_littleEndian = _?.__copy__();
        return (_b.__append__((_v : stdgo.StdGoTypes.GoByte), (_v >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte)));
    }
    @:keep
    static public function putUint16( _:T_littleEndian, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _v:stdgo.StdGoTypes.GoUInt16):Void {
        @:recv var _:T_littleEndian = _?.__copy__();
        _b[(1 : stdgo.StdGoTypes.GoInt)];
        _b[(0 : stdgo.StdGoTypes.GoInt)] = (_v : stdgo.StdGoTypes.GoByte);
        _b[(1 : stdgo.StdGoTypes.GoInt)] = (_v >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte);
    }
    @:keep
    static public function uint16( _:T_littleEndian, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.StdGoTypes.GoUInt16 {
        @:recv var _:T_littleEndian = _?.__copy__();
        _b[(1 : stdgo.StdGoTypes.GoInt)];
        return (_b[(0 : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt16) | ((_b[(1 : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt16) << (8i64 : stdgo.StdGoTypes.GoUInt64));
    }
}
class T_bigEndian_asInterface {
    @:keep
    public dynamic function goString():stdgo.GoString return __self__.value.goString();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function appendUint64(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _v:stdgo.StdGoTypes.GoUInt64):stdgo.Slice<stdgo.StdGoTypes.GoByte> return __self__.value.appendUint64(_b, _v);
    @:keep
    public dynamic function putUint64(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _v:stdgo.StdGoTypes.GoUInt64):Void __self__.value.putUint64(_b, _v);
    @:keep
    public dynamic function uint64(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.StdGoTypes.GoUInt64 return __self__.value.uint64(_b);
    @:keep
    public dynamic function appendUint32(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _v:stdgo.StdGoTypes.GoUInt32):stdgo.Slice<stdgo.StdGoTypes.GoByte> return __self__.value.appendUint32(_b, _v);
    @:keep
    public dynamic function putUint32(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _v:stdgo.StdGoTypes.GoUInt32):Void __self__.value.putUint32(_b, _v);
    @:keep
    public dynamic function uint32(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.StdGoTypes.GoUInt32 return __self__.value.uint32(_b);
    @:keep
    public dynamic function appendUint16(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _v:stdgo.StdGoTypes.GoUInt16):stdgo.Slice<stdgo.StdGoTypes.GoByte> return __self__.value.appendUint16(_b, _v);
    @:keep
    public dynamic function putUint16(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _v:stdgo.StdGoTypes.GoUInt16):Void __self__.value.putUint16(_b, _v);
    @:keep
    public dynamic function uint16(_b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.StdGoTypes.GoUInt16 return __self__.value.uint16(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_bigEndian>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.binary.Binary.T_bigEndian_asInterface) class T_bigEndian_static_extension {
    @:keep
    static public function goString( _:T_bigEndian):stdgo.GoString {
        @:recv var _:T_bigEndian = _?.__copy__();
        return ("binary.BigEndian" : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function string( _:T_bigEndian):stdgo.GoString {
        @:recv var _:T_bigEndian = _?.__copy__();
        return ("BigEndian" : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function appendUint64( _:T_bigEndian, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _v:stdgo.StdGoTypes.GoUInt64):stdgo.Slice<stdgo.StdGoTypes.GoByte> {
        @:recv var _:T_bigEndian = _?.__copy__();
        return (_b.__append__((_v >> (56i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte), (_v >> (48i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte), (_v >> (40i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte), (_v >> (32i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte), (_v >> (24i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte), (_v >> (16i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte), (_v >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte), (_v : stdgo.StdGoTypes.GoByte)));
    }
    @:keep
    static public function putUint64( _:T_bigEndian, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _v:stdgo.StdGoTypes.GoUInt64):Void {
        @:recv var _:T_bigEndian = _?.__copy__();
        _b[(7 : stdgo.StdGoTypes.GoInt)];
        _b[(0 : stdgo.StdGoTypes.GoInt)] = (_v >> (56i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte);
        _b[(1 : stdgo.StdGoTypes.GoInt)] = (_v >> (48i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte);
        _b[(2 : stdgo.StdGoTypes.GoInt)] = (_v >> (40i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte);
        _b[(3 : stdgo.StdGoTypes.GoInt)] = (_v >> (32i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte);
        _b[(4 : stdgo.StdGoTypes.GoInt)] = (_v >> (24i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte);
        _b[(5 : stdgo.StdGoTypes.GoInt)] = (_v >> (16i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte);
        _b[(6 : stdgo.StdGoTypes.GoInt)] = (_v >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte);
        _b[(7 : stdgo.StdGoTypes.GoInt)] = (_v : stdgo.StdGoTypes.GoByte);
    }
    @:keep
    static public function uint64( _:T_bigEndian, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.StdGoTypes.GoUInt64 {
        @:recv var _:T_bigEndian = _?.__copy__();
        _b[(7 : stdgo.StdGoTypes.GoInt)];
        return (((((((_b[(7 : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt64) | ((_b[(6 : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt64) << (8i64 : stdgo.StdGoTypes.GoUInt64))) | ((_b[(5 : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt64) << (16i64 : stdgo.StdGoTypes.GoUInt64))) | ((_b[(4 : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt64) << (24i64 : stdgo.StdGoTypes.GoUInt64))) | ((_b[(3 : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt64) << (32i64 : stdgo.StdGoTypes.GoUInt64))) | ((_b[(2 : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt64) << (40i64 : stdgo.StdGoTypes.GoUInt64))) | ((_b[(1 : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt64) << (48i64 : stdgo.StdGoTypes.GoUInt64))) | ((_b[(0 : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt64) << (56i64 : stdgo.StdGoTypes.GoUInt64));
    }
    @:keep
    static public function appendUint32( _:T_bigEndian, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _v:stdgo.StdGoTypes.GoUInt32):stdgo.Slice<stdgo.StdGoTypes.GoByte> {
        @:recv var _:T_bigEndian = _?.__copy__();
        return (_b.__append__((_v >> (24i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte), (_v >> (16i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte), (_v >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte), (_v : stdgo.StdGoTypes.GoByte)));
    }
    @:keep
    static public function putUint32( _:T_bigEndian, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _v:stdgo.StdGoTypes.GoUInt32):Void {
        @:recv var _:T_bigEndian = _?.__copy__();
        _b[(3 : stdgo.StdGoTypes.GoInt)];
        _b[(0 : stdgo.StdGoTypes.GoInt)] = (_v >> (24i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte);
        _b[(1 : stdgo.StdGoTypes.GoInt)] = (_v >> (16i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte);
        _b[(2 : stdgo.StdGoTypes.GoInt)] = (_v >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte);
        _b[(3 : stdgo.StdGoTypes.GoInt)] = (_v : stdgo.StdGoTypes.GoByte);
    }
    @:keep
    static public function uint32( _:T_bigEndian, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.StdGoTypes.GoUInt32 {
        @:recv var _:T_bigEndian = _?.__copy__();
        _b[(3 : stdgo.StdGoTypes.GoInt)];
        return (((_b[(3 : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt32) | ((_b[(2 : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt32) << (8i64 : stdgo.StdGoTypes.GoUInt64))) | ((_b[(1 : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt32) << (16i64 : stdgo.StdGoTypes.GoUInt64))) | ((_b[(0 : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt32) << (24i64 : stdgo.StdGoTypes.GoUInt64));
    }
    @:keep
    static public function appendUint16( _:T_bigEndian, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _v:stdgo.StdGoTypes.GoUInt16):stdgo.Slice<stdgo.StdGoTypes.GoByte> {
        @:recv var _:T_bigEndian = _?.__copy__();
        return (_b.__append__((_v >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte), (_v : stdgo.StdGoTypes.GoByte)));
    }
    @:keep
    static public function putUint16( _:T_bigEndian, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>, _v:stdgo.StdGoTypes.GoUInt16):Void {
        @:recv var _:T_bigEndian = _?.__copy__();
        _b[(1 : stdgo.StdGoTypes.GoInt)];
        _b[(0 : stdgo.StdGoTypes.GoInt)] = (_v >> (8i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoByte);
        _b[(1 : stdgo.StdGoTypes.GoInt)] = (_v : stdgo.StdGoTypes.GoByte);
    }
    @:keep
    static public function uint16( _:T_bigEndian, _b:stdgo.Slice<stdgo.StdGoTypes.GoByte>):stdgo.StdGoTypes.GoUInt16 {
        @:recv var _:T_bigEndian = _?.__copy__();
        _b[(1 : stdgo.StdGoTypes.GoInt)];
        return (_b[(1 : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt16) | ((_b[(0 : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoUInt16) << (8i64 : stdgo.StdGoTypes.GoUInt64));
    }
}
class T_byteSliceReader_asInterface {
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_byteSliceReader>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.binary.Binary.T_byteSliceReader_asInterface) class T_byteSliceReader_static_extension {
    @:keep
    static public function read( _br:stdgo.StdGoTypes.Ref<T_byteSliceReader>, _p:stdgo.Slice<stdgo.StdGoTypes.GoByte>):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.Error; } {
        @:recv var _br:stdgo.StdGoTypes.Ref<T_byteSliceReader> = _br;
        var _n:stdgo.StdGoTypes.GoInt = stdgo.Go.copySlice(_p, _br._remain);
        _br._remain = (_br._remain.__slice__(_n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
}
class T_nativeEndian_asInterface {
    @:keep
    public dynamic function goString():stdgo.GoString return __self__.value.goString();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function uint64(__0:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):stdgo.StdGoTypes.GoUInt64 return __self__.value.uint64(__0);
    @:embedded
    public dynamic function uint32(__0:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):stdgo.StdGoTypes.GoUInt32 return __self__.value.uint32(__0);
    @:embedded
    public dynamic function uint16(__0:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):stdgo.StdGoTypes.GoUInt16 return __self__.value.uint16(__0);
    @:embedded
    public dynamic function putUint64(__0:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, __1:stdgo.StdGoTypes.GoUInt64):Void __self__.value.putUint64(__0, __1);
    @:embedded
    public dynamic function putUint32(__0:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, __1:stdgo.StdGoTypes.GoUInt32):Void __self__.value.putUint32(__0, __1);
    @:embedded
    public dynamic function putUint16(__0:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, __1:stdgo.StdGoTypes.GoUInt16):Void __self__.value.putUint16(__0, __1);
    @:embedded
    public dynamic function appendUint64(__0:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, __1:stdgo.StdGoTypes.GoUInt64):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return __self__.value.appendUint64(__0, __1);
    @:embedded
    public dynamic function appendUint32(__0:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, __1:stdgo.StdGoTypes.GoUInt32):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return __self__.value.appendUint32(__0, __1);
    @:embedded
    public dynamic function appendUint16(__0:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, __1:stdgo.StdGoTypes.GoUInt16):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return __self__.value.appendUint16(__0, __1);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_nativeEndian>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.binary.Binary.T_nativeEndian_asInterface) class T_nativeEndian_static_extension {
    @:keep
    static public function goString( _:T_nativeEndian):stdgo.GoString {
        @:recv var _:T_nativeEndian = _?.__copy__();
        return ("binary.NativeEndian" : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function string( _:T_nativeEndian):stdgo.GoString {
        @:recv var _:T_nativeEndian = _?.__copy__();
        return ("NativeEndian" : stdgo.GoString)?.__copy__();
    }
    @:embedded
    public static function uint64( __self__:T_nativeEndian, __0:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):stdgo.StdGoTypes.GoUInt64 return __self__.uint64(__0);
    @:embedded
    public static function uint32( __self__:T_nativeEndian, __0:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):stdgo.StdGoTypes.GoUInt32 return __self__.uint32(__0);
    @:embedded
    public static function uint16( __self__:T_nativeEndian, __0:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>):stdgo.StdGoTypes.GoUInt16 return __self__.uint16(__0);
    @:embedded
    public static function putUint64( __self__:T_nativeEndian, __0:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, __1:stdgo.StdGoTypes.GoUInt64) __self__.putUint64(__0, __1);
    @:embedded
    public static function putUint32( __self__:T_nativeEndian, __0:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, __1:stdgo.StdGoTypes.GoUInt32) __self__.putUint32(__0, __1);
    @:embedded
    public static function putUint16( __self__:T_nativeEndian, __0:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, __1:stdgo.StdGoTypes.GoUInt16) __self__.putUint16(__0, __1);
    @:embedded
    public static function appendUint64( __self__:T_nativeEndian, __0:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, __1:stdgo.StdGoTypes.GoUInt64):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return __self__.appendUint64(__0, __1);
    @:embedded
    public static function appendUint32( __self__:T_nativeEndian, __0:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, __1:stdgo.StdGoTypes.GoUInt32):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return __self__.appendUint32(__0, __1);
    @:embedded
    public static function appendUint16( __self__:T_nativeEndian, __0:stdgo.Slice<stdgo.StdGoTypes.GoUInt8>, __1:stdgo.StdGoTypes.GoUInt16):stdgo.Slice<stdgo.StdGoTypes.GoUInt8> return __self__.appendUint16(__0, __1);
}
class T_decoder_asInterface {
    @:keep
    public dynamic function _skip(_v:stdgo.reflect.Reflect.Value):Void __self__.value._skip(_v);
    @:keep
    public dynamic function _value(_v:stdgo.reflect.Reflect.Value):Void __self__.value._value(_v);
    @:keep
    public dynamic function _int64():stdgo.StdGoTypes.GoInt64 return __self__.value._int64();
    @:keep
    public dynamic function _int32():stdgo.StdGoTypes.GoInt32 return __self__.value._int32();
    @:keep
    public dynamic function _int16():stdgo.StdGoTypes.GoInt16 return __self__.value._int16();
    @:keep
    public dynamic function _int8():stdgo.StdGoTypes.GoInt8 return __self__.value._int8();
    @:keep
    public dynamic function _uint64():stdgo.StdGoTypes.GoUInt64 return __self__.value._uint64();
    @:keep
    public dynamic function _uint32():stdgo.StdGoTypes.GoUInt32 return __self__.value._uint32();
    @:keep
    public dynamic function _uint16():stdgo.StdGoTypes.GoUInt16 return __self__.value._uint16();
    @:keep
    public dynamic function _uint8():stdgo.StdGoTypes.GoUInt8 return __self__.value._uint8();
    @:keep
    public dynamic function _bool():Bool return __self__.value._bool();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_decoder>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.binary.Binary.T_decoder_asInterface) class T_decoder_static_extension {
    @:keep
    static public function _skip( _d:stdgo.StdGoTypes.Ref<T_decoder>, _v:stdgo.reflect.Reflect.Value):Void {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_decoder> = _d;
        _d._offset = _d._offset + (_dataSize(_v?.__copy__()));
    }
    @:keep
    static public function _value( _d:stdgo.StdGoTypes.Ref<T_decoder>, _v:stdgo.reflect.Reflect.Value):Void {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_decoder> = _d;
        {
            final __value__ = _v.kind();
            if (__value__ == ((17u32 : stdgo.reflect.Reflect.Kind))) {
                var _l:stdgo.StdGoTypes.GoInt = _v.len();
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < _l, _i++, {
                        _d._value(_v.index(_i)?.__copy__());
                    });
                };
            } else if (__value__ == ((25u32 : stdgo.reflect.Reflect.Kind))) {
                var _t:stdgo.reflect.Reflect.Type = _v.type();
                var _l:stdgo.StdGoTypes.GoInt = _v.numField();
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < _l, _i++, {
                        {
                            var _v:stdgo.reflect.Reflect.Value = _v.field(_i)?.__copy__();
                            if (_v.canSet() || (_t.field(_i).name != ("_" : stdgo.GoString))) {
                                _d._value(_v?.__copy__());
                            } else {
                                _d._skip(_v?.__copy__());
                            };
                        };
                    });
                };
            } else if (__value__ == ((23u32 : stdgo.reflect.Reflect.Kind))) {
                var _l:stdgo.StdGoTypes.GoInt = _v.len();
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < _l, _i++, {
                        _d._value(_v.index(_i)?.__copy__());
                    });
                };
            } else if (__value__ == ((1u32 : stdgo.reflect.Reflect.Kind))) {
                _v.setBool(_d._bool());
            } else if (__value__ == ((3u32 : stdgo.reflect.Reflect.Kind))) {
                _v.setInt((_d._int8() : stdgo.StdGoTypes.GoInt64));
            } else if (__value__ == ((4u32 : stdgo.reflect.Reflect.Kind))) {
                _v.setInt((_d._int16() : stdgo.StdGoTypes.GoInt64));
            } else if (__value__ == ((5u32 : stdgo.reflect.Reflect.Kind))) {
                _v.setInt((_d._int32() : stdgo.StdGoTypes.GoInt64));
            } else if (__value__ == ((6u32 : stdgo.reflect.Reflect.Kind))) {
                _v.setInt(_d._int64());
            } else if (__value__ == ((8u32 : stdgo.reflect.Reflect.Kind))) {
                _v.setUint((_d._uint8() : stdgo.StdGoTypes.GoUInt64));
            } else if (__value__ == ((9u32 : stdgo.reflect.Reflect.Kind))) {
                _v.setUint((_d._uint16() : stdgo.StdGoTypes.GoUInt64));
            } else if (__value__ == ((10u32 : stdgo.reflect.Reflect.Kind))) {
                _v.setUint((_d._uint32() : stdgo.StdGoTypes.GoUInt64));
            } else if (__value__ == ((11u32 : stdgo.reflect.Reflect.Kind))) {
                _v.setUint(_d._uint64());
            } else if (__value__ == ((13u32 : stdgo.reflect.Reflect.Kind))) {
                _v.setFloat((stdgo.math.Math.float32frombits(_d._uint32()) : stdgo.StdGoTypes.GoFloat64));
            } else if (__value__ == ((14u32 : stdgo.reflect.Reflect.Kind))) {
                _v.setFloat(stdgo.math.Math.float64frombits(_d._uint64()));
            } else if (__value__ == ((15u32 : stdgo.reflect.Reflect.Kind))) {
                _v.setComplex(new stdgo.StdGoTypes.GoComplex128((stdgo.math.Math.float32frombits(_d._uint32()) : stdgo.StdGoTypes.GoFloat64), (stdgo.math.Math.float32frombits(_d._uint32()) : stdgo.StdGoTypes.GoFloat64)));
            } else if (__value__ == ((16u32 : stdgo.reflect.Reflect.Kind))) {
                _v.setComplex(new stdgo.StdGoTypes.GoComplex128(stdgo.math.Math.float64frombits(_d._uint64()), stdgo.math.Math.float64frombits(_d._uint64())));
            };
        };
    }
    @:keep
    static public function _int64( _d:stdgo.StdGoTypes.Ref<T_decoder>):stdgo.StdGoTypes.GoInt64 {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_decoder> = _d;
        return (_d._uint64() : stdgo.StdGoTypes.GoInt64);
    }
    @:keep
    static public function _int32( _d:stdgo.StdGoTypes.Ref<T_decoder>):stdgo.StdGoTypes.GoInt32 {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_decoder> = _d;
        return (_d._uint32() : stdgo.StdGoTypes.GoInt32);
    }
    @:keep
    static public function _int16( _d:stdgo.StdGoTypes.Ref<T_decoder>):stdgo.StdGoTypes.GoInt16 {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_decoder> = _d;
        return (_d._uint16() : stdgo.StdGoTypes.GoInt16);
    }
    @:keep
    static public function _int8( _d:stdgo.StdGoTypes.Ref<T_decoder>):stdgo.StdGoTypes.GoInt8 {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_decoder> = _d;
        return (_d._uint8() : stdgo.StdGoTypes.GoInt8);
    }
    @:keep
    static public function _uint64( _d:stdgo.StdGoTypes.Ref<T_decoder>):stdgo.StdGoTypes.GoUInt64 {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_decoder> = _d;
        var _x:stdgo.StdGoTypes.GoUInt64 = _d._order.uint64((_d._buf.__slice__(_d._offset, _d._offset + (8 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
        _d._offset = _d._offset + ((8 : stdgo.StdGoTypes.GoInt));
        return _x;
    }
    @:keep
    static public function _uint32( _d:stdgo.StdGoTypes.Ref<T_decoder>):stdgo.StdGoTypes.GoUInt32 {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_decoder> = _d;
        var _x:stdgo.StdGoTypes.GoUInt32 = _d._order.uint32((_d._buf.__slice__(_d._offset, _d._offset + (4 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
        _d._offset = _d._offset + ((4 : stdgo.StdGoTypes.GoInt));
        return _x;
    }
    @:keep
    static public function _uint16( _d:stdgo.StdGoTypes.Ref<T_decoder>):stdgo.StdGoTypes.GoUInt16 {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_decoder> = _d;
        var _x:stdgo.StdGoTypes.GoUInt16 = _d._order.uint16((_d._buf.__slice__(_d._offset, _d._offset + (2 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
        _d._offset = _d._offset + ((2 : stdgo.StdGoTypes.GoInt));
        return _x;
    }
    @:keep
    static public function _uint8( _d:stdgo.StdGoTypes.Ref<T_decoder>):stdgo.StdGoTypes.GoUInt8 {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_decoder> = _d;
        var _x:stdgo.StdGoTypes.GoUInt8 = _d._buf[(_d._offset : stdgo.StdGoTypes.GoInt)];
        _d._offset++;
        return _x;
    }
    @:keep
    static public function _bool( _d:stdgo.StdGoTypes.Ref<T_decoder>):Bool {
        @:recv var _d:stdgo.StdGoTypes.Ref<T_decoder> = _d;
        var _x:stdgo.StdGoTypes.GoUInt8 = _d._buf[(_d._offset : stdgo.StdGoTypes.GoInt)];
        _d._offset++;
        return _x != ((0 : stdgo.StdGoTypes.GoUInt8));
    }
}
class T_encoder_asInterface {
    @:keep
    public dynamic function _skip(_v:stdgo.reflect.Reflect.Value):Void __self__.value._skip(_v);
    @:keep
    public dynamic function _value(_v:stdgo.reflect.Reflect.Value):Void __self__.value._value(_v);
    @:keep
    public dynamic function _int64(_x:stdgo.StdGoTypes.GoInt64):Void __self__.value._int64(_x);
    @:keep
    public dynamic function _int32(_x:stdgo.StdGoTypes.GoInt32):Void __self__.value._int32(_x);
    @:keep
    public dynamic function _int16(_x:stdgo.StdGoTypes.GoInt16):Void __self__.value._int16(_x);
    @:keep
    public dynamic function _int8(_x:stdgo.StdGoTypes.GoInt8):Void __self__.value._int8(_x);
    @:keep
    public dynamic function _uint64(_x:stdgo.StdGoTypes.GoUInt64):Void __self__.value._uint64(_x);
    @:keep
    public dynamic function _uint32(_x:stdgo.StdGoTypes.GoUInt32):Void __self__.value._uint32(_x);
    @:keep
    public dynamic function _uint16(_x:stdgo.StdGoTypes.GoUInt16):Void __self__.value._uint16(_x);
    @:keep
    public dynamic function _uint8(_x:stdgo.StdGoTypes.GoUInt8):Void __self__.value._uint8(_x);
    @:keep
    public dynamic function _bool(_x:Bool):Void __self__.value._bool(_x);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_encoder>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.binary.Binary.T_encoder_asInterface) class T_encoder_static_extension {
    @:keep
    static public function _skip( _e:stdgo.StdGoTypes.Ref<T_encoder>, _v:stdgo.reflect.Reflect.Value):Void {
        @:recv var _e:stdgo.StdGoTypes.Ref<T_encoder> = _e;
        var _n:stdgo.StdGoTypes.GoInt = _dataSize(_v?.__copy__());
        var _zero = (_e._buf.__slice__(_e._offset, _e._offset + _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        for (_i in 0 ... _zero.length.toBasic()) {
            _zero[(_i : stdgo.StdGoTypes.GoInt)] = (0 : stdgo.StdGoTypes.GoUInt8);
        };
        _e._offset = _e._offset + (_n);
    }
    @:keep
    static public function _value( _e:stdgo.StdGoTypes.Ref<T_encoder>, _v:stdgo.reflect.Reflect.Value):Void {
        @:recv var _e:stdgo.StdGoTypes.Ref<T_encoder> = _e;
        {
            final __value__ = _v.kind();
            if (__value__ == ((17u32 : stdgo.reflect.Reflect.Kind))) {
                var _l:stdgo.StdGoTypes.GoInt = _v.len();
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < _l, _i++, {
                        _e._value(_v.index(_i)?.__copy__());
                    });
                };
            } else if (__value__ == ((25u32 : stdgo.reflect.Reflect.Kind))) {
                var _t:stdgo.reflect.Reflect.Type = _v.type();
                var _l:stdgo.StdGoTypes.GoInt = _v.numField();
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < _l, _i++, {
                        {
                            var _v:stdgo.reflect.Reflect.Value = _v.field(_i)?.__copy__();
                            if (_v.canSet() || (_t.field(_i).name != ("_" : stdgo.GoString))) {
                                _e._value(_v?.__copy__());
                            } else {
                                _e._skip(_v?.__copy__());
                            };
                        };
                    });
                };
            } else if (__value__ == ((23u32 : stdgo.reflect.Reflect.Kind))) {
                var _l:stdgo.StdGoTypes.GoInt = _v.len();
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < _l, _i++, {
                        _e._value(_v.index(_i)?.__copy__());
                    });
                };
            } else if (__value__ == ((1u32 : stdgo.reflect.Reflect.Kind))) {
                _e._bool(_v.bool_());
            } else if (__value__ == ((2u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((3u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((4u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((5u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((6u32 : stdgo.reflect.Reflect.Kind))) {
                {
                    final __value__ = _v.type().kind();
                    if (__value__ == ((3u32 : stdgo.reflect.Reflect.Kind))) {
                        _e._int8((_v.int_() : stdgo.StdGoTypes.GoInt8));
                    } else if (__value__ == ((4u32 : stdgo.reflect.Reflect.Kind))) {
                        _e._int16((_v.int_() : stdgo.StdGoTypes.GoInt16));
                    } else if (__value__ == ((5u32 : stdgo.reflect.Reflect.Kind))) {
                        _e._int32((_v.int_() : stdgo.StdGoTypes.GoInt32));
                    } else if (__value__ == ((6u32 : stdgo.reflect.Reflect.Kind))) {
                        _e._int64(_v.int_());
                    };
                };
            } else if (__value__ == ((7u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((8u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((9u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((10u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((11u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((12u32 : stdgo.reflect.Reflect.Kind))) {
                {
                    final __value__ = _v.type().kind();
                    if (__value__ == ((8u32 : stdgo.reflect.Reflect.Kind))) {
                        _e._uint8((_v.uint() : stdgo.StdGoTypes.GoUInt8));
                    } else if (__value__ == ((9u32 : stdgo.reflect.Reflect.Kind))) {
                        _e._uint16((_v.uint() : stdgo.StdGoTypes.GoUInt16));
                    } else if (__value__ == ((10u32 : stdgo.reflect.Reflect.Kind))) {
                        _e._uint32((_v.uint() : stdgo.StdGoTypes.GoUInt32));
                    } else if (__value__ == ((11u32 : stdgo.reflect.Reflect.Kind))) {
                        _e._uint64(_v.uint());
                    };
                };
            } else if (__value__ == ((13u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((14u32 : stdgo.reflect.Reflect.Kind))) {
                {
                    final __value__ = _v.type().kind();
                    if (__value__ == ((13u32 : stdgo.reflect.Reflect.Kind))) {
                        _e._uint32(stdgo.math.Math.float32bits((_v.float_() : stdgo.StdGoTypes.GoFloat32)));
                    } else if (__value__ == ((14u32 : stdgo.reflect.Reflect.Kind))) {
                        _e._uint64(stdgo.math.Math.float64bits(_v.float_()));
                    };
                };
            } else if (__value__ == ((15u32 : stdgo.reflect.Reflect.Kind)) || __value__ == ((16u32 : stdgo.reflect.Reflect.Kind))) {
                {
                    final __value__ = _v.type().kind();
                    if (__value__ == ((15u32 : stdgo.reflect.Reflect.Kind))) {
                        var _x:stdgo.StdGoTypes.GoComplex128 = _v.complex();
                        _e._uint32(stdgo.math.Math.float32bits((_x.real : stdgo.StdGoTypes.GoFloat32)));
                        _e._uint32(stdgo.math.Math.float32bits((_x.imag : stdgo.StdGoTypes.GoFloat32)));
                    } else if (__value__ == ((16u32 : stdgo.reflect.Reflect.Kind))) {
                        var _x:stdgo.StdGoTypes.GoComplex128 = _v.complex();
                        _e._uint64(stdgo.math.Math.float64bits(_x.real));
                        _e._uint64(stdgo.math.Math.float64bits(_x.imag));
                    };
                };
            };
        };
    }
    @:keep
    static public function _int64( _e:stdgo.StdGoTypes.Ref<T_encoder>, _x:stdgo.StdGoTypes.GoInt64):Void {
        @:recv var _e:stdgo.StdGoTypes.Ref<T_encoder> = _e;
        _e._uint64((_x : stdgo.StdGoTypes.GoUInt64));
    }
    @:keep
    static public function _int32( _e:stdgo.StdGoTypes.Ref<T_encoder>, _x:stdgo.StdGoTypes.GoInt32):Void {
        @:recv var _e:stdgo.StdGoTypes.Ref<T_encoder> = _e;
        _e._uint32((_x : stdgo.StdGoTypes.GoUInt32));
    }
    @:keep
    static public function _int16( _e:stdgo.StdGoTypes.Ref<T_encoder>, _x:stdgo.StdGoTypes.GoInt16):Void {
        @:recv var _e:stdgo.StdGoTypes.Ref<T_encoder> = _e;
        _e._uint16((_x : stdgo.StdGoTypes.GoUInt16));
    }
    @:keep
    static public function _int8( _e:stdgo.StdGoTypes.Ref<T_encoder>, _x:stdgo.StdGoTypes.GoInt8):Void {
        @:recv var _e:stdgo.StdGoTypes.Ref<T_encoder> = _e;
        _e._uint8((_x : stdgo.StdGoTypes.GoUInt8));
    }
    @:keep
    static public function _uint64( _e:stdgo.StdGoTypes.Ref<T_encoder>, _x:stdgo.StdGoTypes.GoUInt64):Void {
        @:recv var _e:stdgo.StdGoTypes.Ref<T_encoder> = _e;
        _e._order.putUint64((_e._buf.__slice__(_e._offset, _e._offset + (8 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _x);
        _e._offset = _e._offset + ((8 : stdgo.StdGoTypes.GoInt));
    }
    @:keep
    static public function _uint32( _e:stdgo.StdGoTypes.Ref<T_encoder>, _x:stdgo.StdGoTypes.GoUInt32):Void {
        @:recv var _e:stdgo.StdGoTypes.Ref<T_encoder> = _e;
        _e._order.putUint32((_e._buf.__slice__(_e._offset, _e._offset + (4 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _x);
        _e._offset = _e._offset + ((4 : stdgo.StdGoTypes.GoInt));
    }
    @:keep
    static public function _uint16( _e:stdgo.StdGoTypes.Ref<T_encoder>, _x:stdgo.StdGoTypes.GoUInt16):Void {
        @:recv var _e:stdgo.StdGoTypes.Ref<T_encoder> = _e;
        _e._order.putUint16((_e._buf.__slice__(_e._offset, _e._offset + (2 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _x);
        _e._offset = _e._offset + ((2 : stdgo.StdGoTypes.GoInt));
    }
    @:keep
    static public function _uint8( _e:stdgo.StdGoTypes.Ref<T_encoder>, _x:stdgo.StdGoTypes.GoUInt8):Void {
        @:recv var _e:stdgo.StdGoTypes.Ref<T_encoder> = _e;
        _e._buf[(_e._offset : stdgo.StdGoTypes.GoInt)] = _x;
        _e._offset++;
    }
    @:keep
    static public function _bool( _e:stdgo.StdGoTypes.Ref<T_encoder>, _x:Bool):Void {
        @:recv var _e:stdgo.StdGoTypes.Ref<T_encoder> = _e;
        if (_x) {
            _e._buf[(_e._offset : stdgo.StdGoTypes.GoInt)] = (1 : stdgo.StdGoTypes.GoUInt8);
        } else {
            _e._buf[(_e._offset : stdgo.StdGoTypes.GoInt)] = (0 : stdgo.StdGoTypes.GoUInt8);
        };
        _e._offset++;
    }
}
