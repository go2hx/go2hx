package stdgo._internal.crypto.tls;
function _negotiateALPN(_serverProtos:stdgo.Slice<stdgo.GoString>, _clientProtos:stdgo.Slice<stdgo.GoString>, _quic:Bool):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        if (((_serverProtos.length == (0 : stdgo.GoInt)) || (_clientProtos.length == (0 : stdgo.GoInt)) : Bool)) {
            if ((_quic && (_serverProtos.length != (0 : stdgo.GoInt)) : Bool)) {
                return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("tls: client did not request an application protocol" : stdgo.GoString)) };
            };
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
        };
        var _http11fallback:Bool = false;
        for (__65 => _s in _serverProtos) {
            for (__66 => _c in _clientProtos) {
                if (_s == (_c)) {
                    return { _0 : _s?.__copy__(), _1 : (null : stdgo.Error) };
                };
                if (((_s == ("h2" : stdgo.GoString)) && (_c == ("http/1.1" : stdgo.GoString)) : Bool)) {
                    _http11fallback = true;
                };
            };
        };
        if (_http11fallback) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
        };
        return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("tls: client requested unsupported application protocols (%s)" : stdgo.GoString), stdgo.Go.toInterface(_clientProtos)) };
    }
