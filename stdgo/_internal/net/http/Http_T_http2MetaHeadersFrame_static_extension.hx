package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2MetaHeadersFrame_asInterface) class T_http2MetaHeadersFrame_static_extension {
    @:keep
    @:tdfield
    static public function _checkPseudos( _mh:stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>):stdgo.Error {
        @:recv var _mh:stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame> = _mh;
        var __0:Bool = false, __1:Bool = false;
var _isResponse = __1, _isRequest = __0;
        var _pf = @:check2r _mh.pseudoFields();
        for (_i => _hf in _pf) {
            {
                final __value__ = _hf.name;
                if (__value__ == ((":method" : stdgo.GoString)) || __value__ == ((":path" : stdgo.GoString)) || __value__ == ((":scheme" : stdgo.GoString)) || __value__ == ((":authority" : stdgo.GoString))) {
                    _isRequest = true;
                } else if (__value__ == ((":status" : stdgo.GoString))) {
                    _isResponse = true;
                } else {
                    return stdgo.Go.asInterface((_hf.name : stdgo._internal.net.http.Http_T_http2pseudoHeaderError.T_http2pseudoHeaderError));
                };
            };
            for (__31217 => _hf2 in (_pf.__slice__(0, _i) : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField>)) {
                if (_hf.name == (_hf2.name)) {
                    return stdgo.Go.asInterface((_hf.name : stdgo._internal.net.http.Http_T_http2duplicatePseudoHeaderError.T_http2duplicatePseudoHeaderError));
                };
            };
        };
        if ((_isRequest && _isResponse : Bool)) {
            return stdgo._internal.net.http.Http__http2errMixPseudoHeaderTypes._http2errMixPseudoHeaderTypes;
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function pseudoFields( _mh:stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>):stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField> {
        @:recv var _mh:stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame> = _mh;
        for (_i => _hf in (@:checkr _mh ?? throw "null pointer dereference").fields) {
            if (!_hf.isPseudo()) {
                return ((@:checkr _mh ?? throw "null pointer dereference").fields.__slice__(0, _i) : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField>);
            };
        };
        return (@:checkr _mh ?? throw "null pointer dereference").fields;
    }
    @:keep
    @:tdfield
    static public function regularFields( _mh:stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>):stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField> {
        @:recv var _mh:stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame> = _mh;
        for (_i => _hf in (@:checkr _mh ?? throw "null pointer dereference").fields) {
            if (!_hf.isPseudo()) {
                return ((@:checkr _mh ?? throw "null pointer dereference").fields.__slice__(_i) : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField>);
            };
        };
        return (null : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField>);
    }
    @:keep
    @:tdfield
    static public function pseudoValue( _mh:stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>, _pseudo:stdgo.GoString):stdgo.GoString {
        @:recv var _mh:stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame> = _mh;
        for (__31217 => _hf in (@:checkr _mh ?? throw "null pointer dereference").fields) {
            if (!_hf.isPseudo()) {
                return stdgo.Go.str()?.__copy__();
            };
            if ((_hf.name.__slice__((1 : stdgo.GoInt)) : stdgo.GoString) == (_pseudo)) {
                return _hf.value?.__copy__();
            };
        };
        return stdgo.Go.str()?.__copy__();
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _writeDebug( __self__:stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame, _0:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>):Void return @:_5 __self__._writeDebug(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _invalidate( __self__:stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame):Void return @:_5 __self__._invalidate();
    @:embedded
    @:embeddededffieldsffun
    public static function _checkValid( __self__:stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame):Void return @:_5 __self__._checkValid();
    @:embedded
    @:embeddededffieldsffun
    public static function string( __self__:stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame):stdgo.GoString return @:_5 __self__.string();
    @:embedded
    @:embeddededffieldsffun
    public static function streamEnded( __self__:stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame):Bool return @:_5 __self__.streamEnded();
    @:embedded
    @:embeddededffieldsffun
    public static function headersEnded( __self__:stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame):Bool return @:_5 __self__.headersEnded();
    @:embedded
    @:embeddededffieldsffun
    public static function headerBlockFragment( __self__:stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.headerBlockFragment();
    @:embedded
    @:embeddededffieldsffun
    public static function header( __self__:stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame):stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader return @:_5 __self__.header();
    @:embedded
    @:embeddededffieldsffun
    public static function hasPriority( __self__:stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame):Bool return @:_5 __self__.hasPriority();
}
