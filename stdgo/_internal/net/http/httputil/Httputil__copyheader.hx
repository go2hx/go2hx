package stdgo._internal.net.http.httputil;
function _copyHeader(_dst:stdgo._internal.net.http.Http_header.Header, _src:stdgo._internal.net.http.Http_header.Header):Void {
        for (_k => _vv in _src) {
            for (__0 => _v in _vv) {
                _dst.add(_k?.__copy__(), _v?.__copy__());
            };
        };
    }
