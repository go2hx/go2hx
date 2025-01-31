package stdgo._internal.internal.xcoff;
import stdgo._internal.os.Os;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.debug.dwarf.Dwarf;
@:structInit @:using(stdgo._internal.internal.xcoff.Xcoff_LoaderHeader32_static_extension.LoaderHeader32_static_extension) class LoaderHeader32 {
    public var lversion : stdgo.GoUInt32 = 0;
    public var lnsyms : stdgo.GoUInt32 = 0;
    public var lnreloc : stdgo.GoUInt32 = 0;
    public var listlen : stdgo.GoUInt32 = 0;
    public var lnimpid : stdgo.GoUInt32 = 0;
    public var limpoff : stdgo.GoUInt32 = 0;
    public var lstlen : stdgo.GoUInt32 = 0;
    public var lstoff : stdgo.GoUInt32 = 0;
    public function new(?lversion:stdgo.GoUInt32, ?lnsyms:stdgo.GoUInt32, ?lnreloc:stdgo.GoUInt32, ?listlen:stdgo.GoUInt32, ?lnimpid:stdgo.GoUInt32, ?limpoff:stdgo.GoUInt32, ?lstlen:stdgo.GoUInt32, ?lstoff:stdgo.GoUInt32) {
        if (lversion != null) this.lversion = lversion;
        if (lnsyms != null) this.lnsyms = lnsyms;
        if (lnreloc != null) this.lnreloc = lnreloc;
        if (listlen != null) this.listlen = listlen;
        if (lnimpid != null) this.lnimpid = lnimpid;
        if (limpoff != null) this.limpoff = limpoff;
        if (lstlen != null) this.lstlen = lstlen;
        if (lstoff != null) this.lstoff = lstoff;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new LoaderHeader32(lversion, lnsyms, lnreloc, listlen, lnimpid, limpoff, lstlen, lstoff);
    }
}
