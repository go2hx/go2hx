package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2noDialH2RoundTripper_asInterface) class T_http2noDialH2RoundTripper_static_extension {
    @:keep
    static public function roundTrip( _rt:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } {
        @:recv var _rt:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper = _rt?.__copy__();
        var __tmp__ = _rt._http2Transport.roundTrip(_req), _res:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (stdgo._internal.net.http.Http__http2isNoCachedConnError._http2isNoCachedConnError(_err)) {
            return { _0 : null, _1 : stdgo._internal.net.http.Http_errSkipAltProtocol.errSkipAltProtocol };
        };
        return { _0 : _res, _1 : _err };
    }
    @:embedded
    public static function _vlogf( __self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper, _format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>) __self__._vlogf(_format, ...[for (i in _v) i]);
    @:embedded
    public static function _pingTimeout( __self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper):stdgo._internal.time.Time_Duration.Duration return __self__._pingTimeout();
    @:embedded
    public static function _newTLSConfig( __self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper, __0:stdgo.GoString):stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> return __self__._newTLSConfig(__0);
    @:embedded
    public static function _newClientConn( __self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper, _c:stdgo._internal.net.Net_Conn.Conn, _singleUse:Bool):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>; var _1 : stdgo.Error; } return __self__._newClientConn(_c, _singleUse);
    @:embedded
    public static function _maxHeaderListSize( __self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper):stdgo.GoUInt32 return __self__._maxHeaderListSize();
    @:embedded
    public static function _maxFrameReadSize( __self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper):stdgo.GoUInt32 return __self__._maxFrameReadSize();
    @:embedded
    public static function _maxEncoderHeaderTableSize( __self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper):stdgo.GoUInt32 return __self__._maxEncoderHeaderTableSize();
    @:embedded
    public static function _maxDecoderHeaderTableSize( __self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper):stdgo.GoUInt32 return __self__._maxDecoderHeaderTableSize();
    @:embedded
    public static function _logf( __self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper, _format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>) __self__._logf(_format, ...[for (i in _v) i]);
    @:embedded
    public static function _initConnPool( __self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper) __self__._initConnPool();
    @:embedded
    public static function _idleConnTimeout( __self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper):stdgo._internal.time.Time_Duration.Duration return __self__._idleConnTimeout();
    @:embedded
    public static function _expectContinueTimeout( __self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper):stdgo._internal.time.Time_Duration.Duration return __self__._expectContinueTimeout();
    @:embedded
    public static function _disableKeepAlives( __self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper):Bool return __self__._disableKeepAlives();
    @:embedded
    public static function _disableCompression( __self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper):Bool return __self__._disableCompression();
    @:embedded
    public static function _dialTLSWithContext( __self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper, _ctx:stdgo._internal.context.Context_Context.Context, _network:stdgo.GoString, _addr:stdgo.GoString, _tlsCfg:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>; var _1 : stdgo.Error; } return __self__._dialTLSWithContext(_ctx, _network, _addr, _tlsCfg);
    @:embedded
    public static function _dialTLS( __self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper, _ctx:stdgo._internal.context.Context_Context.Context, _network:stdgo.GoString, _addr:stdgo.GoString, _tlsCfg:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>):{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } return __self__._dialTLS(_ctx, _network, _addr, _tlsCfg);
    @:embedded
    public static function _dialClientConn( __self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper, _ctx:stdgo._internal.context.Context_Context.Context, _addr:stdgo.GoString, _singleUse:Bool):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>; var _1 : stdgo.Error; } return __self__._dialClientConn(_ctx, _addr, _singleUse);
    @:embedded
    public static function _connPool( __self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper):stdgo._internal.net.http.Http_T_http2ClientConnPool.T_http2ClientConnPool return __self__._connPool();
    @:embedded
    public static function roundTripOpt( __self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _opt:stdgo._internal.net.http.Http_T_http2RoundTripOpt.T_http2RoundTripOpt):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } return __self__.roundTripOpt(_req, _opt);
    @:embedded
    public static function newClientConn( __self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper, __0:stdgo._internal.net.Net_Conn.Conn):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>; var _1 : stdgo.Error; } return __self__.newClientConn(__0);
    @:embedded
    public static function closeIdleConnections( __self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper) __self__.closeIdleConnections();
}
