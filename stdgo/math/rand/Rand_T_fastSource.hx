package stdgo.math.rand;
@:structInit @:using(stdgo.math.rand.Rand.T_fastSource_static_extension) abstract T_fastSource(stdgo._internal.math.rand.Rand_T_fastSource.T_fastSource) from stdgo._internal.math.rand.Rand_T_fastSource.T_fastSource to stdgo._internal.math.rand.Rand_T_fastSource.T_fastSource {
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public function new(?_mu:stdgo._internal.sync.Sync_Mutex.Mutex) this = new stdgo._internal.math.rand.Rand_T_fastSource.T_fastSource(_mu);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
