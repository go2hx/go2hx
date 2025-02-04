package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_maxbyteserror_static_extension.MaxBytesError_static_extension) class MaxBytesError {
    public var limit : stdgo.GoInt64 = 0;
    public function new(?limit:stdgo.GoInt64) {
        if (limit != null) this.limit = limit;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new MaxBytesError(limit);
    }
}
