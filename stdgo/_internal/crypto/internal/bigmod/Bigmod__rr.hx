package stdgo._internal.crypto.internal.bigmod;
function _rr(_m:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>):stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> {
        var _rr = stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat().expandFor(_m);
        var _n = ((@:checkr _rr ?? throw "null pointer dereference")._limbs.length : stdgo.GoInt);
        (@:checkr _rr ?? throw "null pointer dereference")._limbs[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (1u32 : stdgo.GoUInt);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/bigmod/nat.go#L326"
        {
            var _i = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i < ((2 : stdgo.GoInt) * _n : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/bigmod/nat.go#L327"
                _rr._shiftIn((0u32 : stdgo.GoUInt), _m);
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/bigmod/nat.go#L329"
        return _rr;
    }
