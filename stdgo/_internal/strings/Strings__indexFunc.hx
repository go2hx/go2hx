package stdgo._internal.strings;
function _indexFunc(_s:stdgo.GoString, _f:stdgo.GoInt32 -> Bool, _truth:Bool):stdgo.GoInt {
        for (_i => _r in _s) {
            if (_f(_r) == (_truth)) {
                return _i;
            };
        };
        return (-1 : stdgo.GoInt);
    }
