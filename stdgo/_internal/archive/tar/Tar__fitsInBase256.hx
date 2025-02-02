package stdgo._internal.archive.tar;
function _fitsInBase256(_n:stdgo.GoInt, _x:stdgo.GoInt64):Bool {
        var _binBits = (((_n - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) * (8u32 : stdgo.GoUInt) : stdgo.GoUInt);
        return ((_n >= (9 : stdgo.GoInt) : Bool) || (((_x >= ((-1i64 : stdgo.GoInt64) << _binBits : stdgo.GoInt64) : Bool) && (_x < ((1i64 : stdgo.GoInt64) << _binBits : stdgo.GoInt64) : Bool) : Bool)) : Bool);
    }
