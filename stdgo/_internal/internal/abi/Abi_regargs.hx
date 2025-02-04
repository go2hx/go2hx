package stdgo._internal.internal.abi;
@:structInit @:using(stdgo._internal.internal.abi.Abi_regargs_static_extension.RegArgs_static_extension) class RegArgs {
    public var ints : stdgo.GoArray<stdgo.GoUIntptr> = new stdgo.GoArray<stdgo.GoUIntptr>(0, 0);
    public var floats : stdgo.GoArray<stdgo.GoUInt64> = new stdgo.GoArray<stdgo.GoUInt64>(0, 0).__setNumber64__();
    public var ptrs : stdgo.GoArray<stdgo._internal.unsafe.Unsafe.UnsafePointer> = new stdgo.GoArray<stdgo._internal.unsafe.Unsafe.UnsafePointer>(0, 0);
    public var returnIsPtr : stdgo._internal.internal.abi.Abi_intargregbitmap.IntArgRegBitmap = new stdgo._internal.internal.abi.Abi_intargregbitmap.IntArgRegBitmap(0, 0, ...[for (i in 0 ... 0) (0 : stdgo.GoUInt8)]);
    public function new(?ints:stdgo.GoArray<stdgo.GoUIntptr>, ?floats:stdgo.GoArray<stdgo.GoUInt64>, ?ptrs:stdgo.GoArray<stdgo._internal.unsafe.Unsafe.UnsafePointer>, ?returnIsPtr:stdgo._internal.internal.abi.Abi_intargregbitmap.IntArgRegBitmap) {
        if (ints != null) this.ints = ints;
        if (floats != null) this.floats = floats;
        if (ptrs != null) this.ptrs = ptrs;
        if (returnIsPtr != null) this.returnIsPtr = returnIsPtr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RegArgs(ints, floats, ptrs, returnIsPtr);
    }
}
