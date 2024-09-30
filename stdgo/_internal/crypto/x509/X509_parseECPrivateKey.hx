package stdgo._internal.crypto.x509;
function parseECPrivateKey(_der:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>; var _1 : stdgo.Error; } {
        return stdgo._internal.crypto.x509.X509__parseECPrivateKey._parseECPrivateKey(null, _der);
    }
