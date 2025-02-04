package stdgo._internal.crypto.ed25519;
function newKeyFromSeed(_seed:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey {
        var _privateKey = (new stdgo.Slice<stdgo.GoUInt8>((64 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.ed25519.Ed25519__newkeyfromseed._newKeyFromSeed(_privateKey, _seed);
        return _privateKey;
    }
