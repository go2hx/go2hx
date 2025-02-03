package stdgo.net.http;
class T_http2noDialH2RoundTripper_static_extension {
    static public function roundTrip(_rt:T_http2noDialH2RoundTripper, _req:Request):stdgo.Tuple<Response, stdgo.Error> {
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension.roundTrip(_rt, _req);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _vlogf(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper, _0:String, _1:haxe.Rest<stdgo.AnyInterface>):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension._vlogf(__self__, _0, ...[for (i in _1) i]);
    }
    public static function _pingTimeout(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper):stdgo._internal.time.Time_Duration.Duration {
        return stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension._pingTimeout(__self__);
    }
    public static function _newTLSConfig(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper, _0:String):stdgo._internal.crypto.tls.Tls_Config.Config {
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension._newTLSConfig(__self__, _0);
    }
    public static function _newClientConn(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper, _0:stdgo._internal.net.Net_Conn.Conn, _1:Bool):stdgo.Tuple<T_http2ClientConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension._newClientConn(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _maxHeaderListSize(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper):std.UInt {
        return stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension._maxHeaderListSize(__self__);
    }
    public static function _maxFrameReadSize(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper):std.UInt {
        return stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension._maxFrameReadSize(__self__);
    }
    public static function _maxEncoderHeaderTableSize(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper):std.UInt {
        return stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension._maxEncoderHeaderTableSize(__self__);
    }
    public static function _maxDecoderHeaderTableSize(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper):std.UInt {
        return stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension._maxDecoderHeaderTableSize(__self__);
    }
    public static function _logf(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper, _0:String, _1:haxe.Rest<stdgo.AnyInterface>):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension._logf(__self__, _0, ...[for (i in _1) i]);
    }
    public static function _initConnPool(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper):Void {
        stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension._initConnPool(__self__);
    }
    public static function _idleConnTimeout(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper):stdgo._internal.time.Time_Duration.Duration {
        return stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension._idleConnTimeout(__self__);
    }
    public static function _expectContinueTimeout(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper):stdgo._internal.time.Time_Duration.Duration {
        return stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension._expectContinueTimeout(__self__);
    }
    public static function _disableKeepAlives(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper):Bool {
        return stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension._disableKeepAlives(__self__);
    }
    public static function _disableCompression(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper):Bool {
        return stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension._disableCompression(__self__);
    }
    public static function _dialTLSWithContext(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper, _0:stdgo._internal.context.Context_Context.Context, _1:String, _2:String, _3:stdgo._internal.crypto.tls.Tls_Config.Config):stdgo.Tuple<stdgo._internal.crypto.tls.Tls_Conn.Conn, stdgo.Error> {
        final _1 = (_1 : stdgo.GoString);
        final _2 = (_2 : stdgo.GoString);
        final _3 = (_3 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension._dialTLSWithContext(__self__, _0, _1, _2, _3);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _dialTLS(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper, _0:stdgo._internal.context.Context_Context.Context, _1:String, _2:String, _3:stdgo._internal.crypto.tls.Tls_Config.Config):stdgo.Tuple<stdgo._internal.net.Net_Conn.Conn, stdgo.Error> {
        final _1 = (_1 : stdgo.GoString);
        final _2 = (_2 : stdgo.GoString);
        final _3 = (_3 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension._dialTLS(__self__, _0, _1, _2, _3);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _dialClientConn(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper, _0:stdgo._internal.context.Context_Context.Context, _1:String, _2:Bool):stdgo.Tuple<T_http2ClientConn, stdgo.Error> {
        final _1 = (_1 : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension._dialClientConn(__self__, _0, _1, _2);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _connPool(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper):T_http2ClientConnPool {
        return stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension._connPool(__self__);
    }
    public static function roundTripOpt(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper, _0:Request, _1:T_http2RoundTripOpt):stdgo.Tuple<Response, stdgo.Error> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension.roundTripOpt(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function newClientConn(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper, _0:stdgo._internal.net.Net_Conn.Conn):stdgo.Tuple<T_http2ClientConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension.newClientConn(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function closeIdleConnections(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper):Void {
        stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension.closeIdleConnections(__self__);
    }
}
