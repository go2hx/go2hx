package stdgo._internal.crypto.x509;
@:keep @:allow(stdgo._internal.crypto.x509.X509.ConstraintViolationError_asInterface) class ConstraintViolationError_static_extension {
    @:keep
    @:tdfield
    static public function error( _:stdgo._internal.crypto.x509.X509_constraintviolationerror.ConstraintViolationError):stdgo.GoString {
        @:recv var _:stdgo._internal.crypto.x509.X509_constraintviolationerror.ConstraintViolationError = _?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L804"
        return ("x509: invalid signature: parent certificate cannot sign this kind of certificate" : stdgo.GoString);
    }
}
