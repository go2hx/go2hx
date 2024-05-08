package stdgo.encoding;
/**
    Package binary implements simple translation between numbers and byte
    sequences and encoding and decoding of varints.
    
    Numbers are translated by reading and writing fixed-size values.
    A fixed-size value is either a fixed-size arithmetic
    type (bool, int8, uint8, int16, float32, complex64, ...)
    or an array or struct containing only fixed-size values.
    
    The varint functions encode and decode single integer values using
    a variable-length encoding; smaller values require fewer bytes.
    For a specification, see
    https://developers.google.com/protocol-buffers/docs/encoding.
    
    This package favors simplicity over efficiency. Clients that require
    high-performance serialization, especially for large data structures,
    should look at more advanced solutions such as the encoding/gob
    package or protocol buffers.
**/
private var __go2hxdoc__package : Bool;
var littleEndian(get, set) : T_littleEndian;
private function get_littleEndian():T_littleEndian return stdgo._internal.encoding.binary.Binary.littleEndian;
private function set_littleEndian(v:T_littleEndian):T_littleEndian {
        stdgo._internal.encoding.binary.Binary.littleEndian = v;
        return v;
    }
var bigEndian(get, set) : T_bigEndian;
private function get_bigEndian():T_bigEndian return stdgo._internal.encoding.binary.Binary.bigEndian;
private function set_bigEndian(v:T_bigEndian):T_bigEndian {
        stdgo._internal.encoding.binary.Binary.bigEndian = v;
        return v;
    }
var nativeEndian(get, set) : T_nativeEndian;
private function get_nativeEndian():T_nativeEndian return stdgo._internal.encoding.binary.Binary.nativeEndian;
private function set_nativeEndian(v:T_nativeEndian):T_nativeEndian {
        stdgo._internal.encoding.binary.Binary.nativeEndian = v;
        return v;
    }
