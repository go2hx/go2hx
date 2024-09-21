package _internal.vendor.golang_dot_org.x.net.http.httpguts;
function validHeaderFieldName(_v:stdgo.GoString):Bool {
        if ((_v.length) == ((0 : stdgo.GoInt))) {
            return false;
        };
        for (__0 => _r in _v) {
            if (!_internal.vendor.golang_dot_org.x.net.http.httpguts.Httpguts_isTokenRune.isTokenRune(_r)) {
                return false;
            };
        };
        return true;
    }
