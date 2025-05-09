package stdgo._internal.crypto.rsa;
function decryptPKCS1v15(_random:stdgo._internal.io.Io_reader.Reader, _priv:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L93"
        {
            var _err = (stdgo._internal.crypto.rsa.Rsa__checkpub._checkPub((stdgo.Go.setRef((@:checkr _priv ?? throw "null pointer dereference").publicKey) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>)) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L94"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L97"
        if (false) {
            var __tmp__ = stdgo._internal.crypto.rsa.Rsa__boringprivatekey._boringPrivateKey(_priv), _bkey:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_privatekeyrsa.PrivateKeyRSA> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L99"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L100"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            var __tmp__ = stdgo._internal.crypto.internal.boring.Boring_decryptrsapkcs1.decryptRSAPKCS1(_bkey, _ciphertext), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L103"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L104"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.rsa.Rsa_errdecryption.errDecryption };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L106"
            return { _0 : _out, _1 : (null : stdgo.Error) };
        };
        var __tmp__ = stdgo._internal.crypto.rsa.Rsa__decryptpkcs1v15._decryptPKCS1v15(_priv, _ciphertext), _valid:stdgo.GoInt = __tmp__._0, _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _index:stdgo.GoInt = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L110"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L111"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L113"
        if (_valid == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L114"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.rsa.Rsa_errdecryption.errDecryption };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L116"
        return { _0 : (_out.__slice__(_index) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
