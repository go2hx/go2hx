package stdgo._internal.crypto.internal.bigmod;
function newNat():stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> {
        var _limbs = (new stdgo.Slice<stdgo.GoUInt>((0 : stdgo.GoInt).toBasic(), (64 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/bigmod/nat.go#L72"
        return (stdgo.Go.setRef((new stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat(_limbs) : stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat)) : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>);
    }
