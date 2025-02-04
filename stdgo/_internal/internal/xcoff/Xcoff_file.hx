package stdgo._internal.internal.xcoff;
@:structInit @:using(stdgo._internal.internal.xcoff.Xcoff_file_static_extension.File_static_extension) class File {
    @:embedded
    public var fileHeader : stdgo._internal.internal.xcoff.Xcoff_fileheader.FileHeader = ({} : stdgo._internal.internal.xcoff.Xcoff_fileheader.FileHeader);
    public var sections : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>>);
    public var symbols : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>>);
    public var stringTable : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var libraryPaths : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _closer : stdgo._internal.io.Io_closer.Closer = (null : stdgo._internal.io.Io_closer.Closer);
    public function new(?fileHeader:stdgo._internal.internal.xcoff.Xcoff_fileheader.FileHeader, ?sections:stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_section.Section>>, ?symbols:stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_symbol.Symbol>>, ?stringTable:stdgo.Slice<stdgo.GoUInt8>, ?libraryPaths:stdgo.Slice<stdgo.GoString>, ?_closer:stdgo._internal.io.Io_closer.Closer) {
        if (fileHeader != null) this.fileHeader = fileHeader;
        if (sections != null) this.sections = sections;
        if (symbols != null) this.symbols = symbols;
        if (stringTable != null) this.stringTable = stringTable;
        if (libraryPaths != null) this.libraryPaths = libraryPaths;
        if (_closer != null) this._closer = _closer;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new File(fileHeader, sections, symbols, stringTable, libraryPaths, _closer);
    }
}
