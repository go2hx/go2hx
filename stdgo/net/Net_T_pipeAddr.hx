package stdgo.net;
@:structInit @:using(stdgo.net.Net.T_pipeAddr_static_extension) abstract T_pipeAddr(stdgo._internal.net.Net_T_pipeAddr.T_pipeAddr) from stdgo._internal.net.Net_T_pipeAddr.T_pipeAddr to stdgo._internal.net.Net_T_pipeAddr.T_pipeAddr {
    public function new() this = new stdgo._internal.net.Net_T_pipeAddr.T_pipeAddr();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
