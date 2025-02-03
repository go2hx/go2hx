package stdgo.mime.multipart;
@:structInit @:using(stdgo.mime.multipart.Multipart.T_sectionReadCloser_static_extension) abstract T_sectionReadCloser(stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser.T_sectionReadCloser) from stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser.T_sectionReadCloser to stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser.T_sectionReadCloser {
    public var sectionReader(get, set) : stdgo._internal.io.Io_SectionReader.SectionReader;
    function get_sectionReader():stdgo._internal.io.Io_SectionReader.SectionReader return this.sectionReader;
    function set_sectionReader(v:stdgo._internal.io.Io_SectionReader.SectionReader):stdgo._internal.io.Io_SectionReader.SectionReader {
        this.sectionReader = (v : stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader>);
        return v;
    }
    public var closer(get, set) : stdgo._internal.io.Io_Closer.Closer;
    function get_closer():stdgo._internal.io.Io_Closer.Closer return this.closer;
    function set_closer(v:stdgo._internal.io.Io_Closer.Closer):stdgo._internal.io.Io_Closer.Closer {
        this.closer = v;
        return v;
    }
    public function new(?sectionReader:stdgo._internal.io.Io_SectionReader.SectionReader, ?closer:stdgo._internal.io.Io_Closer.Closer) this = new stdgo._internal.mime.multipart.Multipart_T_sectionReadCloser.T_sectionReadCloser((sectionReader : stdgo.Ref<stdgo._internal.io.Io_SectionReader.SectionReader>), closer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
