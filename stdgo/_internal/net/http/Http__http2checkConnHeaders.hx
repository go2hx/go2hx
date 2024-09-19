package stdgo._internal.net.http;
function _http2checkConnHeaders(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo.Error {
        {
            var _v = (_req.header.get(("Upgrade" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_v != (stdgo.Go.str())) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("http2: invalid Upgrade request header: %q" : stdgo.GoString), stdgo.Go.toInterface((_req.header[("Upgrade" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>))));
            };
        };
        {
            var _vv = (_req.header[("Transfer-Encoding" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>));
            if ((((_vv.length) > (0 : stdgo.GoInt) : Bool) && ((((_vv.length) > (1 : stdgo.GoInt) : Bool) || (_vv[(0 : stdgo.GoInt)] != (stdgo.Go.str()) && _vv[(0 : stdgo.GoInt)] != (("chunked" : stdgo.GoString)) : Bool) : Bool)) : Bool)) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("http2: invalid Transfer-Encoding request header: %q" : stdgo.GoString), stdgo.Go.toInterface(_vv));
            };
        };
        {
            var _vv = (_req.header[("Connection" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>));
            if ((((_vv.length) > (0 : stdgo.GoInt) : Bool) && ((((_vv.length) > (1 : stdgo.GoInt) : Bool) || ((_vv[(0 : stdgo.GoInt)] != (stdgo.Go.str()) && !stdgo._internal.net.http.Http__http2asciiEqualFold._http2asciiEqualFold(_vv[(0 : stdgo.GoInt)]?.__copy__(), ("close" : stdgo.GoString)) : Bool) && !stdgo._internal.net.http.Http__http2asciiEqualFold._http2asciiEqualFold(_vv[(0 : stdgo.GoInt)]?.__copy__(), ("keep-alive" : stdgo.GoString)) : Bool) : Bool)) : Bool)) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("http2: invalid Connection request header: %q" : stdgo.GoString), stdgo.Go.toInterface(_vv));
            };
        };
        return (null : stdgo.Error);
    }
