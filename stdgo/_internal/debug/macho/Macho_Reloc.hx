package stdgo._internal.debug.macho;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.compress.zlib.Zlib;
import stdgo._internal.debug.dwarf.Dwarf;
@:structInit @:using(stdgo._internal.debug.macho.Macho_Reloc_static_extension.Reloc_static_extension) class Reloc {
    public var addr : stdgo.GoUInt32 = 0;
    public var value : stdgo.GoUInt32 = 0;
    public var type : stdgo.GoUInt8 = 0;
    public var len : stdgo.GoUInt8 = 0;
    public var pcrel : Bool = false;
    public var extern_ : Bool = false;
    public var scattered : Bool = false;
    public function new(?addr:stdgo.GoUInt32, ?value:stdgo.GoUInt32, ?type:stdgo.GoUInt8, ?len:stdgo.GoUInt8, ?pcrel:Bool, ?extern_:Bool, ?scattered:Bool) {
        if (addr != null) this.addr = addr;
        if (value != null) this.value = value;
        if (type != null) this.type = type;
        if (len != null) this.len = len;
        if (pcrel != null) this.pcrel = pcrel;
        if (extern_ != null) this.extern_ = extern_;
        if (scattered != null) this.scattered = scattered;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Reloc(addr, value, type, len, pcrel, extern_, scattered);
    }
}
