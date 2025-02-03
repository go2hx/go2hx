package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_connLRU_static_extension) abstract T_connLRU(stdgo._internal.net.http.Http_T_connLRU.T_connLRU) from stdgo._internal.net.http.Http_T_connLRU.T_connLRU to stdgo._internal.net.http.Http_T_connLRU.T_connLRU {
    public function new() this = new stdgo._internal.net.http.Http_T_connLRU.T_connLRU();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
