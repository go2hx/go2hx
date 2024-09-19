package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function testOnceValues(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _calls = (0 : stdgo.GoInt);
        var _f = (stdgo._internal.sync.Sync_onceValues.onceValues(function():{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
            _calls++;
            return { _0 : _calls, _1 : (_calls + (1 : stdgo.GoInt) : stdgo.GoInt) };
        }) : () -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
        var _allocs = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((10 : stdgo.GoInt), function():Void {
            _f();
        }) : stdgo.GoFloat64);
        var __tmp__ = _f(), _v1:stdgo.GoInt = __tmp__._0, _v2:stdgo.GoInt = __tmp__._1;
        if (_calls != ((1 : stdgo.GoInt))) {
            _t.errorf(("want calls==1, got %d" : stdgo.GoString), stdgo.Go.toInterface(_calls));
        };
        if (((_v1 != (1 : stdgo.GoInt)) || (_v2 != (2 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("want v1==1 and v2==2, got %d and %d" : stdgo.GoString), stdgo.Go.toInterface(_v1), stdgo.Go.toInterface(_v2));
        };
        if (_allocs != (0 : stdgo.GoFloat64)) {
            _t.errorf(("want 0 allocations per call, got %v" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
        };
    }
