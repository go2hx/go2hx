package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.MaxBytesError_static_extension) abstract MaxBytesError(stdgo._internal.net.http.Http_MaxBytesError.MaxBytesError) from stdgo._internal.net.http.Http_MaxBytesError.MaxBytesError to stdgo._internal.net.http.Http_MaxBytesError.MaxBytesError {
    public var limit(get, set) : haxe.Int64;
    function get_limit():haxe.Int64 return this.limit;
    function set_limit(v:haxe.Int64):haxe.Int64 {
        this.limit = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?limit:haxe.Int64) this = new stdgo._internal.net.http.Http_MaxBytesError.MaxBytesError((limit : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
