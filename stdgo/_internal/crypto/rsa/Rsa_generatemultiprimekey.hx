package stdgo._internal.crypto.rsa;
function generateMultiPrimeKey(_random:stdgo._internal.io.Io_reader.Reader, _nprimes:stdgo.GoInt, _bits:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>; var _1 : stdgo.Error; } {
        var _pminus1_34:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _mq_20:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus> = (null : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        var _bDp_5:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = (new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0) : stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt);
        var _bP_3:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = (new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0) : stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt);
        var _bD_2:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = (new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0) : stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt);
        var _bN_0:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = (new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0) : stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt);
        var _totient_33:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _i_27:stdgo.GoInt = (0 : stdgo.GoInt);
        var _todo_26:stdgo.GoInt = (0 : stdgo.GoInt);
        var qinv_16:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var dq_15:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _bQinv_7:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = (new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0) : stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt);
        var _bQ_4:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = (new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0) : stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt);
        var _bE_1:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = (new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0) : stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt);
        var _e_37:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _mn_18:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus> = (null : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        var q_13:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _bDq_6:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = (new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0) : stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt);
        var _prime_30:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _primeLimit_23:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _mp_19:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus> = (null : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        var n_9:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _primes_25:stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>);
        var _ok_38:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _j_31:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_29:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_28:stdgo.Error = (null : stdgo.Error);
        var nextSetOfPrimesBreak = false;
        var _pi_24:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _key_21:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey> = (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>);
        var _err_8:stdgo.Error = (null : stdgo.Error);
        var _iterator_4069295_35:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_32:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _priv_22:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey> = (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>);
        var dp_14:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var p_12:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var d_11:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _prime_36:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _e64_17:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var e_10:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L295"
                    stdgo._internal.crypto.internal.randutil.Randutil_maybereadbyte.maybeReadByte(_random);
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L297"
                    if ((((false && stdgo.Go.toInterface(_random) == (stdgo.Go.toInterface(stdgo.Go.asInterface((0 : stdgo._internal.crypto.internal.boring.Boring_t_randreader.T_randReader)))) : Bool) && _nprimes == ((2 : stdgo.GoInt)) : Bool) && (((_bits == ((2048 : stdgo.GoInt)) || _bits == ((3072 : stdgo.GoInt)) : Bool) || (_bits == (4096 : stdgo.GoInt)) : Bool)) : Bool)) {
                        _gotoNext = 4066448i64;
                    } else {
                        _gotoNext = 4067501i64;
                    };
                } else if (__value__ == (4066448i64)) {
                    {
                        var __tmp__ = stdgo._internal.crypto.internal.boring.Boring_generatekeyrsa.generateKeyRSA(_bits);
                        _bN_0 = @:tmpset0 __tmp__._0;
                        _bE_1 = @:tmpset0 __tmp__._1;
                        _bD_2 = @:tmpset0 __tmp__._2;
                        _bP_3 = @:tmpset0 __tmp__._3;
                        _bQ_4 = @:tmpset0 __tmp__._4;
                        _bDp_5 = @:tmpset0 __tmp__._5;
                        _bDq_6 = @:tmpset0 __tmp__._6;
                        _bQinv_7 = @:tmpset0 __tmp__._7;
                        _err_8 = @:tmpset0 __tmp__._8;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L300"
                    if (_err_8 != null) {
                        _gotoNext = 4066540i64;
                    } else {
                        _gotoNext = 4066567i64;
                    };
                } else if (__value__ == (4066540i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L301"
                    return { _0 : null, _1 : _err_8 };
                    _gotoNext = 4066567i64;
                } else if (__value__ == (4066567i64)) {
                    n_9 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bN_0);
                    e_10 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bE_1);
                    d_11 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bD_2);
                    p_12 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bP_3);
                    q_13 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bQ_4);
                    dp_14 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bDp_5);
                    dq_15 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bDq_6);
                    qinv_16 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bQinv_7);
                    _e64_17 = e_10.int64();
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L312"
                    if ((!e_10.isInt64() || (((_e64_17 : stdgo.GoInt) : stdgo.GoInt64) != _e64_17) : Bool)) {
                        _gotoNext = 4066798i64;
                    } else {
                        _gotoNext = 4066881i64;
                    };
                } else if (__value__ == (4066798i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L313"
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: generated key exponent too large" : stdgo.GoString)) };
                    _gotoNext = 4066881i64;
                } else if (__value__ == (4066881i64)) {
                    {
                        var __tmp__ = stdgo._internal.crypto.internal.bigmod.Bigmod_newmodulusfrombig.newModulusFromBig(n_9);
                        _mn_18 = @:tmpset0 __tmp__._0;
                        _err_8 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L317"
                    if (_err_8 != null) {
                        _gotoNext = 4066936i64;
                    } else {
                        _gotoNext = 4066963i64;
                    };
                } else if (__value__ == (4066936i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L318"
                    return { _0 : null, _1 : _err_8 };
                    _gotoNext = 4066963i64;
                } else if (__value__ == (4066963i64)) {
                    {
                        var __tmp__ = stdgo._internal.crypto.internal.bigmod.Bigmod_newmodulusfrombig.newModulusFromBig(p_12);
                        _mp_19 = @:tmpset0 __tmp__._0;
                        _err_8 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L321"
                    if (_err_8 != null) {
                        _gotoNext = 4067018i64;
                    } else {
                        _gotoNext = 4067045i64;
                    };
                } else if (__value__ == (4067018i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L322"
                    return { _0 : null, _1 : _err_8 };
                    _gotoNext = 4067045i64;
                } else if (__value__ == (4067045i64)) {
                    {
                        var __tmp__ = stdgo._internal.crypto.internal.bigmod.Bigmod_newmodulusfrombig.newModulusFromBig(q_13);
                        _mq_20 = @:tmpset0 __tmp__._0;
                        _err_8 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L325"
                    if (_err_8 != null) {
                        _gotoNext = 4067100i64;
                    } else {
                        _gotoNext = 4067128i64;
                    };
                } else if (__value__ == (4067100i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L326"
                    return { _0 : null, _1 : _err_8 };
                    _gotoNext = 4067128i64;
                } else if (__value__ == (4067128i64)) {
                    _key_21 = (stdgo.Go.setRef(({ publicKey : ({  } : stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey), primes : (new stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>(2, 2, ...[p_12, q_13]) : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>), precomputed : ({ cRTValues : (new stdgo.Slice<stdgo._internal.crypto.rsa.Rsa_crtvalue.CRTValue>((0 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > 0 ? (0 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.rsa.Rsa_crtvalue.CRTValue)]) : stdgo.Slice<stdgo._internal.crypto.rsa.Rsa_crtvalue.CRTValue>), _n : _mn_18, _p : _mp_19, _q : _mq_20 } : stdgo._internal.crypto.rsa.Rsa_precomputedvalues.PrecomputedValues) } : stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>);
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L346"
                    return { _0 : _key_21, _1 : (null : stdgo.Error) };
                    _gotoNext = 4067501i64;
                } else if (__value__ == (4067501i64)) {
                    _priv_22 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>);
                    (@:checkr _priv_22 ?? throw "null pointer dereference").publicKey.e = (65537 : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L352"
                    if ((_nprimes < (2 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4067558i64;
                    } else {
                        _gotoNext = 4067649i64;
                    };
                } else if (__value__ == (4067558i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L353"
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: GenerateMultiPrimeKey: nprimes must be >= 2" : stdgo.GoString)) };
                    _gotoNext = 4067649i64;
                } else if (__value__ == (4067649i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L356"
                    if ((_bits < (64 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4067662i64;
                    } else {
                        _gotoNext = 4068180i64;
                    };
                } else if (__value__ == (4067662i64)) {
                    _primeLimit_23 = (((1i64 : stdgo.GoUInt64) << ((_bits / _nprimes : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt64) : stdgo.GoFloat64);
                    _pi_24 = (_primeLimit_23 / ((stdgo._internal.math.Math_log.log(_primeLimit_23) - (1 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _pi_24 = (_pi_24 / ((4 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _pi_24 = (_pi_24 / ((2 : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L366"
                    if ((_pi_24 <= (_nprimes : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 4068074i64;
                    } else {
                        _gotoNext = 4068180i64;
                    };
                } else if (__value__ == (4068074i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L367"
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: too few primes of given length to generate an RSA key" : stdgo.GoString)) };
                    _gotoNext = 4068180i64;
                } else if (__value__ == (4068180i64)) {
                    _primes_25 = (new stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>((_nprimes : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>);
                    _gotoNext = 4068217i64;
                } else if (__value__ == (4068217i64)) {
                    0i64;
                    nextSetOfPrimesBreak = false;
                    _gotoNext = 4068235i64;
                } else if (__value__ == (4068235i64)) {
                    //"file://#L0"
                    if (!nextSetOfPrimesBreak) {
                        _gotoNext = 4068239i64;
                    } else {
                        _gotoNext = 4069797i64;
                    };
                } else if (__value__ == (4068239i64)) {
                    _todo_26 = _bits;
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L387"
                    if ((_nprimes >= (7 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4068770i64;
                    } else {
                        _gotoNext = 4068807i64;
                    };
                } else if (__value__ == (4068770i64)) {
                    _todo_26 = (_todo_26 + ((((_nprimes - (2 : stdgo.GoInt) : stdgo.GoInt)) / (5 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 4068807i64;
                } else if (__value__ == (4068807i64)) {
                    _i_27 = (0 : stdgo.GoInt);
                    _gotoNext = 4068807i64;
                    //"file://#L0"
                    if ((_i_27 < _nprimes : Bool)) {
                        _gotoNext = 4068836i64;
                    } else {
                        _gotoNext = 4069041i64;
                    };
                } else if (__value__ == (4068836i64)) {
                    {
                        var __tmp__ = stdgo._internal.crypto.rand.Rand_prime.prime(_random, (_todo_26 / ((_nprimes - _i_27 : stdgo.GoInt)) : stdgo.GoInt));
                        _primes_25[(_i_27 : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                        _err_28 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L393"
                    if (_err_28 != null) {
                        _gotoNext = 4068929i64;
                    } else {
                        _gotoNext = 4068959i64;
                    };
                } else if (__value__ == (4068929i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L394"
                    return { _0 : null, _1 : _err_28 };
                    _gotoNext = 4068959i64;
                } else if (__value__ == (4068959i64)) {
                    _todo_26 = (_todo_26 - (_primes_25[(_i_27 : stdgo.GoInt)].bitLen()) : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L390"
                    _i_27++;
                    _gotoNext = 4068807i64;
                } else if (__value__ == (4069041i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L400"
                    if ((0i64 : stdgo.GoInt) < (_primes_25.length)) {
                        _gotoNext = 4069177i64;
                    } else {
                        _gotoNext = 4069183i64;
                    };
                } else if (__value__ == (4069045i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L400"
                    _i_29++;
                    _gotoNext = 4069178i64;
                } else if (__value__ == (4069070i64)) {
                    _prime_30 = _primes_25[(_i_29 : stdgo.GoInt)];
                    _j_31 = (0 : stdgo.GoInt);
                    _gotoNext = 4069075i64;
                } else if (__value__ == (4069075i64)) {
                    //"file://#L0"
                    if ((_j_31 < _i_29 : Bool)) {
                        _gotoNext = 4069098i64;
                    } else {
                        _gotoNext = 4069045i64;
                    };
                } else if (__value__ == (4069094i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L401"
                    _j_31++;
                    _gotoNext = 4069075i64;
                } else if (__value__ == (4069098i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L402"
                    if (_prime_30.cmp(_primes_25[(_j_31 : stdgo.GoInt)]) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 4069133i64;
                    } else {
                        _gotoNext = 4069094i64;
                    };
                } else if (__value__ == (4069133i64)) {
                    _gotoNext = 4068235i64;
                } else if (__value__ == (4069177i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = _primes_25[(0i64 : stdgo.GoInt)];
                        _i_29 = @:binopAssign __tmp__0;
                        _prime_30 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 4069178i64;
                } else if (__value__ == (4069178i64)) {
                    //"file://#L0"
                    if (_i_29 < (_primes_25.length)) {
                        _gotoNext = 4069070i64;
                    } else {
                        _gotoNext = 4069183i64;
                    };
                } else if (__value__ == (4069183i64)) {
                    _n_32 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(stdgo._internal.crypto.rsa.Rsa__bigone._bigOne);
                    _totient_33 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(stdgo._internal.crypto.rsa.Rsa__bigone._bigOne);
                    _pminus1_34 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L411"
                    if ((0i64 : stdgo.GoInt) < (_primes_25.length)) {
                        _gotoNext = 4069393i64;
                    } else {
                        _gotoNext = 4069398i64;
                    };
                } else if (__value__ == (4069308i64)) {
                    _prime_36 = _primes_25[(_iterator_4069295_35 : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L412"
                    _n_32.mul(_n_32, _prime_36);
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L413"
                    _pminus1_34.sub(_prime_36, stdgo._internal.crypto.rsa.Rsa__bigone._bigOne);
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L414"
                    _totient_33.mul(_totient_33, _pminus1_34);
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L411"
                    _iterator_4069295_35++;
                    _gotoNext = 4069394i64;
                } else if (__value__ == (4069393i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = _primes_25[(0i64 : stdgo.GoInt)];
                        _iterator_4069295_35 = @:binopAssign __tmp__0;
                        _prime_36 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 4069394i64;
                } else if (__value__ == (4069394i64)) {
                    //"file://#L0"
                    if (_iterator_4069295_35 < (_primes_25.length)) {
                        _gotoNext = 4069308i64;
                    } else {
                        _gotoNext = 4069398i64;
                    };
                } else if (__value__ == (4069398i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L416"
                    if (_n_32.bitLen() != (_bits)) {
                        _gotoNext = 4069420i64;
                    } else {
                        _gotoNext = 4069630i64;
                    };
                } else if (__value__ == (4069420i64)) {
                    _gotoNext = 4068235i64;
                } else if (__value__ == (4069630i64)) {
                    (@:checkr _priv_22 ?? throw "null pointer dereference").d = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                    _e_37 = stdgo._internal.math.big.Big_newint.newInt(((@:checkr _priv_22 ?? throw "null pointer dereference").publicKey.e : stdgo.GoInt64));
                    _ok_38 = (@:checkr _priv_22 ?? throw "null pointer dereference").d.modInverse(_e_37, _totient_33);
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L427"
                    if (({
                        final value = _ok_38;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        _gotoNext = 4069739i64;
                    } else {
                        _gotoNext = 4068235i64;
                    };
                } else if (__value__ == (4069739i64)) {
                    (@:checkr _priv_22 ?? throw "null pointer dereference").primes = _primes_25;
                    (@:checkr _priv_22 ?? throw "null pointer dereference").publicKey.n = _n_32;
                    _gotoNext = 4069797i64;
                } else if (__value__ == (4069797i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L434"
                    _priv_22.precompute();
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L435"
                    return { _0 : _priv_22, _1 : (null : stdgo.Error) };
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
