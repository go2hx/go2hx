package stdgo._internal.internal.xcoff;
@:structInit @:using(stdgo._internal.internal.xcoff.Xcoff_loaderheader64_static_extension.LoaderHeader64_static_extension) class LoaderHeader64 {
    public var lversion : stdgo.GoUInt32 = 0;
    public var lnsyms : stdgo.GoUInt32 = 0;
    public var lnreloc : stdgo.GoUInt32 = 0;
    public var listlen : stdgo.GoUInt32 = 0;
    public var lnimpid : stdgo.GoUInt32 = 0;
    public var lstlen : stdgo.GoUInt32 = 0;
    public var limpoff : stdgo.GoUInt64 = 0;
    public var lstoff : stdgo.GoUInt64 = 0;
    public var lsymoff : stdgo.GoUInt64 = 0;
    public var lrldoff : stdgo.GoUInt64 = 0;
    public function new(?lversion:stdgo.GoUInt32, ?lnsyms:stdgo.GoUInt32, ?lnreloc:stdgo.GoUInt32, ?listlen:stdgo.GoUInt32, ?lnimpid:stdgo.GoUInt32, ?lstlen:stdgo.GoUInt32, ?limpoff:stdgo.GoUInt64, ?lstoff:stdgo.GoUInt64, ?lsymoff:stdgo.GoUInt64, ?lrldoff:stdgo.GoUInt64) {
        if (lversion != null) this.lversion = lversion;
        if (lnsyms != null) this.lnsyms = lnsyms;
        if (lnreloc != null) this.lnreloc = lnreloc;
        if (listlen != null) this.listlen = listlen;
        if (lnimpid != null) this.lnimpid = lnimpid;
        if (lstlen != null) this.lstlen = lstlen;
        if (limpoff != null) this.limpoff = limpoff;
        if (lstoff != null) this.lstoff = lstoff;
        if (lsymoff != null) this.lsymoff = lsymoff;
        if (lrldoff != null) this.lrldoff = lrldoff;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new LoaderHeader64(lversion, lnsyms, lnreloc, listlen, lnimpid, lstlen, limpoff, lstoff, lsymoff, lrldoff);
    }
}
