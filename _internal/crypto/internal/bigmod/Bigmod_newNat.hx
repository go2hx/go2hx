package _internal.crypto.internal.bigmod;
function newNat():stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> {
        var _limbs = (new stdgo.Slice<stdgo.GoUInt>((0 : stdgo.GoInt).toBasic(), (64 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt>);
        return (stdgo.Go.setRef((new _internal.crypto.internal.bigmod.Bigmod_Nat.Nat(_limbs) : _internal.crypto.internal.bigmod.Bigmod_Nat.Nat)) : stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
    }
