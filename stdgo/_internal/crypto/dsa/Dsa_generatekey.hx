package stdgo._internal.crypto.dsa;
function generateKey(_priv:stdgo.Ref<stdgo._internal.crypto.dsa.Dsa_privatekey.PrivateKey>, _rand:stdgo._internal.io.Io_reader.Reader):stdgo.Error {
        if (((((@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.p == null || ((@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.p : Dynamic).__nil__) || ((@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.q == null || ((@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.q : Dynamic).__nil__) : Bool) || ((@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.g == null || ((@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.g : Dynamic).__nil__) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("crypto/dsa: parameters not set up before generating key" : stdgo.GoString));
        };
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _xBytes = (new stdgo.Slice<stdgo.GoUInt8>((@:check2r (@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.q.bitLen() / (8 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        while (true) {
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_rand, _xBytes), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            @:check2r _x.setBytes(_xBytes);
            if (((@:check2r _x.sign() != (0 : stdgo.GoInt)) && (@:check2r _x.cmp((@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.q) < (0 : stdgo.GoInt) : Bool) : Bool)) {
                break;
            };
        };
        (@:checkr _priv ?? throw "null pointer dereference").x = _x;
        (@:checkr _priv ?? throw "null pointer dereference").publicKey.y = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        @:check2r (@:checkr _priv ?? throw "null pointer dereference").publicKey.y.exp((@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.g, _x, (@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.p);
        return (null : stdgo.Error);
    }
