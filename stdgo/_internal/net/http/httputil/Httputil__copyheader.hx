package stdgo._internal.net.http.httputil;
function _copyHeader(_dst:stdgo._internal.net.http.Http_header.Header, _src:stdgo._internal.net.http.Http_header.Header):Void {
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L282"
        for (_k => _vv in _src) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L283"
            for (__0 => _v in _vv) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L284"
                _dst.add(_k?.__copy__(), _v?.__copy__());
            };
        };
    }
