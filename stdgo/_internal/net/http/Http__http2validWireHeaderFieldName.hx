package stdgo._internal.net.http;
function _http2validWireHeaderFieldName(_v:stdgo.GoString):Bool {
        if ((_v.length) == ((0 : stdgo.GoInt))) {
            return false;
        };
        for (__132 => _r in _v) {
            if (!_internal.golang_dot_org.x.net.http.httpguts.Httpguts_isTokenRune.isTokenRune(_r)) {
                return false;
            };
            if ((((65 : stdgo.GoInt32) <= _r : Bool) && (_r <= (90 : stdgo.GoInt32) : Bool) : Bool)) {
                return false;
            };
        };
        return true;
    }
