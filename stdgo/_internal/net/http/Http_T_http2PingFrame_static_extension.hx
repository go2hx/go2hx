package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2PingFrame_asInterface) class T_http2PingFrame_static_extension {
    @:keep
    static public function isAck( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame>):Bool {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame> = _f;
        return _f._http2FrameHeader.flags.has((1 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags));
    }
    @:embedded
    public static function _writeDebug( __self__:stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame, _buf:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>) __self__._writeDebug(_buf);
    @:embedded
    public static function _invalidate( __self__:stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame) __self__._invalidate();
    @:embedded
    public static function _checkValid( __self__:stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame) __self__._checkValid();
    @:embedded
    public static function string( __self__:stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame):stdgo.GoString return __self__.string();
    @:embedded
    public static function header( __self__:stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame):stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader return __self__.header();
}
