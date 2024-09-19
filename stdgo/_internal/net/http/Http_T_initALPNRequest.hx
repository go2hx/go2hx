package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_initALPNRequest_static_extension.T_initALPNRequest_static_extension) class T_initALPNRequest {
    public var _ctx : stdgo._internal.context.Context_Context.Context = (null : stdgo._internal.context.Context_Context.Context);
    public var _c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
    public var _h : stdgo._internal.net.http.Http_T_serverHandler.T_serverHandler = ({} : stdgo._internal.net.http.Http_T_serverHandler.T_serverHandler);
    public function new(?_ctx:stdgo._internal.context.Context_Context.Context, ?_c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, ?_h:stdgo._internal.net.http.Http_T_serverHandler.T_serverHandler) {
        if (_ctx != null) this._ctx = _ctx;
        if (_c != null) this._c = _c;
        if (_h != null) this._h = _h;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_initALPNRequest(_ctx, _c, _h);
    }
}
