package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_t_permanenterror_static_extension.T_permanentError_static_extension) class T_permanentError {
    public var _err : stdgo._internal.net.Net_error.Error = (null : stdgo._internal.net.Net_error.Error);
    public function new(?_err:stdgo._internal.net.Net_error.Error) {
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_permanentError(_err);
    }
}
