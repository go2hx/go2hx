package stdgo._internal.net.http.httptest;
function _strSliceContainsPrefix(_v:stdgo.Slice<stdgo.GoString>, _pre:stdgo.GoString):Bool {
        for (__0 => _s in _v) {
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_s?.__copy__(), _pre?.__copy__())) {
                return true;
            };
        };
        return false;
    }
