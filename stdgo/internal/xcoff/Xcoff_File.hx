package stdgo.internal.xcoff;
@:structInit @:using(stdgo.internal.xcoff.Xcoff.File_static_extension) abstract File(stdgo._internal.internal.xcoff.Xcoff_File.File) from stdgo._internal.internal.xcoff.Xcoff_File.File to stdgo._internal.internal.xcoff.Xcoff_File.File {
    public var fileHeader(get, set) : FileHeader;
    function get_fileHeader():FileHeader return this.fileHeader;
    function set_fileHeader(v:FileHeader):FileHeader {
        this.fileHeader = v;
        return v;
    }
    public var sections(get, set) : Array<Section>;
    function get_sections():Array<Section> return [for (i in this.sections) i];
    function set_sections(v:Array<Section>):Array<Section> {
        this.sections = ([for (i in v) (i : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Section.Section>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Section.Section>>);
        return v;
    }
    public var symbols(get, set) : Array<Symbol>;
    function get_symbols():Array<Symbol> return [for (i in this.symbols) i];
    function set_symbols(v:Array<Symbol>):Array<Symbol> {
        this.symbols = ([for (i in v) (i : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol>>);
        return v;
    }
    public var stringTable(get, set) : Array<std.UInt>;
    function get_stringTable():Array<std.UInt> return [for (i in this.stringTable) i];
    function set_stringTable(v:Array<std.UInt>):Array<std.UInt> {
        this.stringTable = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var libraryPaths(get, set) : Array<String>;
    function get_libraryPaths():Array<String> return [for (i in this.libraryPaths) i];
    function set_libraryPaths(v:Array<String>):Array<String> {
        this.libraryPaths = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _closer(get, set) : stdgo._internal.io.Io_Closer.Closer;
    function get__closer():stdgo._internal.io.Io_Closer.Closer return this._closer;
    function set__closer(v:stdgo._internal.io.Io_Closer.Closer):stdgo._internal.io.Io_Closer.Closer {
        this._closer = v;
        return v;
    }
    public function new(?fileHeader:FileHeader, ?sections:Array<Section>, ?symbols:Array<Symbol>, ?stringTable:Array<std.UInt>, ?libraryPaths:Array<String>, ?_closer:stdgo._internal.io.Io_Closer.Closer) this = new stdgo._internal.internal.xcoff.Xcoff_File.File(fileHeader, ([for (i in sections) (i : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Section.Section>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Section.Section>>), ([for (i in symbols) (i : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol>>), ([for (i in stringTable) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in libraryPaths) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), _closer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
