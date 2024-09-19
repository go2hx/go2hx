package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2noDialClientConnPool_static_extension.T_http2noDialClientConnPool_static_extension) class T_http2noDialClientConnPool {
    @:embedded
    public var _http2clientConnPool : stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool>);
    public function new(?_http2clientConnPool:stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool>) {
        if (_http2clientConnPool != null) this._http2clientConnPool = _http2clientConnPool;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function markDead(__0:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>) this._http2clientConnPool.markDead(__0);
    @:embedded
    public function _addConnIfNeeded(_key:stdgo.GoString, _t:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>, _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>):{ var _0 : Bool; var _1 : stdgo.Error; } return this._http2clientConnPool._addConnIfNeeded(_key, _t, _c);
    @:embedded
    public function _addConnLocked(_key:stdgo.GoString, _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>) this._http2clientConnPool._addConnLocked(_key, _cc);
    @:embedded
    public function _closeIdleConnections() this._http2clientConnPool._closeIdleConnections();
    @:embedded
    public function _getClientConn(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _addr:stdgo.GoString, _dialOnMiss:Bool):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>; var _1 : stdgo.Error; } return this._http2clientConnPool._getClientConn(_req, _addr, _dialOnMiss);
    @:embedded
    public function _getStartDialLocked(_ctx:stdgo._internal.context.Context_Context.Context, _addr:stdgo.GoString):stdgo.Ref<stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall> return this._http2clientConnPool._getStartDialLocked(_ctx, _addr);
    public function __copy__() {
        return new T_http2noDialClientConnPool(_http2clientConnPool);
    }
}
