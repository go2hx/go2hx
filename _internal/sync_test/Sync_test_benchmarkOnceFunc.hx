package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function benchmarkOnceFunc(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.run(("v=Once" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            _b.reportAllocs();
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    _internal.sync_test.Sync_test__doOnceFunc._doOnceFunc();
                });
            };
        });
        _b.run(("v=Global" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            _b.reportAllocs();
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    _internal.sync_test.Sync_test__onceFunc._onceFunc();
                });
            };
        });
        _b.run(("v=Local" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            _b.reportAllocs();
            var _f = (stdgo._internal.sync.Sync_onceFunc.onceFunc(function():Void {}) : () -> Void);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    _f();
                });
            };
        });
    }
