package stdgo._internal.crypto.rsa;
function signPSS(_rand:stdgo._internal.io.Io_reader.Reader, _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>, _hash:stdgo._internal.crypto.Crypto_hash.Hash, _digest:stdgo.Slice<stdgo.GoUInt8>, _opts:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_pssoptions.PSSOptions>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        if ((false && (stdgo.Go.toInterface(_rand) == stdgo.Go.toInterface(stdgo.Go.asInterface((0 : stdgo._internal.crypto.internal.boring.Boring_t_randreader.T_randReader)))) : Bool)) {
            var __tmp__ = stdgo._internal.crypto.rsa.Rsa__boringprivatekey._boringPrivateKey(_priv), _bkey:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_privatekeyrsa.PrivateKeyRSA> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            return stdgo._internal.crypto.internal.boring.Boring_signrsapss.signRSAPSS(_bkey, _hash, _digest, @:check2r _opts._saltLength());
        };
        stdgo._internal.crypto.internal.boring.Boring_unreachableexcepttests.unreachableExceptTests();
        if (((_opts != null && ((_opts : Dynamic).__nil__ == null || !(_opts : Dynamic).__nil__)) && ((@:checkr _opts ?? throw "null pointer dereference").hash != (0u32 : stdgo._internal.crypto.Crypto_hash.Hash)) : Bool)) {
            _hash = (@:checkr _opts ?? throw "null pointer dereference").hash;
        };
        var _saltLength = (@:check2r _opts._saltLength() : stdgo.GoInt);
        {
            final __value__ = _saltLength;
            if (__value__ == ((0 : stdgo.GoInt))) {
                _saltLength = ((((((@:check2r (@:checkr _priv ?? throw "null pointer dereference").publicKey.n.bitLen() - (1 : stdgo.GoInt) : stdgo.GoInt) + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt) - (2 : stdgo.GoInt) : stdgo.GoInt) - _hash.size() : stdgo.GoInt);
                if ((_saltLength < (0 : stdgo.GoInt) : Bool)) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.rsa.Rsa_errmessagetoolong.errMessageTooLong };
                };
            } else if (__value__ == ((-1 : stdgo.GoInt))) {
                _saltLength = _hash.size();
            } else {
                if ((_saltLength <= (0 : stdgo.GoInt) : Bool)) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.rsa.Rsa__invalidsaltlenerr._invalidSaltLenErr };
                };
            };
        };
        var _salt = (new stdgo.Slice<stdgo.GoUInt8>((_saltLength : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_rand, _salt), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
        };
        return stdgo._internal.crypto.rsa.Rsa__signpsswithsalt._signPSSWithSalt(_priv, _hash, _digest, _salt);
    }
