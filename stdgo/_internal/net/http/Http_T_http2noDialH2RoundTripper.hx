package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension) class T_http2noDialH2RoundTripper {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var closeIdleConnections(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_closeIdleConnections():() -> Void return @:check32 this.new.closeIdleConnections;
    public var newClientConn(get, never) : stdgo._internal.net.Net_Conn.Conn -> { var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_newClientConn():stdgo._internal.net.Net_Conn.Conn -> { var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>; var _1 : stdgo.Error; } return @:check32 this.new.newClientConn;
    public var roundTripOpt(get, never) : (stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo._internal.net.http.Http_T_http2RoundTripOpt.T_http2RoundTripOpt) -> { var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_roundTripOpt():(stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo._internal.net.http.Http_T_http2RoundTripOpt.T_http2RoundTripOpt) -> { var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } return @:check32 this.new.roundTripOpt;
    public var _connPool(get, never) : () -> stdgo._internal.net.http.Http_T_http2ClientConnPool.T_http2ClientConnPool;
    @:embedded
    @:embeddededffieldsffun
    public function get__connPool():() -> stdgo._internal.net.http.Http_T_http2ClientConnPool.T_http2ClientConnPool return @:check32 this.new._connPool;
    public var _dialClientConn(get, never) : (stdgo._internal.context.Context_Context.Context, stdgo.GoString, Bool) -> { var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__dialClientConn():(stdgo._internal.context.Context_Context.Context, stdgo.GoString, Bool) -> { var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>; var _1 : stdgo.Error; } return @:check32 this.new._dialClientConn;
    public var _dialTLS(get, never) : (stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__dialTLS():(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } return @:check32 this.new._dialTLS;
    public var _dialTLSWithContext(get, never) : (stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>) -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__dialTLSWithContext():(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>) -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>; var _1 : stdgo.Error; } return @:check32 this.new._dialTLSWithContext;
    public var _disableCompression(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__disableCompression():() -> Bool return @:check32 this.new._disableCompression;
    public var _disableKeepAlives(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__disableKeepAlives():() -> Bool return @:check32 this.new._disableKeepAlives;
    public var _expectContinueTimeout(get, never) : () -> stdgo._internal.time.Time_Duration.Duration;
    @:embedded
    @:embeddededffieldsffun
    public function get__expectContinueTimeout():() -> stdgo._internal.time.Time_Duration.Duration return @:check32 this.new._expectContinueTimeout;
    public var _idleConnTimeout(get, never) : () -> stdgo._internal.time.Time_Duration.Duration;
    @:embedded
    @:embeddededffieldsffun
    public function get__idleConnTimeout():() -> stdgo._internal.time.Time_Duration.Duration return @:check32 this.new._idleConnTimeout;
    public var _initConnPool(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__initConnPool():() -> Void return @:check32 this.new._initConnPool;
    public var _logf(get, never) : (stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__logf():(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void return @:check32 this.new._logf;
    public var _maxDecoderHeaderTableSize(get, never) : () -> stdgo.GoUInt32;
    @:embedded
    @:embeddededffieldsffun
    public function get__maxDecoderHeaderTableSize():() -> stdgo.GoUInt32 return @:check32 this.new._maxDecoderHeaderTableSize;
    public var _maxEncoderHeaderTableSize(get, never) : () -> stdgo.GoUInt32;
    @:embedded
    @:embeddededffieldsffun
    public function get__maxEncoderHeaderTableSize():() -> stdgo.GoUInt32 return @:check32 this.new._maxEncoderHeaderTableSize;
    public var _maxFrameReadSize(get, never) : () -> stdgo.GoUInt32;
    @:embedded
    @:embeddededffieldsffun
    public function get__maxFrameReadSize():() -> stdgo.GoUInt32 return @:check32 this.new._maxFrameReadSize;
    public var _maxHeaderListSize(get, never) : () -> stdgo.GoUInt32;
    @:embedded
    @:embeddededffieldsffun
    public function get__maxHeaderListSize():() -> stdgo.GoUInt32 return @:check32 this.new._maxHeaderListSize;
    public var _newClientConn(get, never) : (stdgo._internal.net.Net_Conn.Conn, Bool) -> { var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__newClientConn():(stdgo._internal.net.Net_Conn.Conn, Bool) -> { var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>; var _1 : stdgo.Error; } return @:check32 this.new._newClientConn;
    public var _newTLSConfig(get, never) : stdgo.GoString -> stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>;
    @:embedded
    @:embeddededffieldsffun
    public function get__newTLSConfig():stdgo.GoString -> stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> return @:check32 this.new._newTLSConfig;
    public var _pingTimeout(get, never) : () -> stdgo._internal.time.Time_Duration.Duration;
    @:embedded
    @:embeddededffieldsffun
    public function get__pingTimeout():() -> stdgo._internal.time.Time_Duration.Duration return @:check32 this.new._pingTimeout;
    public var _vlogf(get, never) : (stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__vlogf():(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void return @:check32 this.new._vlogf;
    public function __copy__() {
        return new T_http2noDialH2RoundTripper();
    }
}
