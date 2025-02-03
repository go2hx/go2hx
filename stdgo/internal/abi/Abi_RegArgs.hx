package stdgo.internal.abi;
@:structInit @:using(stdgo.internal.abi.Abi.RegArgs_static_extension) abstract RegArgs(stdgo._internal.internal.abi.Abi_RegArgs.RegArgs) from stdgo._internal.internal.abi.Abi_RegArgs.RegArgs to stdgo._internal.internal.abi.Abi_RegArgs.RegArgs {
    public var ints(get, set) : haxe.ds.Vector<stdgo.GoUIntptr>;
    function get_ints():haxe.ds.Vector<stdgo.GoUIntptr> return haxe.ds.Vector.fromArrayCopy([for (i in this.ints) i]);
    function set_ints(v:haxe.ds.Vector<stdgo.GoUIntptr>):haxe.ds.Vector<stdgo.GoUIntptr> {
        this.ints = ([for (i in v) (i : stdgo.GoUIntptr)] : stdgo.GoArray<stdgo.GoUIntptr>);
        return v;
    }
    public var floats(get, set) : haxe.ds.Vector<haxe.UInt64>;
    function get_floats():haxe.ds.Vector<haxe.UInt64> return haxe.ds.Vector.fromArrayCopy([for (i in this.floats) i]);
    function set_floats(v:haxe.ds.Vector<haxe.UInt64>):haxe.ds.Vector<haxe.UInt64> {
        this.floats = ([for (i in v) (i : stdgo.GoUInt64)] : stdgo.GoArray<stdgo.GoUInt64>);
        return v;
    }
    public var ptrs(get, set) : haxe.ds.Vector<stdgo._internal.unsafe.Unsafe.UnsafePointer>;
    function get_ptrs():haxe.ds.Vector<stdgo._internal.unsafe.Unsafe.UnsafePointer> return haxe.ds.Vector.fromArrayCopy([for (i in this.ptrs) i]);
    function set_ptrs(v:haxe.ds.Vector<stdgo._internal.unsafe.Unsafe.UnsafePointer>):haxe.ds.Vector<stdgo._internal.unsafe.Unsafe.UnsafePointer> {
        this.ptrs = ([for (i in v) i] : stdgo.GoArray<stdgo._internal.unsafe.Unsafe.UnsafePointer>);
        return v;
    }
    public var returnIsPtr(get, set) : IntArgRegBitmap;
    function get_returnIsPtr():IntArgRegBitmap return this.returnIsPtr;
    function set_returnIsPtr(v:IntArgRegBitmap):IntArgRegBitmap {
        this.returnIsPtr = v;
        return v;
    }
    public function new(?ints:haxe.ds.Vector<stdgo.GoUIntptr>, ?floats:haxe.ds.Vector<haxe.UInt64>, ?ptrs:haxe.ds.Vector<stdgo._internal.unsafe.Unsafe.UnsafePointer>, ?returnIsPtr:IntArgRegBitmap) this = new stdgo._internal.internal.abi.Abi_RegArgs.RegArgs(([for (i in ints) (i : stdgo.GoUIntptr)] : stdgo.GoArray<stdgo.GoUIntptr>), ([for (i in floats) (i : stdgo.GoUInt64)] : stdgo.GoArray<stdgo.GoUInt64>), ([for (i in ptrs) i] : stdgo.GoArray<stdgo._internal.unsafe.Unsafe.UnsafePointer>), returnIsPtr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
