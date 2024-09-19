package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
function marshalPKCS1PrivateKey(_key:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PrivateKey.PrivateKey>):stdgo.Slice<stdgo.GoUInt8> {
        _key.precompute();
        var _version = (0 : stdgo.GoInt);
        if (((_key.primes.length) > (2 : stdgo.GoInt) : Bool)) {
            _version = (1 : stdgo.GoInt);
        };
        var _priv = ({ version : _version, n : _key.publicKey.n, e : _key.publicKey.e, d : _key.d, p : _key.primes[(0 : stdgo.GoInt)], q : _key.primes[(1 : stdgo.GoInt)], dp : _key.precomputed.dp, dq : _key.precomputed.dq, qinv : _key.precomputed.qinv } : stdgo._internal.crypto.x509.X509_T_pkcs1PrivateKey.T_pkcs1PrivateKey);
        _priv.additionalPrimes = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_T_pkcs1AdditionalRSAPrime.T_pkcs1AdditionalRSAPrime>((_key.precomputed.crtvalues.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_key.precomputed.crtvalues.length : stdgo.GoInt).toBasic() > 0 ? (_key.precomputed.crtvalues.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.X509_T_pkcs1AdditionalRSAPrime.T_pkcs1AdditionalRSAPrime)]) : stdgo.Slice<stdgo._internal.crypto.x509.X509_T_pkcs1AdditionalRSAPrime.T_pkcs1AdditionalRSAPrime>);
        for (_i => _values in _key.precomputed.crtvalues) {
            _priv.additionalPrimes[(_i : stdgo.GoInt)].prime = _key.primes[((2 : stdgo.GoInt) + _i : stdgo.GoInt)];
            _priv.additionalPrimes[(_i : stdgo.GoInt)].exp = _values.exp;
            _priv.additionalPrimes[(_i : stdgo.GoInt)].coeff = _values.coeff;
        };
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(_priv)), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __1:stdgo.Error = __tmp__._1;
        return _b;
    }
