package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_timeoutWriter_static_extension) abstract T_timeoutWriter(stdgo._internal.net.http.Http_T_timeoutWriter.T_timeoutWriter) from stdgo._internal.net.http.Http_T_timeoutWriter.T_timeoutWriter to stdgo._internal.net.http.Http_T_timeoutWriter.T_timeoutWriter {
    public function new() this = new stdgo._internal.net.http.Http_T_timeoutWriter.T_timeoutWriter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
