package stdgo._internal.debug.pe;
@:structInit @:using(stdgo._internal.debug.pe.Pe_File_static_extension.File_static_extension) class File {
    @:embedded
    public var fileHeader : stdgo._internal.debug.pe.Pe_FileHeader.FileHeader = ({} : stdgo._internal.debug.pe.Pe_FileHeader.FileHeader);
    public var optionalHeader : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var sections : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.pe.Pe_Section.Section>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.pe.Pe_Section.Section>>);
    public var symbols : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.pe.Pe_Symbol.Symbol>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.pe.Pe_Symbol.Symbol>>);
    public var coffsymbols : stdgo.Slice<stdgo._internal.debug.pe.Pe_COFFSymbol.COFFSymbol> = (null : stdgo.Slice<stdgo._internal.debug.pe.Pe_COFFSymbol.COFFSymbol>);
    public var stringTable : stdgo._internal.debug.pe.Pe_StringTable.StringTable = new stdgo._internal.debug.pe.Pe_StringTable.StringTable(0, 0);
    public var _closer : stdgo._internal.io.Io_Closer.Closer = (null : stdgo._internal.io.Io_Closer.Closer);
    public function new(?fileHeader:stdgo._internal.debug.pe.Pe_FileHeader.FileHeader, ?optionalHeader:stdgo.AnyInterface, ?sections:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.pe.Pe_Section.Section>>, ?symbols:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.pe.Pe_Symbol.Symbol>>, ?coffsymbols:stdgo.Slice<stdgo._internal.debug.pe.Pe_COFFSymbol.COFFSymbol>, ?stringTable:stdgo._internal.debug.pe.Pe_StringTable.StringTable, ?_closer:stdgo._internal.io.Io_Closer.Closer) {
        if (fileHeader != null) this.fileHeader = fileHeader;
        if (optionalHeader != null) this.optionalHeader = optionalHeader;
        if (sections != null) this.sections = sections;
        if (symbols != null) this.symbols = symbols;
        if (coffsymbols != null) this.coffsymbols = coffsymbols;
        if (stringTable != null) this.stringTable = stringTable;
        if (_closer != null) this._closer = _closer;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new File(fileHeader, optionalHeader, sections, symbols, coffsymbols, stringTable, _closer);
    }
}
