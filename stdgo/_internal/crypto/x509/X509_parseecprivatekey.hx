package stdgo._internal.crypto.x509;
function parseECPrivateKey(_der:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/sec1.go#L38"
        return stdgo._internal.crypto.x509.X509__parseecprivatekey._parseECPrivateKey(null, _der);
    }
