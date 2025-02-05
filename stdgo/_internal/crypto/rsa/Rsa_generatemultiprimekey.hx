package stdgo._internal.crypto.rsa;
function generateMultiPrimeKey(_random:stdgo._internal.io.Io_reader.Reader, _nprimes:stdgo.GoInt, _bits:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>; var _1 : stdgo.Error; } {
        var _i_4068599:stdgo.GoInt = (0 : stdgo.GoInt);
        var _primeLimit_4067220:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var q_4066201:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _err_4066043:stdgo.Error = (null : stdgo.Error);
        var _bDp_4066026:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0);
        var _bN_4066006:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0);
        var _prime_4068840:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var dq_4066243:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var d_4066161:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _bP_4066018:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0);
        var _e_4069208:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _pminus1_4068807:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _prime_4068602:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _i_4068365:stdgo.GoInt = (0 : stdgo.GoInt);
        var _primes_4067734:stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>);
        var _priv_4067055:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey> = (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>);
        var _n_4068737:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _todo_4067797:stdgo.GoInt = (0 : stdgo.GoInt);
        var _key_4066682:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey> = (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>);
        var _bD_4066014:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0);
        var _i_4068849_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _mq_4066599:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus> = (null : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        var _bE_4066010:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0);
        var _totient_4068769:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _err_4068399:stdgo.Error = (null : stdgo.Error);
        var _bDq_4066031:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0);
        var _ok_4069241:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _j_4068633:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pi_4067340:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _mp_4066517:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus> = (null : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        var _mn_4066435:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus> = (null : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
        var _e64_4066291:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var dp_4066221:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var nextSetOfPrimesBreak = false;
        var qinv_4066265:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var p_4066181:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var e_4066141:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var n_4066121:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _bQinv_4066036:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0);
        var _bQ_4066022:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = new stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt(0, 0);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    stdgo._internal.crypto.internal.randutil.Randutil_maybereadbyte.maybeReadByte(_random);
                    if ((((false && stdgo.Go.toInterface(_random) == (stdgo.Go.toInterface(stdgo.Go.asInterface((0 : stdgo._internal.crypto.internal.boring.Boring_t_randreader.T_randReader)))) : Bool) && _nprimes == ((2 : stdgo.GoInt)) : Bool) && (((_bits == ((2048 : stdgo.GoInt)) || _bits == ((3072 : stdgo.GoInt)) : Bool) || (_bits == (4096 : stdgo.GoInt)) : Bool)) : Bool)) {
                        _gotoNext = 4066002i32;
                    } else {
                        _gotoNext = 4067055i32;
                    };
                } else if (__value__ == (4066002i32)) {
                    {
                        var __tmp__ = stdgo._internal.crypto.internal.boring.Boring_generatekeyrsa.generateKeyRSA(_bits);
                        _bN_4066006 = @:tmpset0 __tmp__._0;
                        _bE_4066010 = @:tmpset0 __tmp__._1;
                        _bD_4066014 = @:tmpset0 __tmp__._2;
                        _bP_4066018 = @:tmpset0 __tmp__._3;
                        _bQ_4066022 = @:tmpset0 __tmp__._4;
                        _bDp_4066026 = @:tmpset0 __tmp__._5;
                        _bDq_4066031 = @:tmpset0 __tmp__._6;
                        _bQinv_4066036 = @:tmpset0 __tmp__._7;
                        _err_4066043 = @:tmpset0 __tmp__._8;
                    };
                    if (_err_4066043 != null) {
                        _gotoNext = 4066094i32;
                    } else {
                        _gotoNext = 4066121i32;
                    };
                } else if (__value__ == (4066094i32)) {
                    return { _0 : null, _1 : _err_4066043 };
                    _gotoNext = 4066121i32;
                } else if (__value__ == (4066121i32)) {
                    n_4066121 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bN_4066006);
                    e_4066141 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bE_4066010);
                    d_4066161 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bD_4066014);
                    p_4066181 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bP_4066018);
                    q_4066201 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bQ_4066022);
                    dp_4066221 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bDp_4066026);
                    dq_4066243 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bDq_4066031);
                    qinv_4066265 = stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_bQinv_4066036);
                    _e64_4066291 = @:check2r e_4066141.int64();
                    if ((!@:check2r e_4066141.isInt64() || (((_e64_4066291 : stdgo.GoInt) : stdgo.GoInt64) != _e64_4066291) : Bool)) {
                        _gotoNext = 4066352i32;
                    } else {
                        _gotoNext = 4066435i32;
                    };
                } else if (__value__ == (4066352i32)) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: generated key exponent too large" : stdgo.GoString)) };
                    _gotoNext = 4066435i32;
                } else if (__value__ == (4066435i32)) {
                    {
                        var __tmp__ = stdgo._internal.crypto.internal.bigmod.Bigmod_newmodulusfrombig.newModulusFromBig(n_4066121);
                        _mn_4066435 = @:tmpset0 __tmp__._0;
                        _err_4066043 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_4066043 != null) {
                        _gotoNext = 4066490i32;
                    } else {
                        _gotoNext = 4066517i32;
                    };
                } else if (__value__ == (4066490i32)) {
                    return { _0 : null, _1 : _err_4066043 };
                    _gotoNext = 4066517i32;
                } else if (__value__ == (4066517i32)) {
                    {
                        var __tmp__ = stdgo._internal.crypto.internal.bigmod.Bigmod_newmodulusfrombig.newModulusFromBig(p_4066181);
                        _mp_4066517 = @:tmpset0 __tmp__._0;
                        _err_4066043 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_4066043 != null) {
                        _gotoNext = 4066572i32;
                    } else {
                        _gotoNext = 4066599i32;
                    };
                } else if (__value__ == (4066572i32)) {
                    return { _0 : null, _1 : _err_4066043 };
                    _gotoNext = 4066599i32;
                } else if (__value__ == (4066599i32)) {
                    {
                        var __tmp__ = stdgo._internal.crypto.internal.bigmod.Bigmod_newmodulusfrombig.newModulusFromBig(q_4066201);
                        _mq_4066599 = @:tmpset0 __tmp__._0;
                        _err_4066043 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_4066043 != null) {
                        _gotoNext = 4066654i32;
                    } else {
                        _gotoNext = 4066682i32;
                    };
                } else if (__value__ == (4066654i32)) {
                    return { _0 : null, _1 : _err_4066043 };
                    _gotoNext = 4066682i32;
                } else if (__value__ == (4066682i32)) {
                    _key_4066682 = (stdgo.Go.setRef(({ publicKey : ({  } : stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey), primes : (new stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>(2, 2, ...[p_4066181, q_4066201]) : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>), precomputed : ({ cRTValues : (new stdgo.Slice<stdgo._internal.crypto.rsa.Rsa_crtvalue.CRTValue>((0 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > 0 ? (0 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.rsa.Rsa_crtvalue.CRTValue)]) : stdgo.Slice<stdgo._internal.crypto.rsa.Rsa_crtvalue.CRTValue>), _n : _mn_4066435, _p : _mp_4066517, _q : _mq_4066599 } : stdgo._internal.crypto.rsa.Rsa_precomputedvalues.PrecomputedValues) } : stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>);
                    return { _0 : _key_4066682, _1 : (null : stdgo.Error) };
                    _gotoNext = 4067055i32;
                } else if (__value__ == (4067055i32)) {
                    _priv_4067055 = (stdgo.Go.setRef(({} : stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>);
                    (@:checkr _priv_4067055 ?? throw "null pointer dereference").publicKey.e = (65537 : stdgo.GoInt);
                    if ((_nprimes < (2 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4067112i32;
                    } else {
                        _gotoNext = 4067203i32;
                    };
                } else if (__value__ == (4067112i32)) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: GenerateMultiPrimeKey: nprimes must be >= 2" : stdgo.GoString)) };
                    _gotoNext = 4067203i32;
                } else if (__value__ == (4067203i32)) {
                    if ((_bits < (64 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4067216i32;
                    } else {
                        _gotoNext = 4067734i32;
                    };
                } else if (__value__ == (4067216i32)) {
                    _primeLimit_4067220 = (((1i64 : stdgo.GoUInt64) << ((_bits / _nprimes : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt64) : stdgo.GoFloat64);
                    _pi_4067340 = (_primeLimit_4067220 / ((stdgo._internal.math.Math_log.log(_primeLimit_4067220) - (1 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    _pi_4067340 = (_pi_4067340 / (4 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    _pi_4067340 = (_pi_4067340 / (2 : stdgo.GoFloat64) : stdgo.GoFloat64);
                    if ((_pi_4067340 <= (_nprimes : stdgo.GoFloat64) : Bool)) {
                        _gotoNext = 4067628i32;
                    } else {
                        _gotoNext = 4067734i32;
                    };
                } else if (__value__ == (4067628i32)) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: too few primes of given length to generate an RSA key" : stdgo.GoString)) };
                    _gotoNext = 4067734i32;
                } else if (__value__ == (4067734i32)) {
                    _primes_4067734 = (new stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>((_nprimes : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>);
                    _gotoNext = 4067771i32;
                } else if (__value__ == (4067771i32)) {
                    var __blank__ = 0i32;
                    nextSetOfPrimesBreak = false;
                    _gotoNext = 4067789i32;
                } else if (__value__ == (4067789i32)) {
                    if (!nextSetOfPrimesBreak) {
                        _gotoNext = 4067793i32;
                    } else {
                        _gotoNext = 4069351i32;
                    };
                } else if (__value__ == (4067793i32)) {
                    _todo_4067797 = _bits;
                    if ((_nprimes >= (7 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4068324i32;
                    } else {
                        _gotoNext = 4068361i32;
                    };
                } else if (__value__ == (4068324i32)) {
                    _todo_4067797 = (_todo_4067797 + ((((_nprimes - (2 : stdgo.GoInt) : stdgo.GoInt)) / (5 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 4068361i32;
                } else if (__value__ == (4068361i32)) {
                    _i_4068365 = (0 : stdgo.GoInt);
                    _gotoNext = 4068361i32;
                    if ((_i_4068365 < _nprimes : Bool)) {
                        _gotoNext = 4068390i32;
                    } else {
                        _gotoNext = 4068595i32;
                    };
                } else if (__value__ == (4068390i32)) {
                    {
                        var __tmp__ = stdgo._internal.crypto.rand.Rand_prime.prime(_random, (_todo_4067797 / ((_nprimes - _i_4068365 : stdgo.GoInt)) : stdgo.GoInt));
                        _primes_4067734[(_i_4068365 : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                        _err_4068399 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_4068399 != null) {
                        _gotoNext = 4068483i32;
                    } else {
                        _gotoNext = 4068513i32;
                    };
                } else if (__value__ == (4068483i32)) {
                    return { _0 : null, _1 : _err_4068399 };
                    _gotoNext = 4068513i32;
                } else if (__value__ == (4068513i32)) {
                    _todo_4067797 = (_todo_4067797 - (@:check2r _primes_4067734[(_i_4068365 : stdgo.GoInt)].bitLen()) : stdgo.GoInt);
                    _i_4068365++;
                    _gotoNext = 4068361i32;
                } else if (__value__ == (4068595i32)) {
                    if ((0i32 : stdgo.GoInt) < (_primes_4067734.length)) {
                        _gotoNext = 4068731i32;
                    } else {
                        _gotoNext = 4068737i32;
                    };
                } else if (__value__ == (4068599i32)) {
                    _i_4068599++;
                    _gotoNext = 4068732i32;
                } else if (__value__ == (4068624i32)) {
                    _prime_4068602 = _primes_4067734[(_i_4068599 : stdgo.GoInt)];
                    _j_4068633 = (0 : stdgo.GoInt);
                    _gotoNext = 4068629i32;
                } else if (__value__ == (4068629i32)) {
                    if ((_j_4068633 < _i_4068599 : Bool)) {
                        _gotoNext = 4068652i32;
                    } else {
                        _gotoNext = 4068599i32;
                    };
                } else if (__value__ == (4068648i32)) {
                    _j_4068633++;
                    _gotoNext = 4068629i32;
                } else if (__value__ == (4068652i32)) {
                    if (@:check2r _prime_4068602.cmp(_primes_4067734[(_j_4068633 : stdgo.GoInt)]) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 4068687i32;
                    } else {
                        _gotoNext = 4068648i32;
                    };
                } else if (__value__ == (4068687i32)) {
                    _gotoNext = 4067789i32;
                } else if (__value__ == (4068731i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _primes_4067734[(0i32 : stdgo.GoInt)];
                        _i_4068599 = __tmp__0;
                        _prime_4068602 = __tmp__1;
                    };
                    _gotoNext = 4068732i32;
                } else if (__value__ == (4068732i32)) {
                    if (_i_4068599 < (_primes_4067734.length)) {
                        _gotoNext = 4068624i32;
                    } else {
                        _gotoNext = 4068737i32;
                    };
                } else if (__value__ == (4068737i32)) {
                    _n_4068737 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(stdgo._internal.crypto.rsa.Rsa__bigone._bigOne);
                    _totient_4068769 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(stdgo._internal.crypto.rsa.Rsa__bigone._bigOne);
                    _pminus1_4068807 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                    if ((0i32 : stdgo.GoInt) < (_primes_4067734.length)) {
                        _gotoNext = 4068947i32;
                    } else {
                        _gotoNext = 4068952i32;
                    };
                } else if (__value__ == (4068862i32)) {
                    _prime_4068840 = _primes_4067734[(_i_4068849_0 : stdgo.GoInt)];
                    @:check2r _n_4068737.mul(_n_4068737, _prime_4068840);
                    @:check2r _pminus1_4068807.sub(_prime_4068840, stdgo._internal.crypto.rsa.Rsa__bigone._bigOne);
                    @:check2r _totient_4068769.mul(_totient_4068769, _pminus1_4068807);
                    _i_4068849_0++;
                    _gotoNext = 4068948i32;
                } else if (__value__ == (4068947i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _primes_4067734[(0i32 : stdgo.GoInt)];
                        _i_4068849_0 = __tmp__0;
                        _prime_4068840 = __tmp__1;
                    };
                    _gotoNext = 4068948i32;
                } else if (__value__ == (4068948i32)) {
                    if (_i_4068849_0 < (_primes_4067734.length)) {
                        _gotoNext = 4068862i32;
                    } else {
                        _gotoNext = 4068952i32;
                    };
                } else if (__value__ == (4068952i32)) {
                    if (@:check2r _n_4068737.bitLen() != (_bits)) {
                        _gotoNext = 4068974i32;
                    } else {
                        _gotoNext = 4069184i32;
                    };
                } else if (__value__ == (4068974i32)) {
                    _gotoNext = 4067789i32;
                } else if (__value__ == (4069184i32)) {
                    (@:checkr _priv_4067055 ?? throw "null pointer dereference").d = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
                    _e_4069208 = stdgo._internal.math.big.Big_newint.newInt(((@:checkr _priv_4067055 ?? throw "null pointer dereference").publicKey.e : stdgo.GoInt64));
                    _ok_4069241 = @:check2r (@:checkr _priv_4067055 ?? throw "null pointer dereference").d.modInverse(_e_4069208, _totient_4068769);
                    if ((_ok_4069241 != null && ((_ok_4069241 : Dynamic).__nil__ == null || !(_ok_4069241 : Dynamic).__nil__))) {
                        _gotoNext = 4069293i32;
                    } else {
                        _gotoNext = 4067789i32;
                    };
                } else if (__value__ == (4069293i32)) {
                    (@:checkr _priv_4067055 ?? throw "null pointer dereference").primes = _primes_4067734;
                    (@:checkr _priv_4067055 ?? throw "null pointer dereference").publicKey.n = _n_4068737;
                    _gotoNext = 4069351i32;
                } else if (__value__ == (4069351i32)) {
                    @:check2r _priv_4067055.precompute();
                    return { _0 : _priv_4067055, _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
