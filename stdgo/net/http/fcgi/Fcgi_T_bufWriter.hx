package stdgo.net.http.fcgi;
@:structInit @:using(stdgo.net.http.fcgi.Fcgi.T_bufWriter_static_extension) abstract T_bufWriter(stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter) from stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter to stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter {
    public var _closer(get, set) : stdgo._internal.io.Io_Closer.Closer;
    function get__closer():stdgo._internal.io.Io_Closer.Closer return this._closer;
    function set__closer(v:stdgo._internal.io.Io_Closer.Closer):stdgo._internal.io.Io_Closer.Closer {
        this._closer = v;
        return v;
    }
    public var writer(get, set) : stdgo._internal.bufio.Bufio_Writer.Writer;
    function get_writer():stdgo._internal.bufio.Bufio_Writer.Writer return this.writer;
    function set_writer(v:stdgo._internal.bufio.Bufio_Writer.Writer):stdgo._internal.bufio.Bufio_Writer.Writer {
        this.writer = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
        return v;
    }
    public function new(?_closer:stdgo._internal.io.Io_Closer.Closer, ?writer:stdgo._internal.bufio.Bufio_Writer.Writer) this = new stdgo._internal.net.http.fcgi.Fcgi_T_bufWriter.T_bufWriter(_closer, (writer : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
