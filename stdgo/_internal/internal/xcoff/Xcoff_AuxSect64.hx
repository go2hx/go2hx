package stdgo._internal.internal.xcoff;
import stdgo._internal.os.Os;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.debug.dwarf.Dwarf;
@:structInit @:using(stdgo._internal.internal.xcoff.Xcoff_AuxSect64_static_extension.AuxSect64_static_extension) class AuxSect64 {
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
