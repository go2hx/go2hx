package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function _benchmarkWaitGroupWait(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _localWork:stdgo.GoInt):Void {
        var _wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            var _foo = (0 : stdgo.GoInt);
            while (_pb.next()) {
                _wg.wait_();
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _localWork : Bool), _i++, {
                        _foo = (_foo * ((2 : stdgo.GoInt)) : stdgo.GoInt);
                        _foo = (_foo / ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    });
                };
            };
            var __blank__ = _foo;
        });
    }
