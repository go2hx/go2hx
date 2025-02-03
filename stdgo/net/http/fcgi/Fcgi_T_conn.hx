package stdgo.net.http.fcgi;
@:structInit @:using(stdgo.net.http.fcgi.Fcgi.T_conn_static_extension) abstract T_conn(stdgo._internal.net.http.fcgi.Fcgi_T_conn.T_conn) from stdgo._internal.net.http.fcgi.Fcgi_T_conn.T_conn to stdgo._internal.net.http.fcgi.Fcgi_T_conn.T_conn {
    public var _mutex(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mutex():stdgo._internal.sync.Sync_Mutex.Mutex return this._mutex;
    function set__mutex(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mutex = v;
        return v;
    }
    public var _rwc(get, set) : stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser;
    function get__rwc():stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser return this._rwc;
    function set__rwc(v:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser {
        this._rwc = v;
        return v;
    }
    public var _closeErr(get, set) : stdgo.Error;
    function get__closeErr():stdgo.Error return this._closeErr;
    function set__closeErr(v:stdgo.Error):stdgo.Error {
        this._closeErr = (v : stdgo.Error);
        return v;
    }
    public var _closed(get, set) : Bool;
    function get__closed():Bool return this._closed;
    function set__closed(v:Bool):Bool {
        this._closed = v;
        return v;
    }
    public var _buf(get, set) : stdgo._internal.bytes.Bytes_Buffer.Buffer;
    function get__buf():stdgo._internal.bytes.Bytes_Buffer.Buffer return this._buf;
    function set__buf(v:stdgo._internal.bytes.Bytes_Buffer.Buffer):stdgo._internal.bytes.Bytes_Buffer.Buffer {
        this._buf = v;
        return v;
    }
    public var _h(get, set) : T_header;
    function get__h():T_header return this._h;
    function set__h(v:T_header):T_header {
        this._h = v;
        return v;
    }
    public function new(?_mutex:stdgo._internal.sync.Sync_Mutex.Mutex, ?_rwc:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser, ?_closeErr:stdgo.Error, ?_closed:Bool, ?_buf:stdgo._internal.bytes.Bytes_Buffer.Buffer, ?_h:T_header) this = new stdgo._internal.net.http.fcgi.Fcgi_T_conn.T_conn(_mutex, _rwc, (_closeErr : stdgo.Error), _closed, _buf, _h);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
