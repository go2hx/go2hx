package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function testValueCompareAndSwapConcurrent(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _v:stdgo._internal.sync.atomic_.Atomic__Value.Value = ({} : stdgo._internal.sync.atomic_.Atomic__Value.Value);
        var _w:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
        _v.store(stdgo.Go.toInterface((0 : stdgo.GoInt)));
        var __0 = (1000 : stdgo.GoInt), __1 = (100 : stdgo.GoInt);
var _n = __1, _m = __0;
        if (stdgo._internal.testing.Testing_short.short()) {
            _m = (100 : stdgo.GoInt);
            _n = (100 : stdgo.GoInt);
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _m : Bool), _i++, {
                var _i = (_i : stdgo.GoInt);
                _w.add((1 : stdgo.GoInt));
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        {
                            var _j = (_i : stdgo.GoInt);
                            stdgo.Go.cfor((_j < (_m * _n : stdgo.GoInt) : Bool), stdgo._internal.runtime.Runtime_gosched.gosched(), {
                                if (_v.compareAndSwap(stdgo.Go.toInterface(_j), stdgo.Go.toInterface((_j + (1 : stdgo.GoInt) : stdgo.GoInt)))) {
                                    _j = (_j + (_m) : stdgo.GoInt);
                                };
                            });
                        };
                        _w.done();
                    };
                    a();
                });
            });
        };
        _w.wait_();
        {
            var _stop = (stdgo.Go.typeAssert((_v.load() : stdgo.GoInt)) : stdgo.GoInt);
            if (_stop != ((_m * _n : stdgo.GoInt))) {
                _t.errorf(("did not get to %v, stopped at %v" : stdgo.GoString), stdgo.Go.toInterface((_m * _n : stdgo.GoInt)), stdgo.Go.toInterface(_stop));
            };
        };
    }
