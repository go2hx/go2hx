package stdgo._internal.net.http.httptest;
function _strSliceContainsPrefix(_v:stdgo.Slice<stdgo.GoString>, _pre:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L95"
        for (__0 => _s in _v) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L96"
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_s?.__copy__(), _pre?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L97"
                return true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptest/server.go#L100"
        return false;
    }
