package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2GoAwayFrame_asInterface) class T_http2GoAwayFrame_static_extension {
    @:keep
    @:tdfield
    static public function debugData( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2goawayframe.T_http2GoAwayFrame>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2goawayframe.T_http2GoAwayFrame> = _f;
        @:check2r _f._checkValid();
        return (@:checkr _f ?? throw "null pointer dereference")._debugData;
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _writeDebug( __self__:stdgo._internal.net.http.Http_t_http2goawayframe.T_http2GoAwayFrame, _0:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):Void return @:_5 __self__._writeDebug(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _invalidate( __self__:stdgo._internal.net.http.Http_t_http2goawayframe.T_http2GoAwayFrame):Void return @:_5 __self__._invalidate();
    @:embedded
    @:embeddededffieldsffun
    public static function _checkValid( __self__:stdgo._internal.net.http.Http_t_http2goawayframe.T_http2GoAwayFrame):Void return @:_5 __self__._checkValid();
    @:embedded
    @:embeddededffieldsffun
    public static function string( __self__:stdgo._internal.net.http.Http_t_http2goawayframe.T_http2GoAwayFrame):stdgo.GoString return @:_5 __self__.string();
    @:embedded
    @:embeddededffieldsffun
    public static function header( __self__:stdgo._internal.net.http.Http_t_http2goawayframe.T_http2GoAwayFrame):stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader return @:_5 __self__.header();
}
