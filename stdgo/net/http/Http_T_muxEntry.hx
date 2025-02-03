package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_muxEntry_static_extension) abstract T_muxEntry(stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry) from stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry to stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry {
    public function new() this = new stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
