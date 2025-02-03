package stdgo.encoding.binary;
@:structInit @:using(stdgo.encoding.binary.Binary.Struct_static_extension) abstract Struct(stdgo._internal.encoding.binary.Binary_Struct.Struct) from stdgo._internal.encoding.binary.Binary_Struct.Struct to stdgo._internal.encoding.binary.Binary_Struct.Struct {
    public var int8(get, set) : StdTypes.Int;
    function get_int8():StdTypes.Int return this.int8;
    function set_int8(v:StdTypes.Int):StdTypes.Int {
        this.int8 = (v : stdgo.GoInt8);
        return v;
    }
    public var int16(get, set) : StdTypes.Int;
    function get_int16():StdTypes.Int return this.int16;
    function set_int16(v:StdTypes.Int):StdTypes.Int {
        this.int16 = (v : stdgo.GoInt16);
        return v;
    }
    public var int32(get, set) : StdTypes.Int;
    function get_int32():StdTypes.Int return this.int32;
    function set_int32(v:StdTypes.Int):StdTypes.Int {
        this.int32 = (v : stdgo.GoInt32);
        return v;
    }
    public var int64(get, set) : haxe.Int64;
    function get_int64():haxe.Int64 return this.int64;
    function set_int64(v:haxe.Int64):haxe.Int64 {
        this.int64 = (v : stdgo.GoInt64);
        return v;
    }
    public var uint8(get, set) : std.UInt;
    function get_uint8():std.UInt return this.uint8;
    function set_uint8(v:std.UInt):std.UInt {
        this.uint8 = (v : stdgo.GoUInt8);
        return v;
    }
    public var uint16(get, set) : std.UInt;
    function get_uint16():std.UInt return this.uint16;
    function set_uint16(v:std.UInt):std.UInt {
        this.uint16 = (v : stdgo.GoUInt16);
        return v;
    }
    public var uint32(get, set) : std.UInt;
    function get_uint32():std.UInt return this.uint32;
    function set_uint32(v:std.UInt):std.UInt {
        this.uint32 = (v : stdgo.GoUInt32);
        return v;
    }
    public var uint64(get, set) : haxe.UInt64;
    function get_uint64():haxe.UInt64 return this.uint64;
    function set_uint64(v:haxe.UInt64):haxe.UInt64 {
        this.uint64 = (v : stdgo.GoUInt64);
        return v;
    }
    public var float32(get, set) : StdTypes.Float;
    function get_float32():StdTypes.Float return this.float32;
    function set_float32(v:StdTypes.Float):StdTypes.Float {
        this.float32 = (v : stdgo.GoFloat32);
        return v;
    }
    public var float64(get, set) : StdTypes.Float;
    function get_float64():StdTypes.Float return this.float64;
    function set_float64(v:StdTypes.Float):StdTypes.Float {
        this.float64 = (v : stdgo.GoFloat64);
        return v;
    }
    public var complex64(get, set) : stdgo.GoComplex64;
    function get_complex64():stdgo.GoComplex64 return this.complex64;
    function set_complex64(v:stdgo.GoComplex64):stdgo.GoComplex64 {
        this.complex64 = (v : stdgo.GoComplex64);
        return v;
    }
    public var complex128(get, set) : stdgo.GoComplex128;
    function get_complex128():stdgo.GoComplex128 return this.complex128;
    function set_complex128(v:stdgo.GoComplex128):stdgo.GoComplex128 {
        this.complex128 = (v : stdgo.GoComplex128);
        return v;
    }
    public var array(get, set) : haxe.ds.Vector<std.UInt>;
    function get_array():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.array) i]);
    function set_array(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.array = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
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
    public function new(?int8:StdTypes.Int, ?int16:StdTypes.Int, ?int32:StdTypes.Int, ?int64:haxe.Int64, ?uint8:std.UInt, ?uint16:std.UInt, ?uint32:std.UInt, ?uint64:haxe.UInt64, ?float32:StdTypes.Float, ?float64:StdTypes.Float, ?complex64:stdgo.GoComplex64, ?complex128:stdgo.GoComplex128, ?array:haxe.ds.Vector<std.UInt>, ?bool_:Bool, ?boolArray:haxe.ds.Vector<Bool>) this = new stdgo._internal.encoding.binary.Binary_Struct.Struct(
(int8 : stdgo.GoInt8),
(int16 : stdgo.GoInt16),
(int32 : stdgo.GoInt32),
(int64 : stdgo.GoInt64),
(uint8 : stdgo.GoUInt8),
(uint16 : stdgo.GoUInt16),
(uint32 : stdgo.GoUInt32),
(uint64 : stdgo.GoUInt64),
(float32 : stdgo.GoFloat32),
(float64 : stdgo.GoFloat64),
(complex64 : stdgo.GoComplex64),
(complex128 : stdgo.GoComplex128),
([for (i in array) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
bool_,
([for (i in boolArray) i] : stdgo.GoArray<Bool>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
