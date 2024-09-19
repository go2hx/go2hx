package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_transferReader_asInterface) class T_transferReader_static_extension {
    @:keep
    static public function _parseTransferEncoding( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_transferReader.T_transferReader>):stdgo.Error {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_transferReader.T_transferReader> = _t;
        var __tmp__ = (_t.header != null && _t.header.exists(("Transfer-Encoding" : stdgo.GoString)) ? { _0 : _t.header[("Transfer-Encoding" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), _raw:stdgo.Slice<stdgo.GoString> = __tmp__._0, _present:Bool = __tmp__._1;
        if (!_present) {
            return (null : stdgo.Error);
        };
        if (_t.header != null) _t.header.remove(("Transfer-Encoding" : stdgo.GoString));
        if (!_t._protoAtLeast((1 : stdgo.GoInt), (1 : stdgo.GoInt))) {
            return (null : stdgo.Error);
        };
        if ((_raw.length) != ((1 : stdgo.GoInt))) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_T_unsupportedTEError.T_unsupportedTEError(stdgo._internal.fmt.Fmt_sprintf.sprintf(("too many transfer encodings: %q" : stdgo.GoString), stdgo.Go.toInterface(_raw))?.__copy__()) : stdgo._internal.net.http.Http_T_unsupportedTEError.T_unsupportedTEError)) : stdgo.Ref<stdgo._internal.net.http.Http_T_unsupportedTEError.T_unsupportedTEError>));
        };
        if (!stdgo._internal.net.http.internal.ascii.Ascii_equalFold.equalFold(_raw[(0 : stdgo.GoInt)]?.__copy__(), ("chunked" : stdgo.GoString))) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_T_unsupportedTEError.T_unsupportedTEError(stdgo._internal.fmt.Fmt_sprintf.sprintf(("unsupported transfer encoding: %q" : stdgo.GoString), stdgo.Go.toInterface(_raw[(0 : stdgo.GoInt)]))?.__copy__()) : stdgo._internal.net.http.Http_T_unsupportedTEError.T_unsupportedTEError)) : stdgo.Ref<stdgo._internal.net.http.Http_T_unsupportedTEError.T_unsupportedTEError>));
        };
        if (_t.header != null) _t.header.remove(("Content-Length" : stdgo.GoString));
        _t.chunked = true;
        return (null : stdgo.Error);
    }
    @:keep
    static public function _protoAtLeast( _t:stdgo.Ref<stdgo._internal.net.http.Http_T_transferReader.T_transferReader>, _m:stdgo.GoInt, _n:stdgo.GoInt):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_T_transferReader.T_transferReader> = _t;
        return ((_t.protoMajor > _m : Bool) || (((_t.protoMajor == _m) && (_t.protoMinor >= _n : Bool) : Bool)) : Bool);
    }
}
