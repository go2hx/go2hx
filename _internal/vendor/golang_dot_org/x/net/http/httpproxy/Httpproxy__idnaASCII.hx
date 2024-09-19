package _internal.vendor.golang_dot_org.x.net.http.httpproxy;
function _idnaASCII(_v:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        if (_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy__isASCII._isASCII(_v?.__copy__())) {
            return { _0 : _v?.__copy__(), _1 : (null : stdgo.Error) };
        };
        return _internal.golang_dot_org.x.net.idna.Idna_lookup.lookup.toASCII(_v?.__copy__());
    }
