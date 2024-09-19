package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
@:structInit @:using(_internal.sync_test.Sync_test_RWMutexMap_static_extension.RWMutexMap_static_extension) class RWMutexMap {
    public var _mu : stdgo._internal.sync.Sync_RWMutex.RWMutex = ({} : stdgo._internal.sync.Sync_RWMutex.RWMutex);
    public var _dirty : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface> = (null : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>);
    public function new(?_mu:stdgo._internal.sync.Sync_RWMutex.RWMutex, ?_dirty:stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>) {
        if (_mu != null) this._mu = _mu;
        if (_dirty != null) this._dirty = _dirty;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RWMutexMap(_mu, _dirty);
    }
}
