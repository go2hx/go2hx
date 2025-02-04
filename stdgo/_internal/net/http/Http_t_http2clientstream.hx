package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_t_http2clientstream_static_extension.T_http2clientStream_static_extension) class T_http2clientStream {
    public var iD : stdgo.GoUInt32 = 0;
    public function new(?iD:stdgo.GoUInt32) {
        if (iD != null) this.iD = iD;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2clientStream(iD);
    }
}
