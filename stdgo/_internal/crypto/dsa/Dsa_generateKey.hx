package stdgo._internal.crypto.dsa;
function generateKey(_priv:stdgo.Ref<stdgo._internal.crypto.dsa.Dsa_PrivateKey.PrivateKey>, _rand:stdgo._internal.io.Io_Reader.Reader):stdgo.Error {
        if ((((_priv.publicKey.parameters.p == null || (_priv.publicKey.parameters.p : Dynamic).__nil__) || (_priv.publicKey.parameters.q == null || (_priv.publicKey.parameters.q : Dynamic).__nil__) : Bool) || (_priv.publicKey.parameters.g == null || (_priv.publicKey.parameters.g : Dynamic).__nil__) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("crypto/dsa: parameters not set up before generating key" : stdgo.GoString));
        };
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _xBytes = (new stdgo.Slice<stdgo.GoUInt8>((_priv.publicKey.parameters.q.bitLen() / (8 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        while (true) {
            var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_rand, _xBytes), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            _x.setBytes(_xBytes);
            if (((_x.sign() != (0 : stdgo.GoInt)) && (_x.cmp(_priv.publicKey.parameters.q) < (0 : stdgo.GoInt) : Bool) : Bool)) {
                break;
            };
        };
        _priv.x = _x;
        _priv.publicKey.y = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        _priv.publicKey.y.exp(_priv.publicKey.parameters.g, _x, _priv.publicKey.parameters.p);
        return (null : stdgo.Error);
    }
