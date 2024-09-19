package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function benchmarkUncontendedSemaphore(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _s = _new(_internal.sync_test.Sync_test__uint32._uint32);
        _s.value = (1u32 : stdgo.GoUInt32);
        _internal.sync_test.Sync_test_hammerSemaphore.hammerSemaphore(_s, _b.n, (new stdgo.Chan<Bool>((2 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>));
    }
