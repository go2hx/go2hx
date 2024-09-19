package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function benchmarkLoadAndDeleteCollision(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _internal.sync_test.Sync_test__benchMap._benchMap(_b, ({ _setup : function(__4:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _m:_internal.sync_test.Sync_test_T_mapInterface.T_mapInterface):Void {
            _m.loadOrStore(stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        }, _perG : function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>, _i:stdgo.GoInt, _m:_internal.sync_test.Sync_test_T_mapInterface.T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                {
                    var __tmp__ = _m.loadAndDelete(stdgo.Go.toInterface((0 : stdgo.GoInt))), __4:stdgo.AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1;
                    if (_loaded) {
                        _m.store(stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((0 : stdgo.GoInt)));
                    };
                };
            });
        } } : _internal.sync_test.Sync_test_T_bench.T_bench));
    }
