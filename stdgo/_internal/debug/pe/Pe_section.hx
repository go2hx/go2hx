package stdgo._internal.debug.pe;
@:structInit @:using(stdgo._internal.debug.pe.Pe_section_static_extension.Section_static_extension) class Section {
    @:embedded
    public var sectionHeader : stdgo._internal.debug.pe.Pe_sectionheader.SectionHeader = ({} : stdgo._internal.debug.pe.Pe_sectionheader.SectionHeader);
    public var relocs : stdgo.Slice<stdgo._internal.debug.pe.Pe_reloc.Reloc> = (null : stdgo.Slice<stdgo._internal.debug.pe.Pe_reloc.Reloc>);
    @:embedded
    public var readerAt : stdgo._internal.io.Io_readerat.ReaderAt = (null : stdgo._internal.io.Io_readerat.ReaderAt);
    public var _sr : stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader> = (null : stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader>);
    public function new(?sectionHeader:stdgo._internal.debug.pe.Pe_sectionheader.SectionHeader, ?relocs:stdgo.Slice<stdgo._internal.debug.pe.Pe_reloc.Reloc>, ?readerAt:stdgo._internal.io.Io_readerat.ReaderAt, ?_sr:stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader>) {
        if (sectionHeader != null) this.sectionHeader = sectionHeader;
        if (relocs != null) this.relocs = relocs;
        if (readerAt != null) this.readerAt = readerAt;
        if (_sr != null) this._sr = _sr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var readAt(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt64) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readAt():(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt64) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check31 (this.readerAt ?? throw "null pointer dereference").readAt;
    public function __copy__() {
        return new Section(sectionHeader, relocs, readerAt, _sr);
    }
}
