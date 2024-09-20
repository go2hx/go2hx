package stdgo._internal.net.http;
function _sumRangesSize(_ranges:stdgo.Slice<stdgo._internal.net.http.Http_T_httpRange.T_httpRange>):stdgo.GoInt64 {
        var _size = (0 : stdgo.GoInt64);
        for (__132 => _ra in _ranges) {
            _size = (_size + (_ra._length) : stdgo.GoInt64);
        };
        return _size;
    }
