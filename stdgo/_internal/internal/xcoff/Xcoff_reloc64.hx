package stdgo._internal.internal.xcoff;
@:structInit @:using(stdgo._internal.internal.xcoff.Xcoff_reloc64_static_extension.Reloc64_static_extension) class Reloc64 {
    public var rvaddr : stdgo.GoUInt64 = 0;
    public var rsymndx : stdgo.GoUInt32 = 0;
    public var rsize : stdgo.GoUInt8 = 0;
    public var rtype : stdgo.GoUInt8 = 0;
    public function new(?rvaddr:stdgo.GoUInt64, ?rsymndx:stdgo.GoUInt32, ?rsize:stdgo.GoUInt8, ?rtype:stdgo.GoUInt8) {
        if (rvaddr != null) this.rvaddr = rvaddr;
        if (rsymndx != null) this.rsymndx = rsymndx;
        if (rsize != null) this.rsize = rsize;
        if (rtype != null) this.rtype = rtype;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Reloc64(rvaddr, rsymndx, rsize, rtype);
    }
}
