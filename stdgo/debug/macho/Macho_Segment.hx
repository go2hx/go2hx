package stdgo.debug.macho;
@:structInit @:using(stdgo.debug.macho.Macho.Segment_static_extension) abstract Segment(stdgo._internal.debug.macho.Macho_Segment.Segment) from stdgo._internal.debug.macho.Macho_Segment.Segment to stdgo._internal.debug.macho.Macho_Segment.Segment {
    public var loadBytes(get, set) : LoadBytes;
    function get_loadBytes():LoadBytes return this.loadBytes;
    function set_loadBytes(v:LoadBytes):LoadBytes {
        this.loadBytes = v;
        return v;
    }
    public var segmentHeader(get, set) : SegmentHeader;
    function get_segmentHeader():SegmentHeader return this.segmentHeader;
    function set_segmentHeader(v:SegmentHeader):SegmentHeader {
        this.segmentHeader = v;
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
    public function new(?loadBytes:LoadBytes, ?segmentHeader:SegmentHeader, ?readerAt:stdgo._internal.io.Io_ReaderAt.ReaderAt, ?_sr:stdgo._internal.io.Io_SectionReader.SectionReader) this = new stdgo._internal.debug.macho.Macho_Segment.Segment(loadBytes, segmentHeader, readerAt, (_sr : stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
