package stdgo.debug.pe;
@:structInit @:using(stdgo.debug.pe.Pe.File_static_extension) abstract File(stdgo._internal.debug.pe.Pe_File.File) from stdgo._internal.debug.pe.Pe_File.File to stdgo._internal.debug.pe.Pe_File.File {
    public var fileHeader(get, set) : FileHeader;
    function get_fileHeader():FileHeader return this.fileHeader;
    function set_fileHeader(v:FileHeader):FileHeader {
        this.fileHeader = v;
        return v;
    }
    public var optionalHeader(get, set) : stdgo.AnyInterface;
    function get_optionalHeader():stdgo.AnyInterface return this.optionalHeader;
    function set_optionalHeader(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.optionalHeader = (v : stdgo.AnyInterface);
        return v;
    }
    public var sections(get, set) : Array<Section>;
    function get_sections():Array<Section> return [for (i in this.sections) i];
    function set_sections(v:Array<Section>):Array<Section> {
        this.sections = ([for (i in v) (i : stdgo.Ref<stdgo._internal.debug.pe.Pe_Section.Section>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.pe.Pe_Section.Section>>);
        return v;
    }
    public var symbols(get, set) : Array<Symbol>;
    function get_symbols():Array<Symbol> return [for (i in this.symbols) i];
    function set_symbols(v:Array<Symbol>):Array<Symbol> {
        this.symbols = ([for (i in v) (i : stdgo.Ref<stdgo._internal.debug.pe.Pe_Symbol.Symbol>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.pe.Pe_Symbol.Symbol>>);
        return v;
    }
    public var cOFFSymbols(get, set) : Array<COFFSymbol>;
    function get_cOFFSymbols():Array<COFFSymbol> return [for (i in this.cOFFSymbols) i];
    function set_cOFFSymbols(v:Array<COFFSymbol>):Array<COFFSymbol> {
        this.cOFFSymbols = ([for (i in v) i] : stdgo.Slice<stdgo._internal.debug.pe.Pe_COFFSymbol.COFFSymbol>);
        return v;
    }
    public var stringTable(get, set) : StringTable;
    function get_stringTable():StringTable return this.stringTable;
    function set_stringTable(v:StringTable):StringTable {
        this.stringTable = v;
        return v;
    }
    public var _closer(get, set) : stdgo._internal.io.Io_Closer.Closer;
    function get__closer():stdgo._internal.io.Io_Closer.Closer return this._closer;
    function set__closer(v:stdgo._internal.io.Io_Closer.Closer):stdgo._internal.io.Io_Closer.Closer {
        this._closer = v;
        return v;
    }
    public function new(?fileHeader:FileHeader, ?optionalHeader:stdgo.AnyInterface, ?sections:Array<Section>, ?symbols:Array<Symbol>, ?cOFFSymbols:Array<COFFSymbol>, ?stringTable:StringTable, ?_closer:stdgo._internal.io.Io_Closer.Closer) this = new stdgo._internal.debug.pe.Pe_File.File(fileHeader, (optionalHeader : stdgo.AnyInterface), ([for (i in sections) (i : stdgo.Ref<stdgo._internal.debug.pe.Pe_Section.Section>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.pe.Pe_Section.Section>>), ([for (i in symbols) (i : stdgo.Ref<stdgo._internal.debug.pe.Pe_Symbol.Symbol>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.pe.Pe_Symbol.Symbol>>), ([for (i in cOFFSymbols) i] : stdgo.Slice<stdgo._internal.debug.pe.Pe_COFFSymbol.COFFSymbol>), stringTable, _closer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
