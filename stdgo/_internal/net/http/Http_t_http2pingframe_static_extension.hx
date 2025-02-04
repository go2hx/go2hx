package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2PingFrame_asInterface) class T_http2PingFrame_static_extension {
    @:keep
    @:tdfield
    static public function isAck( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pingframe.T_http2PingFrame>):Bool {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pingframe.T_http2PingFrame> = _f;
        return (@:checkr _f ?? throw "null pointer dereference")._http2FrameHeader.flags.has((1 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags));
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _writeDebug( __self__:stdgo._internal.net.http.Http_t_http2pingframe.T_http2PingFrame, _0:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):Void return @:_5 __self__._writeDebug(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _invalidate( __self__:stdgo._internal.net.http.Http_t_http2pingframe.T_http2PingFrame):Void return @:_5 __self__._invalidate();
    @:embedded
    @:embeddededffieldsffun
    public static function _checkValid( __self__:stdgo._internal.net.http.Http_t_http2pingframe.T_http2PingFrame):Void return @:_5 __self__._checkValid();
    @:embedded
    @:embeddededffieldsffun
    public static function string( __self__:stdgo._internal.net.http.Http_t_http2pingframe.T_http2PingFrame):stdgo.GoString return @:_5 __self__.string();
    @:embedded
    @:embeddededffieldsffun
    public static function header( __self__:stdgo._internal.net.http.Http_t_http2pingframe.T_http2PingFrame):stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader return @:_5 __self__.header();
}
