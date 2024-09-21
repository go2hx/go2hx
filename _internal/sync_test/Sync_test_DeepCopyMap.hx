package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
@:structInit @:using(_internal.sync_test.Sync_test_DeepCopyMap_static_extension.DeepCopyMap_static_extension) class DeepCopyMap {
    public var _mu : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _clean : stdgo._internal.sync.atomic_.Atomic__Value.Value = ({} : stdgo._internal.sync.atomic_.Atomic__Value.Value);
    public function new(?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_clean:stdgo._internal.sync.atomic_.Atomic__Value.Value) {
        if (_mu != null) this._mu = _mu;
        if (_clean != null) this._clean = _clean;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new DeepCopyMap(_mu, _clean);
    }
}
