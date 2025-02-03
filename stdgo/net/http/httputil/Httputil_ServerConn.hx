package stdgo.net.http.httputil;
@:structInit @:using(stdgo.net.http.httputil.Httputil.ServerConn_static_extension) abstract ServerConn(stdgo._internal.net.http.httputil.Httputil_ServerConn.ServerConn) from stdgo._internal.net.http.httputil.Httputil_ServerConn.ServerConn to stdgo._internal.net.http.httputil.Httputil_ServerConn.ServerConn {
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _c(get, set) : stdgo._internal.net.Net_Conn.Conn;
    function get__c():stdgo._internal.net.Net_Conn.Conn return this._c;
    function set__c(v:stdgo._internal.net.Net_Conn.Conn):stdgo._internal.net.Net_Conn.Conn {
        this._c = v;
        return v;
    }
    public var _r(get, set) : stdgo._internal.bufio.Bufio_Reader.Reader;
    function get__r():stdgo._internal.bufio.Bufio_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.bufio.Bufio_Reader.Reader):stdgo._internal.bufio.Bufio_Reader.Reader {
        this._r = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
        return v;
    }
    public var _re(get, set) : stdgo.Error;
    function get__re():stdgo.Error return this._re;
    function set__re(v:stdgo.Error):stdgo.Error {
        this._re = (v : stdgo.Error);
        return v;
    }
    public var _we(get, set) : stdgo.Error;
    function get__we():stdgo.Error return this._we;
    function set__we(v:stdgo.Error):stdgo.Error {
        this._we = (v : stdgo.Error);
        return v;
    }
    public var _lastbody(get, set) : stdgo._internal.io.Io_ReadCloser.ReadCloser;
    function get__lastbody():stdgo._internal.io.Io_ReadCloser.ReadCloser return this._lastbody;
    function set__lastbody(v:stdgo._internal.io.Io_ReadCloser.ReadCloser):stdgo._internal.io.Io_ReadCloser.ReadCloser {
        this._lastbody = v;
        return v;
    }
    public var _nread(get, set) : StdTypes.Int;
    function get__nread():StdTypes.Int return this._nread;
    function set__nread(v:StdTypes.Int):StdTypes.Int {
        this._nread = (v : stdgo.GoInt);
        return v;
    }
    public var _nwritten(get, set) : StdTypes.Int;
    function get__nwritten():StdTypes.Int return this._nwritten;
    function set__nwritten(v:StdTypes.Int):StdTypes.Int {
        this._nwritten = (v : stdgo.GoInt);
        return v;
    }
    public var _pipereq(get, set) : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.GoUInt>;
    function get__pipereq():stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.GoUInt> return this._pipereq;
    function set__pipereq(v:stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.GoUInt>):stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.GoUInt> {
        this._pipereq = (v : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.GoUInt>);
        return v;
    }
    public var _pipe(get, set) : stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline;
    function get__pipe():stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline return this._pipe;
    function set__pipe(v:stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline):stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline {
        this._pipe = v;
        return v;
    }
    public function new(?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_c:stdgo._internal.net.Net_Conn.Conn, ?_r:stdgo._internal.bufio.Bufio_Reader.Reader, ?_re:stdgo.Error, ?_we:stdgo.Error, ?_lastbody:stdgo._internal.io.Io_ReadCloser.ReadCloser, ?_nread:StdTypes.Int, ?_nwritten:StdTypes.Int, ?_pipereq:stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.GoUInt>, ?_pipe:stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline) this = new stdgo._internal.net.http.httputil.Httputil_ServerConn.ServerConn(_mu, _c, (_r : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>), (_re : stdgo.Error), (_we : stdgo.Error), _lastbody, (_nread : stdgo.GoInt), (_nwritten : stdgo.GoInt), (_pipereq : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.GoUInt>), _pipe);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
