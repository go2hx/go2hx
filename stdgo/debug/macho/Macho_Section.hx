package stdgo.debug.macho;
@:structInit @:using(stdgo.debug.macho.Macho.Section_static_extension) abstract Section(stdgo._internal.debug.macho.Macho_Section.Section) from stdgo._internal.debug.macho.Macho_Section.Section to stdgo._internal.debug.macho.Macho_Section.Section {
    public var sectionHeader(get, set) : SectionHeader;
    function get_sectionHeader():SectionHeader return this.sectionHeader;
    function set_sectionHeader(v:SectionHeader):SectionHeader {
        this.sectionHeader = v;
        return v;
    }
    public var relocs(get, set) : Array<Reloc>;
    function get_relocs():Array<Reloc> return [for (i in this.relocs) i];
    function set_relocs(v:Array<Reloc>):Array<Reloc> {
        this.relocs = ([for (i in v) i] : stdgo.Slice<stdgo._internal.debug.macho.Macho_Reloc.Reloc>);
        return v;
    }
    public var readerAt(get, set) : stdgo._internal.io.Io_ReaderAt.ReaderAt;
    function get_readerAt():stdgo._internal.io.Io_ReaderAt.ReaderAt return this.readerAt;
    function set_readerAt(v:stdgo._internal.io.Io_ReaderAt.ReaderAt):stdgo._internal.io.Io_ReaderAt.ReaderAt {
        this.readerAt = v;
        return v;
    }
    public var _sr(get, set) : stdgo._internal.io.Io_SectionReader.SectionReader;
    function get__sr():stdgo._internal.io.Io_SectionReader.SectionReader return this._sr;
    function set__sr(v:stdgo._internal.io.Io_SectionReader.SectionReader):stdgo._internal.io.Io_SectionReader.SectionReader {
        this._sr = (v : stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader>);
        return v;
    }
    public function new(?sectionHeader:SectionHeader, ?relocs:Array<Reloc>, ?readerAt:stdgo._internal.io.Io_ReaderAt.ReaderAt, ?_sr:stdgo._internal.io.Io_SectionReader.SectionReader) this = new stdgo._internal.debug.macho.Macho_Section.Section(sectionHeader, ([for (i in relocs) i] : stdgo.Slice<stdgo._internal.debug.macho.Macho_Reloc.Reloc>), readerAt, (_sr : stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
