package stdgo.net;
@:structInit @:using(stdgo.net.Net.T_rawConn_static_extension) abstract T_rawConn(stdgo._internal.net.Net_T_rawConn.T_rawConn) from stdgo._internal.net.Net_T_rawConn.T_rawConn to stdgo._internal.net.Net_T_rawConn.T_rawConn {
    public function new() this = new stdgo._internal.net.Net_T_rawConn.T_rawConn();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
