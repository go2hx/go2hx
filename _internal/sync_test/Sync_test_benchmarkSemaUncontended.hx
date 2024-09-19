package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function benchmarkSemaUncontended(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {};
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            var _sem = _new(_internal.sync_test.Sync_test_paddedSem.paddedSem);
            while (_pb.next()) {
                stdgo._internal.sync.Sync_runtime_Semrelease.runtime_Semrelease(stdgo.Go.pointer(_sem._sem), false, (0 : stdgo.GoInt));
                stdgo._internal.sync.Sync_runtime_Semacquire.runtime_Semacquire(stdgo.Go.pointer(_sem._sem));
            };
        });
    }
