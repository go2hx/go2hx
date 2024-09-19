package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function testOnceFuncPanic(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _calls = (0 : stdgo.GoInt);
        var _f = (stdgo._internal.sync.Sync_onceFunc.onceFunc(function():Void {
            _calls++;
            throw stdgo.Go.toInterface(("x" : stdgo.GoString));
        }) : () -> Void);
        _internal.sync_test.Sync_test__testOncePanicX._testOncePanicX(_t, stdgo.Go.pointer(_calls), _f);
    }
