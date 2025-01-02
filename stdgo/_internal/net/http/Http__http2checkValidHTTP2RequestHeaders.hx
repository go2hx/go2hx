package stdgo._internal.net.http;
function _http2checkValidHTTP2RequestHeaders(_h:stdgo._internal.net.http.Http_Header.Header):stdgo.Error {
        for (__137 => _k in stdgo._internal.net.http.Http__http2connHeaders._http2connHeaders) {
            {
                var __tmp__ = (_h != null && _h.exists(_k?.__copy__()) ? { _0 : _h[_k?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __138:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("request header %q is not valid in HTTP/2" : stdgo.GoString), stdgo.Go.toInterface(_k));
                };
            };
        };
        var _te = (_h[("Te" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>));
        if ((((_te.length) > (0 : stdgo.GoInt) : Bool) && ((((_te.length) > (1 : stdgo.GoInt) : Bool) || (((_te[(0 : stdgo.GoInt)] != ("trailers" : stdgo.GoString)) && (_te[(0 : stdgo.GoInt)] != stdgo.Go.str()) : Bool)) : Bool)) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("request header \"TE\" may only be \"trailers\" in HTTP/2" : stdgo.GoString));
        };
        return (null : stdgo.Error);
    }
