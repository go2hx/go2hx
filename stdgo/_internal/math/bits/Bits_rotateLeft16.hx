package stdgo._internal.math.bits;
function rotateLeft16(_x:stdgo.GoUInt16, _k:stdgo.GoInt):stdgo.GoUInt16 {
        {};
        var _s = ((_k : stdgo.GoUInt) & (15u32 : stdgo.GoUInt) : stdgo.GoUInt);
        return ((_x << _s : stdgo.GoUInt16) | (_x >> (((16u32 : stdgo.GoUInt) - _s : stdgo.GoUInt)) : stdgo.GoUInt16) : stdgo.GoUInt16);
    }
