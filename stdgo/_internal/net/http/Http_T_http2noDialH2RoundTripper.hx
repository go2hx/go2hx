package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension) class T_http2noDialH2RoundTripper {
    @:embedded
    public var _http2Transport : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>);
    public function new(?_http2Transport:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport>) {
        if (_http2Transport != null) this._http2Transport = _http2Transport;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function closeIdleConnections() this._http2Transport.closeIdleConnections();
    @:embedded
    public function newClientConn(__0:stdgo._internal.net.Net_Conn.Conn):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>; var _1 : stdgo.Error; } return this._http2Transport.newClientConn(__0);
    @:embedded
    public function roundTripOpt(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _opt:stdgo._internal.net.http.Http_T_http2RoundTripOpt.T_http2RoundTripOpt):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } return this._http2Transport.roundTripOpt(_req, _opt);
    @:embedded
    public function _connPool():stdgo._internal.net.http.Http_T_http2ClientConnPool.T_http2ClientConnPool return this._http2Transport._connPool();
    @:embedded
    public function _dialClientConn(_ctx:stdgo._internal.context.Context_Context.Context, _addr:stdgo.GoString, _singleUse:Bool):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>; var _1 : stdgo.Error; } return this._http2Transport._dialClientConn(_ctx, _addr, _singleUse);
    @:embedded
    public function _dialTLS(_ctx:stdgo._internal.context.Context_Context.Context, _network:stdgo.GoString, _addr:stdgo.GoString, _tlsCfg:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>):{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } return this._http2Transport._dialTLS(_ctx, _network, _addr, _tlsCfg);
    @:embedded
    public function _dialTLSWithContext(_ctx:stdgo._internal.context.Context_Context.Context, _network:stdgo.GoString, _addr:stdgo.GoString, _tlsCfg:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>; var _1 : stdgo.Error; } return this._http2Transport._dialTLSWithContext(_ctx, _network, _addr, _tlsCfg);
    @:embedded
    public function _disableCompression():Bool return this._http2Transport._disableCompression();
    @:embedded
    public function _disableKeepAlives():Bool return this._http2Transport._disableKeepAlives();
    @:embedded
    public function _expectContinueTimeout():stdgo._internal.time.Time_Duration.Duration return this._http2Transport._expectContinueTimeout();
    @:embedded
    public function _idleConnTimeout():stdgo._internal.time.Time_Duration.Duration return this._http2Transport._idleConnTimeout();
    @:embedded
    public function _initConnPool() this._http2Transport._initConnPool();
    @:embedded
    public function _logf(_format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>) this._http2Transport._logf(_format, ..._v);
    @:embedded
    public function _maxDecoderHeaderTableSize():stdgo.GoUInt32 return this._http2Transport._maxDecoderHeaderTableSize();
    @:embedded
    public function _maxEncoderHeaderTableSize():stdgo.GoUInt32 return this._http2Transport._maxEncoderHeaderTableSize();
    @:embedded
    public function _maxFrameReadSize():stdgo.GoUInt32 return this._http2Transport._maxFrameReadSize();
    @:embedded
    public function _maxHeaderListSize():stdgo.GoUInt32 return this._http2Transport._maxHeaderListSize();
    @:embedded
    public function _newClientConn(_c:stdgo._internal.net.Net_Conn.Conn, _singleUse:Bool):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>; var _1 : stdgo.Error; } return this._http2Transport._newClientConn(_c, _singleUse);
    @:embedded
    public function _newTLSConfig(__0:stdgo.GoString):stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> return this._http2Transport._newTLSConfig(__0);
    @:embedded
    public function _pingTimeout():stdgo._internal.time.Time_Duration.Duration return this._http2Transport._pingTimeout();
    @:embedded
    public function _vlogf(_format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>) this._http2Transport._vlogf(_format, ..._v);
    public function __copy__() {
        return new T_http2noDialH2RoundTripper(_http2Transport);
    }
}
