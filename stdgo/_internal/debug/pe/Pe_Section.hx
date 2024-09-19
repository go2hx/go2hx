package stdgo._internal.debug.pe;
@:structInit @:using(stdgo._internal.debug.pe.Pe_Section_static_extension.Section_static_extension) class Section {
    @:embedded
    public var sectionHeader : stdgo._internal.debug.pe.Pe_SectionHeader.SectionHeader = ({} : stdgo._internal.debug.pe.Pe_SectionHeader.SectionHeader);
    public var relocs : stdgo.Slice<stdgo._internal.debug.pe.Pe_Reloc.Reloc> = (null : stdgo.Slice<stdgo._internal.debug.pe.Pe_Reloc.Reloc>);
    @:embedded
    public var readerAt : stdgo._internal.io.Io_ReaderAt.ReaderAt = (null : stdgo._internal.io.Io_ReaderAt.ReaderAt);
    public var _sr : stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader> = (null : stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader>);
    public function new(?sectionHeader:stdgo._internal.debug.pe.Pe_SectionHeader.SectionHeader, ?relocs:stdgo.Slice<stdgo._internal.debug.pe.Pe_Reloc.Reloc>, ?readerAt:stdgo._internal.io.Io_ReaderAt.ReaderAt, ?_sr:stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader>) {
        if (sectionHeader != null) this.sectionHeader = sectionHeader;
        if (relocs != null) this.relocs = relocs;
        if (readerAt != null) this.readerAt = readerAt;
        if (_sr != null) this._sr = _sr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function readAt(_p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.readerAt.readAt(_p, _off);
    public function __copy__() {
        return new Section(sectionHeader, relocs, readerAt, _sr);
    }
}