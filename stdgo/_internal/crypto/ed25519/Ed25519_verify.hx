package stdgo._internal.crypto.ed25519;
function verify(_publicKey:stdgo._internal.crypto.ed25519.Ed25519_PublicKey.PublicKey, _message:stdgo.Slice<stdgo.GoUInt8>, _sig:stdgo.Slice<stdgo.GoUInt8>):Bool {
        return stdgo._internal.crypto.ed25519.Ed25519__verify._verify(_publicKey, _message, _sig, stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__());
    }