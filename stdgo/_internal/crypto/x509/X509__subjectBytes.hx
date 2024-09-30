package stdgo._internal.crypto.x509;
function _subjectBytes(_cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        if (((_cert.rawSubject.length) > (0 : stdgo.GoInt) : Bool)) {
            return { _0 : _cert.rawSubject, _1 : (null : stdgo.Error) };
        };
        return stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_cert.subject.toRDNSequence())));
    }
