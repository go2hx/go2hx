package stdgo._internal.crypto.internal.bigmod;
function _addMulVVW2048(_z:stdgo.Pointer<stdgo.GoUInt>, _x:stdgo.Pointer<stdgo.GoUInt>, _y:stdgo.GoUInt):stdgo.GoUInt {
        var _c = (0 : stdgo.GoUInt);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/bigmod/nat_noasm.go#L20"
        return _c = stdgo._internal.crypto.internal.bigmod.Bigmod__addmulvvw._addMulVVW(stdgo._internal.unsafe.Unsafe_slice.slice(_z, (64 : stdgo.GoInt)), stdgo._internal.unsafe.Unsafe_slice.slice(_x, (64 : stdgo.GoInt)), _y);
    }
