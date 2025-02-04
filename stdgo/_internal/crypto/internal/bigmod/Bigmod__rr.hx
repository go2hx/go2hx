package stdgo._internal.crypto.internal.bigmod;
function _rr(_m:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>):stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> {
        var _rr = @:check2r stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat().expandFor(_m);
        var _n = ((@:checkr _rr ?? throw "null pointer dereference")._limbs.length : stdgo.GoInt);
        (@:checkr _rr ?? throw "null pointer dereference")._limbs[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (1u32 : stdgo.GoUInt);
        {
            var _i = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i < ((2 : stdgo.GoInt) * _n : stdgo.GoInt) : Bool)) {
                @:check2r _rr._shiftIn((0u32 : stdgo.GoUInt), _m);
                _i++;
            };
        };
        return _rr;
    }
