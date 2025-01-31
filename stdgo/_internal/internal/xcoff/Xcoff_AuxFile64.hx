package stdgo._internal.internal.xcoff;
import stdgo._internal.os.Os;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.debug.dwarf.Dwarf;
@:structInit @:using(stdgo._internal.internal.xcoff.Xcoff_AuxFile64_static_extension.AuxFile64_static_extension) class AuxFile64 {
    public var xfname : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(8, 8).__setNumber32__();
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
