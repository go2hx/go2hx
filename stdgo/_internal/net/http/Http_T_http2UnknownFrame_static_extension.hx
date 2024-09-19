package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2UnknownFrame_asInterface) class T_http2UnknownFrame_static_extension {
    @:keep
    static public function payload( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2UnknownFrame.T_http2UnknownFrame>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2UnknownFrame.T_http2UnknownFrame> = _f;
        _f._checkValid();
        return _f._p;
    }
    @:embedded
    public static function _writeDebug( __self__:stdgo._internal.net.http.Http_T_http2UnknownFrame.T_http2UnknownFrame, _buf:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>) __self__._writeDebug(_buf);
    @:embedded
    public static function _invalidate( __self__:stdgo._internal.net.http.Http_T_http2UnknownFrame.T_http2UnknownFrame) __self__._invalidate();
    @:embedded
    public static function _checkValid( __self__:stdgo._internal.net.http.Http_T_http2UnknownFrame.T_http2UnknownFrame) __self__._checkValid();
    @:embedded
    public static function string( __self__:stdgo._internal.net.http.Http_T_http2UnknownFrame.T_http2UnknownFrame):stdgo.GoString return __self__.string();
    @:embedded
    public static function header( __self__:stdgo._internal.net.http.Http_T_http2UnknownFrame.T_http2UnknownFrame):stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader return __self__.header();
}
