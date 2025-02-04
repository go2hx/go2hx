package stdgo._internal.crypto.rsa;
function _decrypt(_priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _check:Bool):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        if ((((@:checkr _priv ?? throw "null pointer dereference").primes.length) <= (2 : stdgo.GoInt) : Bool)) {
            stdgo._internal.crypto.internal.boring.Boring_unreachable.unreachable();
        };
        var __0:stdgo.Error = (null : stdgo.Error), __1:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> = (null : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>), __2:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> = (null : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat>), __3:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus> = (null : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>), __4 = stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat();
var _t0 = __4, n = __3, _c = __2, _m = __1, _err = __0;
        if (((@:checkr _priv ?? throw "null pointer dereference").precomputed._n == null || ((@:checkr _priv ?? throw "null pointer dereference").precomputed._n : Dynamic).__nil__)) {
            {
                var __tmp__ = stdgo._internal.crypto.internal.bigmod.Bigmod_newmodulusfrombig.newModulusFromBig((@:checkr _priv ?? throw "null pointer dereference").publicKey.n);
                n = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.rsa.Rsa_errdecryption.errDecryption };
            };
            {
                var __tmp__ = @:check2r stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat().setBytes(_ciphertext, n);
                _c = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.rsa.Rsa_errdecryption.errDecryption };
            };
            _m = @:check2r stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat().exp(_c, @:check2r (@:checkr _priv ?? throw "null pointer dereference").d.bytes(), n);
        } else {
            n = (@:checkr _priv ?? throw "null pointer dereference").precomputed._n;
            var __0 = (@:checkr _priv ?? throw "null pointer dereference").precomputed._p, __1 = (@:checkr _priv ?? throw "null pointer dereference").precomputed._q;
var q = __1, p = __0;
            var __tmp__ = @:check2r stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat().setBytes(@:check2r (@:checkr _priv ?? throw "null pointer dereference").precomputed.qinv.bytes(), p), qinv:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.rsa.Rsa_errdecryption.errDecryption };
            };
            {
                var __tmp__ = @:check2r stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat().setBytes(_ciphertext, n);
                _c = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.rsa.Rsa_errdecryption.errDecryption };
            };
            _m = @:check2r stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat().exp(@:check2r _t0.mod(_c, p), @:check2r (@:checkr _priv ?? throw "null pointer dereference").precomputed.dp.bytes(), p);
            var _m2 = @:check2r stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat().exp(@:check2r _t0.mod(_c, q), @:check2r (@:checkr _priv ?? throw "null pointer dereference").precomputed.dq.bytes(), q);
            @:check2r _m.sub(@:check2r _t0.mod(_m2, p), p);
            @:check2r _m.mul(qinv, p);
            @:check2r @:check2r _m.expandFor(n).mul(@:check2r _t0.mod(@:check2r q.nat(), n), n);
            @:check2r _m.add(@:check2r _m2.expandFor(n), n);
        };
        if (_check) {
            var _c1 = @:check2r stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat().expShort(_m, ((@:checkr _priv ?? throw "null pointer dereference").publicKey.e : stdgo.GoUInt), n);
            if (@:check2r _c1.equal(_c) != ((1u32 : stdgo._internal.crypto.internal.bigmod.Bigmod_t_choice.T_choice))) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.rsa.Rsa_errdecryption.errDecryption };
            };
        };
        return { _0 : @:check2r _m.bytes(n), _1 : (null : stdgo.Error) };
    }
