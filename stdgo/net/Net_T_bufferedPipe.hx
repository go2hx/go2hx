package stdgo.net;
@:structInit @:using(stdgo.net.Net.T_bufferedPipe_static_extension) abstract T_bufferedPipe(stdgo._internal.net.Net_T_bufferedPipe.T_bufferedPipe) from stdgo._internal.net.Net_T_bufferedPipe.T_bufferedPipe to stdgo._internal.net.Net_T_bufferedPipe.T_bufferedPipe {
    public function new() this = new stdgo._internal.net.Net_T_bufferedPipe.T_bufferedPipe();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
