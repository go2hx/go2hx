package stdgo._internal.crypto.ecdsa;
function signASN1(_rand:stdgo._internal.io.Io_reader.Reader, _priv:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>, _hash:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L257"
        stdgo._internal.crypto.internal.randutil.Randutil_maybereadbyte.maybeReadByte(_rand);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L259"
        if ((false && (stdgo.Go.toInterface(_rand) == stdgo.Go.toInterface(stdgo.Go.asInterface((0 : stdgo._internal.crypto.internal.boring.Boring_t_randreader.T_randReader)))) : Bool)) {
            var __tmp__ = stdgo._internal.crypto.ecdsa.Ecdsa__boringprivatekey._boringPrivateKey(_priv), _b:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_privatekeyecdsa.PrivateKeyECDSA> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L261"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L262"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L264"
            return stdgo._internal.crypto.internal.boring.Boring_signmarshalecdsa.signMarshalECDSA(_b, _hash);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L266"
        stdgo._internal.crypto.internal.boring.Boring_unreachableexcepttests.unreachableExceptTests();
        var __tmp__ = stdgo._internal.crypto.ecdsa.Ecdsa__mixedcsprng._mixedCSPRNG(_rand, _priv, _hash), _csprng:stdgo._internal.io.Io_reader.Reader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L269"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L270"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L273"
        {
            var __tmp__ = stdgo._internal.crypto.ecdsa.Ecdsa__signasm._signAsm(_priv, _csprng, _hash), _sig:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.crypto.ecdsa.Ecdsa__errnoasm._errNoAsm))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L274"
                return { _0 : _sig, _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L277"
        {
            final __value__ = (@:checkr _priv ?? throw "null pointer dereference").publicKey.curve.params();
            if (__value__ == (stdgo._internal.crypto.elliptic.Elliptic_p224.p224().params())) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L279"
                return stdgo._internal.crypto.ecdsa.Ecdsa__signnistec._signNISTEC(stdgo._internal.crypto.ecdsa.Ecdsa__p224._p224(), _priv, _csprng, _hash);
            } else if (__value__ == (stdgo._internal.crypto.elliptic.Elliptic_p256.p256().params())) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L281"
                return stdgo._internal.crypto.ecdsa.Ecdsa__signnistec._signNISTEC(stdgo._internal.crypto.ecdsa.Ecdsa__p256._p256(), _priv, _csprng, _hash);
            } else if (__value__ == (stdgo._internal.crypto.elliptic.Elliptic_p384.p384().params())) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L283"
                return stdgo._internal.crypto.ecdsa.Ecdsa__signnistec._signNISTEC(stdgo._internal.crypto.ecdsa.Ecdsa__p384._p384(), _priv, _csprng, _hash);
            } else if (__value__ == (stdgo._internal.crypto.elliptic.Elliptic_p521.p521().params())) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L285"
                return stdgo._internal.crypto.ecdsa.Ecdsa__signnistec._signNISTEC(stdgo._internal.crypto.ecdsa.Ecdsa__p521._p521(), _priv, _csprng, _hash);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa.go#L287"
                return stdgo._internal.crypto.ecdsa.Ecdsa__signlegacy._signLegacy(_priv, _csprng, _hash);
            };
        };
    }
