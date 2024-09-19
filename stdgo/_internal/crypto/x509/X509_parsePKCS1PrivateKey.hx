package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
function parsePKCS1PrivateKey(_der:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>; var _1 : stdgo.Error; } {
        var _priv:stdgo._internal.crypto.x509.X509_T_pkcs1PrivateKey.T_pkcs1PrivateKey = ({} : stdgo._internal.crypto.x509.X509_T_pkcs1PrivateKey.T_pkcs1PrivateKey);
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_der, stdgo.Go.toInterface((stdgo.Go.setRef(_priv) : stdgo.Ref<stdgo._internal.crypto.x509.X509_T_pkcs1PrivateKey.T_pkcs1PrivateKey>))), _rest:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_rest.length) > (0 : stdgo.GoInt) : Bool)) {
            return { _0 : null, _1 : stdgo.Go.asInterface(({ msg : ("trailing data" : stdgo.GoString) } : stdgo._internal.encoding.asn1.Asn1_SyntaxError.SyntaxError)) };
        };
        if (_err != null) {
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_der, stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo._internal.crypto.x509.X509_T_ecPrivateKey.T_ecPrivateKey() : stdgo._internal.crypto.x509.X509_T_ecPrivateKey.T_ecPrivateKey)) : stdgo.Ref<stdgo._internal.crypto.x509.X509_T_ecPrivateKey.T_ecPrivateKey>))), __1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: failed to parse private key (use ParseECPrivateKey instead for this key format)" : stdgo.GoString)) };
                };
            };
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_der, stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo._internal.crypto.x509.X509_T_pkcs8.T_pkcs8() : stdgo._internal.crypto.x509.X509_T_pkcs8.T_pkcs8)) : stdgo.Ref<stdgo._internal.crypto.x509.X509_T_pkcs8.T_pkcs8>))), __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: failed to parse private key (use ParsePKCS8PrivateKey instead for this key format)" : stdgo.GoString)) };
                };
            };
            return { _0 : null, _1 : _err };
        };
        if ((_priv.version > (1 : stdgo.GoInt) : Bool)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: unsupported private key version" : stdgo.GoString)) };
        };
        if (((((_priv.n.sign() <= (0 : stdgo.GoInt) : Bool) || (_priv.d.sign() <= (0 : stdgo.GoInt) : Bool) : Bool) || (_priv.p.sign() <= (0 : stdgo.GoInt) : Bool) : Bool) || (_priv.q.sign() <= (0 : stdgo.GoInt) : Bool) : Bool)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: private key contains zero or negative value" : stdgo.GoString)) };
        };
        var _key = (stdgo.Go.setRef(({} : stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>);
        _key.publicKey = ({ e : _priv.e, n : _priv.n } : stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey);
        _key.d = _priv.d;
        _key.primes = (new stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>>(((2 : stdgo.GoInt) + (_priv.additionalPrimes.length) : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>>);
        _key.primes[(0 : stdgo.GoInt)] = _priv.p;
        _key.primes[(1 : stdgo.GoInt)] = _priv.q;
        for (_i => _a in _priv.additionalPrimes) {
            if ((_a.prime.sign() <= (0 : stdgo.GoInt) : Bool)) {
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: private key contains zero or negative prime" : stdgo.GoString)) };
            };
            _key.primes[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)] = _a.prime;
        };
        _err = _key.validate();
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        _key.precompute();
        return { _0 : _key, _1 : (null : stdgo.Error) };
    }