package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_serverHelloDoneMsg_static_extension) abstract T_serverHelloDoneMsg(stdgo._internal.crypto.tls.Tls_T_serverHelloDoneMsg.T_serverHelloDoneMsg) from stdgo._internal.crypto.tls.Tls_T_serverHelloDoneMsg.T_serverHelloDoneMsg to stdgo._internal.crypto.tls.Tls_T_serverHelloDoneMsg.T_serverHelloDoneMsg {
    public function new() this = new stdgo._internal.crypto.tls.Tls_T_serverHelloDoneMsg.T_serverHelloDoneMsg();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
