package stdgo._internal.crypto.x509;
function parseCertificateRequest(_asn1Data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_CertificateRequest.CertificateRequest>; var _1 : stdgo.Error; } {
        var _csr:stdgo._internal.crypto.x509.X509_T_certificateRequest.T_certificateRequest = ({} : stdgo._internal.crypto.x509.X509_T_certificateRequest.T_certificateRequest);
        var _csr__pointer__ = (stdgo.Go.setRef(_csr) : stdgo.Ref<stdgo._internal.crypto.x509.X509_T_certificateRequest.T_certificateRequest>);
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_asn1Data, stdgo.Go.toInterface(_csr__pointer__)), _rest:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        } else if ((_rest.length) != ((0 : stdgo.GoInt))) {
            return { _0 : null, _1 : stdgo.Go.asInterface(({ msg : ("trailing data" : stdgo.GoString) } : stdgo._internal.encoding.asn1.Asn1_SyntaxError.SyntaxError)) };
        };
        return stdgo._internal.crypto.x509.X509__parseCertificateRequest._parseCertificateRequest(_csr__pointer__);
    }
