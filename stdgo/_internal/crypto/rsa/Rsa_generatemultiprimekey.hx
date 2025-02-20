package stdgo._internal.crypto.rsa;
function generateMultiPrimeKey(_random:stdgo._internal.io.Io_reader.Reader, _nprimes:stdgo.GoInt, _bits:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>; var _1 : stdgo.Error; } {
        var _i_29:stdgo.GoInt = (0 : stdgo.GoInt);
        var _mp_19:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus> = (null : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        var d_11:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var e_10:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _primes_25:stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>);
        var dq_15:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _bE_1:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = (new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0) : stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt);
        var _mn_18:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus> = (null : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        var _ok_38:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _e_37:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _todo_26:stdgo.GoInt = (0 : stdgo.GoInt);
        var nextSetOfPrimesBreak = false;
        var qinv_16:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _bDq_6:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = (new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0) : stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt);
        var _bP_3:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = (new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0) : stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt);
        var _bD_2:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = (new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0) : stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt);
        var _pminus1_34:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _prime_30:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _prime_36:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _err_28:stdgo.Error = (null : stdgo.Error);
        var _priv_22:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey> = (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>);
        var _bQ_4:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = (new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0) : stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt);
        var _i_27:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pi_24:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _primeLimit_23:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _key_21:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey> = (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>);
        var dp_14:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var q_13:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _j_31:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_4082109_35:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_32:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _mq_20:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus> = (null : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        var n_9:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _bQinv_7:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = (new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0) : stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt);
        var _bN_0:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = (new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0) : stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt);
        var _totient_33:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _e64_17:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var p_12:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _err_8:stdgo.Error = (null : stdgo.Error);
        var _bDp_5:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = (new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0) : stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    stdgo._internal.crypto.internal.randutil.Randutil_maybereadbyte.maybeReadByte(_random);
                    if ((((false && stdgo.Go.toInterface(_random) == (stdgo.Go.toInterface(stdgo.Go.asInterface((0 : stdgo._internal.crypto.internal.boring.Boring_t_randreader.T_randReader)))) : Bool) && _nprimes == ((2 : stdgo.GoInt)) : Bool) && (((_bits == ((2048 : stdgo.GoInt)) || _bits == ((3072 : stdgo.GoInt)) : Bool) || (_bits == (4096 : stdgo.GoInt)) : Bool)) : Bool)) {
                        _gotoNext = 4079262i32;
                    } else {
                        _gotoNext = 4080315i32;
                    };
                } else if (__value__ == (4079262i32)) {
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
                    if (_err_8 != null) {
                        _gotoNext = 4079354i32;
                    } else {
                        _gotoNext = 4079381i32;
                    };
                } else if (__value__ == (4079354i32)) {
                    return { _0 : null, _1 : _err_8 };
                    _gotoNext = 4079381i32;
                } else if (__value__ == (4079381i32)) {
                    n_9 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bN_0);
                    e_10 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bE_1);
                    d_11 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bD_2);
                    p_12 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bP_3);
                    q_13 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bQ_4);
                    dp_14 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bDp_5);
                    dq_15 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bDq_6);
                    qinv_16 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bQinv_7);
                    _e64_17 = @:check2r e_10.int64();
                    if ((!@:check2r e_10.isInt64() || (((_e64_17 : stdgo.GoInt) : stdgo.GoInt64) != _e64_17) : Bool)) {
                        _gotoNext = 4079612i32;
                    } else {
                        _gotoNext = 4079695i32;
                    };
                } else if (__value__ == (4079612i32)) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: generated key exponent too large" : stdgo.GoString)) };
                    _gotoNext = 4079695i32;
                } else if (__value__ == (4079695i32)) {
                    {
                        var __tmp__ = stdgo._internal.crypto.internal.bigmod.Bigmod_newmodulusfrombig.newModulusFromBig(n_9);
                        _mn_18 = @:tmpset0 __tmp__._0;
                        _err_8 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_8 != null) {
                        _gotoNext = 4079750i32;
                    } else {
                        _gotoNext = 4079777i32;
                    };
                } else if (__value__ == (4079750i32)) {
                    return { _0 : null, _1 : _err_8 };
                    _gotoNext = 4079777i32;
                } else if (__value__ == (4079777i32)) {
                    {
                        var __tmp__ = stdgo._internal.crypto.internal.bigmod.Bigmod_newmodulusfrombig.newModulusFromBig(p_12);
                        _mp_19 = @:tmpset0 __tmp__._0;
                        _err_8 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_8 != null) {
                        _gotoNext = 4079832i32;
                    } else {
                        _gotoNext = 4079859i32;
                    };
                } else if (__value__ == (4079832i32)) {
                    return { _0 : null, _1 : _err_8 };
                    _gotoNext = 4079859i32;
                } else if (__value__ == (4079859i32)) {
                    {
                        var __tmp__ = stdgo._internal.crypto.internal.bigmod.Bigmod_newmodulusfrombig.newModulusFromBig(q_13);
                        _mq_20 = @:tmpset0 __tmp__._0;
                        _err_8 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_8 != null) {
                        _gotoNext = 4079914i32;
                    } else {
                        _gotoNext = 4079942i32;
                    };
                } else if (__value__ == (4079914i32)) {
                    return { _0 : null, _1 : _err_8 };
                    _gotoNext = 4079942i32;
                } else if (__value__ == (4079942i32)) {
                    _key_21 = (stdgo.Go.setRef(({ publicKey : ({  } : stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey), primes : (new stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>(2, 2, ...[p_12, q_13]) : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>), precomputed : ({ cRTValues : (new stdgo.Slice<stdgo._internal.crypto.rsa.Rsa_crtvalue.CRTValue>((0 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > 0 ? (0 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.rsa.Rsa_crtvalue.CRTValue)]) : stdgo.Slice<stdgo._internal.crypto.rsa.Rsa_crtvalue.CRTValue>), _n : _mn_18, _p : _mp_19, _q : _mq_20 } : stdgo._internal.crypto.rsa.Rsa_precomputedvalues.PrecomputedValues) } : stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>);
                    return { _0 : _key_21, _1 : (null : stdgo.Error) };
                    _gotoNext = 4080315i32;
                } else if (__value__ == (4080315i32)) {
                    _priv_22 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>);
                    (@:checkr _priv_22 ?? throw "null pointer dereference").publicKey.e = (65537 : stdgo.GoInt);
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
                    _primeLimit_23 = (((1i64 : stdgo.GoUInt64) << ((_bits / _nprimes : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt64) : stdgo.GoFloat64);
                    _pi_24 = (_primeLimit_23 / ((stdgo._internal.math.Math_log.log(_primeLimit_23) - (1 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _pi_24 = (_pi_24 / (4 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _pi_24 = (_pi_24 / (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    if ((_pi_24 <= (_nprimes : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 4080888i32;
                    } else {
                        _gotoNext = 4080994i32;
                    };
                } else if (__value__ == (4080888i32)) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: too few primes of given length to generate an RSA key" : stdgo.GoString)) };
                    _gotoNext = 4080994i32;
                } else if (__value__ == (4080994i32)) {
                    _primes_25 = (new stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>((_nprimes : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>);
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
                    _todo_26 = _bits;
                    if ((_nprimes >= (7 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4081584i32;
                    } else {
                        _gotoNext = 4081621i32;
                    };
                } else if (__value__ == (4081584i32)) {
                    _todo_26 = (_todo_26 + ((((_nprimes - (2 : stdgo.GoInt) : stdgo.GoInt)) / (5 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 4081621i32;
                } else if (__value__ == (4081621i32)) {
                    _i_27 = (0 : stdgo.GoInt);
                    _gotoNext = 4081621i32;
                    if ((_i_27 < _nprimes : Bool)) {
                        _gotoNext = 4081650i32;
                    } else {
                        _gotoNext = 4081855i32;
                    };
                } else if (__value__ == (4081650i32)) {
                    {
                        var __tmp__ = stdgo._internal.crypto.rand.Rand_prime.prime(_random, (_todo_26 / ((_nprimes - _i_27 : stdgo.GoInt)) : stdgo.GoInt));
                        _primes_25[(_i_27 : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                        _err_28 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_28 != null) {
                        _gotoNext = 4081743i32;
                    } else {
                        _gotoNext = 4081773i32;
                    };
                } else if (__value__ == (4081743i32)) {
                    return { _0 : null, _1 : _err_28 };
                    _gotoNext = 4081773i32;
                } else if (__value__ == (4081773i32)) {
                    _todo_26 = (_todo_26 - (@:check2r _primes_25[(_i_27 : stdgo.GoInt)].bitLen()) : stdgo.GoInt);
                    _i_27++;
                    _gotoNext = 4081621i32;
                } else if (__value__ == (4081855i32)) {
                    if ((0i32 : stdgo.GoInt) < (_primes_25.length)) {
                        _gotoNext = 4081991i32;
                    } else {
                        _gotoNext = 4081997i32;
                    };
                } else if (__value__ == (4081859i32)) {
                    _i_29++;
                    _gotoNext = 4081992i32;
                } else if (__value__ == (4081884i32)) {
                    _prime_30 = _primes_25[(_i_29 : stdgo.GoInt)];
                    _j_31 = (0 : stdgo.GoInt);
                    _gotoNext = 4081889i32;
                } else if (__value__ == (4081889i32)) {
                    if ((_j_31 < _i_29 : Bool)) {
                        _gotoNext = 4081912i32;
                    } else {
                        _gotoNext = 4081859i32;
                    };
                } else if (__value__ == (4081908i32)) {
                    _j_31++;
                    _gotoNext = 4081889i32;
                } else if (__value__ == (4081912i32)) {
                    if (@:check2r _prime_30.cmp(_primes_25[(_j_31 : stdgo.GoInt)]) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 4081947i32;
                    } else {
                        _gotoNext = 4081908i32;
                    };
                } else if (__value__ == (4081947i32)) {
                    _gotoNext = 4081049i32;
                } else if (__value__ == (4081991i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _primes_25[(0i32 : stdgo.GoInt)];
                        _i_29 = __tmp__0;
                        _prime_30 = __tmp__1;
                    };
                    _gotoNext = 4081992i32;
                } else if (__value__ == (4081992i32)) {
                    if (_i_29 < (_primes_25.length)) {
                        _gotoNext = 4081884i32;
                    } else {
                        _gotoNext = 4081997i32;
                    };
                } else if (__value__ == (4081997i32)) {
                    _n_32 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(stdgo._internal.crypto.rsa.Rsa__bigone._bigOne);
                    _totient_33 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(stdgo._internal.crypto.rsa.Rsa__bigone._bigOne);
                    _pminus1_34 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                    if ((0i32 : stdgo.GoInt) < (_primes_25.length)) {
                        _gotoNext = 4082207i32;
                    } else {
                        _gotoNext = 4082212i32;
                    };
                } else if (__value__ == (4082122i32)) {
                    _prime_36 = _primes_25[(_i_4082109_35 : stdgo.GoInt)];
                    @:check2r _n_32.mul(_n_32, _prime_36);
                    @:check2r _pminus1_34.sub(_prime_36, stdgo._internal.crypto.rsa.Rsa__bigone._bigOne);
                    @:check2r _totient_33.mul(_totient_33, _pminus1_34);
                    _i_4082109_35++;
                    _gotoNext = 4082208i32;
                } else if (__value__ == (4082207i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _primes_25[(0i32 : stdgo.GoInt)];
                        _i_4082109_35 = __tmp__0;
                        _prime_36 = __tmp__1;
                    };
                    _gotoNext = 4082208i32;
                } else if (__value__ == (4082208i32)) {
                    if (_i_4082109_35 < (_primes_25.length)) {
                        _gotoNext = 4082122i32;
                    } else {
                        _gotoNext = 4082212i32;
                    };
                } else if (__value__ == (4082212i32)) {
                    if (@:check2r _n_32.bitLen() != (_bits)) {
                        _gotoNext = 4082234i32;
                    } else {
                        _gotoNext = 4082444i32;
                    };
                } else if (__value__ == (4082234i32)) {
                    _gotoNext = 4081049i32;
                } else if (__value__ == (4082444i32)) {
                    (@:checkr _priv_22 ?? throw "null pointer dereference").d = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                    _e_37 = stdgo._internal.math.big.Big_newint.newInt(((@:checkr _priv_22 ?? throw "null pointer dereference").publicKey.e : stdgo.GoInt64));
                    _ok_38 = @:check2r (@:checkr _priv_22 ?? throw "null pointer dereference").d.modInverse(_e_37, _totient_33);
                    if ((_ok_38 != null && ((_ok_38 : Dynamic).__nil__ == null || !(_ok_38 : Dynamic).__nil__))) {
                        _gotoNext = 4082553i32;
                    } else {
                        _gotoNext = 4081049i32;
                    };
                } else if (__value__ == (4082553i32)) {
                    (@:checkr _priv_22 ?? throw "null pointer dereference").primes = _primes_25;
                    (@:checkr _priv_22 ?? throw "null pointer dereference").publicKey.n = _n_32;
                    _gotoNext = 4082611i32;
                } else if (__value__ == (4082611i32)) {
                    @:check2r _priv_22.precompute();
                    return { _0 : _priv_22, _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
