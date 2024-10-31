package stdgo._internal.crypto.rsa;
function generateMultiPrimeKey(_random:stdgo._internal.io.Io_Reader.Reader, _nprimes:stdgo.GoInt, _bits:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>; var _1 : stdgo.Error; } {
        stdgo._internal.internal.Macro.controlFlow({
            stdgo._internal.crypto.internal.randutil.Randutil_maybeReadByte.maybeReadByte(_random);
            if ((((false && stdgo.Go.toInterface(_random) == (stdgo.Go.toInterface(stdgo.Go.asInterface((0 : stdgo._internal.crypto.internal.boring.Boring_T_randReader.T_randReader)))) : Bool) && _nprimes == ((2 : stdgo.GoInt)) : Bool) && (((_bits == ((2048 : stdgo.GoInt)) || _bits == ((3072 : stdgo.GoInt)) : Bool) || (_bits == (4096 : stdgo.GoInt)) : Bool)) : Bool)) {
                var __tmp__ = stdgo._internal.crypto.internal.boring.Boring_generateKeyRSA.generateKeyRSA(_bits), _bN:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt = __tmp__._0, _bE:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt = __tmp__._1, _bD:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt = __tmp__._2, _bP:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt = __tmp__._3, _bQ:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt = __tmp__._4, _bDp:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt = __tmp__._5, _bDq:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt = __tmp__._6, _bQinv:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt = __tmp__._7, _err:stdgo.Error = __tmp__._8;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
                var n = _internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bN);
                var e = _internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bE);
                var d = _internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bD);
                var p = _internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bP);
                var q = _internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bQ);
                var dp = _internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bDp);
                var dq = _internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bDq);
                var qinv = _internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bQinv);
                var _e64 = (e.int64() : stdgo.GoInt64);
                if ((!e.isInt64() || (((_e64 : stdgo.GoInt) : stdgo.GoInt64) != _e64) : Bool)) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: generated key exponent too large" : stdgo.GoString)) };
                };
                var __tmp__ = _internal.crypto.internal.bigmod.Bigmod_newModulusFromBig.newModulusFromBig(n), _mn:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
                var __tmp__ = _internal.crypto.internal.bigmod.Bigmod_newModulusFromBig.newModulusFromBig(p), _mp:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
                var __tmp__ = _internal.crypto.internal.bigmod.Bigmod_newModulusFromBig.newModulusFromBig(q), _mq:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
                var _key = (stdgo.Go.setRef(({ publicKey : ({ n : n, e : (_e64 : stdgo.GoInt) } : stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey), d : d, primes : (new stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>>(2, 2, ...[p, q]) : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>>), precomputed : ({ dp : dp, dq : dq, qinv : qinv, crtvalues : (new stdgo.Slice<stdgo._internal.crypto.rsa.Rsa_CRTValue.CRTValue>((0 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > 0 ? (0 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.rsa.Rsa_CRTValue.CRTValue)]) : stdgo.Slice<stdgo._internal.crypto.rsa.Rsa_CRTValue.CRTValue>), _n : _mn, _p : _mp, _q : _mq } : stdgo._internal.crypto.rsa.Rsa_PrecomputedValues.PrecomputedValues) } : stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>);
                return { _0 : _key, _1 : (null : stdgo.Error) };
            };
            var _priv = (stdgo.Go.setRef(({} : stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>);
            _priv.publicKey.e = (65537 : stdgo.GoInt);
            if ((_nprimes < (2 : stdgo.GoInt) : Bool)) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: GenerateMultiPrimeKey: nprimes must be >= 2" : stdgo.GoString)) };
            };
            if ((_bits < (64 : stdgo.GoInt) : Bool)) {
                var _primeLimit = (((1i64 : stdgo.GoUInt64) << ((_bits / _nprimes : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt64) : stdgo.GoFloat64);
                var _pi = (_primeLimit / ((stdgo._internal.math.Math_log.log(_primeLimit) - (1 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                _pi = (_pi / (4 : stdgo.GoFloat64) : stdgo.GoFloat64);
                _pi = (_pi / (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                if ((_pi <= (_nprimes : stdgo.GoFloat64) : Bool)) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: too few primes of given length to generate an RSA key" : stdgo.GoString)) };
                };
            };
            var _primes = (new stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>>((_nprimes : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>>);
            @:label("NextSetOfPrimes") while (true) {
                var _todo = (_bits : stdgo.GoInt);
                if ((_nprimes >= (7 : stdgo.GoInt) : Bool)) {
                    _todo = (_todo + ((((_nprimes - (2 : stdgo.GoInt) : stdgo.GoInt)) / (5 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                };
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < _nprimes : Bool)) {
                        var _err:stdgo.Error = (null : stdgo.Error);
{
                            var __tmp__ = stdgo._internal.crypto.rand.Rand_prime.prime(_random, (_todo / ((_nprimes - _i : stdgo.GoInt)) : stdgo.GoInt));
                            _primes[(_i : stdgo.GoInt)] = __tmp__._0;
                            _err = __tmp__._1;
                        };
if (_err != null) {
                            return { _0 : null, _1 : _err };
                        };
_todo = (_todo - (_primes[(_i : stdgo.GoInt)].bitLen()) : stdgo.GoInt);
                        _i++;
                    };
                };
                for (_i => _prime in _primes) {
                    {
                        var _j = (0 : stdgo.GoInt);
                        while ((_j < _i : Bool)) {
                            if (_prime.cmp(_primes[(_j : stdgo.GoInt)]) == ((0 : stdgo.GoInt))) {
                                @:jump("NextSetOfPrimes") {
                                    _j++;
                                    continue;
                                };
                            };
                            _j++;
                        };
                    };
                };
                var _n = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).set(stdgo._internal.crypto.rsa.Rsa__bigOne._bigOne);
                var _totient = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).set(stdgo._internal.crypto.rsa.Rsa__bigOne._bigOne);
                var _pminus1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
                for (__0 => _prime in _primes) {
                    _n.mul(_n, _prime);
                    _pminus1.sub(_prime, stdgo._internal.crypto.rsa.Rsa__bigOne._bigOne);
                    _totient.mul(_totient, _pminus1);
                };
                if (_n.bitLen() != (_bits)) {
                    @:jump("NextSetOfPrimes") continue;
                };
                _priv.d = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
                var _e = stdgo._internal.math.big.Big_newInt.newInt((_priv.publicKey.e : stdgo.GoInt64));
                var _ok = _priv.d.modInverse(_e, _totient);
                if (_ok != null && ((_ok : Dynamic).__nil__ == null || !(_ok : Dynamic).__nil__)) {
                    _priv.primes = _primes;
                    _priv.publicKey.n = _n;
                    break;
                };
            };
            _priv.precompute();
            return { _0 : _priv, _1 : (null : stdgo.Error) };
        });
    }
