package stdgo.net;
@:structInit @:using(stdgo.net.Net.T_pipeDeadline_static_extension) abstract T_pipeDeadline(stdgo._internal.net.Net_T_pipeDeadline.T_pipeDeadline) from stdgo._internal.net.Net_T_pipeDeadline.T_pipeDeadline to stdgo._internal.net.Net_T_pipeDeadline.T_pipeDeadline {
    public function new() this = new stdgo._internal.net.Net_T_pipeDeadline.T_pipeDeadline();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
