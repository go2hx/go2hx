package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function testOnceFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _calls = (0 : stdgo.GoInt);
        var _f = (stdgo._internal.sync.Sync_onceFunc.onceFunc(function():Void {
            _calls++;
        }) : () -> Void);
        var _allocs = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((10 : stdgo.GoInt), _f) : stdgo.GoFloat64);
        if (_calls != ((1 : stdgo.GoInt))) {
            _t.errorf(("want calls==1, got %d" : stdgo.GoString), stdgo.Go.toInterface(_calls));
        };
        if (_allocs != (0 : stdgo.GoFloat64)) {
            _t.errorf(("want 0 allocations per call, got %v" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
        };
    }
