package stdgo._internal.crypto.rsa;
function generateMultiPrimeKey(_random:stdgo._internal.io.Io_reader.Reader, _nprimes:stdgo.GoInt, _bits:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>; var _1 : stdgo.Error; } {
        var qinv_4077772:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _bQ_4077529:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0);
        var _prime_4080347:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _n_4080244:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _bDp_4077533:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0);
        var _bD_4077521:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0);
        var _totient_4080276:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _primeLimit_4078727:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _mq_4078106:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus> = (null : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        var dq_4077750:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _mp_4078024:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus> = (null : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        var n_4077628:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _pminus1_4080314:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _pi_4078847:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _bQinv_4077543:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0);
        var _bN_4077513:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0);
        var _e_4080715:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _todo_4079304:stdgo.GoInt = (0 : stdgo.GoInt);
        var q_4077708:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _err_4077550:stdgo.Error = (null : stdgo.Error);
        var p_4077688:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _bP_4077525:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0);
        var _ok_4080748:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _i_4080106:stdgo.GoInt = (0 : stdgo.GoInt);
        var nextSetOfPrimesBreak = false;
        var _mn_4077942:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus> = (null : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        var _e64_4077798:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var dp_4077728:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _bDq_4077538:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0);
        var _i_4080356_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_4080140:stdgo.GoInt = (0 : stdgo.GoInt);
        var _prime_4080109:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _priv_4078562:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey> = (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>);
        var _i_4079872:stdgo.GoInt = (0 : stdgo.GoInt);
        var _key_4078189:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey> = (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>);
        var _err_4079906:stdgo.Error = (null : stdgo.Error);
        var e_4077648:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _bE_4077517:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0);
        var _primes_4079241:stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>);
        var d_4077668:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    stdgo._internal.crypto.internal.randutil.Randutil_maybereadbyte.maybeReadByte(_random);
                    if ((((false && stdgo.Go.toInterface(_random) == (stdgo.Go.toInterface(stdgo.Go.asInterface((0 : stdgo._internal.crypto.internal.boring.Boring_t_randreader.T_randReader)))) : Bool) && _nprimes == ((2 : stdgo.GoInt)) : Bool) && (((_bits == ((2048 : stdgo.GoInt)) || _bits == ((3072 : stdgo.GoInt)) : Bool) || (_bits == (4096 : stdgo.GoInt)) : Bool)) : Bool)) {
                        _gotoNext = 4077509i32;
                    } else {
                        _gotoNext = 4078562i32;
                    };
                } else if (__value__ == (4077509i32)) {
                    {
                        var __tmp__ = stdgo._internal.crypto.internal.boring.Boring_generatekeyrsa.generateKeyRSA(_bits);
                        _bN_4077513 = @:tmpset0 __tmp__._0;
                        _bE_4077517 = @:tmpset0 __tmp__._1;
                        _bD_4077521 = @:tmpset0 __tmp__._2;
                        _bP_4077525 = @:tmpset0 __tmp__._3;
                        _bQ_4077529 = @:tmpset0 __tmp__._4;
                        _bDp_4077533 = @:tmpset0 __tmp__._5;
                        _bDq_4077538 = @:tmpset0 __tmp__._6;
                        _bQinv_4077543 = @:tmpset0 __tmp__._7;
                        _err_4077550 = @:tmpset0 __tmp__._8;
                    };
                    if (_err_4077550 != null) {
                        _gotoNext = 4077601i32;
                    } else {
                        _gotoNext = 4077628i32;
                    };
                } else if (__value__ == (4077601i32)) {
                    return { _0 : null, _1 : _err_4077550 };
                    _gotoNext = 4077628i32;
                } else if (__value__ == (4077628i32)) {
                    n_4077628 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bN_4077513);
                    e_4077648 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bE_4077517);
                    d_4077668 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bD_4077521);
                    p_4077688 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bP_4077525);
                    q_4077708 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bQ_4077529);
                    dp_4077728 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bDp_4077533);
                    dq_4077750 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bDq_4077538);
                    qinv_4077772 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bQinv_4077543);
                    _e64_4077798 = @:check2r e_4077648.int64();
                    if ((!@:check2r e_4077648.isInt64() || (((_e64_4077798 : stdgo.GoInt) : stdgo.GoInt64) != _e64_4077798) : Bool)) {
                        _gotoNext = 4077859i32;
                    } else {
                        _gotoNext = 4077942i32;
                    };
                } else if (__value__ == (4077859i32)) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: generated key exponent too large" : stdgo.GoString)) };
                    _gotoNext = 4077942i32;
                } else if (__value__ == (4077942i32)) {
                    {
                        var __tmp__ = stdgo._internal.crypto.internal.bigmod.Bigmod_newmodulusfrombig.newModulusFromBig(n_4077628);
                        _mn_4077942 = @:tmpset0 __tmp__._0;
                        _err_4077550 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_4077550 != null) {
                        _gotoNext = 4077997i32;
                    } else {
                        _gotoNext = 4078024i32;
                    };
                } else if (__value__ == (4077997i32)) {
                    return { _0 : null, _1 : _err_4077550 };
                    _gotoNext = 4078024i32;
                } else if (__value__ == (4078024i32)) {
                    {
                        var __tmp__ = stdgo._internal.crypto.internal.bigmod.Bigmod_newmodulusfrombig.newModulusFromBig(p_4077688);
                        _mp_4078024 = @:tmpset0 __tmp__._0;
                        _err_4077550 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_4077550 != null) {
                        _gotoNext = 4078079i32;
                    } else {
                        _gotoNext = 4078106i32;
                    };
                } else if (__value__ == (4078079i32)) {
                    return { _0 : null, _1 : _err_4077550 };
                    _gotoNext = 4078106i32;
                } else if (__value__ == (4078106i32)) {
                    {
                        var __tmp__ = stdgo._internal.crypto.internal.bigmod.Bigmod_newmodulusfrombig.newModulusFromBig(q_4077708);
                        _mq_4078106 = @:tmpset0 __tmp__._0;
                        _err_4077550 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_4077550 != null) {
                        _gotoNext = 4078161i32;
                    } else {
                        _gotoNext = 4078189i32;
                    };
                } else if (__value__ == (4078161i32)) {
                    return { _0 : null, _1 : _err_4077550 };
                    _gotoNext = 4078189i32;
                } else if (__value__ == (4078189i32)) {
                    _key_4078189 = (stdgo.Go.setRef(({ publicKey : ({  } : stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey), primes : (new stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>(2, 2, ...[p_4077688, q_4077708]) : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>), precomputed : ({ cRTValues : (new stdgo.Slice<stdgo._internal.crypto.rsa.Rsa_crtvalue.CRTValue>((0 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > 0 ? (0 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.rsa.Rsa_crtvalue.CRTValue)]) : stdgo.Slice<stdgo._internal.crypto.rsa.Rsa_crtvalue.CRTValue>), _n : _mn_4077942, _p : _mp_4078024, _q : _mq_4078106 } : stdgo._internal.crypto.rsa.Rsa_precomputedvalues.PrecomputedValues) } : stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>);
                    return { _0 : _key_4078189, _1 : (null : stdgo.Error) };
                    _gotoNext = 4078562i32;
                } else if (__value__ == (4078562i32)) {
                    _priv_4078562 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>);
                    (@:checkr _priv_4078562 ?? throw "null pointer dereference").publicKey.e = (65537 : stdgo.GoInt);
                    if ((_nprimes < (2 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4078619i32;
                    } else {
                        _gotoNext = 4078710i32;
                    };
                } else if (__value__ == (4078619i32)) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: GenerateMultiPrimeKey: nprimes must be >= 2" : stdgo.GoString)) };
                    _gotoNext = 4078710i32;
                } else if (__value__ == (4078710i32)) {
                    if ((_bits < (64 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4078723i32;
                    } else {
                        _gotoNext = 4079241i32;
                    };
                } else if (__value__ == (4078723i32)) {
                    _primeLimit_4078727 = (((1i64 : stdgo.GoUInt64) << ((_bits / _nprimes : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt64) : stdgo.GoFloat64);
                    _pi_4078847 = (_primeLimit_4078727 / ((stdgo._internal.math.Math_log.log(_primeLimit_4078727) - (1 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _pi_4078847 = (_pi_4078847 / (4 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _pi_4078847 = (_pi_4078847 / (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    if ((_pi_4078847 <= (_nprimes : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 4079135i32;
                    } else {
                        _gotoNext = 4079241i32;
                    };
                } else if (__value__ == (4079135i32)) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: too few primes of given length to generate an RSA key" : stdgo.GoString)) };
                    _gotoNext = 4079241i32;
                } else if (__value__ == (4079241i32)) {
                    _primes_4079241 = (new stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>((_nprimes : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>);
                    _gotoNext = 4079278i32;
                } else if (__value__ == (4079278i32)) {
                    var __blank__ = 0i32;
                    nextSetOfPrimesBreak = false;
                    _gotoNext = 4079296i32;
                } else if (__value__ == (4079296i32)) {
                    if (!nextSetOfPrimesBreak) {
                        _gotoNext = 4079300i32;
                    } else {
                        _gotoNext = 4080858i32;
                    };
                } else if (__value__ == (4079300i32)) {
                    _todo_4079304 = _bits;
                    if ((_nprimes >= (7 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4079831i32;
                    } else {
                        _gotoNext = 4079868i32;
                    };
                } else if (__value__ == (4079831i32)) {
                    _todo_4079304 = (_todo_4079304 + ((((_nprimes - (2 : stdgo.GoInt) : stdgo.GoInt)) / (5 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 4079868i32;
                } else if (__value__ == (4079868i32)) {
                    _i_4079872 = (0 : stdgo.GoInt);
                    _gotoNext = 4079868i32;
                    if ((_i_4079872 < _nprimes : Bool)) {
                        _gotoNext = 4079897i32;
                    } else {
                        _gotoNext = 4080102i32;
                    };
                } else if (__value__ == (4079897i32)) {
                    {
                        var __tmp__ = stdgo._internal.crypto.rand.Rand_prime.prime(_random, (_todo_4079304 / ((_nprimes - _i_4079872 : stdgo.GoInt)) : stdgo.GoInt));
                        _primes_4079241[(_i_4079872 : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                        _err_4079906 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_4079906 != null) {
                        _gotoNext = 4079990i32;
                    } else {
                        _gotoNext = 4080020i32;
                    };
                } else if (__value__ == (4079990i32)) {
                    return { _0 : null, _1 : _err_4079906 };
                    _gotoNext = 4080020i32;
                } else if (__value__ == (4080020i32)) {
                    _todo_4079304 = (_todo_4079304 - (@:check2r _primes_4079241[(_i_4079872 : stdgo.GoInt)].bitLen()) : stdgo.GoInt);
                    _i_4079872++;
                    _gotoNext = 4079868i32;
                } else if (__value__ == (4080102i32)) {
                    if ((0i32 : stdgo.GoInt) < (_primes_4079241.length)) {
                        _gotoNext = 4080238i32;
                    } else {
                        _gotoNext = 4080244i32;
                    };
                } else if (__value__ == (4080106i32)) {
                    _i_4080106++;
                    _gotoNext = 4080239i32;
                } else if (__value__ == (4080131i32)) {
                    _prime_4080109 = _primes_4079241[(_i_4080106 : stdgo.GoInt)];
                    _j_4080140 = (0 : stdgo.GoInt);
                    _gotoNext = 4080136i32;
                } else if (__value__ == (4080136i32)) {
                    if ((_j_4080140 < _i_4080106 : Bool)) {
                        _gotoNext = 4080159i32;
                    } else {
                        _gotoNext = 4080106i32;
                    };
                } else if (__value__ == (4080155i32)) {
                    _j_4080140++;
                    _gotoNext = 4080136i32;
                } else if (__value__ == (4080159i32)) {
                    if (@:check2r _prime_4080109.cmp(_primes_4079241[(_j_4080140 : stdgo.GoInt)]) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 4080194i32;
                    } else {
                        _gotoNext = 4080155i32;
                    };
                } else if (__value__ == (4080194i32)) {
                    _gotoNext = 4079296i32;
                } else if (__value__ == (4080238i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _primes_4079241[(0i32 : stdgo.GoInt)];
                        _i_4080106 = __tmp__0;
                        _prime_4080109 = __tmp__1;
                    };
                    _gotoNext = 4080239i32;
                } else if (__value__ == (4080239i32)) {
                    if (_i_4080106 < (_primes_4079241.length)) {
                        _gotoNext = 4080131i32;
                    } else {
                        _gotoNext = 4080244i32;
                    };
                } else if (__value__ == (4080244i32)) {
                    _n_4080244 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(stdgo._internal.crypto.rsa.Rsa__bigone._bigOne);
                    _totient_4080276 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(stdgo._internal.crypto.rsa.Rsa__bigone._bigOne);
                    _pminus1_4080314 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                    if ((0i32 : stdgo.GoInt) < (_primes_4079241.length)) {
                        _gotoNext = 4080454i32;
                    } else {
                        _gotoNext = 4080459i32;
                    };
                } else if (__value__ == (4080369i32)) {
                    _prime_4080347 = _primes_4079241[(_i_4080356_0 : stdgo.GoInt)];
                    @:check2r _n_4080244.mul(_n_4080244, _prime_4080347);
                    @:check2r _pminus1_4080314.sub(_prime_4080347, stdgo._internal.crypto.rsa.Rsa__bigone._bigOne);
                    @:check2r _totient_4080276.mul(_totient_4080276, _pminus1_4080314);
                    _i_4080356_0++;
                    _gotoNext = 4080455i32;
                } else if (__value__ == (4080454i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _primes_4079241[(0i32 : stdgo.GoInt)];
                        _i_4080356_0 = __tmp__0;
                        _prime_4080347 = __tmp__1;
                    };
                    _gotoNext = 4080455i32;
                } else if (__value__ == (4080455i32)) {
                    if (_i_4080356_0 < (_primes_4079241.length)) {
                        _gotoNext = 4080369i32;
                    } else {
                        _gotoNext = 4080459i32;
                    };
                } else if (__value__ == (4080459i32)) {
                    if (@:check2r _n_4080244.bitLen() != (_bits)) {
                        _gotoNext = 4080481i32;
                    } else {
                        _gotoNext = 4080691i32;
                    };
                } else if (__value__ == (4080481i32)) {
                    _gotoNext = 4079296i32;
                } else if (__value__ == (4080691i32)) {
                    (@:checkr _priv_4078562 ?? throw "null pointer dereference").d = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                    _e_4080715 = stdgo._internal.math.big.Big_newint.newInt(((@:checkr _priv_4078562 ?? throw "null pointer dereference").publicKey.e : stdgo.GoInt64));
                    _ok_4080748 = @:check2r (@:checkr _priv_4078562 ?? throw "null pointer dereference").d.modInverse(_e_4080715, _totient_4080276);
                    if ((_ok_4080748 != null && ((_ok_4080748 : Dynamic).__nil__ == null || !(_ok_4080748 : Dynamic).__nil__))) {
                        _gotoNext = 4080800i32;
                    } else {
                        _gotoNext = 4079296i32;
                    };
                } else if (__value__ == (4080800i32)) {
                    (@:checkr _priv_4078562 ?? throw "null pointer dereference").primes = _primes_4079241;
                    (@:checkr _priv_4078562 ?? throw "null pointer dereference").publicKey.n = _n_4080244;
                    _gotoNext = 4080858i32;
                } else if (__value__ == (4080858i32)) {
                    @:check2r _priv_4078562.precompute();
                    return { _0 : _priv_4078562, _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
