package stdgo.net;
@:structInit @:using(stdgo.net.Net.T_pipe_static_extension) abstract T_pipe(stdgo._internal.net.Net_T_pipe.T_pipe) from stdgo._internal.net.Net_T_pipe.T_pipe to stdgo._internal.net.Net_T_pipe.T_pipe {
    public function new() this = new stdgo._internal.net.Net_T_pipe.T_pipe();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
