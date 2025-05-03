package stdgo._internal.crypto.rsa;
function signPSS(_rand:stdgo._internal.io.Io_reader.Reader, _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>, _hash:stdgo._internal.crypto.Crypto_hash.Hash, _digest:stdgo.Slice<stdgo.GoUInt8>, _opts:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L299"
        if ((false && (stdgo.Go.toInterface(_rand) == stdgo.Go.toInterface(stdgo.Go.asInterface((0 : stdgo._internal.crypto.internal.boring.Boring_t_randreader.T_randReader)))) : Bool)) {
            var __tmp__ = stdgo._internal.crypto.rsa.Rsa__boringprivatekey._boringPrivateKey(_priv), _bkey:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_privatekeyrsa.PrivateKeyRSA> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L301"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L302"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L304"
            return stdgo._internal.crypto.internal.boring.Boring_signrsapss.signRSAPSS(_bkey, _hash, _digest, _opts._saltLength());
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L306"
        stdgo._internal.crypto.internal.boring.Boring_unreachableexcepttests.unreachableExceptTests();
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L308"
        if ((({
            final value = _opts;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && ((@:checkr _opts ?? throw "null pointer dereference").hash != (0u32 : stdgo._internal.crypto.Crypto_hash.Hash)) : Bool)) {
            _hash = (@:checkr _opts ?? throw "null pointer dereference").hash;
        };
        var _saltLength = (_opts._saltLength() : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L313"
        {
            final __value__ = _saltLength;
            if (__value__ == ((0 : stdgo.GoInt))) {
                _saltLength = (((((((@:checkr _priv ?? throw "null pointer dereference").publicKey.n.bitLen() - (1 : stdgo.GoInt) : stdgo.GoInt) + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt) - (2 : stdgo.GoInt) : stdgo.GoInt) - _hash.size() : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L316"
                if ((_saltLength < (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L317"
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.rsa.Rsa_errmessagetoolong.errMessageTooLong };
                };
            } else if (__value__ == ((-1 : stdgo.GoInt))) {
                _saltLength = _hash.size();
            } else {
                //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L324"
                if ((_saltLength <= (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L325"
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.rsa.Rsa__invalidsaltlenerr._invalidSaltLenErr };
                };
            };
        };
        var _salt = (new stdgo.Slice<stdgo.GoUInt8>((_saltLength : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L329"
        {
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_rand, _salt), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L330"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pss.go#L332"
        return stdgo._internal.crypto.rsa.Rsa__signpsswithsalt._signPSSWithSalt(_priv, _hash, _digest, _salt);
    }
