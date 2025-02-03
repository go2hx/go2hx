package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_streamReader_static_extension) abstract T_streamReader(stdgo._internal.net.http.Http_T_streamReader.T_streamReader) from stdgo._internal.net.http.Http_T_streamReader.T_streamReader to stdgo._internal.net.http.Http_T_streamReader.T_streamReader {
    public function new() this = new stdgo._internal.net.http.Http_T_streamReader.T_streamReader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
