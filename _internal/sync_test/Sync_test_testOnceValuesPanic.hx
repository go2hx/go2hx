package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function testOnceValuesPanic(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _calls = (0 : stdgo.GoInt);
        var _f = (stdgo._internal.sync.Sync_onceValues.onceValues(function():{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
            _calls++;
            throw stdgo.Go.toInterface(("x" : stdgo.GoString));
        }) : () -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
        _internal.sync_test.Sync_test__testOncePanicX._testOncePanicX(_t, stdgo.Go.pointer(_calls), function():Void {
            _f();
        });
    }
