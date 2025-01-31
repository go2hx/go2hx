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
@:structInit @:using(stdgo._internal.debug.macho.Macho_Dysymtab_static_extension.Dysymtab_static_extension) class Dysymtab {
    @:embedded
    public var loadBytes : stdgo._internal.debug.macho.Macho_LoadBytes.LoadBytes = new stdgo._internal.debug.macho.Macho_LoadBytes.LoadBytes(0, 0);
    @:embedded
    public var dysymtabCmd : stdgo._internal.debug.macho.Macho_DysymtabCmd.DysymtabCmd = ({} : stdgo._internal.debug.macho.Macho_DysymtabCmd.DysymtabCmd);
    public var indirectSyms : stdgo.Slice<stdgo.GoUInt32> = (null : stdgo.Slice<stdgo.GoUInt32>);
    public function new(?loadBytes:stdgo._internal.debug.macho.Macho_LoadBytes.LoadBytes, ?dysymtabCmd:stdgo._internal.debug.macho.Macho_DysymtabCmd.DysymtabCmd, ?indirectSyms:stdgo.Slice<stdgo.GoUInt32>) {
        if (loadBytes != null) this.loadBytes = loadBytes;
        if (dysymtabCmd != null) this.dysymtabCmd = dysymtabCmd;
        if (indirectSyms != null) this.indirectSyms = indirectSyms;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var raw(get, never) : () -> stdgo.Slice<stdgo.GoUInt8>;
    @:embedded
    @:embeddededffieldsffun
    public function get_raw():() -> stdgo.Slice<stdgo.GoUInt8> return @:check31 (this.loadBytes ?? throw "null pointer dereference").raw;
    public function __copy__() {
        return new Dysymtab(loadBytes, dysymtabCmd, indirectSyms);
    }
}
