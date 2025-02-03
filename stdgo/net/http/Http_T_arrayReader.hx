package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_arrayReader_static_extension) abstract T_arrayReader(stdgo._internal.net.http.Http_T_arrayReader.T_arrayReader) from stdgo._internal.net.http.Http_T_arrayReader.T_arrayReader to stdgo._internal.net.http.Http_T_arrayReader.T_arrayReader {
    public function new() this = new stdgo._internal.net.http.Http_T_arrayReader.T_arrayReader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
