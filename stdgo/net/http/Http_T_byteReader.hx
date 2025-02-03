package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_byteReader_static_extension) abstract T_byteReader(stdgo._internal.net.http.Http_T_byteReader.T_byteReader) from stdgo._internal.net.http.Http_T_byteReader.T_byteReader to stdgo._internal.net.http.Http_T_byteReader.T_byteReader {
    public function new() this = new stdgo._internal.net.http.Http_T_byteReader.T_byteReader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
