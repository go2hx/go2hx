package stdgo.crypto.x509;
@:structInit @:using(stdgo.crypto.x509.X509.SystemRootsError_static_extension) abstract SystemRootsError(stdgo._internal.crypto.x509.X509_SystemRootsError.SystemRootsError) from stdgo._internal.crypto.x509.X509_SystemRootsError.SystemRootsError to stdgo._internal.crypto.x509.X509_SystemRootsError.SystemRootsError {
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public function new(?err:stdgo.Error) this = new stdgo._internal.crypto.x509.X509_SystemRootsError.SystemRootsError((err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
