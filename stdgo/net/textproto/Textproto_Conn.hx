package stdgo.net.textproto;
@:structInit @:using(stdgo.net.textproto.Textproto.Conn_static_extension) abstract Conn(stdgo._internal.net.textproto.Textproto_Conn.Conn) from stdgo._internal.net.textproto.Textproto_Conn.Conn to stdgo._internal.net.textproto.Textproto_Conn.Conn {
    public var reader(get, set) : Reader;
    function get_reader():Reader return this.reader;
    function set_reader(v:Reader):Reader {
        this.reader = v;
        return v;
    }
    public var writer(get, set) : Writer;
    function get_writer():Writer return this.writer;
    function set_writer(v:Writer):Writer {
        this.writer = v;
        return v;
    }
    public var pipeline(get, set) : Pipeline;
    function get_pipeline():Pipeline return this.pipeline;
    function set_pipeline(v:Pipeline):Pipeline {
        this.pipeline = v;
        return v;
    }
    public var _conn(get, set) : stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser;
    function get__conn():stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser return this._conn;
    function set__conn(v:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser {
        this._conn = v;
        return v;
    }
    public function new(?reader:Reader, ?writer:Writer, ?pipeline:Pipeline, ?_conn:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser) this = new stdgo._internal.net.textproto.Textproto_Conn.Conn(reader, writer, pipeline, _conn);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
