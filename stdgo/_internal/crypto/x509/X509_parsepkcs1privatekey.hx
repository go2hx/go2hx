package stdgo._internal.crypto.x509;
function parsePKCS1PrivateKey(_der:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>; var _1 : stdgo.Error; } {
        var _priv:stdgo._internal.crypto.x509.X509_t_pkcs1privatekey.T_pkcs1PrivateKey = ({} : stdgo._internal.crypto.x509.X509_t_pkcs1privatekey.T_pkcs1PrivateKey);
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_der, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_priv) : stdgo.Ref<stdgo._internal.crypto.x509.X509_t_pkcs1privatekey.T_pkcs1PrivateKey>)))), _rest:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_rest.length) > (0 : stdgo.GoInt) : Bool)) {
            return { _0 : null, _1 : stdgo.Go.asInterface(({ msg : ("trailing data" : stdgo.GoString) } : stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError)) };
        };
        if (_err != null) {
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_der, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.crypto.x509.X509_t_ecprivatekey.T_ecPrivateKey() : stdgo._internal.crypto.x509.X509_t_ecprivatekey.T_ecPrivateKey)) : stdgo.Ref<stdgo._internal.crypto.x509.X509_t_ecprivatekey.T_ecPrivateKey>)))), __1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: failed to parse private key (use ParseECPrivateKey instead for this key format)" : stdgo.GoString)) };
                };
            };
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_der, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.crypto.x509.X509_t_pkcs8.T_pkcs8() : stdgo._internal.crypto.x509.X509_t_pkcs8.T_pkcs8)) : stdgo.Ref<stdgo._internal.crypto.x509.X509_t_pkcs8.T_pkcs8>)))), __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: failed to parse private key (use ParsePKCS8PrivateKey instead for this key format)" : stdgo.GoString)) };
                };
            };
            return { _0 : null, _1 : _err };
        };
        if ((_priv.version > (1 : stdgo.GoInt) : Bool)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: unsupported private key version" : stdgo.GoString)) };
        };
        if (((((@:check2r _priv.n.sign() <= (0 : stdgo.GoInt) : Bool) || (@:check2r _priv.d.sign() <= (0 : stdgo.GoInt) : Bool) : Bool) || (@:check2r _priv.p.sign() <= (0 : stdgo.GoInt) : Bool) : Bool) || (@:check2r _priv.q.sign() <= (0 : stdgo.GoInt) : Bool) : Bool)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: private key contains zero or negative value" : stdgo.GoString)) };
        };
        var _key = (stdgo.Go.setRef(({} : stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>);
        (@:checkr _key ?? throw "null pointer dereference").publicKey = ({ e : _priv.e, n : _priv.n } : stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey);
        (@:checkr _key ?? throw "null pointer dereference").d = _priv.d;
        (@:checkr _key ?? throw "null pointer dereference").primes = (new stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>(((2 : stdgo.GoInt) + (_priv.additionalPrimes.length) : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>>);
        (@:checkr _key ?? throw "null pointer dereference").primes[(0 : stdgo.GoInt)] = _priv.p;
        (@:checkr _key ?? throw "null pointer dereference").primes[(1 : stdgo.GoInt)] = _priv.q;
        for (_i => _a in _priv.additionalPrimes) {
            if ((@:check2r _a.prime.sign() <= (0 : stdgo.GoInt) : Bool)) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: private key contains zero or negative prime" : stdgo.GoString)) };
            };
            (@:checkr _key ?? throw "null pointer dereference").primes[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)] = _a.prime;
        };
        _err = @:check2r _key.validate();
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        @:check2r _key.precompute();
        return { _0 : _key, _1 : (null : stdgo.Error) };
    }
