package stdgo._internal.net.http;
@:structInit class T_http2OpenStreamOptions {
    public var pusherID : stdgo.GoUInt32 = 0;
    public function new(?pusherID:stdgo.GoUInt32) {
        if (pusherID != null) this.pusherID = pusherID;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2OpenStreamOptions(pusherID);
    }
}
