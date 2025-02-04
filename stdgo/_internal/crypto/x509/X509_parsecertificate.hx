package stdgo._internal.crypto.x509;
function parseCertificate(_der:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.crypto.x509.X509__parsecertificate._parseCertificate(_der), _cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        if ((_der.length) != (((@:checkr _cert ?? throw "null pointer dereference").raw.length))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: trailing data" : stdgo.GoString)) };
        };
        return { _0 : _cert, _1 : _err };
    }
