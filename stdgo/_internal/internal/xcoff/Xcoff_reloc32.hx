package stdgo._internal.internal.xcoff;
@:structInit @:using(stdgo._internal.internal.xcoff.Xcoff_reloc32_static_extension.Reloc32_static_extension) class Reloc32 {
    public var rvaddr : stdgo.GoUInt32 = 0;
    public var rsymndx : stdgo.GoUInt32 = 0;
    public var rsize : stdgo.GoUInt8 = 0;
    public var rtype : stdgo.GoUInt8 = 0;
    public function new(?rvaddr:stdgo.GoUInt32, ?rsymndx:stdgo.GoUInt32, ?rsize:stdgo.GoUInt8, ?rtype:stdgo.GoUInt8) {
        if (rvaddr != null) this.rvaddr = rvaddr;
        if (rsymndx != null) this.rsymndx = rsymndx;
        if (rsize != null) this.rsize = rsize;
        if (rtype != null) this.rtype = rtype;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Reloc32(rvaddr, rsymndx, rsize, rtype);
    }
}
