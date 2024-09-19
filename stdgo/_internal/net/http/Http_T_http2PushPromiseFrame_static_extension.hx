package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2PushPromiseFrame_asInterface) class T_http2PushPromiseFrame_static_extension {
    @:keep
    static public function headersEnded( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame>):Bool {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame> = _f;
        return _f._http2FrameHeader.flags.has((4 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags));
    }
    @:keep
    static public function headerBlockFragment( _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame> = _f;
        _f._checkValid();
        return _f._headerFragBuf;
    }
    @:embedded
    public static function _writeDebug( __self__:stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame, _buf:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>) __self__._writeDebug(_buf);
    @:embedded
    public static function _invalidate( __self__:stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame) __self__._invalidate();
    @:embedded
    public static function _checkValid( __self__:stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame) __self__._checkValid();
    @:embedded
    public static function string( __self__:stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame):stdgo.GoString return __self__.string();
    @:embedded
    public static function header( __self__:stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame):stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader return __self__.header();
}
