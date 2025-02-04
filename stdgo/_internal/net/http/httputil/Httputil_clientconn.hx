package stdgo._internal.net.http.httputil;
@:structInit @:using(stdgo._internal.net.http.httputil.Httputil_clientconn_static_extension.ClientConn_static_extension) class ClientConn {
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _c : stdgo._internal.net.Net_conn.Conn = (null : stdgo._internal.net.Net_conn.Conn);
    public var _r : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
    public var _re : stdgo.Error = (null : stdgo.Error);
    public var _we : stdgo.Error = (null : stdgo.Error);
    public var _lastbody : stdgo._internal.io.Io_readcloser.ReadCloser = (null : stdgo._internal.io.Io_readcloser.ReadCloser);
    public var _nread : stdgo.GoInt = 0;
    public var _nwritten : stdgo.GoInt = 0;
    public var _pipereq : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, stdgo.GoUInt> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, stdgo.GoUInt>);
    public var _pipe : stdgo._internal.net.textproto.Textproto_pipeline.Pipeline = ({} : stdgo._internal.net.textproto.Textproto_pipeline.Pipeline);
    public var _writeReq : (stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, stdgo._internal.io.Io_writer.Writer) -> stdgo.Error = null;
    public function new(?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_c:stdgo._internal.net.Net_conn.Conn, ?_r:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>, ?_re:stdgo.Error, ?_we:stdgo.Error, ?_lastbody:stdgo._internal.io.Io_readcloser.ReadCloser, ?_nread:stdgo.GoInt, ?_nwritten:stdgo.GoInt, ?_pipereq:stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, stdgo.GoUInt>, ?_pipe:stdgo._internal.net.textproto.Textproto_pipeline.Pipeline, ?_writeReq:(stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, stdgo._internal.io.Io_writer.Writer) -> stdgo.Error) {
        if (_mu != null) this._mu = _mu;
        if (_c != null) this._c = _c;
        if (_r != null) this._r = _r;
        if (_re != null) this._re = _re;
        if (_we != null) this._we = _we;
        if (_lastbody != null) this._lastbody = _lastbody;
        if (_nread != null) this._nread = _nread;
        if (_nwritten != null) this._nwritten = _nwritten;
        if (_pipereq != null) this._pipereq = _pipereq;
        if (_pipe != null) this._pipe = _pipe;
        if (_writeReq != null) this._writeReq = _writeReq;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ClientConn(
_mu,
_c,
_r,
_re,
_we,
_lastbody,
_nread,
_nwritten,
_pipereq,
_pipe,
_writeReq);
    }
}
