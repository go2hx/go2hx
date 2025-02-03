package stdgo.debug.macho;
@:structInit @:using(stdgo.debug.macho.Macho.Dysymtab_static_extension) abstract Dysymtab(stdgo._internal.debug.macho.Macho_Dysymtab.Dysymtab) from stdgo._internal.debug.macho.Macho_Dysymtab.Dysymtab to stdgo._internal.debug.macho.Macho_Dysymtab.Dysymtab {
    public var loadBytes(get, set) : LoadBytes;
    function get_loadBytes():LoadBytes return this.loadBytes;
    function set_loadBytes(v:LoadBytes):LoadBytes {
        this.loadBytes = v;
        return v;
    }
    public var dysymtabCmd(get, set) : DysymtabCmd;
    function get_dysymtabCmd():DysymtabCmd return this.dysymtabCmd;
    function set_dysymtabCmd(v:DysymtabCmd):DysymtabCmd {
        this.dysymtabCmd = v;
        return v;
    }
    public var indirectSyms(get, set) : Array<std.UInt>;
    function get_indirectSyms():Array<std.UInt> return [for (i in this.indirectSyms) i];
    function set_indirectSyms(v:Array<std.UInt>):Array<std.UInt> {
        this.indirectSyms = ([for (i in v) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>);
        return v;
    }
    public function new(?loadBytes:LoadBytes, ?dysymtabCmd:DysymtabCmd, ?indirectSyms:Array<std.UInt>) this = new stdgo._internal.debug.macho.Macho_Dysymtab.Dysymtab(loadBytes, dysymtabCmd, ([for (i in indirectSyms) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
