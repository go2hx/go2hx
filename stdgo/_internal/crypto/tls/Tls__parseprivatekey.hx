package stdgo._internal.crypto.tls;
function _parsePrivateKey(_der:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.crypto.Crypto_privatekey.PrivateKey; var _1 : stdgo.Error; } {
        {
            var __tmp__ = stdgo._internal.crypto.x509.X509_parsepkcs1privatekey.parsePKCS1PrivateKey(_der), _key:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface(_key)), _1 : (null : stdgo.Error) };
            };
        };
        {
            var __tmp__ = stdgo._internal.crypto.x509.X509_parsepkcs8privatekey.parsePKCS8PrivateKey(_der), _key:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                {
                    final __type__ = _key;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey>)) || stdgo.Go.typeEquals((__type__ : stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey))) {
                        var _key:stdgo.AnyInterface = __type__?.__underlying__();
                        return { _0 : stdgo.Go.toInterface(_key), _1 : (null : stdgo.Error) };
                    } else {
                        var _key:stdgo.AnyInterface = __type__?.__underlying__();
                        return { _0 : (null : stdgo._internal.crypto.Crypto_privatekey.PrivateKey), _1 : stdgo._internal.errors.Errors_new_.new_(("tls: found unknown private key type in PKCS#8 wrapping" : stdgo.GoString)) };
                    };
                };
            };
        };
        {
            var __tmp__ = stdgo._internal.crypto.x509.X509_parseecprivatekey.parseECPrivateKey(_der), _key:stdgo.Ref<stdgo._internal.crypto.ecdsa.Ecdsa_privatekey.PrivateKey> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface(_key)), _1 : (null : stdgo.Error) };
            };
        };
        return { _0 : (null : stdgo._internal.crypto.Crypto_privatekey.PrivateKey), _1 : stdgo._internal.errors.Errors_new_.new_(("tls: failed to parse private key" : stdgo.GoString)) };
    }
