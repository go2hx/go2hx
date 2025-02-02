package stdgo._internal.math.big;
function _umax32(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32):stdgo.GoUInt32 {
        if ((_x > _y : Bool)) {
            return _x;
        };
        return _y;
    }
