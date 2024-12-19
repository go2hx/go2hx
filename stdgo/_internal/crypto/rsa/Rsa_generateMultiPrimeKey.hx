package stdgo._internal.crypto.rsa;
function generateMultiPrimeKey(_random:stdgo._internal.io.Io_Reader.Reader, _nprimes:stdgo.GoInt, _bits:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>; var _1 : stdgo.Error; } {
        var _mn_4066881:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus> = (null : stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>);
        var _bDq_4066477:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt = new stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt(0, 0);
        var _bDp_4066472:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt = new stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt(0, 0);
        var _prime_4069048:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _err_4068845:stdgo.Error = (null : stdgo.Error);
        var _mq_4067045:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus> = (null : stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>);
        var _mp_4066963:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus> = (null : stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>);
        var _primes_4068180:stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>>);
        var e_4066587:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _bN_4066452:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt = new stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt(0, 0);
        var dp_4066667:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var n_4066567:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _bQ_4066468:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt = new stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt(0, 0);
        var nextSetOfPrimesBreak = false;
        var qinv_4066711:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _ok_4069687:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _key_4067128:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey> = (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>);
        var _e64_4066737:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var p_4066627:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _prime_4069286:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _pminus1_4069253:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _i_4069045:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_4068811:stdgo.GoInt = (0 : stdgo.GoInt);
        var _todo_4068243:stdgo.GoInt = (0 : stdgo.GoInt);
        var dq_4066689:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _bQinv_4066482:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt = new stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt(0, 0);
        var _bE_4066456:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt = new stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt(0, 0);
        var _primeLimit_4067666:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _priv_4067501:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey> = (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>);
        var _bP_4066464:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt = new stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt(0, 0);
        var _bD_4066460:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt = new stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt(0, 0);
        var _e_4069654:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _totient_4069215:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _j_4069079:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_4069295_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var d_4066607:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _pi_4067786:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var q_4066647:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _err_4066489:stdgo.Error = (null : stdgo.Error);
        var _n_4069183:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    stdgo._internal.crypto.internal.randutil.Randutil_maybeReadByte.maybeReadByte(_random);
                    if ((((false && stdgo.Go.toInterface(_random) == (stdgo.Go.toInterface(stdgo.Go.asInterface((0 : stdgo._internal.crypto.internal.boring.Boring_T_randReader.T_randReader)))) : Bool) && _nprimes == ((2 : stdgo.GoInt)) : Bool) && (((_bits == ((2048 : stdgo.GoInt)) || _bits == ((3072 : stdgo.GoInt)) : Bool) || (_bits == (4096 : stdgo.GoInt)) : Bool)) : Bool)) {
                        _gotoNext = 4066448i32;
                    } else {
                        _gotoNext = 4067501i32;
                    };
                } else if (__value__ == (4066448i32)) {
                    {
                        var __tmp__ = stdgo._internal.crypto.internal.boring.Boring_generateKeyRSA.generateKeyRSA(_bits);
                        _bN_4066452 = __tmp__._0;
                        _bE_4066456 = __tmp__._1;
                        _bD_4066460 = __tmp__._2;
                        _bP_4066464 = __tmp__._3;
                        _bQ_4066468 = __tmp__._4;
                        _bDp_4066472 = __tmp__._5;
                        _bDq_4066477 = __tmp__._6;
                        _bQinv_4066482 = __tmp__._7;
                        _err_4066489 = __tmp__._8;
                    };
                    if (_err_4066489 != null) {
                        _gotoNext = 4066540i32;
                    } else {
                        _gotoNext = 4066567i32;
                    };
                } else if (__value__ == (4066540i32)) {
                    return { _0 : null, _1 : _err_4066489 };
                    _gotoNext = 4066567i32;
                } else if (__value__ == (4066567i32)) {
                    n_4066567 = _internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bN_4066452);
                    e_4066587 = _internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bE_4066456);
                    d_4066607 = _internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bD_4066460);
                    p_4066627 = _internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bP_4066464);
                    q_4066647 = _internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bQ_4066468);
                    dp_4066667 = _internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bDp_4066472);
                    dq_4066689 = _internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bDq_4066477);
                    qinv_4066711 = _internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bQinv_4066482);
                    _e64_4066737 = e_4066587.int64();
                    if ((!e_4066587.isInt64() || (((_e64_4066737 : stdgo.GoInt) : stdgo.GoInt64) != _e64_4066737) : Bool)) {
                        _gotoNext = 4066798i32;
                    } else {
                        _gotoNext = 4066881i32;
                    };
                } else if (__value__ == (4066798i32)) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: generated key exponent too large" : stdgo.GoString)) };
                    _gotoNext = 4066881i32;
                } else if (__value__ == (4066881i32)) {
                    {
                        var __tmp__ = _internal.crypto.internal.bigmod.Bigmod_newModulusFromBig.newModulusFromBig(n_4066567);
                        _mn_4066881 = __tmp__._0;
                        _err_4066489 = __tmp__._1;
                    };
                    if (_err_4066489 != null) {
                        _gotoNext = 4066936i32;
                    } else {
                        _gotoNext = 4066963i32;
                    };
                } else if (__value__ == (4066936i32)) {
                    return { _0 : null, _1 : _err_4066489 };
                    _gotoNext = 4066963i32;
                } else if (__value__ == (4066963i32)) {
                    {
                        var __tmp__ = _internal.crypto.internal.bigmod.Bigmod_newModulusFromBig.newModulusFromBig(p_4066627);
                        _mp_4066963 = __tmp__._0;
                        _err_4066489 = __tmp__._1;
                    };
                    if (_err_4066489 != null) {
                        _gotoNext = 4067018i32;
                    } else {
                        _gotoNext = 4067045i32;
                    };
                } else if (__value__ == (4067018i32)) {
                    return { _0 : null, _1 : _err_4066489 };
                    _gotoNext = 4067045i32;
                } else if (__value__ == (4067045i32)) {
                    {
                        var __tmp__ = _internal.crypto.internal.bigmod.Bigmod_newModulusFromBig.newModulusFromBig(q_4066647);
                        _mq_4067045 = __tmp__._0;
                        _err_4066489 = __tmp__._1;
                    };
                    if (_err_4066489 != null) {
                        _gotoNext = 4067100i32;
                    } else {
                        _gotoNext = 4067128i32;
                    };
                } else if (__value__ == (4067100i32)) {
                    return { _0 : null, _1 : _err_4066489 };
                    _gotoNext = 4067128i32;
                } else if (__value__ == (4067128i32)) {
                    _key_4067128 = (stdgo.Go.setRef(({ publicKey : ({  } : stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey), primes : (new stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>>(2, 2, ...[p_4066627, q_4066647]) : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>>), precomputed : ({ crtvalues : (new stdgo.Slice<stdgo._internal.crypto.rsa.Rsa_CRTValue.CRTValue>((0 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > 0 ? (0 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.rsa.Rsa_CRTValue.CRTValue)]) : stdgo.Slice<stdgo._internal.crypto.rsa.Rsa_CRTValue.CRTValue>), _n : _mn_4066881, _p : _mp_4066963, _q : _mq_4067045 } : stdgo._internal.crypto.rsa.Rsa_PrecomputedValues.PrecomputedValues) } : stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>);
                    return { _0 : _key_4067128, _1 : (null : stdgo.Error) };
                    _gotoNext = 4067501i32;
                } else if (__value__ == (4067501i32)) {
                    _priv_4067501 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>);
                    _priv_4067501.publicKey.e = (65537 : stdgo.GoInt);
                    if ((_nprimes < (2 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4067558i32;
                    } else {
                        _gotoNext = 4067649i32;
                    };
                } else if (__value__ == (4067558i32)) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: GenerateMultiPrimeKey: nprimes must be >= 2" : stdgo.GoString)) };
                    _gotoNext = 4067649i32;
                } else if (__value__ == (4067649i32)) {
                    if ((_bits < (64 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4067662i32;
                    } else {
                        _gotoNext = 4068180i32;
                    };
                } else if (__value__ == (4067662i32)) {
                    _primeLimit_4067666 = (((1i64 : stdgo.GoUInt64) << ((_bits / _nprimes : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt64) : stdgo.GoFloat64);
                    _pi_4067786 = (_primeLimit_4067666 / ((stdgo._internal.math.Math_log.log(_primeLimit_4067666) - (1 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _pi_4067786 = (_pi_4067786 / (4 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _pi_4067786 = (_pi_4067786 / (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    if ((_pi_4067786 <= (_nprimes : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 4068074i32;
                    } else {
                        _gotoNext = 4068180i32;
                    };
                } else if (__value__ == (4068074i32)) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: too few primes of given length to generate an RSA key" : stdgo.GoString)) };
                    _gotoNext = 4068180i32;
                } else if (__value__ == (4068180i32)) {
                    _primes_4068180 = (new stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>>((_nprimes : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>>);
                    _gotoNext = 4068217i32;
                } else if (__value__ == (4068217i32)) {
                    var __blank__ = 0i32;
                    nextSetOfPrimesBreak = false;
                    _gotoNext = 4068235i32;
                } else if (__value__ == (4068235i32)) {
                    if (!nextSetOfPrimesBreak) {
                        _gotoNext = 4068239i32;
                    } else {
                        _gotoNext = 4069797i32;
                    };
                } else if (__value__ == (4068239i32)) {
                    _todo_4068243 = _bits;
                    if ((_nprimes >= (7 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4068770i32;
                    } else {
                        _gotoNext = 4068807i32;
                    };
                } else if (__value__ == (4068770i32)) {
                    _todo_4068243 = (_todo_4068243 + ((((_nprimes - (2 : stdgo.GoInt) : stdgo.GoInt)) / (5 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 4068807i32;
                } else if (__value__ == (4068807i32)) {
                    _i_4068811 = (0 : stdgo.GoInt);
                    _gotoNext = 4068807i32;
                    if ((_i_4068811 < _nprimes : Bool)) {
                        _gotoNext = 4068836i32;
                    } else {
                        _gotoNext = 4069041i32;
                    };
                } else if (__value__ == (4068836i32)) {
                    {
                        var __tmp__ = stdgo._internal.crypto.rand.Rand_prime.prime(_random, (_todo_4068243 / ((_nprimes - _i_4068811 : stdgo.GoInt)) : stdgo.GoInt));
                        _primes_4068180[(_i_4068811 : stdgo.GoInt)] = __tmp__._0;
                        _err_4068845 = __tmp__._1;
                    };
                    if (_err_4068845 != null) {
                        _gotoNext = 4068929i32;
                    } else {
                        _gotoNext = 4068959i32;
                    };
                } else if (__value__ == (4068929i32)) {
                    return { _0 : null, _1 : _err_4068845 };
                    _gotoNext = 4068959i32;
                } else if (__value__ == (4068959i32)) {
                    _todo_4068243 = (_todo_4068243 - (_primes_4068180[(_i_4068811 : stdgo.GoInt)].bitLen()) : stdgo.GoInt);
                    _i_4068811++;
                    _gotoNext = 4068807i32;
                } else if (__value__ == (4069041i32)) {
                    if ((0i32 : stdgo.GoInt) < (_primes_4068180.length)) {
                        _gotoNext = 4069177i32;
                    } else {
                        _gotoNext = 4069183i32;
                    };
                } else if (__value__ == (4069045i32)) {
                    _i_4069045++;
                    _gotoNext = 4069178i32;
                } else if (__value__ == (4069070i32)) {
                    _prime_4069048 = _primes_4068180[(_i_4069045 : stdgo.GoInt)];
                    _j_4069079 = (0 : stdgo.GoInt);
                    _gotoNext = 4069075i32;
                } else if (__value__ == (4069075i32)) {
                    if ((_j_4069079 < _i_4069045 : Bool)) {
                        _gotoNext = 4069098i32;
                    } else {
                        _gotoNext = 4069045i32;
                    };
                } else if (__value__ == (4069094i32)) {
                    _j_4069079++;
                    _gotoNext = 4069075i32;
                } else if (__value__ == (4069098i32)) {
                    if (_prime_4069048.cmp(_primes_4068180[(_j_4069079 : stdgo.GoInt)]) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 4069133i32;
                    } else {
                        _gotoNext = 4069094i32;
                    };
                } else if (__value__ == (4069133i32)) {
                    _gotoNext = 4068235i32;
                } else if (__value__ == (4069177i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _primes_4068180[(0i32 : stdgo.GoInt)];
                        _i_4069045 = __tmp__0;
                        _prime_4069048 = __tmp__1;
                    };
                    _gotoNext = 4069178i32;
                } else if (__value__ == (4069178i32)) {
                    if (_i_4069045 < (_primes_4068180.length)) {
                        _gotoNext = 4069070i32;
                    } else {
                        _gotoNext = 4069183i32;
                    };
                } else if (__value__ == (4069183i32)) {
                    _n_4069183 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).set(stdgo._internal.crypto.rsa.Rsa__bigOne._bigOne);
                    _totient_4069215 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).set(stdgo._internal.crypto.rsa.Rsa__bigOne._bigOne);
                    _pminus1_4069253 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
                    if ((0i32 : stdgo.GoInt) < (_primes_4068180.length)) {
                        _gotoNext = 4069393i32;
                    } else {
                        _gotoNext = 4069398i32;
                    };
                } else if (__value__ == (4069308i32)) {
                    _prime_4069286 = _primes_4068180[(_i_4069295_0 : stdgo.GoInt)];
                    _n_4069183.mul(_n_4069183, _prime_4069286);
                    _pminus1_4069253.sub(_prime_4069286, stdgo._internal.crypto.rsa.Rsa__bigOne._bigOne);
                    _totient_4069215.mul(_totient_4069215, _pminus1_4069253);
                    _i_4069295_0++;
                    _gotoNext = 4069394i32;
                } else if (__value__ == (4069393i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _primes_4068180[(0i32 : stdgo.GoInt)];
                        _i_4069295_0 = __tmp__0;
                        _prime_4069286 = __tmp__1;
                    };
                    _gotoNext = 4069394i32;
                } else if (__value__ == (4069394i32)) {
                    if (_i_4069295_0 < (_primes_4068180.length)) {
                        _gotoNext = 4069308i32;
                    } else {
                        _gotoNext = 4069398i32;
                    };
                } else if (__value__ == (4069398i32)) {
                    if (_n_4069183.bitLen() != (_bits)) {
                        _gotoNext = 4069420i32;
                    } else {
                        _gotoNext = 4069630i32;
                    };
                } else if (__value__ == (4069420i32)) {
                    _gotoNext = 4068235i32;
                } else if (__value__ == (4069630i32)) {
                    _priv_4067501.d = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
                    _e_4069654 = stdgo._internal.math.big.Big_newInt.newInt((_priv_4067501.publicKey.e : stdgo.GoInt64));
                    _ok_4069687 = _priv_4067501.d.modInverse(_e_4069654, _totient_4069215);
                    if ((_ok_4069687 != null && ((_ok_4069687 : Dynamic).__nil__ == null || !(_ok_4069687 : Dynamic).__nil__))) {
                        _gotoNext = 4069739i32;
                    } else {
                        _gotoNext = 4069797i32;
                    };
                } else if (__value__ == (4069739i32)) {
                    _priv_4067501.primes = _primes_4068180;
                    _priv_4067501.publicKey.n = _n_4069183;
                    _gotoNext = 4069797i32;
                } else if (__value__ == (4069797i32)) {
                    _priv_4067501.precompute();
                    return { _0 : _priv_4067501, _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
