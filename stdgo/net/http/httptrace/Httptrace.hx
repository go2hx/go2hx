package stdgo.net.http.httptrace;
@:structInit @:using(stdgo.net.http.httptrace.Httptrace.T_clientEventContextKey_static_extension) abstract T_clientEventContextKey(stdgo._internal.net.http.httptrace.Httptrace_T_clientEventContextKey.T_clientEventContextKey) from stdgo._internal.net.http.httptrace.Httptrace_T_clientEventContextKey.T_clientEventContextKey to stdgo._internal.net.http.httptrace.Httptrace_T_clientEventContextKey.T_clientEventContextKey {
    public function new() this = new stdgo._internal.net.http.httptrace.Httptrace_T_clientEventContextKey.T_clientEventContextKey();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.httptrace.Httptrace.ClientTrace_static_extension) abstract ClientTrace(stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace) from stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace to stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace {
    public var getConn(get, set) : stdgo.GoString -> Void;
    function get_getConn():stdgo.GoString -> Void return _0 -> this.getConn(_0);
    function set_getConn(v:stdgo.GoString -> Void):stdgo.GoString -> Void {
        this.getConn = v;
        return v;
    }
    public var gotConn(get, set) : stdgo._internal.net.http.httptrace.Httptrace_gotconninfo.GotConnInfo -> Void;
    function get_gotConn():stdgo._internal.net.http.httptrace.Httptrace_gotconninfo.GotConnInfo -> Void return _0 -> this.gotConn(_0);
    function set_gotConn(v:stdgo._internal.net.http.httptrace.Httptrace_gotconninfo.GotConnInfo -> Void):stdgo._internal.net.http.httptrace.Httptrace_gotconninfo.GotConnInfo -> Void {
        this.gotConn = v;
        return v;
    }
    public var putIdleConn(get, set) : stdgo.Error -> Void;
    function get_putIdleConn():stdgo.Error -> Void return _0 -> this.putIdleConn(_0);
    function set_putIdleConn(v:stdgo.Error -> Void):stdgo.Error -> Void {
        this.putIdleConn = v;
        return v;
    }
    public var gotFirstResponseByte(get, set) : () -> Void;
    function get_gotFirstResponseByte():() -> Void return () -> this.gotFirstResponseByte();
    function set_gotFirstResponseByte(v:() -> Void):() -> Void {
        this.gotFirstResponseByte = v;
        return v;
    }
    public var got100Continue(get, set) : () -> Void;
    function get_got100Continue():() -> Void return () -> this.got100Continue();
    function set_got100Continue(v:() -> Void):() -> Void {
        this.got100Continue = v;
        return v;
    }
    public var got1xxResponse(get, set) : (stdgo.GoInt, stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader) -> stdgo.Error;
    function get_got1xxResponse():(stdgo.GoInt, stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader) -> stdgo.Error return (_0, _1) -> this.got1xxResponse(_0, _1);
    function set_got1xxResponse(v:(stdgo.GoInt, stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader) -> stdgo.Error):(stdgo.GoInt, stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader) -> stdgo.Error {
        this.got1xxResponse = v;
        return v;
    }
    public var dNSStart(get, set) : stdgo._internal.net.http.httptrace.Httptrace_dnsstartinfo.DNSStartInfo -> Void;
    function get_dNSStart():stdgo._internal.net.http.httptrace.Httptrace_dnsstartinfo.DNSStartInfo -> Void return _0 -> this.dNSStart(_0);
    function set_dNSStart(v:stdgo._internal.net.http.httptrace.Httptrace_dnsstartinfo.DNSStartInfo -> Void):stdgo._internal.net.http.httptrace.Httptrace_dnsstartinfo.DNSStartInfo -> Void {
        this.dNSStart = v;
        return v;
    }
    public var dNSDone(get, set) : stdgo._internal.net.http.httptrace.Httptrace_dnsdoneinfo.DNSDoneInfo -> Void;
    function get_dNSDone():stdgo._internal.net.http.httptrace.Httptrace_dnsdoneinfo.DNSDoneInfo -> Void return _0 -> this.dNSDone(_0);
    function set_dNSDone(v:stdgo._internal.net.http.httptrace.Httptrace_dnsdoneinfo.DNSDoneInfo -> Void):stdgo._internal.net.http.httptrace.Httptrace_dnsdoneinfo.DNSDoneInfo -> Void {
        this.dNSDone = v;
        return v;
    }
    public var connectStart(get, set) : (stdgo.GoString, stdgo.GoString) -> Void;
    function get_connectStart():(stdgo.GoString, stdgo.GoString) -> Void return (_0, _1) -> this.connectStart(_0, _1);
    function set_connectStart(v:(stdgo.GoString, stdgo.GoString) -> Void):(stdgo.GoString, stdgo.GoString) -> Void {
        this.connectStart = v;
        return v;
    }
    public var connectDone(get, set) : (stdgo.GoString, stdgo.GoString, stdgo.Error) -> Void;
    function get_connectDone():(stdgo.GoString, stdgo.GoString, stdgo.Error) -> Void return (_0, _1, _2) -> this.connectDone(_0, _1, _2);
    function set_connectDone(v:(stdgo.GoString, stdgo.GoString, stdgo.Error) -> Void):(stdgo.GoString, stdgo.GoString, stdgo.Error) -> Void {
        this.connectDone = v;
        return v;
    }
    public var tLSHandshakeStart(get, set) : () -> Void;
    function get_tLSHandshakeStart():() -> Void return () -> this.tLSHandshakeStart();
    function set_tLSHandshakeStart(v:() -> Void):() -> Void {
        this.tLSHandshakeStart = v;
        return v;
    }
    public var tLSHandshakeDone(get, set) : (stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState, stdgo.Error) -> Void;
    function get_tLSHandshakeDone():(stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState, stdgo.Error) -> Void return (_0, _1) -> this.tLSHandshakeDone(_0, _1);
    function set_tLSHandshakeDone(v:(stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState, stdgo.Error) -> Void):(stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState, stdgo.Error) -> Void {
        this.tLSHandshakeDone = v;
        return v;
    }
    public var wroteHeaderField(get, set) : (stdgo.GoString, stdgo.Slice<stdgo.GoString>) -> Void;
    function get_wroteHeaderField():(stdgo.GoString, stdgo.Slice<stdgo.GoString>) -> Void return (_0, _1) -> this.wroteHeaderField(_0, [for (i in _1) i]);
    function set_wroteHeaderField(v:(stdgo.GoString, stdgo.Slice<stdgo.GoString>) -> Void):(stdgo.GoString, stdgo.Slice<stdgo.GoString>) -> Void {
        this.wroteHeaderField = v;
        return v;
    }
    public var wroteHeaders(get, set) : () -> Void;
    function get_wroteHeaders():() -> Void return () -> this.wroteHeaders();
    function set_wroteHeaders(v:() -> Void):() -> Void {
        this.wroteHeaders = v;
        return v;
    }
    public var wait100Continue(get, set) : () -> Void;
    function get_wait100Continue():() -> Void return () -> this.wait100Continue();
    function set_wait100Continue(v:() -> Void):() -> Void {
        this.wait100Continue = v;
        return v;
    }
    public var wroteRequest(get, set) : stdgo._internal.net.http.httptrace.Httptrace_wroterequestinfo.WroteRequestInfo -> Void;
    function get_wroteRequest():stdgo._internal.net.http.httptrace.Httptrace_wroterequestinfo.WroteRequestInfo -> Void return _0 -> this.wroteRequest(_0);
    function set_wroteRequest(v:stdgo._internal.net.http.httptrace.Httptrace_wroterequestinfo.WroteRequestInfo -> Void):stdgo._internal.net.http.httptrace.Httptrace_wroterequestinfo.WroteRequestInfo -> Void {
        this.wroteRequest = v;
        return v;
    }
    public function new(?getConn:stdgo.GoString -> Void, ?gotConn:stdgo._internal.net.http.httptrace.Httptrace_gotconninfo.GotConnInfo -> Void, ?putIdleConn:stdgo.Error -> Void, ?gotFirstResponseByte:() -> Void, ?got100Continue:() -> Void, ?got1xxResponse:(stdgo.GoInt, stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader) -> stdgo.Error, ?dNSStart:stdgo._internal.net.http.httptrace.Httptrace_dnsstartinfo.DNSStartInfo -> Void, ?dNSDone:stdgo._internal.net.http.httptrace.Httptrace_dnsdoneinfo.DNSDoneInfo -> Void, ?connectStart:(stdgo.GoString, stdgo.GoString) -> Void, ?connectDone:(stdgo.GoString, stdgo.GoString, stdgo.Error) -> Void, ?tLSHandshakeStart:() -> Void, ?tLSHandshakeDone:(stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState, stdgo.Error) -> Void, ?wroteHeaderField:(stdgo.GoString, stdgo.Slice<stdgo.GoString>) -> Void, ?wroteHeaders:() -> Void, ?wait100Continue:() -> Void, ?wroteRequest:stdgo._internal.net.http.httptrace.Httptrace_wroterequestinfo.WroteRequestInfo -> Void) this = new stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace(
getConn,
gotConn,
putIdleConn,
gotFirstResponseByte,
got100Continue,
got1xxResponse,
dNSStart,
dNSDone,
connectStart,
connectDone,
tLSHandshakeStart,
tLSHandshakeDone,
wroteHeaderField,
wroteHeaders,
wait100Continue,
wroteRequest);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.httptrace.Httptrace.WroteRequestInfo_static_extension) abstract WroteRequestInfo(stdgo._internal.net.http.httptrace.Httptrace_WroteRequestInfo.WroteRequestInfo) from stdgo._internal.net.http.httptrace.Httptrace_WroteRequestInfo.WroteRequestInfo to stdgo._internal.net.http.httptrace.Httptrace_WroteRequestInfo.WroteRequestInfo {
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public function new(?err:stdgo.Error) this = new stdgo._internal.net.http.httptrace.Httptrace_WroteRequestInfo.WroteRequestInfo((err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.httptrace.Httptrace.DNSStartInfo_static_extension) abstract DNSStartInfo(stdgo._internal.net.http.httptrace.Httptrace_DNSStartInfo.DNSStartInfo) from stdgo._internal.net.http.httptrace.Httptrace_DNSStartInfo.DNSStartInfo to stdgo._internal.net.http.httptrace.Httptrace_DNSStartInfo.DNSStartInfo {
    public var host(get, set) : String;
    function get_host():String return this.host;
    function set_host(v:String):String {
        this.host = (v : stdgo.GoString);
        return v;
    }
    public function new(?host:String) this = new stdgo._internal.net.http.httptrace.Httptrace_DNSStartInfo.DNSStartInfo((host : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.httptrace.Httptrace.DNSDoneInfo_static_extension) abstract DNSDoneInfo(stdgo._internal.net.http.httptrace.Httptrace_DNSDoneInfo.DNSDoneInfo) from stdgo._internal.net.http.httptrace.Httptrace_DNSDoneInfo.DNSDoneInfo to stdgo._internal.net.http.httptrace.Httptrace_DNSDoneInfo.DNSDoneInfo {
    public var addrs(get, set) : Array<stdgo._internal.net.Net_ipaddr.IPAddr>;
    function get_addrs():Array<stdgo._internal.net.Net_ipaddr.IPAddr> return [for (i in this.addrs) i];
    function set_addrs(v:Array<stdgo._internal.net.Net_ipaddr.IPAddr>):Array<stdgo._internal.net.Net_ipaddr.IPAddr> {
        this.addrs = ([for (i in v) i] : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>);
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public var coalesced(get, set) : Bool;
    function get_coalesced():Bool return this.coalesced;
    function set_coalesced(v:Bool):Bool {
        this.coalesced = v;
        return v;
    }
    public function new(?addrs:Array<stdgo._internal.net.Net_ipaddr.IPAddr>, ?err:stdgo.Error, ?coalesced:Bool) this = new stdgo._internal.net.http.httptrace.Httptrace_DNSDoneInfo.DNSDoneInfo(([for (i in addrs) i] : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>), (err : stdgo.Error), coalesced);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.httptrace.Httptrace.GotConnInfo_static_extension) abstract GotConnInfo(stdgo._internal.net.http.httptrace.Httptrace_GotConnInfo.GotConnInfo) from stdgo._internal.net.http.httptrace.Httptrace_GotConnInfo.GotConnInfo to stdgo._internal.net.http.httptrace.Httptrace_GotConnInfo.GotConnInfo {
    public var conn(get, set) : stdgo._internal.net.Net_conn.Conn;
    function get_conn():stdgo._internal.net.Net_conn.Conn return this.conn;
    function set_conn(v:stdgo._internal.net.Net_conn.Conn):stdgo._internal.net.Net_conn.Conn {
        this.conn = v;
        return v;
    }
    public var reused(get, set) : Bool;
    function get_reused():Bool return this.reused;
    function set_reused(v:Bool):Bool {
        this.reused = v;
        return v;
    }
    public var wasIdle(get, set) : Bool;
    function get_wasIdle():Bool return this.wasIdle;
    function set_wasIdle(v:Bool):Bool {
        this.wasIdle = v;
        return v;
    }
    public var idleTime(get, set) : stdgo._internal.time.Time_duration.Duration;
    function get_idleTime():stdgo._internal.time.Time_duration.Duration return this.idleTime;
    function set_idleTime(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        this.idleTime = v;
        return v;
    }
    public function new(?conn:stdgo._internal.net.Net_conn.Conn, ?reused:Bool, ?wasIdle:Bool, ?idleTime:stdgo._internal.time.Time_duration.Duration) this = new stdgo._internal.net.http.httptrace.Httptrace_GotConnInfo.GotConnInfo(conn, reused, wasIdle, idleTime);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T_clientEventContextKeyPointer = stdgo._internal.net.http.httptrace.Httptrace_T_clientEventContextKeyPointer.T_clientEventContextKeyPointer;
class T_clientEventContextKey_static_extension {

}
typedef ClientTracePointer = stdgo._internal.net.http.httptrace.Httptrace_ClientTracePointer.ClientTracePointer;
class ClientTrace_static_extension {
    static public function _hasNetHooks(_t:ClientTrace):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace>);
        return stdgo._internal.net.http.httptrace.Httptrace_ClientTrace_static_extension.ClientTrace_static_extension._hasNetHooks(_t);
    }
    static public function _compose(_t:ClientTrace, _old:ClientTrace):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace>);
        final _old = (_old : stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace>);
        stdgo._internal.net.http.httptrace.Httptrace_ClientTrace_static_extension.ClientTrace_static_extension._compose(_t, _old);
    }
}
typedef WroteRequestInfoPointer = stdgo._internal.net.http.httptrace.Httptrace_WroteRequestInfoPointer.WroteRequestInfoPointer;
class WroteRequestInfo_static_extension {

}
typedef DNSStartInfoPointer = stdgo._internal.net.http.httptrace.Httptrace_DNSStartInfoPointer.DNSStartInfoPointer;
class DNSStartInfo_static_extension {

}
typedef DNSDoneInfoPointer = stdgo._internal.net.http.httptrace.Httptrace_DNSDoneInfoPointer.DNSDoneInfoPointer;
class DNSDoneInfo_static_extension {

}
typedef GotConnInfoPointer = stdgo._internal.net.http.httptrace.Httptrace_GotConnInfoPointer.GotConnInfoPointer;
class GotConnInfo_static_extension {

}
/**
    Package httptrace provides mechanisms to trace the events within
    HTTP client requests.
**/
class Httptrace {
    /**
        ContextClientTrace returns the ClientTrace associated with the
        provided context. If none, it returns nil.
    **/
    static public inline function contextClientTrace(_ctx:stdgo._internal.context.Context_context.Context):ClientTrace {
        return stdgo._internal.net.http.httptrace.Httptrace_contextClientTrace.contextClientTrace(_ctx);
    }
    /**
        WithClientTrace returns a new context based on the provided parent
        ctx. HTTP client requests made with the returned context will use
        the provided trace hooks, in addition to any previous hooks
        registered with ctx. Any hooks defined in the provided trace will
        be called first.
    **/
    static public inline function withClientTrace(_ctx:stdgo._internal.context.Context_context.Context, _trace:ClientTrace):stdgo._internal.context.Context_context.Context {
        final _trace = (_trace : stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace>);
        return stdgo._internal.net.http.httptrace.Httptrace_withClientTrace.withClientTrace(_ctx, _trace);
    }
}
