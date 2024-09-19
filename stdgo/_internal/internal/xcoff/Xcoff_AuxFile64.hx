package stdgo._internal.internal.xcoff;
@:structInit class AuxFile64 {
    public var xfname : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(8, 8, ...[for (i in 0 ... 8) (0 : stdgo.GoUInt8)]);
    public var xftype : stdgo.GoUInt8 = 0;
    public var xauxtype : stdgo.GoUInt8 = 0;
    public function new(?xfname:stdgo.GoArray<stdgo.GoUInt8>, ?xftype:stdgo.GoUInt8, ?xauxtype:stdgo.GoUInt8) {
        if (xfname != null) this.xfname = xfname;
        if (xftype != null) this.xftype = xftype;
        if (xauxtype != null) this.xauxtype = xauxtype;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new AuxFile64(xfname, xftype, xauxtype);
    }
}
