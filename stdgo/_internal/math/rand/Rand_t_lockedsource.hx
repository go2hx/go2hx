package stdgo._internal.math.rand;
@:structInit @:using(stdgo._internal.math.rand.Rand_t_lockedsource_static_extension.T_lockedSource_static_extension) class T_lockedSource {
    public var _lk : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _s : stdgo.Ref<stdgo._internal.math.rand.Rand_t_rngsource.T_rngSource> = (null : stdgo.Ref<stdgo._internal.math.rand.Rand_t_rngsource.T_rngSource>);
    public function new(?_lk:stdgo._internal.sync.Sync_mutex.Mutex, ?_s:stdgo.Ref<stdgo._internal.math.rand.Rand_t_rngsource.T_rngSource>) {
        if (_lk != null) this._lk = _lk;
        if (_s != null) this._s = _s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_lockedSource(_lk, _s);
    }
}
