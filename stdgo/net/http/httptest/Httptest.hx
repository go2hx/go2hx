package stdgo.net.http.httptest;
final defaultRemoteAddr : String = stdgo._internal.net.http.httptest.Httptest_defaultRemoteAddr.defaultRemoteAddr;
class T_closeIdleTransport_static_extension {
    static public function closeIdleConnections(t:stdgo._internal.net.http.httptest.Httptest_T_closeIdleTransport.T_closeIdleTransport):Void {
        stdgo._internal.net.http.httptest.Httptest_T_closeIdleTransport_static_extension.T_closeIdleTransport_static_extension.closeIdleConnections(t);
    }
}
typedef T_closeIdleTransport = stdgo._internal.net.http.httptest.Httptest_T_closeIdleTransport.T_closeIdleTransport;
@:structInit @:using(stdgo.net.http.httptest.Httptest.ResponseRecorder_static_extension) abstract ResponseRecorder(stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder) from stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder to stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder {
    public var code(get, set) : StdTypes.Int;
    function get_code():StdTypes.Int return this.code;
    function set_code(v:StdTypes.Int):StdTypes.Int {
        this.code = (v : stdgo.GoInt);
        return v;
    }
    public var headerMap(get, set) : stdgo._internal.net.http.Http_Header.Header;
    function get_headerMap():stdgo._internal.net.http.Http_Header.Header return this.headerMap;
    function set_headerMap(v:stdgo._internal.net.http.Http_Header.Header):stdgo._internal.net.http.Http_Header.Header {
        this.headerMap = v;
        return v;
    }
    public var body(get, set) : stdgo._internal.bytes.Bytes_Buffer.Buffer;
    function get_body():stdgo._internal.bytes.Bytes_Buffer.Buffer return this.body;
    function set_body(v:stdgo._internal.bytes.Bytes_Buffer.Buffer):stdgo._internal.bytes.Bytes_Buffer.Buffer {
        this.body = (v : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        return v;
    }
    public var flushed(get, set) : Bool;
    function get_flushed():Bool return this.flushed;
    function set_flushed(v:Bool):Bool {
        this.flushed = v;
        return v;
    }
    public var _result(get, set) : stdgo._internal.net.http.Http_Response.Response;
    function get__result():stdgo._internal.net.http.Http_Response.Response return this._result;
    function set__result(v:stdgo._internal.net.http.Http_Response.Response):stdgo._internal.net.http.Http_Response.Response {
        this._result = (v : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>);
        return v;
    }
    public var _snapHeader(get, set) : stdgo._internal.net.http.Http_Header.Header;
    function get__snapHeader():stdgo._internal.net.http.Http_Header.Header return this._snapHeader;
    function set__snapHeader(v:stdgo._internal.net.http.Http_Header.Header):stdgo._internal.net.http.Http_Header.Header {
        this._snapHeader = v;
        return v;
    }
    public var _wroteHeader(get, set) : Bool;
    function get__wroteHeader():Bool return this._wroteHeader;
    function set__wroteHeader(v:Bool):Bool {
        this._wroteHeader = v;
        return v;
    }
    public function new(?code:StdTypes.Int, ?headerMap:stdgo._internal.net.http.Http_Header.Header, ?body:stdgo._internal.bytes.Bytes_Buffer.Buffer, ?flushed:Bool, ?_result:stdgo._internal.net.http.Http_Response.Response, ?_snapHeader:stdgo._internal.net.http.Http_Header.Header, ?_wroteHeader:Bool) this = new stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder((code : stdgo.GoInt), headerMap, (body : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>), flushed, (_result : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>), _snapHeader, _wroteHeader);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.httptest.Httptest.Server_static_extension) abstract Server(stdgo._internal.net.http.httptest.Httptest_Server.Server) from stdgo._internal.net.http.httptest.Httptest_Server.Server to stdgo._internal.net.http.httptest.Httptest_Server.Server {
    public var uRL(get, set) : String;
    function get_uRL():String return this.uRL;
    function set_uRL(v:String):String {
        this.uRL = (v : stdgo.GoString);
        return v;
    }
    public var listener(get, set) : stdgo._internal.net.Net_Listener.Listener;
    function get_listener():stdgo._internal.net.Net_Listener.Listener return this.listener;
    function set_listener(v:stdgo._internal.net.Net_Listener.Listener):stdgo._internal.net.Net_Listener.Listener {
        this.listener = v;
        return v;
    }
    public var enableHTTP2(get, set) : Bool;
    function get_enableHTTP2():Bool return this.enableHTTP2;
    function set_enableHTTP2(v:Bool):Bool {
        this.enableHTTP2 = v;
        return v;
    }
    public var tLS(get, set) : stdgo._internal.crypto.tls.Tls_Config.Config;
    function get_tLS():stdgo._internal.crypto.tls.Tls_Config.Config return this.tLS;
    function set_tLS(v:stdgo._internal.crypto.tls.Tls_Config.Config):stdgo._internal.crypto.tls.Tls_Config.Config {
        this.tLS = (v : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        return v;
    }
    public var config(get, set) : stdgo._internal.net.http.Http_Server.Server;
    function get_config():stdgo._internal.net.http.Http_Server.Server return this.config;
    function set_config(v:stdgo._internal.net.http.Http_Server.Server):stdgo._internal.net.http.Http_Server.Server {
        this.config = (v : stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>);
        return v;
    }
    public var _certificate(get, set) : stdgo._internal.crypto.x509.X509_Certificate.Certificate;
    function get__certificate():stdgo._internal.crypto.x509.X509_Certificate.Certificate return this._certificate;
    function set__certificate(v:stdgo._internal.crypto.x509.X509_Certificate.Certificate):stdgo._internal.crypto.x509.X509_Certificate.Certificate {
        this._certificate = (v : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        return v;
    }
    public var _wg(get, set) : stdgo._internal.sync.Sync_WaitGroup.WaitGroup;
    function get__wg():stdgo._internal.sync.Sync_WaitGroup.WaitGroup return this._wg;
    function set__wg(v:stdgo._internal.sync.Sync_WaitGroup.WaitGroup):stdgo._internal.sync.Sync_WaitGroup.WaitGroup {
        this._wg = v;
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _closed(get, set) : Bool;
    function get__closed():Bool return this._closed;
    function set__closed(v:Bool):Bool {
        this._closed = v;
        return v;
    }
    public var _conns(get, set) : stdgo.GoMap<stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState>;
    function get__conns():stdgo.GoMap<stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState> return this._conns;
    function set__conns(v:stdgo.GoMap<stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState>):stdgo.GoMap<stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState> {
        this._conns = (v : stdgo.GoMap<stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState>);
        return v;
    }
    public var _client(get, set) : stdgo._internal.net.http.Http_Client.Client;
    function get__client():stdgo._internal.net.http.Http_Client.Client return this._client;
    function set__client(v:stdgo._internal.net.http.Http_Client.Client):stdgo._internal.net.http.Http_Client.Client {
        this._client = (v : stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>);
        return v;
    }
    public function new(?uRL:String, ?listener:stdgo._internal.net.Net_Listener.Listener, ?enableHTTP2:Bool, ?tLS:stdgo._internal.crypto.tls.Tls_Config.Config, ?config:stdgo._internal.net.http.Http_Server.Server, ?_certificate:stdgo._internal.crypto.x509.X509_Certificate.Certificate, ?_wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_closed:Bool, ?_conns:stdgo.GoMap<stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState>, ?_client:stdgo._internal.net.http.Http_Client.Client) this = new stdgo._internal.net.http.httptest.Httptest_Server.Server(
(uRL : stdgo.GoString),
listener,
enableHTTP2,
(tLS : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>),
(config : stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>),
(_certificate : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>),
_wg,
_mu,
_closed,
(_conns : stdgo.GoMap<stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState>),
(_client : stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T__struct_0Pointer = stdgo._internal.net.http.httptest.Httptest_T__struct_0Pointer.T__struct_0Pointer;
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.net.http.httptest.Httptest_T__struct_0.T__struct_0;
typedef ResponseRecorderPointer = stdgo._internal.net.http.httptest.Httptest_ResponseRecorderPointer.ResponseRecorderPointer;
class ResponseRecorder_static_extension {
    static public function result(_rw:ResponseRecorder):stdgo._internal.net.http.Http_Response.Response {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder>);
        return stdgo._internal.net.http.httptest.Httptest_ResponseRecorder_static_extension.ResponseRecorder_static_extension.result(_rw);
    }
    static public function flush(_rw:ResponseRecorder):Void {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder>);
        stdgo._internal.net.http.httptest.Httptest_ResponseRecorder_static_extension.ResponseRecorder_static_extension.flush(_rw);
    }
    static public function writeHeader(_rw:ResponseRecorder, _code:StdTypes.Int):Void {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder>);
        final _code = (_code : stdgo.GoInt);
        stdgo._internal.net.http.httptest.Httptest_ResponseRecorder_static_extension.ResponseRecorder_static_extension.writeHeader(_rw, _code);
    }
    static public function writeString(_rw:ResponseRecorder, _str:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder>);
        final _str = (_str : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.httptest.Httptest_ResponseRecorder_static_extension.ResponseRecorder_static_extension.writeString(_rw, _str);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_rw:ResponseRecorder, _buf:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.httptest.Httptest_ResponseRecorder_static_extension.ResponseRecorder_static_extension.write(_rw, _buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _writeHeader(_rw:ResponseRecorder, _b:Array<std.UInt>, _str:String):Void {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _str = (_str : stdgo.GoString);
        stdgo._internal.net.http.httptest.Httptest_ResponseRecorder_static_extension.ResponseRecorder_static_extension._writeHeader(_rw, _b, _str);
    }
    static public function header(_rw:ResponseRecorder):stdgo._internal.net.http.Http_Header.Header {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder>);
        return stdgo._internal.net.http.httptest.Httptest_ResponseRecorder_static_extension.ResponseRecorder_static_extension.header(_rw);
    }
}
typedef ServerPointer = stdgo._internal.net.http.httptest.Httptest_ServerPointer.ServerPointer;
class Server_static_extension {
    static public function _closeConnChan(_s:Server, _c:stdgo._internal.net.Net_Conn.Conn, _done:stdgo.Chan<stdgo._internal.net.http.httptest.Httptest_T__struct_0.T__struct_0>):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>);
        final _done = (_done : stdgo.Chan<stdgo._internal.net.http.httptest.Httptest_T__struct_0.T__struct_0>);
        stdgo._internal.net.http.httptest.Httptest_Server_static_extension.Server_static_extension._closeConnChan(_s, _c, _done);
    }
    static public function _closeConn(_s:Server, _c:stdgo._internal.net.Net_Conn.Conn):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>);
        stdgo._internal.net.http.httptest.Httptest_Server_static_extension.Server_static_extension._closeConn(_s, _c);
    }
    static public function _wrap(_s:Server):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>);
        stdgo._internal.net.http.httptest.Httptest_Server_static_extension.Server_static_extension._wrap(_s);
    }
    static public function _goServe(_s:Server):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>);
        stdgo._internal.net.http.httptest.Httptest_Server_static_extension.Server_static_extension._goServe(_s);
    }
    static public function client(_s:Server):stdgo._internal.net.http.Http_Client.Client {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>);
        return stdgo._internal.net.http.httptest.Httptest_Server_static_extension.Server_static_extension.client(_s);
    }
    static public function certificate(_s:Server):stdgo._internal.crypto.x509.X509_Certificate.Certificate {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>);
        return stdgo._internal.net.http.httptest.Httptest_Server_static_extension.Server_static_extension.certificate(_s);
    }
    static public function closeClientConnections(_s:Server):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>);
        stdgo._internal.net.http.httptest.Httptest_Server_static_extension.Server_static_extension.closeClientConnections(_s);
    }
    static public function _logCloseHangDebugInfo(_s:Server):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>);
        stdgo._internal.net.http.httptest.Httptest_Server_static_extension.Server_static_extension._logCloseHangDebugInfo(_s);
    }
    static public function close(_s:Server):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>);
        stdgo._internal.net.http.httptest.Httptest_Server_static_extension.Server_static_extension.close(_s);
    }
    static public function startTLS(_s:Server):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>);
        stdgo._internal.net.http.httptest.Httptest_Server_static_extension.Server_static_extension.startTLS(_s);
    }
    static public function start(_s:Server):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_Server.Server>);
        stdgo._internal.net.http.httptest.Httptest_Server_static_extension.Server_static_extension.start(_s);
    }
}
typedef T__struct_0PointerPointer = stdgo._internal.net.http.httptest.Httptest_T__struct_0PointerPointer.T__struct_0PointerPointer;
class T__struct_0Pointer_static_extension {

}
/**
    Package httptest provides utilities for HTTP testing.
**/
class Httptest {
    /**
        NewRequest returns a new incoming server Request, suitable
        for passing to an http.Handler for testing.
        
        The target is the RFC 7230 "request-target": it may be either a
        path or an absolute URL. If target is an absolute URL, the host name
        from the URL is used. Otherwise, "example.com" is used.
        
        The TLS field is set to a non-nil dummy value if target has scheme
        "https".
        
        The Request.Proto is always HTTP/1.1.
        
        An empty method means "GET".
        
        The provided body may be nil. If the body is of type *bytes.Reader,
        *strings.Reader, or *bytes.Buffer, the Request.ContentLength is
        set.
        
        NewRequest panics on error for ease of use in testing, where a
        panic is acceptable.
        
        To generate a client HTTP request instead of a server request, see
        the NewRequest function in the net/http package.
    **/
    static public inline function newRequest(_method:String, _target:String, _body:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.net.http.Http_Request.Request {
        final _method = (_method : stdgo.GoString);
        final _target = (_target : stdgo.GoString);
        return stdgo._internal.net.http.httptest.Httptest_newRequest.newRequest(_method, _target, _body);
    }
    /**
        NewRecorder returns an initialized ResponseRecorder.
    **/
    static public inline function newRecorder():ResponseRecorder {
        return stdgo._internal.net.http.httptest.Httptest_newRecorder.newRecorder();
    }
    /**
        NewServer starts and returns a new Server.
        The caller should call Close when finished, to shut it down.
    **/
    static public inline function newServer(_handler:stdgo._internal.net.http.Http_Handler.Handler):Server {
        return stdgo._internal.net.http.httptest.Httptest_newServer.newServer(_handler);
    }
    /**
        NewUnstartedServer returns a new Server but doesn't start it.
        
        After changing its configuration, the caller should call Start or
        StartTLS.
        
        The caller should call Close when finished, to shut it down.
    **/
    static public inline function newUnstartedServer(_handler:stdgo._internal.net.http.Http_Handler.Handler):Server {
        return stdgo._internal.net.http.httptest.Httptest_newUnstartedServer.newUnstartedServer(_handler);
    }
    /**
        NewTLSServer starts and returns a new Server using TLS.
        The caller should call Close when finished, to shut it down.
    **/
    static public inline function newTLSServer(_handler:stdgo._internal.net.http.Http_Handler.Handler):Server {
        return stdgo._internal.net.http.httptest.Httptest_newTLSServer.newTLSServer(_handler);
    }
}
