# Module stdgo._internal.crypto.ed25519 has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/_internal/crypto/internal/boring/Boring_unreachable.hx:3: characters 9-64

  3 | [2m        [0m[1m_internal.crypto.internal.boring.sig.Sig_standardCrypto[0m[2m.standardCrypto();[0m
    |         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : _internal.crypto.internal.boring.sig.Sig_standardCrypto

[30;41m ERROR [0m stdgo/_internal/crypto/ed25519/Ed25519__newKeyFromSeed.hx:10: characters 23-84

 10 | [2m        var __tmp__ = [0m[1m_internal.crypto.internal.edwards25519.Edwards25519_newScalar[0m[2m.newScalar().setBytesWithClamping((_h.__slice__(0, (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _s:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
    |                       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : _internal.crypto.internal.edwards25519.Edwards25519_newScalar

[30;41m ERROR [0m stdgo/_internal/crypto/ed25519/Ed25519__newKeyFromSeed.hx:10: characters 200-265

 10 | [2m        var __tmp__ = _internal.crypto.internal.edwards25519.Edwards25519_newScalar.newScalar().setBytesWithClamping((_h.__slice__(0, (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _s:stdgo.Ref<[0m[1m_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar[0m[2m> = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
    |                                                                                                                                                                                                        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : _internal.crypto.internal.edwards25519.Edwards25519_Scalar

[30;41m ERROR [0m stdgo/_internal/crypto/ed25519/Ed25519__newKeyFromSeed.hx:14: characters 185-248

 14 | [2m        var a = (stdgo.Go.setRef((new _internal.crypto.internal.edwards25519.Edwards25519_Point.Point() : _internal.crypto.internal.edwards25519.Edwards25519_Point.Point)) : stdgo.Ref<[0m[1m_internal.crypto.internal.edwards25519.Edwards25519_Point.Point[0m[2m>).scalarBaseMult(_s);[0m
    |                                                                                                                                                                                         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : _internal.crypto.internal.edwards25519.Edwards25519_Point

[30;41m ERROR [0m stdgo/_internal/crypto/ed25519/Ed25519__verify.hx:12: characters 191-254

 12 | [2m        var __tmp__ = (stdgo.Go.setRef((new _internal.crypto.internal.edwards25519.Edwards25519_Point.Point() : _internal.crypto.internal.edwards25519.Edwards25519_Point.Point)) : stdgo.Ref<[0m[1m_internal.crypto.internal.edwards25519.Edwards25519_Point.Point[0m[2m>).setBytes(_publicKey), a:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point> = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
    |                                                                                                                                                                                               [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : _internal.crypto.internal.edwards25519.Edwards25519_Point

[30;41m ERROR [0m stdgo/_internal/crypto/ed25519/Ed25519__verify.hx:12: characters 291-354

 12 | [2m        var __tmp__ = (stdgo.Go.setRef((new _internal.crypto.internal.edwards25519.Edwards25519_Point.Point() : _internal.crypto.internal.edwards25519.Edwards25519_Point.Point)) : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>).setBytes(_publicKey), a:stdgo.Ref<[0m[1m_internal.crypto.internal.edwards25519.Edwards25519_Point.Point[0m[2m> = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
    |                                                                                                                                                                                                                                                                                                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : _internal.crypto.internal.edwards25519.Edwards25519_Point

[30;41m ERROR [0m stdgo/_internal/crypto/ed25519/Ed25519__verify.hx:27: characters 23-84

 27 | [2m        var __tmp__ = [0m[1m_internal.crypto.internal.edwards25519.Edwards25519_newScalar[0m[2m.newScalar().setUniformBytes(_hramDigest), _k:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
    |                       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : _internal.crypto.internal.edwards25519.Edwards25519_newScalar

[30;41m ERROR [0m stdgo/_internal/crypto/ed25519/Ed25519__verify.hx:27: characters 140-205

 27 | [2m        var __tmp__ = _internal.crypto.internal.edwards25519.Edwards25519_newScalar.newScalar().setUniformBytes(_hramDigest), _k:stdgo.Ref<[0m[1m_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar[0m[2m> = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
    |                                                                                                                                            [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : _internal.crypto.internal.edwards25519.Edwards25519_Scalar

[30;41m ERROR [0m stdgo/_internal/crypto/ed25519/Ed25519__verify.hx:31: characters 23-84

 31 | [2m        var __tmp__ = [0m[1m_internal.crypto.internal.edwards25519.Edwards25519_newScalar[0m[2m.newScalar().setCanonicalBytes((_sig.__slice__((32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), s:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
    |                       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : _internal.crypto.internal.edwards25519.Edwards25519_newScalar

[30;41m ERROR [0m stdgo/_internal/crypto/ed25519/Ed25519__verify.hx:31: characters 195-260

 31 | [2m        var __tmp__ = _internal.crypto.internal.edwards25519.Edwards25519_newScalar.newScalar().setCanonicalBytes((_sig.__slice__((32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), s:stdgo.Ref<[0m[1m_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar[0m[2m> = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
    |                                                                                                                                                                                                   [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : _internal.crypto.internal.edwards25519.Edwards25519_Scalar

[30;41m ERROR [0m stdgo/_internal/crypto/ed25519/Ed25519__verify.hx:35: characters 191-254

 35 | [2m        var _minusA = (stdgo.Go.setRef((new _internal.crypto.internal.edwards25519.Edwards25519_Point.Point() : _internal.crypto.internal.edwards25519.Edwards25519_Point.Point)) : stdgo.Ref<[0m[1m_internal.crypto.internal.edwards25519.Edwards25519_Point.Point[0m[2m>).negate(a);[0m
    |                                                                                                                                                                                               [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : _internal.crypto.internal.edwards25519.Edwards25519_Point

[30;41m ERROR [0m stdgo/_internal/crypto/ed25519/Ed25519__verify.hx:36: characters 185-248

 36 | [2m        var r = (stdgo.Go.setRef((new _internal.crypto.internal.edwards25519.Edwards25519_Point.Point() : _internal.crypto.internal.edwards25519.Edwards25519_Point.Point)) : stdgo.Ref<[0m[1m_internal.crypto.internal.edwards25519.Edwards25519_Point.Point[0m[2m>).varTimeDoubleScalarBaseMult(_k, _minusA, s);[0m
    |                                                                                                                                                                                         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : _internal.crypto.internal.edwards25519.Edwards25519_Point

[30;41m ERROR [0m stdgo/_internal/crypto/ed25519/Ed25519__sign.hx:12: characters 23-84

 12 | [2m        var __tmp__ = [0m[1m_internal.crypto.internal.edwards25519.Edwards25519_newScalar[0m[2m.newScalar().setBytesWithClamping((_h.__slice__(0, (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _s:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
    |                       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : _internal.crypto.internal.edwards25519.Edwards25519_newScalar

[30;41m ERROR [0m stdgo/_internal/crypto/ed25519/Ed25519__sign.hx:12: characters 200-265

 12 | [2m        var __tmp__ = _internal.crypto.internal.edwards25519.Edwards25519_newScalar.newScalar().setBytesWithClamping((_h.__slice__(0, (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _s:stdgo.Ref<[0m[1m_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar[0m[2m> = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
    |                                                                                                                                                                                                        [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : _internal.crypto.internal.edwards25519.Edwards25519_Scalar

[30;41m ERROR [0m stdgo/_internal/crypto/ed25519/Ed25519__sign.hx:27: characters 23-84

 27 | [2m        var __tmp__ = [0m[1m_internal.crypto.internal.edwards25519.Edwards25519_newScalar[0m[2m.newScalar().setUniformBytes(_messageDigest), _r:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
    |                       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : _internal.crypto.internal.edwards25519.Edwards25519_newScalar

[30;41m ERROR [0m stdgo/_internal/crypto/ed25519/Ed25519__sign.hx:27: characters 143-208

 27 | [2m        var __tmp__ = _internal.crypto.internal.edwards25519.Edwards25519_newScalar.newScalar().setUniformBytes(_messageDigest), _r:stdgo.Ref<[0m[1m_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar[0m[2m> = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
    |                                                                                                                                               [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : _internal.crypto.internal.edwards25519.Edwards25519_Scalar

[30;41m ERROR [0m stdgo/_internal/crypto/ed25519/Ed25519__sign.hx:31: characters 185-248

 31 | [2m        var r = (stdgo.Go.setRef((new _internal.crypto.internal.edwards25519.Edwards25519_Point.Point() : _internal.crypto.internal.edwards25519.Edwards25519_Point.Point)) : stdgo.Ref<[0m[1m_internal.crypto.internal.edwards25519.Edwards25519_Point.Point[0m[2m>).scalarBaseMult(_r);[0m
    |                                                                                                                                                                                         [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : _internal.crypto.internal.edwards25519.Edwards25519_Point

[30;41m ERROR [0m stdgo/_internal/crypto/ed25519/Ed25519__sign.hx:43: characters 23-84

 43 | [2m        var __tmp__ = [0m[1m_internal.crypto.internal.edwards25519.Edwards25519_newScalar[0m[2m.newScalar().setUniformBytes(_hramDigest), _k:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
    |                       [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : _internal.crypto.internal.edwards25519.Edwards25519_newScalar

[30;41m ERROR [0m stdgo/_internal/crypto/ed25519/Ed25519__sign.hx:43: characters 140-205

 43 | [2m        var __tmp__ = _internal.crypto.internal.edwards25519.Edwards25519_newScalar.newScalar().setUniformBytes(_hramDigest), _k:stdgo.Ref<[0m[1m_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar[0m[2m> = __tmp__._0, _err:stdgo.Error = __tmp__._1;[0m
    |                                                                                                                                            [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : _internal.crypto.internal.edwards25519.Edwards25519_Scalar

[30;41m ERROR [0m stdgo/_internal/crypto/ed25519/Ed25519__sign.hx:47: characters 17-78

 47 | [2m        var s = [0m[1m_internal.crypto.internal.edwards25519.Edwards25519_newScalar[0m[2m.newScalar().multiplyAdd(_k, _s, _r);[0m
    |                 [31m^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^[0m
    | Type not found : _internal.crypto.internal.edwards25519.Edwards25519_newScalar


```

