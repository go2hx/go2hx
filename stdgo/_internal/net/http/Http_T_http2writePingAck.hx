package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2writePingAck_static_extension.T_http2writePingAck_static_extension) class T_http2writePingAck {
    public var _pf : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame>);
    public function new(?_pf:stdgo.Ref<stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame>) {
        if (_pf != null) this._pf = _pf;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2writePingAck(_pf);
    }
}
