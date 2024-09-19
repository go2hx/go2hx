package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
@:structInit class T_benchmarkSemaUncontended___localname___PaddedSem_275 {
    public var _sem : stdgo.GoUInt32 = 0;
    public var _pad : stdgo.GoArray<stdgo.GoUInt32> = new stdgo.GoArray<stdgo.GoUInt32>(32, 32, ...[for (i in 0 ... 32) (0 : stdgo.GoUInt32)]);
    public function new(?_sem:stdgo.GoUInt32, ?_pad:stdgo.GoArray<stdgo.GoUInt32>) {
        if (_sem != null) this._sem = _sem;
        if (_pad != null) this._pad = _pad;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_benchmarkSemaUncontended___localname___PaddedSem_275(_sem, _pad);
    }
}
