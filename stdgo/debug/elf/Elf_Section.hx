package stdgo.debug.elf;
@:structInit @:using(stdgo.debug.elf.Elf.Section_static_extension) abstract Section(stdgo._internal.debug.elf.Elf_Section.Section) from stdgo._internal.debug.elf.Elf_Section.Section to stdgo._internal.debug.elf.Elf_Section.Section {
    public var sectionHeader(get, set) : SectionHeader;
    function get_sectionHeader():SectionHeader return this.sectionHeader;
    function set_sectionHeader(v:SectionHeader):SectionHeader {
        this.sectionHeader = v;
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
    public var _compressionType(get, set) : CompressionType;
    function get__compressionType():CompressionType return this._compressionType;
    function set__compressionType(v:CompressionType):CompressionType {
        this._compressionType = v;
        return v;
    }
    public var _compressionOffset(get, set) : haxe.Int64;
    function get__compressionOffset():haxe.Int64 return this._compressionOffset;
    function set__compressionOffset(v:haxe.Int64):haxe.Int64 {
        this._compressionOffset = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?sectionHeader:SectionHeader, ?readerAt:stdgo._internal.io.Io_ReaderAt.ReaderAt, ?_sr:stdgo._internal.io.Io_SectionReader.SectionReader, ?_compressionType:CompressionType, ?_compressionOffset:haxe.Int64) this = new stdgo._internal.debug.elf.Elf_Section.Section(sectionHeader, readerAt, (_sr : stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader>), _compressionType, (_compressionOffset : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
