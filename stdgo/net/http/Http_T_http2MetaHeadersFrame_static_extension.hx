package stdgo.net.http;
class T_http2MetaHeadersFrame_static_extension {
    static public function pseudoFields(_mh:T_http2MetaHeadersFrame):Array<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField> {
        final _mh = (_mh : stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>);
        return [for (i in stdgo._internal.net.http.Http_T_http2MetaHeadersFrame_static_extension.T_http2MetaHeadersFrame_static_extension.pseudoFields(_mh)) i];
    }
    static public function regularFields(_mh:T_http2MetaHeadersFrame):Array<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField> {
        final _mh = (_mh : stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>);
        return [for (i in stdgo._internal.net.http.Http_T_http2MetaHeadersFrame_static_extension.T_http2MetaHeadersFrame_static_extension.regularFields(_mh)) i];
    }
    static public function pseudoValue(_mh:T_http2MetaHeadersFrame, _pseudo:String):String {
        final _mh = (_mh : stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>);
        final _pseudo = (_pseudo : stdgo.GoString);
        return stdgo._internal.net.http.Http_T_http2MetaHeadersFrame_static_extension.T_http2MetaHeadersFrame_static_extension.pseudoValue(_mh, _pseudo);
    }
    public static function _writeDebug(__self__:stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame, _0:stdgo._internal.bytes.Bytes_Buffer.Buffer):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        stdgo._internal.net.http.Http_T_http2MetaHeadersFrame_static_extension.T_http2MetaHeadersFrame_static_extension._writeDebug(__self__, _0);
    }
    public static function _invalidate(__self__:stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame):Void {
        stdgo._internal.net.http.Http_T_http2MetaHeadersFrame_static_extension.T_http2MetaHeadersFrame_static_extension._invalidate(__self__);
    }
    public static function _checkValid(__self__:stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame):Void {
        stdgo._internal.net.http.Http_T_http2MetaHeadersFrame_static_extension.T_http2MetaHeadersFrame_static_extension._checkValid(__self__);
    }
    public static function string(__self__:stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame):String {
        return stdgo._internal.net.http.Http_T_http2MetaHeadersFrame_static_extension.T_http2MetaHeadersFrame_static_extension.string(__self__);
    }
    public static function streamEnded(__self__:stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame):Bool {
        return stdgo._internal.net.http.Http_T_http2MetaHeadersFrame_static_extension.T_http2MetaHeadersFrame_static_extension.streamEnded(__self__);
    }
    public static function headersEnded(__self__:stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame):Bool {
        return stdgo._internal.net.http.Http_T_http2MetaHeadersFrame_static_extension.T_http2MetaHeadersFrame_static_extension.headersEnded(__self__);
    }
    public static function headerBlockFragment(__self__:stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame):Array<std.UInt> {
        return [for (i in stdgo._internal.net.http.Http_T_http2MetaHeadersFrame_static_extension.T_http2MetaHeadersFrame_static_extension.headerBlockFragment(__self__)) i];
    }
    public static function header(__self__:stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame):T_http2FrameHeader {
        return stdgo._internal.net.http.Http_T_http2MetaHeadersFrame_static_extension.T_http2MetaHeadersFrame_static_extension.header(__self__);
    }
    public static function hasPriority(__self__:stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame):Bool {
        return stdgo._internal.net.http.Http_T_http2MetaHeadersFrame_static_extension.T_http2MetaHeadersFrame_static_extension.hasPriority(__self__);
    }
}
