package stdgo._internal.crypto.ed25519;
function newKeyFromSeed(_seed:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey {
        var _privateKey = (new stdgo.Slice<stdgo.GoUInt8>((64 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L162"
        stdgo._internal.crypto.ed25519.Ed25519__newkeyfromseed._newKeyFromSeed(_privateKey, _seed);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L163"
        return _privateKey;
    }
