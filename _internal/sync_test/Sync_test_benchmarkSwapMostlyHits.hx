package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function benchmarkSwapMostlyHits(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {};
        _internal.sync_test.Sync_test__benchMap._benchMap(_b, ({ _setup : function(__4:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _m:_internal.sync_test.Sync_test_T_mapInterface.T_mapInterface):Void {
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
                if (((_i % (1024 : stdgo.GoInt) : stdgo.GoInt) < (1023 : stdgo.GoInt) : Bool)) {
                    var _v = (_i % (1024 : stdgo.GoInt) : stdgo.GoInt);
                    _m.swap(stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_v));
                } else {
                    _m.swap(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
                    _m.delete(stdgo.Go.toInterface(_i));
                };
            });
        } } : _internal.sync_test.Sync_test_T_bench.T_bench));
    }