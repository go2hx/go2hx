package stdgo._internal.crypto.x509;
function _subjectBytes(_cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        if ((((@:checkr _cert ?? throw "null pointer dereference").rawSubject.length) > (0 : stdgo.GoInt) : Bool)) {
            return { _0 : (@:checkr _cert ?? throw "null pointer dereference").rawSubject, _1 : (null : stdgo.Error) };
        };
        return stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _cert ?? throw "null pointer dereference").subject.toRDNSequence())));
    }
