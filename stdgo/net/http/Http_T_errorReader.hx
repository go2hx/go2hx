package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_errorReader_static_extension) abstract T_errorReader(stdgo._internal.net.http.Http_T_errorReader.T_errorReader) from stdgo._internal.net.http.Http_T_errorReader.T_errorReader to stdgo._internal.net.http.Http_T_errorReader.T_errorReader {
    public function new() this = new stdgo._internal.net.http.Http_T_errorReader.T_errorReader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
