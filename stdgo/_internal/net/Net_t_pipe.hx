package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_t_pipe_static_extension.T_pipe_static_extension) class T_pipe {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pipe();
    }
}
