package stdgo.debug.macho;
@:structInit @:using(stdgo.debug.macho.Macho.Symtab_static_extension) abstract Symtab(stdgo._internal.debug.macho.Macho_Symtab.Symtab) from stdgo._internal.debug.macho.Macho_Symtab.Symtab to stdgo._internal.debug.macho.Macho_Symtab.Symtab {
    public var loadBytes(get, set) : LoadBytes;
    function get_loadBytes():LoadBytes return this.loadBytes;
    function set_loadBytes(v:LoadBytes):LoadBytes {
        this.loadBytes = v;
        return v;
    }
    public var symtabCmd(get, set) : SymtabCmd;
    function get_symtabCmd():SymtabCmd return this.symtabCmd;
    function set_symtabCmd(v:SymtabCmd):SymtabCmd {
        this.symtabCmd = v;
        return v;
    }
    public var syms(get, set) : Array<Symbol>;
    function get_syms():Array<Symbol> return [for (i in this.syms) i];
    function set_syms(v:Array<Symbol>):Array<Symbol> {
        this.syms = ([for (i in v) i] : stdgo.Slice<stdgo._internal.debug.macho.Macho_Symbol.Symbol>);
        return v;
    }
    public function new(?loadBytes:LoadBytes, ?symtabCmd:SymtabCmd, ?syms:Array<Symbol>) this = new stdgo._internal.debug.macho.Macho_Symtab.Symtab(loadBytes, symtabCmd, ([for (i in syms) i] : stdgo.Slice<stdgo._internal.debug.macho.Macho_Symbol.Symbol>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
