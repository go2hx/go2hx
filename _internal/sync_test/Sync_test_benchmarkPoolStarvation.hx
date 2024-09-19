package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function benchmarkPoolStarvation(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _p:stdgo._internal.sync.Sync_Pool.Pool = ({} : stdgo._internal.sync.Sync_Pool.Pool);
        var _count = (100 : stdgo.GoInt);
        var _countStarved = (_count - (((_count : stdgo.GoFloat32) * (0.33000001311302185 : stdgo.GoFloat64) : stdgo.GoFloat32) : stdgo.GoInt) : stdgo.GoInt);
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            while (_pb.next()) {
                {
                    var _b = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_b < _countStarved : Bool), _b++, {
                        _p.put(stdgo.Go.toInterface((1 : stdgo.GoInt)));
                    });
                };
                {
                    var _b = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_b < _count : Bool), _b++, {
                        _p.get();
                    });
                };
            };
        });
    }
