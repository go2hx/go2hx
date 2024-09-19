package stdgo._internal.net.http;
function _mergeSetHeader(_dst:stdgo.Ref<stdgo._internal.net.http.Http_Header.Header>, _src:stdgo._internal.net.http.Http_Header.Header):Void {
        if ((_dst : stdgo._internal.net.http.Http_Header.Header) == null) {
            (_dst : stdgo._internal.net.http.Http_Header.Header).__setData__(_src);
            return;
        };
        for (_k => _vv in _src) {
            ((_dst : stdgo._internal.net.http.Http_Header.Header))[_k] = _vv;
        };
    }
