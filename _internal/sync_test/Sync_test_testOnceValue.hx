package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function testOnceValue(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _calls = (0 : stdgo.GoInt);
        var _f = (stdgo._internal.sync.Sync_onceValue.onceValue(function():stdgo.GoInt {
            _calls++;
            return _calls;
        }) : () -> stdgo.GoInt);
        var _allocs = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((10 : stdgo.GoInt), function():Void {
            _f();
        }) : stdgo.GoFloat64);
        var _value = (_f() : stdgo.GoInt);
        if (_calls != ((1 : stdgo.GoInt))) {
            _t.errorf(("want calls==1, got %d" : stdgo.GoString), stdgo.Go.toInterface(_calls));
        };
        if (_value != ((1 : stdgo.GoInt))) {
            _t.errorf(("want value==1, got %d" : stdgo.GoString), stdgo.Go.toInterface(_value));
        };
        if (_allocs != (0 : stdgo.GoFloat64)) {
            _t.errorf(("want 0 allocations per call, got %v" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
        };
    }
