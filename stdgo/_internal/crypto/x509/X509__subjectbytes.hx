package stdgo._internal.crypto.x509;
function _subjectBytes(_cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1398"
        if ((((@:checkr _cert ?? throw "null pointer dereference").rawSubject.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1399"
            return { _0 : (@:checkr _cert ?? throw "null pointer dereference").rawSubject, _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1402"
        return stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _cert ?? throw "null pointer dereference").subject.toRDNSequence())));
    }
