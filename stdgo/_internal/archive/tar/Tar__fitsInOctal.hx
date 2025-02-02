package stdgo._internal.archive.tar;
function _fitsInOctal(_n:stdgo.GoInt, _x:stdgo.GoInt64):Bool {
        var _octBits = (((_n - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) * (3u32 : stdgo.GoUInt) : stdgo.GoUInt);
        return ((_x >= (0i64 : stdgo.GoInt64) : Bool) && (((_n >= (22 : stdgo.GoInt) : Bool) || (_x < ((1i64 : stdgo.GoInt64) << _octBits : stdgo.GoInt64) : Bool) : Bool)) : Bool);
    }
