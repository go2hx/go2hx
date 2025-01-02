package stdgo._internal.net.http;
function _fixLength(_isResponse:Bool, _status:stdgo.GoInt, _requestMethod:stdgo.GoString, _header:stdgo._internal.net.http.Http_Header.Header, _chunked:Bool):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        var _isRequest = (!_isResponse : Bool);
        var _contentLens = (_header[("Content-Length" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>));
        if (((_contentLens.length) > (1 : stdgo.GoInt) : Bool)) {
            var _first = (stdgo._internal.net.textproto.Textproto_trimString.trimString(_contentLens[(0 : stdgo.GoInt)]?.__copy__())?.__copy__() : stdgo.GoString);
            for (__137 => _ct in (_contentLens.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>)) {
                if (_first != (stdgo._internal.net.textproto.Textproto_trimString.trimString(_ct?.__copy__()))) {
                    return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("http: message cannot contain multiple Content-Length headers; got %q" : stdgo.GoString), stdgo.Go.toInterface(_contentLens)) };
                };
            };
            _header.del(("Content-Length" : stdgo.GoString));
            _header.add(("Content-Length" : stdgo.GoString), _first?.__copy__());
            _contentLens = (_header[("Content-Length" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>));
        };
        if ((_isResponse && stdgo._internal.net.http.Http__noResponseBodyExpected._noResponseBodyExpected(_requestMethod?.__copy__()) : Bool)) {
            return { _0 : (0i64 : stdgo.GoInt64), _1 : (null : stdgo.Error) };
        };
        if ((_status / (100 : stdgo.GoInt) : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            return { _0 : (0i64 : stdgo.GoInt64), _1 : (null : stdgo.Error) };
        };
        {
            final __value__ = _status;
            if (__value__ == ((204 : stdgo.GoInt)) || __value__ == ((304 : stdgo.GoInt))) {
                return { _0 : (0i64 : stdgo.GoInt64), _1 : (null : stdgo.Error) };
            };
        };
        if (_chunked) {
            return { _0 : (-1i64 : stdgo.GoInt64), _1 : (null : stdgo.Error) };
        };
        var _cl:stdgo.GoString = ("" : stdgo.GoString);
        if ((_contentLens.length) == ((1 : stdgo.GoInt))) {
            _cl = stdgo._internal.net.textproto.Textproto_trimString.trimString(_contentLens[(0 : stdgo.GoInt)]?.__copy__())?.__copy__();
        };
        if (_cl != (stdgo.Go.str())) {
            var __tmp__ = stdgo._internal.net.http.Http__parseContentLength._parseContentLength(_cl?.__copy__()), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (-1i64 : stdgo.GoInt64), _1 : _err };
            };
            return { _0 : _n, _1 : (null : stdgo.Error) };
        };
        _header.del(("Content-Length" : stdgo.GoString));
        if (_isRequest) {
            return { _0 : (0i64 : stdgo.GoInt64), _1 : (null : stdgo.Error) };
        };
        return { _0 : (-1i64 : stdgo.GoInt64), _1 : (null : stdgo.Error) };
    }
