package stdgo._internal.math.bits;
function rotateLeft8(_x:stdgo.GoUInt8, _k:stdgo.GoInt):stdgo.GoUInt8 {
        {};
        var _s = ((_k : stdgo.GoUInt) & (7u32 : stdgo.GoUInt) : stdgo.GoUInt);
        return ((_x << _s : stdgo.GoUInt8) | (_x >> (((8u32 : stdgo.GoUInt) - _s : stdgo.GoUInt)) : stdgo.GoUInt8) : stdgo.GoUInt8);
    }
