package stdgo._internal.internal.abi;
@:structInit @:using(stdgo._internal.internal.abi.Abi_uncommontype_static_extension.UncommonType_static_extension) class UncommonType {
    public var pkgPath : stdgo._internal.internal.abi.Abi_nameoff.NameOff = ((0 : stdgo.GoInt32) : stdgo._internal.internal.abi.Abi_nameoff.NameOff);
    public var mcount : stdgo.GoUInt16 = 0;
    public var xcount : stdgo.GoUInt16 = 0;
    public var moff : stdgo.GoUInt32 = 0;
    @:optional
    public var __1 : stdgo.GoUInt32 = 0;
    public function new(?pkgPath:stdgo._internal.internal.abi.Abi_nameoff.NameOff, ?mcount:stdgo.GoUInt16, ?xcount:stdgo.GoUInt16, ?moff:stdgo.GoUInt32, ?__1:stdgo.GoUInt32) {
        if (pkgPath != null) this.pkgPath = pkgPath;
        if (mcount != null) this.mcount = mcount;
        if (xcount != null) this.xcount = xcount;
        if (moff != null) this.moff = moff;
        if (__1 != null) this.__1 = __1;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new UncommonType(pkgPath, mcount, xcount, moff, __1);
    }
}
