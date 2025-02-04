package stdgo._internal.crypto.x509;
function parseCertificateRequest(_asn1Data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificaterequest.CertificateRequest>; var _1 : stdgo.Error; } {
        var _csr:stdgo._internal.crypto.x509.X509_t_certificaterequest.T_certificateRequest = ({} : stdgo._internal.crypto.x509.X509_t_certificaterequest.T_certificateRequest);
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_unmarshal.unmarshal(_asn1Data, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_csr) : stdgo.Ref<stdgo._internal.crypto.x509.X509_t_certificaterequest.T_certificateRequest>)))), _rest:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        } else if ((_rest.length) != ((0 : stdgo.GoInt))) {
            return { _0 : null, _1 : stdgo.Go.asInterface(({ msg : ("trailing data" : stdgo.GoString) } : stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError)) };
        };
        return stdgo._internal.crypto.x509.X509__parsecertificaterequest._parseCertificateRequest((stdgo.Go.setRef(_csr) : stdgo.Ref<stdgo._internal.crypto.x509.X509_t_certificaterequest.T_certificateRequest>));
    }
