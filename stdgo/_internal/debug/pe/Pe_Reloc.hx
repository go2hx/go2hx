package stdgo._internal.debug.pe;
import stdgo._internal.os.Os;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.compress.zlib.Zlib;
import stdgo._internal.debug.dwarf.Dwarf;
import stdgo._internal.strconv.Strconv;
@:structInit @:using(stdgo._internal.debug.pe.Pe_Reloc_static_extension.Reloc_static_extension) class Reloc {
    public var virtualAddress : stdgo.GoUInt32 = 0;
    public var symbolTableIndex : stdgo.GoUInt32 = 0;
    public var type : stdgo.GoUInt16 = 0;
    public function new(?virtualAddress:stdgo.GoUInt32, ?symbolTableIndex:stdgo.GoUInt32, ?type:stdgo.GoUInt16) {
        if (virtualAddress != null) this.virtualAddress = virtualAddress;
        if (symbolTableIndex != null) this.symbolTableIndex = symbolTableIndex;
        if (type != null) this.type = type;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Reloc(virtualAddress, symbolTableIndex, type);
    }
}
