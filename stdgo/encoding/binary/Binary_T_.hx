package stdgo.encoding.binary;
@:structInit @:using(stdgo.encoding.binary.Binary.T__static_extension) abstract T_(stdgo._internal.encoding.binary.Binary_T_.T_) from stdgo._internal.encoding.binary.Binary_T_.T_ to stdgo._internal.encoding.binary.Binary_T_.T_ {
    public var int_(get, set) : StdTypes.Int;
    function get_int_():StdTypes.Int return this.int_;
    function set_int_(v:StdTypes.Int):StdTypes.Int {
        this.int_ = (v : stdgo.GoInt);
        return v;
    }
    public var uint(get, set) : std.UInt;
    function get_uint():std.UInt return this.uint;
    function set_uint(v:std.UInt):std.UInt {
        this.uint = (v : stdgo.GoUInt);
        return v;
    }
    public var uintptr(get, set) : stdgo.GoUIntptr;
    function get_uintptr():stdgo.GoUIntptr return this.uintptr;
    function set_uintptr(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.uintptr = (v : stdgo.GoUIntptr);
        return v;
    }
    public var array(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get_array():haxe.ds.Vector<StdTypes.Int> return haxe.ds.Vector.fromArrayCopy([for (i in this.array) i]);
    function set_array(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this.array = ([for (i in v) (i : stdgo.GoInt)] : stdgo.GoArray<stdgo.GoInt>);
        return v;
    }
    public function new(?int_:StdTypes.Int, ?uint:std.UInt, ?uintptr:stdgo.GoUIntptr, ?array:haxe.ds.Vector<StdTypes.Int>) this = new stdgo._internal.encoding.binary.Binary_T_.T_((int_ : stdgo.GoInt), (uint : stdgo.GoUInt), (uintptr : stdgo.GoUIntptr), ([for (i in array) (i : stdgo.GoInt)] : stdgo.GoArray<stdgo.GoInt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
