package stdgo._internal.internal.xcoff;
@:structInit @:using(stdgo._internal.internal.xcoff.Xcoff_syment64_static_extension.SymEnt64_static_extension) class SymEnt64 {
    public var nvalue : stdgo.GoUInt64 = 0;
    public var noffset : stdgo.GoUInt32 = 0;
    public var nscnum : stdgo.GoUInt16 = 0;
    public var ntype : stdgo.GoUInt16 = 0;
    public var nsclass : stdgo.GoUInt8 = 0;
    public var nnumaux : stdgo.GoUInt8 = 0;
    public function new(?nvalue:stdgo.GoUInt64, ?noffset:stdgo.GoUInt32, ?nscnum:stdgo.GoUInt16, ?ntype:stdgo.GoUInt16, ?nsclass:stdgo.GoUInt8, ?nnumaux:stdgo.GoUInt8) {
        if (nvalue != null) this.nvalue = nvalue;
        if (noffset != null) this.noffset = noffset;
        if (nscnum != null) this.nscnum = nscnum;
        if (ntype != null) this.ntype = ntype;
        if (nsclass != null) this.nsclass = nsclass;
        if (nnumaux != null) this.nnumaux = nnumaux;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SymEnt64(nvalue, noffset, nscnum, ntype, nsclass, nnumaux);
    }
}
