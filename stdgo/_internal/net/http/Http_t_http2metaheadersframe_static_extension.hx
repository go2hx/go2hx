package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2MetaHeadersFrame_asInterface) class T_http2MetaHeadersFrame_static_extension {
    @:keep
    @:tdfield
    static public function pseudoFields( _mh:stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame>):stdgo.Slice<_internal.vendor.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField> throw "T_http2MetaHeadersFrame:net.http.pseudoFields is not yet implemented";
    @:keep
    @:tdfield
    static public function regularFields( _mh:stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame>):stdgo.Slice<_internal.vendor.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField> throw "T_http2MetaHeadersFrame:net.http.regularFields is not yet implemented";
    @:keep
    @:tdfield
    static public function pseudoValue( _mh:stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame>, _pseudo:stdgo.GoString):stdgo.GoString throw "T_http2MetaHeadersFrame:net.http.pseudoValue is not yet implemented";
    @:embedded
    @:embeddededffieldsffun
    public static function _writeDebug( __self__:stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame, _0:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):Void return @:_5 __self__._writeDebug(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _invalidate( __self__:stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame):Void return @:_5 __self__._invalidate();
    @:embedded
    @:embeddededffieldsffun
    public static function _checkValid( __self__:stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame):Void return @:_5 __self__._checkValid();
    @:embedded
    @:embeddededffieldsffun
    public static function string( __self__:stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame):stdgo.GoString return @:_5 __self__.string();
    @:embedded
    @:embeddededffieldsffun
    public static function streamEnded( __self__:stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame):Bool return @:_5 __self__.streamEnded();
    @:embedded
    @:embeddededffieldsffun
    public static function headersEnded( __self__:stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame):Bool return @:_5 __self__.headersEnded();
    @:embedded
    @:embeddededffieldsffun
    public static function headerBlockFragment( __self__:stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.headerBlockFragment();
    @:embedded
    @:embeddededffieldsffun
    public static function header( __self__:stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame):stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader return @:_5 __self__.header();
    @:embedded
    @:embeddededffieldsffun
    public static function hasPriority( __self__:stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame):Bool return @:_5 __self__.hasPriority();
}
