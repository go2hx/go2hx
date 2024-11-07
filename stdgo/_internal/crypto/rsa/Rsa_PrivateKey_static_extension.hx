package stdgo._internal.crypto.rsa;
@:keep @:allow(stdgo._internal.crypto.rsa.Rsa.PrivateKey_asInterface) class PrivateKey_static_extension {
    @:keep
    static public function precompute( _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>):Void {
        @:recv var _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey> = _priv;
        if (((_priv.precomputed._n == null || (_priv.precomputed._n : Dynamic).__nil__) && (_priv.primes.length == (2 : stdgo.GoInt)) : Bool)) {
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                var __tmp__ = _internal.crypto.internal.bigmod.Bigmod_newModulusFromBig.newModulusFromBig(_priv.publicKey.n);
                _priv.precomputed._n = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return;
            };
            {
                var __tmp__ = _internal.crypto.internal.bigmod.Bigmod_newModulusFromBig.newModulusFromBig(_priv.primes[(0 : stdgo.GoInt)]);
                _priv.precomputed._p = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                _priv.precomputed._n = null;
                return;
            };
            {
                var __tmp__ = _internal.crypto.internal.bigmod.Bigmod_newModulusFromBig.newModulusFromBig(_priv.primes[(1 : stdgo.GoInt)]);
                _priv.precomputed._q = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                {
                    final __tmp__0 = null;
                    final __tmp__1 = null;
                    _priv.precomputed._n = __tmp__0;
                    _priv.precomputed._p = __tmp__1;
                };
                return;
            };
        };
        if ((_priv.precomputed.dp != null && ((_priv.precomputed.dp : Dynamic).__nil__ == null || !(_priv.precomputed.dp : Dynamic).__nil__))) {
            return;
        };
        _priv.precomputed.dp = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).sub(_priv.primes[(0 : stdgo.GoInt)], stdgo._internal.crypto.rsa.Rsa__bigOne._bigOne);
        _priv.precomputed.dp.mod(_priv.d, _priv.precomputed.dp);
        _priv.precomputed.dq = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).sub(_priv.primes[(1 : stdgo.GoInt)], stdgo._internal.crypto.rsa.Rsa__bigOne._bigOne);
        _priv.precomputed.dq.mod(_priv.d, _priv.precomputed.dq);
        _priv.precomputed.qinv = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).modInverse(_priv.primes[(1 : stdgo.GoInt)], _priv.primes[(0 : stdgo.GoInt)]);
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).mul(_priv.primes[(0 : stdgo.GoInt)], _priv.primes[(1 : stdgo.GoInt)]);
        _priv.precomputed.crtvalues = (new stdgo.Slice<stdgo._internal.crypto.rsa.Rsa_CRTValue.CRTValue>(((_priv.primes.length) - (2 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((_priv.primes.length) - (2 : stdgo.GoInt) : stdgo.GoInt).toBasic() > 0 ? ((_priv.primes.length) - (2 : stdgo.GoInt) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.rsa.Rsa_CRTValue.CRTValue)]) : stdgo.Slice<stdgo._internal.crypto.rsa.Rsa_CRTValue.CRTValue>);
        {
            var _i = (2 : stdgo.GoInt);
            while ((_i < (_priv.primes.length) : Bool)) {
                var _prime = _priv.primes[(_i : stdgo.GoInt)];
var _values = (stdgo.Go.setRef(_priv.precomputed.crtvalues[(_i - (2 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_CRTValue.CRTValue>);
_values.exp = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).sub(_prime, stdgo._internal.crypto.rsa.Rsa__bigOne._bigOne);
_values.exp.mod(_priv.d, _values.exp);
_values.r = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).set(_r);
_values.coeff = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).modInverse(_r, _prime);
_r.mul(_r, _prime);
                _i++;
            };
        };
    }
    @:keep
    static public function validate( _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>):stdgo.Error {
        @:recv var _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey> = _priv;
        {
            var _err = (stdgo._internal.crypto.rsa.Rsa__checkPub._checkPub((stdgo.Go.setRef(_priv.publicKey) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var _modulus = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).set(stdgo._internal.crypto.rsa.Rsa__bigOne._bigOne);
        for (__0 => _prime in _priv.primes) {
            if ((_prime.cmp(stdgo._internal.crypto.rsa.Rsa__bigOne._bigOne) <= (0 : stdgo.GoInt) : Bool)) {
                return stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: invalid prime value" : stdgo.GoString));
            };
            _modulus.mul(_modulus, _prime);
        };
        if (_modulus.cmp(_priv.publicKey.n) != ((0 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: invalid modulus" : stdgo.GoString));
        };
        var _congruence = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _de = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setInt64((_priv.publicKey.e : stdgo.GoInt64));
        _de.mul(_de, _priv.d);
        for (__1 => _prime in _priv.primes) {
            var _pminus1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).sub(_prime, stdgo._internal.crypto.rsa.Rsa__bigOne._bigOne);
            _congruence.mod(_de, _pminus1);
            if (_congruence.cmp(stdgo._internal.crypto.rsa.Rsa__bigOne._bigOne) != ((0 : stdgo.GoInt))) {
                return stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: invalid exponents" : stdgo.GoString));
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function decrypt( _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>, _rand:stdgo._internal.io.Io_Reader.Reader, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _opts:stdgo._internal.crypto.Crypto_DecrypterOpts.DecrypterOpts):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey> = _priv;
        var _plaintext = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        if (_opts == null) {
            return stdgo._internal.crypto.rsa.Rsa_decryptPKCS1v15.decryptPKCS1v15(_rand, _priv, _ciphertext);
        };
        {
            final __type__ = _opts;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_OAEPOptions.OAEPOptions>))) {
                var _opts:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_OAEPOptions.OAEPOptions> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_OAEPOptions.OAEPOptions>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_OAEPOptions.OAEPOptions>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_OAEPOptions.OAEPOptions>) : __type__.__underlying__().value;
                if (_opts.mgfhash == ((0u32 : stdgo._internal.crypto.Crypto_Hash.Hash))) {
                    return stdgo._internal.crypto.rsa.Rsa__decryptOAEP._decryptOAEP(_opts.hash.new_(), _opts.hash.new_(), _rand, _priv, _ciphertext, _opts.label);
                } else {
                    return stdgo._internal.crypto.rsa.Rsa__decryptOAEP._decryptOAEP(_opts.hash.new_(), _opts.mgfhash.new_(), _rand, _priv, _ciphertext, _opts.label);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PKCS1v15DecryptOptions.PKCS1v15DecryptOptions>))) {
                var _opts:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PKCS1v15DecryptOptions.PKCS1v15DecryptOptions> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PKCS1v15DecryptOptions.PKCS1v15DecryptOptions>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PKCS1v15DecryptOptions.PKCS1v15DecryptOptions>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PKCS1v15DecryptOptions.PKCS1v15DecryptOptions>) : __type__.__underlying__().value;
                {
                    var _l = (_opts.sessionKeyLen : stdgo.GoInt);
                    if ((_l > (0 : stdgo.GoInt) : Bool)) {
                        _plaintext = (new stdgo.Slice<stdgo.GoUInt8>((_l : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                        {
                            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_rand, _plaintext), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                            };
                        };
                        {
                            var _err = (stdgo._internal.crypto.rsa.Rsa_decryptPKCS1v15SessionKey.decryptPKCS1v15SessionKey(_rand, _priv, _ciphertext, _plaintext) : stdgo.Error);
                            if (_err != null) {
                                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                            };
                        };
                        return { _0 : _plaintext, _1 : (null : stdgo.Error) };
                    } else {
                        return stdgo._internal.crypto.rsa.Rsa_decryptPKCS1v15.decryptPKCS1v15(_rand, _priv, _ciphertext);
                    };
                };
            } else {
                var _opts:stdgo._internal.crypto.Crypto_DecrypterOpts.DecrypterOpts = __type__?.__underlying__();
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: invalid options for Decrypt" : stdgo.GoString)) };
            };
        };
    }
    @:keep
    static public function sign( _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>, _rand:stdgo._internal.io.Io_Reader.Reader, _digest:stdgo.Slice<stdgo.GoUInt8>, _opts:stdgo._internal.crypto.Crypto_SignerOpts.SignerOpts):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey> = _priv;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_opts) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions>)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PSSOptions.PSSOptions>), _1 : false };
            }, _pssOpts = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return stdgo._internal.crypto.rsa.Rsa_signPSS.signPSS(_rand, _priv, _pssOpts.hash, _digest, _pssOpts);
            };
        };
        return stdgo._internal.crypto.rsa.Rsa_signPKCS1v15.signPKCS1v15(_rand, _priv, _opts.hashFunc(), _digest);
    }
    @:keep
    static public function equal( _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>, _x:stdgo._internal.crypto.Crypto_PrivateKey.PrivateKey):Bool {
        @:recv var _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey> = _priv;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_x : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>), _1 : false };
        }, _xx = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return false;
        };
        if ((!_priv.publicKey.equal(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_xx.publicKey) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>)))) || !stdgo._internal.crypto.rsa.Rsa__bigIntEqual._bigIntEqual(_priv.d, _xx.d) : Bool)) {
            return false;
        };
        if ((_priv.primes.length) != ((_xx.primes.length))) {
            return false;
        };
        for (_i => _ in _priv.primes) {
            if (!stdgo._internal.crypto.rsa.Rsa__bigIntEqual._bigIntEqual(_priv.primes[(_i : stdgo.GoInt)], _xx.primes[(_i : stdgo.GoInt)])) {
                return false;
            };
        };
        return true;
    }
    @:keep
    static public function public_( _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>):stdgo._internal.crypto.Crypto_PublicKey.PublicKey {
        @:recv var _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey> = _priv;
        return stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_priv.publicKey) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>)));
    }
    @:embedded
    public static function size( __self__:stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey):stdgo.GoInt return __self__.size();
}
