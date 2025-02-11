package stdgo._internal.debug.pe;
@:structInit @:using(stdgo._internal.debug.pe.Pe_file_static_extension.File_static_extension) class File {
    @:embedded
    public var fileHeader : stdgo._internal.debug.pe.Pe_fileheader.FileHeader = ({} : stdgo._internal.debug.pe.Pe_fileheader.FileHeader);
    public var optionalHeader : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var sections : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.pe.Pe_section.Section>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.pe.Pe_section.Section>>);
    public var symbols : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.pe.Pe_symbol.Symbol>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.pe.Pe_symbol.Symbol>>);
    public var cOFFSymbols : stdgo.Slice<stdgo._internal.debug.pe.Pe_coffsymbol.COFFSymbol> = (null : stdgo.Slice<stdgo._internal.debug.pe.Pe_coffsymbol.COFFSymbol>);
    public var stringTable : stdgo._internal.debug.pe.Pe_stringtable.StringTable = (new stdgo._internal.debug.pe.Pe_stringtable.StringTable(0, 0) : stdgo._internal.debug.pe.Pe_stringtable.StringTable);
    public var _closer : stdgo._internal.io.Io_closer.Closer = (null : stdgo._internal.io.Io_closer.Closer);
    public function new(?fileHeader:stdgo._internal.debug.pe.Pe_fileheader.FileHeader, ?optionalHeader:stdgo.AnyInterface, ?sections:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.pe.Pe_section.Section>>, ?symbols:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.pe.Pe_symbol.Symbol>>, ?cOFFSymbols:stdgo.Slice<stdgo._internal.debug.pe.Pe_coffsymbol.COFFSymbol>, ?stringTable:stdgo._internal.debug.pe.Pe_stringtable.StringTable, ?_closer:stdgo._internal.io.Io_closer.Closer) {
        if (fileHeader != null) this.fileHeader = fileHeader;
        if (optionalHeader != null) this.optionalHeader = optionalHeader;
        if (sections != null) this.sections = sections;
        if (symbols != null) this.symbols = symbols;
        if (cOFFSymbols != null) this.cOFFSymbols = cOFFSymbols;
        if (stringTable != null) this.stringTable = stringTable;
        if (_closer != null) this._closer = _closer;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new File(fileHeader, optionalHeader, sections, symbols, cOFFSymbols, stringTable, _closer);
    }
}
