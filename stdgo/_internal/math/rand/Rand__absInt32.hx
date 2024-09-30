package stdgo._internal.math.rand;
function _absInt32(_i:stdgo.GoInt32):stdgo.GoUInt32 {
        if ((_i < (0 : stdgo.GoInt32) : Bool)) {
            return (-_i : stdgo.GoUInt32);
        };
        return (_i : stdgo.GoUInt32);
    }
