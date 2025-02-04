package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_t_http2openstreamoptions_static_extension.T_http2OpenStreamOptions_static_extension) class T_http2OpenStreamOptions {
    public var pusherID : stdgo.GoUInt32 = 0;
    public function new(?pusherID:stdgo.GoUInt32) {
        if (pusherID != null) this.pusherID = pusherID;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2OpenStreamOptions(pusherID);
    }
}
