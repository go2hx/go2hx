package stdgo._internal.debug.macho;
@:structInit @:using(stdgo._internal.debug.macho.Macho_segment_static_extension.Segment_static_extension) class Segment {
    @:embedded
    public var loadBytes : stdgo._internal.debug.macho.Macho_loadbytes.LoadBytes = (new stdgo._internal.debug.macho.Macho_loadbytes.LoadBytes(0, 0) : stdgo._internal.debug.macho.Macho_loadbytes.LoadBytes);
    @:embedded
    public var segmentHeader : stdgo._internal.debug.macho.Macho_segmentheader.SegmentHeader = ({} : stdgo._internal.debug.macho.Macho_segmentheader.SegmentHeader);
    @:embedded
    public var readerAt : stdgo._internal.io.Io_readerat.ReaderAt = (null : stdgo._internal.io.Io_readerat.ReaderAt);
    public var _sr : stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader> = (null : stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader>);
    public function new(?loadBytes:stdgo._internal.debug.macho.Macho_loadbytes.LoadBytes, ?segmentHeader:stdgo._internal.debug.macho.Macho_segmentheader.SegmentHeader, ?readerAt:stdgo._internal.io.Io_readerat.ReaderAt, ?_sr:stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader>) {
        if (loadBytes != null) this.loadBytes = loadBytes;
        if (segmentHeader != null) this.segmentHeader = segmentHeader;
        if (readerAt != null) this.readerAt = readerAt;
        if (_sr != null) this._sr = _sr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var raw(get, never) : () -> stdgo.Slice<stdgo.GoUInt8>;
    @:embedded
    @:embeddededffieldsffun
    public function get_raw():() -> stdgo.Slice<stdgo.GoUInt8> return @:check31 (this.loadBytes ?? throw "null pointer dereference").raw;
    public var readAt(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt64) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readAt():(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt64) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check31 (this.readerAt ?? throw "null pointer dereference").readAt;
    public function __copy__() {
        return new Segment(loadBytes, segmentHeader, readerAt, _sr);
    }
}
