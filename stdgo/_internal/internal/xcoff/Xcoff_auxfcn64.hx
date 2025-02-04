package stdgo._internal.internal.xcoff;
@:structInit @:using(stdgo._internal.internal.xcoff.Xcoff_auxfcn64_static_extension.AuxFcn64_static_extension) class AuxFcn64 {
    public var xlnnoptr : stdgo.GoUInt64 = 0;
    public var xfsize : stdgo.GoUInt32 = 0;
    public var xendndx : stdgo.GoUInt32 = 0;
    public var xpad : stdgo.GoUInt8 = 0;
    public var xauxtype : stdgo.GoUInt8 = 0;
    public function new(?xlnnoptr:stdgo.GoUInt64, ?xfsize:stdgo.GoUInt32, ?xendndx:stdgo.GoUInt32, ?xpad:stdgo.GoUInt8, ?xauxtype:stdgo.GoUInt8) {
        if (xlnnoptr != null) this.xlnnoptr = xlnnoptr;
        if (xfsize != null) this.xfsize = xfsize;
        if (xendndx != null) this.xendndx = xendndx;
        if (xpad != null) this.xpad = xpad;
        if (xauxtype != null) this.xauxtype = xauxtype;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new AuxFcn64(xlnnoptr, xfsize, xendndx, xpad, xauxtype);
    }
}
