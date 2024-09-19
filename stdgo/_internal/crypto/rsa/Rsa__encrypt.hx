package stdgo._internal.crypto.rsa;
function _encrypt(_pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>, _plaintext:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        stdgo._internal.crypto.internal.boring.Boring_unreachable.unreachable();
        var __tmp__ = _internal.crypto.internal.bigmod.Bigmod_newModulusFromBig.newModulusFromBig(_pub.n), n:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var __tmp__ = _internal.crypto.internal.bigmod.Bigmod_newNat.newNat().setBytes(_plaintext, n), _m:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var _e = (_pub.e : stdgo.GoUInt);
        return { _0 : _internal.crypto.internal.bigmod.Bigmod_newNat.newNat().expShort(_m, _e, n).bytes(n), _1 : (null : stdgo.Error) };
    }
