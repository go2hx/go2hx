package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function benchmarkCompareAndDeleteCollision(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _internal.sync_test.Sync_test__benchMap._benchMap(_b, ({ _setup : function(__2:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _m:_internal.sync_test.Sync_test_T_mapInterface.T_mapInterface):Void {
            _m.loadOrStore(stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        }, _perG : function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>, _i:stdgo.GoInt, _m:_internal.sync_test.Sync_test_T_mapInterface.T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                if (_m.compareAndDelete(stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((0 : stdgo.GoInt)))) {
                    _m.store(stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((0 : stdgo.GoInt)));
                };
            });
        } } : _internal.sync_test.Sync_test_T_bench.T_bench));
    }
