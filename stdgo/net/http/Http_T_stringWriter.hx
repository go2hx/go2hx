package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_stringWriter_static_extension) abstract T_stringWriter(stdgo._internal.net.http.Http_T_stringWriter.T_stringWriter) from stdgo._internal.net.http.Http_T_stringWriter.T_stringWriter to stdgo._internal.net.http.Http_T_stringWriter.T_stringWriter {
    public function new() this = new stdgo._internal.net.http.Http_T_stringWriter.T_stringWriter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
