package stdgo.net.http;
class T_http2ContinuationFrame_static_extension {
    static public function headersEnded(_f:T_http2ContinuationFrame):Bool {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ContinuationFrame.T_http2ContinuationFrame>);
        return stdgo._internal.net.http.Http_T_http2ContinuationFrame_static_extension.T_http2ContinuationFrame_static_extension.headersEnded(_f);
    }
    static public function headerBlockFragment(_f:T_http2ContinuationFrame):Array<std.UInt> {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ContinuationFrame.T_http2ContinuationFrame>);
        return [for (i in stdgo._internal.net.http.Http_T_http2ContinuationFrame_static_extension.T_http2ContinuationFrame_static_extension.headerBlockFragment(_f)) i];
    }
    public static function _writeDebug(__self__:stdgo._internal.net.http.Http_T_http2ContinuationFrame.T_http2ContinuationFrame, _0:stdgo._internal.bytes.Bytes_Buffer.Buffer):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        stdgo._internal.net.http.Http_T_http2ContinuationFrame_static_extension.T_http2ContinuationFrame_static_extension._writeDebug(__self__, _0);
    }
    public static function _invalidate(__self__:stdgo._internal.net.http.Http_T_http2ContinuationFrame.T_http2ContinuationFrame):Void {
        stdgo._internal.net.http.Http_T_http2ContinuationFrame_static_extension.T_http2ContinuationFrame_static_extension._invalidate(__self__);
    }
    public static function _checkValid(__self__:stdgo._internal.net.http.Http_T_http2ContinuationFrame.T_http2ContinuationFrame):Void {
        stdgo._internal.net.http.Http_T_http2ContinuationFrame_static_extension.T_http2ContinuationFrame_static_extension._checkValid(__self__);
    }
    public static function string(__self__:stdgo._internal.net.http.Http_T_http2ContinuationFrame.T_http2ContinuationFrame):String {
        return stdgo._internal.net.http.Http_T_http2ContinuationFrame_static_extension.T_http2ContinuationFrame_static_extension.string(__self__);
    }
    public static function header(__self__:stdgo._internal.net.http.Http_T_http2ContinuationFrame.T_http2ContinuationFrame):T_http2FrameHeader {
        return stdgo._internal.net.http.Http_T_http2ContinuationFrame_static_extension.T_http2ContinuationFrame_static_extension.header(__self__);
    }
}
