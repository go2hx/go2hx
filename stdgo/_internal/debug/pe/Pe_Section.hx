package stdgo._internal.debug.pe;
import stdgo._internal.os.Os;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.compress.zlib.Zlib;
import stdgo._internal.debug.dwarf.Dwarf;
import stdgo._internal.strconv.Strconv;
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
    public var readAt(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt64) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readAt():(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt64) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check31 (this.readerAt ?? throw "null pointer dereference").readAt;
    public function __copy__() {
        return new Section(sectionHeader, relocs, readerAt, _sr);
    }
}
