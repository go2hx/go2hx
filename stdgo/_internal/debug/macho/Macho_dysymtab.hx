package stdgo._internal.debug.macho;
@:structInit @:using(stdgo._internal.debug.macho.Macho_dysymtab_static_extension.Dysymtab_static_extension) class Dysymtab {
    @:embedded
    public var loadBytes : stdgo._internal.debug.macho.Macho_loadbytes.LoadBytes = (new stdgo._internal.debug.macho.Macho_loadbytes.LoadBytes(0, 0) : stdgo._internal.debug.macho.Macho_loadbytes.LoadBytes);
    @:embedded
    public var dysymtabCmd : stdgo._internal.debug.macho.Macho_dysymtabcmd.DysymtabCmd = ({} : stdgo._internal.debug.macho.Macho_dysymtabcmd.DysymtabCmd);
    public var indirectSyms : stdgo.Slice<stdgo.GoUInt32> = (null : stdgo.Slice<stdgo.GoUInt32>);
    public function new(?loadBytes:stdgo._internal.debug.macho.Macho_loadbytes.LoadBytes, ?dysymtabCmd:stdgo._internal.debug.macho.Macho_dysymtabcmd.DysymtabCmd, ?indirectSyms:stdgo.Slice<stdgo.GoUInt32>) {
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
