package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function benchmarkOnceValue(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.run(("v=Once" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            _b.reportAllocs();
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    {
                        var __0 = (42 : stdgo.GoInt), __1 = (_internal.sync_test.Sync_test__doOnceValue._doOnceValue() : stdgo.GoInt);
var _got = __1, _want = __0;
                        if (_want != (_got)) {
                            _b.fatalf(("want %d, got %d" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
                        };
                    };
                });
            };
        });
        _b.run(("v=Global" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            _b.reportAllocs();
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    {
                        var __0 = (42 : stdgo.GoInt), __1 = (_internal.sync_test.Sync_test__onceValue._onceValue() : stdgo.GoInt);
var _got = __1, _want = __0;
                        if (_want != (_got)) {
                            _b.fatalf(("want %d, got %d" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
                        };
                    };
                });
            };
        });
        _b.run(("v=Local" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            _b.reportAllocs();
            var _onceValue = (stdgo._internal.sync.Sync_onceValue.onceValue(function():stdgo.GoInt {
                return (42 : stdgo.GoInt);
            }) : () -> stdgo.GoInt);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    {
                        var __0 = (42 : stdgo.GoInt), __1 = (_onceValue() : stdgo.GoInt);
var _got = __1, _want = __0;
                        if (_want != (_got)) {
                            _b.fatalf(("want %d, got %d" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
                        };
                    };
                });
            };
        });
    }
