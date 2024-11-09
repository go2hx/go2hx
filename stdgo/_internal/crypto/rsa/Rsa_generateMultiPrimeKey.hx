package stdgo._internal.crypto.rsa;
function generateMultiPrimeKey(_random:stdgo._internal.io.Io_Reader.Reader, _nprimes:stdgo.GoInt, _bits:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>; var _1 : stdgo.Error; } {
        var _totient_4093536:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _primeLimit_4091987:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _err_4090810:stdgo.Error = (null : stdgo.Error);
        var _i_4093366:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pi_4092107:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _e64_4091058:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var d_4090928:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var e_4090908:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _prime_4093607:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _j_4093400:stdgo.GoInt = (0 : stdgo.GoInt);
        var nextSetOfPrimesBreak = false;
        var _key_4091449:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey> = (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>);
        var _bDq_4090798:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt = new stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt(0, 0);
        var _bDp_4090793:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt = new stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt(0, 0);
        var _bE_4090777:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt = new stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt(0, 0);
        var _e_4093975:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var q_4090968:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _bN_4090773:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt = new stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt(0, 0);
        var _i_4093132:stdgo.GoInt = (0 : stdgo.GoInt);
        var _primes_4092501:stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>>);
        var _mp_4091284:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus> = (null : stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>);
        var qinv_4091032:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var dp_4090988:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _bQinv_4090803:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt = new stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt(0, 0);
        var _bD_4090781:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt = new stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt(0, 0);
        var _n_4093504:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _pminus1_4093574:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _todo_4092564:stdgo.GoInt = (0 : stdgo.GoInt);
        var _mq_4091366:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus> = (null : stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>);
        var n_4090888:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _ok_4094008:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _prime_4093369:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _err_4093166:stdgo.Error = (null : stdgo.Error);
        var _mn_4091202:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus> = (null : stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>);
        var p_4090948:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _bP_4090785:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt = new stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt(0, 0);
        var _i_4093616_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _priv_4091822:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey> = (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>);
        var dq_4091010:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _bQ_4090789:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt = new stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt(0, 0);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    stdgo._internal.crypto.internal.randutil.Randutil_maybeReadByte.maybeReadByte(_random);
                    if ((((false && stdgo.Go.toInterface(_random) == (stdgo.Go.toInterface(stdgo.Go.asInterface((0 : stdgo._internal.crypto.internal.boring.Boring_T_randReader.T_randReader)))) : Bool) && _nprimes == ((2 : stdgo.GoInt)) : Bool) && (((_bits == ((2048 : stdgo.GoInt)) || _bits == ((3072 : stdgo.GoInt)) : Bool) || (_bits == (4096 : stdgo.GoInt)) : Bool)) : Bool)) {
                        _gotoNext = 4090769i32;
                    } else {
                        _gotoNext = 4091822i32;
                    };
                } else if (__value__ == (4090769i32)) {
                    {
                        var __tmp__ = stdgo._internal.crypto.internal.boring.Boring_generateKeyRSA.generateKeyRSA(_bits);
                        _bN_4090773 = __tmp__._0;
                        _bE_4090777 = __tmp__._1;
                        _bD_4090781 = __tmp__._2;
                        _bP_4090785 = __tmp__._3;
                        _bQ_4090789 = __tmp__._4;
                        _bDp_4090793 = __tmp__._5;
                        _bDq_4090798 = __tmp__._6;
                        _bQinv_4090803 = __tmp__._7;
                        _err_4090810 = __tmp__._8;
                    };
                    if (_err_4090810 != null) {
                        _gotoNext = 4090861i32;
                    } else {
                        _gotoNext = 4090888i32;
                    };
                } else if (__value__ == (4090861i32)) {
                    return { _0 : null, _1 : _err_4090810 };
                    _gotoNext = 4090888i32;
                } else if (__value__ == (4090888i32)) {
                    n_4090888 = _internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bN_4090773);
                    e_4090908 = _internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bE_4090777);
                    d_4090928 = _internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bD_4090781);
                    p_4090948 = _internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bP_4090785);
                    q_4090968 = _internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bQ_4090789);
                    dp_4090988 = _internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bDp_4090793);
                    dq_4091010 = _internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bDq_4090798);
                    qinv_4091032 = _internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bQinv_4090803);
                    _e64_4091058 = e_4090908.int64();
                    if ((!e_4090908.isInt64() || (((_e64_4091058 : stdgo.GoInt) : stdgo.GoInt64) != _e64_4091058) : Bool)) {
                        _gotoNext = 4091119i32;
                    } else {
                        _gotoNext = 4091202i32;
                    };
                } else if (__value__ == (4091119i32)) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: generated key exponent too large" : stdgo.GoString)) };
                    _gotoNext = 4091202i32;
                } else if (__value__ == (4091202i32)) {
                    {
                        var __tmp__ = _internal.crypto.internal.bigmod.Bigmod_newModulusFromBig.newModulusFromBig(n_4090888);
                        _mn_4091202 = __tmp__._0;
                        _err_4090810 = __tmp__._1;
                    };
                    if (_err_4090810 != null) {
                        _gotoNext = 4091257i32;
                    } else {
                        _gotoNext = 4091284i32;
                    };
                } else if (__value__ == (4091257i32)) {
                    return { _0 : null, _1 : _err_4090810 };
                    _gotoNext = 4091284i32;
                } else if (__value__ == (4091284i32)) {
                    {
                        var __tmp__ = _internal.crypto.internal.bigmod.Bigmod_newModulusFromBig.newModulusFromBig(p_4090948);
                        _mp_4091284 = __tmp__._0;
                        _err_4090810 = __tmp__._1;
                    };
                    if (_err_4090810 != null) {
                        _gotoNext = 4091339i32;
                    } else {
                        _gotoNext = 4091366i32;
                    };
                } else if (__value__ == (4091339i32)) {
                    return { _0 : null, _1 : _err_4090810 };
                    _gotoNext = 4091366i32;
                } else if (__value__ == (4091366i32)) {
                    {
                        var __tmp__ = _internal.crypto.internal.bigmod.Bigmod_newModulusFromBig.newModulusFromBig(q_4090968);
                        _mq_4091366 = __tmp__._0;
                        _err_4090810 = __tmp__._1;
                    };
                    if (_err_4090810 != null) {
                        _gotoNext = 4091421i32;
                    } else {
                        _gotoNext = 4091449i32;
                    };
                } else if (__value__ == (4091421i32)) {
                    return { _0 : null, _1 : _err_4090810 };
                    _gotoNext = 4091449i32;
                } else if (__value__ == (4091449i32)) {
                    _key_4091449 = (stdgo.Go.setRef(({ publicKey : ({  } : stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey), primes : (new stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>>(2, 2, ...[p_4090948, q_4090968]) : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>>), precomputed : ({ crtvalues : (new stdgo.Slice<stdgo._internal.crypto.rsa.Rsa_CRTValue.CRTValue>((0 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > 0 ? (0 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.rsa.Rsa_CRTValue.CRTValue)]) : stdgo.Slice<stdgo._internal.crypto.rsa.Rsa_CRTValue.CRTValue>), _n : _mn_4091202, _p : _mp_4091284, _q : _mq_4091366 } : stdgo._internal.crypto.rsa.Rsa_PrecomputedValues.PrecomputedValues) } : stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>);
                    return { _0 : _key_4091449, _1 : (null : stdgo.Error) };
                    _gotoNext = 4091822i32;
                } else if (__value__ == (4091822i32)) {
                    _priv_4091822 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>);
                    _priv_4091822.publicKey.e = (65537 : stdgo.GoInt);
                    if ((_nprimes < (2 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4091879i32;
                    } else {
                        _gotoNext = 4091970i32;
                    };
                } else if (__value__ == (4091879i32)) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: GenerateMultiPrimeKey: nprimes must be >= 2" : stdgo.GoString)) };
                    _gotoNext = 4091970i32;
                } else if (__value__ == (4091970i32)) {
                    if ((_bits < (64 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4091983i32;
                    } else {
                        _gotoNext = 4092501i32;
                    };
                } else if (__value__ == (4091983i32)) {
                    _primeLimit_4091987 = (((1i64 : stdgo.GoUInt64) << ((_bits / _nprimes : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt64) : stdgo.GoFloat64);
                    _pi_4092107 = (_primeLimit_4091987 / ((stdgo._internal.math.Math_log.log(_primeLimit_4091987) - (1 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _pi_4092107 = (_pi_4092107 / (4 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _pi_4092107 = (_pi_4092107 / (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    if ((_pi_4092107 <= (_nprimes : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 4092395i32;
                    } else {
                        _gotoNext = 4092501i32;
                    };
                } else if (__value__ == (4092395i32)) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: too few primes of given length to generate an RSA key" : stdgo.GoString)) };
                    _gotoNext = 4092501i32;
                } else if (__value__ == (4092501i32)) {
                    _primes_4092501 = (new stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>>((_nprimes : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>>);
                    _gotoNext = 4092538i32;
                } else if (__value__ == (4092538i32)) {
                    var __blank__ = 0i32;
                    nextSetOfPrimesBreak = false;
                    _gotoNext = 4092556i32;
                } else if (__value__ == (4092556i32)) {
                    if (!nextSetOfPrimesBreak) {
                        _gotoNext = 4092560i32;
                    } else {
                        _gotoNext = 4094118i32;
                    };
                } else if (__value__ == (4092560i32)) {
                    _todo_4092564 = _bits;
                    if ((_nprimes >= (7 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4093091i32;
                    } else {
                        _gotoNext = 4093128i32;
                    };
                } else if (__value__ == (4093091i32)) {
                    _todo_4092564 = (_todo_4092564 + ((((_nprimes - (2 : stdgo.GoInt) : stdgo.GoInt)) / (5 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 4093128i32;
                } else if (__value__ == (4093128i32)) {
                    _i_4093132 = (0 : stdgo.GoInt);
                    _gotoNext = 4093128i32;
                    if ((_i_4093132 < _nprimes : Bool)) {
                        _gotoNext = 4093157i32;
                    } else {
                        _gotoNext = 4093362i32;
                    };
                } else if (__value__ == (4093157i32)) {
                    {
                        var __tmp__ = stdgo._internal.crypto.rand.Rand_prime.prime(_random, (_todo_4092564 / ((_nprimes - _i_4093132 : stdgo.GoInt)) : stdgo.GoInt));
                        _primes_4092501[(_i_4093132 : stdgo.GoInt)] = __tmp__._0;
                        _err_4093166 = __tmp__._1;
                    };
                    if (_err_4093166 != null) {
                        _gotoNext = 4093250i32;
                    } else {
                        _gotoNext = 4093280i32;
                    };
                } else if (__value__ == (4093250i32)) {
                    return { _0 : null, _1 : _err_4093166 };
                    _gotoNext = 4093280i32;
                } else if (__value__ == (4093280i32)) {
                    _todo_4092564 = (_todo_4092564 - (_primes_4092501[(_i_4093132 : stdgo.GoInt)].bitLen()) : stdgo.GoInt);
                    _i_4093132++;
                    _gotoNext = 4093128i32;
                } else if (__value__ == (4093362i32)) {
                    if ((0i32 : stdgo.GoInt) < (_primes_4092501.length)) {
                        _gotoNext = 4093498i32;
                    } else {
                        _gotoNext = 4093504i32;
                    };
                } else if (__value__ == (4093366i32)) {
                    _i_4093366++;
                    _gotoNext = 4093499i32;
                } else if (__value__ == (4093391i32)) {
                    _prime_4093369 = _primes_4092501[(_i_4093366 : stdgo.GoInt)];
                    _j_4093400 = (0 : stdgo.GoInt);
                    _gotoNext = 4093396i32;
                } else if (__value__ == (4093396i32)) {
                    if ((_j_4093400 < _i_4093366 : Bool)) {
                        _gotoNext = 4093419i32;
                    } else {
                        _gotoNext = 4093366i32;
                    };
                } else if (__value__ == (4093415i32)) {
                    _j_4093400++;
                    _gotoNext = 4093396i32;
                } else if (__value__ == (4093419i32)) {
                    if (_prime_4093369.cmp(_primes_4092501[(_j_4093400 : stdgo.GoInt)]) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 4093454i32;
                    } else {
                        _gotoNext = 4093415i32;
                    };
                } else if (__value__ == (4093454i32)) {
                    _gotoNext = 4092556i32;
                } else if (__value__ == (4093498i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _primes_4092501[(0i32 : stdgo.GoInt)];
                        _i_4093366 = __tmp__0;
                        _prime_4093369 = __tmp__1;
                    };
                    _gotoNext = 4093499i32;
                } else if (__value__ == (4093499i32)) {
                    if (_i_4093366 < (_primes_4092501.length)) {
                        _gotoNext = 4093391i32;
                    } else {
                        _gotoNext = 4093504i32;
                    };
                } else if (__value__ == (4093504i32)) {
                    _n_4093504 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).set(stdgo._internal.crypto.rsa.Rsa__bigOne._bigOne);
                    _totient_4093536 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).set(stdgo._internal.crypto.rsa.Rsa__bigOne._bigOne);
                    _pminus1_4093574 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
                    if ((0i32 : stdgo.GoInt) < (_primes_4092501.length)) {
                        _gotoNext = 4093714i32;
                    } else {
                        _gotoNext = 4093719i32;
                    };
                } else if (__value__ == (4093629i32)) {
                    _prime_4093607 = _primes_4092501[(_i_4093616_0 : stdgo.GoInt)];
                    _n_4093504.mul(_n_4093504, _prime_4093607);
                    _pminus1_4093574.sub(_prime_4093607, stdgo._internal.crypto.rsa.Rsa__bigOne._bigOne);
                    _totient_4093536.mul(_totient_4093536, _pminus1_4093574);
                    _i_4093616_0++;
                    _gotoNext = 4093715i32;
                } else if (__value__ == (4093714i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _primes_4092501[(0i32 : stdgo.GoInt)];
                        _i_4093616_0 = __tmp__0;
                        _prime_4093607 = __tmp__1;
                    };
                    _gotoNext = 4093715i32;
                } else if (__value__ == (4093715i32)) {
                    if (_i_4093616_0 < (_primes_4092501.length)) {
                        _gotoNext = 4093629i32;
                    } else {
                        _gotoNext = 4093719i32;
                    };
                } else if (__value__ == (4093719i32)) {
                    if (_n_4093504.bitLen() != (_bits)) {
                        _gotoNext = 4093741i32;
                    } else {
                        _gotoNext = 4093951i32;
                    };
                } else if (__value__ == (4093741i32)) {
                    _gotoNext = 4092556i32;
                } else if (__value__ == (4093951i32)) {
                    _priv_4091822.d = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
                    _e_4093975 = stdgo._internal.math.big.Big_newInt.newInt((_priv_4091822.publicKey.e : stdgo.GoInt64));
                    _ok_4094008 = _priv_4091822.d.modInverse(_e_4093975, _totient_4093536);
                    if ((_ok_4094008 != null && ((_ok_4094008 : Dynamic).__nil__ == null || !(_ok_4094008 : Dynamic).__nil__))) {
                        _gotoNext = 4094060i32;
                    } else {
                        _gotoNext = 4094118i32;
                    };
                } else if (__value__ == (4094060i32)) {
                    _priv_4091822.primes = _primes_4092501;
                    _priv_4091822.publicKey.n = _n_4093504;
                    _gotoNext = 4094118i32;
                } else if (__value__ == (4094118i32)) {
                    _priv_4091822.precompute();
                    return { _0 : _priv_4091822, _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
