package stdgo.net;
@:structInit @:using(stdgo.net.Net.T_rawListener_static_extension) abstract T_rawListener(stdgo._internal.net.Net_T_rawListener.T_rawListener) from stdgo._internal.net.Net_T_rawListener.T_rawListener to stdgo._internal.net.Net_T_rawListener.T_rawListener {
    public function new() this = new stdgo._internal.net.Net_T_rawListener.T_rawListener();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
