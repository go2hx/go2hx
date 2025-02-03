package stdgo.net;
@:structInit @:using(stdgo.net.Net.T_timeoutError_static_extension) abstract T_timeoutError(stdgo._internal.net.Net_T_timeoutError.T_timeoutError) from stdgo._internal.net.Net_T_timeoutError.T_timeoutError to stdgo._internal.net.Net_T_timeoutError.T_timeoutError {
    public function new() this = new stdgo._internal.net.Net_T_timeoutError.T_timeoutError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
