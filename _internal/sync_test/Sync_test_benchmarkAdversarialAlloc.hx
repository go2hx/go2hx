package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function benchmarkAdversarialAlloc(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _internal.sync_test.Sync_test__benchMap._benchMap(_b, ({ _perG : function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>, _i:stdgo.GoInt, _m:_internal.sync_test.Sync_test_T_mapInterface.T_mapInterface):Void {
            var __0:stdgo.GoInt64 = (0 : stdgo.GoInt64), __1:stdgo.GoInt64 = (0 : stdgo.GoInt64);
var _loadsSinceStore = __1, _stores = __0;
            stdgo.Go.cfor(_pb.next(), _i++, {
                _m.load(stdgo.Go.toInterface(_i));
                {
                    _loadsSinceStore++;
                    if ((_loadsSinceStore > _stores : Bool)) {
                        _m.loadOrStore(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_stores));
                        _loadsSinceStore = (0i64 : stdgo.GoInt64);
                        _stores++;
                    };
                };
            });
        } } : _internal.sync_test.Sync_test_T_bench.T_bench));
    }
