package stdgo._internal.internal.xcoff;
import stdgo._internal.os.Os;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.debug.dwarf.Dwarf;
@:structInit @:using(stdgo._internal.internal.xcoff.Xcoff_Reloc64_static_extension.Reloc64_static_extension) class Reloc64 {
    public var rvaddr : stdgo.GoUInt64 = 0;
    public var rsymndx : stdgo.GoUInt32 = 0;
    public var rsize : stdgo.GoUInt8 = 0;
    public var rtype : stdgo.GoUInt8 = 0;
    public function new(?rvaddr:stdgo.GoUInt64, ?rsymndx:stdgo.GoUInt32, ?rsize:stdgo.GoUInt8, ?rtype:stdgo.GoUInt8) {
        if (rvaddr != null) this.rvaddr = rvaddr;
        if (rsymndx != null) this.rsymndx = rsymndx;
        if (rsize != null) this.rsize = rsize;
        if (rtype != null) this.rtype = rtype;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Reloc64(rvaddr, rsymndx, rsize, rtype);
    }
}
