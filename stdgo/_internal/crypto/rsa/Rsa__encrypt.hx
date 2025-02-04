package stdgo._internal.crypto.rsa;
function _encrypt(_pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>, _plaintext:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        stdgo._internal.crypto.internal.boring.Boring_unreachable.unreachable();
        var __tmp__ = stdgo._internal.crypto.internal.bigmod.Bigmod_newmodulusfrombig.newModulusFromBig((@:checkr _pub ?? throw "null pointer dereference").n), n:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var __tmp__ = @:check2r stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat().setBytes(_plaintext, n), _m:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        var _e = ((@:checkr _pub ?? throw "null pointer dereference").e : stdgo.GoUInt);
        return { _0 : @:check2r @:check2r stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat().expShort(_m, _e, n).bytes(n), _1 : (null : stdgo.Error) };
    }
