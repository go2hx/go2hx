package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_T_permanentError_static_extension.T_permanentError_static_extension) class T_permanentError {
    public var _err : stdgo._internal.net.Net_Error.Error = (null : stdgo._internal.net.Net_Error.Error);
    public function new(?_err:stdgo._internal.net.Net_Error.Error) {
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_permanentError(_err);
    }
}
