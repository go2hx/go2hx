package stdgo._internal.crypto.ecdsa;
function _generateLegacy(_c:stdgo._internal.crypto.elliptic.Elliptic_curve.Curve, _rand:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.crypto.ecdsa.Ecdsa__randfieldelement._randFieldElement(_c, _rand), _k:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var _priv = (stdgo.Go.setRef(({} : stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey)) : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>);
        (@:checkr _priv ?? throw "null pointer dereference").publicKey.curve = _c;
        (@:checkr _priv ?? throw "null pointer dereference").d = _k;
        {
            var __tmp__ = _c.scalarBaseMult(@:check2r _k.bytes());
            (@:checkr _priv ?? throw "null pointer dereference").publicKey.x = @:tmpset0 __tmp__._0;
            (@:checkr _priv ?? throw "null pointer dereference").publicKey.y = @:tmpset0 __tmp__._1;
        };
        return { _0 : _priv, _1 : (null : stdgo.Error) };
    }
