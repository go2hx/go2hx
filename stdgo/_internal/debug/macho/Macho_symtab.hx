package stdgo._internal.debug.macho;
@:structInit @:using(stdgo._internal.debug.macho.Macho_symtab_static_extension.Symtab_static_extension) class Symtab {
    @:embedded
    public var loadBytes : stdgo._internal.debug.macho.Macho_loadbytes.LoadBytes = (new stdgo._internal.debug.macho.Macho_loadbytes.LoadBytes(0, 0) : stdgo._internal.debug.macho.Macho_loadbytes.LoadBytes);
    @:embedded
    public var symtabCmd : stdgo._internal.debug.macho.Macho_symtabcmd.SymtabCmd = ({} : stdgo._internal.debug.macho.Macho_symtabcmd.SymtabCmd);
    public var syms : stdgo.Slice<stdgo._internal.debug.macho.Macho_symbol.Symbol> = (null : stdgo.Slice<stdgo._internal.debug.macho.Macho_symbol.Symbol>);
    public function new(?loadBytes:stdgo._internal.debug.macho.Macho_loadbytes.LoadBytes, ?symtabCmd:stdgo._internal.debug.macho.Macho_symtabcmd.SymtabCmd, ?syms:stdgo.Slice<stdgo._internal.debug.macho.Macho_symbol.Symbol>) {
        if (loadBytes != null) this.loadBytes = loadBytes;
        if (symtabCmd != null) this.symtabCmd = symtabCmd;
        if (syms != null) this.syms = syms;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var raw(get, never) : () -> stdgo.Slice<stdgo.GoUInt8>;
    @:embedded
    @:embeddededffieldsffun
    public function get_raw():() -> stdgo.Slice<stdgo.GoUInt8> return @:check31 (this.loadBytes ?? throw "null pointer dereference").raw;
    public function __copy__() {
        return new Symtab(loadBytes, symtabCmd, syms);
    }
}
