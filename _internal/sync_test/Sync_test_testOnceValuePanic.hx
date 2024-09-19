package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function testOnceValuePanic(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _calls = (0 : stdgo.GoInt);
        var _f = (stdgo._internal.sync.Sync_onceValue.onceValue(function():stdgo.GoInt {
            _calls++;
            throw stdgo.Go.toInterface(("x" : stdgo.GoString));
        }) : () -> stdgo.GoInt);
        _internal.sync_test.Sync_test__testOncePanicX._testOncePanicX(_t, stdgo.Go.pointer(_calls), function():Void {
            _f();
        });
    }
