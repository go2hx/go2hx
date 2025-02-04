package stdgo._internal.internal.xcoff;
@:structInit @:using(stdgo._internal.internal.xcoff.Xcoff_auxcsect64_static_extension.AuxCSect64_static_extension) class AuxCSect64 {
    public var xscnlenlo : stdgo.GoUInt32 = 0;
    public var xparmhash : stdgo.GoUInt32 = 0;
    public var xsnhash : stdgo.GoUInt16 = 0;
    public var xsmtyp : stdgo.GoUInt8 = 0;
    public var xsmclas : stdgo.GoUInt8 = 0;
    public var xscnlenhi : stdgo.GoUInt32 = 0;
    public var xpad : stdgo.GoUInt8 = 0;
    public var xauxtype : stdgo.GoUInt8 = 0;
    public function new(?xscnlenlo:stdgo.GoUInt32, ?xparmhash:stdgo.GoUInt32, ?xsnhash:stdgo.GoUInt16, ?xsmtyp:stdgo.GoUInt8, ?xsmclas:stdgo.GoUInt8, ?xscnlenhi:stdgo.GoUInt32, ?xpad:stdgo.GoUInt8, ?xauxtype:stdgo.GoUInt8) {
        if (xscnlenlo != null) this.xscnlenlo = xscnlenlo;
        if (xparmhash != null) this.xparmhash = xparmhash;
        if (xsnhash != null) this.xsnhash = xsnhash;
        if (xsmtyp != null) this.xsmtyp = xsmtyp;
        if (xsmclas != null) this.xsmclas = xsmclas;
        if (xscnlenhi != null) this.xscnlenhi = xscnlenhi;
        if (xpad != null) this.xpad = xpad;
        if (xauxtype != null) this.xauxtype = xauxtype;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new AuxCSect64(xscnlenlo, xparmhash, xsnhash, xsmtyp, xsmclas, xscnlenhi, xpad, xauxtype);
    }
}
