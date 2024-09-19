package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
@:structInit class T_testWaitGroupAlign___localname___X_1662 {
    public var _x : stdgo.GoUInt8 = 0;
    public var _wg : stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
    public function new(?_x:stdgo.GoUInt8, ?_wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup) {
        if (_x != null) this._x = _x;
        if (_wg != null) this._wg = _wg;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testWaitGroupAlign___localname___X_1662(_x, _wg);
    }
}
