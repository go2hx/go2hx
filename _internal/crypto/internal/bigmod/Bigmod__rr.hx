package _internal.crypto.internal.bigmod;
function _rr(_m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>):stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> {
        var _rr = _internal.crypto.internal.bigmod.Bigmod_newNat.newNat().expandFor(_m);
        var _n = (_rr._limbs.length : stdgo.GoInt);
        _rr._limbs[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (1u32 : stdgo.GoUInt);
        {
            var _i = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i < ((2 : stdgo.GoInt) * _n : stdgo.GoInt) : Bool), _i++, {
                _rr._shiftIn((0u32 : stdgo.GoUInt), _m);
            });
        };
        return _rr;
    }
