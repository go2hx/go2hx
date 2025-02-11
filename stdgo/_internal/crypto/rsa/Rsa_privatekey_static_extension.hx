package stdgo._internal.crypto.rsa;
@:keep @:allow(stdgo._internal.crypto.rsa.Rsa.PrivateKey_asInterface) class PrivateKey_static_extension {
    @:keep
    @:tdfield
    static public function precompute( _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>):Void {
        @:recv var _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey> = _priv;
        if ((((@:checkr _priv ?? throw "null pointer dereference").precomputed._n == null || ((@:checkr _priv ?? throw "null pointer dereference").precomputed._n : Dynamic).__nil__) && ((@:checkr _priv ?? throw "null pointer dereference").primes.length == (2 : stdgo.GoInt)) : Bool)) {
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                var __tmp__ = stdgo._internal.crypto.internal.bigmod.Bigmod_newmodulusfrombig.newModulusFromBig((@:checkr _priv ?? throw "null pointer dereference").publicKey.n);
                (@:checkr _priv ?? throw "null pointer dereference").precomputed._n = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return;
            };
            {
                var __tmp__ = stdgo._internal.crypto.internal.bigmod.Bigmod_newmodulusfrombig.newModulusFromBig((@:checkr _priv ?? throw "null pointer dereference").primes[(0 : stdgo.GoInt)]);
                (@:checkr _priv ?? throw "null pointer dereference").precomputed._p = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                (@:checkr _priv ?? throw "null pointer dereference").precomputed._n = null;
                return;
            };
            {
                var __tmp__ = stdgo._internal.crypto.internal.bigmod.Bigmod_newmodulusfrombig.newModulusFromBig((@:checkr _priv ?? throw "null pointer dereference").primes[(1 : stdgo.GoInt)]);
                (@:checkr _priv ?? throw "null pointer dereference").precomputed._q = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                {
                    final __tmp__0 = null;
                    final __tmp__1 = null;
                    (@:checkr _priv ?? throw "null pointer dereference").precomputed._n = __tmp__0;
                    (@:checkr _priv ?? throw "null pointer dereference").precomputed._p = __tmp__1;
                };
                return;
            };
        };
        if (((@:checkr _priv ?? throw "null pointer dereference").precomputed.dp != null && (((@:checkr _priv ?? throw "null pointer dereference").precomputed.dp : Dynamic).__nil__ == null || !((@:checkr _priv ?? throw "null pointer dereference").precomputed.dp : Dynamic).__nil__))) {
            return;
        };
        (@:checkr _priv ?? throw "null pointer dereference").precomputed.dp = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).sub((@:checkr _priv ?? throw "null pointer dereference").primes[(0 : stdgo.GoInt)], stdgo._internal.crypto.rsa.Rsa__bigone._bigOne);
        @:check2r (@:checkr _priv ?? throw "null pointer dereference").precomputed.dp.mod((@:checkr _priv ?? throw "null pointer dereference").d, (@:checkr _priv ?? throw "null pointer dereference").precomputed.dp);
        (@:checkr _priv ?? throw "null pointer dereference").precomputed.dq = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).sub((@:checkr _priv ?? throw "null pointer dereference").primes[(1 : stdgo.GoInt)], stdgo._internal.crypto.rsa.Rsa__bigone._bigOne);
        @:check2r (@:checkr _priv ?? throw "null pointer dereference").precomputed.dq.mod((@:checkr _priv ?? throw "null pointer dereference").d, (@:checkr _priv ?? throw "null pointer dereference").precomputed.dq);
        (@:checkr _priv ?? throw "null pointer dereference").precomputed.qinv = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).modInverse((@:checkr _priv ?? throw "null pointer dereference").primes[(1 : stdgo.GoInt)], (@:checkr _priv ?? throw "null pointer dereference").primes[(0 : stdgo.GoInt)]);
        var _r = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul((@:checkr _priv ?? throw "null pointer dereference").primes[(0 : stdgo.GoInt)], (@:checkr _priv ?? throw "null pointer dereference").primes[(1 : stdgo.GoInt)]);
        (@:checkr _priv ?? throw "null pointer dereference").precomputed.cRTValues = (new stdgo.Slice<stdgo._internal.crypto.rsa.Rsa_crtvalue.CRTValue>((((@:checkr _priv ?? throw "null pointer dereference").primes.length) - (2 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((((@:checkr _priv ?? throw "null pointer dereference").primes.length) - (2 : stdgo.GoInt) : stdgo.GoInt).toBasic() > 0 ? (((@:checkr _priv ?? throw "null pointer dereference").primes.length) - (2 : stdgo.GoInt) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.rsa.Rsa_crtvalue.CRTValue)]) : stdgo.Slice<stdgo._internal.crypto.rsa.Rsa_crtvalue.CRTValue>);
        {
            var _i = (2 : stdgo.GoInt);
            while ((_i < ((@:checkr _priv ?? throw "null pointer dereference").primes.length) : Bool)) {
                var _prime = (@:checkr _priv ?? throw "null pointer dereference").primes[(_i : stdgo.GoInt)];
var _values = (stdgo.Go.setRef((@:checkr _priv ?? throw "null pointer dereference").precomputed.cRTValues[(_i - (2 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_crtvalue.CRTValue>);
(@:checkr _values ?? throw "null pointer dereference").exp = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).sub(_prime, stdgo._internal.crypto.rsa.Rsa__bigone._bigOne);
@:check2r (@:checkr _values ?? throw "null pointer dereference").exp.mod((@:checkr _priv ?? throw "null pointer dereference").d, (@:checkr _values ?? throw "null pointer dereference").exp);
(@:checkr _values ?? throw "null pointer dereference").r = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(_r);
(@:checkr _values ?? throw "null pointer dereference").coeff = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).modInverse(_r, _prime);
@:check2r _r.mul(_r, _prime);
                _i++;
            };
        };
    }
    @:keep
    @:tdfield
    static public function validate( _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>):stdgo.Error {
        @:recv var _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey> = _priv;
        {
            var _err = (stdgo._internal.crypto.rsa.Rsa__checkpub._checkPub((stdgo.Go.setRef((@:checkr _priv ?? throw "null pointer dereference").publicKey) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var _modulus = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(stdgo._internal.crypto.rsa.Rsa__bigone._bigOne);
        for (__0 => _prime in (@:checkr _priv ?? throw "null pointer dereference").primes) {
            if ((@:check2r _prime.cmp(stdgo._internal.crypto.rsa.Rsa__bigone._bigOne) <= (0 : stdgo.GoInt) : Bool)) {
                return stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: invalid prime value" : stdgo.GoString));
            };
            @:check2r _modulus.mul(_modulus, _prime);
        };
        if (@:check2r _modulus.cmp((@:checkr _priv ?? throw "null pointer dereference").publicKey.n) != ((0 : stdgo.GoInt))) {
            return stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: invalid modulus" : stdgo.GoString));
        };
        var _congruence = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _de = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setInt64(((@:checkr _priv ?? throw "null pointer dereference").publicKey.e : stdgo.GoInt64));
        @:check2r _de.mul(_de, (@:checkr _priv ?? throw "null pointer dereference").d);
        for (__1 => _prime in (@:checkr _priv ?? throw "null pointer dereference").primes) {
            var _pminus1 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).sub(_prime, stdgo._internal.crypto.rsa.Rsa__bigone._bigOne);
            @:check2r _congruence.mod(_de, _pminus1);
            if (@:check2r _congruence.cmp(stdgo._internal.crypto.rsa.Rsa__bigone._bigOne) != ((0 : stdgo.GoInt))) {
                return stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: invalid exponents" : stdgo.GoString));
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function decrypt( _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>, _rand:stdgo._internal.io.Io_reader.Reader, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _opts:stdgo._internal.crypto.Crypto_decrypteropts.DecrypterOpts):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey> = _priv;
        var _plaintext = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        if (_opts == null) {
            return {
                final __tmp__ = stdgo._internal.crypto.rsa.Rsa_decryptpkcs1v15.decryptPKCS1v15(_rand, _priv, _ciphertext);
                _plaintext = __tmp__._0;
                _err = __tmp__._1;
                { _0 : _plaintext, _1 : _err };
            };
        };
        {
            final __type__ = _opts;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_oaepoptions.OAEPOptions>))) {
                var _opts:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_oaepoptions.OAEPOptions> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_oaepoptions.OAEPOptions>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_oaepoptions.OAEPOptions>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_oaepoptions.OAEPOptions>) : __type__.__underlying__().value;
                if ((@:checkr _opts ?? throw "null pointer dereference").mGFHash == ((0u32 : stdgo._internal.crypto.Crypto_hash.Hash))) {
                    return {
                        final __tmp__ = stdgo._internal.crypto.rsa.Rsa__decryptoaep._decryptOAEP((@:checkr _opts ?? throw "null pointer dereference").hash.new_(), (@:checkr _opts ?? throw "null pointer dereference").hash.new_(), _rand, _priv, _ciphertext, (@:checkr _opts ?? throw "null pointer dereference").label);
                        _plaintext = __tmp__._0;
                        _err = __tmp__._1;
                        { _0 : _plaintext, _1 : _err };
                    };
                } else {
                    return {
                        final __tmp__ = stdgo._internal.crypto.rsa.Rsa__decryptoaep._decryptOAEP((@:checkr _opts ?? throw "null pointer dereference").hash.new_(), (@:checkr _opts ?? throw "null pointer dereference").mGFHash.new_(), _rand, _priv, _ciphertext, (@:checkr _opts ?? throw "null pointer dereference").label);
                        _plaintext = __tmp__._0;
                        _err = __tmp__._1;
                        { _0 : _plaintext, _1 : _err };
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pkcs1v15decryptoptions.PKCS1v15DecryptOptions>))) {
                var _opts:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pkcs1v15decryptoptions.PKCS1v15DecryptOptions> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pkcs1v15decryptoptions.PKCS1v15DecryptOptions>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pkcs1v15decryptoptions.PKCS1v15DecryptOptions>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pkcs1v15decryptoptions.PKCS1v15DecryptOptions>) : __type__.__underlying__().value;
                {
                    var _l = ((@:checkr _opts ?? throw "null pointer dereference").sessionKeyLen : stdgo.GoInt);
                    if ((_l > (0 : stdgo.GoInt) : Bool)) {
                        _plaintext = (new stdgo.Slice<stdgo.GoUInt8>((_l : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                        {
                            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_rand, _plaintext), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                return {
                                    final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                                    _plaintext = __tmp__._0;
                                    _err = __tmp__._1;
                                    __tmp__;
                                };
                            };
                        };
                        {
                            var _err = (stdgo._internal.crypto.rsa.Rsa_decryptpkcs1v15sessionkey.decryptPKCS1v15SessionKey(_rand, _priv, _ciphertext, _plaintext) : stdgo.Error);
                            if (_err != null) {
                                return {
                                    final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                                    _plaintext = __tmp__._0;
                                    _err = __tmp__._1;
                                    __tmp__;
                                };
                            };
                        };
                        return {
                            final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : _plaintext, _1 : (null : stdgo.Error) };
                            _plaintext = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    } else {
                        return {
                            final __tmp__ = stdgo._internal.crypto.rsa.Rsa_decryptpkcs1v15.decryptPKCS1v15(_rand, _priv, _ciphertext);
                            _plaintext = __tmp__._0;
                            _err = __tmp__._1;
                            { _0 : _plaintext, _1 : _err };
                        };
                    };
                };
            } else {
                var _opts:stdgo._internal.crypto.Crypto_decrypteropts.DecrypterOpts = __type__?.__underlying__();
                return {
                    final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: invalid options for Decrypt" : stdgo.GoString)) };
                    _plaintext = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function sign( _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>, _rand:stdgo._internal.io.Io_reader.Reader, _digest:stdgo.Slice<stdgo.GoUInt8>, _opts:stdgo._internal.crypto.Crypto_signeropts.SignerOpts):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey> = _priv;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_opts) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions>)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions>), _1 : false };
            }, _pssOpts = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return stdgo._internal.crypto.rsa.Rsa_signpss.signPSS(_rand, _priv, (@:checkr _pssOpts ?? throw "null pointer dereference").hash, _digest, _pssOpts);
            };
        };
        return stdgo._internal.crypto.rsa.Rsa_signpkcs1v15.signPKCS1v15(_rand, _priv, _opts.hashFunc(), _digest);
    }
    @:keep
    @:tdfield
    static public function equal( _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>, _x:stdgo._internal.crypto.Crypto_privatekey.PrivateKey):Bool {
        @:recv var _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey> = _priv;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_x : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>), _1 : false };
        }, _xx = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return false;
        };
        if ((!@:check2 (@:checkr _priv ?? throw "null pointer dereference").publicKey.equal(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _xx ?? throw "null pointer dereference").publicKey) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>)))) || !stdgo._internal.crypto.rsa.Rsa__bigintequal._bigIntEqual((@:checkr _priv ?? throw "null pointer dereference").d, (@:checkr _xx ?? throw "null pointer dereference").d) : Bool)) {
            return false;
        };
        if (((@:checkr _priv ?? throw "null pointer dereference").primes.length) != (((@:checkr _xx ?? throw "null pointer dereference").primes.length))) {
            return false;
        };
        for (_i => _ in (@:checkr _priv ?? throw "null pointer dereference").primes) {
            if (!stdgo._internal.crypto.rsa.Rsa__bigintequal._bigIntEqual((@:checkr _priv ?? throw "null pointer dereference").primes[(_i : stdgo.GoInt)], (@:checkr _xx ?? throw "null pointer dereference").primes[(_i : stdgo.GoInt)])) {
                return false;
            };
        };
        return true;
    }
    @:keep
    @:tdfield
    static public function public_( _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>):stdgo._internal.crypto.Crypto_publickey.PublicKey {
        @:recv var _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey> = _priv;
        return stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _priv ?? throw "null pointer dereference").publicKey) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>)));
    }
    @:embedded
    @:embeddededffieldsffun
    public static function size( __self__:stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey):stdgo.GoInt return @:_5 __self__.size();
}
