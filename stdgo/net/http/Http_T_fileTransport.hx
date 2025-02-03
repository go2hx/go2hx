package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_fileTransport_static_extension) abstract T_fileTransport(stdgo._internal.net.http.Http_T_fileTransport.T_fileTransport) from stdgo._internal.net.http.Http_T_fileTransport.T_fileTransport to stdgo._internal.net.http.Http_T_fileTransport.T_fileTransport {
    public function new() this = new stdgo._internal.net.http.Http_T_fileTransport.T_fileTransport();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
