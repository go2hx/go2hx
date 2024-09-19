package stdgo._internal.net.http.fcgi;
@:structInit @:using(stdgo._internal.net.http.fcgi.Fcgi_T_conn_static_extension.T_conn_static_extension) class T_conn {
    public var _mutex : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _rwc : stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser = (null : stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser);
    public var _closeErr : stdgo.Error = (null : stdgo.Error);
    public var _closed : Bool = false;
    public var _buf : stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
    public var _h : stdgo._internal.net.http.fcgi.Fcgi_T_header.T_header = ({} : stdgo._internal.net.http.fcgi.Fcgi_T_header.T_header);
    public function new(?_mutex:stdgo._internal.sync.Sync_Mutex.Mutex, ?_rwc:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser, ?_closeErr:stdgo.Error, ?_closed:Bool, ?_buf:stdgo._internal.bytes.Bytes_Buffer.Buffer, ?_h:stdgo._internal.net.http.fcgi.Fcgi_T_header.T_header) {
        if (_mutex != null) this._mutex = _mutex;
        if (_rwc != null) this._rwc = _rwc;
        if (_closeErr != null) this._closeErr = _closeErr;
        if (_closed != null) this._closed = _closed;
        if (_buf != null) this._buf = _buf;
        if (_h != null) this._h = _h;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_conn(_mutex, _rwc, _closeErr, _closed, _buf, _h);
    }
}
