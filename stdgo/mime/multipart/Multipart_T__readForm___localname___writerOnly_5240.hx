package stdgo.mime.multipart;
@:structInit abstract T__readForm___localname___writerOnly_5240(stdgo._internal.mime.multipart.Multipart_T__readForm___localname___writerOnly_5240.T__readForm___localname___writerOnly_5240) from stdgo._internal.mime.multipart.Multipart_T__readForm___localname___writerOnly_5240.T__readForm___localname___writerOnly_5240 to stdgo._internal.mime.multipart.Multipart_T__readForm___localname___writerOnly_5240.T__readForm___localname___writerOnly_5240 {
    public var writer(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get_writer():stdgo._internal.io.Io_Writer.Writer return this.writer;
    function set_writer(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this.writer = v;
        return v;
    }
    public function new(?writer:stdgo._internal.io.Io_Writer.Writer) this = new stdgo._internal.mime.multipart.Multipart_T__readForm___localname___writerOnly_5240.T__readForm___localname___writerOnly_5240(writer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
