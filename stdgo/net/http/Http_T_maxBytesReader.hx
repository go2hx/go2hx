package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_maxBytesReader_static_extension) abstract T_maxBytesReader(stdgo._internal.net.http.Http_T_maxBytesReader.T_maxBytesReader) from stdgo._internal.net.http.Http_T_maxBytesReader.T_maxBytesReader to stdgo._internal.net.http.Http_T_maxBytesReader.T_maxBytesReader {
    public function new() this = new stdgo._internal.net.http.Http_T_maxBytesReader.T_maxBytesReader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
