package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_timeoutError_static_extension) abstract T_timeoutError(stdgo._internal.crypto.tls.Tls_T_timeoutError.T_timeoutError) from stdgo._internal.crypto.tls.Tls_T_timeoutError.T_timeoutError to stdgo._internal.crypto.tls.Tls_T_timeoutError.T_timeoutError {
    public function new() this = new stdgo._internal.crypto.tls.Tls_T_timeoutError.T_timeoutError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
