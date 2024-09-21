package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function benchmarkPool(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _p:stdgo._internal.sync.Sync_Pool.Pool = ({} : stdgo._internal.sync.Sync_Pool.Pool);
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            while (_pb.next()) {
                _p.put(stdgo.Go.toInterface((1 : stdgo.GoInt)));
                _p.get();
            };
        });
    }
