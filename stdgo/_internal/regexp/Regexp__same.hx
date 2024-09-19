package stdgo._internal.regexp;
function _same(_x:stdgo.Slice<stdgo.GoInt>, _y:stdgo.Slice<stdgo.GoInt>):Bool {
        if ((_x.length) != ((_y.length))) {
            return false;
        };
        for (_i => _xi in _x) {
            if (_xi != (_y[(_i : stdgo.GoInt)])) {
                return false;
            };
        };
        return true;
    }
