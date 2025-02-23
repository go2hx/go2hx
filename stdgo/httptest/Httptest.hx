package stdgo.httptest;
final defaultRemoteAddr : String = stdgo._internal.net.http.httptest.Httptest_defaultremoteaddr.defaultRemoteAddr;
@:dox(hide) class T_closeIdleTransport_static_extension {
    static public function closeIdleConnections(t:stdgo._internal.net.http.httptest.Httptest_t_closeidletransport.T_closeIdleTransport):Void {
        stdgo._internal.net.http.httptest.Httptest_t_closeidletransport_static_extension.T_closeIdleTransport_static_extension.closeIdleConnections(t);
    }
}
@:dox(hide) @:forward abstract T_closeIdleTransport(stdgo._internal.net.http.httptest.Httptest_t_closeidletransport.T_closeIdleTransport) from stdgo._internal.net.http.httptest.Httptest_t_closeidletransport.T_closeIdleTransport to stdgo._internal.net.http.httptest.Httptest_t_closeidletransport.T_closeIdleTransport {
    @:from
    static function fromHaxeInterface(x:{ function closeIdleConnections():Void; }):T_closeIdleTransport {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_closeIdleTransport = { closeIdleConnections : () -> x.closeIdleConnections(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.net.http.httptest.Httptest.ResponseRecorder_static_extension) abstract ResponseRecorder(stdgo._internal.net.http.httptest.Httptest_responserecorder.ResponseRecorder) from stdgo._internal.net.http.httptest.Httptest_responserecorder.ResponseRecorder to stdgo._internal.net.http.httptest.Httptest_responserecorder.ResponseRecorder {
    public var code(get, set) : StdTypes.Int;
    function get_code():StdTypes.Int return this.code;
    function set_code(v:StdTypes.Int):StdTypes.Int {
        this.code = (v : stdgo.GoInt);
        return v;
    }
    public var headerMap(get, set) : stdgo._internal.net.http.Http_header.Header;
    function get_headerMap():stdgo._internal.net.http.Http_header.Header return this.headerMap;
    function set_headerMap(v:stdgo._internal.net.http.Http_header.Header):stdgo._internal.net.http.Http_header.Header {
        this.headerMap = v;
        return v;
    }
    public var body(get, set) : stdgo._internal.bytes.Bytes_buffer.Buffer;
    function get_body():stdgo._internal.bytes.Bytes_buffer.Buffer return this.body;
    function set_body(v:stdgo._internal.bytes.Bytes_buffer.Buffer):stdgo._internal.bytes.Bytes_buffer.Buffer {
        this.body = (v : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        return v;
    }
    public var flushed(get, set) : Bool;
    function get_flushed():Bool return this.flushed;
    function set_flushed(v:Bool):Bool {
        this.flushed = v;
        return v;
    }
    public var _result(get, set) : stdgo._internal.net.http.Http_response.Response;
    function get__result():stdgo._internal.net.http.Http_response.Response return this._result;
    function set__result(v:stdgo._internal.net.http.Http_response.Response):stdgo._internal.net.http.Http_response.Response {
        this._result = (v : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>);
        return v;
    }
    public var _snapHeader(get, set) : stdgo._internal.net.http.Http_header.Header;
    function get__snapHeader():stdgo._internal.net.http.Http_header.Header return this._snapHeader;
    function set__snapHeader(v:stdgo._internal.net.http.Http_header.Header):stdgo._internal.net.http.Http_header.Header {
        this._snapHeader = v;
        return v;
    }
    public var _wroteHeader(get, set) : Bool;
    function get__wroteHeader():Bool return this._wroteHeader;
    function set__wroteHeader(v:Bool):Bool {
        this._wroteHeader = v;
        return v;
    }
    public function new(?code:StdTypes.Int, ?headerMap:stdgo._internal.net.http.Http_header.Header, ?body:stdgo._internal.bytes.Bytes_buffer.Buffer, ?flushed:Bool, ?_result:stdgo._internal.net.http.Http_response.Response, ?_snapHeader:stdgo._internal.net.http.Http_header.Header, ?_wroteHeader:Bool) this = new stdgo._internal.net.http.httptest.Httptest_responserecorder.ResponseRecorder((code : stdgo.GoInt), headerMap, (body : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), flushed, (_result : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>), _snapHeader, _wroteHeader);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.httptest.Httptest.Server_static_extension) abstract Server(stdgo._internal.net.http.httptest.Httptest_server.Server) from stdgo._internal.net.http.httptest.Httptest_server.Server to stdgo._internal.net.http.httptest.Httptest_server.Server {
    public var uRL(get, set) : String;
    function get_uRL():String return this.uRL;
    function set_uRL(v:String):String {
        this.uRL = (v : stdgo.GoString);
        return v;
    }
    public var listener(get, set) : stdgo._internal.net.Net_listener.Listener;
    function get_listener():stdgo._internal.net.Net_listener.Listener return this.listener;
    function set_listener(v:stdgo._internal.net.Net_listener.Listener):stdgo._internal.net.Net_listener.Listener {
        this.listener = v;
        return v;
    }
    public var enableHTTP2(get, set) : Bool;
    function get_enableHTTP2():Bool return this.enableHTTP2;
    function set_enableHTTP2(v:Bool):Bool {
        this.enableHTTP2 = v;
        return v;
    }
    public var tLS(get, set) : stdgo._internal.crypto.tls.Tls_config.Config;
    function get_tLS():stdgo._internal.crypto.tls.Tls_config.Config return this.tLS;
    function set_tLS(v:stdgo._internal.crypto.tls.Tls_config.Config):stdgo._internal.crypto.tls.Tls_config.Config {
        this.tLS = (v : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>);
        return v;
    }
    public var config(get, set) : stdgo._internal.net.http.Http_server.Server;
    function get_config():stdgo._internal.net.http.Http_server.Server return this.config;
    function set_config(v:stdgo._internal.net.http.Http_server.Server):stdgo._internal.net.http.Http_server.Server {
        this.config = (v : stdgo.Ref<stdgo._internal.net.http.Http_server.Server>);
        return v;
    }
    public var _certificate(get, set) : stdgo._internal.crypto.x509.X509_certificate.Certificate;
    function get__certificate():stdgo._internal.crypto.x509.X509_certificate.Certificate return this._certificate;
    function set__certificate(v:stdgo._internal.crypto.x509.X509_certificate.Certificate):stdgo._internal.crypto.x509.X509_certificate.Certificate {
        this._certificate = (v : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>);
        return v;
    }
    public var _wg(get, set) : stdgo._internal.sync.Sync_waitgroup.WaitGroup;
    function get__wg():stdgo._internal.sync.Sync_waitgroup.WaitGroup return this._wg;
    function set__wg(v:stdgo._internal.sync.Sync_waitgroup.WaitGroup):stdgo._internal.sync.Sync_waitgroup.WaitGroup {
        this._wg = v;
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _closed(get, set) : Bool;
    function get__closed():Bool return this._closed;
    function set__closed(v:Bool):Bool {
        this._closed = v;
        return v;
    }
    public var _conns(get, set) : Map<stdgo._internal.net.Net_conn.Conn, stdgo._internal.net.http.Http_connstate.ConnState>;
    function get__conns():Map<stdgo._internal.net.Net_conn.Conn, stdgo._internal.net.http.Http_connstate.ConnState> return {
        final __obj__:Map<stdgo._internal.net.Net_conn.Conn, stdgo._internal.net.http.Http_connstate.ConnState> = [];
        for (key => value in this._conns) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__conns(v:Map<stdgo._internal.net.Net_conn.Conn, stdgo._internal.net.http.Http_connstate.ConnState>):Map<stdgo._internal.net.Net_conn.Conn, stdgo._internal.net.http.Http_connstate.ConnState> {
        this._conns = {
            final __obj__ = new stdgo.GoMap<stdgo._internal.net.Net_conn.Conn, stdgo._internal.net.http.Http_connstate.ConnState>();
            for (key => value in v) {
                __obj__[key] = value;
            };
            __obj__;
        };
        return v;
    }
    public var _client(get, set) : stdgo._internal.net.http.Http_client.Client;
    function get__client():stdgo._internal.net.http.Http_client.Client return this._client;
    function set__client(v:stdgo._internal.net.http.Http_client.Client):stdgo._internal.net.http.Http_client.Client {
        this._client = (v : stdgo.Ref<stdgo._internal.net.http.Http_client.Client>);
        return v;
    }
    public function new(?uRL:String, ?listener:stdgo._internal.net.Net_listener.Listener, ?enableHTTP2:Bool, ?tLS:stdgo._internal.crypto.tls.Tls_config.Config, ?config:stdgo._internal.net.http.Http_server.Server, ?_certificate:stdgo._internal.crypto.x509.X509_certificate.Certificate, ?_wg:stdgo._internal.sync.Sync_waitgroup.WaitGroup, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_closed:Bool, ?_conns:Map<stdgo._internal.net.Net_conn.Conn, stdgo._internal.net.http.Http_connstate.ConnState>, ?_client:stdgo._internal.net.http.Http_client.Client) this = new stdgo._internal.net.http.httptest.Httptest_server.Server(
(uRL : stdgo.GoString),
listener,
enableHTTP2,
(tLS : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>),
(config : stdgo.Ref<stdgo._internal.net.http.Http_server.Server>),
(_certificate : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>),
_wg,
_mu,
_closed,
{
        final __obj__ = new stdgo.GoMap<stdgo._internal.net.Net_conn.Conn, stdgo._internal.net.http.Http_connstate.ConnState>();
        for (key => value in _conns) {
            __obj__[key] = value;
        };
        __obj__;
    },
(_client : stdgo.Ref<stdgo._internal.net.http.Http_client.Client>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.net.http.httptest.Httptest_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.net.http.httptest.Httptest_t__struct_0.T__struct_0;
typedef ResponseRecorderPointer = stdgo._internal.net.http.httptest.Httptest_responserecorderpointer.ResponseRecorderPointer;
class ResponseRecorder_static_extension {
    static public function result(_rw:ResponseRecorder):stdgo._internal.net.http.Http_response.Response {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_responserecorder.ResponseRecorder>);
        return stdgo._internal.net.http.httptest.Httptest_responserecorder_static_extension.ResponseRecorder_static_extension.result(_rw);
    }
    static public function flush(_rw:ResponseRecorder):Void {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_responserecorder.ResponseRecorder>);
        stdgo._internal.net.http.httptest.Httptest_responserecorder_static_extension.ResponseRecorder_static_extension.flush(_rw);
    }
    static public function writeHeader(_rw:ResponseRecorder, _code:StdTypes.Int):Void {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_responserecorder.ResponseRecorder>);
        final _code = (_code : stdgo.GoInt);
        stdgo._internal.net.http.httptest.Httptest_responserecorder_static_extension.ResponseRecorder_static_extension.writeHeader(_rw, _code);
    }
    static public function writeString(_rw:ResponseRecorder, _str:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_responserecorder.ResponseRecorder>);
        final _str = (_str : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.httptest.Httptest_responserecorder_static_extension.ResponseRecorder_static_extension.writeString(_rw, _str);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_rw:ResponseRecorder, _buf:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_responserecorder.ResponseRecorder>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.httptest.Httptest_responserecorder_static_extension.ResponseRecorder_static_extension.write(_rw, _buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _writeHeader(_rw:ResponseRecorder, _b:Array<std.UInt>, _str:String):Void {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_responserecorder.ResponseRecorder>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _str = (_str : stdgo.GoString);
        stdgo._internal.net.http.httptest.Httptest_responserecorder_static_extension.ResponseRecorder_static_extension._writeHeader(_rw, _b, _str);
    }
    static public function header(_rw:ResponseRecorder):stdgo._internal.net.http.Http_header.Header {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_responserecorder.ResponseRecorder>);
        return stdgo._internal.net.http.httptest.Httptest_responserecorder_static_extension.ResponseRecorder_static_extension.header(_rw);
    }
}
typedef ServerPointer = stdgo._internal.net.http.httptest.Httptest_serverpointer.ServerPointer;
class Server_static_extension {
    static public function _closeConnChan(_s:Server, _c:stdgo._internal.net.Net_conn.Conn, _done:stdgo.Chan<stdgo._internal.net.http.httptest.Httptest_t__struct_0.T__struct_0>):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_server.Server>);
        final _done = (_done : stdgo.Chan<stdgo._internal.net.http.httptest.Httptest_t__struct_0.T__struct_0>);
        stdgo._internal.net.http.httptest.Httptest_server_static_extension.Server_static_extension._closeConnChan(_s, _c, _done);
    }
    static public function _closeConn(_s:Server, _c:stdgo._internal.net.Net_conn.Conn):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_server.Server>);
        stdgo._internal.net.http.httptest.Httptest_server_static_extension.Server_static_extension._closeConn(_s, _c);
    }
    static public function _wrap(_s:Server):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_server.Server>);
        stdgo._internal.net.http.httptest.Httptest_server_static_extension.Server_static_extension._wrap(_s);
    }
    static public function _goServe(_s:Server):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_server.Server>);
        stdgo._internal.net.http.httptest.Httptest_server_static_extension.Server_static_extension._goServe(_s);
    }
    static public function client(_s:Server):stdgo._internal.net.http.Http_client.Client {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_server.Server>);
        return stdgo._internal.net.http.httptest.Httptest_server_static_extension.Server_static_extension.client(_s);
    }
    static public function certificate(_s:Server):stdgo._internal.crypto.x509.X509_certificate.Certificate {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_server.Server>);
        return stdgo._internal.net.http.httptest.Httptest_server_static_extension.Server_static_extension.certificate(_s);
    }
    static public function closeClientConnections(_s:Server):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_server.Server>);
        stdgo._internal.net.http.httptest.Httptest_server_static_extension.Server_static_extension.closeClientConnections(_s);
    }
    static public function _logCloseHangDebugInfo(_s:Server):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_server.Server>);
        stdgo._internal.net.http.httptest.Httptest_server_static_extension.Server_static_extension._logCloseHangDebugInfo(_s);
    }
    static public function close(_s:Server):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_server.Server>);
        stdgo._internal.net.http.httptest.Httptest_server_static_extension.Server_static_extension.close(_s);
    }
    static public function startTLS(_s:Server):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_server.Server>);
        stdgo._internal.net.http.httptest.Httptest_server_static_extension.Server_static_extension.startTLS(_s);
    }
    static public function start(_s:Server):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_server.Server>);
        stdgo._internal.net.http.httptest.Httptest_server_static_extension.Server_static_extension.start(_s);
    }
}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.net.http.httptest.Httptest_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
/**
    * Package httptest provides utilities for HTTP testing.
**/
class Httptest {
    /**
        * NewRequest returns a new incoming server Request, suitable
        * for passing to an http.Handler for testing.
        * 
        * The target is the RFC 7230 "request-target": it may be either a
        * path or an absolute URL. If target is an absolute URL, the host name
        * from the URL is used. Otherwise, "example.com" is used.
        * 
        * The TLS field is set to a non-nil dummy value if target has scheme
        * "https".
        * 
        * The Request.Proto is always HTTP/1.1.
        * 
        * An empty method means "GET".
        * 
        * The provided body may be nil. If the body is of type *bytes.Reader,
        * *strings.Reader, or *bytes.Buffer, the Request.ContentLength is
        * set.
        * 
        * NewRequest panics on error for ease of use in testing, where a
        * panic is acceptable.
        * 
        * To generate a client HTTP request instead of a server request, see
        * the NewRequest function in the net/http package.
    **/
    static public inline function newRequest(_method:String, _target:String, _body:stdgo._internal.io.Io_reader.Reader):stdgo._internal.net.http.Http_request.Request {
        final _method = (_method : stdgo.GoString);
        final _target = (_target : stdgo.GoString);
        return stdgo._internal.net.http.httptest.Httptest_newrequest.newRequest(_method, _target, _body);
    }
    /**
        * NewRecorder returns an initialized ResponseRecorder.
    **/
    static public inline function newRecorder():ResponseRecorder {
        return stdgo._internal.net.http.httptest.Httptest_newrecorder.newRecorder();
    }
    /**
        * NewServer starts and returns a new Server.
        * The caller should call Close when finished, to shut it down.
    **/
    static public inline function newServer(_handler:stdgo._internal.net.http.Http_handler.Handler):Server {
        return stdgo._internal.net.http.httptest.Httptest_newserver.newServer(_handler);
    }
    /**
        * NewUnstartedServer returns a new Server but doesn't start it.
        * 
        * After changing its configuration, the caller should call Start or
        * StartTLS.
        * 
        * The caller should call Close when finished, to shut it down.
    **/
    static public inline function newUnstartedServer(_handler:stdgo._internal.net.http.Http_handler.Handler):Server {
        return stdgo._internal.net.http.httptest.Httptest_newunstartedserver.newUnstartedServer(_handler);
    }
    /**
        * NewTLSServer starts and returns a new Server using TLS.
        * The caller should call Close when finished, to shut it down.
    **/
    static public inline function newTLSServer(_handler:stdgo._internal.net.http.Http_handler.Handler):Server {
        return stdgo._internal.net.http.httptest.Httptest_newtlsserver.newTLSServer(_handler);
    }
}
