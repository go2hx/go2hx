package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function benchmarkPoolOverflow(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _p:stdgo._internal.sync.Sync_Pool.Pool = ({} : stdgo._internal.sync.Sync_Pool.Pool);
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            while (_pb.next()) {
                {
                    var _b = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_b < (100 : stdgo.GoInt) : Bool), _b++, {
                        _p.put(stdgo.Go.toInterface((1 : stdgo.GoInt)));
                    });
                };
                {
                    var _b = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_b < (100 : stdgo.GoInt) : Bool), _b++, {
                        _p.get();
                    });
                };
            };
        });
    }
