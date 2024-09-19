package stdgo._internal.fmt;
function _isSpace(_r:stdgo.GoInt32):Bool {
        if ((_r >= (65536 : stdgo.GoInt32) : Bool)) {
            return false;
        };
        var _rx = (_r : stdgo.GoUInt16);
        for (__0 => _rng in stdgo._internal.fmt.Fmt__space._space) {
            if ((_rx < _rng[(0 : stdgo.GoInt)] : Bool)) {
                return false;
            };
            if ((_rx <= _rng[(1 : stdgo.GoInt)] : Bool)) {
                return true;
            };
        };
        return false;
    }
