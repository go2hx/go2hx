package stdgo._internal.crypto.ed25519;
function verify(_publicKey:stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey, _message:stdgo.Slice<stdgo.GoUInt8>, _sig:stdgo.Slice<stdgo.GoUInt8>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L262"
        return stdgo._internal.crypto.ed25519.Ed25519__verify._verify(_publicKey, _message, _sig, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
    }
