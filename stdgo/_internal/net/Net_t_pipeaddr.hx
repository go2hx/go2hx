package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_t_pipeaddr_static_extension.T_pipeAddr_static_extension) class T_pipeAddr {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pipeAddr();
    }
}
