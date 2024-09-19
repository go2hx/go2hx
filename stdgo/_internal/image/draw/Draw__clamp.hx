package stdgo._internal.image.draw;
function _clamp(_i:stdgo.GoInt32):stdgo.GoInt32 {
        if ((_i < (0 : stdgo.GoInt32) : Bool)) {
            return (0 : stdgo.GoInt32);
        };
        if ((_i > (65535 : stdgo.GoInt32) : Bool)) {
            return (65535 : stdgo.GoInt32);
        };
        return _i;
    }
