package stdgo._internal.crypto.x509;
@:keep @:allow(stdgo._internal.crypto.x509.X509.RevocationList_asInterface) class RevocationList_static_extension {
    @:keep
    @:tdfield
    static public function checkSignatureFrom( _rl:stdgo.Ref<stdgo._internal.crypto.x509.X509_revocationlist.RevocationList>, _parent:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>):stdgo.Error {
        @:recv var _rl:stdgo.Ref<stdgo._internal.crypto.x509.X509_revocationlist.RevocationList> = _rl;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L2457"
        if ((((@:checkr _parent ?? throw "null pointer dereference").version == ((3 : stdgo.GoInt)) && !(@:checkr _parent ?? throw "null pointer dereference").basicConstraintsValid : Bool) || ((@:checkr _parent ?? throw "null pointer dereference").basicConstraintsValid && !(@:checkr _parent ?? throw "null pointer dereference").isCA : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L2459"
            return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_constraintviolationerror.ConstraintViolationError() : stdgo._internal.crypto.x509.X509_constraintviolationerror.ConstraintViolationError));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L2462"
        if ((((@:checkr _parent ?? throw "null pointer dereference").keyUsage != (0 : stdgo._internal.crypto.x509.X509_keyusage.KeyUsage)) && (((@:checkr _parent ?? throw "null pointer dereference").keyUsage & (64 : stdgo._internal.crypto.x509.X509_keyusage.KeyUsage) : stdgo._internal.crypto.x509.X509_keyusage.KeyUsage) == (0 : stdgo._internal.crypto.x509.X509_keyusage.KeyUsage)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L2463"
            return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_constraintviolationerror.ConstraintViolationError() : stdgo._internal.crypto.x509.X509_constraintviolationerror.ConstraintViolationError));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L2466"
        if ((@:checkr _parent ?? throw "null pointer dereference").publicKeyAlgorithm == ((0 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L2467"
            return stdgo._internal.crypto.x509.X509_errunsupportedalgorithm.errUnsupportedAlgorithm;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L2470"
        return _parent.checkSignature((@:checkr _rl ?? throw "null pointer dereference").signatureAlgorithm, (@:checkr _rl ?? throw "null pointer dereference").rawTBSRevocationList, (@:checkr _rl ?? throw "null pointer dereference").signature);
    }
}
