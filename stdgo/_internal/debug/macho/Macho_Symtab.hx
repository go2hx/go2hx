package stdgo._internal.debug.macho;
@:structInit @:using(stdgo._internal.debug.macho.Macho_Symtab_static_extension.Symtab_static_extension) class Symtab {
    @:embedded
    public var loadBytes : stdgo._internal.debug.macho.Macho_LoadBytes.LoadBytes = new stdgo._internal.debug.macho.Macho_LoadBytes.LoadBytes(0, 0);
    @:embedded
    public var symtabCmd : stdgo._internal.debug.macho.Macho_SymtabCmd.SymtabCmd = ({} : stdgo._internal.debug.macho.Macho_SymtabCmd.SymtabCmd);
    public var syms : stdgo.Slice<stdgo._internal.debug.macho.Macho_Symbol.Symbol> = (null : stdgo.Slice<stdgo._internal.debug.macho.Macho_Symbol.Symbol>);
    public function new(?loadBytes:stdgo._internal.debug.macho.Macho_LoadBytes.LoadBytes, ?symtabCmd:stdgo._internal.debug.macho.Macho_SymtabCmd.SymtabCmd, ?syms:stdgo.Slice<stdgo._internal.debug.macho.Macho_Symbol.Symbol>) {
        if (loadBytes != null) this.loadBytes = loadBytes;
        if (symtabCmd != null) this.symtabCmd = symtabCmd;
        if (syms != null) this.syms = syms;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function raw():stdgo.Slice<stdgo.GoUInt8> return this.loadBytes.raw();
    public function __copy__() {
        return new Symtab(loadBytes, symtabCmd, syms);
    }
}
