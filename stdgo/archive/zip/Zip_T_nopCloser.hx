package stdgo.archive.zip;
@:structInit @:using(stdgo.archive.zip.Zip.T_nopCloser_static_extension) abstract T_nopCloser(stdgo._internal.archive.zip.Zip_T_nopCloser.T_nopCloser) from stdgo._internal.archive.zip.Zip_T_nopCloser.T_nopCloser to stdgo._internal.archive.zip.Zip_T_nopCloser.T_nopCloser {
    public var writer(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get_writer():stdgo._internal.io.Io_Writer.Writer return this.writer;
    function set_writer(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this.writer = v;
        return v;
    }
    public function new(?writer:stdgo._internal.io.Io_Writer.Writer) this = new stdgo._internal.archive.zip.Zip_T_nopCloser.T_nopCloser(writer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
