package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_ServeMux_static_extension.ServeMux_static_extension) class ServeMux {
    public var _mu : stdgo._internal.sync.Sync_RWMutex.RWMutex = ({} : stdgo._internal.sync.Sync_RWMutex.RWMutex);
    public var _m : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry> = (null : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry>);
    public var _es : stdgo.Slice<stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry> = (null : stdgo.Slice<stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry>);
    public var _hosts : Bool = false;
    public function new(?_mu:stdgo._internal.sync.Sync_RWMutex.RWMutex, ?_m:stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry>, ?_es:stdgo.Slice<stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry>, ?_hosts:Bool) {
        if (_mu != null) this._mu = _mu;
        if (_m != null) this._m = _m;
        if (_es != null) this._es = _es;
        if (_hosts != null) this._hosts = _hosts;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ServeMux(_mu, _m, _es, _hosts);
    }
}
