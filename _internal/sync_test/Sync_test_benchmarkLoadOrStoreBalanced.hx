package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function benchmarkLoadOrStoreBalanced(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
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
                stdgo.Go.cfor((_i < (128 : stdgo.GoInt) : Bool), _i++, {
                    _m.loadOrStore(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
                });
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (256 : stdgo.GoInt) : Bool), _i++, {
                    _m.load(stdgo.Go.toInterface((_i % (128 : stdgo.GoInt) : stdgo.GoInt)));
                });
            };
        }, _perG : function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>, _i:stdgo.GoInt, _m:_internal.sync_test.Sync_test_T_mapInterface.T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                var _j = (_i % (256 : stdgo.GoInt) : stdgo.GoInt);
                if ((_j < (128 : stdgo.GoInt) : Bool)) {
                    {
                        var __tmp__ = _m.loadOrStore(stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_i)), __4:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (!_ok) {
                            _b.fatalf(("unexpected miss for %v" : stdgo.GoString), stdgo.Go.toInterface(_j));
                        };
                    };
                } else {
                    {
                        var __tmp__ = _m.loadOrStore(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i)), _v:stdgo.AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1;
                        if (_loaded) {
                            _b.fatalf(("failed to store %v: existing value %v" : stdgo.GoString), stdgo.Go.toInterface(_i), _v);
                        };
                    };
                };
            });
        } } : _internal.sync_test.Sync_test_T_bench.T_bench));
    }
