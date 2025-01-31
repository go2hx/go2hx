package stdgo._internal.crypto.ecdsa;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.elliptic.Elliptic;
import stdgo._internal.crypto.ecdh.Ecdh;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.crypto.internal.randutil.Randutil;
import stdgo._internal.crypto.internal.boring.Boring;
import _internal.crypto.internal.boring.bbig.Bbig;
import stdgo._internal.crypto.internal.bigmod.Bigmod;
import stdgo._internal.io.Io;
import _internal.crypto.internal.nistec.Nistec;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.sha512.Sha512;
import stdgo._internal.crypto.aes.Aes;
import stdgo._internal.crypto.cipher.Cipher;
import stdgo._internal.math.big.Big;
function generateKey(_c:stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve, _rand:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>; var _1 : stdgo.Error; } {
        stdgo._internal.crypto.internal.randutil.Randutil_maybeReadByte.maybeReadByte(_rand);
        if ((false && (stdgo.Go.toInterface(_rand) == stdgo.Go.toInterface(stdgo.Go.asInterface((0 : stdgo._internal.crypto.internal.boring.Boring_T_randReader.T_randReader)))) : Bool)) {
            var __tmp__ = stdgo._internal.crypto.internal.boring.Boring_generateKeyECDSA.generateKeyECDSA(_c.params().name?.__copy__()), _x:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt = __tmp__._0, _y:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt = __tmp__._1, _d:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt = __tmp__._2, _err:stdgo.Error = __tmp__._3;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            return { _0 : (stdgo.Go.setRef(({ publicKey : ({ curve : _c, x : _internal.crypto.internal.boring.bbig.Bbig_dec.dec(_x), y : _internal.crypto.internal.boring.bbig.Bbig_dec.dec(_y) } : stdgo._internal.crypto.ecdsa.Ecdsa_PublicKey.PublicKey), d : _internal.crypto.internal.boring.bbig.Bbig_dec.dec(_d) } : stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey)) : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>), _1 : (null : stdgo.Error) };
        };
        stdgo._internal.crypto.internal.boring.Boring_unreachableExceptTests.unreachableExceptTests();
        {
            final __value__ = _c.params();
            if (__value__ == (stdgo._internal.crypto.elliptic.Elliptic_p224.p224().params())) {
                return stdgo._internal.crypto.ecdsa.Ecdsa__generateNISTEC._generateNISTEC(stdgo._internal.crypto.ecdsa.Ecdsa__p224._p224(), _rand);
            } else if (__value__ == (stdgo._internal.crypto.elliptic.Elliptic_p256.p256().params())) {
                return stdgo._internal.crypto.ecdsa.Ecdsa__generateNISTEC._generateNISTEC(stdgo._internal.crypto.ecdsa.Ecdsa__p256._p256(), _rand);
            } else if (__value__ == (stdgo._internal.crypto.elliptic.Elliptic_p384.p384().params())) {
                return stdgo._internal.crypto.ecdsa.Ecdsa__generateNISTEC._generateNISTEC(stdgo._internal.crypto.ecdsa.Ecdsa__p384._p384(), _rand);
            } else if (__value__ == (stdgo._internal.crypto.elliptic.Elliptic_p521.p521().params())) {
                return stdgo._internal.crypto.ecdsa.Ecdsa__generateNISTEC._generateNISTEC(stdgo._internal.crypto.ecdsa.Ecdsa__p521._p521(), _rand);
            } else {
                return stdgo._internal.crypto.ecdsa.Ecdsa__generateLegacy._generateLegacy(_c, _rand);
            };
        };
    }
