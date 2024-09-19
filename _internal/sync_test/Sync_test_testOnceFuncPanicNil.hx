package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function testOnceFuncPanicNil(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _calls = (0 : stdgo.GoInt);
        var _f = (stdgo._internal.sync.Sync_onceFunc.onceFunc(function():Void {
            _calls++;
            throw (null : stdgo.AnyInterface);
        }) : () -> Void);
        _internal.sync_test.Sync_test__testOncePanicWith._testOncePanicWith(_t, stdgo.Go.pointer(_calls), _f, function(_label:stdgo.GoString, _p:stdgo.AnyInterface):Void {
            {
                final __type__ = _p;
                if (__type__ == null || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.runtime.Runtime_PanicNilError.PanicNilError>))) {
                    return;
                };
            };
            _t.fatalf(("%s: want nil panic, got %v" : stdgo.GoString), stdgo.Go.toInterface(_label), _p);
        });
    }
