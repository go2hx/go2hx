package stdgo._internal.crypto.rsa;
function generateMultiPrimeKey(_random:stdgo._internal.io.Io_Reader.Reader, _nprimes:stdgo.GoInt, _bits:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>; var _1 : stdgo.Error; } {
        var d_4079421:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _bQinv_4079296:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt = new stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt(0, 0);
        var _bDp_4079286:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt = new stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt(0, 0);
        var _bE_4079270:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt = new stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt(0, 0);
        var _prime_4081862:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _err_4081659:stdgo.Error = (null : stdgo.Error);
        var _mq_4079859:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus> = (null : stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>);
        var _i_4081859:stdgo.GoInt = (0 : stdgo.GoInt);
        var _todo_4081057:stdgo.GoInt = (0 : stdgo.GoInt);
        var _mp_4079777:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus> = (null : stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>);
        var _err_4079303:stdgo.Error = (null : stdgo.Error);
        var _i_4082109_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pminus1_4082067:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _n_4081997:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _i_4081625:stdgo.GoInt = (0 : stdgo.GoInt);
        var n_4079381:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _j_4081893:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pi_4080600:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _primes_4080994:stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>>);
        var _mn_4079695:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus> = (null : stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>);
        var dp_4079481:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var q_4079461:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _ok_4082501:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _totient_4082029:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _bDq_4079291:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt = new stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt(0, 0);
        var _bP_4079278:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt = new stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt(0, 0);
        var _bD_4079274:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt = new stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt(0, 0);
        var _bN_4079266:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt = new stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt(0, 0);
        var _key_4079942:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey> = (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>);
        var _primeLimit_4080480:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _e64_4079551:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var e_4079401:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _bQ_4079282:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt = new stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt(0, 0);
        var _e_4082468:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _prime_4082100:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var nextSetOfPrimesBreak = false;
        var _priv_4080315:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey> = (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>);
        var qinv_4079525:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var dq_4079503:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var p_4079441:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    stdgo._internal.crypto.internal.randutil.Randutil_maybeReadByte.maybeReadByte(_random);
                    if ((((false && stdgo.Go.toInterface(_random) == (stdgo.Go.toInterface(stdgo.Go.asInterface((0 : stdgo._internal.crypto.internal.boring.Boring_T_randReader.T_randReader)))) : Bool) && _nprimes == ((2 : stdgo.GoInt)) : Bool) && (((_bits == ((2048 : stdgo.GoInt)) || _bits == ((3072 : stdgo.GoInt)) : Bool) || (_bits == (4096 : stdgo.GoInt)) : Bool)) : Bool)) {
                        _gotoNext = 4079262i32;
                    } else {
                        _gotoNext = 4080315i32;
                    };
                } else if (__value__ == (4079262i32)) {
                    {
                        var __tmp__ = stdgo._internal.crypto.internal.boring.Boring_generateKeyRSA.generateKeyRSA(_bits);
                        _bN_4079266 = __tmp__._0;
                        _bE_4079270 = __tmp__._1;
                        _bD_4079274 = __tmp__._2;
                        _bP_4079278 = __tmp__._3;
                        _bQ_4079282 = __tmp__._4;
                        _bDp_4079286 = __tmp__._5;
                        _bDq_4079291 = __tmp__._6;
                        _bQinv_4079296 = __tmp__._7;
                        _err_4079303 = __tmp__._8;
                    };
                    if (_err_4079303 != null) {
                        _gotoNext = 4079354i32;
                    } else {
                        _gotoNext = 4079381i32;
                    };
                } else if (__value__ == (4079354i32)) {
                    return { _0 : null, _1 : _err_4079303 };
                    _gotoNext = 4079381i32;
                } else if (__value__ == (4079381i32)) {
                    n_4079381 = _internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bN_4079266);
                    e_4079401 = _internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bE_4079270);
                    d_4079421 = _internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bD_4079274);
                    p_4079441 = _internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bP_4079278);
                    q_4079461 = _internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bQ_4079282);
                    dp_4079481 = _internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bDp_4079286);
                    dq_4079503 = _internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bDq_4079291);
                    qinv_4079525 = _internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bQinv_4079296);
                    _e64_4079551 = e_4079401.int64();
                    if ((!e_4079401.isInt64() || (((_e64_4079551 : stdgo.GoInt) : stdgo.GoInt64) != _e64_4079551) : Bool)) {
                        _gotoNext = 4079612i32;
                    } else {
                        _gotoNext = 4079695i32;
                    };
                } else if (__value__ == (4079612i32)) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: generated key exponent too large" : stdgo.GoString)) };
                    _gotoNext = 4079695i32;
                } else if (__value__ == (4079695i32)) {
                    {
                        var __tmp__ = _internal.crypto.internal.bigmod.Bigmod_newModulusFromBig.newModulusFromBig(n_4079381);
                        _mn_4079695 = __tmp__._0;
                        _err_4079303 = __tmp__._1;
                    };
                    if (_err_4079303 != null) {
                        _gotoNext = 4079750i32;
                    } else {
                        _gotoNext = 4079777i32;
                    };
                } else if (__value__ == (4079750i32)) {
                    return { _0 : null, _1 : _err_4079303 };
                    _gotoNext = 4079777i32;
                } else if (__value__ == (4079777i32)) {
                    {
                        var __tmp__ = _internal.crypto.internal.bigmod.Bigmod_newModulusFromBig.newModulusFromBig(p_4079441);
                        _mp_4079777 = __tmp__._0;
                        _err_4079303 = __tmp__._1;
                    };
                    if (_err_4079303 != null) {
                        _gotoNext = 4079832i32;
                    } else {
                        _gotoNext = 4079859i32;
                    };
                } else if (__value__ == (4079832i32)) {
                    return { _0 : null, _1 : _err_4079303 };
                    _gotoNext = 4079859i32;
                } else if (__value__ == (4079859i32)) {
                    {
                        var __tmp__ = _internal.crypto.internal.bigmod.Bigmod_newModulusFromBig.newModulusFromBig(q_4079461);
                        _mq_4079859 = __tmp__._0;
                        _err_4079303 = __tmp__._1;
                    };
                    if (_err_4079303 != null) {
                        _gotoNext = 4079914i32;
                    } else {
                        _gotoNext = 4079942i32;
                    };
                } else if (__value__ == (4079914i32)) {
                    return { _0 : null, _1 : _err_4079303 };
                    _gotoNext = 4079942i32;
                } else if (__value__ == (4079942i32)) {
                    _key_4079942 = (stdgo.Go.setRef(({ publicKey : ({  } : stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey), primes : (new stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>>(2, 2, ...[p_4079441, q_4079461]) : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>>), precomputed : ({ crtvalues : (new stdgo.Slice<stdgo._internal.crypto.rsa.Rsa_CRTValue.CRTValue>((0 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > 0 ? (0 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.rsa.Rsa_CRTValue.CRTValue)]) : stdgo.Slice<stdgo._internal.crypto.rsa.Rsa_CRTValue.CRTValue>), _n : _mn_4079695, _p : _mp_4079777, _q : _mq_4079859 } : stdgo._internal.crypto.rsa.Rsa_PrecomputedValues.PrecomputedValues) } : stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>);
                    return { _0 : _key_4079942, _1 : (null : stdgo.Error) };
                    _gotoNext = 4080315i32;
                } else if (__value__ == (4080315i32)) {
                    _priv_4080315 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>);
                    _priv_4080315.publicKey.e = (65537 : stdgo.GoInt);
                    if ((_nprimes < (2 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4080372i32;
                    } else {
                        _gotoNext = 4080463i32;
                    };
                } else if (__value__ == (4080372i32)) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: GenerateMultiPrimeKey: nprimes must be >= 2" : stdgo.GoString)) };
                    _gotoNext = 4080463i32;
                } else if (__value__ == (4080463i32)) {
                    if ((_bits < (64 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4080476i32;
                    } else {
                        _gotoNext = 4080994i32;
                    };
                } else if (__value__ == (4080476i32)) {
                    _primeLimit_4080480 = (((1i64 : stdgo.GoUInt64) << ((_bits / _nprimes : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt64) : stdgo.GoFloat64);
                    _pi_4080600 = (_primeLimit_4080480 / ((stdgo._internal.math.Math_log.log(_primeLimit_4080480) - (1 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _pi_4080600 = (_pi_4080600 / (4 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _pi_4080600 = (_pi_4080600 / (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    if ((_pi_4080600 <= (_nprimes : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 4080888i32;
                    } else {
                        _gotoNext = 4080994i32;
                    };
                } else if (__value__ == (4080888i32)) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: too few primes of given length to generate an RSA key" : stdgo.GoString)) };
                    _gotoNext = 4080994i32;
                } else if (__value__ == (4080994i32)) {
                    _primes_4080994 = (new stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>>((_nprimes : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>>);
                    _gotoNext = 4081031i32;
                } else if (__value__ == (4081031i32)) {
                    var __blank__ = 0i32;
                    nextSetOfPrimesBreak = false;
                    _gotoNext = 4081049i32;
                } else if (__value__ == (4081049i32)) {
                    if (!nextSetOfPrimesBreak) {
                        _gotoNext = 4081053i32;
                    } else {
                        _gotoNext = 4082611i32;
                    };
                } else if (__value__ == (4081053i32)) {
                    _todo_4081057 = _bits;
                    if ((_nprimes >= (7 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4081584i32;
                    } else {
                        _gotoNext = 4081621i32;
                    };
                } else if (__value__ == (4081584i32)) {
                    _todo_4081057 = (_todo_4081057 + ((((_nprimes - (2 : stdgo.GoInt) : stdgo.GoInt)) / (5 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 4081621i32;
                } else if (__value__ == (4081621i32)) {
                    _i_4081625 = (0 : stdgo.GoInt);
                    _gotoNext = 4081621i32;
                    if ((_i_4081625 < _nprimes : Bool)) {
                        _gotoNext = 4081650i32;
                    } else {
                        _gotoNext = 4081855i32;
                    };
                } else if (__value__ == (4081650i32)) {
                    {
                        var __tmp__ = stdgo._internal.crypto.rand.Rand_prime.prime(_random, (_todo_4081057 / ((_nprimes - _i_4081625 : stdgo.GoInt)) : stdgo.GoInt));
                        _primes_4080994[(_i_4081625 : stdgo.GoInt)] = __tmp__._0;
                        _err_4081659 = __tmp__._1;
                    };
                    if (_err_4081659 != null) {
                        _gotoNext = 4081743i32;
                    } else {
                        _gotoNext = 4081773i32;
                    };
                } else if (__value__ == (4081743i32)) {
                    return { _0 : null, _1 : _err_4081659 };
                    _gotoNext = 4081773i32;
                } else if (__value__ == (4081773i32)) {
                    _todo_4081057 = (_todo_4081057 - (_primes_4080994[(_i_4081625 : stdgo.GoInt)].bitLen()) : stdgo.GoInt);
                    _i_4081625++;
                    _gotoNext = 4081621i32;
                } else if (__value__ == (4081855i32)) {
                    if ((0i32 : stdgo.GoInt) < (_primes_4080994.length)) {
                        _gotoNext = 4081991i32;
                    } else {
                        _gotoNext = 4081997i32;
                    };
                } else if (__value__ == (4081859i32)) {
                    _i_4081859++;
                    _gotoNext = 4081992i32;
                } else if (__value__ == (4081884i32)) {
                    _prime_4081862 = _primes_4080994[(_i_4081859 : stdgo.GoInt)];
                    _j_4081893 = (0 : stdgo.GoInt);
                    _gotoNext = 4081889i32;
                } else if (__value__ == (4081889i32)) {
                    if ((_j_4081893 < _i_4081859 : Bool)) {
                        _gotoNext = 4081912i32;
                    } else {
                        _gotoNext = 4081859i32;
                    };
                } else if (__value__ == (4081908i32)) {
                    _j_4081893++;
                    _gotoNext = 4081889i32;
                } else if (__value__ == (4081912i32)) {
                    if (_prime_4081862.cmp(_primes_4080994[(_j_4081893 : stdgo.GoInt)]) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 4081947i32;
                    } else {
                        _gotoNext = 4081908i32;
                    };
                } else if (__value__ == (4081947i32)) {
                    _gotoNext = 4081049i32;
                } else if (__value__ == (4081991i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _primes_4080994[(0i32 : stdgo.GoInt)];
                        _i_4081859 = __tmp__0;
                        _prime_4081862 = __tmp__1;
                    };
                    _gotoNext = 4081992i32;
                } else if (__value__ == (4081992i32)) {
                    if (_i_4081859 < (_primes_4080994.length)) {
                        _gotoNext = 4081884i32;
                    } else {
                        _gotoNext = 4081997i32;
                    };
                } else if (__value__ == (4081997i32)) {
                    _n_4081997 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).set(stdgo._internal.crypto.rsa.Rsa__bigOne._bigOne);
                    _totient_4082029 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).set(stdgo._internal.crypto.rsa.Rsa__bigOne._bigOne);
                    _pminus1_4082067 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
                    if ((0i32 : stdgo.GoInt) < (_primes_4080994.length)) {
                        _gotoNext = 4082207i32;
                    } else {
                        _gotoNext = 4082212i32;
                    };
                } else if (__value__ == (4082122i32)) {
                    _prime_4082100 = _primes_4080994[(_i_4082109_0 : stdgo.GoInt)];
                    _n_4081997.mul(_n_4081997, _prime_4082100);
                    _pminus1_4082067.sub(_prime_4082100, stdgo._internal.crypto.rsa.Rsa__bigOne._bigOne);
                    _totient_4082029.mul(_totient_4082029, _pminus1_4082067);
                    _i_4082109_0++;
                    _gotoNext = 4082208i32;
                } else if (__value__ == (4082207i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _primes_4080994[(0i32 : stdgo.GoInt)];
                        _i_4082109_0 = __tmp__0;
                        _prime_4082100 = __tmp__1;
                    };
                    _gotoNext = 4082208i32;
                } else if (__value__ == (4082208i32)) {
                    if (_i_4082109_0 < (_primes_4080994.length)) {
                        _gotoNext = 4082122i32;
                    } else {
                        _gotoNext = 4082212i32;
                    };
                } else if (__value__ == (4082212i32)) {
                    if (_n_4081997.bitLen() != (_bits)) {
                        _gotoNext = 4082234i32;
                    } else {
                        _gotoNext = 4082444i32;
                    };
                } else if (__value__ == (4082234i32)) {
                    _gotoNext = 4081049i32;
                } else if (__value__ == (4082444i32)) {
                    _priv_4080315.d = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
                    _e_4082468 = stdgo._internal.math.big.Big_newInt.newInt((_priv_4080315.publicKey.e : stdgo.GoInt64));
                    _ok_4082501 = _priv_4080315.d.modInverse(_e_4082468, _totient_4082029);
                    if ((_ok_4082501 != null && ((_ok_4082501 : Dynamic).__nil__ == null || !(_ok_4082501 : Dynamic).__nil__))) {
                        _gotoNext = 4082553i32;
                    } else {
                        _gotoNext = 4082611i32;
                    };
                } else if (__value__ == (4082553i32)) {
                    _priv_4080315.primes = _primes_4080994;
                    _priv_4080315.publicKey.n = _n_4081997;
                    _gotoNext = 4082611i32;
                } else if (__value__ == (4082611i32)) {
                    _priv_4080315.precompute();
                    return { _0 : _priv_4080315, _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
