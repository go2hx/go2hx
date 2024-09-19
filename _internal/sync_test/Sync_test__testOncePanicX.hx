package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function _testOncePanicX(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _calls:stdgo.Pointer<stdgo.GoInt>, _f:() -> Void):Void {
        _internal.sync_test.Sync_test__testOncePanicWith._testOncePanicWith(_t, _calls, _f, function(_label:stdgo.GoString, _p:stdgo.AnyInterface):Void {
            if (_p != (stdgo.Go.toInterface(("x" : stdgo.GoString)))) {
                _t.fatalf(("%s: want panic %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_label), stdgo.Go.toInterface(("x" : stdgo.GoString)), _p);
            };
        });
    }
