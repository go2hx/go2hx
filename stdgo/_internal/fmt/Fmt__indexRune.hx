package stdgo._internal.fmt;
function _indexRune(_s:stdgo.GoString, _r:stdgo.GoInt32):stdgo.GoInt {
        for (_i => _c in _s) {
            if (_c == (_r)) {
                return _i;
            };
        };
        return (-1 : stdgo.GoInt);
    }
