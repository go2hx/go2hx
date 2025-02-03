package stdgo.debug.elf;
@:structInit @:using(stdgo.debug.elf.Elf.Prog_static_extension) abstract Prog(stdgo._internal.debug.elf.Elf_Prog.Prog) from stdgo._internal.debug.elf.Elf_Prog.Prog to stdgo._internal.debug.elf.Elf_Prog.Prog {
    public var progHeader(get, set) : ProgHeader;
    function get_progHeader():ProgHeader return this.progHeader;
    function set_progHeader(v:ProgHeader):ProgHeader {
        this.progHeader = v;
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
    public function new(?progHeader:ProgHeader, ?readerAt:stdgo._internal.io.Io_ReaderAt.ReaderAt, ?_sr:stdgo._internal.io.Io_SectionReader.SectionReader) this = new stdgo._internal.debug.elf.Elf_Prog.Prog(progHeader, readerAt, (_sr : stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
