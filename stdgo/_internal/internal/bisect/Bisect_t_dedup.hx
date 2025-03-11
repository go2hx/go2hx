package stdgo._internal.internal.bisect;
@:structInit @:using(stdgo._internal.internal.bisect.Bisect_t_dedup_static_extension.T_dedup_static_extension) class T_dedup {
    public var _recent : stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt64>> = new stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt64>>(128, 128, ...[for (i in 0 ... (128 > 128 ? 128 : 128 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoUInt64>(4, 4).__setNumber64__()]);
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _m : stdgo.GoMap<stdgo.GoUInt64, Bool> = (null : stdgo.GoMap<stdgo.GoUInt64, Bool>);
    public function new(?_recent:stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt64>>, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_m:stdgo.GoMap<stdgo.GoUInt64, Bool>) {
        if (_recent != null) this._recent = _recent;
        if (_mu != null) this._mu = _mu;
        if (_m != null) this._m = _m;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_dedup(_recent, _mu, _m);
    }
}
