package stdgo._internal.crypto.ed25519;
function sign(_privateKey:stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey, _message:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        var _signature = (new stdgo.Slice<stdgo.GoUInt8>((64 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.ed25519.Ed25519__sign._sign(_signature, _privateKey, _message, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
        return _signature;
    }
