package stdgo._internal.net.http.httputil;
function _removeHopByHopHeaders(_h:stdgo._internal.net.http.Http_header.Header):Void {
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L568"
        for (__0 => _f in (_h[("Connection" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>))) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L569"
            for (__1 => _sf in stdgo._internal.strings.Strings_split.split(_f?.__copy__(), ("," : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L570"
                {
                    _sf = stdgo._internal.net.textproto.Textproto_trimstring.trimString(_sf?.__copy__())?.__copy__();
                    if (_sf != ((stdgo.Go.str() : stdgo.GoString))) {
                        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L571"
                        _h.del(_sf?.__copy__());
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L578"
        for (__1 => _f in stdgo._internal.net.http.httputil.Httputil__hopheaders._hopHeaders) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L579"
            _h.del(_f?.__copy__());
        };
    }
