package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_connReader_static_extension) abstract T_connReader(stdgo._internal.net.http.Http_T_connReader.T_connReader) from stdgo._internal.net.http.Http_T_connReader.T_connReader to stdgo._internal.net.http.Http_T_connReader.T_connReader {
    public function new() this = new stdgo._internal.net.http.Http_T_connReader.T_connReader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
