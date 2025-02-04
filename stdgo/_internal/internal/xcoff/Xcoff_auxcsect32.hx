package stdgo._internal.internal.xcoff;
@:structInit @:using(stdgo._internal.internal.xcoff.Xcoff_auxcsect32_static_extension.AuxCSect32_static_extension) class AuxCSect32 {
    public var xscnlen : stdgo.GoUInt32 = 0;
    public var xparmhash : stdgo.GoUInt32 = 0;
    public var xsnhash : stdgo.GoUInt16 = 0;
    public var xsmtyp : stdgo.GoUInt8 = 0;
    public var xsmclas : stdgo.GoUInt8 = 0;
    public var xstab : stdgo.GoUInt32 = 0;
    public var xsnstab : stdgo.GoUInt16 = 0;
    public function new(?xscnlen:stdgo.GoUInt32, ?xparmhash:stdgo.GoUInt32, ?xsnhash:stdgo.GoUInt16, ?xsmtyp:stdgo.GoUInt8, ?xsmclas:stdgo.GoUInt8, ?xstab:stdgo.GoUInt32, ?xsnstab:stdgo.GoUInt16) {
        if (xscnlen != null) this.xscnlen = xscnlen;
        if (xparmhash != null) this.xparmhash = xparmhash;
        if (xsnhash != null) this.xsnhash = xsnhash;
        if (xsmtyp != null) this.xsmtyp = xsmtyp;
        if (xsmclas != null) this.xsmclas = xsmclas;
        if (xstab != null) this.xstab = xstab;
        if (xsnstab != null) this.xsnstab = xsnstab;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new AuxCSect32(xscnlen, xparmhash, xsnhash, xsmtyp, xsmclas, xstab, xsnstab);
    }
}