final maxVarintLen16 : haxe.UInt64 = stdgo._internal.encoding.binary.Binary.maxVarintLen16;
final maxVarintLen32 : haxe.UInt64 = stdgo._internal.encoding.binary.Binary.maxVarintLen32;
final maxVarintLen64 : haxe.UInt64 = stdgo._internal.encoding.binary.Binary.maxVarintLen64;
typedef ByteOrder = stdgo._internal.encoding.binary.Binary.ByteOrder;
typedef AppendByteOrder = stdgo._internal.encoding.binary.Binary.AppendByteOrder;
abstract T_littleEndian(stdgo._internal.encoding.binary.Binary.T_littleEndian) from stdgo._internal.encoding.binary.Binary.T_littleEndian to stdgo._internal.encoding.binary.Binary.T_littleEndian {
    public function new() this = new stdgo._internal.encoding.binary.Binary.T_littleEndian();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_bigEndian(stdgo._internal.encoding.binary.Binary.T_bigEndian) from stdgo._internal.encoding.binary.Binary.T_bigEndian to stdgo._internal.encoding.binary.Binary.T_bigEndian {
    public function new() this = new stdgo._internal.encoding.binary.Binary.T_bigEndian();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_coder(stdgo._internal.encoding.binary.Binary.T_coder) from stdgo._internal.encoding.binary.Binary.T_coder to stdgo._internal.encoding.binary.Binary.T_coder {
    public var _order(get, set) : stdgo._internal.encoding.binary.Binary.ByteOrder;
    function get__order():stdgo._internal.encoding.binary.Binary.ByteOrder return this._order;
    function set__order(v:stdgo._internal.encoding.binary.Binary.ByteOrder):stdgo._internal.encoding.binary.Binary.ByteOrder {
        this._order = v;
        return v;
    }
    public var _buf(get, set) : Array<std.UInt>;
    function get__buf():Array<std.UInt> return [for (i in this._buf) i];
    function set__buf(v:Array<std.UInt>):Array<std.UInt> {
        this._buf = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _offset(get, set) : StdTypes.Int;
    function get__offset():StdTypes.Int return this._offset;
    function set__offset(v:StdTypes.Int):StdTypes.Int {
        this._offset = v;
        return v;
    }
    public function new(?_order:stdgo._internal.encoding.binary.Binary.ByteOrder, ?_buf:Array<std.UInt>, ?_offset:StdTypes.Int) this = new stdgo._internal.encoding.binary.Binary.T_coder(_order, ([for (i in _buf) i] : stdgo.Slice<stdgo.GoUInt8>), _offset);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Struct(stdgo._internal.encoding.binary.Binary.Struct) from stdgo._internal.encoding.binary.Binary.Struct to stdgo._internal.encoding.binary.Binary.Struct {
    public var int8(get, set) : StdTypes.Int;
    function get_int8():StdTypes.Int return this.int8;
    function set_int8(v:StdTypes.Int):StdTypes.Int {
        this.int8 = v;
        return v;
    }
    public var int16(get, set) : StdTypes.Int;
    function get_int16():StdTypes.Int return this.int16;
    function set_int16(v:StdTypes.Int):StdTypes.Int {
        this.int16 = v;
        return v;
    }
    public var int32(get, set) : StdTypes.Int;
    function get_int32():StdTypes.Int return this.int32;
    function set_int32(v:StdTypes.Int):StdTypes.Int {
        this.int32 = v;
        return v;
    }
    public var int64(get, set) : haxe.Int64;
    function get_int64():haxe.Int64 return this.int64;
    function set_int64(v:haxe.Int64):haxe.Int64 {
        this.int64 = v;
        return v;
    }
    public var uint8(get, set) : std.UInt;
    function get_uint8():std.UInt return this.uint8;
    function set_uint8(v:std.UInt):std.UInt {
        this.uint8 = v;
        return v;
    }
    public var uint16(get, set) : std.UInt;
    function get_uint16():std.UInt return this.uint16;
    function set_uint16(v:std.UInt):std.UInt {
        this.uint16 = v;
        return v;
    }
    public var uint32(get, set) : std.UInt;
    function get_uint32():std.UInt return this.uint32;
    function set_uint32(v:std.UInt):std.UInt {
        this.uint32 = v;
        return v;
    }
    public var uint64(get, set) : haxe.UInt64;
    function get_uint64():haxe.UInt64 return this.uint64;
    function set_uint64(v:haxe.UInt64):haxe.UInt64 {
        this.uint64 = v;
        return v;
    }
    public var float32(get, set) : StdTypes.Float;
    function get_float32():StdTypes.Float return this.float32;
    function set_float32(v:StdTypes.Float):StdTypes.Float {
        this.float32 = v;
        return v;
    }
    public var float64(get, set) : StdTypes.Float;
    function get_float64():StdTypes.Float return this.float64;
    function set_float64(v:StdTypes.Float):StdTypes.Float {
        this.float64 = v;
        return v;
    }
    public var complex64(get, set) : stdgo.GoComplex64;
    function get_complex64():stdgo.GoComplex64 return this.complex64;
    function set_complex64(v:stdgo.GoComplex64):stdgo.GoComplex64 {
        this.complex64 = v;
        return v;
    }
    public var complex128(get, set) : stdgo.GoComplex128;
    function get_complex128():stdgo.GoComplex128 return this.complex128;
    function set_complex128(v:stdgo.GoComplex128):stdgo.GoComplex128 {
        this.complex128 = v;
        return v;
    }
    public var array(get, set) : haxe.ds.Vector<std.UInt>;
    function get_array():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.array) i]);
    function set_array(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.array = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var bool_(get, set) : Bool;
    function get_bool_():Bool return this.bool_;
    function set_bool_(v:Bool):Bool {
        this.bool_ = v;
        return v;
    }
    public var boolArray(get, set) : haxe.ds.Vector<Bool>;
    function get_boolArray():haxe.ds.Vector<Bool> return haxe.ds.Vector.fromArrayCopy([for (i in this.boolArray) i]);
    function set_boolArray(v:haxe.ds.Vector<Bool>):haxe.ds.Vector<Bool> {
        this.boolArray = ([for (i in v) i] : stdgo.GoArray<Bool>);
        return v;
    }
    public function new(?int8:StdTypes.Int, ?int16:StdTypes.Int, ?int32:StdTypes.Int, ?int64:haxe.Int64, ?uint8:std.UInt, ?uint16:std.UInt, ?uint32:std.UInt, ?uint64:haxe.UInt64, ?float32:StdTypes.Float, ?float64:StdTypes.Float, ?complex64:stdgo.GoComplex64, ?complex128:stdgo.GoComplex128, ?array:haxe.ds.Vector<std.UInt>, ?bool_:Bool, ?boolArray:haxe.ds.Vector<Bool>) this = new stdgo._internal.encoding.binary.Binary.Struct(
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
([for (i in array) i] : stdgo.GoArray<stdgo.GoUInt8>),
bool_,
([for (i in boolArray) i] : stdgo.GoArray<Bool>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_(stdgo._internal.encoding.binary.Binary.T_) from stdgo._internal.encoding.binary.Binary.T_ to stdgo._internal.encoding.binary.Binary.T_ {
    public var int_(get, set) : StdTypes.Int;
    function get_int_():StdTypes.Int return this.int_;
    function set_int_(v:StdTypes.Int):StdTypes.Int {
        this.int_ = v;
        return v;
    }
    public var uint(get, set) : std.UInt;
    function get_uint():std.UInt return this.uint;
    function set_uint(v:std.UInt):std.UInt {
        this.uint = v;
        return v;
    }
    public var uintptr(get, set) : stdgo.GoUIntptr;
    function get_uintptr():stdgo.GoUIntptr return this.uintptr;
    function set_uintptr(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.uintptr = v;
        return v;
    }
    public var array(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get_array():haxe.ds.Vector<StdTypes.Int> return haxe.ds.Vector.fromArrayCopy([for (i in this.array) i]);
    function set_array(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this.array = ([for (i in v) i] : stdgo.GoArray<stdgo.GoInt>);
        return v;
    }
    public function new(?int_:StdTypes.Int, ?uint:std.UInt, ?uintptr:stdgo.GoUIntptr, ?array:haxe.ds.Vector<StdTypes.Int>) this = new stdgo._internal.encoding.binary.Binary.T_(int_, uint, uintptr, ([for (i in array) i] : stdgo.GoArray<stdgo.GoInt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract BlankFields(stdgo._internal.encoding.binary.Binary.BlankFields) from stdgo._internal.encoding.binary.Binary.BlankFields to stdgo._internal.encoding.binary.Binary.BlankFields {
    public var a(get, set) : std.UInt;
    function get_a():std.UInt return this.a;
    function set_a(v:std.UInt):std.UInt {
        this.a = v;
        return v;
    }
    public var __4(get, set) : StdTypes.Int;
    function get___4():StdTypes.Int return this.__4;
    function set___4(v:StdTypes.Int):StdTypes.Int {
        this.__4 = v;
        return v;
    }
    public var b(get, set) : StdTypes.Float;
    function get_b():StdTypes.Float return this.b;
    function set_b(v:StdTypes.Float):StdTypes.Float {
        this.b = v;
        return v;
    }
    public var __5(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get___5():haxe.ds.Vector<StdTypes.Int> return haxe.ds.Vector.fromArrayCopy([for (i in this.__5) i]);
    function set___5(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this.__5 = ([for (i in v) i] : stdgo.GoArray<stdgo.GoInt16>);
        return v;
    }
    public var c(get, set) : std.UInt;
    function get_c():std.UInt return this.c;
    function set_c(v:std.UInt):std.UInt {
        this.c = v;
        return v;
    }
    public var __6(get, set) : haxe.ds.Vector<std.UInt>;
    function get___6():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.__6) i]);
    function set___6(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.__6 = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var __7(get, set) : stdgo.Tuple.Tuple1<haxe.ds.Vector<StdTypes.Float>>;
    function get___7():stdgo.Tuple.Tuple1<haxe.ds.Vector<StdTypes.Float>> return {
        final obj = this.__7;
        { _f : haxe.ds.Vector.fromArrayCopy([for (i in obj._f) i]) };
    };
    function set___7(v:stdgo.Tuple.Tuple1<haxe.ds.Vector<StdTypes.Float>>):stdgo.Tuple.Tuple1<haxe.ds.Vector<StdTypes.Float>> {
        this.__7 = {
            final obj = v;
            { _f : ([for (i in obj._f) i] : stdgo.GoArray<stdgo.GoFloat32>) };
        };
        return v;
    }
    public function new(?a:std.UInt, ?__4:StdTypes.Int, ?b:StdTypes.Float, ?__5:haxe.ds.Vector<StdTypes.Int>, ?c:std.UInt, ?__6:haxe.ds.Vector<std.UInt>, ?__7:stdgo.Tuple.Tuple1<haxe.ds.Vector<StdTypes.Float>>) this = new stdgo._internal.encoding.binary.Binary.BlankFields(a, __4, b, ([for (i in __5) i] : stdgo.GoArray<stdgo.GoInt16>), c, ([for (i in __6) i] : stdgo.GoArray<stdgo.GoUInt8>), {
        final obj = __7;
        { _f : ([for (i in obj._f) i] : stdgo.GoArray<stdgo.GoFloat32>) };
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract BlankFieldsProbe(stdgo._internal.encoding.binary.Binary.BlankFieldsProbe) from stdgo._internal.encoding.binary.Binary.BlankFieldsProbe to stdgo._internal.encoding.binary.Binary.BlankFieldsProbe {
    public var a(get, set) : std.UInt;
    function get_a():std.UInt return this.a;
    function set_a(v:std.UInt):std.UInt {
        this.a = v;
        return v;
    }
    public var p0(get, set) : StdTypes.Int;
    function get_p0():StdTypes.Int return this.p0;
    function set_p0(v:StdTypes.Int):StdTypes.Int {
        this.p0 = v;
        return v;
    }
    public var b(get, set) : StdTypes.Float;
    function get_b():StdTypes.Float return this.b;
    function set_b(v:StdTypes.Float):StdTypes.Float {
        this.b = v;
        return v;
    }
    public var p1(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get_p1():haxe.ds.Vector<StdTypes.Int> return haxe.ds.Vector.fromArrayCopy([for (i in this.p1) i]);
    function set_p1(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this.p1 = ([for (i in v) i] : stdgo.GoArray<stdgo.GoInt16>);
        return v;
    }
    public var c(get, set) : std.UInt;
    function get_c():std.UInt return this.c;
    function set_c(v:std.UInt):std.UInt {
        this.c = v;
        return v;
    }
    public var p2(get, set) : haxe.ds.Vector<std.UInt>;
    function get_p2():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.p2) i]);
    function set_p2(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.p2 = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var p3(get, set) : stdgo.Tuple.Tuple1<haxe.ds.Vector<StdTypes.Float>>;
    function get_p3():stdgo.Tuple.Tuple1<haxe.ds.Vector<StdTypes.Float>> return {
        final obj = this.p3;
        { f : haxe.ds.Vector.fromArrayCopy([for (i in obj.f) i]) };
    };
    function set_p3(v:stdgo.Tuple.Tuple1<haxe.ds.Vector<StdTypes.Float>>):stdgo.Tuple.Tuple1<haxe.ds.Vector<StdTypes.Float>> {
        this.p3 = {
            final obj = v;
            { f : ([for (i in obj.f) i] : stdgo.GoArray<stdgo.GoFloat32>) };
        };
        return v;
    }
    public function new(?a:std.UInt, ?p0:StdTypes.Int, ?b:StdTypes.Float, ?p1:haxe.ds.Vector<StdTypes.Int>, ?c:std.UInt, ?p2:haxe.ds.Vector<std.UInt>, ?p3:stdgo.Tuple.Tuple1<haxe.ds.Vector<StdTypes.Float>>) this = new stdgo._internal.encoding.binary.Binary.BlankFieldsProbe(a, p0, b, ([for (i in p1) i] : stdgo.GoArray<stdgo.GoInt16>), c, ([for (i in p2) i] : stdgo.GoArray<stdgo.GoUInt8>), {
        final obj = p3;
        { f : ([for (i in obj.f) i] : stdgo.GoArray<stdgo.GoFloat32>) };
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract Unexported(stdgo._internal.encoding.binary.Binary.Unexported) from stdgo._internal.encoding.binary.Binary.Unexported to stdgo._internal.encoding.binary.Binary.Unexported {
    public var _a(get, set) : StdTypes.Int;
    function get__a():StdTypes.Int return this._a;
    function set__a(v:StdTypes.Int):StdTypes.Int {
        this._a = v;
        return v;
    }
    public function new(?_a:StdTypes.Int) this = new stdgo._internal.encoding.binary.Binary.Unexported(_a);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_byteSliceReader(stdgo._internal.encoding.binary.Binary.T_byteSliceReader) from stdgo._internal.encoding.binary.Binary.T_byteSliceReader to stdgo._internal.encoding.binary.Binary.T_byteSliceReader {
    public var _remain(get, set) : Array<std.UInt>;
    function get__remain():Array<std.UInt> return [for (i in this._remain) i];
    function set__remain(v:Array<std.UInt>):Array<std.UInt> {
        this._remain = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_remain:Array<std.UInt>) this = new stdgo._internal.encoding.binary.Binary.T_byteSliceReader(([for (i in _remain) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_nativeEndian(stdgo._internal.encoding.binary.Binary.T_nativeEndian) from stdgo._internal.encoding.binary.Binary.T_nativeEndian to stdgo._internal.encoding.binary.Binary.T_nativeEndian {
    public var _littleEndian(get, set) : stdgo._internal.encoding.binary.Binary.T_littleEndian;
    function get__littleEndian():stdgo._internal.encoding.binary.Binary.T_littleEndian return this._littleEndian;
    function set__littleEndian(v:stdgo._internal.encoding.binary.Binary.T_littleEndian):stdgo._internal.encoding.binary.Binary.T_littleEndian {
        this._littleEndian = v;
        return v;
    }
    public function new(?_littleEndian:stdgo._internal.encoding.binary.Binary.T_littleEndian) this = new stdgo._internal.encoding.binary.Binary.T_nativeEndian(_littleEndian);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T__struct_0 = stdgo._internal.encoding.binary.Binary.T__struct_0;
typedef T__struct_1 = stdgo._internal.encoding.binary.Binary.T__struct_1;
typedef T__struct_2 = stdgo._internal.encoding.binary.Binary.T__struct_2;
typedef T__struct_3 = stdgo._internal.encoding.binary.Binary.T__struct_3;
typedef T__struct_4 = stdgo._internal.encoding.binary.Binary.T__struct_4;
typedef T__struct_5 = stdgo._internal.encoding.binary.Binary.T__struct_5;
typedef T__struct_6 = stdgo._internal.encoding.binary.Binary.T__struct_6;
typedef T_decoder = stdgo._internal.encoding.binary.Binary.T_decoder;
typedef T_encoder = stdgo._internal.encoding.binary.Binary.T_encoder;
abstract T_testSizeStructCache_11___localname___foo(stdgo._internal.encoding.binary.Binary.T_testSizeStructCache_11___localname___foo) from stdgo._internal.encoding.binary.Binary.T_testSizeStructCache_11___localname___foo to stdgo._internal.encoding.binary.Binary.T_testSizeStructCache_11___localname___foo {
    public var a(get, set) : std.UInt;
    function get_a():std.UInt return this.a;
    function set_a(v:std.UInt):std.UInt {
        this.a = v;
        return v;
    }
    public function new(?a:std.UInt) this = new stdgo._internal.encoding.binary.Binary.T_testSizeStructCache_11___localname___foo(a);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_testSizeStructCache_12___localname___bar(stdgo._internal.encoding.binary.Binary.T_testSizeStructCache_12___localname___bar) from stdgo._internal.encoding.binary.Binary.T_testSizeStructCache_12___localname___bar to stdgo._internal.encoding.binary.Binary.T_testSizeStructCache_12___localname___bar {
    public var a(get, set) : stdgo._internal.encoding.binary.Binary.Struct;
    function get_a():stdgo._internal.encoding.binary.Binary.Struct return this.a;
    function set_a(v:stdgo._internal.encoding.binary.Binary.Struct):stdgo._internal.encoding.binary.Binary.Struct {
        this.a = v;
        return v;
    }
    public var b(get, set) : stdgo._internal.encoding.binary.Binary.T_testSizeStructCache_11___localname___foo;
    function get_b():stdgo._internal.encoding.binary.Binary.T_testSizeStructCache_11___localname___foo return this.b;
    function set_b(v:stdgo._internal.encoding.binary.Binary.T_testSizeStructCache_11___localname___foo):stdgo._internal.encoding.binary.Binary.T_testSizeStructCache_11___localname___foo {
        this.b = v;
        return v;
    }
    public var c(get, set) : stdgo._internal.encoding.binary.Binary.Struct;
    function get_c():stdgo._internal.encoding.binary.Binary.Struct return this.c;
    function set_c(v:stdgo._internal.encoding.binary.Binary.Struct):stdgo._internal.encoding.binary.Binary.Struct {
        this.c = v;
        return v;
    }
    public function new(?a:stdgo._internal.encoding.binary.Binary.Struct, ?b:stdgo._internal.encoding.binary.Binary.T_testSizeStructCache_11___localname___foo, ?c:stdgo._internal.encoding.binary.Binary.Struct) this = new stdgo._internal.encoding.binary.Binary.T_testSizeStructCache_12___localname___bar(a, b, c);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T_testByteOrder_13___localname___byteOrder = stdgo._internal.encoding.binary.Binary.T_testByteOrder_13___localname___byteOrder;
abstract T_testNoFixedSize_14___localname___Person(stdgo._internal.encoding.binary.Binary.T_testNoFixedSize_14___localname___Person) from stdgo._internal.encoding.binary.Binary.T_testNoFixedSize_14___localname___Person to stdgo._internal.encoding.binary.Binary.T_testNoFixedSize_14___localname___Person {
    public var age(get, set) : StdTypes.Int;
    function get_age():StdTypes.Int return this.age;
    function set_age(v:StdTypes.Int):StdTypes.Int {
        this.age = v;
        return v;
    }
    public var weight(get, set) : StdTypes.Float;
    function get_weight():StdTypes.Float return this.weight;
    function set_weight(v:StdTypes.Float):StdTypes.Float {
        this.weight = v;
        return v;
    }
    public var height(get, set) : StdTypes.Float;
    function get_height():StdTypes.Float return this.height;
    function set_height(v:StdTypes.Float):StdTypes.Float {
        this.height = v;
        return v;
    }
    public function new(?age:StdTypes.Int, ?weight:StdTypes.Float, ?height:StdTypes.Float) this = new stdgo._internal.encoding.binary.Binary.T_testNoFixedSize_14___localname___Person(age, weight, height);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class Binary {
    /**
        Read reads structured binary data from r into data.
        Data must be a pointer to a fixed-size value or a slice
        of fixed-size values.
        Bytes read from r are decoded using the specified byte order
        and written to successive fields of the data.
        When decoding boolean values, a zero byte is decoded as false, and
        any other non-zero byte is decoded as true.
        When reading into structs, the field data for fields with
        blank (_) field names is skipped; i.e., blank field names
        may be used for padding.
        When reading into a struct, all non-blank fields must be exported
        or Read may panic.
        
        The error is EOF only if no bytes were read.
        If an EOF happens after reading some but not all the bytes,
        Read returns ErrUnexpectedEOF.
    **/
    static public function read(r:stdgo._internal.io.Io.Reader, order:ByteOrder, data:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.encoding.binary.Binary.read(r, order, data);
    }
    /**
        Write writes the binary representation of data into w.
        Data must be a fixed-size value or a slice of fixed-size
        values, or a pointer to such data.
        Boolean values encode as one byte: 1 for true, and 0 for false.
        Bytes written to w are encoded using the specified byte order
        and read from successive fields of the data.
        When writing structs, zero values are written for fields
        with blank (_) field names.
    **/
    static public function write(w:stdgo._internal.io.Io.Writer, order:ByteOrder, data:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.encoding.binary.Binary.write(w, order, data);
    }
    /**
        Size returns how many bytes Write would generate to encode the value v, which
        must be a fixed-size value or a slice of fixed-size values, or a pointer to such data.
        If v is neither of these, Size returns -1.
    **/
    static public function size(v:stdgo.AnyInterface):StdTypes.Int {
        return stdgo._internal.encoding.binary.Binary.size(v);
    }
    static public function testLittleEndianRead(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testLittleEndianRead(t);
    }
    static public function testLittleEndianWrite(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testLittleEndianWrite(t);
    }
    static public function testLittleEndianPtrWrite(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testLittleEndianPtrWrite(t);
    }
    static public function testBigEndianRead(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testBigEndianRead(t);
    }
    static public function testBigEndianWrite(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testBigEndianWrite(t);
    }
    static public function testBigEndianPtrWrite(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testBigEndianPtrWrite(t);
    }
    static public function testReadSlice(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testReadSlice(t);
    }
    static public function testWriteSlice(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testWriteSlice(t);
    }
    static public function testReadBool(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testReadBool(t);
    }
    static public function testReadBoolSlice(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testReadBoolSlice(t);
    }
    static public function testSliceRoundTrip(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testSliceRoundTrip(t);
    }
    static public function testWriteT(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testWriteT(t);
    }
    static public function testBlankFields(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testBlankFields(t);
    }
    static public function testSizeStructCache(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testSizeStructCache(t);
    }
    static public function testSizeInvalid(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testSizeInvalid(t);
    }
    static public function testUnexportedRead(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testUnexportedRead(t);
    }
    static public function testReadErrorMsg(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testReadErrorMsg(t);
    }
    static public function testReadTruncated(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testReadTruncated(t);
    }
    static public function testByteOrder(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testByteOrder(t);
    }
    static public function testEarlyBoundsChecks(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testEarlyBoundsChecks(t);
    }
    static public function testReadInvalidDestination(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testReadInvalidDestination(t);
    }
    static public function testNoFixedSize(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testNoFixedSize(t);
    }
    static public function benchmarkReadSlice1000Int32s(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkReadSlice1000Int32s(b);
    }
    static public function benchmarkReadStruct(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkReadStruct(b);
    }
    static public function benchmarkWriteStruct(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkWriteStruct(b);
    }
    static public function benchmarkReadInts(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkReadInts(b);
    }
    static public function benchmarkWriteInts(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkWriteInts(b);
    }
    static public function benchmarkWriteSlice1000Int32s(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkWriteSlice1000Int32s(b);
    }
    static public function benchmarkPutUint16(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkPutUint16(b);
    }
    static public function benchmarkAppendUint16(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkAppendUint16(b);
    }
    static public function benchmarkPutUint32(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkPutUint32(b);
    }
    static public function benchmarkAppendUint32(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkAppendUint32(b);
    }
    static public function benchmarkPutUint64(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkPutUint64(b);
    }
    static public function benchmarkAppendUint64(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkAppendUint64(b);
    }
    static public function benchmarkLittleEndianPutUint16(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkLittleEndianPutUint16(b);
    }
    static public function benchmarkLittleEndianAppendUint16(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkLittleEndianAppendUint16(b);
    }
    static public function benchmarkLittleEndianPutUint32(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkLittleEndianPutUint32(b);
    }
    static public function benchmarkLittleEndianAppendUint32(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkLittleEndianAppendUint32(b);
    }
    static public function benchmarkLittleEndianPutUint64(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkLittleEndianPutUint64(b);
    }
    static public function benchmarkLittleEndianAppendUint64(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkLittleEndianAppendUint64(b);
    }
    static public function benchmarkReadFloats(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkReadFloats(b);
    }
    static public function benchmarkWriteFloats(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkWriteFloats(b);
    }
    static public function benchmarkReadSlice1000Float32s(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkReadSlice1000Float32s(b);
    }
    static public function benchmarkWriteSlice1000Float32s(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkWriteSlice1000Float32s(b);
    }
    static public function benchmarkReadSlice1000Uint8s(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkReadSlice1000Uint8s(b);
    }
    static public function benchmarkWriteSlice1000Uint8s(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkWriteSlice1000Uint8s(b);
    }
    static public function testNativeEndian(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testNativeEndian(t);
    }
    /**
        AppendUvarint appends the varint-encoded form of x,
        as generated by PutUvarint, to buf and returns the extended buffer.
    **/
    static public function appendUvarint(buf:Array<StdTypes.Int>, x:haxe.UInt64):Array<StdTypes.Int> {
        final buf = ([for (i in buf) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.encoding.binary.Binary.appendUvarint(buf, x)) i];
    }
    /**
        PutUvarint encodes a uint64 into buf and returns the number of bytes written.
        If the buffer is too small, PutUvarint will panic.
    **/
    static public function putUvarint(buf:Array<StdTypes.Int>, x:haxe.UInt64):StdTypes.Int {
        final buf = ([for (i in buf) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.binary.Binary.putUvarint(buf, x);
    }
    /**
        Uvarint decodes a uint64 from buf and returns that value and the
        number of bytes read (> 0). If an error occurred, the value is 0
        and the number of bytes n is <= 0 meaning:
        
        	n == 0: buf too small
        	n  < 0: value larger than 64 bits (overflow)
        	        and -n is the number of bytes read
    **/
    static public function uvarint(buf:Array<StdTypes.Int>):stdgo.Tuple<haxe.UInt64, StdTypes.Int> {
        final buf = ([for (i in buf) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.encoding.binary.Binary.uvarint(buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        AppendVarint appends the varint-encoded form of x,
        as generated by PutVarint, to buf and returns the extended buffer.
    **/
    static public function appendVarint(buf:Array<StdTypes.Int>, x:haxe.Int64):Array<StdTypes.Int> {
        final buf = ([for (i in buf) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.encoding.binary.Binary.appendVarint(buf, x)) i];
    }
    /**
        PutVarint encodes an int64 into buf and returns the number of bytes written.
        If the buffer is too small, PutVarint will panic.
    **/
    static public function putVarint(buf:Array<StdTypes.Int>, x:haxe.Int64):StdTypes.Int {
        final buf = ([for (i in buf) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.binary.Binary.putVarint(buf, x);
    }
    /**
        Varint decodes an int64 from buf and returns that value and the
        number of bytes read (> 0). If an error occurred, the value is 0
        and the number of bytes n is <= 0 with the following meaning:
        
        	n == 0: buf too small
        	n  < 0: value larger than 64 bits (overflow)
        	        and -n is the number of bytes read
    **/
    static public function varint(buf:Array<StdTypes.Int>):stdgo.Tuple<haxe.Int64, StdTypes.Int> {
        final buf = ([for (i in buf) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.encoding.binary.Binary.varint(buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ReadUvarint reads an encoded unsigned integer from r and returns it as a uint64.
        The error is EOF only if no bytes were read.
        If an EOF happens after reading some but not all the bytes,
        ReadUvarint returns io.ErrUnexpectedEOF.
    **/
    static public function readUvarint(r:stdgo._internal.io.Io.ByteReader):stdgo.Tuple<haxe.UInt64, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.binary.Binary.readUvarint(r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ReadVarint reads an encoded signed integer from r and returns it as an int64.
        The error is EOF only if no bytes were read.
        If an EOF happens after reading some but not all the bytes,
        ReadVarint returns io.ErrUnexpectedEOF.
    **/
    static public function readVarint(r:stdgo._internal.io.Io.ByteReader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.binary.Binary.readVarint(r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function testConstants(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testConstants(t);
    }
    static public function testVarint(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testVarint(t);
    }
    static public function testUvarint(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testUvarint(t);
    }
    static public function testBufferTooSmall(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testBufferTooSmall(t);
    }
    /**
        Ensure that we catch overflows of bytes going past MaxVarintLen64.
        See issue https://golang.org/issues/41185
    **/
    static public function testBufferTooBigWithOverflow(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testBufferTooBigWithOverflow(t);
    }
    static public function testOverflow(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testOverflow(t);
    }
    static public function testNonCanonicalZero(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testNonCanonicalZero(t);
    }
    static public function benchmarkPutUvarint32(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkPutUvarint32(b);
    }
    static public function benchmarkPutUvarint64(b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkPutUvarint64(b);
    }
}
