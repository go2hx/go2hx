package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
@:structInit class T_bench {
    public var _setup : (stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _internal.sync_test.Sync_test_T_mapInterface.T_mapInterface) -> Void = null;
    public var _perG : (stdgo.Ref<stdgo._internal.testing.Testing_B.B>, stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>, stdgo.GoInt, _internal.sync_test.Sync_test_T_mapInterface.T_mapInterface) -> Void = null;
    public function new(?_setup:(stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _internal.sync_test.Sync_test_T_mapInterface.T_mapInterface) -> Void, ?_perG:(stdgo.Ref<stdgo._internal.testing.Testing_B.B>, stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>, stdgo.GoInt, _internal.sync_test.Sync_test_T_mapInterface.T_mapInterface) -> Void) {
        if (_setup != null) this._setup = _setup;
        if (_perG != null) this._perG = _perG;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_bench(_setup, _perG);
    }
}
