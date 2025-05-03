package stdgo._internal.crypto.x509;
function parseDERCRL(_derBytes:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_certificatelist.CertificateList>; var _1 : stdgo.Error; } {
        var _certList = (stdgo.Go.setRef(({} : stdgo._internal.crypto.x509.pkix.Pkix_certificatelist.CertificateList)) : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_certificatelist.CertificateList>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1698"
        {
            var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_derBytes, stdgo.Go.toInterface(stdgo.Go.asInterface(_certList))), _rest:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1699"
                return { _0 : null, _1 : _err };
            } else if ((_rest.length) != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1701"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: trailing data after CRL" : stdgo.GoString)) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1703"
        return { _0 : _certList, _1 : (null : stdgo.Error) };
    }
