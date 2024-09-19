package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function benchmarkCompareAndSwapMostlyHits(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {};
        _internal.sync_test.Sync_test__benchMap._benchMap(_b, ({ _setup : function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _m:_internal.sync_test.Sync_test_T_mapInterface.T_mapInterface):Void {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<_internal.sync_test.Sync_test_DeepCopyMap.DeepCopyMap>)) : stdgo.Ref<_internal.sync_test.Sync_test_DeepCopyMap.DeepCopyMap>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<_internal.sync_test.Sync_test_DeepCopyMap.DeepCopyMap>), _1 : false };
                }, __4 = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _b.skip(stdgo.Go.toInterface(("DeepCopyMap has quadratic running time." : stdgo.GoString)));
                };
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (1023 : stdgo.GoInt) : Bool), _i++, {
                    _m.loadOrStore(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
                });
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (2046 : stdgo.GoInt) : Bool), _i++, {
                    _m.load(stdgo.Go.toInterface((_i % (1023 : stdgo.GoInt) : stdgo.GoInt)));
                });
            };
        }, _perG : function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>, _i:stdgo.GoInt, _m:_internal.sync_test.Sync_test_T_mapInterface.T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                var _v = (_i : stdgo.GoInt);
                if (((_i % (1024 : stdgo.GoInt) : stdgo.GoInt) < (1023 : stdgo.GoInt) : Bool)) {
                    _v = (_i % (1024 : stdgo.GoInt) : stdgo.GoInt);
                };
                _m.compareAndSwap(stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_v));
            });
        } } : _internal.sync_test.Sync_test_T_bench.T_bench));
    }
