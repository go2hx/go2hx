package stdgo._internal.net.http;
@:structInit class T_http2RoundTripOpt {
    public var onlyCachedConn : Bool = false;
    public function new(?onlyCachedConn:Bool) {
        if (onlyCachedConn != null) this.onlyCachedConn = onlyCachedConn;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2RoundTripOpt(onlyCachedConn);
    }
}
