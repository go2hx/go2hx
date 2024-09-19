package stdgo._internal.net.http;
function _copyValues(_dst:stdgo._internal.net.url.Url_Values.Values, _src:stdgo._internal.net.url.Url_Values.Values):Void {
        for (_k => _vs in _src) {
            _dst[_k] = ((_dst[_k] ?? (null : stdgo.Slice<stdgo.GoString>)).__append__(...(_vs : Array<stdgo.GoString>)));
        };
    }
