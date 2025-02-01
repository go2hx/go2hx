package stdgo._internal.crypto.rsa;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.big.Big;
import stdgo._internal.crypto.internal.randutil.Randutil;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.internal.boring.bbig.Bbig;
import stdgo._internal.crypto.internal.bigmod.Bigmod;
import stdgo._internal.math.Math;
import stdgo._internal.crypto.rand.Rand;
function _encrypt(_pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>, _plaintext:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        stdgo._internal.crypto.internal.boring.Boring_unreachable.unreachable();
        var __tmp__ = stdgo._internal.crypto.internal.bigmod.Bigmod_newModulusFromBig.newModulusFromBig((@:checkr _pub ?? throw "null pointer dereference").n), n:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var __tmp__ = @:check2r stdgo._internal.crypto.internal.bigmod.Bigmod_newNat.newNat().setBytes(_plaintext, n), _m:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Nat.Nat> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var _e = ((@:checkr _pub ?? throw "null pointer dereference").e : stdgo.GoUInt);
        return { _0 : @:check2r @:check2r stdgo._internal.crypto.internal.bigmod.Bigmod_newNat.newNat().expShort(_m, _e, n).bytes(n), _1 : (null : stdgo.Error) };
    }
