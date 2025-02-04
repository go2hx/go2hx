package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_t_http2nodialclientconnpool_static_extension.T_http2noDialClientConnPool_static_extension) class T_http2noDialClientConnPool {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var markDead(get, never) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_markDead():stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> -> Void return @:check32 this.new.markDead;
    public var _addConnIfNeeded(get, never) : (stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>, stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>) -> { var _0 : Bool; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__addConnIfNeeded():(stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>, stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>) -> { var _0 : Bool; var _1 : stdgo.Error; } return @:check32 this.new._addConnIfNeeded;
    public var _addConnLocked(get, never) : (stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__addConnLocked():(stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>) -> Void return @:check32 this.new._addConnLocked;
    public var _closeIdleConnections(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__closeIdleConnections():() -> Void return @:check32 this.new._closeIdleConnections;
    public var _getClientConn(get, never) : (stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, stdgo.GoString, Bool) -> { var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__getClientConn():(stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, stdgo.GoString, Bool) -> { var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; } return @:check32 this.new._getClientConn;
    public var _getStartDialLocked(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString) -> stdgo.Ref<stdgo._internal.net.http.Http_t_http2dialcall.T_http2dialCall>;
    @:embedded
    @:embeddededffieldsffun
    public function get__getStartDialLocked():(stdgo._internal.context.Context_context.Context, stdgo.GoString) -> stdgo.Ref<stdgo._internal.net.http.Http_t_http2dialcall.T_http2dialCall> return @:check32 this.new._getStartDialLocked;
    public function __copy__() {
        return new T_http2noDialClientConnPool();
    }
}
