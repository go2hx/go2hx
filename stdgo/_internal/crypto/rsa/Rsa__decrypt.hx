package stdgo._internal.crypto.rsa;
function _decrypt(_priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _check:Bool):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        if (((_priv.primes.length) <= (2 : stdgo.GoInt) : Bool)) {
            stdgo._internal.crypto.internal.boring.Boring_unreachable.unreachable();
        };
        var __0:stdgo.Error = (null : stdgo.Error), __1:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> = (null : stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>), __2:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> = (null : stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat>), __3:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus> = (null : stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>), __4:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> = _internal.crypto.internal.bigmod.Bigmod_newNat.newNat();
var _t0 = __4, n = __3, _c = __2, _m = __1, _err = __0;
        if (_priv.precomputed._n == null || (_priv.precomputed._n : Dynamic).__nil__) {
            {
                var __tmp__ = _internal.crypto.internal.bigmod.Bigmod_newModulusFromBig.newModulusFromBig(_priv.publicKey.n);
                n = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.rsa.Rsa_errDecryption.errDecryption };
            };
            {
                var __tmp__ = _internal.crypto.internal.bigmod.Bigmod_newNat.newNat().setBytes(_ciphertext, n);
                _c = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.rsa.Rsa_errDecryption.errDecryption };
            };
            _m = _internal.crypto.internal.bigmod.Bigmod_newNat.newNat().exp(_c, _priv.d.bytes(), n);
        } else {
            n = _priv.precomputed._n;
            var __0 = _priv.precomputed._p, __1 = _priv.precomputed._q;
var q = __1, p = __0;
            var __tmp__ = _internal.crypto.internal.bigmod.Bigmod_newNat.newNat().setBytes(_priv.precomputed.qinv.bytes(), p), qinv:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Nat.Nat> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.rsa.Rsa_errDecryption.errDecryption };
            };
            {
                var __tmp__ = _internal.crypto.internal.bigmod.Bigmod_newNat.newNat().setBytes(_ciphertext, n);
                _c = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.rsa.Rsa_errDecryption.errDecryption };
            };
            _m = _internal.crypto.internal.bigmod.Bigmod_newNat.newNat().exp(_t0.mod(_c, p), _priv.precomputed.dp.bytes(), p);
            var _m2 = _internal.crypto.internal.bigmod.Bigmod_newNat.newNat().exp(_t0.mod(_c, q), _priv.precomputed.dq.bytes(), q);
            _m.sub(_t0.mod(_m2, p), p);
            _m.mul(qinv, p);
            _m.expandFor(n).mul(_t0.mod(q.nat(), n), n);
            _m.add(_m2.expandFor(n), n);
        };
        if (_check) {
            var _c1 = _internal.crypto.internal.bigmod.Bigmod_newNat.newNat().expShort(_m, (_priv.publicKey.e : stdgo.GoUInt), n);
            if (_c1.equal(_c) != ((1u32 : _internal.crypto.internal.bigmod.Bigmod_T_choice.T_choice))) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.rsa.Rsa_errDecryption.errDecryption };
            };
        };
        return { _0 : _m.bytes(n), _1 : (null : stdgo.Error) };
    }
