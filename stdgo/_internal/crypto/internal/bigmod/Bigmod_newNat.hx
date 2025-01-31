package stdgo._internal.crypto.internal.bigmod;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.errors.Errors;
import stdgo._internal.unsafe.Unsafe;
function newNat():stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat> {
        var _limbs = (new stdgo.Slice<stdgo.GoUInt>((0 : stdgo.GoInt).toBasic(), (64 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt>);
        return (stdgo.Go.setRef((new stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat(_limbs) : stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat)) : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat>);
    }
