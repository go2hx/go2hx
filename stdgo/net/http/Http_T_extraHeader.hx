package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_extraHeader_static_extension) abstract T_extraHeader(stdgo._internal.net.http.Http_T_extraHeader.T_extraHeader) from stdgo._internal.net.http.Http_T_extraHeader.T_extraHeader to stdgo._internal.net.http.Http_T_extraHeader.T_extraHeader {
    public function new() this = new stdgo._internal.net.http.Http_T_extraHeader.T_extraHeader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
