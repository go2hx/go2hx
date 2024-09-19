package stdgo._internal.debug.macho;
@:structInit @:using(stdgo._internal.debug.macho.Macho_Segment_static_extension.Segment_static_extension) class Segment {
    @:embedded
    public var loadBytes : stdgo._internal.debug.macho.Macho_LoadBytes.LoadBytes = new stdgo._internal.debug.macho.Macho_LoadBytes.LoadBytes(0, 0);
    @:embedded
    public var segmentHeader : stdgo._internal.debug.macho.Macho_SegmentHeader.SegmentHeader = ({} : stdgo._internal.debug.macho.Macho_SegmentHeader.SegmentHeader);
    @:embedded
    public var readerAt : stdgo._internal.io.Io_ReaderAt.ReaderAt = (null : stdgo._internal.io.Io_ReaderAt.ReaderAt);
    public var _sr : stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader> = (null : stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader>);
    public function new(?loadBytes:stdgo._internal.debug.macho.Macho_LoadBytes.LoadBytes, ?segmentHeader:stdgo._internal.debug.macho.Macho_SegmentHeader.SegmentHeader, ?readerAt:stdgo._internal.io.Io_ReaderAt.ReaderAt, ?_sr:stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader>) {
        if (loadBytes != null) this.loadBytes = loadBytes;
        if (segmentHeader != null) this.segmentHeader = segmentHeader;
        if (readerAt != null) this.readerAt = readerAt;
        if (_sr != null) this._sr = _sr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function raw():stdgo.Slice<stdgo.GoUInt8> return this.loadBytes.raw();
    @:embedded
    public function readAt(_p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return this.readerAt.readAt(_p, _off);
    public function __copy__() {
        return new Segment(loadBytes, segmentHeader, readerAt, _sr);
    }
}
