package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_sessionstate_static_extension.SessionState_static_extension) class SessionState {
    public var extra : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
    public var earlyData : Bool = false;
    public function new(?extra:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>, ?earlyData:Bool) {
        if (extra != null) this.extra = extra;
        if (earlyData != null) this.earlyData = earlyData;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SessionState(extra, earlyData);
    }
}
