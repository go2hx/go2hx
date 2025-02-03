package stdgo.math.rand;
@:structInit @:using(stdgo.math.rand.Rand.T_lockedSource_static_extension) abstract T_lockedSource(stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource) from stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource to stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource {
    public var _lk(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__lk():stdgo._internal.sync.Sync_Mutex.Mutex return this._lk;
    function set__lk(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._lk = v;
        return v;
    }
    public var _s(get, set) : T_rngSource;
    function get__s():T_rngSource return this._s;
    function set__s(v:T_rngSource):T_rngSource {
        this._s = (v : stdgo.Ref<stdgo._internal.math.rand.Rand_T_rngSource.T_rngSource>);
        return v;
    }
    public function new(?_lk:stdgo._internal.sync.Sync_Mutex.Mutex, ?_s:T_rngSource) this = new stdgo._internal.math.rand.Rand_T_lockedSource.T_lockedSource(_lk, (_s : stdgo.Ref<stdgo._internal.math.rand.Rand_T_rngSource.T_rngSource>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
