package stdgo._internal.math.rand;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.math.Math;
@:structInit @:using(stdgo._internal.math.rand.Rand_T_fastSource_static_extension.T_fastSource_static_extension) class T_fastSource {
    public var _mu : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public function new(?_mu:stdgo._internal.sync.Sync_Mutex.Mutex) {
        if (_mu != null) this._mu = _mu;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fastSource(_mu);
    }
}
