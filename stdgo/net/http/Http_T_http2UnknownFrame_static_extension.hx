package stdgo.net.http;
class T_http2UnknownFrame_static_extension {
    static public function payload(_f:T_http2UnknownFrame):Array<std.UInt> {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_T_http2UnknownFrame.T_http2UnknownFrame>);
        return [for (i in stdgo._internal.net.http.Http_T_http2UnknownFrame_static_extension.T_http2UnknownFrame_static_extension.payload(_f)) i];
    }
    public static function _writeDebug(__self__:stdgo._internal.net.http.Http_T_http2UnknownFrame.T_http2UnknownFrame, _0:stdgo._internal.bytes.Bytes_Buffer.Buffer):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        stdgo._internal.net.http.Http_T_http2UnknownFrame_static_extension.T_http2UnknownFrame_static_extension._writeDebug(__self__, _0);
    }
    public static function _invalidate(__self__:stdgo._internal.net.http.Http_T_http2UnknownFrame.T_http2UnknownFrame):Void {
        stdgo._internal.net.http.Http_T_http2UnknownFrame_static_extension.T_http2UnknownFrame_static_extension._invalidate(__self__);
    }
    public static function _checkValid(__self__:stdgo._internal.net.http.Http_T_http2UnknownFrame.T_http2UnknownFrame):Void {
        stdgo._internal.net.http.Http_T_http2UnknownFrame_static_extension.T_http2UnknownFrame_static_extension._checkValid(__self__);
    }
    public static function string(__self__:stdgo._internal.net.http.Http_T_http2UnknownFrame.T_http2UnknownFrame):String {
        return stdgo._internal.net.http.Http_T_http2UnknownFrame_static_extension.T_http2UnknownFrame_static_extension.string(__self__);
    }
    public static function header(__self__:stdgo._internal.net.http.Http_T_http2UnknownFrame.T_http2UnknownFrame):T_http2FrameHeader {
        return stdgo._internal.net.http.Http_T_http2UnknownFrame_static_extension.T_http2UnknownFrame_static_extension.header(__self__);
    }
}
