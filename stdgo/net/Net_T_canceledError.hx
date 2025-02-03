package stdgo.net;
@:structInit @:using(stdgo.net.Net.T_canceledError_static_extension) abstract T_canceledError(stdgo._internal.net.Net_T_canceledError.T_canceledError) from stdgo._internal.net.Net_T_canceledError.T_canceledError to stdgo._internal.net.Net_T_canceledError.T_canceledError {
    public function new() this = new stdgo._internal.net.Net_T_canceledError.T_canceledError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
