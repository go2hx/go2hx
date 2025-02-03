package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_persistConnWriter_static_extension) abstract T_persistConnWriter(stdgo._internal.net.http.Http_T_persistConnWriter.T_persistConnWriter) from stdgo._internal.net.http.Http_T_persistConnWriter.T_persistConnWriter to stdgo._internal.net.http.Http_T_persistConnWriter.T_persistConnWriter {
    public function new() this = new stdgo._internal.net.http.Http_T_persistConnWriter.T_persistConnWriter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
