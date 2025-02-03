package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_chunkWriter_static_extension) abstract T_chunkWriter(stdgo._internal.net.http.Http_T_chunkWriter.T_chunkWriter) from stdgo._internal.net.http.Http_T_chunkWriter.T_chunkWriter to stdgo._internal.net.http.Http_T_chunkWriter.T_chunkWriter {
    public function new() this = new stdgo._internal.net.http.Http_T_chunkWriter.T_chunkWriter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
