package stdgo._internal.debug.elf;
@:structInit @:using(stdgo._internal.debug.elf.Elf_Section_static_extension.Section_static_extension) class Section {
    @:embedded
    public var sectionHeader : stdgo._internal.debug.elf.Elf_SectionHeader.SectionHeader = ({} : stdgo._internal.debug.elf.Elf_SectionHeader.SectionHeader);
    @:embedded
    public var readerAt : stdgo._internal.io.Io_ReaderAt.ReaderAt = (null : stdgo._internal.io.Io_ReaderAt.ReaderAt);
    public var _sr : stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader> = (null : stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader>);
    public var _compressionType : stdgo._internal.debug.elf.Elf_CompressionType.CompressionType = ((0 : stdgo.GoInt) : stdgo._internal.debug.elf.Elf_CompressionType.CompressionType);
    public var _compressionOffset : stdgo.GoInt64 = 0;
    public function new(?sectionHeader:stdgo._internal.debug.elf.Elf_SectionHeader.SectionHeader, ?readerAt:stdgo._internal.io.Io_ReaderAt.ReaderAt, ?_sr:stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader>, ?_compressionType:stdgo._internal.debug.elf.Elf_CompressionType.CompressionType, ?_compressionOffset:stdgo.GoInt64) {
        if (sectionHeader != null) this.sectionHeader = sectionHeader;
        if (readerAt != null) this.readerAt = readerAt;
        if (_sr != null) this._sr = _sr;
        if (_compressionType != null) this._compressionType = _compressionType;
        if (_compressionOffset != null) this._compressionOffset = _compressionOffset;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var readAt(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt64) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readAt():(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt64) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check31 (this.readerAt ?? throw "null pointer derefrence").readAt;
    public function __copy__() {
        return new Section(sectionHeader, readerAt, _sr, _compressionType, _compressionOffset);
    }
}
