package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2RSTStreamFrame_asInterface) class T_http2RSTStreamFrame_static_extension {
    @:embedded
    public static function _writeDebug( __self__:stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame, _buf:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>) __self__._writeDebug(_buf);
    @:embedded
    public static function _invalidate( __self__:stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame) __self__._invalidate();
    @:embedded
    public static function _checkValid( __self__:stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame) __self__._checkValid();
    @:embedded
    public static function string( __self__:stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame):stdgo.GoString return __self__.string();
    @:embedded
    public static function header( __self__:stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame):stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader return __self__.header();
}