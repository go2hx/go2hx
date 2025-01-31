package stdgo._internal.internal.xcoff;
import stdgo._internal.os.Os;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.debug.dwarf.Dwarf;
@:structInit @:using(stdgo._internal.internal.xcoff.Xcoff_SymEnt32_static_extension.SymEnt32_static_extension) class SymEnt32 {
    public var nname : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(8, 8).__setNumber32__();
    public var nvalue : stdgo.GoUInt32 = 0;
    public var nscnum : stdgo.GoUInt16 = 0;
    public var ntype : stdgo.GoUInt16 = 0;
    public var nsclass : stdgo.GoUInt8 = 0;
    public var nnumaux : stdgo.GoUInt8 = 0;
    public function new(?nname:stdgo.GoArray<stdgo.GoUInt8>, ?nvalue:stdgo.GoUInt32, ?nscnum:stdgo.GoUInt16, ?ntype:stdgo.GoUInt16, ?nsclass:stdgo.GoUInt8, ?nnumaux:stdgo.GoUInt8) {
        if (nname != null) this.nname = nname;
        if (nvalue != null) this.nvalue = nvalue;
        if (nscnum != null) this.nscnum = nscnum;
        if (ntype != null) this.ntype = ntype;
        if (nsclass != null) this.nsclass = nsclass;
        if (nnumaux != null) this.nnumaux = nnumaux;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SymEnt32(nname, nvalue, nscnum, ntype, nsclass, nnumaux);
    }
}
