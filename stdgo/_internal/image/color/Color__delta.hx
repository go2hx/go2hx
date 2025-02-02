package stdgo._internal.image.color;
function _delta(_x:stdgo.GoUInt8, _y:stdgo.GoUInt8):stdgo.GoUInt8 {
        if ((_x >= _y : Bool)) {
            return (_x - _y : stdgo.GoUInt8);
        };
        return (_y - _x : stdgo.GoUInt8);
    }
