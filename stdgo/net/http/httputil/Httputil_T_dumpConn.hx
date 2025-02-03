package stdgo.net.http.httputil;
@:structInit @:using(stdgo.net.http.httputil.Httputil.T_dumpConn_static_extension) abstract T_dumpConn(stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn) from stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn to stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn {
    public var writer(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get_writer():stdgo._internal.io.Io_Writer.Writer return this.writer;
    function set_writer(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this.writer = v;
        return v;
    }
    public var reader(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get_reader():stdgo._internal.io.Io_Reader.Reader return this.reader;
    function set_reader(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this.reader = v;
        return v;
    }
    public function new(?writer:stdgo._internal.io.Io_Writer.Writer, ?reader:stdgo._internal.io.Io_Reader.Reader) this = new stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn(writer, reader);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
