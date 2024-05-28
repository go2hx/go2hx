package stdgo.encoding.binary;
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
class ByteOrder_static_extension {
    static public function string(t:ByteOrder):String {
        return stdgo._internal.encoding.binary.Binary.ByteOrder_static_extension.string(t);
    }
    static public function putUint64(t:ByteOrder, _0:Array<StdTypes.Int>, _1:haxe.UInt64):Void {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoByte>);
        stdgo._internal.encoding.binary.Binary.ByteOrder_static_extension.putUint64(t, _0, _1);
    }
    static public function putUint32(t:ByteOrder, _0:Array<StdTypes.Int>, _1:std.UInt):Void {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoByte>);
        stdgo._internal.encoding.binary.Binary.ByteOrder_static_extension.putUint32(t, _0, _1);
    }
    static public function putUint16(t:ByteOrder, _0:Array<StdTypes.Int>, _1:std.UInt):Void {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoByte>);
        stdgo._internal.encoding.binary.Binary.ByteOrder_static_extension.putUint16(t, _0, _1);
    }
    static public function uint64(t:ByteOrder, _0:Array<StdTypes.Int>):haxe.UInt64 {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.binary.Binary.ByteOrder_static_extension.uint64(t, _0);
    }
    static public function uint32(t:ByteOrder, _0:Array<StdTypes.Int>):std.UInt {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.binary.Binary.ByteOrder_static_extension.uint32(t, _0);
    }
    static public function uint16(t:ByteOrder, _0:Array<StdTypes.Int>):std.UInt {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.binary.Binary.ByteOrder_static_extension.uint16(t, _0);
    }
}
typedef ByteOrder = stdgo._internal.encoding.binary.Binary.ByteOrder;
class AppendByteOrder_static_extension {
    static public function string(t:AppendByteOrder):String {
        return stdgo._internal.encoding.binary.Binary.AppendByteOrder_static_extension.string(t);
    }
    static public function appendUint64(t:AppendByteOrder, _0:Array<StdTypes.Int>, _1:haxe.UInt64):Array<StdTypes.Int> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.encoding.binary.Binary.AppendByteOrder_static_extension.appendUint64(t, _0, _1)) i];
    }
    static public function appendUint32(t:AppendByteOrder, _0:Array<StdTypes.Int>, _1:std.UInt):Array<StdTypes.Int> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.encoding.binary.Binary.AppendByteOrder_static_extension.appendUint32(t, _0, _1)) i];
    }
    static public function appendUint16(t:AppendByteOrder, _0:Array<StdTypes.Int>, _1:std.UInt):Array<StdTypes.Int> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.encoding.binary.Binary.AppendByteOrder_static_extension.appendUint16(t, _0, _1)) i];
    }
}
typedef AppendByteOrder = stdgo._internal.encoding.binary.Binary.AppendByteOrder;
@:structInit @:private @:using(stdgo.encoding.binary.Binary.T_littleEndian_static_extension) abstract T_littleEndian(stdgo._internal.encoding.binary.Binary.T_littleEndian) from stdgo._internal.encoding.binary.Binary.T_littleEndian to stdgo._internal.encoding.binary.Binary.T_littleEndian {
    public function new() this = new stdgo._internal.encoding.binary.Binary.T_littleEndian();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.encoding.binary.Binary.T_bigEndian_static_extension) abstract T_bigEndian(stdgo._internal.encoding.binary.Binary.T_bigEndian) from stdgo._internal.encoding.binary.Binary.T_bigEndian to stdgo._internal.encoding.binary.Binary.T_bigEndian {
    public function new() this = new stdgo._internal.encoding.binary.Binary.T_bigEndian();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private abstract T_coder(stdgo._internal.encoding.binary.Binary.T_coder) from stdgo._internal.encoding.binary.Binary.T_coder to stdgo._internal.encoding.binary.Binary.T_coder {
    public var _order(get, set) : ByteOrder;
    function get__order():ByteOrder return this._order;
    function set__order(v:ByteOrder):ByteOrder {
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
    public function new(?_order:ByteOrder, ?_buf:Array<std.UInt>, ?_offset:StdTypes.Int) this = new stdgo._internal.encoding.binary.Binary.T_coder(_order, ([for (i in _buf) i] : stdgo.Slice<stdgo.GoUInt8>), _offset);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Struct(stdgo._internal.encoding.binary.Binary.Struct) from stdgo._internal.encoding.binary.Binary.Struct to stdgo._internal.encoding.binary.Binary.Struct {
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
@:structInit abstract T_(stdgo._internal.encoding.binary.Binary.T_) from stdgo._internal.encoding.binary.Binary.T_ to stdgo._internal.encoding.binary.Binary.T_ {
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
@:structInit abstract BlankFields(stdgo._internal.encoding.binary.Binary.BlankFields) from stdgo._internal.encoding.binary.Binary.BlankFields to stdgo._internal.encoding.binary.Binary.BlankFields {
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
@:structInit abstract BlankFieldsProbe(stdgo._internal.encoding.binary.Binary.BlankFieldsProbe) from stdgo._internal.encoding.binary.Binary.BlankFieldsProbe to stdgo._internal.encoding.binary.Binary.BlankFieldsProbe {
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
@:structInit abstract Unexported(stdgo._internal.encoding.binary.Binary.Unexported) from stdgo._internal.encoding.binary.Binary.Unexported to stdgo._internal.encoding.binary.Binary.Unexported {
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
@:structInit @:private @:using(stdgo.encoding.binary.Binary.T_byteSliceReader_static_extension) abstract T_byteSliceReader(stdgo._internal.encoding.binary.Binary.T_byteSliceReader) from stdgo._internal.encoding.binary.Binary.T_byteSliceReader to stdgo._internal.encoding.binary.Binary.T_byteSliceReader {
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
@:structInit @:private @:using(stdgo.encoding.binary.Binary.T_nativeEndian_static_extension) abstract T_nativeEndian(stdgo._internal.encoding.binary.Binary.T_nativeEndian) from stdgo._internal.encoding.binary.Binary.T_nativeEndian to stdgo._internal.encoding.binary.Binary.T_nativeEndian {
    public var _littleEndian(get, set) : T_littleEndian;
    function get__littleEndian():T_littleEndian return this._littleEndian;
    function set__littleEndian(v:T_littleEndian):T_littleEndian {
        this._littleEndian = v;
        return v;
    }
    public function new(?_littleEndian:T_littleEndian) this = new stdgo._internal.encoding.binary.Binary.T_nativeEndian(_littleEndian);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.encoding.binary.Binary.T__struct_0;
class T__struct_1_static_extension {

}
typedef T__struct_1 = stdgo._internal.encoding.binary.Binary.T__struct_1;
class T__struct_2_static_extension {

}
typedef T__struct_2 = stdgo._internal.encoding.binary.Binary.T__struct_2;
class T__struct_3_static_extension {

}
typedef T__struct_3 = stdgo._internal.encoding.binary.Binary.T__struct_3;
class T__struct_4_static_extension {

}
typedef T__struct_4 = stdgo._internal.encoding.binary.Binary.T__struct_4;
class T__struct_5_static_extension {

}
typedef T__struct_5 = stdgo._internal.encoding.binary.Binary.T__struct_5;
class T__struct_6_static_extension {

}
typedef T__struct_6 = stdgo._internal.encoding.binary.Binary.T__struct_6;
typedef T_decoder = stdgo._internal.encoding.binary.Binary.T_decoder;
typedef T_encoder = stdgo._internal.encoding.binary.Binary.T_encoder;
@:structInit abstract T_testSizeStructCache___localname___foo_7241(stdgo._internal.encoding.binary.Binary.T_testSizeStructCache___localname___foo_7241) from stdgo._internal.encoding.binary.Binary.T_testSizeStructCache___localname___foo_7241 to stdgo._internal.encoding.binary.Binary.T_testSizeStructCache___localname___foo_7241 {
    public var a(get, set) : std.UInt;
    function get_a():std.UInt return this.a;
    function set_a(v:std.UInt):std.UInt {
        this.a = v;
        return v;
    }
    public function new(?a:std.UInt) this = new stdgo._internal.encoding.binary.Binary.T_testSizeStructCache___localname___foo_7241(a);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testSizeStructCache___localname___bar_7275(stdgo._internal.encoding.binary.Binary.T_testSizeStructCache___localname___bar_7275) from stdgo._internal.encoding.binary.Binary.T_testSizeStructCache___localname___bar_7275 to stdgo._internal.encoding.binary.Binary.T_testSizeStructCache___localname___bar_7275 {
    public var a(get, set) : Struct;
    function get_a():Struct return this.a;
    function set_a(v:Struct):Struct {
        this.a = v;
        return v;
    }
    public var b(get, set) : T_testSizeStructCache___localname___foo_7241;
    function get_b():T_testSizeStructCache___localname___foo_7241 return this.b;
    function set_b(v:T_testSizeStructCache___localname___foo_7241):T_testSizeStructCache___localname___foo_7241 {
        this.b = v;
        return v;
    }
    public var c(get, set) : Struct;
    function get_c():Struct return this.c;
    function set_c(v:Struct):Struct {
        this.c = v;
        return v;
    }
    public function new(?a:Struct, ?b:T_testSizeStructCache___localname___foo_7241, ?c:Struct) this = new stdgo._internal.encoding.binary.Binary.T_testSizeStructCache___localname___bar_7275(a, b, c);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T_testByteOrder___localname___byteOrder_10108_static_extension {

}
typedef T_testByteOrder___localname___byteOrder_10108 = stdgo._internal.encoding.binary.Binary.T_testByteOrder___localname___byteOrder_10108;
@:structInit abstract T_testNoFixedSize___localname___Person_12888(stdgo._internal.encoding.binary.Binary.T_testNoFixedSize___localname___Person_12888) from stdgo._internal.encoding.binary.Binary.T_testNoFixedSize___localname___Person_12888 to stdgo._internal.encoding.binary.Binary.T_testNoFixedSize___localname___Person_12888 {
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
    public function new(?age:StdTypes.Int, ?weight:StdTypes.Float, ?height:StdTypes.Float) this = new stdgo._internal.encoding.binary.Binary.T_testNoFixedSize___localname___Person_12888(age, weight, height);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T_littleEndian_static_extension {
    static public function goString(_:T_littleEndian):String {
        return stdgo._internal.encoding.binary.Binary.T_littleEndian_static_extension.goString(_);
    }
    static public function string(_:T_littleEndian):String {
        return stdgo._internal.encoding.binary.Binary.T_littleEndian_static_extension.string(_);
    }
    static public function appendUint64(_:T_littleEndian, _b:Array<StdTypes.Int>, _v:haxe.UInt64):Array<StdTypes.Int> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.encoding.binary.Binary.T_littleEndian_static_extension.appendUint64(_, _b, _v)) i];
    }
    static public function putUint64(_:T_littleEndian, _b:Array<StdTypes.Int>, _v:haxe.UInt64):Void {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        stdgo._internal.encoding.binary.Binary.T_littleEndian_static_extension.putUint64(_, _b, _v);
    }
    static public function uint64(_:T_littleEndian, _b:Array<StdTypes.Int>):haxe.UInt64 {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.binary.Binary.T_littleEndian_static_extension.uint64(_, _b);
    }
    static public function appendUint32(_:T_littleEndian, _b:Array<StdTypes.Int>, _v:std.UInt):Array<StdTypes.Int> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.encoding.binary.Binary.T_littleEndian_static_extension.appendUint32(_, _b, _v)) i];
    }
    static public function putUint32(_:T_littleEndian, _b:Array<StdTypes.Int>, _v:std.UInt):Void {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        stdgo._internal.encoding.binary.Binary.T_littleEndian_static_extension.putUint32(_, _b, _v);
    }
    static public function uint32(_:T_littleEndian, _b:Array<StdTypes.Int>):std.UInt {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.binary.Binary.T_littleEndian_static_extension.uint32(_, _b);
    }
    static public function appendUint16(_:T_littleEndian, _b:Array<StdTypes.Int>, _v:std.UInt):Array<StdTypes.Int> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.encoding.binary.Binary.T_littleEndian_static_extension.appendUint16(_, _b, _v)) i];
    }
    static public function putUint16(_:T_littleEndian, _b:Array<StdTypes.Int>, _v:std.UInt):Void {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        stdgo._internal.encoding.binary.Binary.T_littleEndian_static_extension.putUint16(_, _b, _v);
    }
    static public function uint16(_:T_littleEndian, _b:Array<StdTypes.Int>):std.UInt {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.binary.Binary.T_littleEndian_static_extension.uint16(_, _b);
    }
}
class T_bigEndian_static_extension {
    static public function goString(_:T_bigEndian):String {
        return stdgo._internal.encoding.binary.Binary.T_bigEndian_static_extension.goString(_);
    }
    static public function string(_:T_bigEndian):String {
        return stdgo._internal.encoding.binary.Binary.T_bigEndian_static_extension.string(_);
    }
    static public function appendUint64(_:T_bigEndian, _b:Array<StdTypes.Int>, _v:haxe.UInt64):Array<StdTypes.Int> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.encoding.binary.Binary.T_bigEndian_static_extension.appendUint64(_, _b, _v)) i];
    }
    static public function putUint64(_:T_bigEndian, _b:Array<StdTypes.Int>, _v:haxe.UInt64):Void {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        stdgo._internal.encoding.binary.Binary.T_bigEndian_static_extension.putUint64(_, _b, _v);
    }
    static public function uint64(_:T_bigEndian, _b:Array<StdTypes.Int>):haxe.UInt64 {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.binary.Binary.T_bigEndian_static_extension.uint64(_, _b);
    }
    static public function appendUint32(_:T_bigEndian, _b:Array<StdTypes.Int>, _v:std.UInt):Array<StdTypes.Int> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.encoding.binary.Binary.T_bigEndian_static_extension.appendUint32(_, _b, _v)) i];
    }
    static public function putUint32(_:T_bigEndian, _b:Array<StdTypes.Int>, _v:std.UInt):Void {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        stdgo._internal.encoding.binary.Binary.T_bigEndian_static_extension.putUint32(_, _b, _v);
    }
    static public function uint32(_:T_bigEndian, _b:Array<StdTypes.Int>):std.UInt {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.binary.Binary.T_bigEndian_static_extension.uint32(_, _b);
    }
    static public function appendUint16(_:T_bigEndian, _b:Array<StdTypes.Int>, _v:std.UInt):Array<StdTypes.Int> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.encoding.binary.Binary.T_bigEndian_static_extension.appendUint16(_, _b, _v)) i];
    }
    static public function putUint16(_:T_bigEndian, _b:Array<StdTypes.Int>, _v:std.UInt):Void {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        stdgo._internal.encoding.binary.Binary.T_bigEndian_static_extension.putUint16(_, _b, _v);
    }
    static public function uint16(_:T_bigEndian, _b:Array<StdTypes.Int>):std.UInt {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.binary.Binary.T_bigEndian_static_extension.uint16(_, _b);
    }
}
class T_byteSliceReader_static_extension {
    static public function read(_br:T_byteSliceReader, _p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.encoding.binary.Binary.T_byteSliceReader_static_extension.read(_br, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_nativeEndian_static_extension {
    static public function goString(_:T_nativeEndian):String {
        return stdgo._internal.encoding.binary.Binary.T_nativeEndian_static_extension.goString(_);
    }
    static public function string(_:T_nativeEndian):String {
        return stdgo._internal.encoding.binary.Binary.T_nativeEndian_static_extension.string(_);
    }
    public static function uint64(__self__:T_nativeEndian, __0:Array<std.UInt>):haxe.UInt64 {
        final __0 = ([for (i in __0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.binary.Binary.T_nativeEndian_static_extension.uint64(__self__, __0);
    }
    public static function uint32(__self__:T_nativeEndian, __0:Array<std.UInt>):std.UInt {
        final __0 = ([for (i in __0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.binary.Binary.T_nativeEndian_static_extension.uint32(__self__, __0);
    }
    public static function uint16(__self__:T_nativeEndian, __0:Array<std.UInt>):std.UInt {
        final __0 = ([for (i in __0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.binary.Binary.T_nativeEndian_static_extension.uint16(__self__, __0);
    }
    public static function putUint64(__self__:T_nativeEndian, __0:Array<std.UInt>, __1:haxe.UInt64) {
        final __0 = ([for (i in __0) i] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.binary.Binary.T_nativeEndian_static_extension.putUint64(__self__, __0, __1);
    }
    public static function putUint32(__self__:T_nativeEndian, __0:Array<std.UInt>, __1:std.UInt) {
        final __0 = ([for (i in __0) i] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.binary.Binary.T_nativeEndian_static_extension.putUint32(__self__, __0, __1);
    }
    public static function putUint16(__self__:T_nativeEndian, __0:Array<std.UInt>, __1:std.UInt) {
        final __0 = ([for (i in __0) i] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.binary.Binary.T_nativeEndian_static_extension.putUint16(__self__, __0, __1);
    }
    public static function appendUint64(__self__:T_nativeEndian, __0:Array<std.UInt>, __1:haxe.UInt64):Array<std.UInt> {
        final __0 = ([for (i in __0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.encoding.binary.Binary.T_nativeEndian_static_extension.appendUint64(__self__, __0, __1)) i];
    }
    public static function appendUint32(__self__:T_nativeEndian, __0:Array<std.UInt>, __1:std.UInt):Array<std.UInt> {
        final __0 = ([for (i in __0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.encoding.binary.Binary.T_nativeEndian_static_extension.appendUint32(__self__, __0, __1)) i];
    }
    public static function appendUint16(__self__:T_nativeEndian, __0:Array<std.UInt>, __1:std.UInt):Array<std.UInt> {
        final __0 = ([for (i in __0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.encoding.binary.Binary.T_nativeEndian_static_extension.appendUint16(__self__, __0, __1)) i];
    }
}
class T_decoder_static_extension {
    static public function _skip(_d:T_decoder, _v:stdgo._internal.reflect.Reflect.Value):Void {
        stdgo._internal.encoding.binary.Binary.T_decoder_static_extension._skip(_d, _v);
    }
    static public function _value(_d:T_decoder, _v:stdgo._internal.reflect.Reflect.Value):Void {
        stdgo._internal.encoding.binary.Binary.T_decoder_static_extension._value(_d, _v);
    }
    static public function _int64(_d:T_decoder):haxe.Int64 {
        return stdgo._internal.encoding.binary.Binary.T_decoder_static_extension._int64(_d);
    }
    static public function _int32(_d:T_decoder):StdTypes.Int {
        return stdgo._internal.encoding.binary.Binary.T_decoder_static_extension._int32(_d);
    }
    static public function _int16(_d:T_decoder):StdTypes.Int {
        return stdgo._internal.encoding.binary.Binary.T_decoder_static_extension._int16(_d);
    }
    static public function _int8(_d:T_decoder):StdTypes.Int {
        return stdgo._internal.encoding.binary.Binary.T_decoder_static_extension._int8(_d);
    }
    static public function _uint64(_d:T_decoder):haxe.UInt64 {
        return stdgo._internal.encoding.binary.Binary.T_decoder_static_extension._uint64(_d);
    }
    static public function _uint32(_d:T_decoder):std.UInt {
        return stdgo._internal.encoding.binary.Binary.T_decoder_static_extension._uint32(_d);
    }
    static public function _uint16(_d:T_decoder):std.UInt {
        return stdgo._internal.encoding.binary.Binary.T_decoder_static_extension._uint16(_d);
    }
    static public function _uint8(_d:T_decoder):std.UInt {
        return stdgo._internal.encoding.binary.Binary.T_decoder_static_extension._uint8(_d);
    }
    static public function _bool(_d:T_decoder):Bool {
        return stdgo._internal.encoding.binary.Binary.T_decoder_static_extension._bool(_d);
    }
}
class T_encoder_static_extension {
    static public function _skip(_e:T_encoder, _v:stdgo._internal.reflect.Reflect.Value):Void {
        stdgo._internal.encoding.binary.Binary.T_encoder_static_extension._skip(_e, _v);
    }
    static public function _value(_e:T_encoder, _v:stdgo._internal.reflect.Reflect.Value):Void {
        stdgo._internal.encoding.binary.Binary.T_encoder_static_extension._value(_e, _v);
    }
    static public function _int64(_e:T_encoder, _x:haxe.Int64):Void {
        stdgo._internal.encoding.binary.Binary.T_encoder_static_extension._int64(_e, _x);
    }
    static public function _int32(_e:T_encoder, _x:StdTypes.Int):Void {
        stdgo._internal.encoding.binary.Binary.T_encoder_static_extension._int32(_e, _x);
    }
    static public function _int16(_e:T_encoder, _x:StdTypes.Int):Void {
        stdgo._internal.encoding.binary.Binary.T_encoder_static_extension._int16(_e, _x);
    }
    static public function _int8(_e:T_encoder, _x:StdTypes.Int):Void {
        stdgo._internal.encoding.binary.Binary.T_encoder_static_extension._int8(_e, _x);
    }
    static public function _uint64(_e:T_encoder, _x:haxe.UInt64):Void {
        stdgo._internal.encoding.binary.Binary.T_encoder_static_extension._uint64(_e, _x);
    }
    static public function _uint32(_e:T_encoder, _x:std.UInt):Void {
        stdgo._internal.encoding.binary.Binary.T_encoder_static_extension._uint32(_e, _x);
    }
    static public function _uint16(_e:T_encoder, _x:std.UInt):Void {
        stdgo._internal.encoding.binary.Binary.T_encoder_static_extension._uint16(_e, _x);
    }
    static public function _uint8(_e:T_encoder, _x:std.UInt):Void {
        stdgo._internal.encoding.binary.Binary.T_encoder_static_extension._uint8(_e, _x);
    }
    static public function _bool(_e:T_encoder, _x:Bool):Void {
        stdgo._internal.encoding.binary.Binary.T_encoder_static_extension._bool(_e, _x);
    }
}
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
    static public function read(_r:stdgo._internal.io.Io.Reader, _order:ByteOrder, _data:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.encoding.binary.Binary.read(_r, _order, _data);
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
    static public function write(_w:stdgo._internal.io.Io.Writer, _order:ByteOrder, _data:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.encoding.binary.Binary.write(_w, _order, _data);
    }
    /**
        Size returns how many bytes Write would generate to encode the value v, which
        must be a fixed-size value or a slice of fixed-size values, or a pointer to such data.
        If v is neither of these, Size returns -1.
    **/
    static public function size(_v:stdgo.AnyInterface):StdTypes.Int {
        return stdgo._internal.encoding.binary.Binary.size(_v);
    }
    static public function testLittleEndianRead(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testLittleEndianRead(_t);
    }
    static public function testLittleEndianWrite(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testLittleEndianWrite(_t);
    }
    static public function testLittleEndianPtrWrite(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testLittleEndianPtrWrite(_t);
    }
    static public function testBigEndianRead(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testBigEndianRead(_t);
    }
    static public function testBigEndianWrite(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testBigEndianWrite(_t);
    }
    static public function testBigEndianPtrWrite(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testBigEndianPtrWrite(_t);
    }
    static public function testReadSlice(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testReadSlice(_t);
    }
    static public function testWriteSlice(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testWriteSlice(_t);
    }
    static public function testReadBool(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testReadBool(_t);
    }
    static public function testReadBoolSlice(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testReadBoolSlice(_t);
    }
    static public function testSliceRoundTrip(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testSliceRoundTrip(_t);
    }
    static public function testWriteT(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testWriteT(_t);
    }
    static public function testBlankFields(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testBlankFields(_t);
    }
    static public function testSizeStructCache(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testSizeStructCache(_t);
    }
    static public function testSizeInvalid(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testSizeInvalid(_t);
    }
    static public function testUnexportedRead(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testUnexportedRead(_t);
    }
    static public function testReadErrorMsg(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testReadErrorMsg(_t);
    }
    static public function testReadTruncated(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testReadTruncated(_t);
    }
    static public function testByteOrder(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testByteOrder(_t);
    }
    static public function testEarlyBoundsChecks(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testEarlyBoundsChecks(_t);
    }
    static public function testReadInvalidDestination(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testReadInvalidDestination(_t);
    }
    static public function testNoFixedSize(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testNoFixedSize(_t);
    }
    static public function benchmarkReadSlice1000Int32s(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkReadSlice1000Int32s(_b);
    }
    static public function benchmarkReadStruct(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkReadStruct(_b);
    }
    static public function benchmarkWriteStruct(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkWriteStruct(_b);
    }
    static public function benchmarkReadInts(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkReadInts(_b);
    }
    static public function benchmarkWriteInts(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkWriteInts(_b);
    }
    static public function benchmarkWriteSlice1000Int32s(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkWriteSlice1000Int32s(_b);
    }
    static public function benchmarkPutUint16(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkPutUint16(_b);
    }
    static public function benchmarkAppendUint16(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkAppendUint16(_b);
    }
    static public function benchmarkPutUint32(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkPutUint32(_b);
    }
    static public function benchmarkAppendUint32(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkAppendUint32(_b);
    }
    static public function benchmarkPutUint64(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkPutUint64(_b);
    }
    static public function benchmarkAppendUint64(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkAppendUint64(_b);
    }
    static public function benchmarkLittleEndianPutUint16(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkLittleEndianPutUint16(_b);
    }
    static public function benchmarkLittleEndianAppendUint16(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkLittleEndianAppendUint16(_b);
    }
    static public function benchmarkLittleEndianPutUint32(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkLittleEndianPutUint32(_b);
    }
    static public function benchmarkLittleEndianAppendUint32(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkLittleEndianAppendUint32(_b);
    }
    static public function benchmarkLittleEndianPutUint64(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkLittleEndianPutUint64(_b);
    }
    static public function benchmarkLittleEndianAppendUint64(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkLittleEndianAppendUint64(_b);
    }
    static public function benchmarkReadFloats(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkReadFloats(_b);
    }
    static public function benchmarkWriteFloats(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkWriteFloats(_b);
    }
    static public function benchmarkReadSlice1000Float32s(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkReadSlice1000Float32s(_b);
    }
    static public function benchmarkWriteSlice1000Float32s(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkWriteSlice1000Float32s(_b);
    }
    static public function benchmarkReadSlice1000Uint8s(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkReadSlice1000Uint8s(_b);
    }
    static public function benchmarkWriteSlice1000Uint8s(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkWriteSlice1000Uint8s(_b);
    }
    static public function testNativeEndian(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testNativeEndian(_t);
    }
    /**
        AppendUvarint appends the varint-encoded form of x,
        as generated by PutUvarint, to buf and returns the extended buffer.
    **/
    static public function appendUvarint(_buf:Array<StdTypes.Int>, _x:haxe.UInt64):Array<StdTypes.Int> {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.encoding.binary.Binary.appendUvarint(_buf, _x)) i];
    }
    /**
        PutUvarint encodes a uint64 into buf and returns the number of bytes written.
        If the buffer is too small, PutUvarint will panic.
    **/
    static public function putUvarint(_buf:Array<StdTypes.Int>, _x:haxe.UInt64):StdTypes.Int {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.binary.Binary.putUvarint(_buf, _x);
    }
    /**
        Uvarint decodes a uint64 from buf and returns that value and the
        number of bytes read (> 0). If an error occurred, the value is 0
        and the number of bytes n is <= 0 meaning:
        
        	n == 0: buf too small
        	n  < 0: value larger than 64 bits (overflow)
        	        and -n is the number of bytes read
    **/
    static public function uvarint(_buf:Array<StdTypes.Int>):stdgo.Tuple<haxe.UInt64, StdTypes.Int> {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.encoding.binary.Binary.uvarint(_buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        AppendVarint appends the varint-encoded form of x,
        as generated by PutVarint, to buf and returns the extended buffer.
    **/
    static public function appendVarint(_buf:Array<StdTypes.Int>, _x:haxe.Int64):Array<StdTypes.Int> {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoByte>);
        return [for (i in stdgo._internal.encoding.binary.Binary.appendVarint(_buf, _x)) i];
    }
    /**
        PutVarint encodes an int64 into buf and returns the number of bytes written.
        If the buffer is too small, PutVarint will panic.
    **/
    static public function putVarint(_buf:Array<StdTypes.Int>, _x:haxe.Int64):StdTypes.Int {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoByte>);
        return stdgo._internal.encoding.binary.Binary.putVarint(_buf, _x);
    }
    /**
        Varint decodes an int64 from buf and returns that value and the
        number of bytes read (> 0). If an error occurred, the value is 0
        and the number of bytes n is <= 0 with the following meaning:
        
        	n == 0: buf too small
        	n  < 0: value larger than 64 bits (overflow)
        	        and -n is the number of bytes read
    **/
    static public function varint(_buf:Array<StdTypes.Int>):stdgo.Tuple<haxe.Int64, StdTypes.Int> {
        final _buf = ([for (i in _buf) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.encoding.binary.Binary.varint(_buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ReadUvarint reads an encoded unsigned integer from r and returns it as a uint64.
        The error is EOF only if no bytes were read.
        If an EOF happens after reading some but not all the bytes,
        ReadUvarint returns io.ErrUnexpectedEOF.
    **/
    static public function readUvarint(_r:stdgo._internal.io.Io.ByteReader):stdgo.Tuple<haxe.UInt64, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.binary.Binary.readUvarint(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ReadVarint reads an encoded signed integer from r and returns it as an int64.
        The error is EOF only if no bytes were read.
        If an EOF happens after reading some but not all the bytes,
        ReadVarint returns io.ErrUnexpectedEOF.
    **/
    static public function readVarint(_r:stdgo._internal.io.Io.ByteReader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.binary.Binary.readVarint(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function testConstants(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testConstants(_t);
    }
    static public function testVarint(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testVarint(_t);
    }
    static public function testUvarint(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testUvarint(_t);
    }
    static public function testBufferTooSmall(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testBufferTooSmall(_t);
    }
    /**
        Ensure that we catch overflows of bytes going past MaxVarintLen64.
        See issue https://golang.org/issues/41185
    **/
    static public function testBufferTooBigWithOverflow(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testBufferTooBigWithOverflow(_t);
    }
    static public function testOverflow(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testOverflow(_t);
    }
    static public function testNonCanonicalZero(_t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.encoding.binary.Binary.testNonCanonicalZero(_t);
    }
    static public function benchmarkPutUvarint32(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkPutUvarint32(_b);
    }
    static public function benchmarkPutUvarint64(_b:stdgo._internal.testing.Testing.B):Void {
        stdgo._internal.encoding.binary.Binary.benchmarkPutUvarint64(_b);
    }
}
