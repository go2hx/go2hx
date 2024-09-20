package stdgo._internal.net.http;
function _strSliceContains(_ss:stdgo.Slice<stdgo.GoString>, _s:stdgo.GoString):Bool {
        for (__132 => _v in _ss) {
            if (_v == (_s)) {
                return true;
            };
        };
        return false;
    }
