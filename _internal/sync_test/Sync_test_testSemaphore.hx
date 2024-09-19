package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function testSemaphore(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _s = _new(_internal.sync_test.Sync_test__uint32._uint32);
        _s.value = (1u32 : stdgo.GoUInt32);
        var _c = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                stdgo.Go.routine(() -> _internal.sync_test.Sync_test_hammerSemaphore.hammerSemaphore(_s, (1000 : stdgo.GoInt), _c));
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                _c.__get__();
            });
        };
    }
