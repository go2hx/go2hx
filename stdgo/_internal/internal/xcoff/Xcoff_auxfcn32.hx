package stdgo._internal.internal.xcoff;
@:structInit @:using(stdgo._internal.internal.xcoff.Xcoff_auxfcn32_static_extension.AuxFcn32_static_extension) class AuxFcn32 {
    public var xexptr : stdgo.GoUInt32 = 0;
    public var xfsize : stdgo.GoUInt32 = 0;
    public var xlnnoptr : stdgo.GoUInt32 = 0;
    public var xendndx : stdgo.GoUInt32 = 0;
    public var xpad : stdgo.GoUInt16 = 0;
    public function new(?xexptr:stdgo.GoUInt32, ?xfsize:stdgo.GoUInt32, ?xlnnoptr:stdgo.GoUInt32, ?xendndx:stdgo.GoUInt32, ?xpad:stdgo.GoUInt16) {
        if (xexptr != null) this.xexptr = xexptr;
        if (xfsize != null) this.xfsize = xfsize;
        if (xlnnoptr != null) this.xlnnoptr = xlnnoptr;
        if (xendndx != null) this.xendndx = xendndx;
        if (xpad != null) this.xpad = xpad;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new AuxFcn32(xexptr, xfsize, xlnnoptr, xendndx, xpad);
    }
}
