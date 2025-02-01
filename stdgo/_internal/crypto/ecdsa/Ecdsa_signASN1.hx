package stdgo._internal.crypto.ecdsa;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.elliptic.Elliptic;
import stdgo._internal.crypto.ecdh.Ecdh;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.crypto.internal.randutil.Randutil;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.internal.boring.bbig.Bbig;
import stdgo._internal.crypto.internal.bigmod.Bigmod;
import stdgo._internal.io.Io;
import stdgo._internal.crypto.internal.nistec.Nistec;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.sha512.Sha512;
import stdgo._internal.crypto.aes.Aes;
import stdgo._internal.crypto.cipher.Cipher;
import stdgo._internal.math.big.Big;
function signASN1(_rand:stdgo._internal.io.Io_Reader.Reader, _priv:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>, _hash:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        stdgo._internal.crypto.internal.randutil.Randutil_maybeReadByte.maybeReadByte(_rand);
        if ((false && (stdgo.Go.toInterface(_rand) == stdgo.Go.toInterface(stdgo.Go.asInterface((0 : stdgo._internal.crypto.internal.boring.Boring_T_randReader.T_randReader)))) : Bool)) {
            var __tmp__ = stdgo._internal.crypto.ecdsa.Ecdsa__boringPrivateKey._boringPrivateKey(_priv), _b:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PrivateKeyECDSA.PrivateKeyECDSA> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            return stdgo._internal.crypto.internal.boring.Boring_signMarshalECDSA.signMarshalECDSA(_b, _hash);
        };
        stdgo._internal.crypto.internal.boring.Boring_unreachableExceptTests.unreachableExceptTests();
        var __tmp__ = stdgo._internal.crypto.ecdsa.Ecdsa__mixedCSPRNG._mixedCSPRNG(_rand, _priv, _hash), _csprng:stdgo._internal.io.Io_Reader.Reader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        {
            var __tmp__ = stdgo._internal.crypto.ecdsa.Ecdsa__signAsm._signAsm(_priv, _csprng, _hash), _sig:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.crypto.ecdsa.Ecdsa__errNoAsm._errNoAsm))) {
                return { _0 : _sig, _1 : _err };
            };
        };
        {
            final __value__ = (@:checkr _priv ?? throw "null pointer dereference").publicKey.curve.params();
            if (__value__ == (stdgo._internal.crypto.elliptic.Elliptic_p224.p224().params())) {
                return stdgo._internal.crypto.ecdsa.Ecdsa__signNISTEC._signNISTEC(stdgo._internal.crypto.ecdsa.Ecdsa__p224._p224(), _priv, _csprng, _hash);
            } else if (__value__ == (stdgo._internal.crypto.elliptic.Elliptic_p256.p256().params())) {
                return stdgo._internal.crypto.ecdsa.Ecdsa__signNISTEC._signNISTEC(stdgo._internal.crypto.ecdsa.Ecdsa__p256._p256(), _priv, _csprng, _hash);
            } else if (__value__ == (stdgo._internal.crypto.elliptic.Elliptic_p384.p384().params())) {
                return stdgo._internal.crypto.ecdsa.Ecdsa__signNISTEC._signNISTEC(stdgo._internal.crypto.ecdsa.Ecdsa__p384._p384(), _priv, _csprng, _hash);
            } else if (__value__ == (stdgo._internal.crypto.elliptic.Elliptic_p521.p521().params())) {
                return stdgo._internal.crypto.ecdsa.Ecdsa__signNISTEC._signNISTEC(stdgo._internal.crypto.ecdsa.Ecdsa__p521._p521(), _priv, _csprng, _hash);
            } else {
                return stdgo._internal.crypto.ecdsa.Ecdsa__signLegacy._signLegacy(_priv, _csprng, _hash);
            };
        };
    }
