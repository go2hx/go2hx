package _internal.crypto.internal.bigmod;
function _addMulVVW1536(_z:stdgo.Pointer<stdgo.GoUInt>, _x:stdgo.Pointer<stdgo.GoUInt>, _y:stdgo.GoUInt):stdgo.GoUInt {
        var _c = (0 : stdgo.GoUInt);
        return _internal.crypto.internal.bigmod.Bigmod__addMulVVW._addMulVVW(stdgo._internal.unsafe.Unsafe_slice.slice(_z, (48 : stdgo.GoInt)), stdgo._internal.unsafe.Unsafe_slice.slice(_x, (48 : stdgo.GoInt)), _y);
    }