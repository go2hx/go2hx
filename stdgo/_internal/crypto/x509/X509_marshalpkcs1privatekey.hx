package stdgo._internal.crypto.x509;
function marshalPKCS1PrivateKey(_key:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_privatekey.PrivateKey>):stdgo.Slice<stdgo.GoUInt8> {
        @:check2r _key.precompute();
        var _version = (0 : stdgo.GoInt);
        if ((((@:checkr _key ?? throw "null pointer dereference").primes.length) > (2 : stdgo.GoInt) : Bool)) {
            _version = (1 : stdgo.GoInt);
        };
        var _priv = ({ version : _version, n : (@:checkr _key ?? throw "null pointer dereference").publicKey.n, e : (@:checkr _key ?? throw "null pointer dereference").publicKey.e, d : (@:checkr _key ?? throw "null pointer dereference").d, p : (@:checkr _key ?? throw "null pointer dereference").primes[(0 : stdgo.GoInt)], q : (@:checkr _key ?? throw "null pointer dereference").primes[(1 : stdgo.GoInt)], dp : (@:checkr _key ?? throw "null pointer dereference").precomputed.dp, dq : (@:checkr _key ?? throw "null pointer dereference").precomputed.dq, qinv : (@:checkr _key ?? throw "null pointer dereference").precomputed.qinv } : stdgo._internal.crypto.x509.X509_t_pkcs1privatekey.T_pkcs1PrivateKey);
        _priv.additionalPrimes = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_t_pkcs1additionalrsaprime.T_pkcs1AdditionalRSAPrime>(((@:checkr _key ?? throw "null pointer dereference").precomputed.cRTValues.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((@:checkr _key ?? throw "null pointer dereference").precomputed.cRTValues.length : stdgo.GoInt).toBasic() > 0 ? ((@:checkr _key ?? throw "null pointer dereference").precomputed.cRTValues.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.X509_t_pkcs1additionalrsaprime.T_pkcs1AdditionalRSAPrime)]) : stdgo.Slice<stdgo._internal.crypto.x509.X509_t_pkcs1additionalrsaprime.T_pkcs1AdditionalRSAPrime>);
        for (_i => _values in (@:checkr _key ?? throw "null pointer dereference").precomputed.cRTValues) {
            _priv.additionalPrimes[(_i : stdgo.GoInt)].prime = (@:checkr _key ?? throw "null pointer dereference").primes[((2 : stdgo.GoInt) + _i : stdgo.GoInt)];
            _priv.additionalPrimes[(_i : stdgo.GoInt)].exp = _values.exp;
            _priv.additionalPrimes[(_i : stdgo.GoInt)].coeff = _values.coeff;
        };
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_priv))), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __1:stdgo.Error = __tmp__._1;
        return _b;
    }
