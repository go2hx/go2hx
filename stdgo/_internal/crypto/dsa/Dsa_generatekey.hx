package stdgo._internal.crypto.dsa;
function generateKey(_priv:stdgo.Ref<stdgo._internal.crypto.dsa.Dsa_privatekey.PrivateKey>, _rand:stdgo._internal.io.Io_reader.Reader):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L160"
        if (((({
            final value = (@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.p;
            (value == null || (value : Dynamic).__nil__);
        }) || ({
            final value = (@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.q;
            (value == null || (value : Dynamic).__nil__);
        }) : Bool) || ({
            final value = (@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.g;
            (value == null || (value : Dynamic).__nil__);
        }) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L161"
            return stdgo._internal.errors.Errors_new_.new_(("crypto/dsa: parameters not set up before generating key" : stdgo.GoString));
        };
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _xBytes = (new stdgo.Slice<stdgo.GoUInt8>(((@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.q.bitLen() / (8 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L167"
        while (true) {
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_rand, _xBytes), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L169"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L170"
                return _err;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L172"
            _x.setBytes(_xBytes);
            //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L173"
            if (((_x.sign() != (0 : stdgo.GoInt)) && (_x.cmp((@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.q) < (0 : stdgo.GoInt) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L174"
                break;
            };
        };
        (@:checkr _priv ?? throw "null pointer dereference").x = _x;
        (@:checkr _priv ?? throw "null pointer dereference").publicKey.y = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L180"
        (@:checkr _priv ?? throw "null pointer dereference").publicKey.y.exp((@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.g, _x, (@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.p);
        //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L181"
        return (null : stdgo.Error);
    }
