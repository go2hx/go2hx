package stdgo._internal.crypto.x509;
@:keep @:allow(stdgo._internal.crypto.x509.X509.RevocationList_asInterface) class RevocationList_static_extension {
    @:keep
    static public function checkSignatureFrom( _rl:stdgo.Ref<stdgo._internal.crypto.x509.X509_RevocationList.RevocationList>, _parent:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>):stdgo.Error {
        @:recv var _rl:stdgo.Ref<stdgo._internal.crypto.x509.X509_RevocationList.RevocationList> = _rl;
        if (((_parent.version == ((3 : stdgo.GoInt)) && !_parent.basicConstraintsValid : Bool) || (_parent.basicConstraintsValid && !_parent.isCA : Bool) : Bool)) {
            return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_ConstraintViolationError.ConstraintViolationError() : stdgo._internal.crypto.x509.X509_ConstraintViolationError.ConstraintViolationError));
        };
        if (((_parent.keyUsage != (0 : stdgo._internal.crypto.x509.X509_KeyUsage.KeyUsage)) && ((_parent.keyUsage & (64 : stdgo._internal.crypto.x509.X509_KeyUsage.KeyUsage) : stdgo._internal.crypto.x509.X509_KeyUsage.KeyUsage) == (0 : stdgo._internal.crypto.x509.X509_KeyUsage.KeyUsage)) : Bool)) {
            return stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_ConstraintViolationError.ConstraintViolationError() : stdgo._internal.crypto.x509.X509_ConstraintViolationError.ConstraintViolationError));
        };
        if (_parent.publicKeyAlgorithm == ((0 : stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm))) {
            return stdgo._internal.crypto.x509.X509_errUnsupportedAlgorithm.errUnsupportedAlgorithm;
        };
        return _parent.checkSignature(_rl.signatureAlgorithm, _rl.rawTBSRevocationList, _rl.signature);
    }
}
