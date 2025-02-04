package stdgo._internal.crypto.x509;
function parseCertificates(_der:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>; var _1 : stdgo.Error; } {
        var _certs:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>);
        while (((_der.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = stdgo._internal.crypto.x509.X509__parsecertificate._parseCertificate(_der), _cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>), _1 : _err };
            };
            _certs = (_certs.__append__(_cert));
            _der = (_der.__slice__(((@:checkr _cert ?? throw "null pointer dereference").raw.length)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return { _0 : _certs, _1 : (null : stdgo.Error) };
    }
