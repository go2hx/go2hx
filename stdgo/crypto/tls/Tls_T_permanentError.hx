package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_permanentError_static_extension) abstract T_permanentError(stdgo._internal.crypto.tls.Tls_T_permanentError.T_permanentError) from stdgo._internal.crypto.tls.Tls_T_permanentError.T_permanentError to stdgo._internal.crypto.tls.Tls_T_permanentError.T_permanentError {
    public var _err(get, set) : stdgo._internal.net.Net_Error.Error;
    function get__err():stdgo._internal.net.Net_Error.Error return this._err;
    function set__err(v:stdgo._internal.net.Net_Error.Error):stdgo._internal.net.Net_Error.Error {
        this._err = v;
        return v;
    }
    public function new(?_err:stdgo._internal.net.Net_Error.Error) this = new stdgo._internal.crypto.tls.Tls_T_permanentError.T_permanentError(_err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
