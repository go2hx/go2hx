package stdgo._internal.crypto.x509;
@:keep @:allow(stdgo._internal.crypto.x509.X509.RevocationList_asInterface) class RevocationList_static_extension {
    @:keep
    @:tdfield
    static public function checkSignatureFrom( _rl:stdgo.Ref<stdgo._internal.crypto.x509.X509_revocationlist.RevocationList>, _parent:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>):stdgo.Error {
        @:recv var _rl:stdgo.Ref<stdgo._internal.crypto.x509.X509_revocationlist.RevocationList> = _rl;
        if ((((@:checkr _parent ?? throw "null pointer dereference").version == ((3 : stdgo.GoInt)) && !(@:checkr _parent ?? throw "null pointer dereference").basicConstraintsValid : Bool) || ((@:checkr _parent ?? throw "null pointer dereference").basicConstraintsValid && !(@:checkr _parent ?? throw "null pointer dereference").isCA : Bool) : Bool)) {
            return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_constraintviolationerror.ConstraintViolationError() : stdgo._internal.crypto.x509.X509_constraintviolationerror.ConstraintViolationError));
        };
        if ((((@:checkr _parent ?? throw "null pointer dereference").keyUsage != (0 : stdgo._internal.crypto.x509.X509_keyusage.KeyUsage)) && (((@:checkr _parent ?? throw "null pointer dereference").keyUsage & (64 : stdgo._internal.crypto.x509.X509_keyusage.KeyUsage) : stdgo._internal.crypto.x509.X509_keyusage.KeyUsage) == (0 : stdgo._internal.crypto.x509.X509_keyusage.KeyUsage)) : Bool)) {
            return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_constraintviolationerror.ConstraintViolationError() : stdgo._internal.crypto.x509.X509_constraintviolationerror.ConstraintViolationError));
        };
        if ((@:checkr _parent ?? throw "null pointer dereference").publicKeyAlgorithm == ((0 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm))) {
            return stdgo._internal.crypto.x509.X509_errunsupportedalgorithm.errUnsupportedAlgorithm;
        };
        return @:check2r _parent.checkSignature((@:checkr _rl ?? throw "null pointer dereference").signatureAlgorithm, (@:checkr _rl ?? throw "null pointer dereference").rawTBSRevocationList, (@:checkr _rl ?? throw "null pointer dereference").signature);
    }
}
