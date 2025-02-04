package stdgo._internal.internal.xcoff;
@:structInit @:using(stdgo._internal.internal.xcoff.Xcoff_auxsect64_static_extension.AuxSect64_static_extension) class AuxSect64 {
    public var xscnlen : stdgo.GoUInt64 = 0;
    public var xnreloc : stdgo.GoUInt64 = 0;
    public var _pad : stdgo.GoUInt8 = 0;
    public var xauxtype : stdgo.GoUInt8 = 0;
    public function new(?xscnlen:stdgo.GoUInt64, ?xnreloc:stdgo.GoUInt64, ?_pad:stdgo.GoUInt8, ?xauxtype:stdgo.GoUInt8) {
        if (xscnlen != null) this.xscnlen = xscnlen;
        if (xnreloc != null) this.xnreloc = xnreloc;
        if (_pad != null) this._pad = _pad;
        if (xauxtype != null) this.xauxtype = xauxtype;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new AuxSect64(xscnlen, xnreloc, _pad, xauxtype);
    }
}
