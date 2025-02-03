package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_helloRequestMsg_static_extension) abstract T_helloRequestMsg(stdgo._internal.crypto.tls.Tls_T_helloRequestMsg.T_helloRequestMsg) from stdgo._internal.crypto.tls.Tls_T_helloRequestMsg.T_helloRequestMsg to stdgo._internal.crypto.tls.Tls_T_helloRequestMsg.T_helloRequestMsg {
    public function new() this = new stdgo._internal.crypto.tls.Tls_T_helloRequestMsg.T_helloRequestMsg();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
