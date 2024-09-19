package stdgo._internal.net.http;
function _fixTrailer(_header:stdgo._internal.net.http.Http_Header.Header, _chunked:Bool):{ var _0 : stdgo._internal.net.http.Http_Header.Header; var _1 : stdgo.Error; } {
        var __tmp__ = (_header != null && _header.exists(("Trailer" : stdgo.GoString)) ? { _0 : _header[("Trailer" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), _vv:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        if (!_chunked) {
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        _header.del(("Trailer" : stdgo.GoString));
        var _trailer = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header);
        var _err:stdgo.Error = (null : stdgo.Error);
        for (__143 => _v in _vv) {
            stdgo._internal.net.http.Http__foreachHeaderElement._foreachHeaderElement(_v?.__copy__(), function(_key:stdgo.GoString):Void {
                _key = stdgo._internal.net.http.Http_canonicalHeaderKey.canonicalHeaderKey(_key?.__copy__())?.__copy__();
                {
                    final __value__ = _key;
                    if (__value__ == (("Transfer-Encoding" : stdgo.GoString)) || __value__ == (("Trailer" : stdgo.GoString)) || __value__ == (("Content-Length" : stdgo.GoString))) {
                        if (_err == null) {
                            _err = stdgo._internal.net.http.Http__badStringError._badStringError(("bad trailer key" : stdgo.GoString), _key?.__copy__());
                            return;
                        };
                    };
                };
                _trailer[_key] = (null : stdgo.Slice<stdgo.GoString>);
            });
        };
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        if ((_trailer.length) == ((0 : stdgo.GoInt))) {
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        return { _0 : _trailer, _1 : (null : stdgo.Error) };
    }
