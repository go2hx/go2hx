package stdgo._internal.math.rand;
@:structInit @:using(stdgo._internal.math.rand.Rand_t_fastsource_static_extension.T_fastSource_static_extension) class T_fastSource {
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public function new(?_mu:stdgo._internal.sync.Sync_mutex.Mutex) {
        if (_mu != null) this._mu = _mu;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fastSource(_mu);
    }
}
