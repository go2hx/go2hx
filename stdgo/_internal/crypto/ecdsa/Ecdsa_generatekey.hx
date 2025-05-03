package stdgo._internal.crypto.ecdsa;
function generateKey(_c:stdgo._internal.crypto.elliptic.Elliptic_curve.Curve, _rand:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L159"
        stdgo._internal.crypto.internal.randutil.Randutil_maybereadbyte.maybeReadByte(_rand);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L161"
        if ((false && (stdgo.Go.toInterface(_rand) == stdgo.Go.toInterface(stdgo.Go.asInterface((0 : stdgo._internal.crypto.internal.boring.Boring_t_randreader.T_randReader)))) : Bool)) {
            var __tmp__ = stdgo._internal.crypto.internal.boring.Boring_generatekeyecdsa.generateKeyECDSA(_c.params().name?.__copy__()), _x:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = __tmp__._0, _y:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = __tmp__._1, _d:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt = __tmp__._2, _err:stdgo.Error = __tmp__._3;
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L163"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L164"
                return { _0 : null, _1 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L166"
            return { _0 : (stdgo.Go.setRef(({ publicKey : ({ curve : _c, x : stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_x), y : stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_y) } : stdgo._internal.crypto.ecdsa.Ecdsa_publickey.PublicKey), d : stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_d) } : stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey)) : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>), _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L168"
        stdgo._internal.crypto.internal.boring.Boring_unreachableexcepttests.unreachableExceptTests();
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L170"
        {
            final __value__ = _c.params();
            if (__value__ == (stdgo._internal.crypto.elliptic.Elliptic_p224.p224().params())) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L172"
                return stdgo._internal.crypto.ecdsa.Ecdsa__generatenistec._generateNISTEC(stdgo._internal.crypto.ecdsa.Ecdsa__p224._p224(), _rand);
            } else if (__value__ == (stdgo._internal.crypto.elliptic.Elliptic_p256.p256().params())) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L174"
                return stdgo._internal.crypto.ecdsa.Ecdsa__generatenistec._generateNISTEC(stdgo._internal.crypto.ecdsa.Ecdsa__p256._p256(), _rand);
            } else if (__value__ == (stdgo._internal.crypto.elliptic.Elliptic_p384.p384().params())) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L176"
                return stdgo._internal.crypto.ecdsa.Ecdsa__generatenistec._generateNISTEC(stdgo._internal.crypto.ecdsa.Ecdsa__p384._p384(), _rand);
            } else if (__value__ == (stdgo._internal.crypto.elliptic.Elliptic_p521.p521().params())) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L178"
                return stdgo._internal.crypto.ecdsa.Ecdsa__generatenistec._generateNISTEC(stdgo._internal.crypto.ecdsa.Ecdsa__p521._p521(), _rand);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L180"
                return stdgo._internal.crypto.ecdsa.Ecdsa__generatelegacy._generateLegacy(_c, _rand);
            };
        };
    }
