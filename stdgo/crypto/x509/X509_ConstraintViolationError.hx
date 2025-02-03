package stdgo.crypto.x509;
@:structInit @:using(stdgo.crypto.x509.X509.ConstraintViolationError_static_extension) abstract ConstraintViolationError(stdgo._internal.crypto.x509.X509_ConstraintViolationError.ConstraintViolationError) from stdgo._internal.crypto.x509.X509_ConstraintViolationError.ConstraintViolationError to stdgo._internal.crypto.x509.X509_ConstraintViolationError.ConstraintViolationError {
    public function new() this = new stdgo._internal.crypto.x509.X509_ConstraintViolationError.ConstraintViolationError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
