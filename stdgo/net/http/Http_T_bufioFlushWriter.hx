package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_bufioFlushWriter_static_extension) abstract T_bufioFlushWriter(stdgo._internal.net.http.Http_T_bufioFlushWriter.T_bufioFlushWriter) from stdgo._internal.net.http.Http_T_bufioFlushWriter.T_bufioFlushWriter to stdgo._internal.net.http.Http_T_bufioFlushWriter.T_bufioFlushWriter {
    public function new() this = new stdgo._internal.net.http.Http_T_bufioFlushWriter.T_bufioFlushWriter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
