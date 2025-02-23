package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2MetaHeadersFrame_asInterface) class T_http2MetaHeadersFrame_static_extension {
    @:keep
    @:tdfield
    static public function pseudoFields( _mh:stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame>):stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_headerfield.HeaderField> {
        @:recv var _mh:stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame> = _mh;
        for (_i => _hf in (@:checkr _mh ?? throw "null pointer dereference").fields) {
            if (!_hf.isPseudo()) {
                return ((@:checkr _mh ?? throw "null pointer dereference").fields.__slice__(0, _i) : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_headerfield.HeaderField>);
            };
        };
        return (@:checkr _mh ?? throw "null pointer dereference").fields;
    }
    @:keep
    @:tdfield
    static public function regularFields( _mh:stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame>):stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_headerfield.HeaderField> {
        @:recv var _mh:stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame> = _mh;
        for (_i => _hf in (@:checkr _mh ?? throw "null pointer dereference").fields) {
            if (!_hf.isPseudo()) {
                return ((@:checkr _mh ?? throw "null pointer dereference").fields.__slice__(_i) : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_headerfield.HeaderField>);
            };
        };
        return (null : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_headerfield.HeaderField>);
    }
    @:keep
    @:tdfield
    static public function pseudoValue( _mh:stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame>, _pseudo:stdgo.GoString):stdgo.GoString {
        @:recv var _mh:stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame> = _mh;
        for (__2357 => _hf in (@:checkr _mh ?? throw "null pointer dereference").fields) {
            if (!_hf.isPseudo()) {
                return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            };
            if ((_hf.name.__slice__((1 : stdgo.GoInt)) : stdgo.GoString) == (_pseudo)) {
                return _hf.value?.__copy__();
            };
        };
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
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
