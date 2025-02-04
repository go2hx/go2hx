package stdgo._internal.crypto.x509;
@:structInit @:using(stdgo._internal.crypto.x509.X509_constraintviolationerror_static_extension.ConstraintViolationError_static_extension) class ConstraintViolationError {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ConstraintViolationError();
    }
}
